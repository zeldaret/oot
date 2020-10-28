
build/src/overlays/actors/ovl_Door_Shutter/z_door_shutter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809962A0>:
       0:	ac850174 	sw	a1,372(a0)
       4:	03e00008 	jr	ra
       8:	a080016f 	sb	zero,367(a0)

0000000c <func_809962AC>:
       c:	27bdffe8 	addiu	sp,sp,-24
      10:	afbf0014 	sw	ra,20(sp)
      14:	afa5001c 	sw	a1,28(sp)
      18:	9498001c 	lhu	t8,28(a0)
      1c:	3c0f0001 	lui	t7,0x1
      20:	01e57821 	addu	t7,t7,a1
      24:	8def1d38 	lw	t7,7480(t7)
      28:	908a016b 	lbu	t2,363(a0)
      2c:	9082016a 	lbu	v0,362(a0)
      30:	0018ca83 	sra	t9,t8,0xa
      34:	00194900 	sll	t1,t9,0x4
      38:	3c0c0000 	lui	t4,0x0
      3c:	258c0000 	addiu	t4,t4,0
      40:	2401000b 	li	at,11
      44:	01e91821 	addu	v1,t7,t1
      48:	000a5880 	sll	t3,t2,0x2
      4c:	00803025 	move	a2,a0
      50:	80670000 	lb	a3,0(v1)
      54:	1041001f 	beq	v0,at,d4 <func_809962AC+0xc8>
      58:	016c4021 	addu	t0,t3,t4
      5c:	806d0002 	lb	t5,2(v1)
      60:	54ed000f 	bnel	a3,t5,a0 <func_809962AC+0x94>
      64:	80d90003 	lb	t9,3(a2)
      68:	848e00b6 	lh	t6,182(a0)
      6c:	8498008a 	lh	t8,138(a0)
      70:	01d81823 	subu	v1,t6,t8
      74:	00031c00 	sll	v1,v1,0x10
      78:	00031c03 	sra	v1,v1,0x10
      7c:	04600003 	bltz	v1,8c <func_809962AC+0x80>
      80:	00032023 	negu	a0,v1
      84:	10000001 	b	8c <func_809962AC+0x80>
      88:	00602025 	move	a0,v1
      8c:	28814000 	slti	at,a0,16384
      90:	50200003 	beqzl	at,a0 <func_809962AC+0x94>
      94:	80d90003 	lb	t9,3(a2)
      98:	2407ffff 	li	a3,-1
      9c:	80d90003 	lb	t9,3(a2)
      a0:	24010007 	li	at,7
      a4:	14f9000b 	bne	a3,t9,d4 <func_809962AC+0xc8>
      a8:	00000000 	nop
      ac:	54410004 	bnel	v0,at,c0 <func_809962AC+0xb4>
      b0:	24010005 	li	at,5
      b4:	10000007 	b	d4 <func_809962AC+0xc8>
      b8:	24020001 	li	v0,1
      bc:	24010005 	li	at,5
      c0:	54410004 	bnel	v0,at,d4 <func_809962AC+0xc8>
      c4:	00001025 	move	v0,zero
      c8:	10000002 	b	d4 <func_809962AC+0xc8>
      cc:	24020003 	li	v0,3
      d0:	00001025 	move	v0,zero
      d4:	14400004 	bnez	v0,e8 <func_809962AC+0xdc>
      d8:	24010001 	li	at,1
      dc:	910f0002 	lbu	t7,2(t0)
      e0:	10000003 	b	f0 <func_809962AC+0xe4>
      e4:	a0cf016c 	sb	t7,364(a2)
      e8:	91090003 	lbu	t1,3(t0)
      ec:	a0c9016c 	sb	t1,364(a2)
      f0:	14410011 	bne	v0,at,138 <func_809962AC+0x12c>
      f4:	8fa4001c 	lw	a0,28(sp)
      f8:	80c50003 	lb	a1,3(a2)
      fc:	0c000000 	jal	0 <func_809962A0>
     100:	afa60018 	sw	a2,24(sp)
     104:	14400031 	bnez	v0,1cc <func_809962AC+0x1c0>
     108:	8fa60018 	lw	a2,24(sp)
     10c:	3c050000 	lui	a1,0x0
     110:	24a50000 	addiu	a1,a1,0
     114:	00c02025 	move	a0,a2
     118:	0c000000 	jal	0 <func_809962A0>
     11c:	afa60018 	sw	a2,24(sp)
     120:	3c013f80 	lui	at,0x3f80
     124:	8fa60018 	lw	a2,24(sp)
     128:	44812000 	mtc1	at,$f4
     12c:	24020001 	li	v0,1
     130:	1000002b 	b	1e0 <func_809962AC+0x1d4>
     134:	e4c40170 	swc1	$f4,368(a2)
     138:	24010002 	li	at,2
     13c:	10410004 	beq	v0,at,150 <func_809962AC+0x144>
     140:	8fa4001c 	lw	a0,28(sp)
     144:	24010007 	li	at,7
     148:	54410019 	bnel	v0,at,1b0 <func_809962AC+0x1a4>
     14c:	24010003 	li	at,3
     150:	84c5001c 	lh	a1,28(a2)
     154:	afa60018 	sw	a2,24(sp)
     158:	0c000000 	jal	0 <func_809962A0>
     15c:	30a5003f 	andi	a1,a1,0x3f
     160:	1440000c 	bnez	v0,194 <func_809962AC+0x188>
     164:	8fa60018 	lw	a2,24(sp)
     168:	3c050000 	lui	a1,0x0
     16c:	24a50000 	addiu	a1,a1,0
     170:	00c02025 	move	a0,a2
     174:	0c000000 	jal	0 <func_809962A0>
     178:	afa60018 	sw	a2,24(sp)
     17c:	3c013f80 	lui	at,0x3f80
     180:	8fa60018 	lw	a2,24(sp)
     184:	44813000 	mtc1	at,$f6
     188:	24020001 	li	v0,1
     18c:	10000014 	b	1e0 <func_809962AC+0x1d4>
     190:	e4c60170 	swc1	$f6,368(a2)
     194:	3c050000 	lui	a1,0x0
     198:	24a50000 	addiu	a1,a1,0
     19c:	0c000000 	jal	0 <func_809962A0>
     1a0:	00c02025 	move	a0,a2
     1a4:	1000000e 	b	1e0 <func_809962AC+0x1d4>
     1a8:	00001025 	move	v0,zero
     1ac:	24010003 	li	at,3
     1b0:	14410006 	bne	v0,at,1cc <func_809962AC+0x1c0>
     1b4:	00c02025 	move	a0,a2
     1b8:	3c050000 	lui	a1,0x0
     1bc:	0c000000 	jal	0 <func_809962A0>
     1c0:	24a50000 	addiu	a1,a1,0
     1c4:	10000006 	b	1e0 <func_809962AC+0x1d4>
     1c8:	00001025 	move	v0,zero
     1cc:	3c050000 	lui	a1,0x0
     1d0:	24a50000 	addiu	a1,a1,0
     1d4:	0c000000 	jal	0 <func_809962A0>
     1d8:	00c02025 	move	a0,a2
     1dc:	00001025 	move	v0,zero
     1e0:	8fbf0014 	lw	ra,20(sp)
     1e4:	27bd0018 	addiu	sp,sp,24
     1e8:	03e00008 	jr	ra
     1ec:	00000000 	nop

000001f0 <DoorShutter_Init>:
     1f0:	27bdffb8 	addiu	sp,sp,-72
     1f4:	00a03025 	move	a2,a1
     1f8:	afbf001c 	sw	ra,28(sp)
     1fc:	afb00018 	sw	s0,24(sp)
     200:	3c050000 	lui	a1,0x0
     204:	00808025 	move	s0,a0
     208:	24a50000 	addiu	a1,a1,0
     20c:	0c000000 	jal	0 <func_809962A0>
     210:	afa6004c 	sw	a2,76(sp)
     214:	c60400bc 	lwc1	$f4,188(s0)
     218:	02002025 	move	a0,s0
     21c:	00002825 	move	a1,zero
     220:	0c000000 	jal	0 <func_809962A0>
     224:	e6040010 	swc1	$f4,16(s0)
     228:	860e001c 	lh	t6,28(s0)
     22c:	8fa6004c 	lw	a2,76(sp)
     230:	3c070000 	lui	a3,0x0
     234:	000e7983 	sra	t7,t6,0x6
     238:	31f8000f 	andi	t8,t7,0xf
     23c:	331900ff 	andi	t9,t8,0xff
     240:	a218016a 	sb	t8,362(s0)
     244:	00f93821 	addu	a3,a3,t9
     248:	80e70000 	lb	a3,0(a3)
     24c:	3c010001 	lui	at,0x1
     250:	342117a4 	ori	at,at,0x17a4
     254:	04e1000e 	bgez	a3,290 <DoorShutter_Init+0xa0>
     258:	3c0e0000 	lui	t6,0x0
     25c:	3c030000 	lui	v1,0x0
     260:	24630000 	addiu	v1,v1,0
     264:	00001025 	move	v0,zero
     268:	84c400a4 	lh	a0,164(a2)
     26c:	24050011 	li	a1,17
     270:	84680000 	lh	t0,0(v1)
     274:	24420001 	addiu	v0,v0,1
     278:	11040003 	beq	t0,a0,288 <DoorShutter_Init+0x98>
     27c:	00000000 	nop
     280:	1445fffb 	bne	v0,a1,270 <DoorShutter_Init+0x80>
     284:	24630004 	addiu	v1,v1,4
     288:	10000015 	b	2e0 <DoorShutter_Init+0xf0>
     28c:	90670002 	lbu	a3,2(v1)
     290:	24050006 	li	a1,6
     294:	14e50011 	bne	a3,a1,2dc <DoorShutter_Init+0xec>
     298:	240cffff 	li	t4,-1
     29c:	3c030000 	lui	v1,0x0
     2a0:	24630000 	addiu	v1,v1,0
     2a4:	00001025 	move	v0,zero
     2a8:	84c400a4 	lh	a0,164(a2)
     2ac:	84690000 	lh	t1,0(v1)
     2b0:	24420001 	addiu	v0,v0,1
     2b4:	51240007 	beql	t1,a0,2d4 <DoorShutter_Init+0xe4>
     2b8:	906b0004 	lbu	t3,4(v1)
     2bc:	846a0002 	lh	t2,2(v1)
     2c0:	51440004 	beql	t2,a0,2d4 <DoorShutter_Init+0xe4>
     2c4:	906b0004 	lbu	t3,4(v1)
     2c8:	1445fff8 	bne	v0,a1,2ac <DoorShutter_Init+0xbc>
     2cc:	24630006 	addiu	v1,v1,6
     2d0:	906b0004 	lbu	t3,4(v1)
     2d4:	10000002 	b	2e0 <DoorShutter_Init+0xf0>
     2d8:	a60b0168 	sh	t3,360(s0)
     2dc:	a20c0003 	sb	t4,3(s0)
     2e0:	00076880 	sll	t5,a3,0x2
     2e4:	25ce0000 	addiu	t6,t6,0
     2e8:	01ae1021 	addu	v0,t5,t6
     2ec:	84450000 	lh	a1,0(v0)
     2f0:	afa20024 	sw	v0,36(sp)
     2f4:	00c12021 	addu	a0,a2,at
     2f8:	afa6004c 	sw	a2,76(sp)
     2fc:	0c000000 	jal	0 <func_809962A0>
     300:	afa7003c 	sw	a3,60(sp)
     304:	00027e00 	sll	t7,v0,0x18
     308:	000fc603 	sra	t8,t7,0x18
     30c:	8fa6004c 	lw	a2,76(sp)
     310:	8fa7003c 	lw	a3,60(sp)
     314:	07010005 	bgez	t8,32c <DoorShutter_Init+0x13c>
     318:	a202016d 	sb	v0,365(s0)
     31c:	0c000000 	jal	0 <func_809962A0>
     320:	02002025 	move	a0,s0
     324:	10000031 	b	3ec <DoorShutter_Init+0x1fc>
     328:	8fbf001c 	lw	ra,28(sp)
     32c:	3c050000 	lui	a1,0x0
     330:	24a50000 	addiu	a1,a1,0
     334:	02002025 	move	a0,s0
     338:	afa6004c 	sw	a2,76(sp)
     33c:	0c000000 	jal	0 <func_809962A0>
     340:	afa7003c 	sw	a3,60(sp)
     344:	9202016a 	lbu	v0,362(s0)
     348:	8fa7003c 	lw	a3,60(sp)
     34c:	8fa6004c 	lw	a2,76(sp)
     350:	2401000b 	li	at,11
     354:	10410004 	beq	v0,at,368 <DoorShutter_Init+0x178>
     358:	a207016b 	sb	a3,363(s0)
     35c:	24010005 	li	at,5
     360:	1441000d 	bne	v0,at,398 <DoorShutter_Init+0x1a8>
     364:	8fa80024 	lw	t0,36(sp)
     368:	8605001c 	lh	a1,28(s0)
     36c:	00c02025 	move	a0,a2
     370:	0c000000 	jal	0 <func_809962A0>
     374:	30a5003f 	andi	a1,a1,0x3f
     378:	14400003 	bnez	v0,388 <DoorShutter_Init+0x198>
     37c:	02002025 	move	a0,s0
     380:	2419000a 	li	t9,10
     384:	a219016e 	sb	t9,366(s0)
     388:	0c000000 	jal	0 <func_809962A0>
     38c:	3c054270 	lui	a1,0x4270
     390:	10000016 	b	3ec <DoorShutter_Init+0x1fc>
     394:	8fbf001c 	lw	ra,28(sp)
     398:	3c090000 	lui	t1,0x0
     39c:	25290000 	addiu	t1,t1,0
     3a0:	1509000f 	bne	t0,t1,3e0 <DoorShutter_Init+0x1f0>
     3a4:	02002025 	move	a0,s0
     3a8:	3c053dcc 	lui	a1,0x3dcc
     3ac:	34a5cccd 	ori	a1,a1,0xcccd
     3b0:	0c000000 	jal	0 <func_809962A0>
     3b4:	02002025 	move	a0,s0
     3b8:	3c014348 	lui	at,0x4348
     3bc:	44813000 	mtc1	at,$f6
     3c0:	240a0064 	li	t2,100
     3c4:	a60a0166 	sh	t2,358(s0)
     3c8:	02002025 	move	a0,s0
     3cc:	24050000 	li	a1,0
     3d0:	0c000000 	jal	0 <func_809962A0>
     3d4:	e60600f8 	swc1	$f6,248(s0)
     3d8:	10000004 	b	3ec <DoorShutter_Init+0x1fc>
     3dc:	8fbf001c 	lw	ra,28(sp)
     3e0:	0c000000 	jal	0 <func_809962A0>
     3e4:	3c054270 	lui	a1,0x4270
     3e8:	8fbf001c 	lw	ra,28(sp)
     3ec:	8fb00018 	lw	s0,24(sp)
     3f0:	27bd0048 	addiu	sp,sp,72
     3f4:	03e00008 	jr	ra
     3f8:	00000000 	nop

