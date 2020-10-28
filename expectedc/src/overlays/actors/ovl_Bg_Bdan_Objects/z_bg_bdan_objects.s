
build/src/overlays/actors/ovl_Bg_Bdan_Objects/z_bg_bdan_objects.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgBdanObjects_GetContactRu1>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	10a00008 	beqz	a1,28 <BgBdanObjects_GetContactRu1+0x28>
       8:	afbf0014 	sw	ra,20(sp)
       c:	24010003 	li	at,3
      10:	10a1000c 	beq	a1,at,44 <BgBdanObjects_GetContactRu1+0x44>
      14:	24010004 	li	at,4
      18:	10a10007 	beq	a1,at,38 <BgBdanObjects_GetContactRu1+0x38>
      1c:	3c020000 	lui	v0,0x0
      20:	1000000c 	b	54 <BgBdanObjects_GetContactRu1+0x54>
      24:	3c040000 	lui	a0,0x0
      28:	8c8201b8 	lw	v0,440(a0)
      2c:	38420001 	xori	v0,v0,0x1
      30:	1000000b 	b	60 <BgBdanObjects_GetContactRu1+0x60>
      34:	2c420001 	sltiu	v0,v0,1
      38:	94420f20 	lhu	v0,3872(v0)
      3c:	10000008 	b	60 <BgBdanObjects_GetContactRu1+0x60>
      40:	30420040 	andi	v0,v0,0x40
      44:	8c8201b8 	lw	v0,440(a0)
      48:	38420004 	xori	v0,v0,0x4
      4c:	10000004 	b	60 <BgBdanObjects_GetContactRu1+0x60>
      50:	2c420001 	sltiu	v0,v0,1
      54:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
      58:	24840000 	addiu	a0,a0,0
      5c:	2402ffff 	li	v0,-1
      60:	8fbf0014 	lw	ra,20(sp)
      64:	27bd0018 	addiu	sp,sp,24
      68:	03e00008 	jr	ra
      6c:	00000000 	nop

00000070 <BgBdanObjects_SetContactRu1>:
      70:	27bdffe8 	addiu	sp,sp,-24
      74:	24010001 	li	at,1
      78:	10a10009 	beq	a1,at,a0 <BgBdanObjects_SetContactRu1+0x30>
      7c:	afbf0014 	sw	ra,20(sp)
      80:	24010002 	li	at,2
      84:	10a10009 	beq	a1,at,ac <BgBdanObjects_SetContactRu1+0x3c>
      88:	240f0003 	li	t7,3
      8c:	24010004 	li	at,4
      90:	10a10008 	beq	a1,at,b4 <BgBdanObjects_SetContactRu1+0x44>
      94:	3c020000 	lui	v0,0x0
      98:	1000000b 	b	c8 <BgBdanObjects_SetContactRu1+0x58>
      9c:	00000000 	nop
      a0:	240e0002 	li	t6,2
      a4:	1000000b 	b	d4 <BgBdanObjects_SetContactRu1+0x64>
      a8:	ac8e01b8 	sw	t6,440(a0)
      ac:	10000009 	b	d4 <BgBdanObjects_SetContactRu1+0x64>
      b0:	ac8f01b8 	sw	t7,440(a0)
      b4:	24420000 	addiu	v0,v0,0
      b8:	94580f20 	lhu	t8,3872(v0)
      bc:	37190040 	ori	t9,t8,0x40
      c0:	10000004 	b	d4 <BgBdanObjects_SetContactRu1+0x64>
      c4:	a4590f20 	sh	t9,3872(v0)
      c8:	3c040000 	lui	a0,0x0
      cc:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
      d0:	24840044 	addiu	a0,a0,68
      d4:	8fbf0014 	lw	ra,20(sp)
      d8:	27bd0018 	addiu	sp,sp,24
      dc:	03e00008 	jr	ra
      e0:	00000000 	nop

