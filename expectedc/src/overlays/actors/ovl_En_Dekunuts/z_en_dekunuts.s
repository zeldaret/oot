
build/src/overlays/actors/ovl_En_Dekunuts/z_en_dekunuts.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDekunuts_Init>:
       0:	27bdffb0 	addiu	sp,sp,-80
       4:	afb10038 	sw	s1,56(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf003c 	sw	ra,60(sp)
      10:	afb00034 	sw	s0,52(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnDekunuts_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	860e001c 	lh	t6,28(s0)
      28:	2401000a 	li	at,10
      2c:	260400b4 	addiu	a0,s0,180
      30:	15c10006 	bne	t6,at,4c <EnDekunuts_Init+0x4c>
      34:	24050000 	li	a1,0
      38:	8e0f0004 	lw	t7,4(s0)
      3c:	2401fffa 	li	at,-6
      40:	01e1c024 	and	t8,t7,at
      44:	10000043 	b	154 <EnDekunuts_Init+0x154>
      48:	ae180004 	sw	t8,4(s0)
      4c:	3c060000 	lui	a2,0x0
      50:	24c60000 	addiu	a2,a2,0
      54:	0c000000 	jal	0 <EnDekunuts_Init>
      58:	3c07420c 	lui	a3,0x420c
      5c:	3c060600 	lui	a2,0x600
      60:	3c070600 	lui	a3,0x600
      64:	2619019c 	addiu	t9,s0,412
      68:	26080232 	addiu	t0,s0,562
      6c:	24090019 	li	t1,25
      70:	afa90018 	sw	t1,24(sp)
      74:	afa80014 	sw	t0,20(sp)
      78:	afb90010 	sw	t9,16(sp)
      7c:	24e70e6c 	addiu	a3,a3,3692
      80:	24c63268 	addiu	a2,a2,12904
      84:	02202025 	move	a0,s1
      88:	0c000000 	jal	0 <EnDekunuts_Init>
      8c:	2605014c 	addiu	a1,s0,332
      90:	260502c8 	addiu	a1,s0,712
      94:	afa50044 	sw	a1,68(sp)
      98:	0c000000 	jal	0 <EnDekunuts_Init>
      9c:	02202025 	move	a0,s1
      a0:	3c070000 	lui	a3,0x0
      a4:	8fa50044 	lw	a1,68(sp)
      a8:	24e70000 	addiu	a3,a3,0
      ac:	02202025 	move	a0,s1
      b0:	0c000000 	jal	0 <EnDekunuts_Init>
      b4:	02003025 	move	a2,s0
      b8:	3c050000 	lui	a1,0x0
      bc:	3c060000 	lui	a2,0x0
      c0:	24c60000 	addiu	a2,a2,0
      c4:	24a50000 	addiu	a1,a1,0
      c8:	0c000000 	jal	0 <EnDekunuts_Init>
      cc:	26040098 	addiu	a0,s0,152
      d0:	860a001c 	lh	t2,28(s0)
      d4:	860d001c 	lh	t5,28(s0)
      d8:	240100ff 	li	at,255
      dc:	000a5a03 	sra	t3,t2,0x8
      e0:	316c00ff 	andi	t4,t3,0xff
      e4:	a60c019a 	sh	t4,410(s0)
      e8:	8602019a 	lh	v0,410(s0)
      ec:	31ae00ff 	andi	t6,t5,0xff
      f0:	a60e001c 	sh	t6,28(s0)
      f4:	10410003 	beq	v0,at,104 <EnDekunuts_Init+0x104>
      f8:	240f0001 	li	t7,1
      fc:	14400002 	bnez	v0,108 <EnDekunuts_Init+0x108>
     100:	00000000 	nop
     104:	a60f019a 	sh	t7,410(s0)
     108:	0c000000 	jal	0 <EnDekunuts_Init>
     10c:	02002025 	move	a0,s0
     110:	c6040024 	lwc1	$f4,36(s0)
     114:	2419000a 	li	t9,10
     118:	26241c24 	addiu	a0,s1,7204
     11c:	e7a40010 	swc1	$f4,16(sp)
     120:	c6060028 	lwc1	$f6,40(s0)
     124:	02002825 	move	a1,s0
     128:	02203025 	move	a2,s1
     12c:	e7a60014 	swc1	$f6,20(sp)
     130:	c608002c 	lwc1	$f8,44(s0)
     134:	afa0001c 	sw	zero,28(sp)
     138:	24070060 	li	a3,96
     13c:	e7a80018 	swc1	$f8,24(sp)
     140:	86180032 	lh	t8,50(s0)
     144:	afb90028 	sw	t9,40(sp)
     148:	afa00024 	sw	zero,36(sp)
     14c:	0c000000 	jal	0 <EnDekunuts_Init>
     150:	afb80020 	sw	t8,32(sp)
     154:	8fbf003c 	lw	ra,60(sp)
     158:	8fb00034 	lw	s0,52(sp)
     15c:	8fb10038 	lw	s1,56(sp)
     160:	03e00008 	jr	ra
     164:	27bd0050 	addiu	sp,sp,80

00000168 <EnDekunuts_Destroy>:
     168:	27bdffe8 	addiu	sp,sp,-24
     16c:	afbf0014 	sw	ra,20(sp)
     170:	848e001c 	lh	t6,28(a0)
     174:	00803025 	move	a2,a0
     178:	2401000a 	li	at,10
     17c:	11c10003 	beq	t6,at,18c <EnDekunuts_Destroy+0x24>
     180:	00a02025 	move	a0,a1
     184:	0c000000 	jal	0 <EnDekunuts_Init>
     188:	24c502c8 	addiu	a1,a2,712
     18c:	8fbf0014 	lw	ra,20(sp)
     190:	27bd0018 	addiu	sp,sp,24
     194:	03e00008 	jr	ra
     198:	00000000 	nop

0000019c <func_809E96FC>:
     19c:	27bdffe0 	addiu	sp,sp,-32
     1a0:	afb00018 	sw	s0,24(sp)
     1a4:	00808025 	move	s0,a0
     1a8:	afbf001c 	sw	ra,28(sp)
     1ac:	3c050600 	lui	a1,0x600
     1b0:	24a50d1c 	addiu	a1,a1,3356
     1b4:	2484014c 	addiu	a0,a0,332
     1b8:	0c000000 	jal	0 <EnDekunuts_Init>
     1bc:	24060000 	li	a2,0
     1c0:	24040064 	li	a0,100
     1c4:	0c000000 	jal	0 <EnDekunuts_Init>
     1c8:	24050032 	li	a1,50
     1cc:	240e0005 	li	t6,5
     1d0:	a6020196 	sh	v0,406(s0)
     1d4:	a60e030a 	sh	t6,778(s0)
     1d8:	26040024 	addiu	a0,s0,36
     1dc:	0c000000 	jal	0 <EnDekunuts_Init>
     1e0:	26050008 	addiu	a1,s0,8
     1e4:	920f02d9 	lbu	t7,729(s0)
     1e8:	3c190000 	lui	t9,0x0
     1ec:	27390000 	addiu	t9,t9,0
     1f0:	31f8fffe 	andi	t8,t7,0xfffe
     1f4:	a21802d9 	sb	t8,729(s0)
     1f8:	ae190190 	sw	t9,400(s0)
     1fc:	8fbf001c 	lw	ra,28(sp)
     200:	8fb00018 	lw	s0,24(sp)
     204:	27bd0020 	addiu	sp,sp,32
     208:	03e00008 	jr	ra
     20c:	00000000 	nop

00000210 <func_809E9770>:
     210:	27bdffe8 	addiu	sp,sp,-24
     214:	afbf0014 	sw	ra,20(sp)
     218:	00803025 	move	a2,a0
     21c:	3c050600 	lui	a1,0x600
     220:	24a50af0 	addiu	a1,a1,2800
     224:	afa60018 	sw	a2,24(sp)
     228:	0c000000 	jal	0 <EnDekunuts_Init>
     22c:	2484014c 	addiu	a0,a0,332
     230:	8fa60018 	lw	a2,24(sp)
     234:	3c0f0000 	lui	t7,0x0
     238:	240e0002 	li	t6,2
     23c:	25ef0000 	addiu	t7,t7,0
     240:	a4ce0196 	sh	t6,406(a2)
     244:	accf0190 	sw	t7,400(a2)
     248:	8fbf0014 	lw	ra,20(sp)
     24c:	27bd0018 	addiu	sp,sp,24
     250:	03e00008 	jr	ra
     254:	00000000 	nop

00000258 <func_809E97B8>:
     258:	27bdffe8 	addiu	sp,sp,-24
     25c:	afbf0014 	sw	ra,20(sp)
     260:	00803025 	move	a2,a0
     264:	3c050600 	lui	a1,0x600
     268:	24a501c4 	addiu	a1,a1,452
     26c:	afa60018 	sw	a2,24(sp)
     270:	0c000000 	jal	0 <EnDekunuts_Init>
     274:	2484014c 	addiu	a0,a0,332
     278:	8fa60018 	lw	a2,24(sp)
     27c:	3c0f0000 	lui	t7,0x0
     280:	25ef0000 	addiu	t7,t7,0
     284:	84ce019a 	lh	t6,410(a2)
     288:	accf0190 	sw	t7,400(a2)
     28c:	a4ce0196 	sh	t6,406(a2)
     290:	8fbf0014 	lw	ra,20(sp)
     294:	27bd0018 	addiu	sp,sp,24
     298:	03e00008 	jr	ra
     29c:	00000000 	nop

000002a0 <func_809E9800>:
     2a0:	27bdffe8 	addiu	sp,sp,-24
     2a4:	afbf0014 	sw	ra,20(sp)
     2a8:	00803825 	move	a3,a0
     2ac:	3c050600 	lui	a1,0x600
     2b0:	24a50e6c 	addiu	a1,a1,3692
     2b4:	afa70018 	sw	a3,24(sp)
     2b8:	2484014c 	addiu	a0,a0,332
     2bc:	0c000000 	jal	0 <EnDekunuts_Init>
     2c0:	3c06c040 	lui	a2,0xc040
     2c4:	8fa70018 	lw	a3,24(sp)
     2c8:	3c0e0000 	lui	t6,0x0
     2cc:	25ce0000 	addiu	t6,t6,0
     2d0:	8cef0190 	lw	t7,400(a3)
     2d4:	3c080000 	lui	t0,0x0
     2d8:	24190001 	li	t9,1
     2dc:	15cf0004 	bne	t6,t7,2f0 <func_809E9800+0x50>
     2e0:	25080000 	addiu	t0,t0,0
     2e4:	24181002 	li	t8,4098
     2e8:	10000002 	b	2f4 <func_809E9800+0x54>
     2ec:	a4f80196 	sh	t8,406(a3)
     2f0:	a4f90196 	sh	t9,406(a3)
     2f4:	ace80190 	sw	t0,400(a3)
     2f8:	8fbf0014 	lw	ra,20(sp)
     2fc:	27bd0018 	addiu	sp,sp,24
     300:	03e00008 	jr	ra
     304:	00000000 	nop

00000308 <func_809E9868>:
     308:	27bdffe8 	addiu	sp,sp,-24
     30c:	afbf0014 	sw	ra,20(sp)
     310:	afa40018 	sw	a0,24(sp)
     314:	3c050600 	lui	a1,0x600
     318:	24a504d8 	addiu	a1,a1,1240
     31c:	2484014c 	addiu	a0,a0,332
     320:	0c000000 	jal	0 <EnDekunuts_Init>
     324:	3c06c0a0 	lui	a2,0xc0a0
     328:	8fa40018 	lw	a0,24(sp)
     32c:	0c000000 	jal	0 <EnDekunuts_Init>
     330:	2405387d 	li	a1,14461
     334:	8faf0018 	lw	t7,24(sp)
     338:	3c0e0000 	lui	t6,0x0
     33c:	25ce0000 	addiu	t6,t6,0
     340:	adee0190 	sw	t6,400(t7)
     344:	8fbf0014 	lw	ra,20(sp)
     348:	27bd0018 	addiu	sp,sp,24
     34c:	03e00008 	jr	ra
     350:	00000000 	nop

00000354 <func_809E98B4>:
     354:	27bdffe8 	addiu	sp,sp,-24
     358:	afbf0014 	sw	ra,20(sp)
     35c:	00803825 	move	a3,a0
     360:	3c050600 	lui	a1,0x600
     364:	24a508c4 	addiu	a1,a1,2244
     368:	afa70018 	sw	a3,24(sp)
     36c:	2484014c 	addiu	a0,a0,332
     370:	0c000000 	jal	0 <EnDekunuts_Init>
     374:	3c06c040 	lui	a2,0xc040
     378:	8fa40018 	lw	a0,24(sp)
     37c:	240e0025 	li	t6,37
     380:	240f0032 	li	t7,50
     384:	24053880 	li	a1,14464
     388:	a48e030a 	sh	t6,778(a0)
     38c:	0c000000 	jal	0 <EnDekunuts_Init>
     390:	a08f00ae 	sb	t7,174(a0)
     394:	8fa70018 	lw	a3,24(sp)
     398:	3c080000 	lui	t0,0x0
     39c:	25080000 	addiu	t0,t0,0
     3a0:	90f802d9 	lbu	t8,729(a3)
     3a4:	ace80190 	sw	t0,400(a3)
     3a8:	3319fffe 	andi	t9,t8,0xfffe
     3ac:	a0f902d9 	sb	t9,729(a3)
     3b0:	8fbf0014 	lw	ra,20(sp)
     3b4:	27bd0018 	addiu	sp,sp,24
     3b8:	03e00008 	jr	ra
     3bc:	00000000 	nop

000003c0 <func_809E9920>:
     3c0:	27bdffe8 	addiu	sp,sp,-24
     3c4:	afbf0014 	sw	ra,20(sp)
     3c8:	00803025 	move	a2,a0
     3cc:	3c050600 	lui	a1,0x600
     3d0:	24a53650 	addiu	a1,a1,13904
     3d4:	afa60018 	sw	a2,24(sp)
     3d8:	0c000000 	jal	0 <EnDekunuts_Init>
     3dc:	2484014c 	addiu	a0,a0,332
     3e0:	8fa60018 	lw	a2,24(sp)
     3e4:	3c190000 	lui	t9,0x0
     3e8:	240e0002 	li	t6,2
     3ec:	90cf02d9 	lbu	t7,729(a2)
     3f0:	27390000 	addiu	t9,t9,0
     3f4:	a4ce0196 	sh	t6,406(a2)
     3f8:	35f80001 	ori	t8,t7,0x1
     3fc:	a0c00194 	sb	zero,404(a2)
     400:	a0d802d9 	sb	t8,729(a2)
     404:	acd90190 	sw	t9,400(a2)
     408:	8fbf0014 	lw	ra,20(sp)
     40c:	27bd0018 	addiu	sp,sp,24
     410:	03e00008 	jr	ra
     414:	00000000 	nop

00000418 <func_809E9978>:
     418:	27bdffe8 	addiu	sp,sp,-24
     41c:	afbf0014 	sw	ra,20(sp)
     420:	00803025 	move	a2,a0
     424:	3c050600 	lui	a1,0x600
     428:	24a51024 	addiu	a1,a1,4132
     42c:	afa60018 	sw	a2,24(sp)
     430:	0c000000 	jal	0 <EnDekunuts_Init>
     434:	2484014c 	addiu	a0,a0,332
     438:	8fa60018 	lw	a2,24(sp)
     43c:	44802000 	mtc1	zero,$f4
     440:	240e0003 	li	t6,3
     444:	90c20195 	lbu	v0,405(a2)
     448:	3c180000 	lui	t8,0x0
     44c:	a4ce0196 	sh	t6,406(a2)
     450:	10400003 	beqz	v0,460 <func_809E9978+0x48>
     454:	e4c40068 	swc1	$f4,104(a2)
     458:	244fffff 	addiu	t7,v0,-1
     45c:	a0cf0195 	sb	t7,405(a2)
     460:	27180000 	addiu	t8,t8,0
     464:	acd80190 	sw	t8,400(a2)
     468:	8fbf0014 	lw	ra,20(sp)
     46c:	27bd0018 	addiu	sp,sp,24
     470:	03e00008 	jr	ra
     474:	00000000 	nop

00000478 <func_809E99D8>:
     478:	27bdffd8 	addiu	sp,sp,-40
     47c:	afb00020 	sw	s0,32(sp)
     480:	00808025 	move	s0,a0
     484:	afbf0024 	sw	ra,36(sp)
     488:	3c050600 	lui	a1,0x600
     48c:	24a50368 	addiu	a1,a1,872
     490:	2484014c 	addiu	a0,a0,332
     494:	0c000000 	jal	0 <EnDekunuts_Init>
     498:	3c06c040 	lui	a2,0xc040
     49c:	8e0e0304 	lw	t6,772(s0)
     4a0:	3c010001 	lui	at,0x1
     4a4:	3421f824 	ori	at,at,0xf824
     4a8:	8dcf0000 	lw	t7,0(t6)
     4ac:	02002025 	move	a0,s0
     4b0:	01e1c024 	and	t8,t7,at
     4b4:	13000005 	beqz	t8,4cc <func_809E99D8+0x54>
     4b8:	00000000 	nop
     4bc:	8e1902d0 	lw	t9,720(s0)
     4c0:	87280032 	lh	t0,50(t9)
     4c4:	10000006 	b	4e0 <func_809E99D8+0x68>
     4c8:	a6080032 	sh	t0,50(s0)
     4cc:	0c000000 	jal	0 <EnDekunuts_Init>
     4d0:	8e0502d0 	lw	a1,720(s0)
     4d4:	34018000 	li	at,0x8000
     4d8:	00414821 	addu	t1,v0,at
     4dc:	a6090032 	sh	t1,50(s0)
     4e0:	920a02d9 	lbu	t2,729(s0)
     4e4:	3c014120 	lui	at,0x4120
     4e8:	44812000 	mtc1	at,$f4
     4ec:	3c0c0000 	lui	t4,0x0
     4f0:	258c0000 	addiu	t4,t4,0
     4f4:	314bfffe 	andi	t3,t2,0xfffe
     4f8:	a20b02d9 	sb	t3,729(s0)
     4fc:	ae0c0190 	sw	t4,400(s0)
     500:	02002025 	move	a0,s0
     504:	24053880 	li	a1,14464
     508:	0c000000 	jal	0 <EnDekunuts_Init>
     50c:	e6040068 	swc1	$f4,104(s0)
     510:	02002025 	move	a0,s0
     514:	0c000000 	jal	0 <EnDekunuts_Init>
     518:	2405393b 	li	a1,14651
     51c:	3c040600 	lui	a0,0x600
     520:	0c000000 	jal	0 <EnDekunuts_Init>
     524:	24840368 	addiu	a0,a0,872
     528:	02002025 	move	a0,s0
     52c:	24054000 	li	a1,16384
     530:	240600ff 	li	a2,255
     534:	00003825 	move	a3,zero
     538:	0c000000 	jal	0 <EnDekunuts_Init>
     53c:	afa20010 	sw	v0,16(sp)
     540:	8fbf0024 	lw	ra,36(sp)
     544:	8fb00020 	lw	s0,32(sp)
     548:	27bd0028 	addiu	sp,sp,40
     54c:	03e00008 	jr	ra
     550:	00000000 	nop

00000554 <func_809E9AB4>:
     554:	27bdffd8 	addiu	sp,sp,-40
     558:	afb00020 	sw	s0,32(sp)
     55c:	00808025 	move	s0,a0
     560:	afbf0024 	sw	ra,36(sp)
     564:	3c050600 	lui	a1,0x600
     568:	24a50368 	addiu	a1,a1,872
     56c:	2484014c 	addiu	a0,a0,332
     570:	0c000000 	jal	0 <EnDekunuts_Init>
     574:	3c06c040 	lui	a2,0xc040
     578:	44802000 	mtc1	zero,$f4
     57c:	3c0f0000 	lui	t7,0x0
     580:	240e0005 	li	t6,5
     584:	25ef0000 	addiu	t7,t7,0
     588:	a60e0196 	sh	t6,406(s0)
     58c:	ae0f0190 	sw	t7,400(s0)
     590:	02002025 	move	a0,s0
     594:	2405389e 	li	a1,14494
     598:	0c000000 	jal	0 <EnDekunuts_Init>
     59c:	e6040068 	swc1	$f4,104(s0)
     5a0:	3c040600 	lui	a0,0x600
     5a4:	0c000000 	jal	0 <EnDekunuts_Init>
     5a8:	24840368 	addiu	a0,a0,872
     5ac:	86180196 	lh	t8,406(s0)
     5b0:	02002025 	move	a0,s0
     5b4:	00002825 	move	a1,zero
     5b8:	00580019 	multu	v0,t8
     5bc:	240600ff 	li	a2,255
     5c0:	00003825 	move	a3,zero
     5c4:	0000c812 	mflo	t9
     5c8:	afb90010 	sw	t9,16(sp)
     5cc:	0c000000 	jal	0 <EnDekunuts_Init>
     5d0:	00000000 	nop
     5d4:	8fbf0024 	lw	ra,36(sp)
     5d8:	8fb00020 	lw	s0,32(sp)
     5dc:	27bd0028 	addiu	sp,sp,40
     5e0:	03e00008 	jr	ra
     5e4:	00000000 	nop

000005e8 <func_809E9B48>:
     5e8:	27bdffe8 	addiu	sp,sp,-24
     5ec:	afbf0014 	sw	ra,20(sp)
     5f0:	00803025 	move	a2,a0
     5f4:	3c050600 	lui	a1,0x600
     5f8:	24a506b0 	addiu	a1,a1,1712
     5fc:	afa60018 	sw	a2,24(sp)
     600:	0c000000 	jal	0 <EnDekunuts_Init>
     604:	2484014c 	addiu	a0,a0,332
     608:	8fa40018 	lw	a0,24(sp)
     60c:	44802000 	mtc1	zero,$f4
     610:	3c0e0000 	lui	t6,0x0
     614:	25ce0000 	addiu	t6,t6,0
     618:	24053881 	li	a1,14465
     61c:	ac8e0190 	sw	t6,400(a0)
     620:	0c000000 	jal	0 <EnDekunuts_Init>
     624:	e4840068 	swc1	$f4,104(a0)
     628:	8fbf0014 	lw	ra,20(sp)
     62c:	27bd0018 	addiu	sp,sp,24
     630:	03e00008 	jr	ra
     634:	00000000 	nop

00000638 <func_809E9B98>:
     638:	27bdffd0 	addiu	sp,sp,-48
     63c:	afbf001c 	sw	ra,28(sp)
     640:	afb00018 	sw	s0,24(sp)
     644:	afa50034 	sw	a1,52(sp)
     648:	3c013f00 	lui	at,0x3f00
     64c:	44813000 	mtc1	at,$f6
     650:	c4840168 	lwc1	$f4,360(a0)
     654:	00808025 	move	s0,a0
     658:	00001825 	move	v1,zero
     65c:	4606203c 	c.lt.s	$f4,$f6
     660:	2604014c 	addiu	a0,s0,332
     664:	3c054110 	lui	a1,0x4110
     668:	45000002 	bc1f	674 <func_809E9B98+0x3c>
     66c:	00000000 	nop
     670:	24030001 	li	v1,1
     674:	50600006 	beqzl	v1,690 <func_809E9B98+0x58>
     678:	afa3002c 	sw	v1,44(sp)
     67c:	86020196 	lh	v0,406(s0)
     680:	10400002 	beqz	v0,68c <func_809E9B98+0x54>
     684:	244effff 	addiu	t6,v0,-1
     688:	a60e0196 	sh	t6,406(s0)
     68c:	afa3002c 	sw	v1,44(sp)
     690:	0c000000 	jal	0 <EnDekunuts_Init>
     694:	afa40020 	sw	a0,32(sp)
     698:	3c014110 	lui	at,0x4110
     69c:	44816000 	mtc1	at,$f12
     6a0:	10400005 	beqz	v0,6b8 <func_809E9B98+0x80>
     6a4:	8fa40020 	lw	a0,32(sp)
     6a8:	920f02d9 	lbu	t7,729(s0)
     6ac:	35f80001 	ori	t8,t7,0x1
     6b0:	1000000c 	b	6e4 <func_809E9B98+0xac>
     6b4:	a21802d9 	sb	t8,729(s0)
     6b8:	0c000000 	jal	0 <EnDekunuts_Init>
     6bc:	3c054100 	lui	a1,0x4100
     6c0:	3c014110 	lui	at,0x4110
     6c4:	44816000 	mtc1	at,$f12
     6c8:	10400006 	beqz	v0,6e4 <func_809E9B98+0xac>
     6cc:	02002025 	move	a0,s0
     6d0:	0c000000 	jal	0 <EnDekunuts_Init>
     6d4:	2405387c 	li	a1,14460
     6d8:	3c014110 	lui	at,0x4110
     6dc:	44816000 	mtc1	at,$f12
     6e0:	00000000 	nop
     6e4:	c6000164 	lwc1	$f0,356(s0)
     6e8:	3c014140 	lui	at,0x4140
     6ec:	460c003c 	c.lt.s	$f0,$f12
     6f0:	00000000 	nop
     6f4:	45020004 	bc1fl	708 <func_809E9B98+0xd0>
     6f8:	44817000 	mtc1	at,$f14
     6fc:	1000000b 	b	72c <func_809E9B98+0xf4>
     700:	46006006 	mov.s	$f0,$f12
     704:	44817000 	mtc1	at,$f14
     708:	00000000 	nop
     70c:	4600703c 	c.lt.s	$f14,$f0
     710:	00000000 	nop
     714:	45020004 	bc1fl	728 <func_809E9B98+0xf0>
     718:	46000086 	mov.s	$f2,$f0
     71c:	10000002 	b	728 <func_809E9B98+0xf0>
     720:	46007086 	mov.s	$f2,$f14
     724:	46000086 	mov.s	$f2,$f0
     728:	46001006 	mov.s	$f0,$f2
     72c:	460c0201 	sub.s	$f8,$f0,$f12
     730:	3c0140a0 	lui	at,0x40a0
     734:	44818000 	mtc1	at,$f16
     738:	3c0142f0 	lui	at,0x42f0
     73c:	460c4282 	mul.s	$f10,$f8,$f12
     740:	46105480 	add.s	$f18,$f10,$f16
     744:	4600910d 	trunc.w.s	$f4,$f18
     748:	44082000 	mfc1	t0,$f4
     74c:	00000000 	nop
     750:	a608030a 	sh	t0,778(s0)
     754:	8fa9002c 	lw	t1,44(sp)
     758:	1520000c 	bnez	t1,78c <func_809E9B98+0x154>
     75c:	00000000 	nop
     760:	c6060090 	lwc1	$f6,144(s0)
     764:	44814000 	mtc1	at,$f8
     768:	00000000 	nop
     76c:	4608303c 	c.lt.s	$f6,$f8
     770:	00000000 	nop
     774:	45000005 	bc1f	78c <func_809E9B98+0x154>
     778:	00000000 	nop
     77c:	0c000000 	jal	0 <EnDekunuts_Init>
     780:	02002025 	move	a0,s0
     784:	10000021 	b	80c <func_809E9B98+0x1d4>
     788:	8fab002c 	lw	t3,44(sp)
     78c:	0c000000 	jal	0 <EnDekunuts_Init>
     790:	8fa40020 	lw	a0,32(sp)
     794:	1040001c 	beqz	v0,808 <func_809E9B98+0x1d0>
     798:	3c0142f0 	lui	at,0x42f0
     79c:	c6020090 	lwc1	$f2,144(s0)
     7a0:	44815000 	mtc1	at,$f10
     7a4:	00000000 	nop
     7a8:	460a103c 	c.lt.s	$f2,$f10
     7ac:	00000000 	nop
     7b0:	45020006 	bc1fl	7cc <func_809E9B98+0x194>
     7b4:	860a0196 	lh	t2,406(s0)
     7b8:	0c000000 	jal	0 <EnDekunuts_Init>
     7bc:	02002025 	move	a0,s0
     7c0:	10000012 	b	80c <func_809E9B98+0x1d4>
     7c4:	8fab002c 	lw	t3,44(sp)
     7c8:	860a0196 	lh	t2,406(s0)
     7cc:	3c0143a0 	lui	at,0x43a0
     7d0:	1540000b 	bnez	t2,800 <func_809E9B98+0x1c8>
     7d4:	00000000 	nop
     7d8:	44818000 	mtc1	at,$f16
     7dc:	00000000 	nop
     7e0:	4602803c 	c.lt.s	$f16,$f2
     7e4:	00000000 	nop
     7e8:	45000005 	bc1f	800 <func_809E9B98+0x1c8>
     7ec:	00000000 	nop
     7f0:	0c000000 	jal	0 <EnDekunuts_Init>
     7f4:	02002025 	move	a0,s0
     7f8:	10000004 	b	80c <func_809E9B98+0x1d4>
     7fc:	8fab002c 	lw	t3,44(sp)
     800:	0c000000 	jal	0 <EnDekunuts_Init>
     804:	02002025 	move	a0,s0
     808:	8fab002c 	lw	t3,44(sp)
     80c:	3c014320 	lui	at,0x4320
     810:	5160001e 	beqzl	t3,88c <func_809E9B98+0x254>
     814:	8fbf001c 	lw	ra,28(sp)
     818:	c6020090 	lwc1	$f2,144(s0)
     81c:	44819000 	mtc1	at,$f18
     820:	00000000 	nop
     824:	4602903c 	c.lt.s	$f18,$f2
     828:	00000000 	nop
     82c:	45020017 	bc1fl	88c <func_809E9B98+0x254>
     830:	8fbf001c 	lw	ra,28(sp)
     834:	c6000094 	lwc1	$f0,148(s0)
     838:	3c0142f0 	lui	at,0x42f0
     83c:	44812000 	mtc1	at,$f4
     840:	46000005 	abs.s	$f0,$f0
     844:	4604003c 	c.lt.s	$f0,$f4
     848:	00000000 	nop
     84c:	4502000f 	bc1fl	88c <func_809E9B98+0x254>
     850:	8fbf001c 	lw	ra,28(sp)
     854:	860c0196 	lh	t4,406(s0)
     858:	3c0143f0 	lui	at,0x43f0
     85c:	51800007 	beqzl	t4,87c <func_809E9B98+0x244>
     860:	3c013f80 	lui	at,0x3f80
     864:	44813000 	mtc1	at,$f6
     868:	00000000 	nop
     86c:	4606103c 	c.lt.s	$f2,$f6
     870:	00000000 	nop
     874:	45000004 	bc1f	888 <func_809E9B98+0x250>
     878:	3c013f80 	lui	at,0x3f80
     87c:	44814000 	mtc1	at,$f8
     880:	00000000 	nop
     884:	e6080168 	swc1	$f8,360(s0)
     888:	8fbf001c 	lw	ra,28(sp)
     88c:	8fb00018 	lw	s0,24(sp)
     890:	27bd0030 	addiu	sp,sp,48
     894:	03e00008 	jr	ra
     898:	00000000 	nop

0000089c <func_809E9DFC>:
     89c:	27bdffe0 	addiu	sp,sp,-32
     8a0:	00803025 	move	a2,a0
     8a4:	afbf0014 	sw	ra,20(sp)
     8a8:	2484014c 	addiu	a0,a0,332
     8ac:	afa50024 	sw	a1,36(sp)
     8b0:	afa4001c 	sw	a0,28(sp)
     8b4:	0c000000 	jal	0 <EnDekunuts_Init>
     8b8:	afa60020 	sw	a2,32(sp)
     8bc:	8fa4001c 	lw	a0,28(sp)
     8c0:	0c000000 	jal	0 <EnDekunuts_Init>
     8c4:	24050000 	li	a1,0
     8c8:	10400005 	beqz	v0,8e0 <func_809E9DFC+0x44>
     8cc:	8fa60020 	lw	a2,32(sp)
     8d0:	84c20196 	lh	v0,406(a2)
     8d4:	10400002 	beqz	v0,8e0 <func_809E9DFC+0x44>
     8d8:	244effff 	addiu	t6,v0,-1
     8dc:	a4ce0196 	sh	t6,406(a2)
     8e0:	3c0142f0 	lui	at,0x42f0
     8e4:	44813000 	mtc1	at,$f6
     8e8:	c4c40090 	lwc1	$f4,144(a2)
     8ec:	4606203c 	c.lt.s	$f4,$f6
     8f0:	00000000 	nop
     8f4:	45010004 	bc1t	908 <func_809E9DFC+0x6c>
     8f8:	00000000 	nop
     8fc:	84cf0196 	lh	t7,406(a2)
     900:	55e00004 	bnezl	t7,914 <func_809E9DFC+0x78>
     904:	8fbf0014 	lw	ra,20(sp)
     908:	0c000000 	jal	0 <EnDekunuts_Init>
     90c:	00c02025 	move	a0,a2
     910:	8fbf0014 	lw	ra,20(sp)
     914:	27bd0020 	addiu	sp,sp,32
     918:	03e00008 	jr	ra
     91c:	00000000 	nop

00000920 <func_809E9E80>:
     920:	27bdffd8 	addiu	sp,sp,-40
     924:	afb00018 	sw	s0,24(sp)
     928:	00808025 	move	s0,a0
     92c:	afbf001c 	sw	ra,28(sp)
     930:	2484014c 	addiu	a0,a0,332
     934:	afa5002c 	sw	a1,44(sp)
     938:	0c000000 	jal	0 <EnDekunuts_Init>
     93c:	afa40024 	sw	a0,36(sp)
     940:	8fa40024 	lw	a0,36(sp)
     944:	0c000000 	jal	0 <EnDekunuts_Init>
     948:	24050000 	li	a1,0
     94c:	10400005 	beqz	v0,964 <func_809E9E80+0x44>
     950:	260400b6 	addiu	a0,s0,182
     954:	86020196 	lh	v0,406(s0)
     958:	10400002 	beqz	v0,964 <func_809E9E80+0x44>
     95c:	244effff 	addiu	t6,v0,-1
     960:	a60e0196 	sh	t6,406(s0)
     964:	86020196 	lh	v0,406(s0)
     968:	24060002 	li	a2,2
     96c:	24070e38 	li	a3,3640
     970:	304f1000 	andi	t7,v0,0x1000
     974:	55e00005 	bnezl	t7,98c <func_809E9E80+0x6c>
     978:	24011000 	li	at,4096
     97c:	0c000000 	jal	0 <EnDekunuts_Init>
     980:	8605008a 	lh	a1,138(s0)
     984:	86020196 	lh	v0,406(s0)
     988:	24011000 	li	at,4096
     98c:	14410016 	bne	v0,at,9e8 <func_809E9E80+0xc8>
     990:	3c0143f0 	lui	at,0x43f0
     994:	44812000 	mtc1	at,$f4
     998:	c6000090 	lwc1	$f0,144(s0)
     99c:	3c0142f0 	lui	at,0x42f0
     9a0:	4600203c 	c.lt.s	$f4,$f0
     9a4:	00000000 	nop
     9a8:	45010007 	bc1t	9c8 <func_809E9E80+0xa8>
     9ac:	00000000 	nop
     9b0:	44813000 	mtc1	at,$f6
     9b4:	00000000 	nop
     9b8:	4606003c 	c.lt.s	$f0,$f6
     9bc:	00000000 	nop
     9c0:	45000005 	bc1f	9d8 <func_809E9E80+0xb8>
     9c4:	00000000 	nop
     9c8:	0c000000 	jal	0 <EnDekunuts_Init>
     9cc:	02002025 	move	a0,s0
     9d0:	1000000a 	b	9fc <func_809E9E80+0xdc>
     9d4:	8fbf001c 	lw	ra,28(sp)
     9d8:	0c000000 	jal	0 <EnDekunuts_Init>
     9dc:	02002025 	move	a0,s0
     9e0:	10000006 	b	9fc <func_809E9E80+0xdc>
     9e4:	8fbf001c 	lw	ra,28(sp)
     9e8:	54400004 	bnezl	v0,9fc <func_809E9E80+0xdc>
     9ec:	8fbf001c 	lw	ra,28(sp)
     9f0:	0c000000 	jal	0 <EnDekunuts_Init>
     9f4:	02002025 	move	a0,s0
     9f8:	8fbf001c 	lw	ra,28(sp)
     9fc:	8fb00018 	lw	s0,24(sp)
     a00:	27bd0028 	addiu	sp,sp,40
     a04:	03e00008 	jr	ra
     a08:	00000000 	nop

00000a0c <func_809E9F6C>:
     a0c:	27bdffb8 	addiu	sp,sp,-72
     a10:	afb00030 	sw	s0,48(sp)
     a14:	00808025 	move	s0,a0
     a18:	afbf0034 	sw	ra,52(sp)
     a1c:	afa5004c 	sw	a1,76(sp)
     a20:	8605008a 	lh	a1,138(s0)
     a24:	248400b6 	addiu	a0,a0,182
     a28:	24060002 	li	a2,2
     a2c:	0c000000 	jal	0 <EnDekunuts_Init>
     a30:	24070e38 	li	a3,3640
     a34:	2604014c 	addiu	a0,s0,332
     a38:	0c000000 	jal	0 <EnDekunuts_Init>
     a3c:	afa40038 	sw	a0,56(sp)
     a40:	10400005 	beqz	v0,a58 <func_809E9F6C+0x4c>
     a44:	8fa40038 	lw	a0,56(sp)
     a48:	0c000000 	jal	0 <EnDekunuts_Init>
     a4c:	02002025 	move	a0,s0
     a50:	10000040 	b	b54 <func_809E9F6C+0x148>
     a54:	8fbf0034 	lw	ra,52(sp)
     a58:	0c000000 	jal	0 <EnDekunuts_Init>
     a5c:	3c0540c0 	lui	a1,0x40c0
     a60:	5040002b 	beqzl	v0,b10 <func_809E9F6C+0x104>
     a64:	86190196 	lh	t9,406(s0)
     a68:	0c000000 	jal	0 <EnDekunuts_Init>
     a6c:	860400b6 	lh	a0,182(s0)
     a70:	3c0141b8 	lui	at,0x41b8
     a74:	44812000 	mtc1	at,$f4
     a78:	c6080024 	lwc1	$f8,36(s0)
     a7c:	3c014140 	lui	at,0x4140
     a80:	46040182 	mul.s	$f6,$f0,$f4
     a84:	44819000 	mtc1	at,$f18
     a88:	46083280 	add.s	$f10,$f6,$f8
     a8c:	e7aa003c 	swc1	$f10,60(sp)
     a90:	c6100028 	lwc1	$f16,40(s0)
     a94:	46128100 	add.s	$f4,$f16,$f18
     a98:	e7a40040 	swc1	$f4,64(sp)
     a9c:	0c000000 	jal	0 <EnDekunuts_Init>
     aa0:	860400b6 	lh	a0,182(s0)
     aa4:	3c0141b8 	lui	at,0x41b8
     aa8:	44813000 	mtc1	at,$f6
     aac:	c60a002c 	lwc1	$f10,44(s0)
     ab0:	c7b00040 	lwc1	$f16,64(sp)
     ab4:	46060202 	mul.s	$f8,$f0,$f6
     ab8:	8fa5004c 	lw	a1,76(sp)
     abc:	e7b00010 	swc1	$f16,16(sp)
     ac0:	24060193 	li	a2,403
     ac4:	8fa7003c 	lw	a3,60(sp)
     ac8:	24a41c24 	addiu	a0,a1,7204
     acc:	460a4080 	add.s	$f2,$f8,$f10
     ad0:	e7a20014 	swc1	$f2,20(sp)
     ad4:	860e00b4 	lh	t6,180(s0)
     ad8:	afae0018 	sw	t6,24(sp)
     adc:	860f00b6 	lh	t7,182(s0)
     ae0:	afaf001c 	sw	t7,28(sp)
     ae4:	861800b8 	lh	t8,184(s0)
     ae8:	afa00024 	sw	zero,36(sp)
     aec:	0c000000 	jal	0 <EnDekunuts_Init>
     af0:	afb80020 	sw	t8,32(sp)
     af4:	10400016 	beqz	v0,b50 <func_809E9F6C+0x144>
     af8:	02002025 	move	a0,s0
     afc:	0c000000 	jal	0 <EnDekunuts_Init>
     b00:	2405387e 	li	a1,14462
     b04:	10000013 	b	b54 <func_809E9F6C+0x148>
     b08:	8fbf0034 	lw	ra,52(sp)
     b0c:	86190196 	lh	t9,406(s0)
     b10:	8fa40038 	lw	a0,56(sp)
     b14:	2b210002 	slti	at,t9,2
     b18:	5420000e 	bnezl	at,b54 <func_809E9F6C+0x148>
     b1c:	8fbf0034 	lw	ra,52(sp)
     b20:	0c000000 	jal	0 <EnDekunuts_Init>
     b24:	3c054140 	lui	a1,0x4140
     b28:	10400009 	beqz	v0,b50 <func_809E9F6C+0x144>
     b2c:	8fa40038 	lw	a0,56(sp)
     b30:	3c050600 	lui	a1,0x600
     b34:	24a501c4 	addiu	a1,a1,452
     b38:	0c000000 	jal	0 <EnDekunuts_Init>
     b3c:	3c06c040 	lui	a2,0xc040
     b40:	86020196 	lh	v0,406(s0)
     b44:	10400002 	beqz	v0,b50 <func_809E9F6C+0x144>
     b48:	2448ffff 	addiu	t0,v0,-1
     b4c:	a6080196 	sh	t0,406(s0)
     b50:	8fbf0034 	lw	ra,52(sp)
     b54:	8fb00030 	lw	s0,48(sp)
     b58:	27bd0048 	addiu	sp,sp,72
     b5c:	03e00008 	jr	ra
     b60:	00000000 	nop

00000b64 <func_809EA0C4>:
     b64:	27bdffd0 	addiu	sp,sp,-48
     b68:	afb00018 	sw	s0,24(sp)
     b6c:	00808025 	move	s0,a0
     b70:	afbf001c 	sw	ra,28(sp)
     b74:	2484014c 	addiu	a0,a0,332
     b78:	afa50034 	sw	a1,52(sp)
     b7c:	0c000000 	jal	0 <EnDekunuts_Init>
     b80:	afa40024 	sw	a0,36(sp)
     b84:	10400005 	beqz	v0,b9c <func_809EA0C4+0x38>
     b88:	3c013f80 	lui	at,0x3f80
     b8c:	0c000000 	jal	0 <EnDekunuts_Init>
     b90:	02002025 	move	a0,s0
     b94:	10000023 	b	c24 <func_809EA0C4+0xc0>
     b98:	8fa40024 	lw	a0,36(sp)
     b9c:	44811000 	mtc1	at,$f2
     ba0:	c6000164 	lwc1	$f0,356(s0)
     ba4:	3c014040 	lui	at,0x4040
     ba8:	4602003c 	c.lt.s	$f0,$f2
     bac:	00000000 	nop
     bb0:	45020004 	bc1fl	bc4 <func_809EA0C4+0x60>
     bb4:	44812000 	mtc1	at,$f4
     bb8:	1000000c 	b	bec <func_809EA0C4+0x88>
     bbc:	46001006 	mov.s	$f0,$f2
     bc0:	44812000 	mtc1	at,$f4
     bc4:	3c014040 	lui	at,0x4040
     bc8:	4600203c 	c.lt.s	$f4,$f0
     bcc:	00000000 	nop
     bd0:	45020005 	bc1fl	be8 <func_809EA0C4+0x84>
     bd4:	46000086 	mov.s	$f2,$f0
     bd8:	44811000 	mtc1	at,$f2
     bdc:	10000003 	b	bec <func_809EA0C4+0x88>
     be0:	46001006 	mov.s	$f0,$f2
     be4:	46000086 	mov.s	$f2,$f0
     be8:	46001006 	mov.s	$f0,$f2
     bec:	3c014040 	lui	at,0x4040
     bf0:	44813000 	mtc1	at,$f6
     bf4:	3c014140 	lui	at,0x4140
     bf8:	44815000 	mtc1	at,$f10
     bfc:	46003201 	sub.s	$f8,$f6,$f0
     c00:	3c0140a0 	lui	at,0x40a0
     c04:	44819000 	mtc1	at,$f18
     c08:	460a4402 	mul.s	$f16,$f8,$f10
     c0c:	46128100 	add.s	$f4,$f16,$f18
     c10:	4600218d 	trunc.w.s	$f6,$f4
     c14:	440f3000 	mfc1	t7,$f6
     c18:	00000000 	nop
     c1c:	a60f030a 	sh	t7,778(s0)
     c20:	8fa40024 	lw	a0,36(sp)
     c24:	0c000000 	jal	0 <EnDekunuts_Init>
     c28:	3c054080 	lui	a1,0x4080
     c2c:	10400004 	beqz	v0,c40 <func_809EA0C4+0xdc>
     c30:	26040024 	addiu	a0,s0,36
     c34:	921802d9 	lbu	t8,729(s0)
     c38:	3319fffe 	andi	t9,t8,0xfffe
     c3c:	a21902d9 	sb	t9,729(s0)
     c40:	8e050008 	lw	a1,8(s0)
     c44:	3c063f00 	lui	a2,0x3f00
     c48:	0c000000 	jal	0 <EnDekunuts_Init>
     c4c:	3c074040 	lui	a3,0x4040
     c50:	2604002c 	addiu	a0,s0,44
     c54:	8e050010 	lw	a1,16(s0)
     c58:	3c063f00 	lui	a2,0x3f00
     c5c:	0c000000 	jal	0 <EnDekunuts_Init>
     c60:	3c074040 	lui	a3,0x4040
     c64:	8fbf001c 	lw	ra,28(sp)
     c68:	8fb00018 	lw	s0,24(sp)
     c6c:	27bd0030 	addiu	sp,sp,48
     c70:	03e00008 	jr	ra
     c74:	00000000 	nop

00000c78 <func_809EA1D8>:
     c78:	27bdffe0 	addiu	sp,sp,-32
     c7c:	afb00018 	sw	s0,24(sp)
     c80:	00808025 	move	s0,a0
     c84:	afbf001c 	sw	ra,28(sp)
     c88:	afa50024 	sw	a1,36(sp)
     c8c:	0c000000 	jal	0 <EnDekunuts_Init>
     c90:	2484014c 	addiu	a0,a0,332
     c94:	10400008 	beqz	v0,cb8 <func_809EA1D8+0x40>
     c98:	34018000 	li	at,0x8000
     c9c:	860e008a 	lh	t6,138(s0)
     ca0:	24180003 	li	t8,3
     ca4:	a2180195 	sb	t8,405(s0)
     ca8:	01c17821 	addu	t7,t6,at
     cac:	a60f0198 	sh	t7,408(s0)
     cb0:	0c000000 	jal	0 <EnDekunuts_Init>
     cb4:	02002025 	move	a0,s0
     cb8:	260400b6 	addiu	a0,s0,182
     cbc:	8605008a 	lh	a1,138(s0)
     cc0:	24060002 	li	a2,2
     cc4:	0c000000 	jal	0 <EnDekunuts_Init>
     cc8:	24070e38 	li	a3,3640
     ccc:	8fbf001c 	lw	ra,28(sp)
     cd0:	8fb00018 	lw	s0,24(sp)
     cd4:	27bd0020 	addiu	sp,sp,32
     cd8:	03e00008 	jr	ra
     cdc:	00000000 	nop

00000ce0 <func_809EA240>:
     ce0:	27bdffc8 	addiu	sp,sp,-56
     ce4:	afb00020 	sw	s0,32(sp)
     ce8:	00808025 	move	s0,a0
     cec:	afbf0024 	sw	ra,36(sp)
     cf0:	2484014c 	addiu	a0,a0,332
     cf4:	afa5003c 	sw	a1,60(sp)
     cf8:	0c000000 	jal	0 <EnDekunuts_Init>
     cfc:	afa40028 	sw	a0,40(sp)
     d00:	8fa40028 	lw	a0,40(sp)
     d04:	0c000000 	jal	0 <EnDekunuts_Init>
     d08:	24050000 	li	a1,0
     d0c:	10400005 	beqz	v0,d24 <func_809EA240+0x44>
     d10:	24180001 	li	t8,1
     d14:	86020196 	lh	v0,406(s0)
     d18:	10400002 	beqz	v0,d24 <func_809EA240+0x44>
     d1c:	244effff 	addiu	t6,v0,-1
     d20:	a60e0196 	sh	t6,406(s0)
     d24:	920f0194 	lbu	t7,404(s0)
     d28:	02002025 	move	a0,s0
     d2c:	51e00006 	beqzl	t7,d48 <func_809EA240+0x68>
     d30:	a2180194 	sb	t8,404(s0)
     d34:	0c000000 	jal	0 <EnDekunuts_Init>
     d38:	2405387f 	li	a1,14463
     d3c:	10000002 	b	d48 <func_809EA240+0x68>
     d40:	a2000194 	sb	zero,404(s0)
     d44:	a2180194 	sb	t8,404(s0)
     d48:	26040068 	addiu	a0,s0,104
     d4c:	3c0540f0 	lui	a1,0x40f0
     d50:	0c000000 	jal	0 <EnDekunuts_Init>
     d54:	3c063f80 	lui	a2,0x3f80
     d58:	86050198 	lh	a1,408(s0)
     d5c:	241900b6 	li	t9,182
     d60:	afb90010 	sw	t9,16(sp)
     d64:	26040032 	addiu	a0,s0,50
     d68:	24060001 	li	a2,1
     d6c:	0c000000 	jal	0 <EnDekunuts_Init>
     d70:	24070e38 	li	a3,3640
     d74:	5440003f 	bnezl	v0,e74 <func_809EA240+0x194>
     d78:	86180032 	lh	t8,50(s0)
     d7c:	96020088 	lhu	v0,136(s0)
     d80:	02002025 	move	a0,s0
     d84:	30480020 	andi	t0,v0,0x20
     d88:	11000005 	beqz	t0,da0 <func_809EA240+0xc0>
     d8c:	30490008 	andi	t1,v0,0x8
     d90:	0c000000 	jal	0 <EnDekunuts_Init>
     d94:	26050008 	addiu	a1,s0,8
     d98:	10000035 	b	e70 <func_809EA240+0x190>
     d9c:	a6020198 	sh	v0,408(s0)
     da0:	51200005 	beqzl	t1,db8 <func_809EA240+0xd8>
     da4:	920b0195 	lbu	t3,405(s0)
     da8:	860a007e 	lh	t2,126(s0)
     dac:	10000030 	b	e70 <func_809EA240+0x190>
     db0:	a60a0198 	sh	t2,408(s0)
     db4:	920b0195 	lbu	t3,405(s0)
     db8:	02002025 	move	a0,s0
     dbc:	55600029 	bnezl	t3,e64 <func_809EA240+0x184>
     dc0:	860e008a 	lh	t6,138(s0)
     dc4:	0c000000 	jal	0 <EnDekunuts_Init>
     dc8:	26050008 	addiu	a1,s0,8
     dcc:	8605008a 	lh	a1,138(s0)
     dd0:	00451823 	subu	v1,v0,a1
     dd4:	00031c00 	sll	v1,v1,0x10
     dd8:	00031c03 	sra	v1,v1,0x10
     ddc:	04600003 	bltz	v1,dec <func_809EA240+0x10c>
     de0:	00032023 	negu	a0,v1
     de4:	10000001 	b	dec <func_809EA240+0x10c>
     de8:	00602025 	move	a0,v1
     dec:	28812001 	slti	at,a0,8193
     df0:	54200004 	bnezl	at,e04 <func_809EA240+0x124>
     df4:	44832000 	mtc1	v1,$f4
     df8:	1000001d 	b	e70 <func_809EA240+0x190>
     dfc:	a6020198 	sh	v0,408(s0)
     e00:	44832000 	mtc1	v1,$f4
     e04:	44804000 	mtc1	zero,$f8
     e08:	44859000 	mtc1	a1,$f18
     e0c:	468021a0 	cvt.s.w	$f6,$f4
     e10:	3c01bf80 	lui	at,0xbf80
     e14:	4606403e 	c.le.s	$f8,$f6
     e18:	00000000 	nop
     e1c:	45020006 	bc1fl	e38 <func_809EA240+0x158>
     e20:	44810000 	mtc1	at,$f0
     e24:	3c013f80 	lui	at,0x3f80
     e28:	44810000 	mtc1	at,$f0
     e2c:	10000004 	b	e40 <func_809EA240+0x160>
     e30:	3c01c600 	lui	at,0xc600
     e34:	44810000 	mtc1	at,$f0
     e38:	00000000 	nop
     e3c:	3c01c600 	lui	at,0xc600
     e40:	44815000 	mtc1	at,$f10
     e44:	46809120 	cvt.s.w	$f4,$f18
     e48:	460a0402 	mul.s	$f16,$f0,$f10
     e4c:	46048180 	add.s	$f6,$f16,$f4
     e50:	4600320d 	trunc.w.s	$f8,$f6
     e54:	440d4000 	mfc1	t5,$f8
     e58:	10000005 	b	e70 <func_809EA240+0x190>
     e5c:	a60d0198 	sh	t5,408(s0)
     e60:	860e008a 	lh	t6,138(s0)
     e64:	34018000 	li	at,0x8000
     e68:	01c17821 	addu	t7,t6,at
     e6c:	a60f0198 	sh	t7,408(s0)
     e70:	86180032 	lh	t8,50(s0)
     e74:	92080195 	lbu	t0,405(s0)
     e78:	34018000 	li	at,0x8000
     e7c:	0301c821 	addu	t9,t8,at
     e80:	1500001d 	bnez	t0,ef8 <func_809EA240+0x218>
     e84:	a61900b6 	sh	t9,182(s0)
     e88:	02002025 	move	a0,s0
     e8c:	0c000000 	jal	0 <EnDekunuts_Init>
     e90:	26050008 	addiu	a1,s0,8
     e94:	3c0141a0 	lui	at,0x41a0
     e98:	44815000 	mtc1	at,$f10
     e9c:	00000000 	nop
     ea0:	460a003c 	c.lt.s	$f0,$f10
     ea4:	00000000 	nop
     ea8:	45020014 	bc1fl	efc <func_809EA240+0x21c>
     eac:	860a0196 	lh	t2,406(s0)
     eb0:	c6120028 	lwc1	$f18,40(s0)
     eb4:	c610000c 	lwc1	$f16,12(s0)
     eb8:	3c014000 	lui	at,0x4000
     ebc:	44812000 	mtc1	at,$f4
     ec0:	46109001 	sub.s	$f0,$f18,$f16
     ec4:	240900ff 	li	t1,255
     ec8:	02002025 	move	a0,s0
     ecc:	46000005 	abs.s	$f0,$f0
     ed0:	4604003c 	c.lt.s	$f0,$f4
     ed4:	00000000 	nop
     ed8:	45020008 	bc1fl	efc <func_809EA240+0x21c>
     edc:	860a0196 	lh	t2,406(s0)
     ee0:	44803000 	mtc1	zero,$f6
     ee4:	a20900ae 	sb	t1,174(s0)
     ee8:	0c000000 	jal	0 <EnDekunuts_Init>
     eec:	e6060068 	swc1	$f6,104(s0)
     ef0:	10000007 	b	f10 <func_809EA240+0x230>
     ef4:	8fbf0024 	lw	ra,36(sp)
     ef8:	860a0196 	lh	t2,406(s0)
     efc:	55400004 	bnezl	t2,f10 <func_809EA240+0x230>
     f00:	8fbf0024 	lw	ra,36(sp)
     f04:	0c000000 	jal	0 <EnDekunuts_Init>
     f08:	02002025 	move	a0,s0
     f0c:	8fbf0024 	lw	ra,36(sp)
     f10:	8fb00020 	lw	s0,32(sp)
     f14:	27bd0038 	addiu	sp,sp,56
     f18:	03e00008 	jr	ra
     f1c:	00000000 	nop

00000f20 <func_809EA480>:
     f20:	27bdffe0 	addiu	sp,sp,-32
     f24:	00803025 	move	a2,a0
     f28:	afbf0014 	sw	ra,20(sp)
     f2c:	2484014c 	addiu	a0,a0,332
     f30:	afa50024 	sw	a1,36(sp)
     f34:	afa4001c 	sw	a0,28(sp)
     f38:	0c000000 	jal	0 <EnDekunuts_Init>
     f3c:	afa60020 	sw	a2,32(sp)
     f40:	8fa4001c 	lw	a0,28(sp)
     f44:	0c000000 	jal	0 <EnDekunuts_Init>
     f48:	24050000 	li	a1,0
     f4c:	10400005 	beqz	v0,f64 <func_809EA480+0x44>
     f50:	8fa60020 	lw	a2,32(sp)
     f54:	84c20196 	lh	v0,406(a2)
     f58:	10400002 	beqz	v0,f64 <func_809EA480+0x44>
     f5c:	244effff 	addiu	t6,v0,-1
     f60:	a4ce0196 	sh	t6,406(a2)
     f64:	84cf0196 	lh	t7,406(a2)
     f68:	55e00004 	bnezl	t7,f7c <func_809EA480+0x5c>
     f6c:	8fbf0014 	lw	ra,20(sp)
     f70:	0c000000 	jal	0 <EnDekunuts_Init>
     f74:	00c02025 	move	a0,a2
     f78:	8fbf0014 	lw	ra,20(sp)
     f7c:	27bd0020 	addiu	sp,sp,32
     f80:	03e00008 	jr	ra
     f84:	00000000 	nop

00000f88 <func_809EA4E8>:
     f88:	27bdffe8 	addiu	sp,sp,-24
     f8c:	afbf0014 	sw	ra,20(sp)
     f90:	afa40018 	sw	a0,24(sp)
     f94:	afa5001c 	sw	a1,28(sp)
     f98:	24050000 	li	a1,0
     f9c:	24840068 	addiu	a0,a0,104
     fa0:	0c000000 	jal	0 <EnDekunuts_Init>
     fa4:	3c063f80 	lui	a2,0x3f80
     fa8:	8fa40018 	lw	a0,24(sp)
     fac:	0c000000 	jal	0 <EnDekunuts_Init>
     fb0:	2484014c 	addiu	a0,a0,332
     fb4:	50400004 	beqzl	v0,fc8 <func_809EA4E8+0x40>
     fb8:	8fbf0014 	lw	ra,20(sp)
     fbc:	0c000000 	jal	0 <EnDekunuts_Init>
     fc0:	8fa40018 	lw	a0,24(sp)
     fc4:	8fbf0014 	lw	ra,20(sp)
     fc8:	27bd0018 	addiu	sp,sp,24
     fcc:	03e00008 	jr	ra
     fd0:	00000000 	nop

00000fd4 <func_809EA534>:
     fd4:	27bdffe0 	addiu	sp,sp,-32
     fd8:	00803025 	move	a2,a0
     fdc:	afbf0014 	sw	ra,20(sp)
     fe0:	2484014c 	addiu	a0,a0,332
     fe4:	afa50024 	sw	a1,36(sp)
     fe8:	afa4001c 	sw	a0,28(sp)
     fec:	0c000000 	jal	0 <EnDekunuts_Init>
     ff0:	afa60020 	sw	a2,32(sp)
     ff4:	8fa4001c 	lw	a0,28(sp)
     ff8:	0c000000 	jal	0 <EnDekunuts_Init>
     ffc:	24050000 	li	a1,0
    1000:	1040000f 	beqz	v0,1040 <func_809EA534+0x6c>
    1004:	8fa60020 	lw	a2,32(sp)
    1008:	84c20196 	lh	v0,406(a2)
    100c:	00c02025 	move	a0,a2
    1010:	10400003 	beqz	v0,1020 <func_809EA534+0x4c>
    1014:	244effff 	addiu	t6,v0,-1
    1018:	a4ce0196 	sh	t6,406(a2)
    101c:	84c20196 	lh	v0,406(a2)
    1020:	14400005 	bnez	v0,1038 <func_809EA534+0x64>
    1024:	00000000 	nop
    1028:	0c000000 	jal	0 <EnDekunuts_Init>
    102c:	00c02025 	move	a0,a2
    1030:	10000004 	b	1044 <func_809EA534+0x70>
    1034:	8fbf0014 	lw	ra,20(sp)
    1038:	0c000000 	jal	0 <EnDekunuts_Init>
    103c:	24053882 	li	a1,14466
    1040:	8fbf0014 	lw	ra,20(sp)
    1044:	27bd0020 	addiu	sp,sp,32
    1048:	03e00008 	jr	ra
    104c:	00000000 	nop

00001050 <func_809EA5B0>:
    1050:	27bdff98 	addiu	sp,sp,-104
    1054:	afb00044 	sw	s0,68(sp)
    1058:	00808025 	move	s0,a0
    105c:	afbf004c 	sw	ra,76(sp)
    1060:	afb10048 	sw	s1,72(sp)
    1064:	00a08825 	move	s1,a1
    1068:	0c000000 	jal	0 <EnDekunuts_Init>
    106c:	2484014c 	addiu	a0,a0,332
    1070:	10400049 	beqz	v0,1198 <func_809EA5B0+0x148>
    1074:	3c060000 	lui	a2,0x0
    1078:	c6040024 	lwc1	$f4,36(s0)
    107c:	3c014190 	lui	at,0x4190
    1080:	44814000 	mtc1	at,$f8
    1084:	e7a40058 	swc1	$f4,88(sp)
    1088:	c6060028 	lwc1	$f6,40(s0)
    108c:	240e00c8 	li	t6,200
    1090:	24c60000 	addiu	a2,a2,0
    1094:	46083280 	add.s	$f10,$f6,$f8
    1098:	240f00ff 	li	t7,255
    109c:	241800ff 	li	t8,255
    10a0:	241900ff 	li	t9,255
    10a4:	e7aa005c 	swc1	$f10,92(sp)
    10a8:	c610002c 	lwc1	$f16,44(s0)
    10ac:	afae0010 	sw	t6,16(sp)
    10b0:	240e0001 	li	t6,1
    10b4:	240800ff 	li	t0,255
    10b8:	24090096 	li	t1,150
    10bc:	240a0096 	li	t2,150
    10c0:	240b0096 	li	t3,150
    10c4:	240c0001 	li	t4,1
    10c8:	240d000d 	li	t5,13
    10cc:	afad0038 	sw	t5,56(sp)
    10d0:	afac0034 	sw	t4,52(sp)
    10d4:	afab0030 	sw	t3,48(sp)
    10d8:	afaa002c 	sw	t2,44(sp)
    10dc:	afa90028 	sw	t1,40(sp)
    10e0:	afa80024 	sw	t0,36(sp)
    10e4:	afae003c 	sw	t6,60(sp)
    10e8:	afb90020 	sw	t9,32(sp)
    10ec:	afb8001c 	sw	t8,28(sp)
    10f0:	afaf0018 	sw	t7,24(sp)
    10f4:	afa00014 	sw	zero,20(sp)
    10f8:	00c03825 	move	a3,a2
    10fc:	02202025 	move	a0,s1
    1100:	27a50058 	addiu	a1,sp,88
    1104:	0c000000 	jal	0 <EnDekunuts_Init>
    1108:	e7b00060 	swc1	$f16,96(sp)
    110c:	c6120028 	lwc1	$f18,40(s0)
    1110:	3c014120 	lui	at,0x4120
    1114:	44812000 	mtc1	at,$f4
    1118:	240f000c 	li	t7,12
    111c:	24180003 	li	t8,3
    1120:	46049180 	add.s	$f6,$f18,$f4
    1124:	2419000f 	li	t9,15
    1128:	2408ffff 	li	t0,-1
    112c:	2409000a 	li	t1,10
    1130:	e7a6005c 	swc1	$f6,92(sp)
    1134:	afa90020 	sw	t1,32(sp)
    1138:	afa8001c 	sw	t0,28(sp)
    113c:	afb90018 	sw	t9,24(sp)
    1140:	afb80014 	sw	t8,20(sp)
    1144:	afaf0010 	sw	t7,16(sp)
    1148:	afa00024 	sw	zero,36(sp)
    114c:	02202025 	move	a0,s1
    1150:	27a50058 	addiu	a1,sp,88
    1154:	3c064040 	lui	a2,0x4040
    1158:	0c000000 	jal	0 <EnDekunuts_Init>
    115c:	00003825 	move	a3,zero
    1160:	02202025 	move	a0,s1
    1164:	02002825 	move	a1,s0
    1168:	26060024 	addiu	a2,s0,36
    116c:	0c000000 	jal	0 <EnDekunuts_Init>
    1170:	24070030 	li	a3,48
    1174:	8e06011c 	lw	a2,284(s0)
    1178:	02202025 	move	a0,s1
    117c:	26251c24 	addiu	a1,s1,7204
    1180:	10c00003 	beqz	a2,1190 <func_809EA5B0+0x140>
    1184:	00000000 	nop
    1188:	0c000000 	jal	0 <EnDekunuts_Init>
    118c:	24070006 	li	a3,6
    1190:	0c000000 	jal	0 <EnDekunuts_Init>
    1194:	02002025 	move	a0,s0
    1198:	8fbf004c 	lw	ra,76(sp)
    119c:	8fb00044 	lw	s0,68(sp)
    11a0:	8fb10048 	lw	s1,72(sp)
    11a4:	03e00008 	jr	ra
    11a8:	27bd0068 	addiu	sp,sp,104

000011ac <func_809EA70C>:
    11ac:	27bdffd8 	addiu	sp,sp,-40
    11b0:	afbf0024 	sw	ra,36(sp)
    11b4:	afb00020 	sw	s0,32(sp)
    11b8:	afa5002c 	sw	a1,44(sp)
    11bc:	908202d9 	lbu	v0,729(a0)
    11c0:	00808025 	move	s0,a0
    11c4:	260502e0 	addiu	a1,s0,736
    11c8:	304e0002 	andi	t6,v0,0x2
    11cc:	11c00030 	beqz	t6,1290 <func_809EA70C+0xe4>
    11d0:	304ffffd 	andi	t7,v0,0xfffd
    11d4:	a08f02d9 	sb	t7,729(a0)
    11d8:	0c000000 	jal	0 <EnDekunuts_Init>
    11dc:	24060001 	li	a2,1
    11e0:	921800ae 	lbu	t8,174(s0)
    11e4:	24010032 	li	at,50
    11e8:	17010025 	bne	t8,at,1280 <func_809EA70C+0xd4>
    11ec:	00000000 	nop
    11f0:	920200b1 	lbu	v0,177(s0)
    11f4:	24010001 	li	at,1
    11f8:	14400004 	bnez	v0,120c <func_809EA70C+0x60>
    11fc:	00000000 	nop
    1200:	921900b0 	lbu	t9,176(s0)
    1204:	5320002d 	beqzl	t9,12bc <func_809EA70C+0x110>
    1208:	8fbf0024 	lw	ra,36(sp)
    120c:	10410013 	beq	v0,at,125c <func_809EA70C+0xb0>
    1210:	24010002 	li	at,2
    1214:	14410007 	bne	v0,at,1234 <func_809EA70C+0x88>
    1218:	8fa4002c 	lw	a0,44(sp)
    121c:	24080032 	li	t0,50
    1220:	afa80010 	sw	t0,16(sp)
    1224:	02002825 	move	a1,s0
    1228:	26060024 	addiu	a2,s0,36
    122c:	0c000000 	jal	0 <EnDekunuts_Init>
    1230:	24070028 	li	a3,40
    1234:	0c000000 	jal	0 <EnDekunuts_Init>
    1238:	02002025 	move	a0,s0
    123c:	0c000000 	jal	0 <EnDekunuts_Init>
    1240:	02002025 	move	a0,s0
    1244:	1440001c 	bnez	v0,12b8 <func_809EA70C+0x10c>
    1248:	8fa4002c 	lw	a0,44(sp)
    124c:	0c000000 	jal	0 <EnDekunuts_Init>
    1250:	02002825 	move	a1,s0
    1254:	10000019 	b	12bc <func_809EA70C+0x110>
    1258:	8fbf0024 	lw	ra,36(sp)
    125c:	8e0a0190 	lw	t2,400(s0)
    1260:	3c090000 	lui	t1,0x0
    1264:	25290000 	addiu	t1,t1,0
    1268:	512a0014 	beql	t1,t2,12bc <func_809EA70C+0x110>
    126c:	8fbf0024 	lw	ra,36(sp)
    1270:	0c000000 	jal	0 <EnDekunuts_Init>
    1274:	02002025 	move	a0,s0
    1278:	10000010 	b	12bc <func_809EA70C+0x110>
    127c:	8fbf0024 	lw	ra,36(sp)
    1280:	0c000000 	jal	0 <EnDekunuts_Init>
    1284:	02002025 	move	a0,s0
    1288:	1000000c 	b	12bc <func_809EA70C+0x110>
    128c:	8fbf0024 	lw	ra,36(sp)
    1290:	920b00ae 	lbu	t3,174(s0)
    1294:	240100ff 	li	at,255
    1298:	8fac002c 	lw	t4,44(sp)
    129c:	55610007 	bnel	t3,at,12bc <func_809EA70C+0x110>
    12a0:	8fbf0024 	lw	ra,36(sp)
    12a4:	918d1c26 	lbu	t5,7206(t4)
    12a8:	51a00004 	beqzl	t5,12bc <func_809EA70C+0x110>
    12ac:	8fbf0024 	lw	ra,36(sp)
    12b0:	0c000000 	jal	0 <EnDekunuts_Init>
    12b4:	02002025 	move	a0,s0
    12b8:	8fbf0024 	lw	ra,36(sp)
    12bc:	8fb00020 	lw	s0,32(sp)
    12c0:	27bd0028 	addiu	sp,sp,40
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <EnDekunuts_Update>:
    12cc:	27bdffc8 	addiu	sp,sp,-56
    12d0:	afbf0024 	sw	ra,36(sp)
    12d4:	afb10020 	sw	s1,32(sp)
    12d8:	afb0001c 	sw	s0,28(sp)
    12dc:	848e001c 	lh	t6,28(a0)
    12e0:	2401000a 	li	at,10
    12e4:	00808025 	move	s0,a0
    12e8:	11c1004b 	beq	t6,at,1418 <EnDekunuts_Update+0x14c>
    12ec:	00a08825 	move	s1,a1
    12f0:	0c000000 	jal	0 <EnDekunuts_Init>
    12f4:	00000000 	nop
    12f8:	8e190190 	lw	t9,400(s0)
    12fc:	02002025 	move	a0,s0
    1300:	02202825 	move	a1,s1
    1304:	0320f809 	jalr	t9
    1308:	00000000 	nop
    130c:	0c000000 	jal	0 <EnDekunuts_Init>
    1310:	02002025 	move	a0,s0
    1314:	860f0308 	lh	t7,776(s0)
    1318:	8618030a 	lh	t8,778(s0)
    131c:	2408001d 	li	t0,29
    1320:	448f2000 	mtc1	t7,$f4
    1324:	44983000 	mtc1	t8,$f6
    1328:	afa80014 	sw	t0,20(sp)
    132c:	46802120 	cvt.s.w	$f4,$f4
    1330:	02202025 	move	a0,s1
    1334:	02002825 	move	a1,s0
    1338:	3c0641a0 	lui	a2,0x41a0
    133c:	46803220 	cvt.s.w	$f8,$f6
    1340:	44072000 	mfc1	a3,$f4
    1344:	0c000000 	jal	0 <EnDekunuts_Init>
    1348:	e7a80010 	swc1	$f8,16(sp)
    134c:	260502c8 	addiu	a1,s0,712
    1350:	afa50028 	sw	a1,40(sp)
    1354:	0c000000 	jal	0 <EnDekunuts_Init>
    1358:	02002025 	move	a0,s0
    135c:	920902d9 	lbu	t1,729(s0)
    1360:	3c010001 	lui	at,0x1
    1364:	34211e60 	ori	at,at,0x1e60
    1368:	312a0001 	andi	t2,t1,0x1
    136c:	11400004 	beqz	t2,1380 <EnDekunuts_Update+0xb4>
    1370:	02202025 	move	a0,s1
    1374:	02212821 	addu	a1,s1,at
    1378:	0c000000 	jal	0 <EnDekunuts_Init>
    137c:	8fa60028 	lw	a2,40(sp)
    1380:	3c010001 	lui	at,0x1
    1384:	34211e60 	ori	at,at,0x1e60
    1388:	02212821 	addu	a1,s1,at
    138c:	02202025 	move	a0,s1
    1390:	0c000000 	jal	0 <EnDekunuts_Init>
    1394:	8fa60028 	lw	a2,40(sp)
    1398:	8e030190 	lw	v1,400(s0)
    139c:	3c0b0000 	lui	t3,0x0
    13a0:	256b0000 	addiu	t3,t3,0
    13a4:	15630006 	bne	t3,v1,13c0 <EnDekunuts_Update+0xf4>
    13a8:	3c0c0000 	lui	t4,0x0
    13ac:	02002025 	move	a0,s0
    13b0:	0c000000 	jal	0 <EnDekunuts_Init>
    13b4:	8e050164 	lw	a1,356(s0)
    13b8:	10000018 	b	141c <EnDekunuts_Update+0x150>
    13bc:	8fbf0024 	lw	ra,36(sp)
    13c0:	258c0000 	addiu	t4,t4,0
    13c4:	15830012 	bne	t4,v1,1410 <EnDekunuts_Update+0x144>
    13c8:	02002025 	move	a0,s0
    13cc:	3c040600 	lui	a0,0x600
    13d0:	0c000000 	jal	0 <EnDekunuts_Init>
    13d4:	248404d8 	addiu	a0,a0,1240
    13d8:	3c0141a0 	lui	at,0x41a0
    13dc:	44810000 	mtc1	at,$f0
    13e0:	c60a0164 	lwc1	$f10,356(s0)
    13e4:	44829000 	mtc1	v0,$f18
    13e8:	02002025 	move	a0,s0
    13ec:	46005402 	mul.s	$f16,$f10,$f0
    13f0:	46809120 	cvt.s.w	$f4,$f18
    13f4:	46048183 	div.s	$f6,$f16,$f4
    13f8:	46060201 	sub.s	$f8,$f0,$f6
    13fc:	44054000 	mfc1	a1,$f8
    1400:	0c000000 	jal	0 <EnDekunuts_Init>
    1404:	00000000 	nop
    1408:	10000004 	b	141c <EnDekunuts_Update+0x150>
    140c:	8fbf0024 	lw	ra,36(sp)
    1410:	0c000000 	jal	0 <EnDekunuts_Init>
    1414:	3c0541a0 	lui	a1,0x41a0
    1418:	8fbf0024 	lw	ra,36(sp)
    141c:	8fb0001c 	lw	s0,28(sp)
    1420:	8fb10020 	lw	s1,32(sp)
    1424:	03e00008 	jr	ra
    1428:	27bd0038 	addiu	sp,sp,56

0000142c <func_809EA98C>:
    142c:	27bdffe8 	addiu	sp,sp,-24
    1430:	24010007 	li	at,7
    1434:	afbf0014 	sw	ra,20(sp)
    1438:	afa40018 	sw	a0,24(sp)
    143c:	afa60020 	sw	a2,32(sp)
    1440:	14a10043 	bne	a1,at,1550 <func_809EA98C+0x124>
    1444:	afa70024 	sw	a3,36(sp)
    1448:	8fa2002c 	lw	v0,44(sp)
    144c:	3c0e0000 	lui	t6,0x0
    1450:	25ce0000 	addiu	t6,t6,0
    1454:	8c4f0190 	lw	t7,400(v0)
    1458:	3c0140c0 	lui	at,0x40c0
    145c:	55cf003d 	bnel	t6,t7,1554 <func_809EA98C+0x128>
    1460:	00001025 	move	v0,zero
    1464:	44819000 	mtc1	at,$f18
    1468:	c4400164 	lwc1	$f0,356(v0)
    146c:	3c0140e0 	lui	at,0x40e0
    1470:	4612003e 	c.le.s	$f0,$f18
    1474:	00000000 	nop
    1478:	4502000f 	bc1fl	14b8 <func_809EA98C+0x8c>
    147c:	44811000 	mtc1	at,$f2
    1480:	3c013f80 	lui	at,0x3f80
    1484:	44819000 	mtc1	at,$f18
    1488:	3c010000 	lui	at,0x0
    148c:	c4240000 	lwc1	$f4,0(at)
    1490:	3c010000 	lui	at,0x0
    1494:	c4280000 	lwc1	$f8,0(at)
    1498:	46040182 	mul.s	$f6,$f0,$f4
    149c:	00000000 	nop
    14a0:	46080282 	mul.s	$f10,$f0,$f8
    14a4:	46069301 	sub.s	$f12,$f18,$f6
    14a8:	46125380 	add.s	$f14,$f10,$f18
    14ac:	10000025 	b	1544 <func_809EA98C+0x118>
    14b0:	46007406 	mov.s	$f16,$f14
    14b4:	44811000 	mtc1	at,$f2
    14b8:	3c014120 	lui	at,0x4120
    14bc:	4602003e 	c.le.s	$f0,$f2
    14c0:	00000000 	nop
    14c4:	4502000e 	bc1fl	1500 <func_809EA98C+0xd4>
    14c8:	44812000 	mtc1	at,$f4
    14cc:	3c013f00 	lui	at,0x3f00
    14d0:	44812000 	mtc1	at,$f4
    14d4:	3c010000 	lui	at,0x0
    14d8:	c4260000 	lwc1	$f6,0(at)
    14dc:	46120001 	sub.s	$f0,$f0,$f18
    14e0:	3c010000 	lui	at,0x0
    14e4:	c4280000 	lwc1	$f8,0(at)
    14e8:	46002300 	add.s	$f12,$f4,$f0
    14ec:	46080282 	mul.s	$f10,$f0,$f8
    14f0:	460a3381 	sub.s	$f14,$f6,$f10
    14f4:	10000013 	b	1544 <func_809EA98C+0x118>
    14f8:	46007406 	mov.s	$f16,$f14
    14fc:	44812000 	mtc1	at,$f4
    1500:	3c013f80 	lui	at,0x3f80
    1504:	4604003e 	c.le.s	$f0,$f4
    1508:	00000000 	nop
    150c:	4500000b 	bc1f	153c <func_809EA98C+0x110>
    1510:	00000000 	nop
    1514:	44817000 	mtc1	at,$f14
    1518:	46020201 	sub.s	$f8,$f0,$f2
    151c:	3c010000 	lui	at,0x0
    1520:	c4260000 	lwc1	$f6,0(at)
    1524:	3c013fc0 	lui	at,0x3fc0
    1528:	44812000 	mtc1	at,$f4
    152c:	46064282 	mul.s	$f10,$f8,$f6
    1530:	46007406 	mov.s	$f16,$f14
    1534:	10000003 	b	1544 <func_809EA98C+0x118>
    1538:	460a2301 	sub.s	$f12,$f4,$f10
    153c:	10000005 	b	1554 <func_809EA98C+0x128>
    1540:	00001025 	move	v0,zero
    1544:	44068000 	mfc1	a2,$f16
    1548:	0c000000 	jal	0 <EnDekunuts_Init>
    154c:	24070001 	li	a3,1
    1550:	00001025 	move	v0,zero
    1554:	8fbf0014 	lw	ra,20(sp)
    1558:	27bd0018 	addiu	sp,sp,24
    155c:	03e00008 	jr	ra
    1560:	00000000 	nop

00001564 <EnDekunuts_Draw>:
    1564:	27bdffe0 	addiu	sp,sp,-32
    1568:	afbf001c 	sw	ra,28(sp)
    156c:	afa40020 	sw	a0,32(sp)
    1570:	afa50024 	sw	a1,36(sp)
    1574:	848f001c 	lh	t7,28(a0)
    1578:	2401000a 	li	at,10
    157c:	8fa40024 	lw	a0,36(sp)
    1580:	15e10007 	bne	t7,at,15a0 <EnDekunuts_Draw+0x3c>
    1584:	8fb80020 	lw	t8,32(sp)
    1588:	00a02025 	move	a0,a1
    158c:	3c050600 	lui	a1,0x600
    1590:	0c000000 	jal	0 <EnDekunuts_Init>
    1594:	24a52298 	addiu	a1,a1,8856
    1598:	10000009 	b	15c0 <EnDekunuts_Draw+0x5c>
    159c:	8fbf001c 	lw	ra,28(sp)
    15a0:	8f050150 	lw	a1,336(t8)
    15a4:	8f06016c 	lw	a2,364(t8)
    15a8:	3c070000 	lui	a3,0x0
    15ac:	24e70000 	addiu	a3,a3,0
    15b0:	afb80014 	sw	t8,20(sp)
    15b4:	0c000000 	jal	0 <EnDekunuts_Init>
    15b8:	afa00010 	sw	zero,16(sp)
    15bc:	8fbf001c 	lw	ra,28(sp)
    15c0:	27bd0020 	addiu	sp,sp,32
    15c4:	03e00008 	jr	ra
    15c8:	00000000 	nop
    15cc:	00000000 	nop