000003fc <DoorShutter_Destroy>:
     3fc:	27bdffe8 	addiu	sp,sp,-24
     400:	00803825 	move	a3,a0
     404:	afbf0014 	sw	ra,20(sp)
     408:	afa5001c 	sw	a1,28(sp)
     40c:	8ce6014c 	lw	a2,332(a3)
     410:	00a02025 	move	a0,a1
     414:	24a50810 	addiu	a1,a1,2064
     418:	0c000000 	jal	0 <func_809962A0>
     41c:	afa70018 	sw	a3,24(sp)
     420:	8fa70018 	lw	a3,24(sp)
     424:	8fb8001c 	lw	t8,28(sp)
     428:	3c190001 	lui	t9,0x1
     42c:	80ef0003 	lb	t7,3(a3)
     430:	05e2000b 	bltzl	t7,460 <DoorShutter_Destroy+0x64>
     434:	8fbf0014 	lw	ra,20(sp)
     438:	94e3001c 	lhu	v1,28(a3)
     43c:	0338c821 	addu	t9,t9,t8
     440:	8f391d38 	lw	t9,7480(t9)
     444:	00031a83 	sra	v1,v1,0xa
     448:	00034100 	sll	t0,v1,0x4
     44c:	03281021 	addu	v0,t9,t0
     450:	84490004 	lh	t1,4(v0)
     454:	00095023 	negu	t2,t1
     458:	a44a0004 	sh	t2,4(v0)
     45c:	8fbf0014 	lw	ra,20(sp)
     460:	27bd0018 	addiu	sp,sp,24
     464:	03e00008 	jr	ra
     468:	00000000 	nop

0000046c <func_8099670C>:
     46c:	27bdffd0 	addiu	sp,sp,-48
     470:	afb00018 	sw	s0,24(sp)
     474:	3c010001 	lui	at,0x1
     478:	00808025 	move	s0,a0
     47c:	342117a4 	ori	at,at,0x17a4
     480:	afbf001c 	sw	ra,28(sp)
     484:	afa50034 	sw	a1,52(sp)
     488:	00a12021 	addu	a0,a1,at
     48c:	0c000000 	jal	0 <func_809962A0>
     490:	8205016d 	lb	a1,365(s0)
     494:	5040003e 	beqzl	v0,590 <func_8099670C+0x124>
     498:	8fbf001c 	lw	ra,28(sp)
     49c:	9202016a 	lbu	v0,362(s0)
     4a0:	820e016d 	lb	t6,365(s0)
     4a4:	24010004 	li	at,4
     4a8:	10410004 	beq	v0,at,4bc <func_8099670C+0x50>
     4ac:	a20e001e 	sb	t6,30(s0)
     4b0:	24010006 	li	at,6
     4b4:	14410033 	bne	v0,at,584 <func_8099670C+0x118>
     4b8:	02002025 	move	a0,s0
     4bc:	afa0002c 	sw	zero,44(sp)
     4c0:	8fa40034 	lw	a0,52(sp)
     4c4:	0c000000 	jal	0 <func_809962A0>
     4c8:	02002825 	move	a1,s0
     4cc:	920f016b 	lbu	t7,363(s0)
     4d0:	3c190000 	lui	t9,0x0
     4d4:	9208016a 	lbu	t0,362(s0)
     4d8:	000fc080 	sll	t8,t7,0x2
     4dc:	0338c821 	addu	t9,t9,t8
     4e0:	93390000 	lbu	t9,0(t9)
     4e4:	24010006 	li	at,6
     4e8:	15010004 	bne	t0,at,4fc <func_8099670C+0x90>
     4ec:	a219016c 	sb	t9,364(s0)
     4f0:	3c040602 	lui	a0,0x602
     4f4:	10000003 	b	504 <func_8099670C+0x98>
     4f8:	2484edd0 	addiu	a0,a0,-4656
     4fc:	3c040601 	lui	a0,0x601
     500:	24842fd0 	addiu	a0,a0,12240
     504:	0c000000 	jal	0 <func_809962A0>
     508:	27a5002c 	addiu	a1,sp,44
     50c:	8fa40034 	lw	a0,52(sp)
     510:	02003025 	move	a2,s0
     514:	8fa7002c 	lw	a3,44(sp)
     518:	0c000000 	jal	0 <func_809962A0>
     51c:	24850810 	addiu	a1,a0,2064
     520:	9209016a 	lbu	t1,362(s0)
     524:	24010006 	li	at,6
     528:	ae02014c 	sw	v0,332(s0)
     52c:	1521000f 	bne	t1,at,56c <func_8099670C+0x100>
     530:	02002025 	move	a0,s0
     534:	3c01c000 	lui	at,0xc000
     538:	44802000 	mtc1	zero,$f4
     53c:	44813000 	mtc1	at,$f6
     540:	02002025 	move	a0,s0
     544:	2405281c 	li	a1,10268
     548:	e6040060 	swc1	$f4,96(s0)
     54c:	0c000000 	jal	0 <func_809962A0>
     550:	e606006c 	swc1	$f6,108(s0)
     554:	3c050000 	lui	a1,0x0
     558:	24a50000 	addiu	a1,a1,0
     55c:	0c000000 	jal	0 <func_809962A0>
     560:	02002025 	move	a0,s0
     564:	1000000a 	b	590 <func_8099670C+0x124>
     568:	8fbf001c 	lw	ra,28(sp)
     56c:	3c050000 	lui	a1,0x0
     570:	0c000000 	jal	0 <func_809962A0>
     574:	24a50000 	addiu	a1,a1,0
     578:	240a0007 	li	t2,7
     57c:	10000003 	b	58c <func_8099670C+0x120>
     580:	a60a0164 	sh	t2,356(s0)
     584:	0c000000 	jal	0 <func_809962A0>
     588:	8fa50034 	lw	a1,52(sp)
     58c:	8fbf001c 	lw	ra,28(sp)
     590:	8fb00018 	lw	s0,24(sp)
     594:	27bd0030 	addiu	sp,sp,48
     598:	03e00008 	jr	ra
     59c:	00000000 	nop

000005a0 <func_80996840>:
     5a0:	27bdffc8 	addiu	sp,sp,-56
     5a4:	afbf0014 	sw	ra,20(sp)
     5a8:	afa40038 	sw	a0,56(sp)
     5ac:	afa5003c 	sw	a1,60(sp)
     5b0:	afa70044 	sw	a3,68(sp)
     5b4:	8c821c44 	lw	v0,7236(a0)
     5b8:	44866000 	mtc1	a2,$f12
     5bc:	00a02025 	move	a0,a1
     5c0:	c4440024 	lwc1	$f4,36(v0)
     5c4:	27a5001c 	addiu	a1,sp,28
     5c8:	27a60028 	addiu	a2,sp,40
     5cc:	e7a40028 	swc1	$f4,40(sp)
     5d0:	c4460028 	lwc1	$f6,40(v0)
     5d4:	460c3200 	add.s	$f8,$f6,$f12
     5d8:	e7a8002c 	swc1	$f8,44(sp)
     5dc:	c44a002c 	lwc1	$f10,44(v0)
     5e0:	0c000000 	jal	0 <func_809962A0>
     5e4:	e7aa0030 	swc1	$f10,48(sp)
     5e8:	c7a0001c 	lwc1	$f0,28(sp)
     5ec:	c7b00044 	lwc1	$f16,68(sp)
     5f0:	c7b20048 	lwc1	$f18,72(sp)
     5f4:	46000005 	abs.s	$f0,$f0
     5f8:	3c010000 	lui	at,0x0
     5fc:	4600803c 	c.lt.s	$f16,$f0
     600:	c7a00020 	lwc1	$f0,32(sp)
     604:	8fbf0014 	lw	ra,20(sp)
     608:	45010006 	bc1t	624 <func_80996840+0x84>
     60c:	00000000 	nop
     610:	46000005 	abs.s	$f0,$f0
     614:	4600903c 	c.lt.s	$f18,$f0
     618:	c7a00024 	lwc1	$f0,36(sp)
     61c:	45000003 	bc1f	62c <func_80996840+0x8c>
     620:	00000000 	nop
     624:	10000001 	b	62c <func_80996840+0x8c>
     628:	c4200000 	lwc1	$f0,0(at)
     62c:	03e00008 	jr	ra
     630:	27bd0038 	addiu	sp,sp,56

00000634 <func_809968D4>:
     634:	27bdffd8 	addiu	sp,sp,-40
     638:	afbf001c 	sw	ra,28(sp)
     63c:	afa40028 	sw	a0,40(sp)
     640:	8cae1c44 	lw	t6,7236(a1)
     644:	afa5002c 	sw	a1,44(sp)
     648:	00a02025 	move	a0,a1
     64c:	0c000000 	jal	0 <func_809962A0>
     650:	afae0024 	sw	t6,36(sp)
     654:	14400052 	bnez	v0,7a0 <func_809968D4+0x16c>
     658:	8fa50028 	lw	a1,40(sp)
     65c:	90a2016c 	lbu	v0,364(a1)
     660:	3c180000 	lui	t8,0x0
     664:	27180000 	addiu	t8,t8,0
     668:	00027880 	sll	t7,v0,0x2
     66c:	01e27823 	subu	t7,t7,v0
     670:	000f7880 	sll	t7,t7,0x2
     674:	24010003 	li	at,3
     678:	10410004 	beq	v0,at,68c <func_809968D4+0x58>
     67c:	01f81821 	addu	v1,t7,t8
     680:	44800000 	mtc1	zero,$f0
     684:	10000005 	b	69c <func_809968D4+0x68>
     688:	9079000a 	lbu	t9,10(v1)
     68c:	3c0142a0 	lui	at,0x42a0
     690:	44810000 	mtc1	at,$f0
     694:	00000000 	nop
     698:	9079000a 	lbu	t9,10(v1)
     69c:	44060000 	mfc1	a2,$f0
     6a0:	8fa4002c 	lw	a0,44(sp)
     6a4:	44992000 	mtc1	t9,$f4
     6a8:	3c014f80 	lui	at,0x4f80
     6ac:	07210004 	bgez	t9,6c0 <func_809968D4+0x8c>
     6b0:	46802120 	cvt.s.w	$f4,$f4
     6b4:	44813000 	mtc1	at,$f6
     6b8:	00000000 	nop
     6bc:	46062100 	add.s	$f4,$f4,$f6
     6c0:	9068000b 	lbu	t0,11(v1)
     6c4:	44072000 	mfc1	a3,$f4
     6c8:	3c014f80 	lui	at,0x4f80
     6cc:	44884000 	mtc1	t0,$f8
     6d0:	05010004 	bgez	t0,6e4 <func_809968D4+0xb0>
     6d4:	468042a0 	cvt.s.w	$f10,$f8
     6d8:	44818000 	mtc1	at,$f16
     6dc:	00000000 	nop
     6e0:	46105280 	add.s	$f10,$f10,$f16
     6e4:	0c000000 	jal	0 <func_809962A0>
     6e8:	e7aa0010 	swc1	$f10,16(sp)
     6ec:	3c014248 	lui	at,0x4248
     6f0:	44819000 	mtc1	at,$f18
     6f4:	46000086 	mov.s	$f2,$f0
     6f8:	46000005 	abs.s	$f0,$f0
     6fc:	44806000 	mtc1	zero,$f12
     700:	4612003c 	c.lt.s	$f0,$f18
     704:	8fa90024 	lw	t1,36(sp)
     708:	8fab0028 	lw	t3,40(sp)
     70c:	45020025 	bc1fl	7a4 <func_809968D4+0x170>
     710:	00001025 	move	v0,zero
     714:	852a00b6 	lh	t2,182(t1)
     718:	856c00b6 	lh	t4,182(t3)
     71c:	4602603c 	c.lt.s	$f12,$f2
     720:	340d8000 	li	t5,0x8000
     724:	014c1023 	subu	v0,t2,t4
     728:	00021400 	sll	v0,v0,0x10
     72c:	45000004 	bc1f	740 <func_809968D4+0x10c>
     730:	00021403 	sra	v0,v0,0x10
     734:	01a21023 	subu	v0,t5,v0
     738:	00021400 	sll	v0,v0,0x10
     73c:	00021403 	sra	v0,v0,0x10
     740:	04400003 	bltz	v0,750 <func_809968D4+0x11c>
     744:	00021823 	negu	v1,v0
     748:	10000001 	b	750 <func_809968D4+0x11c>
     74c:	00401825 	move	v1,v0
     750:	28613000 	slti	at,v1,12288
     754:	50200013 	beqzl	at,7a4 <func_809968D4+0x170>
     758:	00001025 	move	v0,zero
     75c:	4602603e 	c.le.s	$f12,$f2
     760:	3c01bf80 	lui	at,0xbf80
     764:	45020009 	bc1fl	78c <func_809968D4+0x158>
     768:	44810000 	mtc1	at,$f0
     76c:	3c013f80 	lui	at,0x3f80
     770:	44810000 	mtc1	at,$f0
     774:	00000000 	nop
     778:	4600010d 	trunc.w.s	$f4,$f0
     77c:	44022000 	mfc1	v0,$f4
     780:	10000009 	b	7a8 <func_809968D4+0x174>
     784:	8fbf001c 	lw	ra,28(sp)
     788:	44810000 	mtc1	at,$f0
     78c:	00000000 	nop
     790:	4600010d 	trunc.w.s	$f4,$f0
     794:	44022000 	mfc1	v0,$f4
     798:	10000003 	b	7a8 <func_809968D4+0x174>
     79c:	8fbf001c 	lw	ra,28(sp)
     7a0:	00001025 	move	v0,zero
     7a4:	8fbf001c 	lw	ra,28(sp)
     7a8:	27bd0028 	addiu	sp,sp,40
     7ac:	03e00008 	jr	ra
     7b0:	00000000 	nop