000000e4 <BgBdanObjects_Init>:
      e4:	27bdffb0 	addiu	sp,sp,-80
      e8:	afb10038 	sw	s1,56(sp)
      ec:	00a08825 	move	s1,a1
      f0:	afbf003c 	sw	ra,60(sp)
      f4:	afb00034 	sw	s0,52(sp)
      f8:	3c050000 	lui	a1,0x0
      fc:	00808025 	move	s0,a0
     100:	afa00044 	sw	zero,68(sp)
     104:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     108:	24a5004c 	addiu	a1,a1,76
     10c:	02002025 	move	a0,s0
     110:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     114:	24050001 	li	a1,1
     118:	8619001c 	lh	t9,28(s0)
     11c:	860e001c 	lh	t6,28(s0)
     120:	24010002 	li	at,2
     124:	332800ff 	andi	t0,t9,0xff
     128:	a608001c 	sh	t0,28(s0)
     12c:	8602001c 	lh	v0,28(s0)
     130:	000e7a03 	sra	t7,t6,0x8
     134:	31f8003f 	andi	t8,t7,0x3f
     138:	1441000e 	bne	v0,at,174 <BgBdanObjects_Init+0x90>
     13c:	a2180168 	sb	t8,360(s0)
     140:	8e090004 	lw	t1,4(s0)
     144:	c6040028 	lwc1	$f4,40(s0)
     148:	3c0f0000 	lui	t7,0x0
     14c:	352a0030 	ori	t2,t1,0x30
     150:	4600218d 	trunc.w.s	$f6,$f4
     154:	ae0a0004 	sw	t2,4(s0)
     158:	8e2d07c0 	lw	t5,1984(s1)
     15c:	25ef0000 	addiu	t7,t7,0
     160:	440c3000 	mfc1	t4,$f6
     164:	8dae0028 	lw	t6,40(t5)
     168:	a5cc0072 	sh	t4,114(t6)
     16c:	10000078 	b	350 <BgBdanObjects_Init+0x26c>
     170:	ae0f0164 	sw	t7,356(s0)
     174:	14400050 	bnez	v0,2b8 <BgBdanObjects_Init+0x1d4>
     178:	24010001 	li	at,1
     17c:	3c040000 	lui	a0,0x0
     180:	24840000 	addiu	a0,a0,0
     184:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     188:	27a50044 	addiu	a1,sp,68
     18c:	2605016c 	addiu	a1,s0,364
     190:	afa50040 	sw	a1,64(sp)
     194:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     198:	02202025 	move	a0,s1
     19c:	3c070000 	lui	a3,0x0
     1a0:	8fa50040 	lw	a1,64(sp)
     1a4:	24e70020 	addiu	a3,a3,32
     1a8:	02202025 	move	a0,s1
     1ac:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     1b0:	02003025 	move	a2,s0
     1b4:	3c01c29e 	lui	at,0xc29e
     1b8:	44815000 	mtc1	at,$f10
     1bc:	c6080028 	lwc1	$f8,40(s0)
     1c0:	02202025 	move	a0,s1
     1c4:	82050003 	lb	a1,3(s0)
     1c8:	460a4400 	add.s	$f16,$f8,$f10
     1cc:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     1d0:	e6100028 	swc1	$f16,40(s0)
     1d4:	10400008 	beqz	v0,1f8 <BgBdanObjects_Init+0x114>
     1d8:	02002025 	move	a0,s0
     1dc:	02202025 	move	a0,s1
     1e0:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     1e4:	92050168 	lbu	a1,360(s0)
     1e8:	3c180000 	lui	t8,0x0
     1ec:	27180000 	addiu	t8,t8,0
     1f0:	10000051 	b	338 <BgBdanObjects_Init+0x254>
     1f4:	ae180164 	sw	t8,356(s0)
     1f8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     1fc:	24050004 	li	a1,4
     200:	10400026 	beqz	v0,29c <BgBdanObjects_Init+0x1b8>
     204:	02202025 	move	a0,s1
     208:	c6120008 	lwc1	$f18,8(s0)
     20c:	34018000 	li	at,0x8000
     210:	24090003 	li	t1,3
     214:	e7b20010 	swc1	$f18,16(sp)
     218:	c604000c 	lwc1	$f4,12(s0)
     21c:	26241c24 	addiu	a0,s1,7204
     220:	02002825 	move	a1,s0
     224:	e7a40014 	swc1	$f4,20(sp)
     228:	c6060010 	lwc1	$f6,16(s0)
     22c:	afa0001c 	sw	zero,28(sp)
     230:	02203025 	move	a2,s1
     234:	e7a60018 	swc1	$f6,24(sp)
     238:	861900b6 	lh	t9,182(s0)
     23c:	afa90028 	sw	t1,40(sp)
     240:	afa00024 	sw	zero,36(sp)
     244:	03214021 	addu	t0,t9,at
     248:	afa80020 	sw	t0,32(sp)
     24c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     250:	240700c6 	li	a3,198
     254:	50400008 	beqzl	v0,278 <BgBdanObjects_Init+0x194>
     258:	3c01c28c 	lui	at,0xc28c
     25c:	8e02011c 	lw	v0,284(s0)
     260:	3c010000 	lui	at,0x0
     264:	c42a0088 	lwc1	$f10,136(at)
     268:	c4480010 	lwc1	$f8,16(v0)
     26c:	460a4400 	add.s	$f16,$f8,$f10
     270:	e450002c 	swc1	$f16,44(v0)
     274:	3c01c28c 	lui	at,0xc28c
     278:	44812000 	mtc1	at,$f4
     27c:	c612000c 	lwc1	$f18,12(s0)
     280:	3c0a0000 	lui	t2,0x0
     284:	254a0000 	addiu	t2,t2,0
     288:	46049180 	add.s	$f6,$f18,$f4
     28c:	a6000032 	sh	zero,50(s0)
     290:	ae0a0164 	sw	t2,356(s0)
     294:	10000028 	b	338 <BgBdanObjects_Init+0x254>
     298:	e6060028 	swc1	$f6,40(s0)
     29c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     2a0:	92050168 	lbu	a1,360(s0)
     2a4:	3c0b0000 	lui	t3,0x0
     2a8:	256b0000 	addiu	t3,t3,0
     2ac:	a600016a 	sh	zero,362(s0)
     2b0:	10000021 	b	338 <BgBdanObjects_Init+0x254>
     2b4:	ae0b0164 	sw	t3,356(s0)
     2b8:	1441000c 	bne	v0,at,2ec <BgBdanObjects_Init+0x208>
     2bc:	3c040000 	lui	a0,0x0
     2c0:	3c040000 	lui	a0,0x0
     2c4:	24840000 	addiu	a0,a0,0
     2c8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     2cc:	27a50044 	addiu	a1,sp,68
     2d0:	3c0c0000 	lui	t4,0x0
     2d4:	240d0200 	li	t5,512
     2d8:	258c0000 	addiu	t4,t4,0
     2dc:	a60d016a 	sh	t5,362(s0)
     2e0:	a2000168 	sb	zero,360(s0)
     2e4:	10000014 	b	338 <BgBdanObjects_Init+0x254>
     2e8:	ae0c0164 	sw	t4,356(s0)
     2ec:	24840000 	addiu	a0,a0,0
     2f0:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     2f4:	27a50044 	addiu	a1,sp,68
     2f8:	02202025 	move	a0,s1
     2fc:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     300:	92050168 	lbu	a1,360(s0)
     304:	1040000a 	beqz	v0,330 <BgBdanObjects_Init+0x24c>
     308:	3c0f0000 	lui	t7,0x0
     30c:	3c0143c8 	lui	at,0x43c8
     310:	44815000 	mtc1	at,$f10
     314:	c608000c 	lwc1	$f8,12(s0)
     318:	3c0e0000 	lui	t6,0x0
     31c:	25ce0000 	addiu	t6,t6,0
     320:	460a4401 	sub.s	$f16,$f8,$f10
     324:	ae0e0164 	sw	t6,356(s0)
     328:	10000003 	b	338 <BgBdanObjects_Init+0x254>
     32c:	e6100028 	swc1	$f16,40(s0)
     330:	25ef0000 	addiu	t7,t7,0
     334:	ae0f0164 	sw	t7,356(s0)
     338:	02202025 	move	a0,s1
     33c:	26250810 	addiu	a1,s1,2064
     340:	02003025 	move	a2,s0
     344:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     348:	8fa70044 	lw	a3,68(sp)
     34c:	ae02014c 	sw	v0,332(s0)
     350:	8fbf003c 	lw	ra,60(sp)
     354:	8fb00034 	lw	s0,52(sp)
     358:	8fb10038 	lw	s1,56(sp)
     35c:	03e00008 	jr	ra
     360:	27bd0050 	addiu	sp,sp,80

00000364 <BgBdanObjects_Destroy>:
     364:	27bdffe8 	addiu	sp,sp,-24
     368:	00803825 	move	a3,a0
     36c:	afbf0014 	sw	ra,20(sp)
     370:	afa5001c 	sw	a1,28(sp)
     374:	8ce6014c 	lw	a2,332(a3)
     378:	00a02025 	move	a0,a1
     37c:	24a50810 	addiu	a1,a1,2064
     380:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     384:	afa70018 	sw	a3,24(sp)
     388:	8fa70018 	lw	a3,24(sp)
     38c:	8fa4001c 	lw	a0,28(sp)
     390:	84ef001c 	lh	t7,28(a3)
     394:	55e00004 	bnezl	t7,3a8 <BgBdanObjects_Destroy+0x44>
     398:	8fbf0014 	lw	ra,20(sp)
     39c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     3a0:	24e5016c 	addiu	a1,a3,364
     3a4:	8fbf0014 	lw	ra,20(sp)
     3a8:	27bd0018 	addiu	sp,sp,24
     3ac:	03e00008 	jr	ra
     3b0:	00000000 	nop

