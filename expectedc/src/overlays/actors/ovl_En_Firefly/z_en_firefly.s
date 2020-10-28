
build/src/overlays/actors/ovl_En_Firefly/z_en_firefly.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A13070>:
       0:	848e001c 	lh	t6,28(a0)
       4:	8c980330 	lw	t8,816(a0)
       8:	24190012 	li	t9,18
       c:	25cf0002 	addiu	t7,t6,2
      10:	a48f001c 	sh	t7,28(a0)
      14:	a3000004 	sb	zero,4(t8)
      18:	a08001b8 	sb	zero,440(a0)
      1c:	a08001b9 	sb	zero,441(a0)
      20:	03e00008 	jr	ra
      24:	a0990117 	sb	t9,279(a0)

00000028 <func_80A13098>:
      28:	8482001c 	lh	v0,28(a0)
      2c:	24010004 	li	at,4
      30:	14410003 	bne	v0,at,40 <func_80A13098+0x18>
      34:	244efffe 	addiu	t6,v0,-2
      38:	10000002 	b	44 <func_80A13098+0x1c>
      3c:	a480001c 	sh	zero,28(a0)
      40:	a48e001c 	sh	t6,28(a0)
      44:	8c8f0330 	lw	t7,816(a0)
      48:	24020001 	li	v0,1
      4c:	24180011 	li	t8,17
      50:	a1e20004 	sb	v0,4(t7)
      54:	a08201b8 	sb	v0,440(a0)
      58:	a08201b9 	sb	v0,441(a0)
      5c:	03e00008 	jr	ra
      60:	a0980117 	sb	t8,279(a0)

00000064 <EnFirefly_Init>:
      64:	27bdffc8 	addiu	sp,sp,-56
      68:	afa5003c 	sw	a1,60(sp)
      6c:	afbf002c 	sw	ra,44(sp)
      70:	afb00028 	sw	s0,40(sp)
      74:	3c050000 	lui	a1,0x0
      78:	00808025 	move	s0,a0
      7c:	0c000000 	jal	0 <func_80A13070>
      80:	24a50000 	addiu	a1,a1,0
      84:	3c060000 	lui	a2,0x0
      88:	24c60000 	addiu	a2,a2,0
      8c:	260400b4 	addiu	a0,s0,180
      90:	24050000 	li	a1,0
      94:	0c000000 	jal	0 <func_80A13070>
      98:	3c0741c8 	lui	a3,0x41c8
      9c:	3c060600 	lui	a2,0x600
      a0:	3c070600 	lui	a3,0x600
      a4:	260e01be 	addiu	t6,s0,446
      a8:	260f0266 	addiu	t7,s0,614
      ac:	2418001c 	li	t8,28
      b0:	afb80018 	sw	t8,24(sp)
      b4:	afaf0014 	sw	t7,20(sp)
      b8:	afae0010 	sw	t6,16(sp)
      bc:	24e7017c 	addiu	a3,a3,380
      c0:	24c618b8 	addiu	a2,a2,6328
      c4:	8fa4003c 	lw	a0,60(sp)
      c8:	0c000000 	jal	0 <func_80A13070>
      cc:	26050170 	addiu	a1,s0,368
      d0:	26050314 	addiu	a1,s0,788
      d4:	afa50030 	sw	a1,48(sp)
      d8:	0c000000 	jal	0 <func_80A13070>
      dc:	8fa4003c 	lw	a0,60(sp)
      e0:	3c070000 	lui	a3,0x0
      e4:	26190334 	addiu	t9,s0,820
      e8:	8fa50030 	lw	a1,48(sp)
      ec:	afb90010 	sw	t9,16(sp)
      f0:	24e70000 	addiu	a3,a3,0
      f4:	8fa4003c 	lw	a0,60(sp)
      f8:	0c000000 	jal	0 <func_80A13070>
      fc:	02003025 	move	a2,s0
     100:	3c050000 	lui	a1,0x0
     104:	3c060000 	lui	a2,0x0
     108:	24c60000 	addiu	a2,a2,0
     10c:	24a50000 	addiu	a1,a1,0
     110:	0c000000 	jal	0 <func_80A13070>
     114:	26040098 	addiu	a0,s0,152
     118:	8602001c 	lh	v0,28(s0)
     11c:	3c0b0000 	lui	t3,0x0
     120:	256b0000 	addiu	t3,t3,0
     124:	30488000 	andi	t0,v0,0x8000
     128:	11000009 	beqz	t0,150 <EnFirefly_Init+0xec>
     12c:	240e0001 	li	t6,1
     130:	860c001c 	lh	t4,28(s0)
     134:	8e090004 	lw	t1,4(s0)
     138:	ae0b0134 	sw	t3,308(s0)
     13c:	318d7fff 	andi	t5,t4,0x7fff
     140:	a60d001c 	sh	t5,28(s0)
     144:	352a0080 	ori	t2,t1,0x80
     148:	ae0a0004 	sw	t2,4(s0)
     14c:	8602001c 	lh	v0,28(s0)
     150:	28410002 	slti	at,v0,2
     154:	10200003 	beqz	at,164 <EnFirefly_Init+0x100>
     158:	3c180000 	lui	t8,0x0
     15c:	10000002 	b	168 <EnFirefly_Init+0x104>
     160:	a20e01b9 	sb	t6,441(s0)
     164:	a20001b9 	sb	zero,441(s0)
     168:	920f01b9 	lbu	t7,441(s0)
     16c:	27180000 	addiu	t8,t8,0
     170:	24040014 	li	a0,20
     174:	11e0000d 	beqz	t7,1ac <EnFirefly_Init+0x148>
     178:	2405003c 	li	a1,60
     17c:	0c000000 	jal	0 <func_80A13070>
     180:	ae1801b4 	sw	t8,436(s0)
     184:	c604000c 	lwc1	$f4,12(s0)
     188:	24191554 	li	t9,5460
     18c:	24080001 	li	t0,1
     190:	24090011 	li	t1,17
     194:	a60201ba 	sh	v0,442(s0)
     198:	a61900b4 	sh	t9,180(s0)
     19c:	a20801b8 	sb	t0,440(s0)
     1a0:	a2090117 	sb	t1,279(s0)
     1a4:	10000023 	b	234 <EnFirefly_Init+0x1d0>
     1a8:	e6040310 	swc1	$f4,784(s0)
     1ac:	860a001c 	lh	t2,28(s0)
     1b0:	24010003 	li	at,3
     1b4:	3c0c0000 	lui	t4,0x0
     1b8:	15410005 	bne	t2,at,1d0 <EnFirefly_Init+0x16c>
     1bc:	258c0000 	addiu	t4,t4,0
     1c0:	3c0b0000 	lui	t3,0x0
     1c4:	256b0000 	addiu	t3,t3,0
     1c8:	10000002 	b	1d4 <EnFirefly_Init+0x170>
     1cc:	ae0b01b4 	sw	t3,436(s0)
     1d0:	ae0c01b4 	sw	t4,436(s0)
     1d4:	860d001c 	lh	t5,28(s0)
     1d8:	24020004 	li	v0,4
     1dc:	3c0142c8 	lui	at,0x42c8
     1e0:	144d0007 	bne	v0,t5,200 <EnFirefly_Init+0x19c>
     1e4:	240a0002 	li	t2,2
     1e8:	8e0f0330 	lw	t7,816(s0)
     1ec:	240e0002 	li	t6,2
     1f0:	24180056 	li	t8,86
     1f4:	a1ee0004 	sb	t6,4(t7)
     1f8:	10000005 	b	210 <EnFirefly_Init+0x1ac>
     1fc:	a2180117 	sb	t8,279(s0)
     200:	8e190330 	lw	t9,816(s0)
     204:	24080012 	li	t0,18
     208:	a3200004 	sb	zero,4(t9)
     20c:	a2080117 	sb	t0,279(s0)
     210:	c606000c 	lwc1	$f6,12(s0)
     214:	44814000 	mtc1	at,$f8
     218:	8609001c 	lh	t1,28(s0)
     21c:	46083280 	add.s	$f10,$f6,$f8
     220:	14490003 	bne	v0,t1,230 <EnFirefly_Init+0x1cc>
     224:	e60a0310 	swc1	$f10,784(s0)
     228:	10000002 	b	234 <EnFirefly_Init+0x1d0>
     22c:	a20a01b8 	sb	t2,440(s0)
     230:	a20001b8 	sb	zero,440(s0)
     234:	3c0b0000 	lui	t3,0x0
     238:	8d6b0000 	lw	t3,0(t3)
     23c:	8e0d0330 	lw	t5,816(s0)
     240:	856c0020 	lh	t4,32(t3)
     244:	a5ac0036 	sh	t4,54(t5)
     248:	8fbf002c 	lw	ra,44(sp)
     24c:	8fb00028 	lw	s0,40(sp)
     250:	27bd0038 	addiu	sp,sp,56
     254:	03e00008 	jr	ra
     258:	00000000 	nop

0000025c <EnFirefly_Destroy>:
     25c:	27bdffe8 	addiu	sp,sp,-24
     260:	00803025 	move	a2,a0
     264:	afbf0014 	sw	ra,20(sp)
     268:	00a02025 	move	a0,a1
     26c:	0c000000 	jal	0 <func_80A13070>
     270:	24c50314 	addiu	a1,a2,788
     274:	8fbf0014 	lw	ra,20(sp)
     278:	27bd0018 	addiu	sp,sp,24
     27c:	03e00008 	jr	ra
     280:	00000000 	nop

00000284 <func_80A132F4>:
     284:	27bdffe0 	addiu	sp,sp,-32
     288:	afb00018 	sw	s0,24(sp)
     28c:	00808025 	move	s0,a0
     290:	afbf001c 	sw	ra,28(sp)
     294:	24040046 	li	a0,70
     298:	0c000000 	jal	0 <func_80A13070>
     29c:	24050064 	li	a1,100
     2a0:	0c000000 	jal	0 <func_80A13070>
     2a4:	a60201ba 	sh	v0,442(s0)
     2a8:	3c013fc0 	lui	at,0x3fc0
     2ac:	44811000 	mtc1	at,$f2
     2b0:	02002025 	move	a0,s0
     2b4:	26050008 	addiu	a1,s0,8
     2b8:	46020102 	mul.s	$f4,$f0,$f2
     2bc:	46022180 	add.s	$f6,$f4,$f2
     2c0:	0c000000 	jal	0 <func_80A13070>
     2c4:	e6060068 	swc1	$f6,104(s0)
     2c8:	00022c00 	sll	a1,v0,0x10
     2cc:	00052c03 	sra	a1,a1,0x10
     2d0:	260400b6 	addiu	a0,s0,182
     2d4:	0c000000 	jal	0 <func_80A13070>
     2d8:	24060300 	li	a2,768
     2dc:	c6080310 	lwc1	$f8,784(s0)
     2e0:	c60a0028 	lwc1	$f10,40(s0)
     2e4:	3c013f80 	lui	at,0x3f80
     2e8:	44818000 	mtc1	at,$f16
     2ec:	460a403c 	c.lt.s	$f8,$f10
     2f0:	3c0f0000 	lui	t7,0x0
     2f4:	2402f400 	li	v0,-3072
     2f8:	25ef0000 	addiu	t7,t7,0
     2fc:	45000003 	bc1f	30c <func_80A132F4+0x88>
     300:	00000000 	nop
     304:	10000001 	b	30c <func_80A132F4+0x88>
     308:	24020c00 	li	v0,3072
     30c:	244e1554 	addiu	t6,v0,5460
     310:	a60e01bc 	sh	t6,444(s0)
     314:	e610018c 	swc1	$f16,396(s0)
     318:	ae0f01b4 	sw	t7,436(s0)
     31c:	8fbf001c 	lw	ra,28(sp)
     320:	8fb00018 	lw	s0,24(sp)
     324:	27bd0020 	addiu	sp,sp,32
     328:	03e00008 	jr	ra
     32c:	00000000 	nop

00000330 <func_80A133A0>:
     330:	27bdffd0 	addiu	sp,sp,-48
     334:	44800000 	mtc1	zero,$f0
     338:	afbf002c 	sw	ra,44(sp)
     33c:	afb00028 	sw	s0,40(sp)
     340:	240e0028 	li	t6,40
     344:	3c01c040 	lui	at,0xc040
     348:	44812000 	mtc1	at,$f4
     34c:	a48e01ba 	sh	t6,442(a0)
     350:	e4800060 	swc1	$f0,96(a0)
     354:	00808025 	move	s0,a0
     358:	3c050600 	lui	a1,0x600
     35c:	240f0001 	li	t7,1
     360:	44070000 	mfc1	a3,$f0
     364:	afaf0014 	sw	t7,20(sp)
     368:	24a5017c 	addiu	a1,a1,380
     36c:	24840170 	addiu	a0,a0,368
     370:	3c063f00 	lui	a2,0x3f00
     374:	e7a00010 	swc1	$f0,16(sp)
     378:	0c000000 	jal	0 <func_80A13070>
     37c:	e7a40018 	swc1	$f4,24(sp)
     380:	02002025 	move	a0,s0
     384:	0c000000 	jal	0 <func_80A13070>
     388:	24053842 	li	a1,14402
     38c:	8e180004 	lw	t8,4(s0)
     390:	24080028 	li	t0,40
     394:	02002025 	move	a0,s0
     398:	37190010 	ori	t9,t8,0x10
     39c:	ae190004 	sw	t9,4(s0)
     3a0:	afa80010 	sw	t0,16(sp)
     3a4:	24054000 	li	a1,16384
     3a8:	240600ff 	li	a2,255
     3ac:	0c000000 	jal	0 <func_80A13070>
     3b0:	00003825 	move	a3,zero
     3b4:	3c090000 	lui	t1,0x0
     3b8:	25290000 	addiu	t1,t1,0
     3bc:	ae0901b4 	sw	t1,436(s0)
     3c0:	8fbf002c 	lw	ra,44(sp)
     3c4:	8fb00028 	lw	s0,40(sp)
     3c8:	27bd0030 	addiu	sp,sp,48
     3cc:	03e00008 	jr	ra
     3d0:	00000000 	nop

000003d4 <func_80A13444>:
     3d4:	44802000 	mtc1	zero,$f4
     3d8:	3c0f0000 	lui	t7,0x0
     3dc:	240e000f 	li	t6,15
     3e0:	25ef0000 	addiu	t7,t7,0
     3e4:	a48e01ba 	sh	t6,442(a0)
     3e8:	ac8f01b4 	sw	t7,436(a0)
     3ec:	03e00008 	jr	ra
     3f0:	e4840068 	swc1	$f4,104(a0)