000007b4 <func_80996A54>:
     7b4:	27bdffe0 	addiu	sp,sp,-32
     7b8:	afb10018 	sw	s1,24(sp)
     7bc:	00808825 	move	s1,a0
     7c0:	afb00014 	sw	s0,20(sp)
     7c4:	00a08025 	move	s0,a1
     7c8:	afbf001c 	sw	ra,28(sp)
     7cc:	00a02025 	move	a0,a1
     7d0:	0c000000 	jal	0 <func_809962A0>
     7d4:	82250003 	lb	a1,3(s1)
     7d8:	14400005 	bnez	v0,7f0 <func_80996A54+0x3c>
     7dc:	02002025 	move	a0,s0
     7e0:	0c000000 	jal	0 <func_809962A0>
     7e4:	82250003 	lb	a1,3(s1)
     7e8:	10400011 	beqz	v0,830 <func_80996A54+0x7c>
     7ec:	02202025 	move	a0,s1
     7f0:	02002025 	move	a0,s0
     7f4:	0c000000 	jal	0 <func_809962A0>
     7f8:	82250003 	lb	a1,3(s1)
     7fc:	3c050000 	lui	a1,0x0
     800:	24a50000 	addiu	a1,a1,0
     804:	0c000000 	jal	0 <func_809962A0>
     808:	02202025 	move	a0,s1
     80c:	02002025 	move	a0,s0
     810:	0c000000 	jal	0 <func_809962A0>
     814:	02202825 	move	a1,s1
     818:	02002025 	move	a0,s0
     81c:	0c000000 	jal	0 <func_809962A0>
     820:	8e051c44 	lw	a1,7236(s0)
     824:	240eff9c 	li	t6,-100
     828:	10000008 	b	84c <func_80996A54+0x98>
     82c:	a22e016f 	sb	t6,367(s1)
     830:	0c000000 	jal	0 <func_809962A0>
     834:	02002825 	move	a1,s0
     838:	50400005 	beqzl	v0,850 <func_80996A54+0x9c>
     83c:	8fbf001c 	lw	ra,28(sp)
     840:	8e021c44 	lw	v0,7236(s0)
     844:	240ffdfe 	li	t7,-514
     848:	a44f0690 	sh	t7,1680(v0)
     84c:	8fbf001c 	lw	ra,28(sp)
     850:	8fb00014 	lw	s0,20(sp)
     854:	8fb10018 	lw	s1,24(sp)
     858:	03e00008 	jr	ra
     85c:	27bd0020 	addiu	sp,sp,32

00000860 <func_80996B00>:
     860:	afa40000 	sw	a0,0(sp)
     864:	03e00008 	jr	ra
     868:	afa50004 	sw	a1,4(sp)

0000086c <func_80996B0C>:
     86c:	27bdffe0 	addiu	sp,sp,-32
     870:	afbf001c 	sw	ra,28(sp)
     874:	afb00018 	sw	s0,24(sp)
     878:	afa50024 	sw	a1,36(sp)
     87c:	848e0164 	lh	t6,356(a0)
     880:	00808025 	move	s0,a0
     884:	8fa50024 	lw	a1,36(sp)
     888:	11c00020 	beqz	t6,90c <func_80996B0C+0xa0>
     88c:	00000000 	nop
     890:	3c050000 	lui	a1,0x0
     894:	0c000000 	jal	0 <func_809962A0>
     898:	24a50000 	addiu	a1,a1,0
     89c:	820f016e 	lb	t7,366(s0)
     8a0:	44802000 	mtc1	zero,$f4
     8a4:	11e00041 	beqz	t7,9ac <func_80996B0C+0x140>
     8a8:	e6040060 	swc1	$f4,96(s0)
     8ac:	8605001c 	lh	a1,28(s0)
     8b0:	8fa40024 	lw	a0,36(sp)
     8b4:	0c000000 	jal	0 <func_809962A0>
     8b8:	30a5003f 	andi	a1,a1,0x3f
     8bc:	9218016a 	lbu	t8,362(s0)
     8c0:	24010005 	li	at,5
     8c4:	3c060000 	lui	a2,0x0
     8c8:	1301000c 	beq	t8,at,8fc <func_80996B0C+0x90>
     8cc:	02002025 	move	a0,s0
     8d0:	24c60000 	addiu	a2,a2,0
     8d4:	94d91402 	lhu	t9,5122(a2)
     8d8:	02002025 	move	a0,s0
     8dc:	2405287c 	li	a1,10364
     8e0:	00d91021 	addu	v0,a2,t9
     8e4:	804800bc 	lb	t0,188(v0)
     8e8:	2509ffff 	addiu	t1,t0,-1
     8ec:	0c000000 	jal	0 <func_809962A0>
     8f0:	a04900bc 	sb	t1,188(v0)
     8f4:	1000002e 	b	9b0 <func_80996B0C+0x144>
     8f8:	8fbf001c 	lw	ra,28(sp)
     8fc:	0c000000 	jal	0 <func_809962A0>
     900:	240528a9 	li	a1,10409
     904:	1000002a 	b	9b0 <func_80996B0C+0x144>
     908:	8fbf001c 	lw	ra,28(sp)
     90c:	0c000000 	jal	0 <func_809962A0>
     910:	02002025 	move	a0,s0
     914:	50400026 	beqzl	v0,9b0 <func_80996B0C+0x144>
     918:	8fbf001c 	lw	ra,28(sp)
     91c:	820b016e 	lb	t3,366(s0)
     920:	8faa0024 	lw	t2,36(sp)
     924:	1160001d 	beqz	t3,99c <func_80996B0C+0x130>
     928:	8d431c44 	lw	v1,7236(t2)
     92c:	920c016a 	lbu	t4,362(s0)
     930:	24010005 	li	at,5
     934:	3c060000 	lui	a2,0x0
     938:	1581000e 	bne	t4,at,974 <func_80996B0C+0x108>
     93c:	24c60000 	addiu	a2,a2,0
     940:	3c060000 	lui	a2,0x0
     944:	24c60000 	addiu	a2,a2,0
     948:	94ce1402 	lhu	t6,5122(a2)
     94c:	3c0d0000 	lui	t5,0x0
     950:	8dad0000 	lw	t5,0(t5)
     954:	00ce7821 	addu	t7,a2,t6
     958:	91f800a8 	lbu	t8,168(t7)
     95c:	2408fdfc 	li	t0,-516
     960:	01b8c824 	and	t9,t5,t8
     964:	5720000c 	bnezl	t9,998 <func_80996B0C+0x12c>
     968:	240e000a 	li	t6,10
     96c:	1000000f 	b	9ac <func_80996B0C+0x140>
     970:	a4680690 	sh	t0,1680(v1)
     974:	94c91402 	lhu	t1,5122(a2)
     978:	240cfdfd 	li	t4,-515
     97c:	00c95021 	addu	t2,a2,t1
     980:	814b00bc 	lb	t3,188(t2)
     984:	5d600004 	bgtzl	t3,998 <func_80996B0C+0x12c>
     988:	240e000a 	li	t6,10
     98c:	10000007 	b	9ac <func_80996B0C+0x140>
     990:	a46c0690 	sh	t4,1680(v1)
     994:	240e000a 	li	t6,10
     998:	a46e042e 	sh	t6,1070(v1)
     99c:	240f0002 	li	t7,2
     9a0:	a06f042c 	sb	t7,1068(v1)
     9a4:	a062042d 	sb	v0,1069(v1)
     9a8:	ac700430 	sw	s0,1072(v1)
     9ac:	8fbf001c 	lw	ra,28(sp)
     9b0:	8fb00018 	lw	s0,24(sp)
     9b4:	27bd0020 	addiu	sp,sp,32
     9b8:	03e00008 	jr	ra
     9bc:	00000000 	nop

000009c0 <func_80996C60>:
     9c0:	27bdffc0 	addiu	sp,sp,-64
     9c4:	afbf002c 	sw	ra,44(sp)
     9c8:	afb00028 	sw	s0,40(sp)
     9cc:	908e0002 	lbu	t6,2(a0)
     9d0:	2401000a 	li	at,10
     9d4:	00808025 	move	s0,a0
     9d8:	55c10022 	bnel	t6,at,a64 <func_80996C60+0xa4>
     9dc:	8fbf002c 	lw	ra,44(sp)
     9e0:	8caf1c44 	lw	t7,7236(a1)
     9e4:	2419000f 	li	t9,15
     9e8:	afaf003c 	sw	t7,60(sp)
     9ec:	9098016c 	lbu	t8,364(a0)
     9f0:	afb90034 	sw	t9,52(sp)
     9f4:	afa50044 	sw	a1,68(sp)
     9f8:	0c000000 	jal	0 <func_809962A0>
     9fc:	afb80038 	sw	t8,56(sp)
     a00:	10400003 	beqz	v0,a10 <func_80996C60+0x50>
     a04:	02002025 	move	a0,s0
     a08:	24080020 	li	t0,32
     a0c:	afa80034 	sw	t0,52(sp)
     a10:	3c050000 	lui	a1,0x0
     a14:	0c000000 	jal	0 <func_809962A0>
     a18:	24a50000 	addiu	a1,a1,0
     a1c:	44800000 	mtc1	zero,$f0
     a20:	8fa90038 	lw	t1,56(sp)
     a24:	240c000c 	li	t4,12
     a28:	e6000170 	swc1	$f0,368(s0)
     a2c:	a209016c 	sb	t1,364(s0)
     a30:	8fab003c 	lw	t3,60(sp)
     a34:	8faa0044 	lw	t2,68(sp)
     a38:	8fad0034 	lw	t5,52(sp)
     a3c:	8566046a 	lh	a2,1130(t3)
     a40:	8d440790 	lw	a0,1936(t2)
     a44:	240e000a 	li	t6,10
     a48:	44070000 	mfc1	a3,$f0
     a4c:	afae0018 	sw	t6,24(sp)
     a50:	afac0010 	sw	t4,16(sp)
     a54:	02002825 	move	a1,s0
     a58:	0c000000 	jal	0 <func_809962A0>
     a5c:	afad0014 	sw	t5,20(sp)
     a60:	8fbf002c 	lw	ra,44(sp)
     a64:	8fb00028 	lw	s0,40(sp)
     a68:	27bd0040 	addiu	sp,sp,64
     a6c:	03e00008 	jr	ra
     a70:	00000000 	nop

00000a74 <func_80996D14>:
     a74:	27bdffe0 	addiu	sp,sp,-32
     a78:	afbf001c 	sw	ra,28(sp)
     a7c:	afb00018 	sw	s0,24(sp)
     a80:	afa50024 	sw	a1,36(sp)
     a84:	908e016c 	lbu	t6,364(a0)
     a88:	24010003 	li	at,3
     a8c:	00808025 	move	s0,a0
     a90:	51c1001e 	beql	t6,at,b0c <func_80996D14+0x98>
     a94:	860f0166 	lh	t7,358(s0)
     a98:	44802000 	mtc1	zero,$f4
     a9c:	c4860060 	lwc1	$f6,96(a0)
     aa0:	46062032 	c.eq.s	$f4,$f6
     aa4:	00000000 	nop
     aa8:	45020007 	bc1fl	ac8 <func_80996D14+0x54>
     aac:	26040060 	addiu	a0,s0,96
     ab0:	0c000000 	jal	0 <func_809962A0>
     ab4:	24052814 	li	a1,10260
     ab8:	02002025 	move	a0,s0
     abc:	0c000000 	jal	0 <func_809962A0>
     ac0:	8fa50024 	lw	a1,36(sp)
     ac4:	26040060 	addiu	a0,s0,96
     ac8:	3c054170 	lui	a1,0x4170
     acc:	0c000000 	jal	0 <func_809962A0>
     ad0:	3c064040 	lui	a2,0x4040
     ad4:	3c014348 	lui	at,0x4348
     ad8:	44815000 	mtc1	at,$f10
     adc:	c608000c 	lwc1	$f8,12(s0)
     ae0:	26040028 	addiu	a0,s0,40
     ae4:	8e060060 	lw	a2,96(s0)
     ae8:	460a4400 	add.s	$f16,$f8,$f10
     aec:	44058000 	mfc1	a1,$f16
     af0:	0c000000 	jal	0 <func_809962A0>
     af4:	00000000 	nop
     af8:	50400016 	beqzl	v0,b54 <func_80996D14+0xe0>
     afc:	00001025 	move	v0,zero
     b00:	10000014 	b	b54 <func_80996D14+0xe0>
     b04:	24020001 	li	v0,1
     b08:	860f0166 	lh	t7,358(s0)
     b0c:	24010064 	li	at,100
     b10:	02002025 	move	a0,s0
     b14:	55e10007 	bnel	t7,at,b34 <func_80996D14+0xc0>
     b18:	26040166 	addiu	a0,s0,358
     b1c:	0c000000 	jal	0 <func_809962A0>
     b20:	24052864 	li	a1,10340
     b24:	02002025 	move	a0,s0
     b28:	0c000000 	jal	0 <func_809962A0>
     b2c:	8fa50024 	lw	a1,36(sp)
     b30:	26040166 	addiu	a0,s0,358
     b34:	00002825 	move	a1,zero
     b38:	0c000000 	jal	0 <func_809962A0>
     b3c:	2406000a 	li	a2,10
     b40:	50400004 	beqzl	v0,b54 <func_80996D14+0xe0>
     b44:	00001025 	move	v0,zero
     b48:	10000002 	b	b54 <func_80996D14+0xe0>
     b4c:	24020001 	li	v0,1
     b50:	00001025 	move	v0,zero
     b54:	8fbf001c 	lw	ra,28(sp)
     b58:	8fb00018 	lw	s0,24(sp)
     b5c:	27bd0020 	addiu	sp,sp,32
     b60:	03e00008 	jr	ra
     b64:	00000000 	nop