000003b4 <func_8086C054>:
     3b4:	27bdffd0 	addiu	sp,sp,-48
     3b8:	afbf0024 	sw	ra,36(sp)
     3bc:	afb00020 	sw	s0,32(sp)
     3c0:	afa50034 	sw	a1,52(sp)
     3c4:	8caf1c44 	lw	t7,7236(a1)
     3c8:	00808025 	move	s0,a0
     3cc:	00002825 	move	a1,zero
     3d0:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     3d4:	afaf002c 	sw	t7,44(sp)
     3d8:	10400023 	beqz	v0,468 <func_8086C054+0xb4>
     3dc:	3c01437a 	lui	at,0x437a
     3e0:	c6040090 	lwc1	$f4,144(s0)
     3e4:	44813000 	mtc1	at,$f6
     3e8:	02002025 	move	a0,s0
     3ec:	4606203c 	c.lt.s	$f4,$f6
     3f0:	00000000 	nop
     3f4:	45000027 	bc1f	494 <func_8086C054+0xe0>
     3f8:	00000000 	nop
     3fc:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     400:	24050001 	li	a1,1
     404:	24180014 	li	t8,20
     408:	a618016a 	sh	t8,362(s0)
     40c:	afa00010 	sw	zero,16(sp)
     410:	8fa40034 	lw	a0,52(sp)
     414:	24050bfe 	li	a1,3070
     418:	2406ff9d 	li	a2,-99
     41c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     420:	02003825 	move	a3,s0
     424:	3c010000 	lui	at,0x0
     428:	8fa3002c 	lw	v1,44(sp)
     42c:	c428008c 	lwc1	$f8,140(at)
     430:	3c010000 	lui	at,0x0
     434:	44806000 	mtc1	zero,$f12
     438:	e4680024 	swc1	$f8,36(v1)
     43c:	c42a0090 	lwc1	$f10,144(at)
     440:	3c010000 	lui	at,0x0
     444:	240500ff 	li	a1,255
     448:	e46a0028 	swc1	$f10,40(v1)
     44c:	c4300094 	lwc1	$f16,148(at)
     450:	24060014 	li	a2,20
     454:	24070096 	li	a3,150
     458:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     45c:	e470002c 	swc1	$f16,44(v1)
     460:	1000000c 	b	494 <func_8086C054+0xe0>
     464:	00000000 	nop
     468:	8602016a 	lh	v0,362(s0)
     46c:	10400009 	beqz	v0,494 <func_8086C054+0xe0>
     470:	00000000 	nop
     474:	10400003 	beqz	v0,484 <func_8086C054+0xd0>
     478:	2459ffff 	addiu	t9,v0,-1
     47c:	a619016a 	sh	t9,362(s0)
     480:	8602016a 	lh	v0,362(s0)
     484:	14400003 	bnez	v0,494 <func_8086C054+0xe0>
     488:	3c080000 	lui	t0,0x0
     48c:	25080000 	addiu	t0,t0,0
     490:	ae080164 	sw	t0,356(s0)
     494:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     498:	8fa40034 	lw	a0,52(sp)
     49c:	1440000b 	bnez	v0,4cc <func_8086C054+0x118>
     4a0:	02002025 	move	a0,s0
     4a4:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     4a8:	00002825 	move	a1,zero
     4ac:	14400007 	bnez	v0,4cc <func_8086C054+0x118>
     4b0:	3c01c29e 	lui	at,0xc29e
     4b4:	c612000c 	lwc1	$f18,12(s0)
     4b8:	44812000 	mtc1	at,$f4
     4bc:	00000000 	nop
     4c0:	46049180 	add.s	$f6,$f18,$f4
     4c4:	10000009 	b	4ec <func_8086C054+0x138>
     4c8:	e6060028 	swc1	$f6,40(s0)
     4cc:	3c01c29e 	lui	at,0xc29e
     4d0:	44815000 	mtc1	at,$f10
     4d4:	c608000c 	lwc1	$f8,12(s0)
     4d8:	3c0140a0 	lui	at,0x40a0
     4dc:	44819000 	mtc1	at,$f18
     4e0:	460a4400 	add.s	$f16,$f8,$f10
     4e4:	46128101 	sub.s	$f4,$f16,$f18
     4e8:	e6040028 	swc1	$f4,40(s0)
     4ec:	8fbf0024 	lw	ra,36(sp)
     4f0:	8fb00020 	lw	s0,32(sp)
     4f4:	27bd0030 	addiu	sp,sp,48
     4f8:	03e00008 	jr	ra
     4fc:	00000000 	nop

00000500 <func_8086C1A0>:
     500:	27bdffd8 	addiu	sp,sp,-40
     504:	afb00020 	sw	s0,32(sp)
     508:	00808025 	move	s0,a0
     50c:	afbf0024 	sw	ra,36(sp)
     510:	afa5002c 	sw	a1,44(sp)
     514:	3c0143fa 	lui	at,0x43fa
     518:	44813000 	mtc1	at,$f6
     51c:	c604000c 	lwc1	$f4,12(s0)
     520:	3c013f80 	lui	at,0x3f80
     524:	44815000 	mtc1	at,$f10
     528:	46062200 	add.s	$f8,$f4,$f6
     52c:	24840028 	addiu	a0,a0,40
     530:	3c063f00 	lui	a2,0x3f00
     534:	3c0740f0 	lui	a3,0x40f0
     538:	44054000 	mfc1	a1,$f8
     53c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     540:	e7aa0010 	swc1	$f10,16(sp)
     544:	3c010000 	lui	at,0x0
     548:	c4300098 	lwc1	$f16,152(at)
     54c:	02002025 	move	a0,s0
     550:	4610003c 	c.lt.s	$f0,$f16
     554:	00000000 	nop
     558:	45020013 	bc1fl	5a8 <func_8086C1A0+0xa8>
     55c:	8602016a 	lh	v0,362(s0)
     560:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     564:	2405289e 	li	a1,10398
     568:	3c0e0000 	lui	t6,0x0
     56c:	25ce0000 	addiu	t6,t6,0
     570:	240f001e 	li	t7,30
     574:	ae0e0164 	sw	t6,356(s0)
     578:	a60f016a 	sh	t7,362(s0)
     57c:	02002025 	move	a0,s0
     580:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     584:	24050002 	li	a1,2
     588:	44806000 	mtc1	zero,$f12
     58c:	240500ff 	li	a1,255
     590:	24060014 	li	a2,20
     594:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     598:	24070096 	li	a3,150
     59c:	10000013 	b	5ec <func_8086C1A0+0xec>
     5a0:	8fbf0024 	lw	ra,36(sp)
     5a4:	8602016a 	lh	v0,362(s0)
     5a8:	24050078 	li	a1,120
     5ac:	24060014 	li	a2,20
     5b0:	10400003 	beqz	v0,5c0 <func_8086C1A0+0xc0>
     5b4:	2458ffff 	addiu	t8,v0,-1
     5b8:	a618016a 	sh	t8,362(s0)
     5bc:	8602016a 	lh	v0,362(s0)
     5c0:	54400007 	bnezl	v0,5e0 <func_8086C1A0+0xe0>
     5c4:	02002025 	move	a0,s0
     5c8:	44806000 	mtc1	zero,$f12
     5cc:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     5d0:	2407000a 	li	a3,10
     5d4:	2419000b 	li	t9,11
     5d8:	a619016a 	sh	t9,362(s0)
     5dc:	02002025 	move	a0,s0
     5e0:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     5e4:	2405208f 	li	a1,8335
     5e8:	8fbf0024 	lw	ra,36(sp)
     5ec:	8fb00020 	lw	s0,32(sp)
     5f0:	27bd0028 	addiu	sp,sp,40
     5f4:	03e00008 	jr	ra
     5f8:	00000000 	nop