000003f4 <func_80A13464>:
     3f4:	3c013f80 	lui	at,0x3f80
     3f8:	44812000 	mtc1	at,$f4
     3fc:	3c014020 	lui	at,0x4020
     400:	44813000 	mtc1	at,$f6
     404:	3c180000 	lui	t8,0x0
     408:	240e7000 	li	t6,28672
     40c:	240f0012 	li	t7,18
     410:	27180000 	addiu	t8,t8,0
     414:	a48e0030 	sh	t6,48(a0)
     418:	a48f01ba 	sh	t7,442(a0)
     41c:	ac9801b4 	sw	t8,436(a0)
     420:	e484018c 	swc1	$f4,396(a0)
     424:	03e00008 	jr	ra
     428:	e4860068 	swc1	$f6,104(a0)

0000042c <func_80A1349C>:
     42c:	27bdffe8 	addiu	sp,sp,-24
     430:	afbf0014 	sw	ra,20(sp)
     434:	00803025 	move	a2,a0
     438:	afa60018 	sw	a2,24(sp)
     43c:	24040046 	li	a0,70
     440:	0c000000 	jal	0 <func_80A13070>
     444:	24050064 	li	a1,100
     448:	8fa60018 	lw	a2,24(sp)
     44c:	44803000 	mtc1	zero,$f6
     450:	3c013f80 	lui	at,0x3f80
     454:	c4c80094 	lwc1	$f8,148(a2)
     458:	44812000 	mtc1	at,$f4
     45c:	3c0f0000 	lui	t7,0x0
     460:	4608303c 	c.lt.s	$f6,$f8
     464:	a4c201ba 	sh	v0,442(a2)
     468:	24020c00 	li	v0,3072
     46c:	25ef0000 	addiu	t7,t7,0
     470:	45000003 	bc1f	480 <func_80A1349C+0x54>
     474:	e4c4018c 	swc1	$f4,396(a2)
     478:	10000001 	b	480 <func_80A1349C+0x54>
     47c:	2402f400 	li	v0,-3072
     480:	244e1554 	addiu	t6,v0,5460
     484:	a4ce01bc 	sh	t6,444(a2)
     488:	accf01b4 	sw	t7,436(a2)
     48c:	8fbf0014 	lw	ra,20(sp)
     490:	27bd0018 	addiu	sp,sp,24
     494:	03e00008 	jr	ra
     498:	00000000 	nop

0000049c <func_80A1350C>:
     49c:	3c013f80 	lui	at,0x3f80
     4a0:	44812000 	mtc1	at,$f4
     4a4:	3c180000 	lui	t8,0x0
     4a8:	240e0096 	li	t6,150
     4ac:	240f0954 	li	t7,2388
     4b0:	27180000 	addiu	t8,t8,0
     4b4:	a48e01ba 	sh	t6,442(a0)
     4b8:	a48f01bc 	sh	t7,444(a0)
     4bc:	ac9801b4 	sw	t8,436(a0)
     4c0:	03e00008 	jr	ra
     4c4:	e484018c 	swc1	$f4,396(a0)

000004c8 <func_80A13538>:
     4c8:	27bdffe0 	addiu	sp,sp,-32
     4cc:	afbf001c 	sw	ra,28(sp)
     4d0:	240e0050 	li	t6,80
     4d4:	a48e01ba 	sh	t6,442(a0)
     4d8:	240f0050 	li	t7,80
     4dc:	afaf0010 	sw	t7,16(sp)
     4e0:	afa40020 	sw	a0,32(sp)
     4e4:	00002825 	move	a1,zero
     4e8:	240600ff 	li	a2,255
     4ec:	0c000000 	jal	0 <func_80A13070>
     4f0:	00003825 	move	a3,zero
     4f4:	8fa40020 	lw	a0,32(sp)
     4f8:	3c014040 	lui	at,0x4040
     4fc:	44802000 	mtc1	zero,$f4
     500:	44813000 	mtc1	at,$f6
     504:	2405389e 	li	a1,14494
     508:	a08001b8 	sb	zero,440(a0)
     50c:	e4840060 	swc1	$f4,96(a0)
     510:	0c000000 	jal	0 <func_80A13070>
     514:	e486018c 	swc1	$f6,396(a0)
     518:	8fa40020 	lw	a0,32(sp)
     51c:	3c180000 	lui	t8,0x0
     520:	27180000 	addiu	t8,t8,0
     524:	ac9801b4 	sw	t8,436(a0)
     528:	8fbf001c 	lw	ra,28(sp)
     52c:	27bd0020 	addiu	sp,sp,32
     530:	03e00008 	jr	ra
     534:	00000000 	nop

00000538 <func_80A135A8>:
     538:	27bdff78 	addiu	sp,sp,-136
     53c:	afbf006c 	sw	ra,108(sp)
     540:	afb40068 	sw	s4,104(sp)
     544:	afb30064 	sw	s3,100(sp)
     548:	afb20060 	sw	s2,96(sp)
     54c:	afb1005c 	sw	s1,92(sp)
     550:	afb00058 	sw	s0,88(sp)
     554:	f7ba0050 	sdc1	$f26,80(sp)
     558:	f7b80048 	sdc1	$f24,72(sp)
     55c:	f7b60040 	sdc1	$f22,64(sp)
     560:	f7b40038 	sdc1	$f20,56(sp)
     564:	8c8e0004 	lw	t6,4(a0)
     568:	44802000 	mtc1	zero,$f4
     56c:	00a0a025 	move	s4,a1
     570:	35cf0010 	ori	t7,t6,0x10
     574:	ac8f0004 	sw	t7,4(a0)
     578:	a08001b8 	sb	zero,440(a0)
     57c:	241800ff 	li	t8,255
     580:	e4840068 	swc1	$f4,104(a0)
     584:	00808825 	move	s1,a0
     588:	afb80010 	sw	t8,16(sp)
     58c:	00002825 	move	a1,zero
     590:	240600ff 	li	a2,255
     594:	0c000000 	jal	0 <func_80A13070>
     598:	00003825 	move	a3,zero
     59c:	02202025 	move	a0,s1
     5a0:	0c000000 	jal	0 <func_80A13070>
     5a4:	24053842 	li	a1,14402
     5a8:	3c010000 	lui	at,0x0
     5ac:	c43a0000 	lwc1	$f26,0(at)
     5b0:	3c010000 	lui	at,0x0
     5b4:	c4380000 	lwc1	$f24,0(at)
     5b8:	3c01c0e0 	lui	at,0xc0e0
     5bc:	4481b000 	mtc1	at,$f22
     5c0:	3c0140e0 	lui	at,0x40e0
     5c4:	4481a000 	mtc1	at,$f20
     5c8:	00008025 	move	s0,zero
     5cc:	24130008 	li	s3,8
     5d0:	27b20078 	addiu	s2,sp,120
     5d4:	32190001 	andi	t9,s0,0x1
     5d8:	53200004 	beqzl	t9,5ec <func_80A135A8+0xb4>
     5dc:	4600b006 	mov.s	$f0,$f22
     5e0:	10000002 	b	5ec <func_80A135A8+0xb4>
     5e4:	4600a006 	mov.s	$f0,$f20
     5e8:	4600b006 	mov.s	$f0,$f22
     5ec:	c6260024 	lwc1	$f6,36(s1)
     5f0:	32080002 	andi	t0,s0,0x2
     5f4:	46060200 	add.s	$f8,$f0,$f6
     5f8:	11000003 	beqz	t0,608 <func_80A135A8+0xd0>
     5fc:	e7a80078 	swc1	$f8,120(sp)
     600:	10000002 	b	60c <func_80A135A8+0xd4>
     604:	4600a006 	mov.s	$f0,$f20
     608:	4600b006 	mov.s	$f0,$f22
     60c:	c62a0028 	lwc1	$f10,40(s1)
     610:	32090004 	andi	t1,s0,0x4
     614:	460a0400 	add.s	$f16,$f0,$f10
     618:	11200003 	beqz	t1,628 <func_80A135A8+0xf0>
     61c:	e7b0007c 	swc1	$f16,124(sp)
     620:	10000002 	b	62c <func_80A135A8+0xf4>
     624:	4600a006 	mov.s	$f0,$f20
     628:	4600b006 	mov.s	$f0,$f22
     62c:	c632002c 	lwc1	$f18,44(s1)
     630:	46120100 	add.s	$f4,$f0,$f18
     634:	0c000000 	jal	0 <func_80A13070>
     638:	e7a40080 	swc1	$f4,128(sp)
     63c:	46180182 	mul.s	$f6,$f0,$f24
     640:	240a0096 	li	t2,150
     644:	240b0096 	li	t3,150
     648:	240c00fa 	li	t4,250
     64c:	240d00eb 	li	t5,235
     650:	240e00f5 	li	t6,245
     654:	240f00ff 	li	t7,255
     658:	461a3200 	add.s	$f8,$f6,$f26
     65c:	afaf0024 	sw	t7,36(sp)
     660:	afae0020 	sw	t6,32(sp)
     664:	afad001c 	sw	t5,28(sp)
     668:	e7a80028 	swc1	$f8,40(sp)
     66c:	afac0018 	sw	t4,24(sp)
     670:	afab0014 	sw	t3,20(sp)
     674:	afaa0010 	sw	t2,16(sp)
     678:	02802025 	move	a0,s4
     67c:	02202825 	move	a1,s1
     680:	02403025 	move	a2,s2
     684:	0c000000 	jal	0 <func_80A13070>
     688:	24070096 	li	a3,150
     68c:	26100001 	addiu	s0,s0,1
     690:	5613ffd1 	bnel	s0,s3,5d8 <func_80A135A8+0xa0>
     694:	32190001 	andi	t9,s0,0x1
     698:	3c180000 	lui	t8,0x0
     69c:	27180000 	addiu	t8,t8,0
     6a0:	ae3801b4 	sw	t8,436(s1)
     6a4:	8fbf006c 	lw	ra,108(sp)
     6a8:	8fb40068 	lw	s4,104(sp)
     6ac:	8fb30064 	lw	s3,100(sp)
     6b0:	8fb20060 	lw	s2,96(sp)
     6b4:	8fb1005c 	lw	s1,92(sp)
     6b8:	8fb00058 	lw	s0,88(sp)
     6bc:	d7ba0050 	ldc1	$f26,80(sp)
     6c0:	d7b80048 	ldc1	$f24,72(sp)
     6c4:	d7b60040 	ldc1	$f22,64(sp)
     6c8:	d7b40038 	ldc1	$f20,56(sp)
     6cc:	03e00008 	jr	ra
     6d0:	27bd0088 	addiu	sp,sp,136

000006d4 <func_80A13744>:
     6d4:	44802000 	mtc1	zero,$f4
     6d8:	3c0f0000 	lui	t7,0x0
     6dc:	240e0001 	li	t6,1
     6e0:	25ef0000 	addiu	t7,t7,0
     6e4:	a48e01ba 	sh	t6,442(a0)
     6e8:	ac8f01b4 	sw	t7,436(a0)
     6ec:	03e00008 	jr	ra
     6f0:	e4840068 	swc1	$f4,104(a0)

000006f4 <func_80A13764>:
     6f4:	3c014040 	lui	at,0x4040
     6f8:	44810000 	mtc1	at,$f0
     6fc:	848f008a 	lh	t7,138(a0)
     700:	3c190000 	lui	t9,0x0
     704:	240e1554 	li	t6,5460
     708:	24180032 	li	t8,50
     70c:	27390000 	addiu	t9,t9,0
     710:	a48e00b4 	sh	t6,180(a0)
     714:	a49801ba 	sh	t8,442(a0)
     718:	ac9901b4 	sw	t9,436(a0)
     71c:	e480018c 	swc1	$f0,396(a0)
     720:	a48f00b6 	sh	t7,182(a0)
     724:	03e00008 	jr	ra
     728:	e4800068 	swc1	$f0,104(a0)

0000072c <func_80A1379C>:
     72c:	27bdffe0 	addiu	sp,sp,-32
     730:	afbf001c 	sw	ra,28(sp)
     734:	afb10018 	sw	s1,24(sp)
     738:	afb00014 	sw	s0,20(sp)
     73c:	848e001c 	lh	t6,28(a0)
     740:	24010003 	li	at,3
     744:	00808025 	move	s0,a0
     748:	11c10003 	beq	t6,at,758 <func_80A1379C+0x2c>
     74c:	8ca61c44 	lw	a2,7236(a1)
     750:	10000038 	b	834 <func_80A1379C+0x108>
     754:	00001025 	move	v0,zero
     758:	26110008 	addiu	s1,s0,8
     75c:	02202825 	move	a1,s1
     760:	0c000000 	jal	0 <func_80A13070>
     764:	00c02025 	move	a0,a2
     768:	3c014396 	lui	at,0x4396
     76c:	44812000 	mtc1	at,$f4
     770:	02002025 	move	a0,s0
     774:	00001025 	move	v0,zero
     778:	4600203c 	c.lt.s	$f4,$f0
     77c:	00000000 	nop
     780:	4500002c 	bc1f	834 <func_80A1379C+0x108>
     784:	00000000 	nop
     788:	0c000000 	jal	0 <func_80A13070>
     78c:	02202825 	move	a1,s1
     790:	3c0140a0 	lui	at,0x40a0
     794:	44813000 	mtc1	at,$f6
     798:	3c010000 	lui	at,0x0
     79c:	02002025 	move	a0,s0
     7a0:	4606003c 	c.lt.s	$f0,$f6
     7a4:	00000000 	nop
     7a8:	45000005 	bc1f	7c0 <func_80A1379C+0x94>
     7ac:	00000000 	nop
     7b0:	0c000000 	jal	0 <func_80A13070>
     7b4:	02002025 	move	a0,s0
     7b8:	1000001e 	b	834 <func_80A1379C+0x108>
     7bc:	24020001 	li	v0,1
     7c0:	c4280000 	lwc1	$f8,0(at)
     7c4:	3c013f80 	lui	at,0x3f80
     7c8:	44815000 	mtc1	at,$f10
     7cc:	46080082 	mul.s	$f2,$f0,$f8
     7d0:	460a103c 	c.lt.s	$f2,$f10
     7d4:	00000000 	nop
     7d8:	45000004 	bc1f	7ec <func_80A1379C+0xc0>
     7dc:	00000000 	nop
     7e0:	c6100068 	lwc1	$f16,104(s0)
     7e4:	46028482 	mul.s	$f18,$f16,$f2
     7e8:	e6120068 	swc1	$f18,104(s0)
     7ec:	0c000000 	jal	0 <func_80A13070>
     7f0:	02202825 	move	a1,s1
     7f4:	00022c00 	sll	a1,v0,0x10
     7f8:	00052c03 	sra	a1,a1,0x10
     7fc:	260400b6 	addiu	a0,s0,182
     800:	0c000000 	jal	0 <func_80A13070>
     804:	24060300 	li	a2,768
     808:	02002025 	move	a0,s0
     80c:	0c000000 	jal	0 <func_80A13070>
     810:	02202825 	move	a1,s1
     814:	24451554 	addiu	a1,v0,5460
     818:	00052c00 	sll	a1,a1,0x10
     81c:	00052c03 	sra	a1,a1,0x10
     820:	260400b4 	addiu	a0,s0,180
     824:	0c000000 	jal	0 <func_80A13070>
     828:	24060100 	li	a2,256
     82c:	10000001 	b	834 <func_80A1379C+0x108>
     830:	24020001 	li	v0,1
     834:	8fbf001c 	lw	ra,28(sp)
     838:	8fb00014 	lw	s0,20(sp)
     83c:	8fb10018 	lw	s1,24(sp)
     840:	03e00008 	jr	ra
     844:	27bd0020 	addiu	sp,sp,32