00000b68 <func_80996E08>:
     b68:	27bdffe0 	addiu	sp,sp,-32
     b6c:	afa60028 	sw	a2,40(sp)
     b70:	3c013f80 	lui	at,0x3f80
     b74:	44810000 	mtc1	at,$f0
     b78:	c7a40028 	lwc1	$f4,40(sp)
     b7c:	afbf001c 	sw	ra,28(sp)
     b80:	afb00018 	sw	s0,24(sp)
     b84:	46040181 	sub.s	$f6,$f0,$f4
     b88:	afa50024 	sw	a1,36(sp)
     b8c:	c4880170 	lwc1	$f8,368(a0)
     b90:	00808025 	move	s0,a0
     b94:	46083032 	c.eq.s	$f6,$f8
     b98:	00000000 	nop
     b9c:	4502001e 	bc1fl	c18 <func_80996E08+0xb0>
     ba0:	3c063e4c 	lui	a2,0x3e4c
     ba4:	908e016c 	lbu	t6,364(a0)
     ba8:	24010003 	li	at,3
     bac:	c7aa0028 	lwc1	$f10,40(sp)
     bb0:	51c1000e 	beql	t6,at,bec <func_80996E08+0x84>
     bb4:	46005032 	c.eq.s	$f10,$f0
     bb8:	46002032 	c.eq.s	$f4,$f0
     bbc:	24052859 	li	a1,10329
     bc0:	45000005 	bc1f	bd8 <func_80996E08+0x70>
     bc4:	00000000 	nop
     bc8:	0c000000 	jal	0 <func_809962A0>
     bcc:	2405285a 	li	a1,10330
     bd0:	10000011 	b	c18 <func_80996E08+0xb0>
     bd4:	3c063e4c 	lui	a2,0x3e4c
     bd8:	0c000000 	jal	0 <func_809962A0>
     bdc:	02002025 	move	a0,s0
     be0:	1000000d 	b	c18 <func_80996E08+0xb0>
     be4:	3c063e4c 	lui	a2,0x3e4c
     be8:	46005032 	c.eq.s	$f10,$f0
     bec:	24052892 	li	a1,10386
     bf0:	02002025 	move	a0,s0
     bf4:	45000005 	bc1f	c0c <func_80996E08+0xa4>
     bf8:	00000000 	nop
     bfc:	0c000000 	jal	0 <func_809962A0>
     c00:	02002025 	move	a0,s0
     c04:	10000004 	b	c18 <func_80996E08+0xb0>
     c08:	3c063e4c 	lui	a2,0x3e4c
     c0c:	0c000000 	jal	0 <func_809962A0>
     c10:	24052891 	li	a1,10385
     c14:	3c063e4c 	lui	a2,0x3e4c
     c18:	34c6cccd 	ori	a2,a2,0xcccd
     c1c:	26040170 	addiu	a0,s0,368
     c20:	0c000000 	jal	0 <func_809962A0>
     c24:	8fa50028 	lw	a1,40(sp)
     c28:	10400003 	beqz	v0,c38 <func_80996E08+0xd0>
     c2c:	8fbf001c 	lw	ra,28(sp)
     c30:	10000002 	b	c3c <func_80996E08+0xd4>
     c34:	24020001 	li	v0,1
     c38:	00001025 	move	v0,zero
     c3c:	8fb00018 	lw	s0,24(sp)
     c40:	03e00008 	jr	ra
     c44:	27bd0020 	addiu	sp,sp,32

00000c48 <func_80996EE8>:
     c48:	27bdffe0 	addiu	sp,sp,-32
     c4c:	afbf001c 	sw	ra,28(sp)
     c50:	afb10018 	sw	s1,24(sp)
     c54:	afb00014 	sw	s0,20(sp)
     c58:	00808025 	move	s0,a0
     c5c:	00a08825 	move	s1,a1
     c60:	0c000000 	jal	0 <func_809962A0>
     c64:	3c063f80 	lui	a2,0x3f80
     c68:	5040001f 	beqzl	v0,ce8 <func_80996EE8+0xa0>
     c6c:	8fbf001c 	lw	ra,28(sp)
     c70:	8605001c 	lh	a1,28(s0)
     c74:	02202025 	move	a0,s1
     c78:	0c000000 	jal	0 <func_809962A0>
     c7c:	30a5003f 	andi	a1,a1,0x3f
     c80:	1040000b 	beqz	v0,cb0 <func_80996EE8+0x68>
     c84:	02002025 	move	a0,s0
     c88:	3c050000 	lui	a1,0x0
     c8c:	24a50000 	addiu	a1,a1,0
     c90:	0c000000 	jal	0 <func_809962A0>
     c94:	02002025 	move	a0,s0
     c98:	02202025 	move	a0,s1
     c9c:	0c000000 	jal	0 <func_809962A0>
     ca0:	02002825 	move	a1,s0
     ca4:	240eff9c 	li	t6,-100
     ca8:	1000000e 	b	ce4 <func_80996EE8+0x9c>
     cac:	a20e016f 	sb	t6,367(s0)
     cb0:	0c000000 	jal	0 <func_809962A0>
     cb4:	02202825 	move	a1,s1
     cb8:	5040000b 	beqzl	v0,ce8 <func_80996EE8+0xa0>
     cbc:	8fbf001c 	lw	ra,28(sp)
     cc0:	862f00a4 	lh	t7,164(s1)
     cc4:	24010002 	li	at,2
     cc8:	8e221c44 	lw	v0,7236(s1)
     ccc:	15e10004 	bne	t7,at,ce0 <func_80996EE8+0x98>
     cd0:	2419fdfe 	li	t9,-514
     cd4:	2418fdf5 	li	t8,-523
     cd8:	10000002 	b	ce4 <func_80996EE8+0x9c>
     cdc:	a4580690 	sh	t8,1680(v0)
     ce0:	a4590690 	sh	t9,1680(v0)
     ce4:	8fbf001c 	lw	ra,28(sp)
     ce8:	8fb00014 	lw	s0,20(sp)
     cec:	8fb10018 	lw	s1,24(sp)
     cf0:	03e00008 	jr	ra
     cf4:	27bd0020 	addiu	sp,sp,32

00000cf8 <func_80996F98>:
     cf8:	27bdffe8 	addiu	sp,sp,-24
     cfc:	afbf0014 	sw	ra,20(sp)
     d00:	afa5001c 	sw	a1,28(sp)
     d04:	848e0164 	lh	t6,356(a0)
     d08:	00803025 	move	a2,a0
     d0c:	00a02025 	move	a0,a1
     d10:	55c0000e 	bnezl	t6,d4c <func_80996F98+0x54>
     d14:	00c02025 	move	a0,a2
     d18:	84c5001c 	lh	a1,28(a2)
     d1c:	afa60018 	sw	a2,24(sp)
     d20:	0c000000 	jal	0 <func_809962A0>
     d24:	30a5003f 	andi	a1,a1,0x3f
     d28:	14400007 	bnez	v0,d48 <func_80996F98+0x50>
     d2c:	8fa60018 	lw	a2,24(sp)
     d30:	3c050000 	lui	a1,0x0
     d34:	24a50000 	addiu	a1,a1,0
     d38:	0c000000 	jal	0 <func_809962A0>
     d3c:	00c02025 	move	a0,a2
     d40:	10000005 	b	d58 <func_80996F98+0x60>
     d44:	8fbf0014 	lw	ra,20(sp)
     d48:	00c02025 	move	a0,a2
     d4c:	0c000000 	jal	0 <func_809962A0>
     d50:	8fa5001c 	lw	a1,28(sp)
     d54:	8fbf0014 	lw	ra,20(sp)
     d58:	27bd0018 	addiu	sp,sp,24
     d5c:	03e00008 	jr	ra
     d60:	00000000 	nop

00000d64 <func_80997004>:
     d64:	27bdffe0 	addiu	sp,sp,-32
     d68:	afbf001c 	sw	ra,28(sp)
     d6c:	afb00018 	sw	s0,24(sp)
     d70:	8082016e 	lb	v0,366(a0)
     d74:	00808025 	move	s0,a0
     d78:	3c0f0001 	lui	t7,0x1
     d7c:	14400003 	bnez	v0,d8c <func_80997004+0x28>
     d80:	244effff 	addiu	t6,v0,-1
     d84:	10000003 	b	d94 <func_80997004+0x30>
     d88:	00001825 	move	v1,zero
     d8c:	a20e016e 	sb	t6,366(s0)
     d90:	8203016e 	lb	v1,366(s0)
     d94:	14600041 	bnez	v1,e9c <func_80997004+0x138>
     d98:	01e57821 	addu	t7,t7,a1
     d9c:	81ef1ced 	lb	t7,7405(t7)
     da0:	02002025 	move	a0,s0
     da4:	55e0003e 	bnezl	t7,ea0 <func_80997004+0x13c>
     da8:	8fbf001c 	lw	ra,28(sp)
     dac:	0c000000 	jal	0 <func_809962A0>
     db0:	afa50024 	sw	a1,36(sp)
     db4:	5040003a 	beqzl	v0,ea0 <func_80997004+0x13c>
     db8:	8fbf001c 	lw	ra,28(sp)
     dbc:	9218016a 	lbu	t8,362(s0)
     dc0:	24010005 	li	at,5
     dc4:	02002025 	move	a0,s0
     dc8:	17010004 	bne	t8,at,ddc <func_80997004+0x78>
     dcc:	3c0141a0 	lui	at,0x41a0
     dd0:	44810000 	mtc1	at,$f0
     dd4:	10000005 	b	dec <func_80997004+0x88>
     dd8:	c6040090 	lwc1	$f4,144(s0)
     ddc:	3c014248 	lui	at,0x4248
     de0:	44810000 	mtc1	at,$f0
     de4:	00000000 	nop
     de8:	c6040090 	lwc1	$f4,144(s0)
     dec:	4604003c 	c.lt.s	$f0,$f4
     df0:	00000000 	nop
     df4:	4502002a 	bc1fl	ea0 <func_80997004+0x13c>
     df8:	8fbf001c 	lw	ra,28(sp)
     dfc:	0c000000 	jal	0 <func_809962A0>
     e00:	8fa50024 	lw	a1,36(sp)
     e04:	10400004 	beqz	v0,e18 <func_80997004+0xb4>
     e08:	3c0141f0 	lui	at,0x41f0
     e0c:	44813000 	mtc1	at,$f6
     e10:	00000000 	nop
     e14:	e6060060 	swc1	$f6,96(s0)
     e18:	9219016c 	lbu	t9,364(s0)
     e1c:	24010003 	li	at,3
     e20:	2405281c 	li	a1,10268
     e24:	13210009 	beq	t9,at,e4c <func_80997004+0xe8>
     e28:	02002025 	move	a0,s0
     e2c:	0c000000 	jal	0 <func_809962A0>
     e30:	02002025 	move	a0,s0
     e34:	3c050000 	lui	a1,0x0
     e38:	24a50000 	addiu	a1,a1,0
     e3c:	0c000000 	jal	0 <func_809962A0>
     e40:	02002025 	move	a0,s0
     e44:	10000016 	b	ea0 <func_80997004+0x13c>
     e48:	8fbf001c 	lw	ra,28(sp)
     e4c:	0c000000 	jal	0 <func_809962A0>
     e50:	24052865 	li	a1,10341
     e54:	9202016a 	lbu	v0,362(s0)
     e58:	24010002 	li	at,2
     e5c:	10410003 	beq	v0,at,e6c <func_80997004+0x108>
     e60:	24010007 	li	at,7
     e64:	14410009 	bne	v0,at,e8c <func_80997004+0x128>
     e68:	00000000 	nop
     e6c:	8605001c 	lh	a1,28(s0)
     e70:	8fa40024 	lw	a0,36(sp)
     e74:	0c000000 	jal	0 <func_809962A0>
     e78:	30a5003f 	andi	a1,a1,0x3f
     e7c:	14400003 	bnez	v0,e8c <func_80997004+0x128>
     e80:	02002025 	move	a0,s0
     e84:	0c000000 	jal	0 <func_809962A0>
     e88:	24052892 	li	a1,10386
     e8c:	3c050000 	lui	a1,0x0
     e90:	24a50000 	addiu	a1,a1,0
     e94:	0c000000 	jal	0 <func_809962A0>
     e98:	02002025 	move	a0,s0
     e9c:	8fbf001c 	lw	ra,28(sp)
     ea0:	8fb00018 	lw	s0,24(sp)
     ea4:	27bd0020 	addiu	sp,sp,32
     ea8:	03e00008 	jr	ra
     eac:	00000000 	nop

00000eb0 <func_80997150>:
     eb0:	27bdffe8 	addiu	sp,sp,-24
     eb4:	afbf0014 	sw	ra,20(sp)
     eb8:	8082016f 	lb	v0,367(a0)
     ebc:	24060000 	li	a2,0
     ec0:	10400017 	beqz	v0,f20 <func_80997150+0x70>
     ec4:	00000000 	nop
     ec8:	04410013 	bgez	v0,f18 <func_80997150+0x68>
     ecc:	244affff 	addiu	t2,v0,-1
     ed0:	8cae009c 	lw	t6,156(a1)
     ed4:	24580001 	addiu	t8,v0,1
     ed8:	31cf0001 	andi	t7,t6,0x1
     edc:	11e00002 	beqz	t7,ee8 <func_80997150+0x38>
     ee0:	00000000 	nop
     ee4:	a098016f 	sb	t8,367(a0)
     ee8:	0c000000 	jal	0 <func_809962A0>
     eec:	afa40018 	sw	a0,24(sp)
     ef0:	8fa40018 	lw	a0,24(sp)
     ef4:	24090005 	li	t1,5
     ef8:	90990002 	lbu	t9,2(a0)
     efc:	10590004 	beq	v0,t9,f10 <func_80997150+0x60>
     f00:	00000000 	nop
     f04:	8088016f 	lb	t0,367(a0)
     f08:	5500001a 	bnezl	t0,f74 <func_80997150+0xc4>
     f0c:	8fbf0014 	lw	ra,20(sp)
     f10:	10000017 	b	f70 <func_80997150+0xc0>
     f14:	a089016f 	sb	t1,367(a0)
     f18:	10000015 	b	f70 <func_80997150+0xc0>
     f1c:	a08a016f 	sb	t2,367(a0)
     f20:	0c000000 	jal	0 <func_809962A0>
     f24:	afa40018 	sw	a0,24(sp)
     f28:	10400011 	beqz	v0,f70 <func_80997150+0xc0>
     f2c:	8fa40018 	lw	a0,24(sp)
     f30:	9082016a 	lbu	v0,362(a0)
     f34:	24010001 	li	at,1
     f38:	3c050000 	lui	a1,0x0
     f3c:	10400008 	beqz	v0,f60 <func_80997150+0xb0>
     f40:	00000000 	nop
     f44:	10410006 	beq	v0,at,f60 <func_80997150+0xb0>
     f48:	00000000 	nop
     f4c:	3c050000 	lui	a1,0x0
     f50:	0c000000 	jal	0 <func_809962A0>
     f54:	24a50000 	addiu	a1,a1,0
     f58:	10000003 	b	f68 <func_80997150+0xb8>
     f5c:	00000000 	nop
     f60:	0c000000 	jal	0 <func_809962A0>
     f64:	24a50000 	addiu	a1,a1,0
     f68:	0c000000 	jal	0 <func_809962A0>
     f6c:	00000000 	nop
     f70:	8fbf0014 	lw	ra,20(sp)
     f74:	27bd0018 	addiu	sp,sp,24
     f78:	03e00008 	jr	ra
     f7c:	00000000 	nop