000005fc <func_8086C29C>:
     5fc:	27bdffb8 	addiu	sp,sp,-72
     600:	afbf003c 	sw	ra,60(sp)
     604:	afb10038 	sw	s1,56(sp)
     608:	afb00034 	sw	s0,52(sp)
     60c:	8482016a 	lh	v0,362(a0)
     610:	00808025 	move	s0,a0
     614:	00a08825 	move	s1,a1
     618:	1040001b 	beqz	v0,688 <func_8086C29C+0x8c>
     61c:	244effff 	addiu	t6,v0,-1
     620:	a48e016a 	sh	t6,362(a0)
     624:	848f016a 	lh	t7,362(a0)
     628:	55e00018 	bnezl	t7,68c <func_8086C29C+0x90>
     62c:	02002025 	move	a0,s0
     630:	84b807a0 	lh	t8,1952(a1)
     634:	0018c880 	sll	t9,t8,0x2
     638:	00b94021 	addu	t0,a1,t9
     63c:	8d040790 	lw	a0,1936(t0)
     640:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     644:	24050001 	li	a1,1
     648:	00022400 	sll	a0,v0,0x10
     64c:	afa20044 	sw	v0,68(sp)
     650:	00042403 	sra	a0,a0,0x10
     654:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     658:	24053a98 	li	a1,15000
     65c:	87a40046 	lh	a0,70(sp)
     660:	24090001 	li	t1,1
     664:	afa90010 	sw	t1,16(sp)
     668:	00002825 	move	a1,zero
     66c:	24060001 	li	a2,1
     670:	240700fa 	li	a3,250
     674:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     678:	afa40040 	sw	a0,64(sp)
     67c:	8fa40040 	lw	a0,64(sp)
     680:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     684:	2405000a 	li	a1,10
     688:	02002025 	move	a0,s0
     68c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     690:	24050003 	li	a1,3
     694:	50400024 	beqzl	v0,728 <func_8086C29C+0x12c>
     698:	8fbf003c 	lw	ra,60(sp)
     69c:	c6040024 	lwc1	$f4,36(s0)
     6a0:	3c01430c 	lui	at,0x430c
     6a4:	44814000 	mtc1	at,$f8
     6a8:	e7a40010 	swc1	$f4,16(sp)
     6ac:	c6060028 	lwc1	$f6,40(s0)
     6b0:	34018000 	li	at,0x8000
     6b4:	26241c24 	addiu	a0,s1,7204
     6b8:	46083280 	add.s	$f10,$f6,$f8
     6bc:	02002825 	move	a1,s0
     6c0:	02203025 	move	a2,s1
     6c4:	240700c6 	li	a3,198
     6c8:	e7aa0014 	swc1	$f10,20(sp)
     6cc:	c610002c 	lwc1	$f16,44(s0)
     6d0:	afa0001c 	sw	zero,28(sp)
     6d4:	e7b00018 	swc1	$f16,24(sp)
     6d8:	860a00b6 	lh	t2,182(s0)
     6dc:	afa00028 	sw	zero,40(sp)
     6e0:	afa00024 	sw	zero,36(sp)
     6e4:	01415821 	addu	t3,t2,at
     6e8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     6ec:	afab0020 	sw	t3,32(sp)
     6f0:	02002025 	move	a0,s0
     6f4:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     6f8:	24050004 	li	a1,4
     6fc:	3c0d0000 	lui	t5,0x0
     700:	240c000a 	li	t4,10
     704:	25ad0000 	addiu	t5,t5,0
     708:	a60c016a 	sh	t4,362(s0)
     70c:	ae0d0164 	sw	t5,356(s0)
     710:	862e07a0 	lh	t6,1952(s1)
     714:	000e7880 	sll	t7,t6,0x2
     718:	022fc021 	addu	t8,s1,t7
     71c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     720:	8f040790 	lw	a0,1936(t8)
     724:	8fbf003c 	lw	ra,60(sp)
     728:	8fb00034 	lw	s0,52(sp)
     72c:	8fb10038 	lw	s1,56(sp)
     730:	03e00008 	jr	ra
     734:	27bd0048 	addiu	sp,sp,72

00000738 <func_8086C3D8>:
     738:	27bdffd0 	addiu	sp,sp,-48
     73c:	afbf0024 	sw	ra,36(sp)
     740:	afb00020 	sw	s0,32(sp)
     744:	afa50034 	sw	a1,52(sp)
     748:	3c013f00 	lui	at,0x3f00
     74c:	44813000 	mtc1	at,$f6
     750:	c4840060 	lwc1	$f4,96(a0)
     754:	8ca31c44 	lw	v1,7236(a1)
     758:	00808025 	move	s0,a0
     75c:	46062200 	add.s	$f8,$f4,$f6
     760:	3c01c28c 	lui	at,0xc28c
     764:	44818000 	mtc1	at,$f16
     768:	24840028 	addiu	a0,a0,40
     76c:	e4880038 	swc1	$f8,56(a0)
     770:	c60a000c 	lwc1	$f10,12(s0)
     774:	8e060060 	lw	a2,96(s0)
     778:	afa3002c 	sw	v1,44(sp)
     77c:	46105480 	add.s	$f18,$f10,$f16
     780:	44059000 	mfc1	a1,$f18
     784:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     788:	00000000 	nop
     78c:	1040002c 	beqz	v0,840 <func_8086C3D8+0x108>
     790:	8fa3002c 	lw	v1,44(sp)
     794:	240f003c 	li	t7,60
     798:	a6000032 	sh	zero,50(s0)
     79c:	a60f016a 	sh	t7,362(s0)
     7a0:	afa3002c 	sw	v1,44(sp)
     7a4:	02002025 	move	a0,s0
     7a8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     7ac:	2405289f 	li	a1,10399
     7b0:	3c01430c 	lui	at,0x430c
     7b4:	44813000 	mtc1	at,$f6
     7b8:	c6040028 	lwc1	$f4,40(s0)
     7bc:	8e18011c 	lw	t8,284(s0)
     7c0:	3c190000 	lui	t9,0x0
     7c4:	46062200 	add.s	$f8,$f4,$f6
     7c8:	27390000 	addiu	t9,t9,0
     7cc:	24050c08 	li	a1,3080
     7d0:	2406ff9d 	li	a2,-99
     7d4:	e7080028 	swc1	$f8,40(t8)
     7d8:	ae190164 	sw	t9,356(s0)
     7dc:	8e07011c 	lw	a3,284(s0)
     7e0:	afa00010 	sw	zero,16(sp)
     7e4:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     7e8:	8fa40034 	lw	a0,52(sp)
     7ec:	3c010000 	lui	at,0x0
     7f0:	8fa3002c 	lw	v1,44(sp)
     7f4:	c42a009c 	lwc1	$f10,156(at)
     7f8:	3c010000 	lui	at,0x0
     7fc:	24087530 	li	t0,30000
     800:	e46a0024 	swc1	$f10,36(v1)
     804:	c43000a0 	lwc1	$f16,160(at)
     808:	3c010000 	lui	at,0x0
     80c:	44806000 	mtc1	zero,$f12
     810:	e4700028 	swc1	$f16,40(v1)
     814:	c43200a4 	lwc1	$f18,164(at)
     818:	a46800b6 	sh	t0,182(v1)
     81c:	846900b6 	lh	t1,182(v1)
     820:	240500ff 	li	a1,255
     824:	2406001e 	li	a2,30
     828:	24070096 	li	a3,150
     82c:	e472002c 	swc1	$f18,44(v1)
     830:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     834:	a4690032 	sh	t1,50(v1)
     838:	1000001c 	b	8ac <func_8086C3D8+0x174>
     83c:	8fbf0024 	lw	ra,36(sp)
     840:	02002025 	move	a0,s0
     844:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     848:	24052090 	li	a1,8336
     84c:	8602016a 	lh	v0,362(s0)
     850:	24050078 	li	a1,120
     854:	24060014 	li	a2,20
     858:	10400003 	beqz	v0,868 <func_8086C3D8+0x130>
     85c:	244affff 	addiu	t2,v0,-1
     860:	a60a016a 	sh	t2,362(s0)
     864:	8602016a 	lh	v0,362(s0)
     868:	54400007 	bnezl	v0,888 <func_8086C3D8+0x150>
     86c:	8e02011c 	lw	v0,284(s0)
     870:	44806000 	mtc1	zero,$f12
     874:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     878:	2407000a 	li	a3,10
     87c:	240b000b 	li	t3,11
     880:	a60b016a 	sh	t3,362(s0)
     884:	8e02011c 	lw	v0,284(s0)
     888:	3c01430c 	lui	at,0x430c
     88c:	50400007 	beqzl	v0,8ac <func_8086C3D8+0x174>
     890:	8fbf0024 	lw	ra,36(sp)
     894:	c6040028 	lwc1	$f4,40(s0)
     898:	44813000 	mtc1	at,$f6
     89c:	00000000 	nop
     8a0:	46062200 	add.s	$f8,$f4,$f6
     8a4:	e4480028 	swc1	$f8,40(v0)
     8a8:	8fbf0024 	lw	ra,36(sp)
     8ac:	8fb00020 	lw	s0,32(sp)
     8b0:	27bd0030 	addiu	sp,sp,48
     8b4:	03e00008 	jr	ra
     8b8:	00000000 	nop