00000848 <func_80A138B8>:
     848:	27bdffb0 	addiu	sp,sp,-80
     84c:	afbf002c 	sw	ra,44(sp)
     850:	afb30028 	sw	s3,40(sp)
     854:	afb20024 	sw	s2,36(sp)
     858:	afb10020 	sw	s1,32(sp)
     85c:	afb0001c 	sw	s0,28(sp)
     860:	f7b40010 	sdc1	$f20,16(sp)
     864:	8cb01c64 	lw	s0,7268(a1)
     868:	3c010000 	lui	at,0x0
     86c:	00809825 	move	s3,a0
     870:	00008825 	move	s1,zero
     874:	12000014 	beqz	s0,8c8 <func_80A138B8+0x80>
     878:	c4340000 	lwc1	$f20,0(at)
     87c:	2412005e 	li	s2,94
     880:	860e0000 	lh	t6,0(s0)
     884:	564e000e 	bnel	s2,t6,8c0 <func_80A138B8+0x78>
     888:	8e100124 	lw	s0,292(s0)
     88c:	860f01e4 	lh	t7,484(s0)
     890:	02602025 	move	a0,s3
     894:	51e0000a 	beqzl	t7,8c0 <func_80A138B8+0x78>
     898:	8e100124 	lw	s0,292(s0)
     89c:	0c000000 	jal	0 <func_80A13070>
     8a0:	02002825 	move	a1,s0
     8a4:	4614003c 	c.lt.s	$f0,$f20
     8a8:	00000000 	nop
     8ac:	45020004 	bc1fl	8c0 <func_80A138B8+0x78>
     8b0:	8e100124 	lw	s0,292(s0)
     8b4:	46000506 	mov.s	$f20,$f0
     8b8:	02008825 	move	s1,s0
     8bc:	8e100124 	lw	s0,292(s0)
     8c0:	5600fff0 	bnezl	s0,884 <func_80A138B8+0x3c>
     8c4:	860e0000 	lh	t6,0(s0)
     8c8:	1220002b 	beqz	s1,978 <func_80A138B8+0x130>
     8cc:	00001025 	move	v0,zero
     8d0:	c6240024 	lwc1	$f4,36(s1)
     8d4:	3c014170 	lui	at,0x4170
     8d8:	4481a000 	mtc1	at,$f20
     8dc:	3c014250 	lui	at,0x4250
     8e0:	e7a40034 	swc1	$f4,52(sp)
     8e4:	c6260028 	lwc1	$f6,40(s1)
     8e8:	44814000 	mtc1	at,$f8
     8ec:	27b00034 	addiu	s0,sp,52
     8f0:	02002825 	move	a1,s0
     8f4:	46083280 	add.s	$f10,$f6,$f8
     8f8:	02602025 	move	a0,s3
     8fc:	46145400 	add.s	$f16,$f10,$f20
     900:	e7b00038 	swc1	$f16,56(sp)
     904:	c632002c 	lwc1	$f18,44(s1)
     908:	0c000000 	jal	0 <func_80A13070>
     90c:	e7b2003c 	swc1	$f18,60(sp)
     910:	4614003c 	c.lt.s	$f0,$f20
     914:	02602025 	move	a0,s3
     918:	45000005 	bc1f	930 <func_80A138B8+0xe8>
     91c:	00000000 	nop
     920:	0c000000 	jal	0 <func_80A13070>
     924:	02602025 	move	a0,s3
     928:	10000013 	b	978 <func_80A138B8+0x130>
     92c:	24020001 	li	v0,1
     930:	0c000000 	jal	0 <func_80A13070>
     934:	02202825 	move	a1,s1
     938:	00022c00 	sll	a1,v0,0x10
     93c:	00052c03 	sra	a1,a1,0x10
     940:	266400b6 	addiu	a0,s3,182
     944:	0c000000 	jal	0 <func_80A13070>
     948:	24060300 	li	a2,768
     94c:	02602025 	move	a0,s3
     950:	0c000000 	jal	0 <func_80A13070>
     954:	02002825 	move	a1,s0
     958:	24451554 	addiu	a1,v0,5460
     95c:	00052c00 	sll	a1,a1,0x10
     960:	00052c03 	sra	a1,a1,0x10
     964:	266400b4 	addiu	a0,s3,180
     968:	0c000000 	jal	0 <func_80A13070>
     96c:	24060100 	li	a2,256
     970:	10000001 	b	978 <func_80A138B8+0x130>
     974:	24020001 	li	v0,1
     978:	8fbf002c 	lw	ra,44(sp)
     97c:	d7b40010 	ldc1	$f20,16(sp)
     980:	8fb0001c 	lw	s0,28(sp)
     984:	8fb10020 	lw	s1,32(sp)
     988:	8fb20024 	lw	s2,36(sp)
     98c:	8fb30028 	lw	s3,40(sp)
     990:	03e00008 	jr	ra
     994:	27bd0050 	addiu	sp,sp,80

00000998 <func_80A13A08>:
     998:	27bdffc0 	addiu	sp,sp,-64
     99c:	afb00020 	sw	s0,32(sp)
     9a0:	00808025 	move	s0,a0
     9a4:	afbf0024 	sw	ra,36(sp)
     9a8:	24840170 	addiu	a0,a0,368
     9ac:	afa50044 	sw	a1,68(sp)
     9b0:	0c000000 	jal	0 <func_80A13070>
     9b4:	afa4002c 	sw	a0,44(sp)
     9b8:	860301ba 	lh	v1,442(s0)
     9bc:	8fa4002c 	lw	a0,44(sp)
     9c0:	10600002 	beqz	v1,9cc <func_80A13A08+0x34>
     9c4:	246effff 	addiu	t6,v1,-1
     9c8:	a60e01ba 	sh	t6,442(s0)
     9cc:	0c000000 	jal	0 <func_80A13070>
     9d0:	24050000 	li	a1,0
     9d4:	0c000000 	jal	0 <func_80A13070>
     9d8:	afa2003c 	sw	v0,60(sp)
     9dc:	3c013fc0 	lui	at,0x3fc0
     9e0:	44811000 	mtc1	at,$f2
     9e4:	920f01b9 	lbu	t7,441(s0)
     9e8:	46020102 	mul.s	$f4,$f0,$f2
     9ec:	46022180 	add.s	$f6,$f4,$f2
     9f0:	15e0000e 	bnez	t7,a2c <func_80A13A08+0x94>
     9f4:	e6060068 	swc1	$f6,104(s0)
     9f8:	8618001c 	lh	t8,28(s0)
     9fc:	24010004 	li	at,4
     a00:	02002025 	move	a0,s0
     a04:	5301000a 	beql	t8,at,a30 <func_80A13A08+0x98>
     a08:	8fb9003c 	lw	t9,60(sp)
     a0c:	0c000000 	jal	0 <func_80A13070>
     a10:	8fa50044 	lw	a1,68(sp)
     a14:	14400063 	bnez	v0,ba4 <func_80A13A08+0x20c>
     a18:	02002025 	move	a0,s0
     a1c:	0c000000 	jal	0 <func_80A13070>
     a20:	8fa50044 	lw	a1,68(sp)
     a24:	54400060 	bnezl	v0,ba8 <func_80A13A08+0x210>
     a28:	96090088 	lhu	t1,136(s0)
     a2c:	8fb9003c 	lw	t9,60(sp)
     a30:	53200049 	beqzl	t9,b58 <func_80A13A08+0x1c0>
     a34:	96020088 	lhu	v0,136(s0)
     a38:	0c000000 	jal	0 <func_80A13070>
     a3c:	00000000 	nop
     a40:	3c013f00 	lui	at,0x3f00
     a44:	44814000 	mtc1	at,$f8
     a48:	02002025 	move	a0,s0
     a4c:	3c010000 	lui	at,0x0
     a50:	4608003c 	c.lt.s	$f0,$f8
     a54:	00000000 	nop
     a58:	4500000a 	bc1f	a84 <func_80A13A08+0xec>
     a5c:	00000000 	nop
     a60:	0c000000 	jal	0 <func_80A13070>
     a64:	26050008 	addiu	a1,s0,8
     a68:	00022c00 	sll	a1,v0,0x10
     a6c:	00052c03 	sra	a1,a1,0x10
     a70:	260400b6 	addiu	a0,s0,182
     a74:	0c000000 	jal	0 <func_80A13070>
     a78:	24060300 	li	a2,768
     a7c:	10000014 	b	ad0 <func_80A13A08+0x138>
     a80:	3c0141a0 	lui	at,0x41a0
     a84:	c42a0000 	lwc1	$f10,0(at)
     a88:	3c0144c0 	lui	at,0x44c0
     a8c:	460a003c 	c.lt.s	$f0,$f10
     a90:	00000000 	nop
     a94:	4502000e 	bc1fl	ad0 <func_80A13A08+0x138>
     a98:	3c0141a0 	lui	at,0x41a0
     a9c:	44816000 	mtc1	at,$f12
     aa0:	0c000000 	jal	0 <func_80A13070>
     aa4:	00000000 	nop
     aa8:	860800b6 	lh	t0,182(s0)
     aac:	44888000 	mtc1	t0,$f16
     ab0:	00000000 	nop
     ab4:	468084a0 	cvt.s.w	$f18,$f16
     ab8:	46009100 	add.s	$f4,$f18,$f0
     abc:	4600218d 	trunc.w.s	$f6,$f4
     ac0:	440a3000 	mfc1	t2,$f6
     ac4:	00000000 	nop
     ac8:	a60a00b6 	sh	t2,182(s0)
     acc:	3c0141a0 	lui	at,0x41a0
     ad0:	44815000 	mtc1	at,$f10
     ad4:	c6080080 	lwc1	$f8,128(s0)
     ad8:	c6000028 	lwc1	$f0,40(s0)
     adc:	240b0954 	li	t3,2388
     ae0:	460a4400 	add.s	$f16,$f8,$f10
     ae4:	4610003c 	c.lt.s	$f0,$f16
     ae8:	00000000 	nop
     aec:	45020004 	bc1fl	b00 <func_80A13A08+0x168>
     af0:	c6120310 	lwc1	$f18,784(s0)
     af4:	10000027 	b	b94 <func_80A13A08+0x1fc>
     af8:	a60b01bc 	sh	t3,444(s0)
     afc:	c6120310 	lwc1	$f18,784(s0)
     b00:	240c2154 	li	t4,8532
     b04:	4600903c 	c.lt.s	$f18,$f0
     b08:	00000000 	nop
     b0c:	45000003 	bc1f	b1c <func_80A13A08+0x184>
     b10:	00000000 	nop
     b14:	1000001f 	b	b94 <func_80A13A08+0x1fc>
     b18:	a60c01bc 	sh	t4,444(s0)
     b1c:	0c000000 	jal	0 <func_80A13070>
     b20:	00000000 	nop
     b24:	3c010000 	lui	at,0x0
     b28:	c4240000 	lwc1	$f4,0(at)
     b2c:	240d0954 	li	t5,2388
     b30:	240e2154 	li	t6,8532
     b34:	4600203c 	c.lt.s	$f4,$f0
     b38:	00000000 	nop
     b3c:	45000003 	bc1f	b4c <func_80A13A08+0x1b4>
     b40:	00000000 	nop
     b44:	10000013 	b	b94 <func_80A13A08+0x1fc>
     b48:	a60d01bc 	sh	t5,444(s0)
     b4c:	10000011 	b	b94 <func_80A13A08+0x1fc>
     b50:	a60e01bc 	sh	t6,444(s0)
     b54:	96020088 	lhu	v0,136(s0)
     b58:	24180954 	li	t8,2388
     b5c:	304f0001 	andi	t7,v0,0x1
     b60:	11e00003 	beqz	t7,b70 <func_80A13A08+0x1d8>
     b64:	30590010 	andi	t9,v0,0x10
     b68:	1000000a 	b	b94 <func_80A13A08+0x1fc>
     b6c:	a61801bc 	sh	t8,444(s0)
     b70:	17200007 	bnez	t9,b90 <func_80A13A08+0x1f8>
     b74:	24082154 	li	t0,8532
     b78:	c6060310 	lwc1	$f6,784(s0)
     b7c:	c6080028 	lwc1	$f8,40(s0)
     b80:	4608303c 	c.lt.s	$f6,$f8
     b84:	00000000 	nop
     b88:	45020003 	bc1fl	b98 <func_80A13A08+0x200>
     b8c:	260400b4 	addiu	a0,s0,180
     b90:	a60801bc 	sh	t0,444(s0)
     b94:	260400b4 	addiu	a0,s0,180
     b98:	860501bc 	lh	a1,444(s0)
     b9c:	0c000000 	jal	0 <func_80A13070>
     ba0:	24060100 	li	a2,256
     ba4:	96090088 	lhu	t1,136(s0)
     ba8:	260400b6 	addiu	a0,s0,182
     bac:	24060002 	li	a2,2
     bb0:	312a0008 	andi	t2,t1,0x8
     bb4:	11400005 	beqz	t2,bcc <func_80A13A08+0x234>
     bb8:	24070c00 	li	a3,3072
     bbc:	8605007e 	lh	a1,126(s0)
     bc0:	240b0300 	li	t3,768
     bc4:	0c000000 	jal	0 <func_80A13070>
     bc8:	afab0010 	sw	t3,16(sp)
     bcc:	860c01ba 	lh	t4,442(s0)
     bd0:	3c014348 	lui	at,0x4348
     bd4:	55800010 	bnezl	t4,c18 <func_80A13A08+0x280>
     bd8:	8fbf0024 	lw	ra,36(sp)
     bdc:	c60a0090 	lwc1	$f10,144(s0)
     be0:	44818000 	mtc1	at,$f16
     be4:	00000000 	nop
     be8:	4610503c 	c.lt.s	$f10,$f16
     bec:	00000000 	nop
     bf0:	45020009 	bc1fl	c18 <func_80A13A08+0x280>
     bf4:	8fbf0024 	lw	ra,36(sp)
     bf8:	0c000000 	jal	0 <func_80A13070>
     bfc:	8fa40044 	lw	a0,68(sp)
     c00:	24010002 	li	at,2
     c04:	50410004 	beql	v0,at,c18 <func_80A13A08+0x280>
     c08:	8fbf0024 	lw	ra,36(sp)
     c0c:	0c000000 	jal	0 <func_80A13070>
     c10:	02002025 	move	a0,s0
     c14:	8fbf0024 	lw	ra,36(sp)
     c18:	8fb00020 	lw	s0,32(sp)
     c1c:	27bd0040 	addiu	sp,sp,64
     c20:	03e00008 	jr	ra
     c24:	00000000 	nop