00000f80 <func_80997220>:
     f80:	27bdffb0 	addiu	sp,sp,-80
     f84:	afbf001c 	sw	ra,28(sp)
     f88:	afb10018 	sw	s1,24(sp)
     f8c:	afb00014 	sw	s0,20(sp)
     f90:	8cae1c44 	lw	t6,7236(a1)
     f94:	00a08025 	move	s0,a1
     f98:	00808825 	move	s1,a0
     f9c:	afae004c 	sw	t6,76(sp)
     fa0:	80820003 	lb	v0,3(a0)
     fa4:	27a5003c 	addiu	a1,sp,60
     fa8:	25c60024 	addiu	a2,t6,36
     fac:	00021e00 	sll	v1,v0,0x18
     fb0:	0440004c 	bltz	v0,10e4 <func_80997220+0x164>
     fb4:	00031e03 	sra	v1,v1,0x18
     fb8:	0c000000 	jal	0 <func_809962A0>
     fbc:	a3a3004b 	sb	v1,75(sp)
     fc0:	c7a40044 	lwc1	$f4,68(sp)
     fc4:	44803000 	mtc1	zero,$f6
     fc8:	3c010001 	lui	at,0x1
     fcc:	02012021 	addu	a0,s0,at
     fd0:	4606203c 	c.lt.s	$f4,$f6
     fd4:	3c010001 	lui	at,0x1
     fd8:	83a3004b 	lb	v1,75(sp)
     fdc:	24020001 	li	v0,1
     fe0:	45000003 	bc1f	ff0 <func_80997220+0x70>
     fe4:	34211cbc 	ori	at,at,0x1cbc
     fe8:	10000001 	b	ff0 <func_80997220+0x70>
     fec:	00001025 	move	v0,zero
     ff0:	9638001c 	lhu	t8,28(s1)
     ff4:	8c8f1d38 	lw	t7,7480(a0)
     ff8:	00025040 	sll	t2,v0,0x1
     ffc:	0018ca83 	sra	t9,t8,0xa
    1000:	00194100 	sll	t0,t9,0x4
    1004:	01e84821 	addu	t1,t7,t0
    1008:	012a5821 	addu	t3,t1,t2
    100c:	816c0000 	lb	t4,0(t3)
    1010:	02011021 	addu	v0,s0,at
    1014:	a22c0003 	sb	t4,3(s1)
    1018:	822d0003 	lb	t5,3(s1)
    101c:	506d0029 	beql	v1,t5,10c4 <func_80997220+0x144>
    1020:	3c010001 	lui	at,0x1
    1024:	8c580000 	lw	t8,0(v0)
    1028:	27a50028 	addiu	a1,sp,40
    102c:	3c010001 	lui	at,0x1
    1030:	acb80000 	sw	t8,0(a1)
    1034:	8c4e0004 	lw	t6,4(v0)
    1038:	34211cd0 	ori	at,at,0x1cd0
    103c:	02011821 	addu	v1,s0,at
    1040:	acae0004 	sw	t6,4(a1)
    1044:	8c580008 	lw	t8,8(v0)
    1048:	3c010001 	lui	at,0x1
    104c:	00300821 	addu	at,at,s0
    1050:	acb80008 	sw	t8,8(a1)
    1054:	8c4e000c 	lw	t6,12(v0)
    1058:	acae000c 	sw	t6,12(a1)
    105c:	8c580010 	lw	t8,16(v0)
    1060:	acb80010 	sw	t8,16(a1)
    1064:	8c6f0000 	lw	t7,0(v1)
    1068:	ac4f0000 	sw	t7,0(v0)
    106c:	8c790004 	lw	t9,4(v1)
    1070:	ac590004 	sw	t9,4(v0)
    1074:	8c6f0008 	lw	t7,8(v1)
    1078:	ac4f0008 	sw	t7,8(v0)
    107c:	8c79000c 	lw	t9,12(v1)
    1080:	ac59000c 	sw	t9,12(v0)
    1084:	8c6f0010 	lw	t7,16(v1)
    1088:	ac4f0010 	sw	t7,16(v0)
    108c:	8ca90000 	lw	t1,0(a1)
    1090:	ac690000 	sw	t1,0(v1)
    1094:	8ca80004 	lw	t0,4(a1)
    1098:	ac680004 	sw	t0,4(v1)
    109c:	8ca90008 	lw	t1,8(a1)
    10a0:	ac690008 	sw	t1,8(v1)
    10a4:	8ca8000c 	lw	t0,12(a1)
    10a8:	ac68000c 	sw	t0,12(v1)
    10ac:	8ca90010 	lw	t1,16(a1)
    10b0:	ac690010 	sw	t1,16(v1)
    10b4:	908a1cec 	lbu	t2,7404(a0)
    10b8:	394b0001 	xori	t3,t2,0x1
    10bc:	a02b1cec 	sb	t3,7404(at)
    10c0:	3c010001 	lui	at,0x1
    10c4:	34211cbc 	ori	at,at,0x1cbc
    10c8:	02012821 	addu	a1,s0,at
    10cc:	0c000000 	jal	0 <func_809962A0>
    10d0:	02002025 	move	a0,s0
    10d4:	02002025 	move	a0,s0
    10d8:	00002825 	move	a1,zero
    10dc:	0c000000 	jal	0 <func_809962A0>
    10e0:	24060eff 	li	a2,3839
    10e4:	44804000 	mtc1	zero,$f8
    10e8:	a6200164 	sh	zero,356(s1)
    10ec:	02202025 	move	a0,s1
    10f0:	02002825 	move	a1,s0
    10f4:	0c000000 	jal	0 <func_809962A0>
    10f8:	e6280060 	swc1	$f8,96(s1)
    10fc:	1040000d 	beqz	v0,1134 <func_80997220+0x1b4>
    1100:	8fac004c 	lw	t4,76(sp)
    1104:	8d8d067c 	lw	t5,1660(t4)
    1108:	02202025 	move	a0,s1
    110c:	3c050000 	lui	a1,0x0
    1110:	31ae0800 	andi	t6,t5,0x800
    1114:	55c00008 	bnezl	t6,1138 <func_80997220+0x1b8>
    1118:	8fbf001c 	lw	ra,28(sp)
    111c:	0c000000 	jal	0 <func_809962A0>
    1120:	24a50000 	addiu	a1,a1,0
    1124:	02002025 	move	a0,s0
    1128:	00002825 	move	a1,zero
    112c:	0c000000 	jal	0 <func_809962A0>
    1130:	24060002 	li	a2,2
    1134:	8fbf001c 	lw	ra,28(sp)
    1138:	8fb00014 	lw	s0,20(sp)
    113c:	8fb10018 	lw	s1,24(sp)
    1140:	03e00008 	jr	ra
    1144:	27bd0050 	addiu	sp,sp,80

00001148 <func_809973E8>:
    1148:	27bdffb8 	addiu	sp,sp,-72
    114c:	afbf0034 	sw	ra,52(sp)
    1150:	afb00030 	sw	s0,48(sp)
    1154:	afa5004c 	sw	a1,76(sp)
    1158:	3c0141a0 	lui	at,0x41a0
    115c:	44812000 	mtc1	at,$f4
    1160:	c4800060 	lwc1	$f0,96(a0)
    1164:	00808025 	move	s0,a0
    1168:	24840060 	addiu	a0,a0,96
    116c:	4604003c 	c.lt.s	$f0,$f4
    1170:	3c0541a0 	lui	a1,0x41a0
    1174:	45020005 	bc1fl	118c <func_809973E8+0x44>
    1178:	44060000 	mfc1	a2,$f0
    117c:	0c000000 	jal	0 <func_809962A0>
    1180:	3c064100 	lui	a2,0x4100
    1184:	c6000060 	lwc1	$f0,96(s0)
    1188:	44060000 	mfc1	a2,$f0
    118c:	26040028 	addiu	a0,s0,40
    1190:	0c000000 	jal	0 <func_809962A0>
    1194:	8e05000c 	lw	a1,12(s0)
    1198:	10400036 	beqz	v0,1274 <func_809973E8+0x12c>
    119c:	3c0141a0 	lui	at,0x41a0
    11a0:	44813000 	mtc1	at,$f6
    11a4:	c6080060 	lwc1	$f8,96(s0)
    11a8:	3c014100 	lui	at,0x4100
    11ac:	02002825 	move	a1,s0
    11b0:	4608303c 	c.lt.s	$f6,$f8
    11b4:	26060024 	addiu	a2,s0,36
    11b8:	3c074234 	lui	a3,0x4234
    11bc:	240e000a 	li	t6,10
    11c0:	4500000c 	bc1f	11f4 <func_809973E8+0xac>
    11c4:	240f01f4 	li	t7,500
    11c8:	c60a000c 	lwc1	$f10,12(s0)
    11cc:	44818000 	mtc1	at,$f16
    11d0:	2418000a 	li	t8,10
    11d4:	e60a0080 	swc1	$f10,128(s0)
    11d8:	afa00020 	sw	zero,32(sp)
    11dc:	afb8001c 	sw	t8,28(sp)
    11e0:	afaf0018 	sw	t7,24(sp)
    11e4:	afae0010 	sw	t6,16(sp)
    11e8:	8fa4004c 	lw	a0,76(sp)
    11ec:	0c000000 	jal	0 <func_809962A0>
    11f0:	e7b00014 	swc1	$f16,20(sp)
    11f4:	02002025 	move	a0,s0
    11f8:	0c000000 	jal	0 <func_809962A0>
    11fc:	2405281d 	li	a1,10269
    1200:	8fa4004c 	lw	a0,76(sp)
    1204:	0c000000 	jal	0 <func_809962A0>
    1208:	00002825 	move	a1,zero
    120c:	00402025 	move	a0,v0
    1210:	0c000000 	jal	0 <func_809962A0>
    1214:	24050003 	li	a1,3
    1218:	00022400 	sll	a0,v0,0x10
    121c:	afa20044 	sw	v0,68(sp)
    1220:	00042403 	sra	a0,a0,0x10
    1224:	0c000000 	jal	0 <func_809962A0>
    1228:	240580e8 	li	a1,-32536
    122c:	87a40046 	lh	a0,70(sp)
    1230:	24050002 	li	a1,2
    1234:	00003025 	move	a2,zero
    1238:	00003825 	move	a3,zero
    123c:	afa00010 	sw	zero,16(sp)
    1240:	0c000000 	jal	0 <func_809962A0>
    1244:	afa4003c 	sw	a0,60(sp)
    1248:	8fa4003c 	lw	a0,60(sp)
    124c:	0c000000 	jal	0 <func_809962A0>
    1250:	2405000a 	li	a1,10
    1254:	c60c008c 	lwc1	$f12,140(s0)
    1258:	240500b4 	li	a1,180
    125c:	24060014 	li	a2,20
    1260:	0c000000 	jal	0 <func_809962A0>
    1264:	24070064 	li	a3,100
    1268:	02002025 	move	a0,s0
    126c:	0c000000 	jal	0 <func_809962A0>
    1270:	8fa5004c 	lw	a1,76(sp)
    1274:	8fbf0034 	lw	ra,52(sp)
    1278:	8fb00030 	lw	s0,48(sp)
    127c:	27bd0048 	addiu	sp,sp,72
    1280:	03e00008 	jr	ra
    1284:	00000000 	nop

00001288 <func_80997528>:
    1288:	27bdffe8 	addiu	sp,sp,-24
    128c:	afbf0014 	sw	ra,20(sp)
    1290:	afa40018 	sw	a0,24(sp)
    1294:	afa5001c 	sw	a1,28(sp)
    1298:	24050064 	li	a1,100
    129c:	24840166 	addiu	a0,a0,358
    12a0:	0c000000 	jal	0 <func_809962A0>
    12a4:	2406000a 	li	a2,10
    12a8:	10400003 	beqz	v0,12b8 <func_80997528+0x30>
    12ac:	8fa40018 	lw	a0,24(sp)
    12b0:	0c000000 	jal	0 <func_809962A0>
    12b4:	8fa5001c 	lw	a1,28(sp)
    12b8:	8fbf0014 	lw	ra,20(sp)
    12bc:	27bd0018 	addiu	sp,sp,24
    12c0:	03e00008 	jr	ra
    12c4:	00000000 	nop

000012c8 <func_80997568>:
    12c8:	27bdffe8 	addiu	sp,sp,-24
    12cc:	afbf0014 	sw	ra,20(sp)
    12d0:	afa5001c 	sw	a1,28(sp)
    12d4:	8082016f 	lb	v0,367(a0)
    12d8:	00803825 	move	a3,a0
    12dc:	00002825 	move	a1,zero
    12e0:	2843001f 	slti	v1,v0,31
    12e4:	38630001 	xori	v1,v1,0x1
    12e8:	244e0001 	addiu	t6,v0,1
    12ec:	10600008 	beqz	v1,1310 <func_80997568+0x48>
    12f0:	a08e016f 	sb	t6,367(a0)
    12f4:	8fa4001c 	lw	a0,28(sp)
    12f8:	24060007 	li	a2,7
    12fc:	0c000000 	jal	0 <func_809962A0>
    1300:	afa70018 	sw	a3,24(sp)
    1304:	8fa40018 	lw	a0,24(sp)
    1308:	0c000000 	jal	0 <func_809962A0>
    130c:	8fa5001c 	lw	a1,28(sp)
    1310:	8fbf0014 	lw	ra,20(sp)
    1314:	27bd0018 	addiu	sp,sp,24
    1318:	03e00008 	jr	ra
    131c:	00000000 	nop