000008bc <func_8086C55C>:
     8bc:	27bdffe8 	addiu	sp,sp,-24
     8c0:	afbf0014 	sw	ra,20(sp)
     8c4:	848e016a 	lh	t6,362(a0)
     8c8:	00803025 	move	a2,a0
     8cc:	2401ffd8 	li	at,-40
     8d0:	25cfffff 	addiu	t7,t6,-1
     8d4:	a48f016a 	sh	t7,362(a0)
     8d8:	8482016a 	lh	v0,362(a0)
     8dc:	00a02025 	move	a0,a1
     8e0:	14400005 	bnez	v0,8f8 <func_8086C55C+0x3c>
     8e4:	00000000 	nop
     8e8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     8ec:	90c50168 	lbu	a1,360(a2)
     8f0:	10000007 	b	910 <func_8086C55C+0x54>
     8f4:	8fbf0014 	lw	ra,20(sp)
     8f8:	14410004 	bne	v0,at,90c <func_8086C55C+0x50>
     8fc:	3c180000 	lui	t8,0x0
     900:	27180000 	addiu	t8,t8,0
     904:	a4c0016a 	sh	zero,362(a2)
     908:	acd80164 	sw	t8,356(a2)
     90c:	8fbf0014 	lw	ra,20(sp)
     910:	27bd0018 	addiu	sp,sp,24
     914:	03e00008 	jr	ra
     918:	00000000 	nop

0000091c <func_8086C5BC>:
     91c:	afa50004 	sw	a1,4(sp)
     920:	8482016a 	lh	v0,362(a0)
     924:	10400003 	beqz	v0,934 <func_8086C5BC+0x18>
     928:	244effff 	addiu	t6,v0,-1
     92c:	a48e016a 	sh	t6,362(a0)
     930:	8482016a 	lh	v0,362(a0)
     934:	1440000e 	bnez	v0,970 <func_8086C5BC+0x54>
     938:	00000000 	nop
     93c:	8c82011c 	lw	v0,284(a0)
     940:	1040000b 	beqz	v0,970 <func_8086C5BC+0x54>
     944:	00000000 	nop
     948:	8443001c 	lh	v1,28(v0)
     94c:	24010002 	li	at,2
     950:	3c0f0000 	lui	t7,0x0
     954:	14610003 	bne	v1,at,964 <func_8086C5BC+0x48>
     958:	25ef0000 	addiu	t7,t7,0
     95c:	03e00008 	jr	ra
     960:	ac8f0164 	sw	t7,356(a0)
     964:	14600002 	bnez	v1,970 <func_8086C5BC+0x54>
     968:	24180001 	li	t8,1
     96c:	a458001c 	sh	t8,28(v0)
     970:	03e00008 	jr	ra
     974:	00000000 	nop

00000978 <func_8086C618>:
     978:	27bdffd8 	addiu	sp,sp,-40
     97c:	afb00018 	sw	s0,24(sp)
     980:	00808025 	move	s0,a0
     984:	afbf001c 	sw	ra,28(sp)
     988:	afa5002c 	sw	a1,44(sp)
     98c:	2606016c 	addiu	a2,s0,364
     990:	00c02825 	move	a1,a2
     994:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     998:	afa60020 	sw	a2,32(sp)
     99c:	8fa4002c 	lw	a0,44(sp)
     9a0:	3c010001 	lui	at,0x1
     9a4:	34211e60 	ori	at,at,0x1e60
     9a8:	8fa60020 	lw	a2,32(sp)
     9ac:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     9b0:	00812821 	addu	a1,a0,at
     9b4:	8fa4002c 	lw	a0,44(sp)
     9b8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     9bc:	82050003 	lb	a1,3(s0)
     9c0:	1040000b 	beqz	v0,9f0 <func_8086C618+0x78>
     9c4:	8fa4002c 	lw	a0,44(sp)
     9c8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     9cc:	92050168 	lbu	a1,360(s0)
     9d0:	860e00b6 	lh	t6,182(s0)
     9d4:	3c090000 	lui	t1,0x0
     9d8:	25290000 	addiu	t1,t1,0
     9dc:	25d92000 	addiu	t9,t6,8192
     9e0:	3328c000 	andi	t0,t9,0xc000
     9e4:	a6080016 	sh	t0,22(s0)
     9e8:	10000013 	b	a38 <func_8086C618+0xc0>
     9ec:	ae090164 	sw	t1,356(s0)
     9f0:	86020032 	lh	v0,50(s0)
     9f4:	860a00b6 	lh	t2,182(s0)
     9f8:	00021823 	negu	v1,v0
     9fc:	01425821 	addu	t3,t2,v0
     a00:	04400003 	bltz	v0,a10 <func_8086C618+0x98>
     a04:	a60b00b6 	sh	t3,182(s0)
     a08:	10000001 	b	a10 <func_8086C618+0x98>
     a0c:	00401825 	move	v1,v0
     a10:	44832000 	mtc1	v1,$f4
     a14:	3c013b00 	lui	at,0x3b00
     a18:	44814000 	mtc1	at,$f8
     a1c:	468021a0 	cvt.s.w	$f6,$f4
     a20:	260400e4 	addiu	a0,s0,228
     a24:	24052063 	li	a1,8291
     a28:	46083282 	mul.s	$f10,$f6,$f8
     a2c:	44065000 	mfc1	a2,$f10
     a30:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     a34:	00000000 	nop
     a38:	8fbf001c 	lw	ra,28(sp)
     a3c:	8fb00018 	lw	s0,24(sp)
     a40:	27bd0028 	addiu	sp,sp,40
     a44:	03e00008 	jr	ra
     a48:	00000000 	nop