00000c28 <func_80A13C98>:
     c28:	27bdffd8 	addiu	sp,sp,-40
     c2c:	afb00018 	sw	s0,24(sp)
     c30:	00808025 	move	s0,a0
     c34:	afbf001c 	sw	ra,28(sp)
     c38:	afa5002c 	sw	a1,44(sp)
     c3c:	24840170 	addiu	a0,a0,368
     c40:	afa40024 	sw	a0,36(sp)
     c44:	0c000000 	jal	0 <func_80A13070>
     c48:	3c0540c0 	lui	a1,0x40c0
     c4c:	10400004 	beqz	v0,c60 <func_80A13C98+0x38>
     c50:	8fa40024 	lw	a0,36(sp)
     c54:	44802000 	mtc1	zero,$f4
     c58:	00000000 	nop
     c5c:	e604018c 	swc1	$f4,396(s0)
     c60:	240e0028 	li	t6,40
     c64:	0c000000 	jal	0 <func_80A13070>
     c68:	a20e0114 	sb	t6,276(s0)
     c6c:	26040068 	addiu	a0,s0,104
     c70:	24050000 	li	a1,0
     c74:	0c000000 	jal	0 <func_80A13070>
     c78:	3c063f00 	lui	a2,0x3f00
     c7c:	8e0f0004 	lw	t7,4(s0)
     c80:	24190028 	li	t9,40
     c84:	260400b4 	addiu	a0,s0,180
     c88:	31f88000 	andi	t8,t7,0x8000
     c8c:	13000003 	beqz	t8,c9c <func_80A13C98+0x74>
     c90:	24056800 	li	a1,26624
     c94:	10000013 	b	ce4 <func_80A13C98+0xbc>
     c98:	a2190114 	sb	t9,276(s0)
     c9c:	0c000000 	jal	0 <func_80A13070>
     ca0:	24060200 	li	a2,512
     ca4:	860800b6 	lh	t0,182(s0)
     ca8:	860301ba 	lh	v1,442(s0)
     cac:	2509fd00 	addiu	t1,t0,-768
     cb0:	10600003 	beqz	v1,cc0 <func_80A13C98+0x98>
     cb4:	a60900b6 	sh	t1,182(s0)
     cb8:	246affff 	addiu	t2,v1,-1
     cbc:	a60a01ba 	sh	t2,442(s0)
     cc0:	960b0088 	lhu	t3,136(s0)
     cc4:	316c0001 	andi	t4,t3,0x1
     cc8:	15800004 	bnez	t4,cdc <func_80A13C98+0xb4>
     ccc:	00000000 	nop
     cd0:	860d01ba 	lh	t5,442(s0)
     cd4:	55a00004 	bnezl	t5,ce8 <func_80A13C98+0xc0>
     cd8:	8fbf001c 	lw	ra,28(sp)
     cdc:	0c000000 	jal	0 <func_80A13070>
     ce0:	02002025 	move	a0,s0
     ce4:	8fbf001c 	lw	ra,28(sp)
     ce8:	8fb00018 	lw	s0,24(sp)
     cec:	27bd0028 	addiu	sp,sp,40
     cf0:	03e00008 	jr	ra
     cf4:	00000000 	nop

00000cf8 <func_80A13D68>:
     cf8:	27bdffe0 	addiu	sp,sp,-32
     cfc:	afbf001c 	sw	ra,28(sp)
     d00:	afb00018 	sw	s0,24(sp)
     d04:	afa50024 	sw	a1,36(sp)
     d08:	848201ba 	lh	v0,442(a0)
     d0c:	00808025 	move	s0,a0
     d10:	24050000 	li	a1,0
     d14:	10400003 	beqz	v0,d24 <func_80A13D68+0x2c>
     d18:	3c0639b2 	lui	a2,0x39b2
     d1c:	244effff 	addiu	t6,v0,-1
     d20:	a48e01ba 	sh	t6,442(a0)
     d24:	26040050 	addiu	a0,s0,80
     d28:	0c000000 	jal	0 <func_80A13070>
     d2c:	34c64207 	ori	a2,a2,0x4207
     d30:	c6000050 	lwc1	$f0,80(s0)
     d34:	860f01ba 	lh	t7,442(s0)
     d38:	02002825 	move	a1,s0
     d3c:	e6000058 	swc1	$f0,88(s0)
     d40:	15e00007 	bnez	t7,d60 <func_80A13D68+0x68>
     d44:	e6000054 	swc1	$f0,84(s0)
     d48:	8fa40024 	lw	a0,36(sp)
     d4c:	26060024 	addiu	a2,s0,36
     d50:	0c000000 	jal	0 <func_80A13070>
     d54:	240700e0 	li	a3,224
     d58:	0c000000 	jal	0 <func_80A13070>
     d5c:	02002025 	move	a0,s0
     d60:	8fbf001c 	lw	ra,28(sp)
     d64:	8fb00018 	lw	s0,24(sp)
     d68:	27bd0020 	addiu	sp,sp,32
     d6c:	03e00008 	jr	ra
     d70:	00000000 	nop

00000d74 <func_80A13DE4>:
     d74:	27bdffb8 	addiu	sp,sp,-72
     d78:	afb00020 	sw	s0,32(sp)
     d7c:	afbf0024 	sw	ra,36(sp)
     d80:	afa5004c 	sw	a1,76(sp)
     d84:	8caf1c44 	lw	t7,7236(a1)
     d88:	00808025 	move	s0,a0
     d8c:	24840170 	addiu	a0,a0,368
     d90:	afa40030 	sw	a0,48(sp)
     d94:	0c000000 	jal	0 <func_80A13070>
     d98:	afaf0044 	sw	t7,68(sp)
     d9c:	860301ba 	lh	v1,442(s0)
     da0:	26040068 	addiu	a0,s0,104
     da4:	3c054080 	lui	a1,0x4080
     da8:	10600002 	beqz	v1,db4 <func_80A13DE4+0x40>
     dac:	2478ffff 	addiu	t8,v1,-1
     db0:	a61801ba 	sh	t8,442(s0)
     db4:	0c000000 	jal	0 <func_80A13070>
     db8:	3c063f00 	lui	a2,0x3f00
     dbc:	96190088 	lhu	t9,136(s0)
     dc0:	24060002 	li	a2,2
     dc4:	24070c00 	li	a3,3072
     dc8:	33280008 	andi	t0,t9,0x8
     dcc:	1100000c 	beqz	t0,e00 <func_80A13DE4+0x8c>
     dd0:	02002025 	move	a0,s0
     dd4:	8605007e 	lh	a1,126(s0)
     dd8:	24090300 	li	t1,768
     ddc:	afa90010 	sw	t1,16(sp)
     de0:	0c000000 	jal	0 <func_80A13070>
     de4:	260400b6 	addiu	a0,s0,182
     de8:	260400b4 	addiu	a0,s0,180
     dec:	860501bc 	lh	a1,444(s0)
     df0:	0c000000 	jal	0 <func_80A13070>
     df4:	24060100 	li	a2,256
     df8:	10000054 	b	f4c <func_80A13DE4+0x1d8>
     dfc:	860801ba 	lh	t0,442(s0)
     e00:	0c000000 	jal	0 <func_80A13070>
     e04:	24052800 	li	a1,10240
     e08:	10400029 	beqz	v0,eb0 <func_80A13DE4+0x13c>
     e0c:	3c013fc0 	lui	at,0x3fc0
     e10:	8fa40030 	lw	a0,48(sp)
     e14:	0c000000 	jal	0 <func_80A13070>
     e18:	3c054080 	lui	a1,0x4080
     e1c:	10400006 	beqz	v0,e38 <func_80A13DE4+0xc4>
     e20:	260400b6 	addiu	a0,s0,182
     e24:	3c014080 	lui	at,0x4080
     e28:	44802000 	mtc1	zero,$f4
     e2c:	44813000 	mtc1	at,$f6
     e30:	e604018c 	swc1	$f4,396(s0)
     e34:	e6060188 	swc1	$f6,392(s0)
     e38:	8605008a 	lh	a1,138(s0)
     e3c:	240a0300 	li	t2,768
     e40:	afaa0010 	sw	t2,16(sp)
     e44:	24060002 	li	a2,2
     e48:	0c000000 	jal	0 <func_80A13070>
     e4c:	24070c00 	li	a3,3072
     e50:	8fa30044 	lw	v1,68(sp)
     e54:	3c0141a0 	lui	at,0x41a0
     e58:	44818000 	mtc1	at,$f16
     e5c:	c4680024 	lwc1	$f8,36(v1)
     e60:	02002025 	move	a0,s0
     e64:	27a50038 	addiu	a1,sp,56
     e68:	e7a80038 	swc1	$f8,56(sp)
     e6c:	c46a0028 	lwc1	$f10,40(v1)
     e70:	46105480 	add.s	$f18,$f10,$f16
     e74:	e7b2003c 	swc1	$f18,60(sp)
     e78:	c464002c 	lwc1	$f4,44(v1)
     e7c:	0c000000 	jal	0 <func_80A13070>
     e80:	e7a40040 	swc1	$f4,64(sp)
     e84:	24451554 	addiu	a1,v0,5460
     e88:	00052c00 	sll	a1,a1,0x10
     e8c:	240b0100 	li	t3,256
     e90:	afab0010 	sw	t3,16(sp)
     e94:	00052c03 	sra	a1,a1,0x10
     e98:	260400b4 	addiu	a0,s0,180
     e9c:	24060002 	li	a2,2
     ea0:	0c000000 	jal	0 <func_80A13070>
     ea4:	24070400 	li	a3,1024
     ea8:	10000028 	b	f4c <func_80A13DE4+0x1d8>
     eac:	860801ba 	lh	t0,442(s0)
     eb0:	44813000 	mtc1	at,$f6
     eb4:	3c0142a0 	lui	at,0x42a0
     eb8:	44814000 	mtc1	at,$f8
     ebc:	c60a0090 	lwc1	$f10,144(s0)
     ec0:	260400b6 	addiu	a0,s0,182
     ec4:	24060002 	li	a2,2
     ec8:	460a403c 	c.lt.s	$f8,$f10
     ecc:	24070c00 	li	a3,3072
     ed0:	240c0300 	li	t4,768
     ed4:	e606018c 	swc1	$f6,396(s0)
     ed8:	45020005 	bc1fl	ef0 <func_80A13DE4+0x17c>
     edc:	96020088 	lhu	v0,136(s0)
     ee0:	8605008a 	lh	a1,138(s0)
     ee4:	0c000000 	jal	0 <func_80A13070>
     ee8:	afac0010 	sw	t4,16(sp)
     eec:	96020088 	lhu	v0,136(s0)
     ef0:	240e0954 	li	t6,2388
     ef4:	260400b4 	addiu	a0,s0,180
     ef8:	304d0001 	andi	t5,v0,0x1
     efc:	11a00003 	beqz	t5,f0c <func_80A13DE4+0x198>
     f00:	24060100 	li	a2,256
     f04:	a60e01bc 	sh	t6,444(s0)
     f08:	96020088 	lhu	v0,136(s0)
     f0c:	304f0010 	andi	t7,v0,0x10
     f10:	15e00008 	bnez	t7,f34 <func_80A13DE4+0x1c0>
     f14:	24182154 	li	t8,8532
     f18:	c6100310 	lwc1	$f16,784(s0)
     f1c:	c6120028 	lwc1	$f18,40(s0)
     f20:	24190954 	li	t9,2388
     f24:	4612803c 	c.lt.s	$f16,$f18
     f28:	00000000 	nop
     f2c:	45020004 	bc1fl	f40 <func_80A13DE4+0x1cc>
     f30:	a61901bc 	sh	t9,444(s0)
     f34:	10000002 	b	f40 <func_80A13DE4+0x1cc>
     f38:	a61801bc 	sh	t8,444(s0)
     f3c:	a61901bc 	sh	t9,444(s0)
     f40:	0c000000 	jal	0 <func_80A13070>
     f44:	860501bc 	lh	a1,444(s0)
     f48:	860801ba 	lh	t0,442(s0)
     f4c:	11000006 	beqz	t0,f68 <func_80A13DE4+0x1f4>
     f50:	00000000 	nop
     f54:	0c000000 	jal	0 <func_80A13070>
     f58:	8fa4004c 	lw	a0,76(sp)
     f5c:	24010002 	li	at,2
     f60:	54410004 	bnel	v0,at,f74 <func_80A13DE4+0x200>
     f64:	8fbf0024 	lw	ra,36(sp)
     f68:	0c000000 	jal	0 <func_80A13070>
     f6c:	02002025 	move	a0,s0
     f70:	8fbf0024 	lw	ra,36(sp)
     f74:	8fb00020 	lw	s0,32(sp)
     f78:	27bd0048 	addiu	sp,sp,72
     f7c:	03e00008 	jr	ra
     f80:	00000000 	nop