00001320 <func_809975C0>:
    1320:	27bdffc0 	addiu	sp,sp,-64
    1324:	afbf0034 	sw	ra,52(sp)
    1328:	afb00030 	sw	s0,48(sp)
    132c:	00808025 	move	s0,a0
    1330:	0c000000 	jal	0 <func_809962A0>
    1334:	afa50044 	sw	a1,68(sp)
    1338:	44800000 	mtc1	zero,$f0
    133c:	240e0004 	li	t6,4
    1340:	afae0014 	sw	t6,20(sp)
    1344:	44060000 	mfc1	a2,$f0
    1348:	44070000 	mfc1	a3,$f0
    134c:	8fa40044 	lw	a0,68(sp)
    1350:	02002825 	move	a1,s0
    1354:	0c000000 	jal	0 <func_809962A0>
    1358:	e7a00010 	swc1	$f0,16(sp)
    135c:	960f0088 	lhu	t7,136(s0)
    1360:	02002025 	move	a0,s0
    1364:	3c050000 	lui	a1,0x0
    1368:	31f80001 	andi	t8,t7,0x1
    136c:	53000026 	beqzl	t8,1408 <func_809975C0+0xe8>
    1370:	8fbf0034 	lw	ra,52(sp)
    1374:	0c000000 	jal	0 <func_809962A0>
    1378:	24a50000 	addiu	a1,a1,0
    137c:	3c190000 	lui	t9,0x0
    1380:	97390ee2 	lhu	t9,3810(t9)
    1384:	240a000a 	li	t2,10
    1388:	33280001 	andi	t0,t9,0x1
    138c:	5500001e 	bnezl	t0,1408 <func_809975C0+0xe8>
    1390:	8fbf0034 	lw	ra,52(sp)
    1394:	8e090118 	lw	t1,280(s0)
    1398:	02002025 	move	a0,s0
    139c:	2405281d 	li	a1,10269
    13a0:	afa9003c 	sw	t1,60(sp)
    13a4:	0c000000 	jal	0 <func_809962A0>
    13a8:	a60a0164 	sh	t2,356(s0)
    13ac:	8fab003c 	lw	t3,60(sp)
    13b0:	8fa40044 	lw	a0,68(sp)
    13b4:	24050002 	li	a1,2
    13b8:	2406000a 	li	a2,10
    13bc:	0c000000 	jal	0 <func_809962A0>
    13c0:	856701bc 	lh	a3,444(t3)
    13c4:	3c014100 	lui	at,0x4100
    13c8:	44812000 	mtc1	at,$f4
    13cc:	240c0014 	li	t4,20
    13d0:	240d01f4 	li	t5,500
    13d4:	240e000a 	li	t6,10
    13d8:	240f0001 	li	t7,1
    13dc:	afaf0020 	sw	t7,32(sp)
    13e0:	afae001c 	sw	t6,28(sp)
    13e4:	afad0018 	sw	t5,24(sp)
    13e8:	afac0010 	sw	t4,16(sp)
    13ec:	8fa40044 	lw	a0,68(sp)
    13f0:	02002825 	move	a1,s0
    13f4:	26060024 	addiu	a2,s0,36
    13f8:	3c07428c 	lui	a3,0x428c
    13fc:	0c000000 	jal	0 <func_809962A0>
    1400:	e7a40014 	swc1	$f4,20(sp)
    1404:	8fbf0034 	lw	ra,52(sp)
    1408:	8fb00030 	lw	s0,48(sp)
    140c:	27bd0040 	addiu	sp,sp,64
    1410:	03e00008 	jr	ra
    1414:	00000000 	nop

00001418 <func_809976B8>:
    1418:	27bdffe8 	addiu	sp,sp,-24
    141c:	afbf0014 	sw	ra,20(sp)
    1420:	afa5001c 	sw	a1,28(sp)
    1424:	84820164 	lh	v0,356(a0)
    1428:	1040001a 	beqz	v0,1494 <func_809976B8+0x7c>
    142c:	244effff 	addiu	t6,v0,-1
    1430:	a48e0164 	sh	t6,356(a0)
    1434:	848f0164 	lh	t7,356(a0)
    1438:	3c01437a 	lui	at,0x437a
    143c:	44814000 	mtc1	at,$f8
    1440:	448f2000 	mtc1	t7,$f4
    1444:	3c0142c8 	lui	at,0x42c8
    1448:	44818000 	mtc1	at,$f16
    144c:	468021a0 	cvt.s.w	$f6,$f4
    1450:	afa40018 	sw	a0,24(sp)
    1454:	46083282 	mul.s	$f10,$f6,$f8
    1458:	0c000000 	jal	0 <func_809962A0>
    145c:	46105303 	div.s	$f12,$f10,$f16
    1460:	8fa40018 	lw	a0,24(sp)
    1464:	3c014040 	lui	at,0x4040
    1468:	44813000 	mtc1	at,$f6
    146c:	84980164 	lh	t8,356(a0)
    1470:	3c014120 	lui	at,0x4120
    1474:	44815000 	mtc1	at,$f10
    1478:	44989000 	mtc1	t8,$f18
    147c:	00000000 	nop
    1480:	46809120 	cvt.s.w	$f4,$f18
    1484:	46062202 	mul.s	$f8,$f4,$f6
    1488:	460a4403 	div.s	$f16,$f8,$f10
    148c:	46008482 	mul.s	$f18,$f16,$f0
    1490:	e49200bc 	swc1	$f18,188(a0)
    1494:	8fbf0014 	lw	ra,20(sp)
    1498:	27bd0018 	addiu	sp,sp,24
    149c:	03e00008 	jr	ra
    14a0:	00000000 	nop

000014a4 <func_80997744>:
    14a4:	27bdffe0 	addiu	sp,sp,-32
    14a8:	afa40020 	sw	a0,32(sp)
    14ac:	afbf001c 	sw	ra,28(sp)
    14b0:	3c040000 	lui	a0,0x0
    14b4:	afa50024 	sw	a1,36(sp)
    14b8:	0c000000 	jal	0 <func_809962A0>
    14bc:	24840000 	addiu	a0,a0,0
    14c0:	8fa30020 	lw	v1,32(sp)
    14c4:	3c01c040 	lui	at,0xc040
    14c8:	84620164 	lh	v0,356(v1)
    14cc:	10400003 	beqz	v0,14dc <func_80997744+0x38>
    14d0:	244effff 	addiu	t6,v0,-1
    14d4:	a46e0164 	sh	t6,356(v1)
    14d8:	84620164 	lh	v0,356(v1)
    14dc:	304f0001 	andi	t7,v0,0x1
    14e0:	51e00005 	beqzl	t7,14f8 <func_80997744+0x54>
    14e4:	44800000 	mtc1	zero,$f0
    14e8:	44810000 	mtc1	at,$f0
    14ec:	10000004 	b	1500 <func_80997744+0x5c>
    14f0:	3c01c208 	lui	at,0xc208
    14f4:	44800000 	mtc1	zero,$f0
    14f8:	00000000 	nop
    14fc:	3c01c208 	lui	at,0xc208
    1500:	44812000 	mtc1	at,$f4
    1504:	44804000 	mtc1	zero,$f8
    1508:	24640028 	addiu	a0,v1,40
    150c:	46002180 	add.s	$f6,$f4,$f0
    1510:	3c063f80 	lui	a2,0x3f80
    1514:	3c0741a0 	lui	a3,0x41a0
    1518:	e7a80010 	swc1	$f8,16(sp)
    151c:	44053000 	mfc1	a1,$f6
    1520:	0c000000 	jal	0 <func_809962A0>
    1524:	00000000 	nop
    1528:	3c040000 	lui	a0,0x0
    152c:	0c000000 	jal	0 <func_809962A0>
    1530:	24840000 	addiu	a0,a0,0
    1534:	8fbf001c 	lw	ra,28(sp)
    1538:	27bd0020 	addiu	sp,sp,32
    153c:	03e00008 	jr	ra
    1540:	00000000 	nop

00001544 <DoorShutter_Update>:
    1544:	27bdffe8 	addiu	sp,sp,-24
    1548:	afbf0014 	sw	ra,20(sp)
    154c:	8ca21c44 	lw	v0,7236(a1)
    1550:	3c011000 	lui	at,0x1000
    1554:	342104c0 	ori	at,at,0x4c0
    1558:	8c4e067c 	lw	t6,1660(v0)
    155c:	01c17824 	and	t7,t6,at
    1560:	51e00007 	beqzl	t7,1580 <DoorShutter_Update+0x3c>
    1564:	8c990174 	lw	t9,372(a0)
    1568:	8c990174 	lw	t9,372(a0)
    156c:	3c180000 	lui	t8,0x0
    1570:	27180000 	addiu	t8,t8,0
    1574:	57190005 	bnel	t8,t9,158c <DoorShutter_Update+0x48>
    1578:	8fbf0014 	lw	ra,20(sp)
    157c:	8c990174 	lw	t9,372(a0)
    1580:	0320f809 	jalr	t9
    1584:	00000000 	nop
    1588:	8fbf0014 	lw	ra,20(sp)
    158c:	27bd0018 	addiu	sp,sp,24
    1590:	03e00008 	jr	ra
    1594:	00000000 	nop

00001598 <func_80997838>:
    1598:	27bdff38 	addiu	sp,sp,-200
    159c:	afbf006c 	sw	ra,108(sp)
    15a0:	afbe0068 	sw	s8,104(sp)
    15a4:	afb70064 	sw	s7,100(sp)
    15a8:	afb60060 	sw	s6,96(sp)
    15ac:	afb5005c 	sw	s5,92(sp)
    15b0:	afb40058 	sw	s4,88(sp)
    15b4:	afb30054 	sw	s3,84(sp)
    15b8:	afb20050 	sw	s2,80(sp)
    15bc:	afb1004c 	sw	s1,76(sp)
    15c0:	afb00048 	sw	s0,72(sp)
    15c4:	f7be0040 	sdc1	$f30,64(sp)
    15c8:	f7bc0038 	sdc1	$f28,56(sp)
    15cc:	f7ba0030 	sdc1	$f26,48(sp)
    15d0:	f7b80028 	sdc1	$f24,40(sp)
    15d4:	f7b60020 	sdc1	$f22,32(sp)
    15d8:	f7b40018 	sdc1	$f20,24(sp)
    15dc:	afa400c8 	sw	a0,200(sp)
    15e0:	afa500cc 	sw	a1,204(sp)
    15e4:	84af0166 	lh	t7,358(a1)
    15e8:	3c010000 	lui	at,0x0
    15ec:	c4280000 	lwc1	$f8,0(at)
    15f0:	448f2000 	mtc1	t7,$f4
    15f4:	4480a000 	mtc1	zero,$f20
    15f8:	00c09025 	move	s2,a2
    15fc:	468021a0 	cvt.s.w	$f6,$f4
    1600:	27a40088 	addiu	a0,sp,136
    1604:	4600a586 	mov.s	$f22,$f20
    1608:	46083282 	mul.s	$f10,$f6,$f8
    160c:	0c000000 	jal	0 <func_809962A0>
    1610:	e7aa0080 	swc1	$f10,128(sp)
    1614:	3c010000 	lui	at,0x0
    1618:	c43e0000 	lwc1	$f30,0(at)
    161c:	3c010000 	lui	at,0x0
    1620:	c43c0000 	lwc1	$f28,0(at)
    1624:	3c014448 	lui	at,0x4448
    1628:	4481d000 	mtc1	at,$f26
    162c:	3c013f80 	lui	at,0x3f80
    1630:	3c130000 	lui	s3,0x0
    1634:	3c160000 	lui	s6,0x0
    1638:	3c15da38 	lui	s5,0xda38
    163c:	4481c000 	mtc1	at,$f24
    1640:	36b50003 	ori	s5,s5,0x3
    1644:	26d60000 	addiu	s6,s6,0
    1648:	26730000 	addiu	s3,s3,0
    164c:	00008825 	move	s1,zero
    1650:	241e0008 	li	s8,8
    1654:	3c17de00 	lui	s7,0xde00
    1658:	24140064 	li	s4,100
    165c:	4600b306 	mov.s	$f12,$f22
    1660:	0c000000 	jal	0 <func_809962A0>
    1664:	24050001 	li	a1,1
    1668:	32380001 	andi	t8,s1,0x1
    166c:	17000008 	bnez	t8,1690 <func_80997838+0xf8>
    1670:	24010001 	li	at,1
    1674:	4406a000 	mfc1	a2,$f20
    1678:	4600a306 	mov.s	$f12,$f20
    167c:	4600d386 	mov.s	$f14,$f26
    1680:	0c000000 	jal	0 <func_809962A0>
    1684:	24070001 	li	a3,1
    1688:	10000013 	b	16d8 <func_80997838+0x140>
    168c:	8fb900cc 	lw	t9,204(sp)
    1690:	12210004 	beq	s1,at,16a4 <func_80997838+0x10c>
    1694:	24070001 	li	a3,1
    1698:	24010007 	li	at,7
    169c:	16210007 	bne	s1,at,16bc <func_80997838+0x124>
    16a0:	00000000 	nop
    16a4:	4406a000 	mfc1	a2,$f20
    16a8:	4600a306 	mov.s	$f12,$f20
    16ac:	0c000000 	jal	0 <func_809962A0>
    16b0:	4600f386 	mov.s	$f14,$f30
    16b4:	10000008 	b	16d8 <func_80997838+0x140>
    16b8:	8fb900cc 	lw	t9,204(sp)
    16bc:	3c010000 	lui	at,0x0
    16c0:	4406a000 	mfc1	a2,$f20
    16c4:	c42e0000 	lwc1	$f14,0(at)
    16c8:	4600a306 	mov.s	$f12,$f20
    16cc:	0c000000 	jal	0 <func_809962A0>
    16d0:	24070001 	li	a3,1
    16d4:	8fb900cc 	lw	t9,204(sp)
    16d8:	c7ae0080 	lwc1	$f14,128(sp)
    16dc:	24070001 	li	a3,1
    16e0:	87280166 	lh	t0,358(t9)
    16e4:	52880005 	beql	s4,t0,16fc <func_80997838+0x164>
    16e8:	02408025 	move	s0,s2
    16ec:	4406c000 	mfc1	a2,$f24
    16f0:	0c000000 	jal	0 <func_809962A0>
    16f4:	4600c306 	mov.s	$f12,$f24
    16f8:	02408025 	move	s0,s2
    16fc:	ae150000 	sw	s5,0(s0)
    1700:	8fa900c8 	lw	t1,200(sp)
    1704:	26520008 	addiu	s2,s2,8
    1708:	02c02825 	move	a1,s6
    170c:	240607c7 	li	a2,1991
    1710:	0c000000 	jal	0 <func_809962A0>
    1714:	8d240000 	lw	a0,0(t1)
    1718:	ae020004 	sw	v0,4(s0)
    171c:	02401025 	move	v0,s2
    1720:	ac570000 	sw	s7,0(v0)
    1724:	8e6a0000 	lw	t2,0(s3)
    1728:	26520008 	addiu	s2,s2,8
    172c:	461cb581 	sub.s	$f22,$f22,$f28
    1730:	27a40088 	addiu	a0,sp,136
    1734:	0c000000 	jal	0 <func_809962A0>
    1738:	ac4a0004 	sw	t2,4(v0)
    173c:	26310001 	addiu	s1,s1,1
    1740:	163effc6 	bne	s1,s8,165c <func_80997838+0xc4>
    1744:	26730004 	addiu	s3,s3,4
    1748:	8fbf006c 	lw	ra,108(sp)
    174c:	02401025 	move	v0,s2
    1750:	8fb20050 	lw	s2,80(sp)
    1754:	d7b40018 	ldc1	$f20,24(sp)
    1758:	d7b60020 	ldc1	$f22,32(sp)
    175c:	d7b80028 	ldc1	$f24,40(sp)
    1760:	d7ba0030 	ldc1	$f26,48(sp)
    1764:	d7bc0038 	ldc1	$f28,56(sp)
    1768:	d7be0040 	ldc1	$f30,64(sp)
    176c:	8fb00048 	lw	s0,72(sp)
    1770:	8fb1004c 	lw	s1,76(sp)
    1774:	8fb30054 	lw	s3,84(sp)
    1778:	8fb40058 	lw	s4,88(sp)
    177c:	8fb5005c 	lw	s5,92(sp)
    1780:	8fb60060 	lw	s6,96(sp)
    1784:	8fb70064 	lw	s7,100(sp)
    1788:	8fbe0068 	lw	s8,104(sp)
    178c:	03e00008 	jr	ra
    1790:	27bd00c8 	addiu	sp,sp,200