00000a4c <func_8086C6EC>:
     a4c:	27bdffe0 	addiu	sp,sp,-32
     a50:	afbf0014 	sw	ra,20(sp)
     a54:	afa50024 	sw	a1,36(sp)
     a58:	00803825 	move	a3,a0
     a5c:	84e50016 	lh	a1,22(a3)
     a60:	afa70020 	sw	a3,32(sp)
     a64:	248400b6 	addiu	a0,a0,182
     a68:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     a6c:	24060200 	li	a2,512
     a70:	8fa70020 	lw	a3,32(sp)
     a74:	afa2001c 	sw	v0,28(sp)
     a78:	3c01c2fa 	lui	at,0xc2fa
     a7c:	44813000 	mtc1	at,$f6
     a80:	c4e4000c 	lwc1	$f4,12(a3)
     a84:	3c064040 	lui	a2,0x4040
     a88:	24e40028 	addiu	a0,a3,40
     a8c:	46062200 	add.s	$f8,$f4,$f6
     a90:	44054000 	mfc1	a1,$f8
     a94:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     a98:	00000000 	nop
     a9c:	10400007 	beqz	v0,abc <func_8086C6EC+0x70>
     aa0:	8fa70020 	lw	a3,32(sp)
     aa4:	8fae001c 	lw	t6,28(sp)
     aa8:	3c0f0000 	lui	t7,0x0
     aac:	25ef0000 	addiu	t7,t7,0
     ab0:	51c00003 	beqzl	t6,ac0 <func_8086C6EC+0x74>
     ab4:	8fbf0014 	lw	ra,20(sp)
     ab8:	acef0164 	sw	t7,356(a3)
     abc:	8fbf0014 	lw	ra,20(sp)
     ac0:	27bd0020 	addiu	sp,sp,32
     ac4:	03e00008 	jr	ra
     ac8:	00000000 	nop

00000acc <func_8086C76C>:
     acc:	27bdffe0 	addiu	sp,sp,-32
     ad0:	afbf001c 	sw	ra,28(sp)
     ad4:	afa50024 	sw	a1,36(sp)
     ad8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     adc:	afa40020 	sw	a0,32(sp)
     ae0:	1040000f 	beqz	v0,b20 <func_8086C76C+0x54>
     ae4:	8fa70020 	lw	a3,32(sp)
     ae8:	3c0142f0 	lui	at,0x42f0
     aec:	44813000 	mtc1	at,$f6
     af0:	c4e40090 	lwc1	$f4,144(a3)
     af4:	3c0e0000 	lui	t6,0x0
     af8:	25ce0000 	addiu	t6,t6,0
     afc:	4606203c 	c.lt.s	$f4,$f6
     b00:	24050c12 	li	a1,3090
     b04:	2406ff9d 	li	a2,-99
     b08:	45020006 	bc1fl	b24 <func_8086C76C+0x58>
     b0c:	8fbf001c 	lw	ra,28(sp)
     b10:	acee0164 	sw	t6,356(a3)
     b14:	afa00010 	sw	zero,16(sp)
     b18:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     b1c:	8fa40024 	lw	a0,36(sp)
     b20:	8fbf001c 	lw	ra,28(sp)
     b24:	27bd0020 	addiu	sp,sp,32
     b28:	03e00008 	jr	ra
     b2c:	00000000 	nop

00000b30 <func_8086C7D0>:
     b30:	27bdffd8 	addiu	sp,sp,-40
     b34:	afb00020 	sw	s0,32(sp)
     b38:	00808025 	move	s0,a0
     b3c:	afbf0024 	sw	ra,36(sp)
     b40:	afa5002c 	sw	a1,44(sp)
     b44:	3c010000 	lui	at,0x0
     b48:	c42600a8 	lwc1	$f6,168(at)
     b4c:	c604000c 	lwc1	$f4,12(s0)
     b50:	3c010000 	lui	at,0x0
     b54:	c42a00ac 	lwc1	$f10,172(at)
     b58:	46062200 	add.s	$f8,$f4,$f6
     b5c:	24840028 	addiu	a0,a0,40
     b60:	3c063f00 	lui	a2,0x3f00
     b64:	3c074170 	lui	a3,0x4170
     b68:	44054000 	mfc1	a1,$f8
     b6c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     b70:	e7aa0010 	swc1	$f10,16(sp)
     b74:	3c010000 	lui	at,0x0
     b78:	c43000b0 	lwc1	$f16,176(at)
     b7c:	2405289e 	li	a1,10398
     b80:	02002025 	move	a0,s0
     b84:	4610003c 	c.lt.s	$f0,$f16
     b88:	00000000 	nop
     b8c:	45000007 	bc1f	bac <func_8086C7D0+0x7c>
     b90:	00000000 	nop
     b94:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     b98:	02002025 	move	a0,s0
     b9c:	3c0e0000 	lui	t6,0x0
     ba0:	25ce0000 	addiu	t6,t6,0
     ba4:	10000003 	b	bb4 <func_8086C7D0+0x84>
     ba8:	ae0e0164 	sw	t6,356(s0)
     bac:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     bb0:	2405208f 	li	a1,8335
     bb4:	8fbf0024 	lw	ra,36(sp)
     bb8:	8fb00020 	lw	s0,32(sp)
     bbc:	27bd0028 	addiu	sp,sp,40
     bc0:	03e00008 	jr	ra
     bc4:	00000000 	nop

00000bc8 <BgBdanObjects_DoNothing>:
     bc8:	afa40000 	sw	a0,0(sp)
     bcc:	03e00008 	jr	ra
     bd0:	afa50004 	sw	a1,4(sp)

00000bd4 <func_8086C874>:
     bd4:	27bdffe0 	addiu	sp,sp,-32
     bd8:	afbf001c 	sw	ra,28(sp)
     bdc:	afb00018 	sw	s0,24(sp)
     be0:	afa50024 	sw	a1,36(sp)
     be4:	8482016a 	lh	v0,362(a0)
     be8:	00808025 	move	s0,a0
     bec:	10400002 	beqz	v0,bf8 <func_8086C874+0x24>
     bf0:	244effff 	addiu	t6,v0,-1
     bf4:	a48e016a 	sh	t6,362(a0)
     bf8:	920f0168 	lbu	t7,360(s0)
     bfc:	8faa0024 	lw	t2,36(sp)
     c00:	2405003a 	li	a1,58
     c04:	15e00013 	bnez	t7,c54 <func_8086C874+0x80>
     c08:	00000000 	nop
     c0c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     c10:	02002025 	move	a0,s0
     c14:	50400025 	beqzl	v0,cac <func_8086C874+0xd8>
     c18:	860f016a 	lh	t7,362(s0)
     c1c:	8fa20024 	lw	v0,36(sp)
     c20:	2405003a 	li	a1,58
     c24:	8c580790 	lw	t8,1936(v0)
     c28:	87190142 	lh	t9,322(t8)
     c2c:	ae1901b8 	sw	t9,440(s0)
     c30:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     c34:	8c440790 	lw	a0,1936(v0)
     c38:	8fa80024 	lw	t0,36(sp)
     c3c:	24050004 	li	a1,4
     c40:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     c44:	8d040790 	lw	a0,1936(t0)
     c48:	2409000a 	li	t1,10
     c4c:	10000016 	b	ca8 <func_8086C874+0xd4>
     c50:	a2090168 	sb	t1,360(s0)
     c54:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     c58:	8d440790 	lw	a0,1936(t2)
     c5c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     c60:	02002025 	move	a0,s0
     c64:	54400006 	bnezl	v0,c80 <func_8086C874+0xac>
     c68:	920c0168 	lbu	t4,360(s0)
     c6c:	92020168 	lbu	v0,360(s0)
     c70:	10400002 	beqz	v0,c7c <func_8086C874+0xa8>
     c74:	244bffff 	addiu	t3,v0,-1
     c78:	a20b0168 	sb	t3,360(s0)
     c7c:	920c0168 	lbu	t4,360(s0)
     c80:	8fad0024 	lw	t5,36(sp)
     c84:	55800009 	bnezl	t4,cac <func_8086C874+0xd8>
     c88:	860f016a 	lh	t7,362(s0)
     c8c:	8da40790 	lw	a0,1936(t5)
     c90:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     c94:	860501ba 	lh	a1,442(s0)
     c98:	8fae0024 	lw	t6,36(sp)
     c9c:	24050004 	li	a1,4
     ca0:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     ca4:	8dc40790 	lw	a0,1936(t6)
     ca8:	860f016a 	lh	t7,362(s0)
     cac:	3c010000 	lui	at,0x0
     cb0:	c42800b4 	lwc1	$f8,180(at)
     cb4:	448f2000 	mtc1	t7,$f4
     cb8:	00000000 	nop
     cbc:	468021a0 	cvt.s.w	$f6,$f4
     cc0:	46083302 	mul.s	$f12,$f6,$f8
     cc4:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     cc8:	00000000 	nop
     ccc:	3c010000 	lui	at,0x0
     cd0:	c43000b8 	lwc1	$f16,184(at)
     cd4:	c60a000c 	lwc1	$f10,12(s0)
     cd8:	8618016a 	lh	t8,362(s0)
     cdc:	46100482 	mul.s	$f18,$f0,$f16
     ce0:	24190200 	li	t9,512
     ce4:	46125101 	sub.s	$f4,$f10,$f18
     ce8:	17000002 	bnez	t8,cf4 <func_8086C874+0x120>
     cec:	e6040028 	swc1	$f4,40(s0)
     cf0:	a619016a 	sh	t9,362(s0)
     cf4:	8fbf001c 	lw	ra,28(sp)
     cf8:	8fb00018 	lw	s0,24(sp)
     cfc:	27bd0020 	addiu	sp,sp,32
     d00:	03e00008 	jr	ra
     d04:	00000000 	nop