00000f84 <func_80A13FF4>:
     f84:	27bdffe0 	addiu	sp,sp,-32
     f88:	afb00018 	sw	s0,24(sp)
     f8c:	00808025 	move	s0,a0
     f90:	afbf001c 	sw	ra,28(sp)
     f94:	afa50024 	sw	a1,36(sp)
     f98:	0c000000 	jal	0 <func_80A13070>
     f9c:	24840170 	addiu	a0,a0,368
     fa0:	260400b4 	addiu	a0,s0,180
     fa4:	00002825 	move	a1,zero
     fa8:	0c000000 	jal	0 <func_80A13070>
     fac:	24060100 	li	a2,256
     fb0:	3c063ecc 	lui	a2,0x3ecc
     fb4:	34c6cccd 	ori	a2,a2,0xcccd
     fb8:	26040060 	addiu	a0,s0,96
     fbc:	0c000000 	jal	0 <func_80A13070>
     fc0:	24050000 	li	a1,0
     fc4:	3c063e19 	lui	a2,0x3e19
     fc8:	34c6999a 	ori	a2,a2,0x999a
     fcc:	26040068 	addiu	a0,s0,104
     fd0:	0c000000 	jal	0 <func_80A13070>
     fd4:	24050000 	li	a1,0
     fd8:	5040000b 	beqzl	v0,1008 <func_80A13FF4+0x84>
     fdc:	8fbf001c 	lw	ra,28(sp)
     fe0:	860201ba 	lh	v0,442(s0)
     fe4:	10400003 	beqz	v0,ff4 <func_80A13FF4+0x70>
     fe8:	244effff 	addiu	t6,v0,-1
     fec:	a60e01ba 	sh	t6,442(s0)
     ff0:	860201ba 	lh	v0,442(s0)
     ff4:	54400004 	bnezl	v0,1008 <func_80A13FF4+0x84>
     ff8:	8fbf001c 	lw	ra,28(sp)
     ffc:	0c000000 	jal	0 <func_80A13070>
    1000:	02002025 	move	a0,s0
    1004:	8fbf001c 	lw	ra,28(sp)
    1008:	8fb00018 	lw	s0,24(sp)
    100c:	27bd0020 	addiu	sp,sp,32
    1010:	03e00008 	jr	ra
    1014:	00000000 	nop

00001018 <func_80A14088>:
    1018:	27bdffd8 	addiu	sp,sp,-40
    101c:	afb00020 	sw	s0,32(sp)
    1020:	00808025 	move	s0,a0
    1024:	afbf0024 	sw	ra,36(sp)
    1028:	afa5002c 	sw	a1,44(sp)
    102c:	0c000000 	jal	0 <func_80A13070>
    1030:	24840170 	addiu	a0,a0,368
    1034:	860301ba 	lh	v1,442(s0)
    1038:	26040024 	addiu	a0,s0,36
    103c:	10600002 	beqz	v1,1048 <func_80A14088+0x30>
    1040:	246effff 	addiu	t6,v1,-1
    1044:	a60e01ba 	sh	t6,442(s0)
    1048:	c6040028 	lwc1	$f4,40(s0)
    104c:	c6060310 	lwc1	$f6,784(s0)
    1050:	3c014120 	lui	at,0x4120
    1054:	44814000 	mtc1	at,$f8
    1058:	46062001 	sub.s	$f0,$f4,$f6
    105c:	46000005 	abs.s	$f0,$f0
    1060:	4608003c 	c.lt.s	$f0,$f8
    1064:	00000000 	nop
    1068:	4502000b 	bc1fl	1098 <func_80A14088+0x80>
    106c:	860f01ba 	lh	t7,442(s0)
    1070:	0c000000 	jal	0 <func_80A13070>
    1074:	26050008 	addiu	a1,s0,8
    1078:	3c0141a0 	lui	at,0x41a0
    107c:	44815000 	mtc1	at,$f10
    1080:	00000000 	nop
    1084:	460a003c 	c.lt.s	$f0,$f10
    1088:	00000000 	nop
    108c:	45010006 	bc1t	10a8 <func_80A14088+0x90>
    1090:	00000000 	nop
    1094:	860f01ba 	lh	t7,442(s0)
    1098:	26040068 	addiu	a0,s0,104
    109c:	3c054040 	lui	a1,0x4040
    10a0:	15e00005 	bnez	t7,10b8 <func_80A14088+0xa0>
    10a4:	3c063e99 	lui	a2,0x3e99
    10a8:	0c000000 	jal	0 <func_80A13070>
    10ac:	02002025 	move	a0,s0
    10b0:	1000002f 	b	1170 <func_80A14088+0x158>
    10b4:	8fbf0024 	lw	ra,36(sp)
    10b8:	0c000000 	jal	0 <func_80A13070>
    10bc:	34c6999a 	ori	a2,a2,0x999a
    10c0:	96030088 	lhu	v1,136(s0)
    10c4:	24190954 	li	t9,2388
    10c8:	02002025 	move	a0,s0
    10cc:	30780001 	andi	t8,v1,0x1
    10d0:	13000003 	beqz	t8,10e0 <func_80A14088+0xc8>
    10d4:	30680010 	andi	t0,v1,0x10
    10d8:	1000000d 	b	1110 <func_80A14088+0xf8>
    10dc:	a61901bc 	sh	t9,444(s0)
    10e0:	15000008 	bnez	t0,1104 <func_80A14088+0xec>
    10e4:	24092154 	li	t1,8532
    10e8:	c6100310 	lwc1	$f16,784(s0)
    10ec:	c6120028 	lwc1	$f18,40(s0)
    10f0:	240a0954 	li	t2,2388
    10f4:	4612803c 	c.lt.s	$f16,$f18
    10f8:	00000000 	nop
    10fc:	45020004 	bc1fl	1110 <func_80A14088+0xf8>
    1100:	a60a01bc 	sh	t2,444(s0)
    1104:	10000002 	b	1110 <func_80A14088+0xf8>
    1108:	a60901bc 	sh	t1,444(s0)
    110c:	a60a01bc 	sh	t2,444(s0)
    1110:	960b0088 	lhu	t3,136(s0)
    1114:	24060002 	li	a2,2
    1118:	24070c00 	li	a3,3072
    111c:	316c0008 	andi	t4,t3,0x8
    1120:	11800007 	beqz	t4,1140 <func_80A14088+0x128>
    1124:	240d0300 	li	t5,768
    1128:	8605007e 	lh	a1,126(s0)
    112c:	afad0010 	sw	t5,16(sp)
    1130:	0c000000 	jal	0 <func_80A13070>
    1134:	260400b6 	addiu	a0,s0,182
    1138:	10000009 	b	1160 <func_80A14088+0x148>
    113c:	260400b4 	addiu	a0,s0,180
    1140:	0c000000 	jal	0 <func_80A13070>
    1144:	26050008 	addiu	a1,s0,8
    1148:	00022c00 	sll	a1,v0,0x10
    114c:	00052c03 	sra	a1,a1,0x10
    1150:	260400b6 	addiu	a0,s0,182
    1154:	0c000000 	jal	0 <func_80A13070>
    1158:	24060300 	li	a2,768
    115c:	260400b4 	addiu	a0,s0,180
    1160:	860501bc 	lh	a1,444(s0)
    1164:	0c000000 	jal	0 <func_80A13070>
    1168:	24060100 	li	a2,256
    116c:	8fbf0024 	lw	ra,36(sp)
    1170:	8fb00020 	lw	s0,32(sp)
    1174:	27bd0028 	addiu	sp,sp,40
    1178:	03e00008 	jr	ra
    117c:	00000000 	nop

00001180 <func_80A141F0>:
    1180:	27bdffe0 	addiu	sp,sp,-32
    1184:	afb00018 	sw	s0,24(sp)
    1188:	00808025 	move	s0,a0
    118c:	afbf001c 	sw	ra,28(sp)
    1190:	afa50024 	sw	a1,36(sp)
    1194:	0c000000 	jal	0 <func_80A13070>
    1198:	24840170 	addiu	a0,a0,368
    119c:	26040068 	addiu	a0,s0,104
    11a0:	24050000 	li	a1,0
    11a4:	0c000000 	jal	0 <func_80A13070>
    11a8:	3c063f00 	lui	a2,0x3f00
    11ac:	260400b4 	addiu	a0,s0,180
    11b0:	24051554 	li	a1,5460
    11b4:	0c000000 	jal	0 <func_80A13070>
    11b8:	24060100 	li	a2,256
    11bc:	860201ba 	lh	v0,442(s0)
    11c0:	10400003 	beqz	v0,11d0 <func_80A141F0+0x50>
    11c4:	244effff 	addiu	t6,v0,-1
    11c8:	a60e01ba 	sh	t6,442(s0)
    11cc:	860201ba 	lh	v0,442(s0)
    11d0:	54400010 	bnezl	v0,1214 <func_80A141F0+0x94>
    11d4:	8fbf001c 	lw	ra,28(sp)
    11d8:	920f01b9 	lbu	t7,441(s0)
    11dc:	24180001 	li	t8,1
    11e0:	51e00004 	beqzl	t7,11f4 <func_80A141F0+0x74>
    11e4:	8619001c 	lh	t9,28(s0)
    11e8:	10000007 	b	1208 <func_80A141F0+0x88>
    11ec:	a21801b8 	sb	t8,440(s0)
    11f0:	8619001c 	lh	t9,28(s0)
    11f4:	24010004 	li	at,4
    11f8:	24080002 	li	t0,2
    11fc:	17210002 	bne	t9,at,1208 <func_80A141F0+0x88>
    1200:	00000000 	nop
    1204:	a20801b8 	sb	t0,440(s0)
    1208:	0c000000 	jal	0 <func_80A13070>
    120c:	02002025 	move	a0,s0
    1210:	8fbf001c 	lw	ra,28(sp)
    1214:	8fb00018 	lw	s0,24(sp)
    1218:	27bd0020 	addiu	sp,sp,32
    121c:	03e00008 	jr	ra
    1220:	00000000 	nop

00001224 <func_80A14294>:
    1224:	27bdffe8 	addiu	sp,sp,-24
    1228:	afbf0014 	sw	ra,20(sp)
    122c:	afa5001c 	sw	a1,28(sp)
    1230:	948e0088 	lhu	t6,136(a0)
    1234:	3c01c6fa 	lui	at,0xc6fa
    1238:	31cf0001 	andi	t7,t6,0x1
    123c:	15e00008 	bnez	t7,1260 <func_80A14294+0x3c>
    1240:	00000000 	nop
    1244:	44812000 	mtc1	at,$f4
    1248:	c4860080 	lwc1	$f6,128(a0)
    124c:	241800ff 	li	t8,255
    1250:	46062032 	c.eq.s	$f4,$f6
    1254:	00000000 	nop
    1258:	45020006 	bc1fl	1274 <func_80A14294+0x50>
    125c:	a0980114 	sb	t8,276(a0)
    1260:	0c000000 	jal	0 <func_80A13070>
    1264:	a0800114 	sb	zero,276(a0)
    1268:	10000003 	b	1278 <func_80A14294+0x54>
    126c:	8fbf0014 	lw	ra,20(sp)
    1270:	a0980114 	sb	t8,276(a0)
    1274:	8fbf0014 	lw	ra,20(sp)
    1278:	27bd0018 	addiu	sp,sp,24
    127c:	03e00008 	jr	ra
    1280:	00000000 	nop

00001284 <func_80A142F4>:
    1284:	27bdffd8 	addiu	sp,sp,-40
    1288:	afb00018 	sw	s0,24(sp)
    128c:	00808025 	move	s0,a0
    1290:	afbf001c 	sw	ra,28(sp)
    1294:	afa5002c 	sw	a1,44(sp)
    1298:	00002825 	move	a1,zero
    129c:	248400b4 	addiu	a0,a0,180
    12a0:	0c000000 	jal	0 <func_80A13070>
    12a4:	24060100 	li	a2,256
    12a8:	860e01ba 	lh	t6,442(s0)
    12ac:	26040170 	addiu	a0,s0,368
    12b0:	11c0000c 	beqz	t6,12e4 <func_80A142F4+0x60>
    12b4:	00000000 	nop
    12b8:	0c000000 	jal	0 <func_80A13070>
    12bc:	afa40024 	sw	a0,36(sp)
    12c0:	8fa40024 	lw	a0,36(sp)
    12c4:	0c000000 	jal	0 <func_80A13070>
    12c8:	3c0540c0 	lui	a1,0x40c0
    12cc:	50400010 	beqzl	v0,1310 <func_80A142F4+0x8c>
    12d0:	3c0142f0 	lui	at,0x42f0
    12d4:	860f01ba 	lh	t7,442(s0)
    12d8:	25f8ffff 	addiu	t8,t7,-1
    12dc:	1000000b 	b	130c <func_80A142F4+0x88>
    12e0:	a61801ba 	sh	t8,442(s0)
    12e4:	0c000000 	jal	0 <func_80A13070>
    12e8:	00000000 	nop
    12ec:	3c010000 	lui	at,0x0
    12f0:	c4240000 	lwc1	$f4,0(at)
    12f4:	24190001 	li	t9,1
    12f8:	4604003c 	c.lt.s	$f0,$f4
    12fc:	00000000 	nop
    1300:	45020003 	bc1fl	1310 <func_80A142F4+0x8c>
    1304:	3c0142f0 	lui	at,0x42f0
    1308:	a61901ba 	sh	t9,442(s0)
    130c:	3c0142f0 	lui	at,0x42f0
    1310:	44814000 	mtc1	at,$f8
    1314:	c6060090 	lwc1	$f6,144(s0)
    1318:	4608303c 	c.lt.s	$f6,$f8
    131c:	00000000 	nop
    1320:	45020004 	bc1fl	1334 <func_80A142F4+0xb0>
    1324:	8fbf001c 	lw	ra,28(sp)
    1328:	0c000000 	jal	0 <func_80A13070>
    132c:	02002025 	move	a0,s0
    1330:	8fbf001c 	lw	ra,28(sp)
    1334:	8fb00018 	lw	s0,24(sp)
    1338:	27bd0028 	addiu	sp,sp,40
    133c:	03e00008 	jr	ra
    1340:	00000000 	nop