00001794 <func_80997A34>:
    1794:	27bdffe8 	addiu	sp,sp,-24
    1798:	afbf0014 	sw	ra,20(sp)
    179c:	afa40018 	sw	a0,24(sp)
    17a0:	afa5001c 	sw	a1,28(sp)
    17a4:	0c000000 	jal	0 <func_809962A0>
    17a8:	00a02025 	move	a0,a1
    17ac:	10400003 	beqz	v0,17bc <func_80997A34+0x28>
    17b0:	8fa5001c 	lw	a1,28(sp)
    17b4:	1000001e 	b	1830 <func_80997A34+0x9c>
    17b8:	24020001 	li	v0,1
    17bc:	8fa40018 	lw	a0,24(sp)
    17c0:	0c000000 	jal	0 <func_809962A0>
    17c4:	24a500e0 	addiu	a1,a1,224
    17c8:	8fae0018 	lw	t6,24(sp)
    17cc:	85c300b6 	lh	v1,182(t6)
    17d0:	85cf008a 	lh	t7,138(t6)
    17d4:	00432023 	subu	a0,v0,v1
    17d8:	00042400 	sll	a0,a0,0x10
    17dc:	01e32823 	subu	a1,t7,v1
    17e0:	00042403 	sra	a0,a0,0x10
    17e4:	00052c00 	sll	a1,a1,0x10
    17e8:	04810002 	bgez	a0,17f4 <func_80997A34+0x60>
    17ec:	00052c03 	sra	a1,a1,0x10
    17f0:	00042023 	negu	a0,a0
    17f4:	04a30003 	bgezl	a1,1804 <func_80997A34+0x70>
    17f8:	28a14000 	slti	at,a1,16384
    17fc:	00052823 	negu	a1,a1
    1800:	28a14000 	slti	at,a1,16384
    1804:	10200002 	beqz	at,1810 <func_80997A34+0x7c>
    1808:	28814001 	slti	at,a0,16385
    180c:	10200006 	beqz	at,1828 <func_80997A34+0x94>
    1810:	28a14001 	slti	at,a1,16385
    1814:	14200006 	bnez	at,1830 <func_80997A34+0x9c>
    1818:	24020001 	li	v0,1
    181c:	28814000 	slti	at,a0,16384
    1820:	10200003 	beqz	at,1830 <func_80997A34+0x9c>
    1824:	00000000 	nop
    1828:	10000001 	b	1830 <func_80997A34+0x9c>
    182c:	00001025 	move	v0,zero
    1830:	8fbf0014 	lw	ra,20(sp)
    1834:	27bd0018 	addiu	sp,sp,24
    1838:	03e00008 	jr	ra
    183c:	00000000 	nop