00000d08 <func_8086C9A8>:
     d08:	27bdffe8 	addiu	sp,sp,-24
     d0c:	00803025 	move	a2,a0
     d10:	afbf0014 	sw	ra,20(sp)
     d14:	00a02025 	move	a0,a1
     d18:	90c50168 	lbu	a1,360(a2)
     d1c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     d20:	afa60018 	sw	a2,24(sp)
     d24:	10400006 	beqz	v0,d40 <func_8086C9A8+0x38>
     d28:	8fa60018 	lw	a2,24(sp)
     d2c:	3c0f0000 	lui	t7,0x0
     d30:	240e0064 	li	t6,100
     d34:	25ef0000 	addiu	t7,t7,0
     d38:	a4ce016a 	sh	t6,362(a2)
     d3c:	accf0164 	sw	t7,356(a2)
     d40:	8fbf0014 	lw	ra,20(sp)
     d44:	27bd0018 	addiu	sp,sp,24
     d48:	03e00008 	jr	ra
     d4c:	00000000 	nop

00000d50 <func_8086C9F0>:
     d50:	27bdffe0 	addiu	sp,sp,-32
     d54:	afbf001c 	sw	ra,28(sp)
     d58:	afb00018 	sw	s0,24(sp)
     d5c:	afa50024 	sw	a1,36(sp)
     d60:	848e016a 	lh	t6,362(a0)
     d64:	00808025 	move	s0,a0
     d68:	24840028 	addiu	a0,a0,40
     d6c:	15c00010 	bnez	t6,db0 <func_8086C9F0+0x60>
     d70:	3c014296 	lui	at,0x4296
     d74:	8e05000c 	lw	a1,12(s0)
     d78:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     d7c:	3c063f00 	lui	a2,0x3f00
     d80:	10400006 	beqz	v0,d9c <func_8086C9F0+0x4c>
     d84:	8fa40024 	lw	a0,36(sp)
     d88:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     d8c:	92050168 	lbu	a1,360(s0)
     d90:	3c0f0000 	lui	t7,0x0
     d94:	25ef0000 	addiu	t7,t7,0
     d98:	ae0f0164 	sw	t7,356(s0)
     d9c:	02002025 	move	a0,s0
     da0:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     da4:	2405205e 	li	a1,8286
     da8:	10000011 	b	df0 <func_8086C9F0+0xa0>
     dac:	c60a0028 	lwc1	$f10,40(s0)
     db0:	c604000c 	lwc1	$f4,12(s0)
     db4:	44813000 	mtc1	at,$f6
     db8:	26040028 	addiu	a0,s0,40
     dbc:	3c063f00 	lui	a2,0x3f00
     dc0:	46062200 	add.s	$f8,$f4,$f6
     dc4:	44054000 	mfc1	a1,$f8
     dc8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     dcc:	00000000 	nop
     dd0:	10400004 	beqz	v0,de4 <func_8086C9F0+0x94>
     dd4:	02002025 	move	a0,s0
     dd8:	3c180000 	lui	t8,0x0
     ddc:	27180000 	addiu	t8,t8,0
     de0:	ae180164 	sw	t8,356(s0)
     de4:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     de8:	2405205e 	li	a1,8286
     dec:	c60a0028 	lwc1	$f10,40(s0)
     df0:	8fa90024 	lw	t1,36(sp)
     df4:	4600540d 	trunc.w.s	$f16,$f10
     df8:	8d2a07c0 	lw	t2,1984(t1)
     dfc:	44088000 	mfc1	t0,$f16
     e00:	8d4b0028 	lw	t3,40(t2)
     e04:	a5680072 	sh	t0,114(t3)
     e08:	8fbf001c 	lw	ra,28(sp)
     e0c:	8fb00018 	lw	s0,24(sp)
     e10:	27bd0020 	addiu	sp,sp,32
     e14:	03e00008 	jr	ra
     e18:	00000000 	nop

00000e1c <func_8086CABC>:
     e1c:	27bdffe8 	addiu	sp,sp,-24
     e20:	afbf0014 	sw	ra,20(sp)
     e24:	afa5001c 	sw	a1,28(sp)
     e28:	8485016a 	lh	a1,362(a0)
     e2c:	10a00003 	beqz	a1,e3c <func_8086CABC+0x20>
     e30:	24aeffff 	addiu	t6,a1,-1
     e34:	a48e016a 	sh	t6,362(a0)
     e38:	8485016a 	lh	a1,362(a0)
     e3c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     e40:	afa40018 	sw	a0,24(sp)
     e44:	8fa40018 	lw	a0,24(sp)
     e48:	3c180000 	lui	t8,0x0
     e4c:	27180000 	addiu	t8,t8,0
     e50:	848f016a 	lh	t7,362(a0)
     e54:	55e00003 	bnezl	t7,e64 <func_8086CABC+0x48>
     e58:	8fbf0014 	lw	ra,20(sp)
     e5c:	ac980164 	sw	t8,356(a0)
     e60:	8fbf0014 	lw	ra,20(sp)
     e64:	27bd0018 	addiu	sp,sp,24
     e68:	03e00008 	jr	ra
     e6c:	00000000 	nop