00001344 <func_80A143B4>:
    1344:	27bdffc8 	addiu	sp,sp,-56
    1348:	afbf001c 	sw	ra,28(sp)
    134c:	afb00018 	sw	s0,24(sp)
    1350:	8ca61c44 	lw	a2,7236(a1)
    1354:	00808025 	move	s0,a0
    1358:	24840170 	addiu	a0,a0,368
    135c:	0c000000 	jal	0 <func_80A13070>
    1360:	afa60034 	sw	a2,52(sp)
    1364:	860301ba 	lh	v1,442(s0)
    1368:	8fa60034 	lw	a2,52(sp)
    136c:	260400b4 	addiu	a0,s0,180
    1370:	10600003 	beqz	v1,1380 <func_80A143B4+0x3c>
    1374:	246effff 	addiu	t6,v1,-1
    1378:	a60e01ba 	sh	t6,442(s0)
    137c:	860301ba 	lh	v1,442(s0)
    1380:	28610028 	slti	at,v1,40
    1384:	10200005 	beqz	at,139c <func_80A143B4+0x58>
    1388:	2405f554 	li	a1,-2732
    138c:	0c000000 	jal	0 <func_80A13070>
    1390:	24060100 	li	a2,256
    1394:	10000018 	b	13f8 <func_80A143B4+0xb4>
    1398:	860f01ba 	lh	t7,442(s0)
    139c:	c4c40024 	lwc1	$f4,36(a2)
    13a0:	3c0141a0 	lui	at,0x41a0
    13a4:	44814000 	mtc1	at,$f8
    13a8:	e7a40028 	swc1	$f4,40(sp)
    13ac:	c4c60028 	lwc1	$f6,40(a2)
    13b0:	02002025 	move	a0,s0
    13b4:	27a50028 	addiu	a1,sp,40
    13b8:	46083280 	add.s	$f10,$f6,$f8
    13bc:	e7aa002c 	swc1	$f10,44(sp)
    13c0:	c4d0002c 	lwc1	$f16,44(a2)
    13c4:	0c000000 	jal	0 <func_80A13070>
    13c8:	e7b00030 	swc1	$f16,48(sp)
    13cc:	24451554 	addiu	a1,v0,5460
    13d0:	00052c00 	sll	a1,a1,0x10
    13d4:	00052c03 	sra	a1,a1,0x10
    13d8:	260400b4 	addiu	a0,s0,180
    13dc:	0c000000 	jal	0 <func_80A13070>
    13e0:	24060100 	li	a2,256
    13e4:	260400b6 	addiu	a0,s0,182
    13e8:	8605008a 	lh	a1,138(s0)
    13ec:	0c000000 	jal	0 <func_80A13070>
    13f0:	24060300 	li	a2,768
    13f4:	860f01ba 	lh	t7,442(s0)
    13f8:	55e00004 	bnezl	t7,140c <func_80A143B4+0xc8>
    13fc:	8fbf001c 	lw	ra,28(sp)
    1400:	0c000000 	jal	0 <func_80A13070>
    1404:	02002025 	move	a0,s0
    1408:	8fbf001c 	lw	ra,28(sp)
    140c:	8fb00018 	lw	s0,24(sp)
    1410:	27bd0038 	addiu	sp,sp,56
    1414:	03e00008 	jr	ra
    1418:	00000000 	nop

0000141c <func_80A1448C>:
    141c:	27bdffc0 	addiu	sp,sp,-64
    1420:	afb40038 	sw	s4,56(sp)
    1424:	afb30034 	sw	s3,52(sp)
    1428:	afb20030 	sw	s2,48(sp)
    142c:	afb1002c 	sw	s1,44(sp)
    1430:	afb00028 	sw	s0,40(sp)
    1434:	00808825 	move	s1,a0
    1438:	00a09825 	move	s3,a1
    143c:	afbf003c 	sw	ra,60(sp)
    1440:	00008025 	move	s0,zero
    1444:	24920024 	addiu	s2,a0,36
    1448:	24140003 	li	s4,3
    144c:	02602025 	move	a0,s3
    1450:	02202825 	move	a1,s1
    1454:	02403025 	move	a2,s2
    1458:	24070028 	li	a3,40
    145c:	afa00010 	sw	zero,16(sp)
    1460:	afa00014 	sw	zero,20(sp)
    1464:	0c000000 	jal	0 <func_80A13070>
    1468:	afb00018 	sw	s0,24(sp)
    146c:	26100001 	addiu	s0,s0,1
    1470:	5614fff7 	bnel	s0,s4,1450 <func_80A1448C+0x34>
    1474:	02602025 	move	a0,s3
    1478:	a22001b8 	sb	zero,440(s1)
    147c:	8fbf003c 	lw	ra,60(sp)
    1480:	8fb40038 	lw	s4,56(sp)
    1484:	8fb30034 	lw	s3,52(sp)
    1488:	8fb20030 	lw	s2,48(sp)
    148c:	8fb1002c 	lw	s1,44(sp)
    1490:	8fb00028 	lw	s0,40(sp)
    1494:	03e00008 	jr	ra
    1498:	27bd0040 	addiu	sp,sp,64

0000149c <func_80A1450C>:
    149c:	27bdffe0 	addiu	sp,sp,-32
    14a0:	afbf001c 	sw	ra,28(sp)
    14a4:	afb00018 	sw	s0,24(sp)
    14a8:	afa50024 	sw	a1,36(sp)
    14ac:	90820325 	lbu	v0,805(a0)
    14b0:	00808025 	move	s0,a0
    14b4:	24060001 	li	a2,1
    14b8:	304e0002 	andi	t6,v0,0x2
    14bc:	11c0005d 	beqz	t6,1634 <func_80A1450C+0x198>
    14c0:	304ffffd 	andi	t7,v0,0xfffd
    14c4:	a08f0325 	sb	t7,805(a0)
    14c8:	0c000000 	jal	0 <func_80A13070>
    14cc:	8e050330 	lw	a1,816(s0)
    14d0:	921800b1 	lbu	t8,177(s0)
    14d4:	17000004 	bnez	t8,14e8 <func_80A1450C+0x4c>
    14d8:	00000000 	nop
    14dc:	921900b0 	lbu	t9,176(s0)
    14e0:	53200055 	beqzl	t9,1638 <func_80A1450C+0x19c>
    14e4:	8fbf001c 	lw	ra,28(sp)
    14e8:	0c000000 	jal	0 <func_80A13070>
    14ec:	02002025 	move	a0,s0
    14f0:	14400007 	bnez	v0,1510 <func_80A1450C+0x74>
    14f4:	8fa40024 	lw	a0,36(sp)
    14f8:	0c000000 	jal	0 <func_80A13070>
    14fc:	02002825 	move	a1,s0
    1500:	8e080004 	lw	t0,4(s0)
    1504:	2401fffe 	li	at,-2
    1508:	01014824 	and	t1,t0,at
    150c:	ae090004 	sw	t1,4(s0)
    1510:	920200b1 	lbu	v0,177(s0)
    1514:	24010002 	li	at,2
    1518:	5441001f 	bnel	v0,at,1598 <func_80A1450C+0xfc>
    151c:	24010003 	li	at,3
    1520:	860a001c 	lh	t2,28(s0)
    1524:	24010004 	li	at,4
    1528:	02002825 	move	a1,s0
    152c:	5541000c 	bnel	t2,at,1560 <func_80A1450C+0xc4>
    1530:	920b01b9 	lbu	t3,441(s0)
    1534:	a20000af 	sb	zero,175(s0)
    1538:	0c000000 	jal	0 <func_80A13070>
    153c:	8fa40024 	lw	a0,36(sp)
    1540:	02002025 	move	a0,s0
    1544:	0c000000 	jal	0 <func_80A13070>
    1548:	8fa50024 	lw	a1,36(sp)
    154c:	0c000000 	jal	0 <func_80A13070>
    1550:	02002025 	move	a0,s0
    1554:	10000038 	b	1638 <func_80A1450C+0x19c>
    1558:	8fbf001c 	lw	ra,28(sp)
    155c:	920b01b9 	lbu	t3,441(s0)
    1560:	55600035 	bnezl	t3,1638 <func_80A1450C+0x19c>
    1564:	8fbf001c 	lw	ra,28(sp)
    1568:	0c000000 	jal	0 <func_80A13070>
    156c:	02002025 	move	a0,s0
    1570:	8e0d01b4 	lw	t5,436(s0)
    1574:	3c0c0000 	lui	t4,0x0
    1578:	258c0000 	addiu	t4,t4,0
    157c:	558d002e 	bnel	t4,t5,1638 <func_80A1450C+0x19c>
    1580:	8fbf001c 	lw	ra,28(sp)
    1584:	0c000000 	jal	0 <func_80A13070>
    1588:	02002025 	move	a0,s0
    158c:	1000002a 	b	1638 <func_80A1450C+0x19c>
    1590:	8fbf001c 	lw	ra,28(sp)
    1594:	24010003 	li	at,3
    1598:	5441000f 	bnel	v0,at,15d8 <func_80A1450C+0x13c>
    159c:	24010001 	li	at,1
    15a0:	860e001c 	lh	t6,28(s0)
    15a4:	24010004 	li	at,4
    15a8:	02002025 	move	a0,s0
    15ac:	15c10005 	bne	t6,at,15c4 <func_80A1450C+0x128>
    15b0:	00000000 	nop
    15b4:	0c000000 	jal	0 <func_80A13070>
    15b8:	02002025 	move	a0,s0
    15bc:	1000001e 	b	1638 <func_80A1450C+0x19c>
    15c0:	8fbf001c 	lw	ra,28(sp)
    15c4:	0c000000 	jal	0 <func_80A13070>
    15c8:	8fa50024 	lw	a1,36(sp)
    15cc:	1000001a 	b	1638 <func_80A1450C+0x19c>
    15d0:	8fbf001c 	lw	ra,28(sp)
    15d4:	24010001 	li	at,1
    15d8:	5441000b 	bnel	v0,at,1608 <func_80A1450C+0x16c>
    15dc:	2401000f 	li	at,15
    15e0:	8e1801b4 	lw	t8,436(s0)
    15e4:	3c0f0000 	lui	t7,0x0
    15e8:	25ef0000 	addiu	t7,t7,0
    15ec:	51f80012 	beql	t7,t8,1638 <func_80A1450C+0x19c>
    15f0:	8fbf001c 	lw	ra,28(sp)
    15f4:	0c000000 	jal	0 <func_80A13070>
    15f8:	02002025 	move	a0,s0
    15fc:	1000000e 	b	1638 <func_80A1450C+0x19c>
    1600:	8fbf001c 	lw	ra,28(sp)
    1604:	2401000f 	li	at,15
    1608:	14410008 	bne	v0,at,162c <func_80A1450C+0x190>
    160c:	00000000 	nop
    1610:	8619001c 	lh	t9,28(s0)
    1614:	24010004 	li	at,4
    1618:	02002025 	move	a0,s0
    161c:	17210003 	bne	t9,at,162c <func_80A1450C+0x190>
    1620:	00000000 	nop
    1624:	0c000000 	jal	0 <func_80A13070>
    1628:	8fa50024 	lw	a1,36(sp)
    162c:	0c000000 	jal	0 <func_80A13070>
    1630:	02002025 	move	a0,s0
    1634:	8fbf001c 	lw	ra,28(sp)
    1638:	8fb00018 	lw	s0,24(sp)
    163c:	27bd0020 	addiu	sp,sp,32
    1640:	03e00008 	jr	ra
    1644:	00000000 	nop