00001840 <DoorShutter_Draw>:
    1840:	27bdff80 	addiu	sp,sp,-128
    1844:	afbf001c 	sw	ra,28(sp)
    1848:	afb10018 	sw	s1,24(sp)
    184c:	afb00014 	sw	s0,20(sp)
    1850:	afa50084 	sw	a1,132(sp)
    1854:	808f001e 	lb	t7,30(a0)
    1858:	808e016d 	lb	t6,365(a0)
    185c:	00808825 	move	s1,a0
    1860:	55cf014a 	bnel	t6,t7,1d8c <DoorShutter_Draw+0x54c>
    1864:	8fbf001c 	lw	ra,28(sp)
    1868:	9098016b 	lbu	t8,363(a0)
    186c:	53000006 	beqzl	t8,1888 <DoorShutter_Draw+0x48>
    1870:	9239016c 	lbu	t9,364(s1)
    1874:	0c000000 	jal	0 <func_809962A0>
    1878:	00000000 	nop
    187c:	50400143 	beqzl	v0,1d8c <DoorShutter_Draw+0x54c>
    1880:	8fbf001c 	lw	ra,28(sp)
    1884:	9239016c 	lbu	t9,364(s1)
    1888:	3c090000 	lui	t1,0x0
    188c:	8fab0084 	lw	t3,132(sp)
    1890:	00194080 	sll	t0,t9,0x2
    1894:	01194023 	subu	t0,t0,t9
    1898:	00084080 	sll	t0,t0,0x2
    189c:	25290000 	addiu	t1,t1,0
    18a0:	01095021 	addu	t2,t0,t1
    18a4:	afaa0070 	sw	t2,112(sp)
    18a8:	8d650000 	lw	a1,0(t3)
    18ac:	3c060000 	lui	a2,0x0
    18b0:	24c60000 	addiu	a2,a2,0
    18b4:	27a4005c 	addiu	a0,sp,92
    18b8:	24070800 	li	a3,2048
    18bc:	0c000000 	jal	0 <func_809962A0>
    18c0:	00a08025 	move	s0,a1
    18c4:	8fac0084 	lw	t4,132(sp)
    18c8:	0c000000 	jal	0 <func_809962A0>
    18cc:	8d840000 	lw	a0,0(t4)
    18d0:	922d016c 	lbu	t5,364(s1)
    18d4:	24010003 	li	at,3
    18d8:	8fa40084 	lw	a0,132(sp)
    18dc:	15a1006f 	bne	t5,at,1a9c <DoorShutter_Draw+0x25c>
    18e0:	8faa0070 	lw	t2,112(sp)
    18e4:	02202825 	move	a1,s1
    18e8:	0c000000 	jal	0 <func_809962A0>
    18ec:	8e0602c0 	lw	a2,704(s0)
    18f0:	ae0202c0 	sw	v0,704(s0)
    18f4:	c6200170 	lwc1	$f0,368(s1)
    18f8:	44802000 	mtc1	zero,$f4
    18fc:	00000000 	nop
    1900:	46002032 	c.eq.s	$f4,$f0
    1904:	00000000 	nop
    1908:	450300fe 	bc1tl	1d04 <DoorShutter_Draw+0x4c4>
    190c:	822b016e 	lb	t3,366(s1)
    1910:	862e0166 	lh	t6,358(s1)
    1914:	3c010000 	lui	at,0x0
    1918:	c42a0000 	lwc1	$f10,0(at)
    191c:	448e3000 	mtc1	t6,$f6
    1920:	8faf0084 	lw	t7,132(sp)
    1924:	46803220 	cvt.s.w	$f8,$f6
    1928:	460a4402 	mul.s	$f16,$f8,$f10
    192c:	00000000 	nop
    1930:	46008482 	mul.s	$f18,$f16,$f0
    1934:	e7b20058 	swc1	$f18,88(sp)
    1938:	0c000000 	jal	0 <func_809962A0>
    193c:	8de40000 	lw	a0,0(t7)
    1940:	8e0302c0 	lw	v1,704(s0)
    1944:	3c19fb00 	lui	t9,0xfb00
    1948:	3c01437f 	lui	at,0x437f
    194c:	24780008 	addiu	t8,v1,8
    1950:	ae1802c0 	sw	t8,704(s0)
    1954:	ac790000 	sw	t9,0(v1)
    1958:	c7a60058 	lwc1	$f6,88(sp)
    195c:	44812000 	mtc1	at,$f4
    1960:	24090001 	li	t1,1
    1964:	3c014f00 	lui	at,0x4f00
    1968:	46062202 	mul.s	$f8,$f4,$f6
    196c:	4448f800 	cfc1	t0,$31
    1970:	44c9f800 	ctc1	t1,$31
    1974:	00000000 	nop
    1978:	460042a4 	cvt.w.s	$f10,$f8
    197c:	4449f800 	cfc1	t1,$31
    1980:	00000000 	nop
    1984:	31290078 	andi	t1,t1,0x78
    1988:	51200013 	beqzl	t1,19d8 <DoorShutter_Draw+0x198>
    198c:	44095000 	mfc1	t1,$f10
    1990:	44815000 	mtc1	at,$f10
    1994:	24090001 	li	t1,1
    1998:	460a4281 	sub.s	$f10,$f8,$f10
    199c:	44c9f800 	ctc1	t1,$31
    19a0:	00000000 	nop
    19a4:	460052a4 	cvt.w.s	$f10,$f10
    19a8:	4449f800 	cfc1	t1,$31
    19ac:	00000000 	nop
    19b0:	31290078 	andi	t1,t1,0x78
    19b4:	15200005 	bnez	t1,19cc <DoorShutter_Draw+0x18c>
    19b8:	00000000 	nop
    19bc:	44095000 	mfc1	t1,$f10
    19c0:	3c018000 	lui	at,0x8000
    19c4:	10000007 	b	19e4 <DoorShutter_Draw+0x1a4>
    19c8:	01214825 	or	t1,t1,at
    19cc:	10000005 	b	19e4 <DoorShutter_Draw+0x1a4>
    19d0:	2409ffff 	li	t1,-1
    19d4:	44095000 	mfc1	t1,$f10
    19d8:	00000000 	nop
    19dc:	0520fffb 	bltz	t1,19cc <DoorShutter_Draw+0x18c>
    19e0:	00000000 	nop
    19e4:	312a00ff 	andi	t2,t1,0xff
    19e8:	ac6a0004 	sw	t2,4(v1)
    19ec:	8fab0070 	lw	t3,112(sp)
    19f0:	44c8f800 	ctc1	t0,$31
    19f4:	44806000 	mtc1	zero,$f12
    19f8:	916c0009 	lbu	t4,9(t3)
    19fc:	3c014f80 	lui	at,0x4f80
    1a00:	46006386 	mov.s	$f14,$f12
    1a04:	448c8000 	mtc1	t4,$f16
    1a08:	05810004 	bgez	t4,1a1c <DoorShutter_Draw+0x1dc>
    1a0c:	46808420 	cvt.s.w	$f16,$f16
    1a10:	44819000 	mtc1	at,$f18
    1a14:	00000000 	nop
    1a18:	46128400 	add.s	$f16,$f16,$f18
    1a1c:	44068000 	mfc1	a2,$f16
    1a20:	0c000000 	jal	0 <func_809962A0>
    1a24:	24070001 	li	a3,1
    1a28:	c7ac0058 	lwc1	$f12,88(sp)
    1a2c:	24070001 	li	a3,1
    1a30:	44066000 	mfc1	a2,$f12
    1a34:	0c000000 	jal	0 <func_809962A0>
    1a38:	46006386 	mov.s	$f14,$f12
    1a3c:	8e0202c0 	lw	v0,704(s0)
    1a40:	3c0eda38 	lui	t6,0xda38
    1a44:	35ce0003 	ori	t6,t6,0x3
    1a48:	244d0008 	addiu	t5,v0,8
    1a4c:	ae0d02c0 	sw	t5,704(s0)
    1a50:	ac4e0000 	sw	t6,0(v0)
    1a54:	8faf0084 	lw	t7,132(sp)
    1a58:	3c050000 	lui	a1,0x0
    1a5c:	24a50000 	addiu	a1,a1,0
    1a60:	8de40000 	lw	a0,0(t7)
    1a64:	24060815 	li	a2,2069
    1a68:	0c000000 	jal	0 <func_809962A0>
    1a6c:	afa20050 	sw	v0,80(sp)
    1a70:	8fa30050 	lw	v1,80(sp)
    1a74:	3c19de00 	lui	t9,0xde00
    1a78:	ac620004 	sw	v0,4(v1)
    1a7c:	8e0202c0 	lw	v0,704(s0)
    1a80:	24580008 	addiu	t8,v0,8
    1a84:	ae1802c0 	sw	t8,704(s0)
    1a88:	ac590000 	sw	t9,0(v0)
    1a8c:	8fa80070 	lw	t0,112(sp)
    1a90:	8d090004 	lw	t1,4(t0)
    1a94:	1000009a 	b	1d00 <DoorShutter_Draw+0x4c0>
    1a98:	ac490004 	sw	t1,4(v0)
    1a9c:	8d4b0004 	lw	t3,4(t2)
    1aa0:	8fa20084 	lw	v0,132(sp)
    1aa4:	3c010001 	lui	at,0x1
    1aa8:	11600029 	beqz	t3,1b50 <DoorShutter_Draw+0x310>
    1aac:	00411021 	addu	v0,v0,at
    1ab0:	962d001c 	lhu	t5,28(s1)
    1ab4:	80581cd0 	lb	t8,7376(v0)
    1ab8:	8c4c1d38 	lw	t4,7480(v0)
    1abc:	000d7283 	sra	t6,t5,0xa
    1ac0:	000e7900 	sll	t7,t6,0x4
    1ac4:	07010005 	bgez	t8,1adc <DoorShutter_Draw+0x29c>
    1ac8:	018f1821 	addu	v1,t4,t7
    1acc:	80620000 	lb	v0,0(v1)
    1ad0:	80790002 	lb	t9,2(v1)
    1ad4:	54590016 	bnel	v0,t9,1b30 <DoorShutter_Draw+0x2f0>
    1ad8:	82290003 	lb	t1,3(s1)
    1adc:	8fa40084 	lw	a0,132(sp)
    1ae0:	26250024 	addiu	a1,s1,36
    1ae4:	0c000000 	jal	0 <func_809962A0>
    1ae8:	248400e0 	addiu	a0,a0,224
    1aec:	862800b6 	lh	t0,182(s1)
    1af0:	24050001 	li	a1,1
    1af4:	01021823 	subu	v1,t0,v0
    1af8:	00031c00 	sll	v1,v1,0x10
    1afc:	00031c03 	sra	v1,v1,0x10
    1b00:	04600003 	bltz	v1,1b10 <DoorShutter_Draw+0x2d0>
    1b04:	00033023 	negu	a2,v1
    1b08:	10000001 	b	1b10 <DoorShutter_Draw+0x2d0>
    1b0c:	00603025 	move	a2,v1
    1b10:	28c14000 	slti	at,a2,16384
    1b14:	1020002a 	beqz	at,1bc0 <DoorShutter_Draw+0x380>
    1b18:	3c010000 	lui	at,0x0
    1b1c:	0c000000 	jal	0 <func_809962A0>
    1b20:	c42c0000 	lwc1	$f12,0(at)
    1b24:	10000027 	b	1bc4 <DoorShutter_Draw+0x384>
    1b28:	8e0202c0 	lw	v0,704(s0)
    1b2c:	82290003 	lb	t1,3(s1)
    1b30:	3c010000 	lui	at,0x0
    1b34:	24050001 	li	a1,1
    1b38:	55220022 	bnel	t1,v0,1bc4 <DoorShutter_Draw+0x384>
    1b3c:	8e0202c0 	lw	v0,704(s0)
    1b40:	0c000000 	jal	0 <func_809962A0>
    1b44:	c42c0000 	lwc1	$f12,0(at)
    1b48:	1000001e 	b	1bc4 <DoorShutter_Draw+0x384>
    1b4c:	8e0202c0 	lw	v0,704(s0)
    1b50:	922a016a 	lbu	t2,362(s1)
    1b54:	24010005 	li	at,5
    1b58:	5541001a 	bnel	t2,at,1bc4 <DoorShutter_Draw+0x384>
    1b5c:	8e0202c0 	lw	v0,704(s0)
    1b60:	8e0202c0 	lw	v0,704(s0)
    1b64:	3c0ddb06 	lui	t5,0xdb06
    1b68:	35ad0020 	ori	t5,t5,0x20
    1b6c:	244b0008 	addiu	t3,v0,8
    1b70:	ae0b02c0 	sw	t3,704(s0)
    1b74:	ac4d0000 	sw	t5,0(v0)
    1b78:	862e0168 	lh	t6,360(s1)
    1b7c:	3c040000 	lui	a0,0x0
    1b80:	3c090000 	lui	t1,0x0
    1b84:	000e6080 	sll	t4,t6,0x2
    1b88:	008c2021 	addu	a0,a0,t4
    1b8c:	8c840000 	lw	a0,0(a0)
    1b90:	3c0100ff 	lui	at,0xff
    1b94:	3421ffff 	ori	at,at,0xffff
    1b98:	0004c100 	sll	t8,a0,0x4
    1b9c:	0018cf02 	srl	t9,t8,0x1c
    1ba0:	00194080 	sll	t0,t9,0x2
    1ba4:	01284821 	addu	t1,t1,t0
    1ba8:	8d290000 	lw	t1,0(t1)
    1bac:	00817824 	and	t7,a0,at
    1bb0:	3c018000 	lui	at,0x8000
    1bb4:	01e95021 	addu	t2,t7,t1
    1bb8:	01415821 	addu	t3,t2,at
    1bbc:	ac4b0004 	sw	t3,4(v0)
    1bc0:	8e0202c0 	lw	v0,704(s0)
    1bc4:	3c0eda38 	lui	t6,0xda38
    1bc8:	35ce0003 	ori	t6,t6,0x3
    1bcc:	244d0008 	addiu	t5,v0,8
    1bd0:	ae0d02c0 	sw	t5,704(s0)
    1bd4:	ac4e0000 	sw	t6,0(v0)
    1bd8:	8fac0084 	lw	t4,132(sp)
    1bdc:	3c050000 	lui	a1,0x0
    1be0:	24a50000 	addiu	a1,a1,0
    1be4:	8d840000 	lw	a0,0(t4)
    1be8:	2406083d 	li	a2,2109
    1bec:	0c000000 	jal	0 <func_809962A0>
    1bf0:	afa2003c 	sw	v0,60(sp)
    1bf4:	8fa3003c 	lw	v1,60(sp)
    1bf8:	3c19de00 	lui	t9,0xde00
    1bfc:	44802000 	mtc1	zero,$f4
    1c00:	ac620004 	sw	v0,4(v1)
    1c04:	8e0202c0 	lw	v0,704(s0)
    1c08:	24580008 	addiu	t8,v0,8
    1c0c:	ae1802c0 	sw	t8,704(s0)
    1c10:	ac590000 	sw	t9,0(v0)
    1c14:	8fa80070 	lw	t0,112(sp)
    1c18:	8d0f0000 	lw	t7,0(t0)
    1c1c:	ac4f0004 	sw	t7,4(v0)
    1c20:	c6200170 	lwc1	$f0,368(s1)
    1c24:	8fa90070 	lw	t1,112(sp)
    1c28:	46002032 	c.eq.s	$f4,$f0
    1c2c:	00000000 	nop
    1c30:	45030034 	bc1tl	1d04 <DoorShutter_Draw+0x4c4>
    1c34:	822b016e 	lb	t3,366(s1)
    1c38:	8d2a0004 	lw	t2,4(t1)
    1c3c:	51400031 	beqzl	t2,1d04 <DoorShutter_Draw+0x4c4>
    1c40:	822b016e 	lb	t3,366(s1)
    1c44:	912b0008 	lbu	t3,8(t1)
    1c48:	44806000 	mtc1	zero,$f12
    1c4c:	3c014f80 	lui	at,0x4f80
    1c50:	448b3000 	mtc1	t3,$f6
    1c54:	05610004 	bgez	t3,1c68 <DoorShutter_Draw+0x428>
    1c58:	46803220 	cvt.s.w	$f8,$f6
    1c5c:	44815000 	mtc1	at,$f10
    1c60:	00000000 	nop
    1c64:	460a4200 	add.s	$f8,$f8,$f10
    1c68:	3c013f80 	lui	at,0x3f80
    1c6c:	44818000 	mtc1	at,$f16
    1c70:	912d0009 	lbu	t5,9(t1)
    1c74:	3c014f80 	lui	at,0x4f80
    1c78:	46008481 	sub.s	$f18,$f16,$f0
    1c7c:	448d2000 	mtc1	t5,$f4
    1c80:	46124382 	mul.s	$f14,$f8,$f18
    1c84:	05a10004 	bgez	t5,1c98 <DoorShutter_Draw+0x458>
    1c88:	46802120 	cvt.s.w	$f4,$f4
    1c8c:	44813000 	mtc1	at,$f6
    1c90:	00000000 	nop
    1c94:	46062100 	add.s	$f4,$f4,$f6
    1c98:	44062000 	mfc1	a2,$f4
    1c9c:	0c000000 	jal	0 <func_809962A0>
    1ca0:	24070001 	li	a3,1
    1ca4:	8e0202c0 	lw	v0,704(s0)
    1ca8:	3c0cda38 	lui	t4,0xda38
    1cac:	358c0003 	ori	t4,t4,0x3
    1cb0:	244e0008 	addiu	t6,v0,8
    1cb4:	ae0e02c0 	sw	t6,704(s0)
    1cb8:	ac4c0000 	sw	t4,0(v0)
    1cbc:	8fb80084 	lw	t8,132(sp)
    1cc0:	3c050000 	lui	a1,0x0
    1cc4:	24a50000 	addiu	a1,a1,0
    1cc8:	8f040000 	lw	a0,0(t8)
    1ccc:	24060847 	li	a2,2119
    1cd0:	0c000000 	jal	0 <func_809962A0>
    1cd4:	afa20034 	sw	v0,52(sp)
    1cd8:	8fa30034 	lw	v1,52(sp)
    1cdc:	3c08de00 	lui	t0,0xde00
    1ce0:	ac620004 	sw	v0,4(v1)
    1ce4:	8e0202c0 	lw	v0,704(s0)
    1ce8:	24590008 	addiu	t9,v0,8
    1cec:	ae1902c0 	sw	t9,704(s0)
    1cf0:	ac480000 	sw	t0,0(v0)
    1cf4:	8faf0070 	lw	t7,112(sp)
    1cf8:	8dea0004 	lw	t2,4(t7)
    1cfc:	ac4a0004 	sw	t2,4(v0)
    1d00:	822b016e 	lb	t3,366(s1)
    1d04:	3c063ccc 	lui	a2,0x3ccc
    1d08:	34c6cccd 	ori	a2,a2,0xcccd
    1d0c:	11600017 	beqz	t3,1d6c <DoorShutter_Draw+0x52c>
    1d10:	3c010000 	lui	at,0x0
    1d14:	c42c0000 	lwc1	$f12,0(at)
    1d18:	3c010000 	lui	at,0x0
    1d1c:	c42e0000 	lwc1	$f14,0(at)
    1d20:	0c000000 	jal	0 <func_809962A0>
    1d24:	24070001 	li	a3,1
    1d28:	9229016a 	lbu	t1,362(s1)
    1d2c:	24010005 	li	at,5
    1d30:	8fa40084 	lw	a0,132(sp)
    1d34:	55210004 	bnel	t1,at,1d48 <DoorShutter_Draw+0x508>
    1d38:	922d016c 	lbu	t5,364(s1)
    1d3c:	10000009 	b	1d64 <DoorShutter_Draw+0x524>
    1d40:	24060001 	li	a2,1
    1d44:	922d016c 	lbu	t5,364(s1)
    1d48:	24010006 	li	at,6
    1d4c:	00001025 	move	v0,zero
    1d50:	15a10003 	bne	t5,at,1d60 <DoorShutter_Draw+0x520>
    1d54:	00000000 	nop
    1d58:	10000001 	b	1d60 <DoorShutter_Draw+0x520>
    1d5c:	24020002 	li	v0,2
    1d60:	00403025 	move	a2,v0
    1d64:	0c000000 	jal	0 <func_809962A0>
    1d68:	8225016e 	lb	a1,366(s1)
    1d6c:	8fae0084 	lw	t6,132(sp)
    1d70:	3c060000 	lui	a2,0x0
    1d74:	24c60000 	addiu	a2,a2,0
    1d78:	27a4005c 	addiu	a0,sp,92
    1d7c:	24070857 	li	a3,2135
    1d80:	0c000000 	jal	0 <func_809962A0>
    1d84:	8dc50000 	lw	a1,0(t6)
    1d88:	8fbf001c 	lw	ra,28(sp)
    1d8c:	8fb00014 	lw	s0,20(sp)
    1d90:	8fb10018 	lw	s1,24(sp)
    1d94:	03e00008 	jr	ra
    1d98:	27bd0080 	addiu	sp,sp,128

00001d9c <func_8099803C>:
    1d9c:	27bdffd8 	addiu	sp,sp,-40
    1da0:	afa70034 	sw	a3,52(sp)
    1da4:	00073c00 	sll	a3,a3,0x10
    1da8:	00073c03 	sra	a3,a3,0x10
    1dac:	afa5002c 	sw	a1,44(sp)
    1db0:	afbf001c 	sw	ra,28(sp)
    1db4:	00072c00 	sll	a1,a3,0x10
    1db8:	afa60030 	sw	a2,48(sp)
    1dbc:	0c000000 	jal	0 <func_809962A0>
    1dc0:	00052c03 	sra	a1,a1,0x10
    1dc4:	00402025 	move	a0,v0
    1dc8:	0c000000 	jal	0 <func_809962A0>
    1dcc:	24050003 	li	a1,3
    1dd0:	44806000 	mtc1	zero,$f12
    1dd4:	a7a20026 	sh	v0,38(sp)
    1dd8:	240500b4 	li	a1,180
    1ddc:	24060014 	li	a2,20
    1de0:	0c000000 	jal	0 <func_809962A0>
    1de4:	24070064 	li	a3,100
    1de8:	87a40026 	lh	a0,38(sp)
    1dec:	0c000000 	jal	0 <func_809962A0>
    1df0:	24054e20 	li	a1,20000
    1df4:	87a40026 	lh	a0,38(sp)
    1df8:	87a5002e 	lh	a1,46(sp)
    1dfc:	00003025 	move	a2,zero
    1e00:	00003825 	move	a3,zero
    1e04:	0c000000 	jal	0 <func_809962A0>
    1e08:	afa00010 	sw	zero,16(sp)
    1e0c:	87a40026 	lh	a0,38(sp)
    1e10:	0c000000 	jal	0 <func_809962A0>
    1e14:	87a50032 	lh	a1,50(sp)
    1e18:	8fbf001c 	lw	ra,28(sp)
    1e1c:	27bd0028 	addiu	sp,sp,40
    1e20:	03e00008 	jr	ra
    1e24:	00000000 	nop
	...