00000e70 <func_8086CB10>:
     e70:	27bdffe0 	addiu	sp,sp,-32
     e74:	afbf001c 	sw	ra,28(sp)
     e78:	afa50024 	sw	a1,36(sp)
     e7c:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     e80:	afa40020 	sw	a0,32(sp)
     e84:	10400015 	beqz	v0,edc <func_8086CB10+0x6c>
     e88:	8fa70020 	lw	a3,32(sp)
     e8c:	90e50168 	lbu	a1,360(a3)
     e90:	afa70020 	sw	a3,32(sp)
     e94:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     e98:	8fa40024 	lw	a0,36(sp)
     e9c:	8fa70020 	lw	a3,32(sp)
     ea0:	3c014348 	lui	at,0x4348
     ea4:	44813000 	mtc1	at,$f6
     ea8:	c4e4000c 	lwc1	$f4,12(a3)
     eac:	3c0f0000 	lui	t7,0x0
     eb0:	240e0032 	li	t6,50
     eb4:	46062201 	sub.s	$f8,$f4,$f6
     eb8:	25ef0000 	addiu	t7,t7,0
     ebc:	a4ee016a 	sh	t6,362(a3)
     ec0:	acef0164 	sw	t7,356(a3)
     ec4:	e4e8000c 	swc1	$f8,12(a3)
     ec8:	afa00010 	sw	zero,16(sp)
     ecc:	8fa40024 	lw	a0,36(sp)
     ed0:	24050c1c 	li	a1,3100
     ed4:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     ed8:	24060033 	li	a2,51
     edc:	8fbf001c 	lw	ra,28(sp)
     ee0:	27bd0020 	addiu	sp,sp,32
     ee4:	03e00008 	jr	ra
     ee8:	00000000 	nop

00000eec <func_8086CB8C>:
     eec:	27bdffe8 	addiu	sp,sp,-24
     ef0:	afbf0014 	sw	ra,20(sp)
     ef4:	afa5001c 	sw	a1,28(sp)
     ef8:	8482016a 	lh	v0,362(a0)
     efc:	00803825 	move	a3,a0
     f00:	10400003 	beqz	v0,f10 <func_8086CB8C+0x24>
     f04:	244effff 	addiu	t6,v0,-1
     f08:	a48e016a 	sh	t6,362(a0)
     f0c:	8482016a 	lh	v0,362(a0)
     f10:	44822000 	mtc1	v0,$f4
     f14:	3c010000 	lui	at,0x0
     f18:	c42800bc 	lwc1	$f8,188(at)
     f1c:	468021a0 	cvt.s.w	$f6,$f4
     f20:	afa70018 	sw	a3,24(sp)
     f24:	46083302 	mul.s	$f12,$f6,$f8
     f28:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     f2c:	00000000 	nop
     f30:	3c014348 	lui	at,0x4348
     f34:	44818000 	mtc1	at,$f16
     f38:	8fa70018 	lw	a3,24(sp)
     f3c:	2405289f 	li	a1,10399
     f40:	46100482 	mul.s	$f18,$f0,$f16
     f44:	c4ea000c 	lwc1	$f10,12(a3)
     f48:	84ef016a 	lh	t7,362(a3)
     f4c:	00e02025 	move	a0,a3
     f50:	46125101 	sub.s	$f4,$f10,$f18
     f54:	15e0000e 	bnez	t7,f90 <func_8086CB8C+0xa4>
     f58:	e4e40028 	swc1	$f4,40(a3)
     f5c:	00e02025 	move	a0,a3
     f60:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     f64:	afa70018 	sw	a3,24(sp)
     f68:	8fa70018 	lw	a3,24(sp)
     f6c:	3c180000 	lui	t8,0x0
     f70:	27180000 	addiu	t8,t8,0
     f74:	acf80164 	sw	t8,356(a3)
     f78:	8fa4001c 	lw	a0,28(sp)
     f7c:	00002825 	move	a1,zero
     f80:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     f84:	2406ffff 	li	a2,-1
     f88:	10000004 	b	f9c <func_8086CB8C+0xb0>
     f8c:	8fbf0014 	lw	ra,20(sp)
     f90:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     f94:	24052090 	li	a1,8336
     f98:	8fbf0014 	lw	ra,20(sp)
     f9c:	27bd0018 	addiu	sp,sp,24
     fa0:	03e00008 	jr	ra
     fa4:	00000000 	nop

00000fa8 <BgBdanObjects_Update>:
     fa8:	27bdffe8 	addiu	sp,sp,-24
     fac:	afbf0014 	sw	ra,20(sp)
     fb0:	afa5001c 	sw	a1,28(sp)
     fb4:	3c054248 	lui	a1,0x4248
     fb8:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
     fbc:	afa40018 	sw	a0,24(sp)
     fc0:	8fa40018 	lw	a0,24(sp)
     fc4:	8fa5001c 	lw	a1,28(sp)
     fc8:	8c990164 	lw	t9,356(a0)
     fcc:	0320f809 	jalr	t9
     fd0:	00000000 	nop
     fd4:	8fbf0014 	lw	ra,20(sp)
     fd8:	27bd0018 	addiu	sp,sp,24
     fdc:	03e00008 	jr	ra
     fe0:	00000000 	nop

00000fe4 <BgBdanObjects_Draw>:
     fe4:	27bdffe8 	addiu	sp,sp,-24
     fe8:	afbf0014 	sw	ra,20(sp)
     fec:	afa5001c 	sw	a1,28(sp)
     ff0:	8482001c 	lh	v0,28(a0)
     ff4:	5440001b 	bnezl	v0,1064 <BgBdanObjects_Draw+0x80>
     ff8:	24010002 	li	at,2
     ffc:	8c8f0164 	lw	t7,356(a0)
    1000:	3c0e0000 	lui	t6,0x0
    1004:	25ce0000 	addiu	t6,t6,0
    1008:	15cf0015 	bne	t6,t7,1060 <BgBdanObjects_Draw+0x7c>
    100c:	3c01c29e 	lui	at,0xc29e
    1010:	c484000c 	lwc1	$f4,12(a0)
    1014:	44813000 	mtc1	at,$f6
    1018:	3c0140a0 	lui	at,0x40a0
    101c:	44815000 	mtc1	at,$f10
    1020:	46062200 	add.s	$f8,$f4,$f6
    1024:	c4920028 	lwc1	$f18,40(a0)
    1028:	3c01c248 	lui	at,0xc248
    102c:	460a4401 	sub.s	$f16,$f8,$f10
    1030:	4612803c 	c.lt.s	$f16,$f18
    1034:	00000000 	nop
    1038:	4502000a 	bc1fl	1064 <BgBdanObjects_Draw+0x80>
    103c:	24010002 	li	at,2
    1040:	44806000 	mtc1	zero,$f12
    1044:	44817000 	mtc1	at,$f14
    1048:	24070001 	li	a3,1
    104c:	44066000 	mfc1	a2,$f12
    1050:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
    1054:	afa40018 	sw	a0,24(sp)
    1058:	8fa40018 	lw	a0,24(sp)
    105c:	8482001c 	lh	v0,28(a0)
    1060:	24010002 	li	at,2
    1064:	14410007 	bne	v0,at,1084 <BgBdanObjects_Draw+0xa0>
    1068:	8fa4001c 	lw	a0,28(sp)
    106c:	3c050000 	lui	a1,0x0
    1070:	24a50000 	addiu	a1,a1,0
    1074:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
    1078:	8fa4001c 	lw	a0,28(sp)
    107c:	10000007 	b	109c <BgBdanObjects_Draw+0xb8>
    1080:	8fbf0014 	lw	ra,20(sp)
    1084:	0002c080 	sll	t8,v0,0x2
    1088:	3c050000 	lui	a1,0x0
    108c:	00b82821 	addu	a1,a1,t8
    1090:	0c000000 	jal	0 <BgBdanObjects_GetContactRu1>
    1094:	8ca50050 	lw	a1,80(a1)
    1098:	8fbf0014 	lw	ra,20(sp)
    109c:	27bd0018 	addiu	sp,sp,24
    10a0:	03e00008 	jr	ra
    10a4:	00000000 	nop
	...