00001648 <EnFirefly_Update>:
    1648:	27bdffc0 	addiu	sp,sp,-64
    164c:	afbf0024 	sw	ra,36(sp)
    1650:	afb00020 	sw	s0,32(sp)
    1654:	afa50044 	sw	a1,68(sp)
    1658:	90820324 	lbu	v0,804(a0)
    165c:	00808025 	move	s0,a0
    1660:	304e0002 	andi	t6,v0,0x2
    1664:	11c00010 	beqz	t6,16a8 <EnFirefly_Update+0x60>
    1668:	304ffffd 	andi	t7,v0,0xfffd
    166c:	a08f0324 	sb	t7,804(a0)
    1670:	0c000000 	jal	0 <func_80A13070>
    1674:	24053840 	li	a1,14400
    1678:	921801b9 	lbu	t8,441(s0)
    167c:	53000004 	beqzl	t8,1690 <EnFirefly_Update+0x48>
    1680:	8e0801b4 	lw	t0,436(s0)
    1684:	0c000000 	jal	0 <func_80A13070>
    1688:	02002025 	move	a0,s0
    168c:	8e0801b4 	lw	t0,436(s0)
    1690:	3c190000 	lui	t9,0x0
    1694:	27390000 	addiu	t9,t9,0
    1698:	53280004 	beql	t9,t0,16ac <EnFirefly_Update+0x64>
    169c:	02002025 	move	a0,s0
    16a0:	0c000000 	jal	0 <func_80A13070>
    16a4:	02002025 	move	a0,s0
    16a8:	02002025 	move	a0,s0
    16ac:	0c000000 	jal	0 <func_80A13070>
    16b0:	8fa50044 	lw	a1,68(sp)
    16b4:	8e1901b4 	lw	t9,436(s0)
    16b8:	02002025 	move	a0,s0
    16bc:	8fa50044 	lw	a1,68(sp)
    16c0:	0320f809 	jalr	t9
    16c4:	00000000 	nop
    16c8:	8e090004 	lw	t1,4(s0)
    16cc:	312a8000 	andi	t2,t1,0x8000
    16d0:	55400017 	bnezl	t2,1730 <EnFirefly_Update+0xe8>
    16d4:	3c014120 	lui	at,0x4120
    16d8:	920b00af 	lbu	t3,175(s0)
    16dc:	11600006 	beqz	t3,16f8 <EnFirefly_Update+0xb0>
    16e0:	00000000 	nop
    16e4:	8e0201b4 	lw	v0,436(s0)
    16e8:	3c0c0000 	lui	t4,0x0
    16ec:	258c0000 	addiu	t4,t4,0
    16f0:	15820005 	bne	t4,v0,1708 <EnFirefly_Update+0xc0>
    16f4:	3c0d0000 	lui	t5,0x0
    16f8:	0c000000 	jal	0 <func_80A13070>
    16fc:	02002025 	move	a0,s0
    1700:	1000000b 	b	1730 <EnFirefly_Update+0xe8>
    1704:	3c014120 	lui	at,0x4120
    1708:	25ad0000 	addiu	t5,t5,0
    170c:	11a20005 	beq	t5,v0,1724 <EnFirefly_Update+0xdc>
    1710:	00000000 	nop
    1714:	860e00b4 	lh	t6,180(s0)
    1718:	240f1554 	li	t7,5460
    171c:	01eec023 	subu	t8,t7,t6
    1720:	a6180030 	sh	t8,48(s0)
    1724:	0c000000 	jal	0 <func_80A13070>
    1728:	02002025 	move	a0,s0
    172c:	3c014120 	lui	at,0x4120
    1730:	44810000 	mtc1	at,$f0
    1734:	3c014170 	lui	at,0x4170
    1738:	44812000 	mtc1	at,$f4
    173c:	24080007 	li	t0,7
    1740:	44060000 	mfc1	a2,$f0
    1744:	44070000 	mfc1	a3,$f0
    1748:	afa80014 	sw	t0,20(sp)
    174c:	8fa40044 	lw	a0,68(sp)
    1750:	02002825 	move	a1,s0
    1754:	0c000000 	jal	0 <func_80A13070>
    1758:	e7a40010 	swc1	$f4,16(sp)
    175c:	c6060024 	lwc1	$f6,36(s0)
    1760:	8e0a0330 	lw	t2,816(s0)
    1764:	3c014120 	lui	at,0x4120
    1768:	4600320d 	trunc.w.s	$f8,$f6
    176c:	44818000 	mtc1	at,$f16
    1770:	3c080000 	lui	t0,0x0
    1774:	3c010001 	lui	at,0x1
    1778:	44094000 	mfc1	t1,$f8
    177c:	25080000 	addiu	t0,t0,0
    1780:	3c190000 	lui	t9,0x0
    1784:	a5490030 	sh	t1,48(t2)
    1788:	c60a0028 	lwc1	$f10,40(s0)
    178c:	8e0d0330 	lw	t5,816(s0)
    1790:	34211e60 	ori	at,at,0x1e60
    1794:	46105480 	add.s	$f18,$f10,$f16
    1798:	27390000 	addiu	t9,t9,0
    179c:	4600910d 	trunc.w.s	$f4,$f18
    17a0:	440c2000 	mfc1	t4,$f4
    17a4:	00000000 	nop
    17a8:	a5ac0032 	sh	t4,50(t5)
    17ac:	c606002c 	lwc1	$f6,44(s0)
    17b0:	8e180330 	lw	t8,816(s0)
    17b4:	4600320d 	trunc.w.s	$f8,$f6
    17b8:	440e4000 	mfc1	t6,$f8
    17bc:	00000000 	nop
    17c0:	a70e0034 	sh	t6,52(t8)
    17c4:	8e0201b4 	lw	v0,436(s0)
    17c8:	8fa40044 	lw	a0,68(sp)
    17cc:	11020003 	beq	t0,v0,17dc <EnFirefly_Update+0x194>
    17d0:	00812821 	addu	a1,a0,at
    17d4:	57220004 	bnel	t9,v0,17e8 <EnFirefly_Update+0x1a0>
    17d8:	8fa40044 	lw	a0,68(sp)
    17dc:	0c000000 	jal	0 <func_80A13070>
    17e0:	26060314 	addiu	a2,s0,788
    17e4:	8fa40044 	lw	a0,68(sp)
    17e8:	3c010001 	lui	at,0x1
    17ec:	34211e60 	ori	at,at,0x1e60
    17f0:	260a0314 	addiu	t2,s0,788
    17f4:	00814821 	addu	t1,a0,at
    17f8:	afa90030 	sw	t1,48(sp)
    17fc:	afaa002c 	sw	t2,44(sp)
    1800:	920b00af 	lbu	t3,175(s0)
    1804:	01202825 	move	a1,t1
    1808:	5160000d 	beqzl	t3,1840 <EnFirefly_Update+0x1f8>
    180c:	8fa40044 	lw	a0,68(sp)
    1810:	0c000000 	jal	0 <func_80A13070>
    1814:	01403025 	move	a2,t2
    1818:	860c00b6 	lh	t4,182(s0)
    181c:	26040170 	addiu	a0,s0,368
    1820:	3c0540a0 	lui	a1,0x40a0
    1824:	0c000000 	jal	0 <func_80A13070>
    1828:	a60c0032 	sh	t4,50(s0)
    182c:	10400003 	beqz	v0,183c <EnFirefly_Update+0x1f4>
    1830:	02002025 	move	a0,s0
    1834:	0c000000 	jal	0 <func_80A13070>
    1838:	24053841 	li	a1,14401
    183c:	8fa40044 	lw	a0,68(sp)
    1840:	8fa50030 	lw	a1,48(sp)
    1844:	0c000000 	jal	0 <func_80A13070>
    1848:	8fa6002c 	lw	a2,44(sp)
    184c:	0c000000 	jal	0 <func_80A13070>
    1850:	860400b4 	lh	a0,180(s0)
    1854:	e7a00034 	swc1	$f0,52(sp)
    1858:	0c000000 	jal	0 <func_80A13070>
    185c:	860400b6 	lh	a0,182(s0)
    1860:	3c014120 	lui	at,0x4120
    1864:	44815000 	mtc1	at,$f10
    1868:	c7b00034 	lwc1	$f16,52(sp)
    186c:	c6060024 	lwc1	$f6,36(s0)
    1870:	860400b4 	lh	a0,180(s0)
    1874:	46105482 	mul.s	$f18,$f10,$f16
    1878:	00000000 	nop
    187c:	46120102 	mul.s	$f4,$f0,$f18
    1880:	46062200 	add.s	$f8,$f4,$f6
    1884:	0c000000 	jal	0 <func_80A13070>
    1888:	e6080038 	swc1	$f8,56(s0)
    188c:	3c014120 	lui	at,0x4120
    1890:	44815000 	mtc1	at,$f10
    1894:	c6120028 	lwc1	$f18,40(s0)
    1898:	860400b4 	lh	a0,180(s0)
    189c:	460a0402 	mul.s	$f16,$f0,$f10
    18a0:	46128100 	add.s	$f4,$f16,$f18
    18a4:	0c000000 	jal	0 <func_80A13070>
    18a8:	e604003c 	swc1	$f4,60(s0)
    18ac:	e7a00034 	swc1	$f0,52(sp)
    18b0:	0c000000 	jal	0 <func_80A13070>
    18b4:	860400b6 	lh	a0,182(s0)
    18b8:	3c014120 	lui	at,0x4120
    18bc:	44813000 	mtc1	at,$f6
    18c0:	c7a80034 	lwc1	$f8,52(sp)
    18c4:	c612002c 	lwc1	$f18,44(s0)
    18c8:	46083282 	mul.s	$f10,$f6,$f8
    18cc:	00000000 	nop
    18d0:	460a0402 	mul.s	$f16,$f0,$f10
    18d4:	46128100 	add.s	$f4,$f16,$f18
    18d8:	e6040040 	swc1	$f4,64(s0)
    18dc:	8fbf0024 	lw	ra,36(sp)
    18e0:	8fb00020 	lw	s0,32(sp)
    18e4:	27bd0040 	addiu	sp,sp,64
    18e8:	03e00008 	jr	ra
    18ec:	00000000 	nop

000018f0 <func_80A14960>:
    18f0:	8faf0014 	lw	t7,20(sp)
    18f4:	3c0e0000 	lui	t6,0x0
    18f8:	25ce0000 	addiu	t6,t6,0
    18fc:	8df80134 	lw	t8,308(t7)
    1900:	24010001 	li	at,1
    1904:	15d80007 	bne	t6,t8,1924 <func_80A14960+0x34>
    1908:	00000000 	nop
    190c:	90991c27 	lbu	t9,7207(a0)
    1910:	00001025 	move	v0,zero
    1914:	17200003 	bnez	t9,1924 <func_80A14960+0x34>
    1918:	00000000 	nop
    191c:	03e00008 	jr	ra
    1920:	acc00000 	sw	zero,0(a2)
    1924:	14a10005 	bne	a1,at,193c <func_80A14960+0x4c>
    1928:	3c010000 	lui	at,0x0
    192c:	c4260000 	lwc1	$f6,0(at)
    1930:	c4e40004 	lwc1	$f4,4(a3)
    1934:	46062200 	add.s	$f8,$f4,$f6
    1938:	e4e80004 	swc1	$f8,4(a3)
    193c:	03e00008 	jr	ra
    1940:	00001025 	move	v0,zero

00001944 <func_80A149B4>:
    1944:	27bdff60 	addiu	sp,sp,-160
    1948:	afb00030 	sw	s0,48(sp)
    194c:	8fb000b0 	lw	s0,176(sp)
    1950:	afbf0034 	sw	ra,52(sp)
    1954:	afa400a0 	sw	a0,160(sp)
    1958:	afa600a8 	sw	a2,168(sp)
    195c:	afa700ac 	sw	a3,172(sp)
    1960:	920e01b9 	lbu	t6,441(s0)
    1964:	2401001b 	li	at,27
    1968:	55c0000d 	bnezl	t6,19a0 <func_80A149B4+0x5c>
    196c:	920201b8 	lbu	v0,440(s0)
    1970:	14a1000a 	bne	a1,at,199c <func_80A149B4+0x58>
    1974:	8fa400b4 	lw	a0,180(sp)
    1978:	8c830000 	lw	v1,0(a0)
    197c:	3c190600 	lui	t9,0x600
    1980:	27391678 	addiu	t9,t9,5752
    1984:	246f0008 	addiu	t7,v1,8
    1988:	ac8f0000 	sw	t7,0(a0)
    198c:	3c18de00 	lui	t8,0xde00
    1990:	ac780000 	sw	t8,0(v1)
    1994:	100000af 	b	1c54 <func_80A149B4+0x310>
    1998:	ac790004 	sw	t9,4(v1)
    199c:	920201b8 	lbu	v0,440(s0)
    19a0:	24010001 	li	at,1
    19a4:	10410002 	beq	v0,at,19b0 <func_80A149B4+0x6c>
    19a8:	24010002 	li	at,2
    19ac:	144100a9 	bne	v0,at,1c54 <func_80A149B4+0x310>
    19b0:	2402000f 	li	v0,15
    19b4:	10a20003 	beq	a1,v0,19c4 <func_80A149B4+0x80>
    19b8:	24010015 	li	at,21
    19bc:	54a100a6 	bnel	a1,at,1c58 <func_80A149B4+0x314>
    19c0:	2402000f 	li	v0,15
    19c4:	8e0b01b4 	lw	t3,436(s0)
    19c8:	3c0a0000 	lui	t2,0x0
    19cc:	254a0000 	addiu	t2,t2,0
    19d0:	114b001c 	beq	t2,t3,1a44 <func_80A149B4+0x100>
    19d4:	27a40048 	addiu	a0,sp,72
    19d8:	0c000000 	jal	0 <func_80A13070>
    19dc:	afa500a4 	sw	a1,164(sp)
    19e0:	0c000000 	jal	0 <func_80A13070>
    19e4:	00000000 	nop
    19e8:	3c0140a0 	lui	at,0x40a0
    19ec:	44812000 	mtc1	at,$f4
    19f0:	c7a80078 	lwc1	$f8,120(sp)
    19f4:	46040182 	mul.s	$f6,$f0,$f4
    19f8:	46083280 	add.s	$f10,$f6,$f8
    19fc:	0c000000 	jal	0 <func_80A13070>
    1a00:	e7aa0094 	swc1	$f10,148(sp)
    1a04:	3c0140a0 	lui	at,0x40a0
    1a08:	44818000 	mtc1	at,$f16
    1a0c:	c7a4007c 	lwc1	$f4,124(sp)
    1a10:	46100482 	mul.s	$f18,$f0,$f16
    1a14:	46049180 	add.s	$f6,$f18,$f4
    1a18:	0c000000 	jal	0 <func_80A13070>
    1a1c:	e7a60098 	swc1	$f6,152(sp)
    1a20:	3c0140a0 	lui	at,0x40a0
    1a24:	44814000 	mtc1	at,$f8
    1a28:	c7b00080 	lwc1	$f16,128(sp)
    1a2c:	2408ffd8 	li	t0,-40
    1a30:	46080282 	mul.s	$f10,$f0,$f8
    1a34:	24090003 	li	t1,3
    1a38:	46105480 	add.s	$f18,$f10,$f16
    1a3c:	1000006b 	b	1bec <func_80A149B4+0x2a8>
    1a40:	e7b2009c 	swc1	$f18,156(sp)
    1a44:	54a20030 	bnel	a1,v0,1b08 <func_80A149B4+0x1c4>
    1a48:	860401ba 	lh	a0,442(s0)
    1a4c:	860401ba 	lh	a0,442(s0)
    1a50:	afa500a4 	sw	a1,164(sp)
    1a54:	00800821 	move	at,a0
    1a58:	000420c0 	sll	a0,a0,0x3
    1a5c:	00812021 	addu	a0,a0,at
    1a60:	000420c0 	sll	a0,a0,0x3
    1a64:	00812023 	subu	a0,a0,at
    1a68:	000420c0 	sll	a0,a0,0x3
    1a6c:	00812021 	addu	a0,a0,at
    1a70:	00042080 	sll	a0,a0,0x2
    1a74:	00812023 	subu	a0,a0,at
    1a78:	00042080 	sll	a0,a0,0x2
    1a7c:	00042400 	sll	a0,a0,0x10
    1a80:	0c000000 	jal	0 <func_80A13070>
    1a84:	00042403 	sra	a0,a0,0x10
    1a88:	860c01ba 	lh	t4,442(s0)
    1a8c:	c60a0024 	lwc1	$f10,36(s0)
    1a90:	448c2000 	mtc1	t4,$f4
    1a94:	00000000 	nop
    1a98:	468021a0 	cvt.s.w	$f6,$f4
    1a9c:	46060202 	mul.s	$f8,$f0,$f6
    1aa0:	460a4400 	add.s	$f16,$f8,$f10
    1aa4:	e7b00094 	swc1	$f16,148(sp)
    1aa8:	860401ba 	lh	a0,442(s0)
    1aac:	00800821 	move	at,a0
    1ab0:	000420c0 	sll	a0,a0,0x3
    1ab4:	00812021 	addu	a0,a0,at
    1ab8:	000420c0 	sll	a0,a0,0x3
    1abc:	00812023 	subu	a0,a0,at
    1ac0:	000420c0 	sll	a0,a0,0x3
    1ac4:	00812021 	addu	a0,a0,at
    1ac8:	00042080 	sll	a0,a0,0x2
    1acc:	00812023 	subu	a0,a0,at
    1ad0:	00042080 	sll	a0,a0,0x2
    1ad4:	00042400 	sll	a0,a0,0x10
    1ad8:	0c000000 	jal	0 <func_80A13070>
    1adc:	00042403 	sra	a0,a0,0x10
    1ae0:	860d01ba 	lh	t5,442(s0)
    1ae4:	c608002c 	lwc1	$f8,44(s0)
    1ae8:	448d9000 	mtc1	t5,$f18
    1aec:	00000000 	nop
    1af0:	46809120 	cvt.s.w	$f4,$f18
    1af4:	46040182 	mul.s	$f6,$f0,$f4
    1af8:	46083280 	add.s	$f10,$f6,$f8
    1afc:	1000002e 	b	1bb8 <func_80A149B4+0x274>
    1b00:	e7aa009c 	swc1	$f10,156(sp)
    1b04:	860401ba 	lh	a0,442(s0)
    1b08:	afa500a4 	sw	a1,164(sp)
    1b0c:	00800821 	move	at,a0
    1b10:	000420c0 	sll	a0,a0,0x3
    1b14:	00812021 	addu	a0,a0,at
    1b18:	000420c0 	sll	a0,a0,0x3
    1b1c:	00812023 	subu	a0,a0,at
    1b20:	000420c0 	sll	a0,a0,0x3
    1b24:	00812021 	addu	a0,a0,at
    1b28:	00042080 	sll	a0,a0,0x2
    1b2c:	00812023 	subu	a0,a0,at
    1b30:	00042080 	sll	a0,a0,0x2
    1b34:	00042400 	sll	a0,a0,0x10
    1b38:	0c000000 	jal	0 <func_80A13070>
    1b3c:	00042403 	sra	a0,a0,0x10
    1b40:	860e01ba 	lh	t6,442(s0)
    1b44:	c6100024 	lwc1	$f16,36(s0)
    1b48:	448e9000 	mtc1	t6,$f18
    1b4c:	00000000 	nop
    1b50:	46809120 	cvt.s.w	$f4,$f18
    1b54:	46040182 	mul.s	$f6,$f0,$f4
    1b58:	46068201 	sub.s	$f8,$f16,$f6
    1b5c:	e7a80094 	swc1	$f8,148(sp)
    1b60:	860401ba 	lh	a0,442(s0)
    1b64:	00800821 	move	at,a0
    1b68:	000420c0 	sll	a0,a0,0x3
    1b6c:	00812021 	addu	a0,a0,at
    1b70:	000420c0 	sll	a0,a0,0x3
    1b74:	00812023 	subu	a0,a0,at
    1b78:	000420c0 	sll	a0,a0,0x3
    1b7c:	00812021 	addu	a0,a0,at
    1b80:	00042080 	sll	a0,a0,0x2
    1b84:	00812023 	subu	a0,a0,at
    1b88:	00042080 	sll	a0,a0,0x2
    1b8c:	00042400 	sll	a0,a0,0x10
    1b90:	0c000000 	jal	0 <func_80A13070>
    1b94:	00042403 	sra	a0,a0,0x10
    1b98:	860f01ba 	lh	t7,442(s0)
    1b9c:	c60a002c 	lwc1	$f10,44(s0)
    1ba0:	448f9000 	mtc1	t7,$f18
    1ba4:	00000000 	nop
    1ba8:	46809120 	cvt.s.w	$f4,$f18
    1bac:	46040402 	mul.s	$f16,$f0,$f4
    1bb0:	46105181 	sub.s	$f6,$f10,$f16
    1bb4:	e7a6009c 	swc1	$f6,156(sp)
    1bb8:	861801ba 	lh	t8,442(s0)
    1bbc:	2419000f 	li	t9,15
    1bc0:	3c013fc0 	lui	at,0x3fc0
    1bc4:	03385023 	subu	t2,t9,t8
    1bc8:	448a4000 	mtc1	t2,$f8
    1bcc:	44812000 	mtc1	at,$f4
    1bd0:	c6100028 	lwc1	$f16,40(s0)
    1bd4:	468044a0 	cvt.s.w	$f18,$f8
    1bd8:	2408fffb 	li	t0,-5
    1bdc:	2409000a 	li	t1,10
    1be0:	46049282 	mul.s	$f10,$f18,$f4
    1be4:	460a8180 	add.s	$f6,$f16,$f10
    1be8:	e7a60098 	swc1	$f6,152(sp)
    1bec:	920b01b8 	lbu	t3,440(s0)
    1bf0:	24010001 	li	at,1
    1bf4:	8fa400a0 	lw	a0,160(sp)
    1bf8:	15610006 	bne	t3,at,1c14 <func_80A149B4+0x2d0>
    1bfc:	27a50094 	addiu	a1,sp,148
    1c00:	3c020000 	lui	v0,0x0
    1c04:	3c030000 	lui	v1,0x0
    1c08:	24420000 	addiu	v0,v0,0
    1c0c:	10000005 	b	1c24 <func_80A149B4+0x2e0>
    1c10:	24630000 	addiu	v1,v1,0
    1c14:	3c020000 	lui	v0,0x0
    1c18:	3c030000 	lui	v1,0x0
    1c1c:	24420000 	addiu	v0,v0,0
    1c20:	24630000 	addiu	v1,v1,0
    1c24:	3c060000 	lui	a2,0x0
    1c28:	3c070000 	lui	a3,0x0
    1c2c:	240c00fa 	li	t4,250
    1c30:	afac0018 	sw	t4,24(sp)
    1c34:	24e70000 	addiu	a3,a3,0
    1c38:	24c60000 	addiu	a2,a2,0
    1c3c:	afa20010 	sw	v0,16(sp)
    1c40:	afa30014 	sw	v1,20(sp)
    1c44:	afa8001c 	sw	t0,28(sp)
    1c48:	0c000000 	jal	0 <func_80A13070>
    1c4c:	afa90020 	sw	t1,32(sp)
    1c50:	8fa500a4 	lw	a1,164(sp)
    1c54:	2402000f 	li	v0,15
    1c58:	10a20005 	beq	a1,v0,1c70 <func_80A149B4+0x32c>
    1c5c:	24010015 	li	at,21
    1c60:	10a10003 	beq	a1,at,1c70 <func_80A149B4+0x32c>
    1c64:	2401000a 	li	at,10
    1c68:	54a10015 	bnel	a1,at,1cc0 <func_80A149B4+0x37c>
    1c6c:	8fbf0034 	lw	ra,52(sp)
    1c70:	14a20003 	bne	a1,v0,1c80 <func_80A149B4+0x33c>
    1c74:	3c040000 	lui	a0,0x0
    1c78:	10000007 	b	1c98 <func_80A149B4+0x354>
    1c7c:	2605014c 	addiu	a1,s0,332
    1c80:	24010015 	li	at,21
    1c84:	54a10004 	bnel	a1,at,1c98 <func_80A149B4+0x354>
    1c88:	26050164 	addiu	a1,s0,356
    1c8c:	10000002 	b	1c98 <func_80A149B4+0x354>
    1c90:	26050158 	addiu	a1,s0,344
    1c94:	26050164 	addiu	a1,s0,356
    1c98:	24840000 	addiu	a0,a0,0
    1c9c:	0c000000 	jal	0 <func_80A13070>
    1ca0:	afa50090 	sw	a1,144(sp)
    1ca4:	8fa50090 	lw	a1,144(sp)
    1ca8:	3c0140a0 	lui	at,0x40a0
    1cac:	44819000 	mtc1	at,$f18
    1cb0:	c4a80004 	lwc1	$f8,4(a1)
    1cb4:	46124101 	sub.s	$f4,$f8,$f18
    1cb8:	e4a40004 	swc1	$f4,4(a1)
    1cbc:	8fbf0034 	lw	ra,52(sp)
    1cc0:	8fb00030 	lw	s0,48(sp)
    1cc4:	27bd00a0 	addiu	sp,sp,160
    1cc8:	03e00008 	jr	ra
    1ccc:	00000000 	nop

00001cd0 <EnFirefly_Draw>:
    1cd0:	27bdffa8 	addiu	sp,sp,-88
    1cd4:	afbf002c 	sw	ra,44(sp)
    1cd8:	afb00028 	sw	s0,40(sp)
    1cdc:	afa40058 	sw	a0,88(sp)
    1ce0:	afa5005c 	sw	a1,92(sp)
    1ce4:	8ca50000 	lw	a1,0(a1)
    1ce8:	3c060000 	lui	a2,0x0
    1cec:	24c60000 	addiu	a2,a2,0
    1cf0:	27a40040 	addiu	a0,sp,64
    1cf4:	240706c5 	li	a3,1733
    1cf8:	0c000000 	jal	0 <func_80A13070>
    1cfc:	00a08025 	move	s0,a1
    1d00:	8faf005c 	lw	t7,92(sp)
    1d04:	0c000000 	jal	0 <func_80A13070>
    1d08:	8de40000 	lw	a0,0(t7)
    1d0c:	8fa80058 	lw	t0,88(sp)
    1d10:	3c070000 	lui	a3,0x0
    1d14:	3c0d0000 	lui	t5,0x0
    1d18:	911801b9 	lbu	t8,441(t0)
    1d1c:	25ad0000 	addiu	t5,t5,0
    1d20:	24e70000 	addiu	a3,a3,0
    1d24:	53000009 	beqzl	t8,1d4c <EnFirefly_Draw+0x7c>
    1d28:	8e0302c0 	lw	v1,704(s0)
    1d2c:	8e0302c0 	lw	v1,704(s0)
    1d30:	3c09fb00 	lui	t1,0xfb00
    1d34:	24790008 	addiu	t9,v1,8
    1d38:	ae1902c0 	sw	t9,704(s0)
    1d3c:	ac600004 	sw	zero,4(v1)
    1d40:	10000008 	b	1d64 <EnFirefly_Draw+0x94>
    1d44:	ac690000 	sw	t1,0(v1)
    1d48:	8e0302c0 	lw	v1,704(s0)
    1d4c:	3c0bfb00 	lui	t3,0xfb00
    1d50:	240c00ff 	li	t4,255
    1d54:	246a0008 	addiu	t2,v1,8
    1d58:	ae0a02c0 	sw	t2,704(s0)
    1d5c:	ac6c0004 	sw	t4,4(v1)
    1d60:	ac6b0000 	sw	t3,0(v1)
    1d64:	8d050174 	lw	a1,372(t0)
    1d68:	8d060190 	lw	a2,400(t0)
    1d6c:	afa80014 	sw	t0,20(sp)
    1d70:	afad0010 	sw	t5,16(sp)
    1d74:	8e0e02c0 	lw	t6,704(s0)
    1d78:	8fa4005c 	lw	a0,92(sp)
    1d7c:	0c000000 	jal	0 <func_80A13070>
    1d80:	afae0018 	sw	t6,24(sp)
    1d84:	ae0202c0 	sw	v0,704(s0)
    1d88:	8faf005c 	lw	t7,92(sp)
    1d8c:	3c060000 	lui	a2,0x0
    1d90:	24c60000 	addiu	a2,a2,0
    1d94:	27a40040 	addiu	a0,sp,64
    1d98:	240706e3 	li	a3,1763
    1d9c:	0c000000 	jal	0 <func_80A13070>
    1da0:	8de50000 	lw	a1,0(t7)
    1da4:	8fbf002c 	lw	ra,44(sp)
    1da8:	8fb00028 	lw	s0,40(sp)
    1dac:	27bd0058 	addiu	sp,sp,88
    1db0:	03e00008 	jr	ra
    1db4:	00000000 	nop

00001db8 <func_80A14E28>:
    1db8:	27bdffa8 	addiu	sp,sp,-88
    1dbc:	afbf002c 	sw	ra,44(sp)
    1dc0:	afb00028 	sw	s0,40(sp)
    1dc4:	afa40058 	sw	a0,88(sp)
    1dc8:	afa5005c 	sw	a1,92(sp)
    1dcc:	8ca50000 	lw	a1,0(a1)
    1dd0:	3c060000 	lui	a2,0x0
    1dd4:	24c60000 	addiu	a2,a2,0
    1dd8:	27a40040 	addiu	a0,sp,64
    1ddc:	240706ef 	li	a3,1775
    1de0:	0c000000 	jal	0 <func_80A13070>
    1de4:	00a08025 	move	s0,a1
    1de8:	8faf005c 	lw	t7,92(sp)
    1dec:	0c000000 	jal	0 <func_80A13070>
    1df0:	8de40000 	lw	a0,0(t7)
    1df4:	8fa80058 	lw	t0,88(sp)
    1df8:	3c070000 	lui	a3,0x0
    1dfc:	3c0d0000 	lui	t5,0x0
    1e00:	911801b9 	lbu	t8,441(t0)
    1e04:	25ad0000 	addiu	t5,t5,0
    1e08:	24e70000 	addiu	a3,a3,0
    1e0c:	53000009 	beqzl	t8,1e34 <func_80A14E28+0x7c>
    1e10:	8e0302d0 	lw	v1,720(s0)
    1e14:	8e0302d0 	lw	v1,720(s0)
    1e18:	3c09fb00 	lui	t1,0xfb00
    1e1c:	24790008 	addiu	t9,v1,8
    1e20:	ae1902d0 	sw	t9,720(s0)
    1e24:	ac600004 	sw	zero,4(v1)
    1e28:	10000008 	b	1e4c <func_80A14E28+0x94>
    1e2c:	ac690000 	sw	t1,0(v1)
    1e30:	8e0302d0 	lw	v1,720(s0)
    1e34:	3c0bfb00 	lui	t3,0xfb00
    1e38:	240c00ff 	li	t4,255
    1e3c:	246a0008 	addiu	t2,v1,8
    1e40:	ae0a02d0 	sw	t2,720(s0)
    1e44:	ac6c0004 	sw	t4,4(v1)
    1e48:	ac6b0000 	sw	t3,0(v1)
    1e4c:	8d050174 	lw	a1,372(t0)
    1e50:	8d060190 	lw	a2,400(t0)
    1e54:	afa80014 	sw	t0,20(sp)
    1e58:	afad0010 	sw	t5,16(sp)
    1e5c:	8e0e02d0 	lw	t6,720(s0)
    1e60:	8fa4005c 	lw	a0,92(sp)
    1e64:	0c000000 	jal	0 <func_80A13070>
    1e68:	afae0018 	sw	t6,24(sp)
    1e6c:	ae0202d0 	sw	v0,720(s0)
    1e70:	8faf005c 	lw	t7,92(sp)
    1e74:	3c060000 	lui	a2,0x0
    1e78:	24c60000 	addiu	a2,a2,0
    1e7c:	27a40040 	addiu	a0,sp,64
    1e80:	2407070d 	li	a3,1805
    1e84:	0c000000 	jal	0 <func_80A13070>
    1e88:	8de50000 	lw	a1,0(t7)
    1e8c:	8fbf002c 	lw	ra,44(sp)
    1e90:	8fb00028 	lw	s0,40(sp)
    1e94:	27bd0058 	addiu	sp,sp,88
    1e98:	03e00008 	jr	ra
    1e9c:	00000000 	nop
