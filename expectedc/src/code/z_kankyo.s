
build/src/code/z_kankyo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8006F0A0>:
       0:	000473c3 	sra	t6,a0,0xf
       4:	31cf0007 	andi	t7,t6,0x7
       8:	3c190000 	lui	t9,0x0
       c:	27390000 	addiu	t9,t9,0
      10:	000fc0c0 	sll	t8,t7,0x3
      14:	03192821 	addu	a1,t8,t9
      18:	8caa0000 	lw	t2,0(a1)
      1c:	00044103 	sra	t0,a0,0x4
      20:	8cac0004 	lw	t4,4(a1)
      24:	310907ff 	andi	t1,t0,0x7ff
      28:	01495804 	sllv	t3,t1,t2
      2c:	03e00008 	jr	ra
      30:	018b1021 	addu	v0,t4,t3

00000034 <func_8006F0D4>:
      34:	00057080 	sll	t6,a1,0x2
      38:	01c57021 	addu	t6,t6,a1
      3c:	000e71c0 	sll	t6,t6,0x7
      40:	00047840 	sll	t7,a0,0x1
      44:	01cfc021 	addu	t8,t6,t7
      48:	3c030000 	lui	v1,0x0
      4c:	00781821 	addu	v1,v1,t8
      50:	94630000 	lhu	v1,0(v1)
      54:	03e00008 	jr	ra
      58:	3062ffff 	andi	v0,v1,0xffff

0000005c <func_8006F0FC>:
      5c:	27bdffe8 	addiu	sp,sp,-24
      60:	afa40018 	sw	a0,24(sp)
      64:	afa5001c 	sw	a1,28(sp)
      68:	afbf0014 	sw	ra,20(sp)
      6c:	3c050000 	lui	a1,0x0
      70:	3c040000 	lui	a0,0x0
      74:	84840000 	lh	a0,0(a0)
      78:	0c000000 	jal	0 <func_8006F0A0>
      7c:	84a50000 	lh	a1,0(a1)
      80:	3c010000 	lui	at,0x0
      84:	a4220000 	sh	v0,0(at)
      88:	0c000000 	jal	0 <func_8006F0A0>
      8c:	8fa4001c 	lw	a0,28(sp)
      90:	8fbf0014 	lw	ra,20(sp)
      94:	27bd0018 	addiu	sp,sp,24
      98:	03e00008 	jr	ra
      9c:	00000000 	nop

000000a0 <func_8006F140>:
      a0:	3c080000 	lui	t0,0x0
      a4:	25080000 	addiu	t0,t0,0
      a8:	9502000c 	lhu	v0,12(t0)
      ac:	27bdffa8 	addiu	sp,sp,-88
      b0:	3401c001 	li	at,0xc001
      b4:	afb10028 	sw	s1,40(sp)
      b8:	afb00024 	sw	s0,36(sp)
      bc:	0041082a 	slt	at,v0,at
      c0:	00a08025 	move	s0,a1
      c4:	00808825 	move	s1,a0
      c8:	afbf002c 	sw	ra,44(sp)
      cc:	afa60060 	sw	a2,96(sp)
      d0:	10200003 	beqz	at,e0 <func_8006F140+0x40>
      d4:	a5001422 	sh	zero,5154(t0)
      d8:	28414555 	slti	at,v0,17749
      dc:	10200003 	beqz	at,ec <func_8006F140+0x4c>
      e0:	240e0001 	li	t6,1
      e4:	10000002 	b	f0 <func_8006F140+0x50>
      e8:	ad0e0010 	sw	t6,16(t0)
      ec:	ad000010 	sw	zero,16(t0)
      f0:	8e380000 	lw	t8,0(s1)
      f4:	3c0f0000 	lui	t7,0x0
      f8:	25ef0000 	addiu	t7,t7,0
      fc:	af0f02ec 	sw	t7,748(t8)
     100:	8e390000 	lw	t9,0(s1)
     104:	26040028 	addiu	a0,s0,40
     108:	240b0050 	li	t3,80
     10c:	af3102f0 	sw	s1,752(t9)
     110:	240c0050 	li	t4,80
     114:	240d0050 	li	t5,80
     118:	afad0018 	sw	t5,24(sp)
     11c:	afac0014 	sw	t4,20(sp)
     120:	afa40038 	sw	a0,56(sp)
     124:	afab0010 	sw	t3,16(sp)
     128:	24050050 	li	a1,80
     12c:	24060050 	li	a2,80
     130:	0c000000 	jal	0 <func_8006F0A0>
     134:	24070050 	li	a3,80
     138:	262507a8 	addiu	a1,s1,1960
     13c:	afa50034 	sw	a1,52(sp)
     140:	02202025 	move	a0,s1
     144:	0c000000 	jal	0 <func_8006F0A0>
     148:	8fa60038 	lw	a2,56(sp)
     14c:	26040036 	addiu	a0,s0,54
     150:	240e0050 	li	t6,80
     154:	240f0050 	li	t7,80
     158:	24180050 	li	t8,80
     15c:	afb80018 	sw	t8,24(sp)
     160:	afaf0014 	sw	t7,20(sp)
     164:	afae0010 	sw	t6,16(sp)
     168:	afa40038 	sw	a0,56(sp)
     16c:	24050050 	li	a1,80
     170:	24060050 	li	a2,80
     174:	0c000000 	jal	0 <func_8006F0A0>
     178:	24070050 	li	a3,80
     17c:	02202025 	move	a0,s1
     180:	8fa50034 	lw	a1,52(sp)
     184:	0c000000 	jal	0 <func_8006F0A0>
     188:	8fa60038 	lw	a2,56(sp)
     18c:	44800000 	mtc1	zero,$f0
     190:	24030063 	li	v1,99
     194:	3c013f80 	lui	at,0x3f80
     198:	44812000 	mtc1	at,$f4
     19c:	a2030010 	sb	v1,16(s0)
     1a0:	a2030011 	sb	v1,17(s0)
     1a4:	3c030000 	lui	v1,0x0
     1a8:	a2000019 	sb	zero,25(s0)
     1ac:	a600001a 	sh	zero,26(s0)
     1b0:	a2000021 	sb	zero,33(s0)
     1b4:	a6000022 	sh	zero,34(s0)
     1b8:	a2000044 	sb	zero,68(s0)
     1bc:	a200001f 	sb	zero,31(s0)
     1c0:	a2000020 	sb	zero,32(s0)
     1c4:	a20000bd 	sb	zero,189(s0)
     1c8:	a20000be 	sb	zero,190(s0)
     1cc:	a20000dc 	sb	zero,220(s0)
     1d0:	a20000dd 	sb	zero,221(s0)
     1d4:	a20000de 	sb	zero,222(s0)
     1d8:	a20000df 	sb	zero,223(s0)
     1dc:	a20000e0 	sb	zero,224(s0)
     1e0:	24630000 	addiu	v1,v1,0
     1e4:	a20000e1 	sb	zero,225(s0)
     1e8:	a20000e2 	sb	zero,226(s0)
     1ec:	a20000e3 	sb	zero,227(s0)
     1f0:	a20000e4 	sb	zero,228(s0)
     1f4:	a20000e5 	sb	zero,229(s0)
     1f8:	a20000e9 	sb	zero,233(s0)
     1fc:	a20000ea 	sb	zero,234(s0)
     200:	a20000eb 	sb	zero,235(s0)
     204:	a20000ec 	sb	zero,236(s0)
     208:	a20000ed 	sb	zero,237(s0)
     20c:	a20000e6 	sb	zero,230(s0)
     210:	a20000e7 	sb	zero,231(s0)
     214:	a20000e8 	sb	zero,232(s0)
     218:	e6000084 	swc1	$f0,132(s0)
     21c:	e6000088 	swc1	$f0,136(s0)
     220:	e60400d8 	swc1	$f4,216(s0)
     224:	3c080000 	lui	t0,0x0
     228:	a0600000 	sb	zero,0(v1)
     22c:	a0600001 	sb	zero,1(v1)
     230:	a0600002 	sb	zero,2(v1)
     234:	a0600003 	sb	zero,3(v1)
     238:	3c010000 	lui	at,0x0
     23c:	25080000 	addiu	t0,t0,0
     240:	a4200000 	sh	zero,0(at)
     244:	a1001410 	sb	zero,5136(t0)
     248:	a60000a0 	sh	zero,160(s0)
     24c:	860200a0 	lh	v0,160(s0)
     250:	24018000 	li	at,-32768
     254:	a602009e 	sh	v0,158(s0)
     258:	a602009c 	sh	v0,156(s0)
     25c:	a602009a 	sh	v0,154(s0)
     260:	a6020098 	sh	v0,152(s0)
     264:	a6020096 	sh	v0,150(s0)
     268:	a6020094 	sh	v0,148(s0)
     26c:	a6020092 	sh	v0,146(s0)
     270:	a6020090 	sh	v0,144(s0)
     274:	a602008e 	sh	v0,142(s0)
     278:	a602008c 	sh	v0,140(s0)
     27c:	8503000c 	lh	v1,12(t0)
     280:	00612021 	addu	a0,v1,at
     284:	00042400 	sll	a0,a0,0x10
     288:	0c000000 	jal	0 <func_8006F0A0>
     28c:	00042403 	sra	a0,a0,0x10
     290:	3c0142f0 	lui	at,0x42f0
     294:	44813000 	mtc1	at,$f6
     298:	3c0141c8 	lui	at,0x41c8
     29c:	44818000 	mtc1	at,$f16
     2a0:	46060202 	mul.s	$f8,$f0,$f6
     2a4:	3c080000 	lui	t0,0x0
     2a8:	25080000 	addiu	t0,t0,0
     2ac:	24018000 	li	at,-32768
     2b0:	46004287 	neg.s	$f10,$f8
     2b4:	46105482 	mul.s	$f18,$f10,$f16
     2b8:	e6120004 	swc1	$f18,4(s0)
     2bc:	9503000c 	lhu	v1,12(t0)
     2c0:	00612021 	addu	a0,v1,at
     2c4:	00042400 	sll	a0,a0,0x10
     2c8:	0c000000 	jal	0 <func_8006F0A0>
     2cc:	00042403 	sra	a0,a0,0x10
     2d0:	3c0142f0 	lui	at,0x42f0
     2d4:	44812000 	mtc1	at,$f4
     2d8:	3c0141c8 	lui	at,0x41c8
     2dc:	44814000 	mtc1	at,$f8
     2e0:	46040182 	mul.s	$f6,$f0,$f4
     2e4:	3c080000 	lui	t0,0x0
     2e8:	25080000 	addiu	t0,t0,0
     2ec:	24018000 	li	at,-32768
     2f0:	46083282 	mul.s	$f10,$f6,$f8
     2f4:	e60a0008 	swc1	$f10,8(s0)
     2f8:	9503000c 	lhu	v1,12(t0)
     2fc:	00612021 	addu	a0,v1,at
     300:	00042400 	sll	a0,a0,0x10
     304:	0c000000 	jal	0 <func_8006F0A0>
     308:	00042403 	sra	a0,a0,0x10
     30c:	3c0141a0 	lui	at,0x41a0
     310:	44818000 	mtc1	at,$f16
     314:	3c0141c8 	lui	at,0x41c8
     318:	44812000 	mtc1	at,$f4
     31c:	46100482 	mul.s	$f18,$f0,$f16
     320:	24070050 	li	a3,80
     324:	3c030000 	lui	v1,0x0
     328:	240500ff 	li	a1,255
     32c:	3419ffff 	li	t9,0xffff
     330:	24630000 	addiu	v1,v1,0
     334:	a60700a8 	sh	a3,168(s0)
     338:	46049182 	mul.s	$f6,$f18,$f4
     33c:	a60700aa 	sh	a3,170(s0)
     340:	a60700ac 	sh	a3,172(s0)
     344:	a20000bc 	sb	zero,188(s0)
     348:	a20500bf 	sb	a1,191(s0)
     34c:	a61900d6 	sh	t9,214(s0)
     350:	a6000002 	sh	zero,2(s0)
     354:	e606000c 	swc1	$f6,12(s0)
     358:	8c6d0000 	lw	t5,0(v1)
     35c:	3c040000 	lui	a0,0x0
     360:	24840000 	addiu	a0,a0,0
     364:	a4800000 	sh	zero,0(a0)
     368:	a5a00032 	sh	zero,50(t5)
     36c:	8c6e0000 	lw	t6,0(v1)
     370:	240a0001 	li	t2,1
     374:	3c080000 	lui	t0,0x0
     378:	a5ca0026 	sh	t2,38(t6)
     37c:	8c6f0000 	lw	t7,0(v1)
     380:	3c010001 	lui	at,0x1
     384:	25080000 	addiu	t0,t0,0
     388:	85e2085a 	lh	v0,2138(t7)
     38c:	02213021 	addu	a2,s1,at
     390:	3c040000 	lui	a0,0x0
     394:	10400002 	beqz	v0,3a0 <func_8006F140+0x300>
     398:	2458ffff 	addiu	t8,v0,-1
     39c:	a1181415 	sb	t8,5141(t0)
     3a0:	a0c00b12 	sb	zero,2834(a2)
     3a4:	a0c00b13 	sb	zero,2835(a2)
     3a8:	a0c00b14 	sb	zero,2836(a2)
     3ac:	a0c00b15 	sb	zero,2837(a2)
     3b0:	a0c00b16 	sb	zero,2838(a2)
     3b4:	911913c3 	lbu	t9,5059(t0)
     3b8:	24840000 	addiu	a0,a0,0
     3bc:	24090001 	li	t1,1
     3c0:	53200046 	beqzl	t9,4dc <L8006F4F0+0x8c>
     3c4:	a0800000 	sb	zero,0(a0)
     3c8:	8d0b1360 	lw	t3,4960(t0)
     3cc:	3c040000 	lui	a0,0x0
     3d0:	24840000 	addiu	a0,a0,0
     3d4:	29610004 	slti	at,t3,4
     3d8:	1020003d 	beqz	at,4d0 <L8006F4F0+0x80>
     3dc:	00000000 	nop
     3e0:	908c0000 	lbu	t4,0(a0)
     3e4:	258dffff 	addiu	t5,t4,-1
     3e8:	2da10005 	sltiu	at,t5,5
     3ec:	10200021 	beqz	at,474 <L8006F4F0+0x24>
     3f0:	000d6880 	sll	t5,t5,0x2
     3f4:	3c010000 	lui	at,0x0
     3f8:	002d0821 	addu	at,at,t5
     3fc:	8c2d0000 	lw	t5,0(at)
     400:	01a00008 	jr	t5
     404:	00000000 	nop

00000408 <L8006F4A8>:
     408:	24020003 	li	v0,3
     40c:	24090001 	li	t1,1
     410:	a2090017 	sb	t1,23(s0)
     414:	a2090018 	sb	t1,24(s0)
     418:	a202001f 	sb	v0,31(s0)
     41c:	a2020020 	sb	v0,32(s0)
     420:	a0c00b15 	sb	zero,2837(a2)
     424:	10000013 	b	474 <L8006F4F0+0x24>
     428:	a0c00b14 	sb	zero,2836(a2)

0000042c <L8006F4CC>:
     42c:	24020002 	li	v0,2
     430:	24090001 	li	t1,1
     434:	a2090017 	sb	t1,23(s0)
     438:	a2090018 	sb	t1,24(s0)
     43c:	a202001f 	sb	v0,31(s0)
     440:	a2020020 	sb	v0,32(s0)
     444:	a0c00b15 	sb	zero,2837(a2)
     448:	1000000a 	b	474 <L8006F4F0+0x24>
     44c:	a0c00b14 	sb	zero,2836(a2)

00000450 <L8006F4F0>:
     450:	24020004 	li	v0,4
     454:	24090001 	li	t1,1
     458:	a2090017 	sb	t1,23(s0)
     45c:	a2090018 	sb	t1,24(s0)
     460:	a202001f 	sb	v0,31(s0)
     464:	a2020020 	sb	v0,32(s0)
     468:	a0c00b15 	sb	zero,2837(a2)
     46c:	10000001 	b	474 <L8006F4F0+0x24>
     470:	a0c00b14 	sb	zero,2836(a2)
     474:	90ce1e14 	lbu	t6,7700(a2)
     478:	154e0015 	bne	t2,t6,4d0 <L8006F4F0+0x80>
     47c:	00000000 	nop
     480:	90820000 	lbu	v0,0(a0)
     484:	24010003 	li	at,3
     488:	24180040 	li	t8,64
     48c:	14410004 	bne	v0,at,4a0 <L8006F4F0+0x50>
     490:	24090001 	li	t1,1
     494:	a0d80b15 	sb	t8,2837(a2)
     498:	10000010 	b	4dc <L8006F4F0+0x8c>
     49c:	a0d80b14 	sb	t8,2836(a2)
     4a0:	24010004 	li	at,4
     4a4:	14410005 	bne	v0,at,4bc <L8006F4F0+0x6c>
     4a8:	24090001 	li	t1,1
     4ac:	24020014 	li	v0,20
     4b0:	a0c20b12 	sb	v0,2834(a2)
     4b4:	10000009 	b	4dc <L8006F4F0+0x8c>
     4b8:	a0c20b13 	sb	v0,2835(a2)
     4bc:	24010005 	li	at,5
     4c0:	14410003 	bne	v0,at,4d0 <L8006F4F0+0x80>
     4c4:	2402001e 	li	v0,30
     4c8:	a0c20b12 	sb	v0,2834(a2)
     4cc:	a0c20b13 	sb	v0,2835(a2)
     4d0:	10000002 	b	4dc <L8006F4F0+0x8c>
     4d4:	24090001 	li	t1,1
     4d8:	a0800000 	sb	zero,0(a0)
     4dc:	3c010000 	lui	at,0x0
     4e0:	a0200000 	sb	zero,0(at)
     4e4:	3c010000 	lui	at,0x0
     4e8:	a0200000 	sb	zero,0(at)
     4ec:	3c010000 	lui	at,0x0
     4f0:	a0200000 	sb	zero,0(at)
     4f4:	8c790000 	lw	t9,0(v1)
     4f8:	a10013c3 	sb	zero,5059(t0)
     4fc:	2404ffb0 	li	a0,-80
     500:	a7270b5a 	sh	a3,2906(t9)
     504:	8c6b0000 	lw	t3,0(v1)
     508:	2418000a 	li	t8,10
     50c:	3c010000 	lui	at,0x0
     510:	a5670b5c 	sh	a3,2908(t3)
     514:	8c6c0000 	lw	t4,0(v1)
     518:	00001025 	move	v0,zero
     51c:	a5870b5e 	sh	a3,2910(t4)
     520:	8c6d0000 	lw	t5,0(v1)
     524:	a5a40b60 	sh	a0,2912(t5)
     528:	8c6e0000 	lw	t6,0(v1)
     52c:	a5c40b62 	sh	a0,2914(t6)
     530:	8c6f0000 	lw	t7,0(v1)
     534:	a5e40b64 	sh	a0,2916(t7)
     538:	8c790000 	lw	t9,0(v1)
     53c:	a7380b66 	sh	t8,2918(t9)
     540:	8c6b0000 	lw	t3,0(v1)
     544:	a5600b68 	sh	zero,2920(t3)
     548:	8c6c0000 	lw	t4,0(v1)
     54c:	a5800b6a 	sh	zero,2922(t4)
     550:	8c6d0000 	lw	t5,0(v1)
     554:	a5a00b6c 	sh	zero,2924(t5)
     558:	8c6e0000 	lw	t6,0(v1)
     55c:	a5c00b6e 	sh	zero,2926(t6)
     560:	8c6f0000 	lw	t7,0(v1)
     564:	3c030000 	lui	v1,0x0
     568:	24630000 	addiu	v1,v1,0
     56c:	a5e00b70 	sh	zero,2928(t7)
     570:	a0290000 	sb	t1,0(at)
     574:	0002c140 	sll	t8,v0,0x5
     578:	24420001 	addiu	v0,v0,1
     57c:	304200ff 	andi	v0,v0,0xff
     580:	28410003 	slti	at,v0,3
     584:	0078c821 	addu	t9,v1,t8
     588:	1420fffa 	bnez	at,574 <L8006F4F0+0x124>
     58c:	a3250000 	sb	a1,0(t9)
     590:	a4c01d30 	sh	zero,7472(a2)
     594:	a4c01d32 	sh	zero,7474(a2)
     598:	00001025 	move	v0,zero
     59c:	00025880 	sll	t3,v0,0x2
     5a0:	24420001 	addiu	v0,v0,1
     5a4:	304200ff 	andi	v0,v0,0xff
     5a8:	2841000a 	slti	at,v0,10
     5ac:	022b6021 	addu	t4,s1,t3
     5b0:	1420fffa 	bnez	at,59c <L8006F4F0+0x14c>
     5b4:	ad801d8c 	sw	zero,7564(t4)
     5b8:	3c010001 	lui	at,0x1
     5bc:	342117a4 	ori	at,at,0x17a4
     5c0:	02212021 	addu	a0,s1,at
     5c4:	24050002 	li	a1,2
     5c8:	0c000000 	jal	0 <func_8006F0A0>
     5cc:	afa60034 	sw	a2,52(sp)
     5d0:	8fa60034 	lw	a2,52(sp)
     5d4:	04410009 	bgez	v0,5fc <L8006F4F0+0x1ac>
     5d8:	24090001 	li	t1,1
     5dc:	90cd0a3a 	lbu	t5,2618(a2)
     5e0:	3c010001 	lui	at,0x1
     5e4:	00310821 	addu	at,at,s1
     5e8:	15a00004 	bnez	t5,5fc <L8006F4F0+0x1ac>
     5ec:	3c040000 	lui	a0,0x0
     5f0:	a0290a3a 	sb	t1,2618(at)
     5f4:	0c000000 	jal	0 <func_8006F0A0>
     5f8:	24840000 	addiu	a0,a0,0
     5fc:	3c010000 	lui	at,0x0
     600:	0c000000 	jal	0 <func_8006F0A0>
     604:	a0200000 	sb	zero,0(at)
     608:	8fbf002c 	lw	ra,44(sp)
     60c:	8fb00024 	lw	s0,36(sp)
     610:	8fb10028 	lw	s1,40(sp)
     614:	03e00008 	jr	ra
     618:	27bd0058 	addiu	sp,sp,88
     61c:	afa50004 	sw	a1,4(sp)
     620:	afa60008 	sw	a2,8(sp)
     624:	afa7000c 	sw	a3,12(sp)
     628:	90890000 	lbu	t1,0(a0)
     62c:	30a500ff 	andi	a1,a1,0xff
     630:	30c600ff 	andi	a2,a2,0xff
     634:	00a91823 	subu	v1,a1,t1
     638:	00031c00 	sll	v1,v1,0x10
     63c:	00031c03 	sra	v1,v1,0x10
     640:	10a90043 	beq	a1,t1,750 <L8006F4F0+0x300>
     644:	00a04025 	move	t0,a1
     648:	0066001a 	div	zero,v1,a2
     64c:	93ab0013 	lbu	t3,19(sp)
     650:	14c00002 	bnez	a2,65c <L8006F4F0+0x20c>
     654:	00000000 	nop
     658:	0007000d 	break	0x7
     65c:	2401ffff 	li	at,-1
     660:	14c10004 	bne	a2,at,674 <L8006F4F0+0x224>
     664:	3c018000 	lui	at,0x8000
     668:	14610002 	bne	v1,at,674 <L8006F4F0+0x224>
     66c:	00000000 	nop
     670:	0006000d 	break	0x6
     674:	00003812 	mflo	a3
     678:	00075400 	sll	t2,a3,0x10
     67c:	000b6400 	sll	t4,t3,0x10
     680:	000c6403 	sra	t4,t4,0x10
     684:	000a5403 	sra	t2,t2,0x10
     688:	00071400 	sll	v0,a3,0x10
     68c:	014c082a 	slt	at,t2,t4
     690:	10200007 	beqz	at,6b0 <L8006F4F0+0x260>
     694:	00021403 	sra	v0,v0,0x10
     698:	000b3023 	negu	a2,t3
     69c:	00063400 	sll	a2,a2,0x10
     6a0:	00063403 	sra	a2,a2,0x10
     6a4:	00ca082a 	slt	at,a2,t2
     6a8:	54200016 	bnezl	at,704 <L8006F4F0+0x2b4>
     6ac:	014c082a 	slt	at,t2,t4
     6b0:	93a5000f 	lbu	a1,15(sp)
     6b4:	00057400 	sll	t6,a1,0x10
     6b8:	000e7c03 	sra	t7,t6,0x10
     6bc:	01ea082a 	slt	at,t7,t2
     6c0:	10200003 	beqz	at,6d0 <L8006F4F0+0x280>
     6c4:	00053023 	negu	a2,a1
     6c8:	00051400 	sll	v0,a1,0x10
     6cc:	00021403 	sra	v0,v0,0x10
     6d0:	0006c400 	sll	t8,a2,0x10
     6d4:	0018cc03 	sra	t9,t8,0x10
     6d8:	0059082a 	slt	at,v0,t9
     6dc:	50200004 	beqzl	at,6f0 <L8006F4F0+0x2a0>
     6e0:	00406825 	move	t5,v0
     6e4:	00061400 	sll	v0,a2,0x10
     6e8:	00021403 	sra	v0,v0,0x10
     6ec:	00406825 	move	t5,v0
     6f0:	012d7021 	addu	t6,t1,t5
     6f4:	a08e0000 	sb	t6,0(a0)
     6f8:	03e00008 	jr	ra
     6fc:	306200ff 	andi	v0,v1,0xff
     700:	014c082a 	slt	at,t2,t4
     704:	10200008 	beqz	at,728 <L8006F4F0+0x2d8>
     708:	012cc021 	addu	t8,t1,t4
     70c:	331900ff 	andi	t9,t8,0xff
     710:	000b1400 	sll	v0,t3,0x10
     714:	0119082a 	slt	at,t0,t9
     718:	00021403 	sra	v0,v0,0x10
     71c:	10200002 	beqz	at,728 <L8006F4F0+0x2d8>
     720:	a0980000 	sb	t8,0(a0)
     724:	a0850000 	sb	a1,0(a0)
     728:	00c2082a 	slt	at,a2,v0
     72c:	10200008 	beqz	at,750 <L8006F4F0+0x300>
     730:	00000000 	nop
     734:	908d0000 	lbu	t5,0(a0)
     738:	01a67821 	addu	t7,t5,a2
     73c:	31f800ff 	andi	t8,t7,0xff
     740:	0308082a 	slt	at,t8,t0
     744:	10200002 	beqz	at,750 <L8006F4F0+0x300>
     748:	a08f0000 	sb	t7,0(a0)
     74c:	a0850000 	sb	a1,0(a0)
     750:	03e00008 	jr	ra
     754:	306200ff 	andi	v0,v1,0xff
     758:	afa50004 	sw	a1,4(sp)
     75c:	afa60008 	sw	a2,8(sp)
     760:	afa7000c 	sw	a3,12(sp)
     764:	80880000 	lb	t0,0(a0)
     768:	00052e00 	sll	a1,a1,0x18
     76c:	00052e03 	sra	a1,a1,0x18
     770:	00a81823 	subu	v1,a1,t0
     774:	00031c00 	sll	v1,v1,0x10
     778:	30c600ff 	andi	a2,a2,0xff
     77c:	10a80045 	beq	a1,t0,894 <L8006F4F0+0x444>
     780:	00031c03 	sra	v1,v1,0x10
     784:	0066001a 	div	zero,v1,a2
     788:	93aa0013 	lbu	t2,19(sp)
     78c:	14c00002 	bnez	a2,798 <L8006F4F0+0x348>
     790:	00000000 	nop
     794:	0007000d 	break	0x7
     798:	2401ffff 	li	at,-1
     79c:	14c10004 	bne	a2,at,7b0 <L8006F4F0+0x360>
     7a0:	3c018000 	lui	at,0x8000
     7a4:	14610002 	bne	v1,at,7b0 <L8006F4F0+0x360>
     7a8:	00000000 	nop
     7ac:	0006000d 	break	0x6
     7b0:	00003812 	mflo	a3
     7b4:	00074c00 	sll	t1,a3,0x10
     7b8:	000a5c00 	sll	t3,t2,0x10
     7bc:	000b5c03 	sra	t3,t3,0x10
     7c0:	00094c03 	sra	t1,t1,0x10
     7c4:	00071400 	sll	v0,a3,0x10
     7c8:	012b082a 	slt	at,t1,t3
     7cc:	10200007 	beqz	at,7ec <L8006F4F0+0x39c>
     7d0:	00021403 	sra	v0,v0,0x10
     7d4:	000a3023 	negu	a2,t2
     7d8:	00063400 	sll	a2,a2,0x10
     7dc:	00063403 	sra	a2,a2,0x10
     7e0:	00c9082a 	slt	at,a2,t1
     7e4:	54200016 	bnezl	at,840 <L8006F4F0+0x3f0>
     7e8:	012b082a 	slt	at,t1,t3
     7ec:	93a5000f 	lbu	a1,15(sp)
     7f0:	00057400 	sll	t6,a1,0x10
     7f4:	000e7c03 	sra	t7,t6,0x10
     7f8:	01e9082a 	slt	at,t7,t1
     7fc:	10200003 	beqz	at,80c <L8006F4F0+0x3bc>
     800:	00053023 	negu	a2,a1
     804:	00051400 	sll	v0,a1,0x10
     808:	00021403 	sra	v0,v0,0x10
     80c:	0006c400 	sll	t8,a2,0x10
     810:	0018cc03 	sra	t9,t8,0x10
     814:	0059082a 	slt	at,v0,t9
     818:	50200004 	beqzl	at,82c <L8006F4F0+0x3dc>
     81c:	00406825 	move	t5,v0
     820:	00061400 	sll	v0,a2,0x10
     824:	00021403 	sra	v0,v0,0x10
     828:	00406825 	move	t5,v0
     82c:	010d7021 	addu	t6,t0,t5
     830:	a08e0000 	sb	t6,0(a0)
     834:	03e00008 	jr	ra
     838:	306200ff 	andi	v0,v1,0xff
     83c:	012b082a 	slt	at,t1,t3
     840:	10200009 	beqz	at,868 <L8006F4F0+0x418>
     844:	010bc821 	addu	t9,t0,t3
     848:	a0990000 	sb	t9,0(a0)
     84c:	808c0000 	lb	t4,0(a0)
     850:	000a1400 	sll	v0,t2,0x10
     854:	00021403 	sra	v0,v0,0x10
     858:	00ac082a 	slt	at,a1,t4
     85c:	50200003 	beqzl	at,86c <L8006F4F0+0x41c>
     860:	00c2082a 	slt	at,a2,v0
     864:	a0850000 	sb	a1,0(a0)
     868:	00c2082a 	slt	at,a2,v0
     86c:	10200009 	beqz	at,894 <L8006F4F0+0x444>
     870:	00000000 	nop
     874:	808d0000 	lb	t5,0(a0)
     878:	01a6c021 	addu	t8,t5,a2
     87c:	a0980000 	sb	t8,0(a0)
     880:	80990000 	lb	t9,0(a0)
     884:	0325082a 	slt	at,t9,a1
     888:	10200002 	beqz	at,894 <L8006F4F0+0x444>
     88c:	00000000 	nop
     890:	a0850000 	sb	a1,0(a0)
     894:	03e00008 	jr	ra
     898:	306200ff 	andi	v0,v1,0xff

0000089c <func_8006F93C>:
     89c:	afa40000 	sw	a0,0(sp)
     8a0:	afa50004 	sw	a1,4(sp)
     8a4:	30a5ffff 	andi	a1,a1,0xffff
     8a8:	3084ffff 	andi	a0,a0,0xffff
     8ac:	00857023 	subu	t6,a0,a1
     8b0:	448e2000 	mtc1	t6,$f4
     8b4:	44803000 	mtc1	zero,$f6
     8b8:	afa60008 	sw	a2,8(sp)
     8bc:	46802020 	cvt.s.w	$f0,$f4
     8c0:	30c6ffff 	andi	a2,a2,0xffff
     8c4:	00867823 	subu	t7,a0,a2
     8c8:	46003032 	c.eq.s	$f6,$f0
     8cc:	00000000 	nop
     8d0:	4503000e 	bc1tl	90c <func_8006F93C+0x70>
     8d4:	3c013f80 	lui	at,0x3f80
     8d8:	448f4000 	mtc1	t7,$f8
     8dc:	3c013f80 	lui	at,0x3f80
     8e0:	44816000 	mtc1	at,$f12
     8e4:	468042a0 	cvt.s.w	$f10,$f8
     8e8:	46005403 	div.s	$f16,$f10,$f0
     8ec:	46106081 	sub.s	$f2,$f12,$f16
     8f0:	4602603e 	c.le.s	$f12,$f2
     8f4:	00000000 	nop
     8f8:	45030004 	bc1tl	90c <func_8006F93C+0x70>
     8fc:	3c013f80 	lui	at,0x3f80
     900:	03e00008 	jr	ra
     904:	46001006 	mov.s	$f0,$f2
     908:	3c013f80 	lui	at,0x3f80
     90c:	44810000 	mtc1	at,$f0
     910:	00000000 	nop
     914:	03e00008 	jr	ra
     918:	00000000 	nop

0000091c <func_8006F9BC>:
     91c:	27bdffc0 	addiu	sp,sp,-64
     920:	30a3ffff 	andi	v1,a1,0xffff
     924:	30c2ffff 	andi	v0,a2,0xffff
     928:	afa7004c 	sw	a3,76(sp)
     92c:	0062082a 	slt	at,v1,v0
     930:	30e7ffff 	andi	a3,a3,0xffff
     934:	afbf001c 	sw	ra,28(sp)
     938:	f7b40010 	sdc1	$f20,16(sp)
     93c:	afa40040 	sw	a0,64(sp)
     940:	afa50044 	sw	a1,68(sp)
     944:	14200004 	bnez	at,958 <func_8006F9BC+0x3c>
     948:	afa60048 	sw	a2,72(sp)
     94c:	44800000 	mtc1	zero,$f0
     950:	10000064 	b	ae4 <func_8006F9BC+0x1c8>
     954:	8fbf001c 	lw	ra,28(sp)
     958:	97a40042 	lhu	a0,66(sp)
     95c:	0044082a 	slt	at,v0,a0
     960:	14200004 	bnez	at,974 <func_8006F9BC+0x58>
     964:	3c013f80 	lui	at,0x3f80
     968:	44810000 	mtc1	at,$f0
     96c:	1000005d 	b	ae4 <func_8006F9BC+0x1c8>
     970:	8fbf001c 	lw	ra,28(sp)
     974:	44832000 	mtc1	v1,$f4
     978:	44843000 	mtc1	a0,$f6
     97c:	3c040000 	lui	a0,0x0
     980:	46802020 	cvt.s.w	$f0,$f4
     984:	468030a0 	cvt.s.w	$f2,$f6
     988:	4600103e 	c.le.s	$f2,$f0
     98c:	00000000 	nop
     990:	4501000c 	bc1t	9c4 <func_8006F9BC+0xa8>
     994:	00000000 	nop
     998:	97ae0052 	lhu	t6,82(sp)
     99c:	44874000 	mtc1	a3,$f8
     9a0:	46001481 	sub.s	$f18,$f2,$f0
     9a4:	448e5000 	mtc1	t6,$f10
     9a8:	468043a0 	cvt.s.w	$f14,$f8
     9ac:	46805520 	cvt.s.w	$f20,$f10
     9b0:	46147100 	add.s	$f4,$f14,$f20
     9b4:	4604903c 	c.lt.s	$f18,$f4
     9b8:	00000000 	nop
     9bc:	4502000a 	bc1fl	9e8 <func_8006F9BC+0xcc>
     9c0:	46129200 	add.s	$f8,$f18,$f18
     9c4:	0c000000 	jal	0 <func_8006F0A0>
     9c8:	24840000 	addiu	a0,a0,0
     9cc:	3c040000 	lui	a0,0x0
     9d0:	0c000000 	jal	0 <func_8006F0A0>
     9d4:	24840000 	addiu	a0,a0,0
     9d8:	44800000 	mtc1	zero,$f0
     9dc:	10000041 	b	ae4 <func_8006F9BC+0x1c8>
     9e0:	8fbf001c 	lw	ra,28(sp)
     9e4:	46129200 	add.s	$f8,$f18,$f18
     9e8:	3c013f80 	lui	at,0x3f80
     9ec:	44813000 	mtc1	at,$f6
     9f0:	460e4281 	sub.s	$f10,$f8,$f14
     9f4:	44804000 	mtc1	zero,$f8
     9f8:	46145101 	sub.s	$f4,$f10,$f20
     9fc:	46087032 	c.eq.s	$f14,$f8
     a00:	46043403 	div.s	$f16,$f6,$f4
     a04:	45010011 	bc1t	a4c <func_8006F9BC+0x130>
     a08:	e7b00024 	swc1	$f16,36(sp)
     a0c:	44825000 	mtc1	v0,$f10
     a10:	00000000 	nop
     a14:	468051a0 	cvt.s.w	$f6,$f10
     a18:	46003301 	sub.s	$f12,$f6,$f0
     a1c:	460e603e 	c.le.s	$f12,$f14
     a20:	00000000 	nop
     a24:	45000006 	bc1f	a40 <func_8006F9BC+0x124>
     a28:	00000000 	nop
     a2c:	460c8102 	mul.s	$f4,$f16,$f12
     a30:	00000000 	nop
     a34:	460c2202 	mul.s	$f8,$f4,$f12
     a38:	10000029 	b	ae0 <func_8006F9BC+0x1c4>
     a3c:	460e4003 	div.s	$f0,$f8,$f14
     a40:	460e8082 	mul.s	$f2,$f16,$f14
     a44:	10000006 	b	a60 <func_8006F9BC+0x144>
     a48:	46149101 	sub.s	$f4,$f18,$f20
     a4c:	44825000 	mtc1	v0,$f10
     a50:	44801000 	mtc1	zero,$f2
     a54:	468051a0 	cvt.s.w	$f6,$f10
     a58:	46003301 	sub.s	$f12,$f6,$f0
     a5c:	46149101 	sub.s	$f4,$f18,$f20
     a60:	4604603e 	c.le.s	$f12,$f4
     a64:	00000000 	nop
     a68:	45020008 	bc1fl	a8c <func_8006F9BC+0x170>
     a6c:	460e9201 	sub.s	$f8,$f18,$f14
     a70:	46108200 	add.s	$f8,$f16,$f16
     a74:	460e6281 	sub.s	$f10,$f12,$f14
     a78:	460a4182 	mul.s	$f6,$f8,$f10
     a7c:	46061080 	add.s	$f2,$f2,$f6
     a80:	10000017 	b	ae0 <func_8006F9BC+0x1c4>
     a84:	46001006 	mov.s	$f0,$f2
     a88:	460e9201 	sub.s	$f8,$f18,$f14
     a8c:	46108100 	add.s	$f4,$f16,$f16
     a90:	46144281 	sub.s	$f10,$f8,$f20
     a94:	44804000 	mtc1	zero,$f8
     a98:	460a2182 	mul.s	$f6,$f4,$f10
     a9c:	4608a032 	c.eq.s	$f20,$f8
     aa0:	00000000 	nop
     aa4:	4501000d 	bc1t	adc <func_8006F9BC+0x1c0>
     aa8:	46061080 	add.s	$f2,$f2,$f6
     aac:	46148102 	mul.s	$f4,$f16,$f20
     ab0:	4612603c 	c.lt.s	$f12,$f18
     ab4:	00000000 	nop
     ab8:	45000008 	bc1f	adc <func_8006F9BC+0x1c0>
     abc:	46041080 	add.s	$f2,$f2,$f4
     ac0:	460c9001 	sub.s	$f0,$f18,$f12
     ac4:	c7aa0024 	lwc1	$f10,36(sp)
     ac8:	46005182 	mul.s	$f6,$f10,$f0
     acc:	00000000 	nop
     ad0:	46003202 	mul.s	$f8,$f6,$f0
     ad4:	46144103 	div.s	$f4,$f8,$f20
     ad8:	46041081 	sub.s	$f2,$f2,$f4
     adc:	46001006 	mov.s	$f0,$f2
     ae0:	8fbf001c 	lw	ra,28(sp)
     ae4:	d7b40010 	ldc1	$f20,16(sp)
     ae8:	27bd0040 	addiu	sp,sp,64
     aec:	03e00008 	jr	ra
     af0:	00000000 	nop

00000af4 <func_8006FB94>:
     af4:	afa50004 	sw	a1,4(sp)
     af8:	908200dd 	lbu	v0,221(a0)
     afc:	10400038 	beqz	v0,be0 <func_8006FB94+0xec>
     b00:	00000000 	nop
     b04:	908300de 	lbu	v1,222(a0)
     b08:	24010001 	li	at,1
     b0c:	10600006 	beqz	v1,b28 <func_8006FB94+0x34>
     b10:	00000000 	nop
     b14:	24010001 	li	at,1
     b18:	10610019 	beq	v1,at,b80 <func_8006FB94+0x8c>
     b1c:	3c080000 	lui	t0,0x0
     b20:	03e00008 	jr	ra
     b24:	00000000 	nop
     b28:	1441002d 	bne	v0,at,be0 <func_8006FB94+0xec>
     b2c:	3c0e0000 	lui	t6,0x0
     b30:	91ce0000 	lbu	t6,0(t6)
     b34:	24020001 	li	v0,1
     b38:	240f0064 	li	t7,100
     b3c:	15c00028 	bnez	t6,be0 <func_8006FB94+0xec>
     b40:	24050002 	li	a1,2
     b44:	a0820019 	sb	v0,25(a0)
     b48:	a0800017 	sb	zero,23(a0)
     b4c:	a0820018 	sb	v0,24(a0)
     b50:	a48f001a 	sh	t7,26(a0)
     b54:	a0820021 	sb	v0,33(a0)
     b58:	a080001f 	sb	zero,31(a0)
     b5c:	a0850020 	sb	a1,32(a0)
     b60:	3c010000 	lui	at,0x0
     b64:	a0250000 	sb	a1,0(at)
     b68:	909800de 	lbu	t8,222(a0)
     b6c:	a48f0022 	sh	t7,34(a0)
     b70:	a48f0024 	sh	t7,36(a0)
     b74:	27190001 	addiu	t9,t8,1
     b78:	03e00008 	jr	ra
     b7c:	a09900de 	sb	t9,222(a0)
     b80:	91080000 	lbu	t0,0(t0)
     b84:	24010002 	li	at,2
     b88:	15000015 	bnez	t0,be0 <func_8006FB94+0xec>
     b8c:	00000000 	nop
     b90:	14410013 	bne	v0,at,be0 <func_8006FB94+0xec>
     b94:	24090064 	li	t1,100
     b98:	3c010000 	lui	at,0x0
     b9c:	a0200000 	sb	zero,0(at)
     ba0:	24020001 	li	v0,1
     ba4:	24050002 	li	a1,2
     ba8:	a0820019 	sb	v0,25(a0)
     bac:	a0820017 	sb	v0,23(a0)
     bb0:	a0800018 	sb	zero,24(a0)
     bb4:	a489001a 	sh	t1,26(a0)
     bb8:	a0820021 	sb	v0,33(a0)
     bbc:	a085001f 	sb	a1,31(a0)
     bc0:	a0800020 	sb	zero,32(a0)
     bc4:	3c010000 	lui	at,0x0
     bc8:	a0200000 	sb	zero,0(at)
     bcc:	a4890022 	sh	t1,34(a0)
     bd0:	a4890024 	sh	t1,36(a0)
     bd4:	a08000ee 	sb	zero,238(a0)
     bd8:	a08000dd 	sb	zero,221(a0)
     bdc:	a08000de 	sb	zero,222(a0)
     be0:	03e00008 	jr	ra
     be4:	00000000 	nop

00000be8 <func_8006FC88>:
     be8:	27bdffa0 	addiu	sp,sp,-96
     bec:	afb00030 	sw	s0,48(sp)
     bf0:	308200ff 	andi	v0,a0,0xff
     bf4:	240e00ff 	li	t6,255
     bf8:	240f00ff 	li	t7,255
     bfc:	24010005 	li	at,5
     c00:	00a08025 	move	s0,a1
     c04:	afbf0034 	sw	ra,52(sp)
     c08:	afa40060 	sw	a0,96(sp)
     c0c:	afa60068 	sw	a2,104(sp)
     c10:	a3ae005a 	sb	t6,90(sp)
     c14:	a3af0059 	sb	t7,89(sp)
     c18:	14410050 	bne	v0,at,d5c <func_8006FC88+0x174>
     c1c:	a3a00058 	sb	zero,88(sp)
     c20:	24180003 	li	t8,3
     c24:	a0b80017 	sb	t8,23(a1)
     c28:	331900ff 	andi	t9,t8,0xff
     c2c:	3c0a0000 	lui	t2,0x0
     c30:	954a141a 	lhu	t2,5146(t2)
     c34:	001958c0 	sll	t3,t9,0x3
     c38:	01795821 	addu	t3,t3,t9
     c3c:	3c0c0000 	lui	t4,0x0
     c40:	258c0000 	addiu	t4,t4,0
     c44:	000b58c0 	sll	t3,t3,0x3
     c48:	016c4821 	addu	t1,t3,t4
     c4c:	00004025 	move	t0,zero
     c50:	3406ffff 	li	a2,0xffff
     c54:	01402025 	move	a0,t2
     c58:	000868c0 	sll	t5,t0,0x3
     c5c:	012d1821 	addu	v1,t1,t5
     c60:	94650000 	lhu	a1,0(v1)
     c64:	25080001 	addiu	t0,t0,1
     c68:	310800ff 	andi	t0,t0,0xff
     c6c:	0085082a 	slt	at,a0,a1
     c70:	54200036 	bnezl	at,d4c <func_8006FC88+0x164>
     c74:	29010009 	slti	at,t0,9
     c78:	94670002 	lhu	a3,2(v1)
     c7c:	0087082a 	slt	at,a0,a3
     c80:	14200003 	bnez	at,c90 <func_8006FC88+0xa8>
     c84:	00e01025 	move	v0,a3
     c88:	54c20030 	bnel	a2,v0,d4c <func_8006FC88+0x164>
     c8c:	29010009 	slti	at,t0,9
     c90:	906e0004 	lbu	t6,4(v1)
     c94:	3146ffff 	andi	a2,t2,0xffff
     c98:	11c00029 	beqz	t6,d40 <func_8006FC88+0x158>
     c9c:	00000000 	nop
     ca0:	0c000000 	jal	0 <func_8006F0A0>
     ca4:	30e4ffff 	andi	a0,a3,0xffff
     ca8:	3c01437f 	lui	at,0x437f
     cac:	44812000 	mtc1	at,$f4
     cb0:	24180001 	li	t8,1
     cb4:	3c014f00 	lui	at,0x4f00
     cb8:	46040182 	mul.s	$f6,$f0,$f4
     cbc:	444ff800 	cfc1	t7,$31
     cc0:	44d8f800 	ctc1	t8,$31
     cc4:	00000000 	nop
     cc8:	46003224 	cvt.w.s	$f8,$f6
     ccc:	4458f800 	cfc1	t8,$31
     cd0:	00000000 	nop
     cd4:	33180078 	andi	t8,t8,0x78
     cd8:	53000013 	beqzl	t8,d28 <func_8006FC88+0x140>
     cdc:	44184000 	mfc1	t8,$f8
     ce0:	44814000 	mtc1	at,$f8
     ce4:	24180001 	li	t8,1
     ce8:	46083201 	sub.s	$f8,$f6,$f8
     cec:	44d8f800 	ctc1	t8,$31
     cf0:	00000000 	nop
     cf4:	46004224 	cvt.w.s	$f8,$f8
     cf8:	4458f800 	cfc1	t8,$31
     cfc:	00000000 	nop
     d00:	33180078 	andi	t8,t8,0x78
     d04:	17000005 	bnez	t8,d1c <func_8006FC88+0x134>
     d08:	00000000 	nop
     d0c:	44184000 	mfc1	t8,$f8
     d10:	3c018000 	lui	at,0x8000
     d14:	10000007 	b	d34 <func_8006FC88+0x14c>
     d18:	0301c025 	or	t8,t8,at
     d1c:	10000005 	b	d34 <func_8006FC88+0x14c>
     d20:	2418ffff 	li	t8,-1
     d24:	44184000 	mfc1	t8,$f8
     d28:	00000000 	nop
     d2c:	0700fffb 	bltz	t8,d1c <func_8006FC88+0x134>
     d30:	00000000 	nop
     d34:	44cff800 	ctc1	t7,$31
     d38:	10000204 	b	154c <func_8006FC88+0x964>
     d3c:	a2180013 	sb	t8,19(s0)
     d40:	10000202 	b	154c <func_8006FC88+0x964>
     d44:	a2000013 	sb	zero,19(s0)
     d48:	29010009 	slti	at,t0,9
     d4c:	5420ffc3 	bnezl	at,c5c <func_8006FC88+0x74>
     d50:	000868c0 	sll	t5,t0,0x3
     d54:	100001fe 	b	1550 <func_8006FC88+0x968>
     d58:	8fbf0034 	lw	ra,52(sp)
     d5c:	24010001 	li	at,1
     d60:	544101fb 	bnel	v0,at,1550 <func_8006FC88+0x968>
     d64:	8fbf0034 	lw	ra,52(sp)
     d68:	92190015 	lbu	t9,21(s0)
     d6c:	00004025 	move	t0,zero
     d70:	3c0a0000 	lui	t2,0x0
     d74:	172001f5 	bnez	t9,154c <func_8006FC88+0x964>
     d78:	3c0d0000 	lui	t5,0x0
     d7c:	920b0017 	lbu	t3,23(s0)
     d80:	954a141a 	lhu	t2,5146(t2)
     d84:	25ad0000 	addiu	t5,t5,0
     d88:	000b60c0 	sll	t4,t3,0x3
     d8c:	018b6021 	addu	t4,t4,t3
     d90:	000c60c0 	sll	t4,t4,0x3
     d94:	018d4821 	addu	t1,t4,t5
     d98:	3406ffff 	li	a2,0xffff
     d9c:	01402025 	move	a0,t2
     da0:	000838c0 	sll	a3,t0,0x3
     da4:	01271821 	addu	v1,t1,a3
     da8:	946e0000 	lhu	t6,0(v1)
     dac:	008e082a 	slt	at,a0,t6
     db0:	54200088 	bnezl	at,fd4 <func_8006FC88+0x3ec>
     db4:	25080001 	addiu	t0,t0,1
     db8:	94620002 	lhu	v0,2(v1)
     dbc:	0082082a 	slt	at,a0,v0
     dc0:	54200004 	bnezl	at,dd4 <func_8006FC88+0x1ec>
     dc4:	90790004 	lbu	t9,4(v1)
     dc8:	54c20082 	bnel	a2,v0,fd4 <func_8006FC88+0x3ec>
     dcc:	25080001 	addiu	t0,t0,1
     dd0:	90790004 	lbu	t9,4(v1)
     dd4:	906f0005 	lbu	t7,5(v1)
     dd8:	90780006 	lbu	t8,6(v1)
     ddc:	3c020000 	lui	v0,0x0
     de0:	24420000 	addiu	v0,v0,0
     de4:	332b00ff 	andi	t3,t9,0xff
     de8:	a0590000 	sb	t9,0(v0)
     dec:	a3af005a 	sb	t7,90(sp)
     df0:	11600035 	beqz	t3,ec8 <func_8006FC88+0x2e0>
     df4:	a3b80059 	sb	t8,89(sp)
     df8:	920c0017 	lbu	t4,23(s0)
     dfc:	3c0f0000 	lui	t7,0x0
     e00:	25ef0000 	addiu	t7,t7,0
     e04:	000c68c0 	sll	t5,t4,0x3
     e08:	01ac6821 	addu	t5,t5,t4
     e0c:	000d68c0 	sll	t5,t5,0x3
     e10:	01a77021 	addu	t6,t5,a3
     e14:	01cf1821 	addu	v1,t6,t7
     e18:	94640002 	lhu	a0,2(v1)
     e1c:	94650000 	lhu	a1,0(v1)
     e20:	a3a8005b 	sb	t0,91(sp)
     e24:	0c000000 	jal	0 <func_8006F0A0>
     e28:	3146ffff 	andi	a2,t2,0xffff
     e2c:	3c01437f 	lui	at,0x437f
     e30:	44815000 	mtc1	at,$f10
     e34:	24190001 	li	t9,1
     e38:	3c014f00 	lui	at,0x4f00
     e3c:	460a0402 	mul.s	$f16,$f0,$f10
     e40:	93a8005b 	lbu	t0,91(sp)
     e44:	4458f800 	cfc1	t8,$31
     e48:	44d9f800 	ctc1	t9,$31
     e4c:	00000000 	nop
     e50:	460084a4 	cvt.w.s	$f18,$f16
     e54:	4459f800 	cfc1	t9,$31
     e58:	00000000 	nop
     e5c:	33390078 	andi	t9,t9,0x78
     e60:	53200013 	beqzl	t9,eb0 <func_8006FC88+0x2c8>
     e64:	44199000 	mfc1	t9,$f18
     e68:	44819000 	mtc1	at,$f18
     e6c:	24190001 	li	t9,1
     e70:	46128481 	sub.s	$f18,$f16,$f18
     e74:	44d9f800 	ctc1	t9,$31
     e78:	00000000 	nop
     e7c:	460094a4 	cvt.w.s	$f18,$f18
     e80:	4459f800 	cfc1	t9,$31
     e84:	00000000 	nop
     e88:	33390078 	andi	t9,t9,0x78
     e8c:	17200005 	bnez	t9,ea4 <func_8006FC88+0x2bc>
     e90:	00000000 	nop
     e94:	44199000 	mfc1	t9,$f18
     e98:	3c018000 	lui	at,0x8000
     e9c:	10000007 	b	ebc <func_8006FC88+0x2d4>
     ea0:	0321c825 	or	t9,t9,at
     ea4:	10000005 	b	ebc <func_8006FC88+0x2d4>
     ea8:	2419ffff 	li	t9,-1
     eac:	44199000 	mfc1	t9,$f18
     eb0:	00000000 	nop
     eb4:	0720fffb 	bltz	t9,ea4 <func_8006FC88+0x2bc>
     eb8:	00000000 	nop
     ebc:	44d8f800 	ctc1	t8,$31
     ec0:	10000048 	b	fe4 <func_8006FC88+0x3fc>
     ec4:	a3b90058 	sb	t9,88(sp)
     ec8:	920b0017 	lbu	t3,23(s0)
     ecc:	3c0e0000 	lui	t6,0x0
     ed0:	25ce0000 	addiu	t6,t6,0
     ed4:	000b60c0 	sll	t4,t3,0x3
     ed8:	018b6021 	addu	t4,t4,t3
     edc:	000c60c0 	sll	t4,t4,0x3
     ee0:	01876821 	addu	t5,t4,a3
     ee4:	01ae1821 	addu	v1,t5,t6
     ee8:	94640002 	lhu	a0,2(v1)
     eec:	94650000 	lhu	a1,0(v1)
     ef0:	a3a8005b 	sb	t0,91(sp)
     ef4:	0c000000 	jal	0 <func_8006F0A0>
     ef8:	3146ffff 	andi	a2,t2,0xffff
     efc:	3c01437f 	lui	at,0x437f
     f00:	44812000 	mtc1	at,$f4
     f04:	24180001 	li	t8,1
     f08:	93a8005b 	lbu	t0,91(sp)
     f0c:	46040182 	mul.s	$f6,$f0,$f4
     f10:	3c014f00 	lui	at,0x4f00
     f14:	240b00ff 	li	t3,255
     f18:	444ff800 	cfc1	t7,$31
     f1c:	44d8f800 	ctc1	t8,$31
     f20:	00000000 	nop
     f24:	46003224 	cvt.w.s	$f8,$f6
     f28:	4458f800 	cfc1	t8,$31
     f2c:	00000000 	nop
     f30:	33180078 	andi	t8,t8,0x78
     f34:	53000013 	beqzl	t8,f84 <func_8006FC88+0x39c>
     f38:	44184000 	mfc1	t8,$f8
     f3c:	44814000 	mtc1	at,$f8
     f40:	24180001 	li	t8,1
     f44:	46083201 	sub.s	$f8,$f6,$f8
     f48:	44d8f800 	ctc1	t8,$31
     f4c:	00000000 	nop
     f50:	46004224 	cvt.w.s	$f8,$f8
     f54:	4458f800 	cfc1	t8,$31
     f58:	00000000 	nop
     f5c:	33180078 	andi	t8,t8,0x78
     f60:	17000005 	bnez	t8,f78 <func_8006FC88+0x390>
     f64:	00000000 	nop
     f68:	44184000 	mfc1	t8,$f8
     f6c:	3c018000 	lui	at,0x8000
     f70:	10000007 	b	f90 <func_8006FC88+0x3a8>
     f74:	0301c025 	or	t8,t8,at
     f78:	10000005 	b	f90 <func_8006FC88+0x3a8>
     f7c:	2418ffff 	li	t8,-1
     f80:	44184000 	mfc1	t8,$f8
     f84:	00000000 	nop
     f88:	0700fffb 	bltz	t8,f78 <func_8006FC88+0x390>
     f8c:	00000000 	nop
     f90:	331900ff 	andi	t9,t8,0xff
     f94:	2b210080 	slti	at,t9,128
     f98:	44cff800 	ctc1	t7,$31
     f9c:	50200004 	beqzl	at,fb0 <func_8006FC88+0x3c8>
     fa0:	a3a00058 	sb	zero,88(sp)
     fa4:	10000002 	b	fb0 <func_8006FC88+0x3c8>
     fa8:	a3ab0058 	sb	t3,88(sp)
     fac:	a3a00058 	sb	zero,88(sp)
     fb0:	92020019 	lbu	v0,25(s0)
     fb4:	1040000b 	beqz	v0,fe4 <func_8006FC88+0x3fc>
     fb8:	28410003 	slti	at,v0,3
     fbc:	10200009 	beqz	at,fe4 <func_8006FC88+0x3fc>
     fc0:	244c0001 	addiu	t4,v0,1
     fc4:	a20c0019 	sb	t4,25(s0)
     fc8:	10000006 	b	fe4 <func_8006FC88+0x3fc>
     fcc:	a3a00058 	sb	zero,88(sp)
     fd0:	25080001 	addiu	t0,t0,1
     fd4:	310800ff 	andi	t0,t0,0xff
     fd8:	29010009 	slti	at,t0,9
     fdc:	5420ff71 	bnezl	at,da4 <func_8006FC88+0x1bc>
     fe0:	000838c0 	sll	a3,t0,0x3
     fe4:	02002025 	move	a0,s0
     fe8:	93a50058 	lbu	a1,88(sp)
     fec:	0c000000 	jal	0 <func_8006F0A0>
     ff0:	a3a8005b 	sb	t0,91(sp)
     ff4:	920d0019 	lbu	t5,25(s0)
     ff8:	93a8005b 	lbu	t0,91(sp)
     ffc:	29a10003 	slti	at,t5,3
    1000:	14200050 	bnez	at,1144 <func_8006FC88+0x55c>
    1004:	000838c0 	sll	a3,t0,0x3
    1008:	920e0017 	lbu	t6,23(s0)
    100c:	3c190000 	lui	t9,0x0
    1010:	27390000 	addiu	t9,t9,0
    1014:	000e78c0 	sll	t7,t6,0x3
    1018:	01ee7821 	addu	t7,t7,t6
    101c:	000f78c0 	sll	t7,t7,0x3
    1020:	01e7c021 	addu	t8,t7,a3
    1024:	03195821 	addu	t3,t8,t9
    1028:	916c0005 	lbu	t4,5(t3)
    102c:	3c014f80 	lui	at,0x4f80
    1030:	a3ac005a 	sb	t4,90(sp)
    1034:	92030018 	lbu	v1,24(s0)
    1038:	000368c0 	sll	t5,v1,0x3
    103c:	01a36821 	addu	t5,t5,v1
    1040:	000d68c0 	sll	t5,t5,0x3
    1044:	01a77021 	addu	t6,t5,a3
    1048:	01d97821 	addu	t7,t6,t9
    104c:	91f80006 	lbu	t8,6(t7)
    1050:	a3b80059 	sb	t8,89(sp)
    1054:	960b0024 	lhu	t3,36(s0)
    1058:	448b5000 	mtc1	t3,$f10
    105c:	05610004 	bgez	t3,1070 <func_8006FC88+0x488>
    1060:	46805020 	cvt.s.w	$f0,$f10
    1064:	44818000 	mtc1	at,$f16
    1068:	00000000 	nop
    106c:	46100000 	add.s	$f0,$f0,$f16
    1070:	9602001a 	lhu	v0,26(s0)
    1074:	3c014f80 	lui	at,0x4f80
    1078:	44829000 	mtc1	v0,$f18
    107c:	244effff 	addiu	t6,v0,-1
    1080:	04410004 	bgez	v0,1094 <func_8006FC88+0x4ac>
    1084:	46809120 	cvt.s.w	$f4,$f18
    1088:	44813000 	mtc1	at,$f6
    108c:	00000000 	nop
    1090:	46062100 	add.s	$f4,$f4,$f6
    1094:	46040201 	sub.s	$f8,$f0,$f4
    1098:	3c01437f 	lui	at,0x437f
    109c:	44818000 	mtc1	at,$f16
    10a0:	240d0001 	li	t5,1
    10a4:	46004283 	div.s	$f10,$f8,$f0
    10a8:	3c014f00 	lui	at,0x4f00
    10ac:	31d9ffff 	andi	t9,t6,0xffff
    10b0:	46105482 	mul.s	$f18,$f10,$f16
    10b4:	444cf800 	cfc1	t4,$31
    10b8:	44cdf800 	ctc1	t5,$31
    10bc:	00000000 	nop
    10c0:	460091a4 	cvt.w.s	$f6,$f18
    10c4:	444df800 	cfc1	t5,$31
    10c8:	00000000 	nop
    10cc:	31ad0078 	andi	t5,t5,0x78
    10d0:	51a00013 	beqzl	t5,1120 <func_8006FC88+0x538>
    10d4:	440d3000 	mfc1	t5,$f6
    10d8:	44813000 	mtc1	at,$f6
    10dc:	240d0001 	li	t5,1
    10e0:	46069181 	sub.s	$f6,$f18,$f6
    10e4:	44cdf800 	ctc1	t5,$31
    10e8:	00000000 	nop
    10ec:	460031a4 	cvt.w.s	$f6,$f6
    10f0:	444df800 	cfc1	t5,$31
    10f4:	00000000 	nop
    10f8:	31ad0078 	andi	t5,t5,0x78
    10fc:	15a00005 	bnez	t5,1114 <func_8006FC88+0x52c>
    1100:	00000000 	nop
    1104:	440d3000 	mfc1	t5,$f6
    1108:	3c018000 	lui	at,0x8000
    110c:	10000007 	b	112c <func_8006FC88+0x544>
    1110:	01a16825 	or	t5,t5,at
    1114:	10000005 	b	112c <func_8006FC88+0x544>
    1118:	240dffff 	li	t5,-1
    111c:	440d3000 	mfc1	t5,$f6
    1120:	00000000 	nop
    1124:	05a0fffb 	bltz	t5,1114 <func_8006FC88+0x52c>
    1128:	00000000 	nop
    112c:	44ccf800 	ctc1	t4,$31
    1130:	a3ad0058 	sb	t5,88(sp)
    1134:	1f200003 	bgtz	t9,1144 <func_8006FC88+0x55c>
    1138:	a60e001a 	sh	t6,26(s0)
    113c:	a2000019 	sb	zero,25(s0)
    1140:	a2030017 	sb	v1,23(s0)
    1144:	93af005a 	lbu	t7,90(sp)
    1148:	240100ff 	li	at,255
    114c:	3c040000 	lui	a0,0x0
    1150:	15e10003 	bne	t7,at,1160 <func_8006FC88+0x578>
    1154:	afaf0050 	sw	t7,80(sp)
    1158:	0c000000 	jal	0 <func_8006F0A0>
    115c:	24840000 	addiu	a0,a0,0
    1160:	8fb80050 	lw	t8,80(sp)
    1164:	920b0010 	lbu	t3,16(s0)
    1168:	530b0027 	beql	t8,t3,1208 <func_8006FC88+0x620>
    116c:	93b80059 	lbu	t8,89(sp)
    1170:	820c0044 	lb	t4,68(s0)
    1174:	3c0f0000 	lui	t7,0x0
    1178:	240d0001 	li	t5,1
    117c:	15800021 	bnez	t4,1204 <func_8006FC88+0x61c>
    1180:	25ef0000 	addiu	t7,t7,0
    1184:	a20d0044 	sb	t5,68(s0)
    1188:	93ae005a 	lbu	t6,90(sp)
    118c:	26040068 	addiu	a0,s0,104
    1190:	afa40048 	sw	a0,72(sp)
    1194:	000ec900 	sll	t9,t6,0x4
    1198:	032f1021 	addu	v0,t9,t7
    119c:	8c580004 	lw	t8,4(v0)
    11a0:	8c4b0000 	lw	t3,0(v0)
    11a4:	afa2004c 	sw	v0,76(sp)
    11a8:	26050080 	addiu	a1,s0,128
    11ac:	030b3823 	subu	a3,t8,t3
    11b0:	afa7005c 	sw	a3,92(sp)
    11b4:	0c000000 	jal	0 <func_8006F0A0>
    11b8:	24060001 	li	a2,1
    11bc:	8fac0068 	lw	t4,104(sp)
    11c0:	8fa2004c 	lw	v0,76(sp)
    11c4:	8fad0048 	lw	t5,72(sp)
    11c8:	8d850128 	lw	a1,296(t4)
    11cc:	3c0e0000 	lui	t6,0x0
    11d0:	25ce0000 	addiu	t6,t6,0
    11d4:	241904f0 	li	t9,1264
    11d8:	8fa7005c 	lw	a3,92(sp)
    11dc:	afb90020 	sw	t9,32(sp)
    11e0:	afae001c 	sw	t6,28(sp)
    11e4:	afa00018 	sw	zero,24(sp)
    11e8:	afa00010 	sw	zero,16(sp)
    11ec:	26040048 	addiu	a0,s0,72
    11f0:	8c460000 	lw	a2,0(v0)
    11f4:	0c000000 	jal	0 <func_8006F0A0>
    11f8:	afad0014 	sw	t5,20(sp)
    11fc:	93af005a 	lbu	t7,90(sp)
    1200:	a20f0010 	sb	t7,16(s0)
    1204:	93b80059 	lbu	t8,89(sp)
    1208:	afb8003c 	sw	t8,60(sp)
    120c:	920b0011 	lbu	t3,17(s0)
    1210:	82030044 	lb	v1,68(s0)
    1214:	530b0029 	beql	t8,t3,12bc <func_8006FC88+0x6d4>
    1218:	24010002 	li	at,2
    121c:	14600026 	bnez	v1,12b8 <func_8006FC88+0x6d0>
    1220:	240c000b 	li	t4,11
    1224:	a20c0044 	sb	t4,68(s0)
    1228:	93ad0059 	lbu	t5,89(sp)
    122c:	3c190000 	lui	t9,0x0
    1230:	27390000 	addiu	t9,t9,0
    1234:	000d7100 	sll	t6,t5,0x4
    1238:	01d91021 	addu	v0,t6,t9
    123c:	8c4f0004 	lw	t7,4(v0)
    1240:	8c580000 	lw	t8,0(v0)
    1244:	26040068 	addiu	a0,s0,104
    1248:	260b0048 	addiu	t3,s0,72
    124c:	01f83823 	subu	a3,t7,t8
    1250:	afa7005c 	sw	a3,92(sp)
    1254:	afab0040 	sw	t3,64(sp)
    1258:	afa40048 	sw	a0,72(sp)
    125c:	afa2004c 	sw	v0,76(sp)
    1260:	26050080 	addiu	a1,s0,128
    1264:	0c000000 	jal	0 <func_8006F0A0>
    1268:	24060001 	li	a2,1
    126c:	8fac0068 	lw	t4,104(sp)
    1270:	8fa2004c 	lw	v0,76(sp)
    1274:	8fad0048 	lw	t5,72(sp)
    1278:	8d85012c 	lw	a1,300(t4)
    127c:	3c0e0000 	lui	t6,0x0
    1280:	25ce0000 	addiu	t6,t6,0
    1284:	24190501 	li	t9,1281
    1288:	8fa7005c 	lw	a3,92(sp)
    128c:	afb90020 	sw	t9,32(sp)
    1290:	afae001c 	sw	t6,28(sp)
    1294:	afa00018 	sw	zero,24(sp)
    1298:	afa00010 	sw	zero,16(sp)
    129c:	8fa40040 	lw	a0,64(sp)
    12a0:	8c460000 	lw	a2,0(v0)
    12a4:	0c000000 	jal	0 <func_8006F0A0>
    12a8:	afad0014 	sw	t5,20(sp)
    12ac:	93af0059 	lbu	t7,89(sp)
    12b0:	82030044 	lb	v1,68(s0)
    12b4:	a20f0011 	sb	t7,17(s0)
    12b8:	24010002 	li	at,2
    12bc:	14610044 	bne	v1,at,13d0 <func_8006FC88+0x7e8>
    12c0:	24180003 	li	t8,3
    12c4:	a2180044 	sb	t8,68(s0)
    12c8:	8fb90050 	lw	t9,80(sp)
    12cc:	93ab005a 	lbu	t3,90(sp)
    12d0:	3c0d0000 	lui	t5,0x0
    12d4:	33380004 	andi	t8,t9,0x4
    12d8:	000b6100 	sll	t4,t3,0x4
    12dc:	00185883 	sra	t3,t8,0x2
    12e0:	25ad0000 	addiu	t5,t5,0
    12e4:	260e0048 	addiu	t6,s0,72
    12e8:	332f0001 	andi	t7,t9,0x1
    12ec:	afae0040 	sw	t6,64(sp)
    12f0:	018d1021 	addu	v0,t4,t5
    12f4:	26040068 	addiu	a0,s0,104
    12f8:	11eb001b 	beq	t7,t3,1368 <func_8006FC88+0x780>
    12fc:	26050080 	addiu	a1,s0,128
    1300:	8c4d000c 	lw	t5,12(v0)
    1304:	8c4e0008 	lw	t6,8(v0)
    1308:	24060001 	li	a2,1
    130c:	afa2004c 	sw	v0,76(sp)
    1310:	01ae3823 	subu	a3,t5,t6
    1314:	afa7005c 	sw	a3,92(sp)
    1318:	0c000000 	jal	0 <func_8006F0A0>
    131c:	afa40048 	sw	a0,72(sp)
    1320:	8fb90068 	lw	t9,104(sp)
    1324:	8fa2004c 	lw	v0,76(sp)
    1328:	8fb80048 	lw	t8,72(sp)
    132c:	8f250130 	lw	a1,304(t9)
    1330:	3c0f0000 	lui	t7,0x0
    1334:	25ef0000 	addiu	t7,t7,0
    1338:	240b051b 	li	t3,1307
    133c:	8fa7005c 	lw	a3,92(sp)
    1340:	afab0020 	sw	t3,32(sp)
    1344:	afaf001c 	sw	t7,28(sp)
    1348:	afa00018 	sw	zero,24(sp)
    134c:	afa00010 	sw	zero,16(sp)
    1350:	8fa40040 	lw	a0,64(sp)
    1354:	8c460008 	lw	a2,8(v0)
    1358:	0c000000 	jal	0 <func_8006F0A0>
    135c:	afb80014 	sw	t8,20(sp)
    1360:	1000001b 	b	13d0 <func_8006FC88+0x7e8>
    1364:	82030044 	lb	v1,68(s0)
    1368:	8c4c000c 	lw	t4,12(v0)
    136c:	8c4d0008 	lw	t5,8(v0)
    1370:	24060001 	li	a2,1
    1374:	afa2004c 	sw	v0,76(sp)
    1378:	018d3823 	subu	a3,t4,t5
    137c:	afa7005c 	sw	a3,92(sp)
    1380:	0c000000 	jal	0 <func_8006F0A0>
    1384:	afa40048 	sw	a0,72(sp)
    1388:	8fae0068 	lw	t6,104(sp)
    138c:	8fa2004c 	lw	v0,76(sp)
    1390:	8fa7005c 	lw	a3,92(sp)
    1394:	8dd90130 	lw	t9,304(t6)
    1398:	8fb80048 	lw	t8,72(sp)
    139c:	3c0f0000 	lui	t7,0x0
    13a0:	25ef0000 	addiu	t7,t7,0
    13a4:	240b0528 	li	t3,1320
    13a8:	afab0020 	sw	t3,32(sp)
    13ac:	afaf001c 	sw	t7,28(sp)
    13b0:	afa00018 	sw	zero,24(sp)
    13b4:	afa00010 	sw	zero,16(sp)
    13b8:	8fa40040 	lw	a0,64(sp)
    13bc:	8c460008 	lw	a2,8(v0)
    13c0:	03272821 	addu	a1,t9,a3
    13c4:	0c000000 	jal	0 <func_8006F0A0>
    13c8:	afb80014 	sw	t8,20(sp)
    13cc:	82030044 	lb	v1,68(s0)
    13d0:	2401000c 	li	at,12
    13d4:	14610044 	bne	v1,at,14e8 <func_8006FC88+0x900>
    13d8:	240c000d 	li	t4,13
    13dc:	a20c0044 	sb	t4,68(s0)
    13e0:	8faf003c 	lw	t7,60(sp)
    13e4:	93ae0059 	lbu	t6,89(sp)
    13e8:	260d0048 	addiu	t5,s0,72
    13ec:	afad0040 	sw	t5,64(sp)
    13f0:	3c180000 	lui	t8,0x0
    13f4:	31ec0004 	andi	t4,t7,0x4
    13f8:	000c6883 	sra	t5,t4,0x2
    13fc:	27180000 	addiu	t8,t8,0
    1400:	31eb0001 	andi	t3,t7,0x1
    1404:	000ec900 	sll	t9,t6,0x4
    1408:	03381021 	addu	v0,t9,t8
    140c:	26040068 	addiu	a0,s0,104
    1410:	116d001b 	beq	t3,t5,1480 <func_8006FC88+0x898>
    1414:	26050080 	addiu	a1,s0,128
    1418:	8c59000c 	lw	t9,12(v0)
    141c:	8c580008 	lw	t8,8(v0)
    1420:	24060001 	li	a2,1
    1424:	afa2004c 	sw	v0,76(sp)
    1428:	03383823 	subu	a3,t9,t8
    142c:	afa7005c 	sw	a3,92(sp)
    1430:	0c000000 	jal	0 <func_8006F0A0>
    1434:	afa40048 	sw	a0,72(sp)
    1438:	8faf0068 	lw	t7,104(sp)
    143c:	8fa2004c 	lw	v0,76(sp)
    1440:	8fac0048 	lw	t4,72(sp)
    1444:	8de50130 	lw	a1,304(t7)
    1448:	3c0b0000 	lui	t3,0x0
    144c:	256b0000 	addiu	t3,t3,0
    1450:	240d053e 	li	t5,1342
    1454:	8fa7005c 	lw	a3,92(sp)
    1458:	afad0020 	sw	t5,32(sp)
    145c:	afab001c 	sw	t3,28(sp)
    1460:	afa00018 	sw	zero,24(sp)
    1464:	afa00010 	sw	zero,16(sp)
    1468:	8fa40040 	lw	a0,64(sp)
    146c:	8c460008 	lw	a2,8(v0)
    1470:	0c000000 	jal	0 <func_8006F0A0>
    1474:	afac0014 	sw	t4,20(sp)
    1478:	1000001b 	b	14e8 <func_8006FC88+0x900>
    147c:	82030044 	lb	v1,68(s0)
    1480:	8c4e000c 	lw	t6,12(v0)
    1484:	8c590008 	lw	t9,8(v0)
    1488:	24060001 	li	a2,1
    148c:	afa2004c 	sw	v0,76(sp)
    1490:	01d93823 	subu	a3,t6,t9
    1494:	afa7005c 	sw	a3,92(sp)
    1498:	0c000000 	jal	0 <func_8006F0A0>
    149c:	afa40048 	sw	a0,72(sp)
    14a0:	8fb80068 	lw	t8,104(sp)
    14a4:	8fa2004c 	lw	v0,76(sp)
    14a8:	8fa7005c 	lw	a3,92(sp)
    14ac:	8f0f0130 	lw	t7,304(t8)
    14b0:	8fac0048 	lw	t4,72(sp)
    14b4:	3c0b0000 	lui	t3,0x0
    14b8:	256b0000 	addiu	t3,t3,0
    14bc:	240d054b 	li	t5,1355
    14c0:	afad0020 	sw	t5,32(sp)
    14c4:	afab001c 	sw	t3,28(sp)
    14c8:	afa00018 	sw	zero,24(sp)
    14cc:	afa00010 	sw	zero,16(sp)
    14d0:	8fa40040 	lw	a0,64(sp)
    14d4:	8c460008 	lw	a2,8(v0)
    14d8:	01e72821 	addu	a1,t7,a3
    14dc:	0c000000 	jal	0 <func_8006F0A0>
    14e0:	afac0014 	sw	t4,20(sp)
    14e4:	82030044 	lb	v1,68(s0)
    14e8:	24010001 	li	at,1
    14ec:	10610003 	beq	v1,at,14fc <func_8006FC88+0x914>
    14f0:	26040068 	addiu	a0,s0,104
    14f4:	2401000b 	li	at,11
    14f8:	14610009 	bne	v1,at,1520 <func_8006FC88+0x938>
    14fc:	00002825 	move	a1,zero
    1500:	0c000000 	jal	0 <func_8006F0A0>
    1504:	00003025 	move	a2,zero
    1508:	5440000f 	bnezl	v0,1548 <func_8006FC88+0x960>
    150c:	93b80058 	lbu	t8,88(sp)
    1510:	820e0044 	lb	t6,68(s0)
    1514:	25d90001 	addiu	t9,t6,1
    1518:	1000000a 	b	1544 <func_8006FC88+0x95c>
    151c:	a2190044 	sb	t9,68(s0)
    1520:	28610002 	slti	at,v1,2
    1524:	14200007 	bnez	at,1544 <func_8006FC88+0x95c>
    1528:	26040068 	addiu	a0,s0,104
    152c:	00002825 	move	a1,zero
    1530:	0c000000 	jal	0 <func_8006F0A0>
    1534:	00003025 	move	a2,zero
    1538:	54400003 	bnezl	v0,1548 <func_8006FC88+0x960>
    153c:	93b80058 	lbu	t8,88(sp)
    1540:	a2000044 	sb	zero,68(s0)
    1544:	93b80058 	lbu	t8,88(sp)
    1548:	a2180013 	sb	t8,19(s0)
    154c:	8fbf0034 	lw	ra,52(sp)
    1550:	8fb00030 	lw	s0,48(sp)
    1554:	27bd0060 	addiu	sp,sp,96
    1558:	03e00008 	jr	ra
    155c:	00000000 	nop

00001560 <func_80070600>:
    1560:	27bdffe8 	addiu	sp,sp,-24
    1564:	2401001f 	li	at,31
    1568:	afbf0014 	sw	ra,20(sp)
    156c:	14a10008 	bne	a1,at,1590 <func_80070600+0x30>
    1570:	00803025 	move	a2,a0
    1574:	3c040000 	lui	a0,0x0
    1578:	24840000 	addiu	a0,a0,0
    157c:	afa0001c 	sw	zero,28(sp)
    1580:	0c000000 	jal	0 <func_8006F0A0>
    1584:	afa60018 	sw	a2,24(sp)
    1588:	8fa5001c 	lw	a1,28(sp)
    158c:	8fa60018 	lw	a2,24(sp)
    1590:	3c010001 	lui	at,0x1
    1594:	00c11021 	addu	v0,a2,at
    1598:	904e0a42 	lbu	t6,2626(v0)
    159c:	3c010001 	lui	at,0x1
    15a0:	00260821 	addu	at,at,a2
    15a4:	55c0000f 	bnezl	t6,15e4 <func_80070600+0x84>
    15a8:	a0200ae0 	sb	zero,2784(at)
    15ac:	904f0a44 	lbu	t7,2628(v0)
    15b0:	3c010000 	lui	at,0x0
    15b4:	a02f0000 	sb	t7,0(at)
    15b8:	90580a43 	lbu	t8,2627(v0)
    15bc:	3c010001 	lui	at,0x1
    15c0:	00260821 	addu	at,at,a2
    15c4:	50b8000b 	beql	a1,t8,15f4 <func_80070600+0x94>
    15c8:	8fbf0014 	lw	ra,20(sp)
    15cc:	a0250a43 	sb	a1,2627(at)
    15d0:	3c010001 	lui	at,0x1
    15d4:	00260821 	addu	at,at,a2
    15d8:	10000005 	b	15f0 <func_80070600+0x90>
    15dc:	a0250a44 	sb	a1,2628(at)
    15e0:	a0200ae0 	sb	zero,2784(at)
    15e4:	3c010001 	lui	at,0x1
    15e8:	00260821 	addu	at,at,a2
    15ec:	a0250ae3 	sb	a1,2787(at)
    15f0:	8fbf0014 	lw	ra,20(sp)
    15f4:	27bd0018 	addiu	sp,sp,24
    15f8:	03e00008 	jr	ra
    15fc:	00000000 	nop

00001600 <func_800706A0>:
    1600:	3c0e0001 	lui	t6,0x1
    1604:	01c47021 	addu	t6,t6,a0
    1608:	91ce0a42 	lbu	t6,2626(t6)
    160c:	3c020000 	lui	v0,0x0
    1610:	24420000 	addiu	v0,v0,0
    1614:	55c0000b 	bnezl	t6,1644 <func_800706A0+0x44>
    1618:	3c010001 	lui	at,0x1
    161c:	904f0000 	lbu	t7,0(v0)
    1620:	3c010001 	lui	at,0x1
    1624:	00240821 	addu	at,at,a0
    1628:	a02f0a43 	sb	t7,2627(at)
    162c:	90580000 	lbu	t8,0(v0)
    1630:	3c010001 	lui	at,0x1
    1634:	00240821 	addu	at,at,a0
    1638:	03e00008 	jr	ra
    163c:	a0380a44 	sb	t8,2628(at)
    1640:	3c010001 	lui	at,0x1
    1644:	00240821 	addu	at,at,a0
    1648:	a0200ae0 	sb	zero,2784(at)
    164c:	3c010001 	lui	at,0x1
    1650:	00240821 	addu	at,at,a0
    1654:	241900ff 	li	t9,255
    1658:	a0390ae3 	sb	t9,2787(at)
    165c:	3c013f80 	lui	at,0x3f80
    1660:	44812000 	mtc1	at,$f4
    1664:	3c010001 	lui	at,0x1
    1668:	00240821 	addu	at,at,a0
    166c:	e4240afc 	swc1	$f4,2812(at)
    1670:	03e00008 	jr	ra
    1674:	00000000 	nop

00001678 <func_80070718>:
    1678:	27bdff98 	addiu	sp,sp,-104
    167c:	afb00020 	sw	s0,32(sp)
    1680:	27b00038 	addiu	s0,sp,56
    1684:	afbf0024 	sw	ra,36(sp)
    1688:	afa40068 	sw	a0,104(sp)
    168c:	afa5006c 	sw	a1,108(sp)
    1690:	0c000000 	jal	0 <func_8006F0A0>
    1694:	02002025 	move	a0,s0
    1698:	8fae006c 	lw	t6,108(sp)
    169c:	02002025 	move	a0,s0
    16a0:	0c000000 	jal	0 <func_8006F0A0>
    16a4:	8dc50000 	lw	a1,0(t6)
    16a8:	02002025 	move	a0,s0
    16ac:	24050016 	li	a1,22
    16b0:	0c000000 	jal	0 <func_8006F0A0>
    16b4:	24060007 	li	a2,7
    16b8:	240f0040 	li	t7,64
    16bc:	afaf0010 	sw	t7,16(sp)
    16c0:	02002025 	move	a0,s0
    16c4:	2405009b 	li	a1,155
    16c8:	2406009b 	li	a2,155
    16cc:	0c000000 	jal	0 <func_8006F0A0>
    16d0:	240700ff 	li	a3,255
    16d4:	3c060000 	lui	a2,0x0
    16d8:	3c050000 	lui	a1,0x0
    16dc:	24a50000 	addiu	a1,a1,0
    16e0:	8cc60014 	lw	a2,20(a2)
    16e4:	0c000000 	jal	0 <func_8006F0A0>
    16e8:	02002025 	move	a0,s0
    16ec:	3c060000 	lui	a2,0x0
    16f0:	3c050000 	lui	a1,0x0
    16f4:	24a50000 	addiu	a1,a1,0
    16f8:	8cc60018 	lw	a2,24(a2)
    16fc:	0c000000 	jal	0 <func_8006F0A0>
    1700:	02002025 	move	a0,s0
    1704:	24180040 	li	t8,64
    1708:	afb80010 	sw	t8,16(sp)
    170c:	02002025 	move	a0,s0
    1710:	240500ff 	li	a1,255
    1714:	240600ff 	li	a2,255
    1718:	0c000000 	jal	0 <func_8006F0A0>
    171c:	24070037 	li	a3,55
    1720:	02002025 	move	a0,s0
    1724:	24050016 	li	a1,22
    1728:	0c000000 	jal	0 <func_8006F0A0>
    172c:	24060008 	li	a2,8
    1730:	3c050000 	lui	a1,0x0
    1734:	3c060000 	lui	a2,0x0
    1738:	24c60000 	addiu	a2,a2,0
    173c:	24a50000 	addiu	a1,a1,0
    1740:	0c000000 	jal	0 <func_8006F0A0>
    1744:	02002025 	move	a0,s0
    1748:	24190040 	li	t9,64
    174c:	afb90010 	sw	t9,16(sp)
    1750:	02002025 	move	a0,s0
    1754:	240500ff 	li	a1,255
    1758:	240600ff 	li	a2,255
    175c:	0c000000 	jal	0 <func_8006F0A0>
    1760:	240700ff 	li	a3,255
    1764:	3c020000 	lui	v0,0x0
    1768:	9442000c 	lhu	v0,12(v0)
    176c:	3c050000 	lui	a1,0x0
    1770:	24a50000 	addiu	a1,a1,0
    1774:	44822000 	mtc1	v0,$f4
    1778:	02002025 	move	a0,s0
    177c:	04410005 	bgez	v0,1794 <func_80070718+0x11c>
    1780:	468021a0 	cvt.s.w	$f6,$f4
    1784:	3c014f80 	lui	at,0x4f80
    1788:	44814000 	mtc1	at,$f8
    178c:	00000000 	nop
    1790:	46083180 	add.s	$f6,$f6,$f8
    1794:	3c013cb4 	lui	at,0x3cb4
    1798:	44815000 	mtc1	at,$f10
    179c:	3c014270 	lui	at,0x4270
    17a0:	44819000 	mtc1	at,$f18
    17a4:	460a3402 	mul.s	$f16,$f6,$f10
    17a8:	24060001 	li	a2,1
    17ac:	46128103 	div.s	$f4,$f16,$f18
    17b0:	4448f800 	cfc1	t0,$31
    17b4:	44c6f800 	ctc1	a2,$31
    17b8:	00000000 	nop
    17bc:	46002224 	cvt.w.s	$f8,$f4
    17c0:	4446f800 	cfc1	a2,$31
    17c4:	00000000 	nop
    17c8:	30c60078 	andi	a2,a2,0x78
    17cc:	10c00012 	beqz	a2,1818 <func_80070718+0x1a0>
    17d0:	3c014f00 	lui	at,0x4f00
    17d4:	44814000 	mtc1	at,$f8
    17d8:	24060001 	li	a2,1
    17dc:	46082201 	sub.s	$f8,$f4,$f8
    17e0:	44c6f800 	ctc1	a2,$31
    17e4:	00000000 	nop
    17e8:	46004224 	cvt.w.s	$f8,$f8
    17ec:	4446f800 	cfc1	a2,$31
    17f0:	00000000 	nop
    17f4:	30c60078 	andi	a2,a2,0x78
    17f8:	14c00005 	bnez	a2,1810 <func_80070718+0x198>
    17fc:	00000000 	nop
    1800:	44064000 	mfc1	a2,$f8
    1804:	3c018000 	lui	at,0x8000
    1808:	10000007 	b	1828 <func_80070718+0x1b0>
    180c:	00c13025 	or	a2,a2,at
    1810:	10000005 	b	1828 <func_80070718+0x1b0>
    1814:	2406ffff 	li	a2,-1
    1818:	44064000 	mfc1	a2,$f8
    181c:	00000000 	nop
    1820:	04c0fffb 	bltz	a2,1810 <func_80070718+0x198>
    1824:	00000000 	nop
    1828:	44c8f800 	ctc1	t0,$31
    182c:	0c000000 	jal	0 <func_8006F0A0>
    1830:	30c600ff 	andi	a2,a2,0xff
    1834:	3c090000 	lui	t1,0x0
    1838:	9529000c 	lhu	t1,12(t1)
    183c:	312a001f 	andi	t2,t1,0x1f
    1840:	29410010 	slti	at,t2,16
    1844:	10200007 	beqz	at,1864 <func_80070718+0x1ec>
    1848:	3c0b0000 	lui	t3,0x0
    184c:	956b0000 	lhu	t3,0(t3)
    1850:	3c050000 	lui	a1,0x0
    1854:	24a50000 	addiu	a1,a1,0
    1858:	29610006 	slti	at,t3,6
    185c:	14200009 	bnez	at,1884 <func_80070718+0x20c>
    1860:	02002025 	move	a0,s0
    1864:	3c050000 	lui	a1,0x0
    1868:	3c060000 	lui	a2,0x0
    186c:	24c60000 	addiu	a2,a2,0
    1870:	24a50000 	addiu	a1,a1,0
    1874:	0c000000 	jal	0 <func_8006F0A0>
    1878:	02002025 	move	a0,s0
    187c:	10000004 	b	1890 <func_80070718+0x218>
    1880:	00000000 	nop
    1884:	3c060000 	lui	a2,0x0
    1888:	0c000000 	jal	0 <func_8006F0A0>
    188c:	24c60000 	addiu	a2,a2,0
    1890:	3c020000 	lui	v0,0x0
    1894:	9442000c 	lhu	v0,12(v0)
    1898:	3c050000 	lui	a1,0x0
    189c:	24a50000 	addiu	a1,a1,0
    18a0:	44823000 	mtc1	v0,$f6
    18a4:	02002025 	move	a0,s0
    18a8:	04410005 	bgez	v0,18c0 <func_80070718+0x248>
    18ac:	468032a0 	cvt.s.w	$f10,$f6
    18b0:	3c014f80 	lui	at,0x4f80
    18b4:	44818000 	mtc1	at,$f16
    18b8:	00000000 	nop
    18bc:	46105280 	add.s	$f10,$f10,$f16
    18c0:	3c013cb4 	lui	at,0x3cb4
    18c4:	44819000 	mtc1	at,$f18
    18c8:	2401003c 	li	at,60
    18cc:	46125102 	mul.s	$f4,$f10,$f18
    18d0:	4600220d 	trunc.w.s	$f8,$f4
    18d4:	44064000 	mfc1	a2,$f8
    18d8:	00000000 	nop
    18dc:	00063400 	sll	a2,a2,0x10
    18e0:	00063403 	sra	a2,a2,0x10
    18e4:	00c1001a 	div	zero,a2,at
    18e8:	00003010 	mfhi	a2
    18ec:	0c000000 	jal	0 <func_8006F0A0>
    18f0:	00000000 	nop
    18f4:	240d0040 	li	t5,64
    18f8:	afad0010 	sw	t5,16(sp)
    18fc:	02002025 	move	a0,s0
    1900:	240500ff 	li	a1,255
    1904:	240600ff 	li	a2,255
    1908:	0c000000 	jal	0 <func_8006F0A0>
    190c:	24070037 	li	a3,55
    1910:	02002025 	move	a0,s0
    1914:	24050016 	li	a1,22
    1918:	0c000000 	jal	0 <func_8006F0A0>
    191c:	24060009 	li	a2,9
    1920:	3c050000 	lui	a1,0x0
    1924:	3c060000 	lui	a2,0x0
    1928:	24c60000 	addiu	a2,a2,0
    192c:	24a50000 	addiu	a1,a1,0
    1930:	0c000000 	jal	0 <func_8006F0A0>
    1934:	02002025 	move	a0,s0
    1938:	240e0040 	li	t6,64
    193c:	afae0010 	sw	t6,16(sp)
    1940:	02002025 	move	a0,s0
    1944:	240500ff 	li	a1,255
    1948:	240600ff 	li	a2,255
    194c:	0c000000 	jal	0 <func_8006F0A0>
    1950:	240700ff 	li	a3,255
    1954:	3c020000 	lui	v0,0x0
    1958:	9442141a 	lhu	v0,5146(v0)
    195c:	3c050000 	lui	a1,0x0
    1960:	24a50000 	addiu	a1,a1,0
    1964:	44823000 	mtc1	v0,$f6
    1968:	02002025 	move	a0,s0
    196c:	04410005 	bgez	v0,1984 <func_80070718+0x30c>
    1970:	46803420 	cvt.s.w	$f16,$f6
    1974:	3c014f80 	lui	at,0x4f80
    1978:	44815000 	mtc1	at,$f10
    197c:	00000000 	nop
    1980:	460a8400 	add.s	$f16,$f16,$f10
    1984:	3c013cb4 	lui	at,0x3cb4
    1988:	44819000 	mtc1	at,$f18
    198c:	3c014270 	lui	at,0x4270
    1990:	44814000 	mtc1	at,$f8
    1994:	46128102 	mul.s	$f4,$f16,$f18
    1998:	24060001 	li	a2,1
    199c:	46082183 	div.s	$f6,$f4,$f8
    19a0:	444ff800 	cfc1	t7,$31
    19a4:	44c6f800 	ctc1	a2,$31
    19a8:	00000000 	nop
    19ac:	460032a4 	cvt.w.s	$f10,$f6
    19b0:	4446f800 	cfc1	a2,$31
    19b4:	00000000 	nop
    19b8:	30c60078 	andi	a2,a2,0x78
    19bc:	10c00012 	beqz	a2,1a08 <func_80070718+0x390>
    19c0:	3c014f00 	lui	at,0x4f00
    19c4:	44815000 	mtc1	at,$f10
    19c8:	24060001 	li	a2,1
    19cc:	460a3281 	sub.s	$f10,$f6,$f10
    19d0:	44c6f800 	ctc1	a2,$31
    19d4:	00000000 	nop
    19d8:	460052a4 	cvt.w.s	$f10,$f10
    19dc:	4446f800 	cfc1	a2,$31
    19e0:	00000000 	nop
    19e4:	30c60078 	andi	a2,a2,0x78
    19e8:	14c00005 	bnez	a2,1a00 <func_80070718+0x388>
    19ec:	00000000 	nop
    19f0:	44065000 	mfc1	a2,$f10
    19f4:	3c018000 	lui	at,0x8000
    19f8:	10000007 	b	1a18 <func_80070718+0x3a0>
    19fc:	00c13025 	or	a2,a2,at
    1a00:	10000005 	b	1a18 <func_80070718+0x3a0>
    1a04:	2406ffff 	li	a2,-1
    1a08:	44065000 	mfc1	a2,$f10
    1a0c:	00000000 	nop
    1a10:	04c0fffb 	bltz	a2,1a00 <func_80070718+0x388>
    1a14:	00000000 	nop
    1a18:	44cff800 	ctc1	t7,$31
    1a1c:	0c000000 	jal	0 <func_8006F0A0>
    1a20:	30c600ff 	andi	a2,a2,0xff
    1a24:	3c180000 	lui	t8,0x0
    1a28:	9718141a 	lhu	t8,5146(t8)
    1a2c:	3c080000 	lui	t0,0x0
    1a30:	02002025 	move	a0,s0
    1a34:	3319001f 	andi	t9,t8,0x1f
    1a38:	2b210010 	slti	at,t9,16
    1a3c:	10200007 	beqz	at,1a5c <func_80070718+0x3e4>
    1a40:	3c050000 	lui	a1,0x0
    1a44:	95080000 	lhu	t0,0(t0)
    1a48:	3c060000 	lui	a2,0x0
    1a4c:	24c60000 	addiu	a2,a2,0
    1a50:	29010006 	slti	at,t0,6
    1a54:	14200007 	bnez	at,1a74 <func_80070718+0x3fc>
    1a58:	00000000 	nop
    1a5c:	3c060000 	lui	a2,0x0
    1a60:	24c60000 	addiu	a2,a2,0
    1a64:	0c000000 	jal	0 <func_8006F0A0>
    1a68:	24a50000 	addiu	a1,a1,0
    1a6c:	10000005 	b	1a84 <func_80070718+0x40c>
    1a70:	00000000 	nop
    1a74:	3c050000 	lui	a1,0x0
    1a78:	24a50000 	addiu	a1,a1,0
    1a7c:	0c000000 	jal	0 <func_8006F0A0>
    1a80:	02002025 	move	a0,s0
    1a84:	3c020000 	lui	v0,0x0
    1a88:	9442141a 	lhu	v0,5146(v0)
    1a8c:	3c050000 	lui	a1,0x0
    1a90:	24a50000 	addiu	a1,a1,0
    1a94:	44828000 	mtc1	v0,$f16
    1a98:	02002025 	move	a0,s0
    1a9c:	04410005 	bgez	v0,1ab4 <func_80070718+0x43c>
    1aa0:	468084a0 	cvt.s.w	$f18,$f16
    1aa4:	3c014f80 	lui	at,0x4f80
    1aa8:	44812000 	mtc1	at,$f4
    1aac:	00000000 	nop
    1ab0:	46049480 	add.s	$f18,$f18,$f4
    1ab4:	3c013cb4 	lui	at,0x3cb4
    1ab8:	44814000 	mtc1	at,$f8
    1abc:	2401003c 	li	at,60
    1ac0:	46089182 	mul.s	$f6,$f18,$f8
    1ac4:	4600328d 	trunc.w.s	$f10,$f6
    1ac8:	44065000 	mfc1	a2,$f10
    1acc:	00000000 	nop
    1ad0:	00063400 	sll	a2,a2,0x10
    1ad4:	00063403 	sra	a2,a2,0x10
    1ad8:	00c1001a 	div	zero,a2,at
    1adc:	00003010 	mfhi	a2
    1ae0:	0c000000 	jal	0 <func_8006F0A0>
    1ae4:	00000000 	nop
    1ae8:	240a0040 	li	t2,64
    1aec:	afaa0010 	sw	t2,16(sp)
    1af0:	02002025 	move	a0,s0
    1af4:	24050037 	li	a1,55
    1af8:	240600ff 	li	a2,255
    1afc:	0c000000 	jal	0 <func_8006F0A0>
    1b00:	240700ff 	li	a3,255
    1b04:	02002025 	move	a0,s0
    1b08:	24050016 	li	a1,22
    1b0c:	0c000000 	jal	0 <func_8006F0A0>
    1b10:	24060006 	li	a2,6
    1b14:	3c0b0000 	lui	t3,0x0
    1b18:	8d6b0010 	lw	t3,16(t3)
    1b1c:	3c050000 	lui	a1,0x0
    1b20:	24a50000 	addiu	a1,a1,0
    1b24:	11600009 	beqz	t3,1b4c <func_80070718+0x4d4>
    1b28:	02002025 	move	a0,s0
    1b2c:	3c050000 	lui	a1,0x0
    1b30:	3c060000 	lui	a2,0x0
    1b34:	24c60000 	addiu	a2,a2,0
    1b38:	24a50000 	addiu	a1,a1,0
    1b3c:	0c000000 	jal	0 <func_8006F0A0>
    1b40:	02002025 	move	a0,s0
    1b44:	10000004 	b	1b58 <func_80070718+0x4e0>
    1b48:	00000000 	nop
    1b4c:	3c060000 	lui	a2,0x0
    1b50:	0c000000 	jal	0 <func_8006F0A0>
    1b54:	24c60000 	addiu	a2,a2,0
    1b58:	0c000000 	jal	0 <func_8006F0A0>
    1b5c:	02002025 	move	a0,s0
    1b60:	8fac006c 	lw	t4,108(sp)
    1b64:	02002025 	move	a0,s0
    1b68:	0c000000 	jal	0 <func_8006F0A0>
    1b6c:	ad820000 	sw	v0,0(t4)
    1b70:	8fbf0024 	lw	ra,36(sp)
    1b74:	8fb00020 	lw	s0,32(sp)
    1b78:	27bd0068 	addiu	sp,sp,104
    1b7c:	03e00008 	jr	ra
    1b80:	00000000 	nop

00001b84 <func_80070C24>:
    1b84:	27bdff70 	addiu	sp,sp,-144
    1b88:	3c0d0000 	lui	t5,0x0
    1b8c:	25ad0000 	addiu	t5,t5,0
    1b90:	8da2135c 	lw	v0,4956(t5)
    1b94:	3c010001 	lui	at,0x1
    1b98:	00817021 	addu	t6,a0,at
    1b9c:	afbf001c 	sw	ra,28(sp)
    1ba0:	afb10018 	sw	s1,24(sp)
    1ba4:	afb00014 	sw	s0,20(sp)
    1ba8:	afa7009c 	sw	a3,156(sp)
    1bac:	44807000 	mtc1	zero,$f14
    1bb0:	afae0040 	sw	t6,64(sp)
    1bb4:	00a08025 	move	s0,a1
    1bb8:	00c08825 	move	s1,a2
    1bbc:	1040000b 	beqz	v0,1bec <func_80070C24+0x68>
    1bc0:	8dca0adc 	lw	t2,2780(t6)
    1bc4:	24010003 	li	at,3
    1bc8:	50410009 	beql	v0,at,1bf0 <func_80070C24+0x6c>
    1bcc:	8fb8009c 	lw	t8,156(sp)
    1bd0:	afa40090 	sw	a0,144(sp)
    1bd4:	afaa007c 	sw	t2,124(sp)
    1bd8:	0c000000 	jal	0 <func_8006F0A0>
    1bdc:	e7ae0088 	swc1	$f14,136(sp)
    1be0:	8faa007c 	lw	t2,124(sp)
    1be4:	c7ae0088 	lwc1	$f14,136(sp)
    1be8:	8fa40090 	lw	a0,144(sp)
    1bec:	8fb8009c 	lw	t8,156(sp)
    1bf0:	8fae0040 	lw	t6,64(sp)
    1bf4:	971901d4 	lhu	t9,468(t8)
    1bf8:	5720090c 	bnezl	t9,402c <func_80070C24+0x24a8>
    1bfc:	8fbf001c 	lw	ra,28(sp)
    1c00:	95cf0934 	lhu	t7,2356(t6)
    1c04:	55e00015 	bnezl	t7,1c5c <func_80070C24+0xd8>
    1c08:	afa40090 	sw	a0,144(sp)
    1c0c:	95d80936 	lhu	t8,2358(t6)
    1c10:	57000012 	bnezl	t8,1c5c <func_80070C24+0xd8>
    1c14:	afa40090 	sw	a0,144(sp)
    1c18:	91c21e14 	lbu	v0,7700(t6)
    1c1c:	24010001 	li	at,1
    1c20:	14410006 	bne	v0,at,1c3c <func_80070C24+0xb8>
    1c24:	3c010000 	lui	at,0x0
    1c28:	c4260000 	lwc1	$f6,0(at)
    1c2c:	c48420c0 	lwc1	$f4,8384(a0)
    1c30:	46062201 	sub.s	$f8,$f4,$f6
    1c34:	10000008 	b	1c58 <func_80070C24+0xd4>
    1c38:	e48820c0 	swc1	$f8,8384(a0)
    1c3c:	24010005 	li	at,5
    1c40:	14410005 	bne	v0,at,1c58 <func_80070C24+0xd4>
    1c44:	3c010000 	lui	at,0x0
    1c48:	c4300000 	lwc1	$f16,0(at)
    1c4c:	c48a20c0 	lwc1	$f10,8384(a0)
    1c50:	46105481 	sub.s	$f18,$f10,$f16
    1c54:	e49220c0 	swc1	$f18,8384(a0)
    1c58:	afa40090 	sw	a0,144(sp)
    1c5c:	afaa007c 	sw	t2,124(sp)
    1c60:	0c000000 	jal	0 <func_8006F0A0>
    1c64:	e7ae0088 	swc1	$f14,136(sp)
    1c68:	0c000000 	jal	0 <func_8006F0A0>
    1c6c:	8fa40090 	lw	a0,144(sp)
    1c70:	3c0d0000 	lui	t5,0x0
    1c74:	25ad0000 	addiu	t5,t5,0
    1c78:	95a21416 	lhu	v0,5142(t5)
    1c7c:	3401ff00 	li	at,0xff00
    1c80:	8faa007c 	lw	t2,124(sp)
    1c84:	0041082a 	slt	at,v0,at
    1c88:	14200029 	bnez	at,1d30 <func_80070C24+0x1ac>
    1c8c:	c7ae0088 	lwc1	$f14,136(sp)
    1c90:	341fffff 	li	ra,0xffff
    1c94:	13e20026 	beq	ra,v0,1d30 <func_80070C24+0x1ac>
    1c98:	2459fff0 	addiu	t9,v0,-16
    1c9c:	3c040000 	lui	a0,0x0
    1ca0:	a5b91416 	sh	t9,5142(t5)
    1ca4:	24840000 	addiu	a0,a0,0
    1ca8:	3325ffff 	andi	a1,t9,0xffff
    1cac:	afaa007c 	sw	t2,124(sp)
    1cb0:	0c000000 	jal	0 <func_8006F0A0>
    1cb4:	e7ae0088 	swc1	$f14,136(sp)
    1cb8:	3c0d0000 	lui	t5,0x0
    1cbc:	25ad0000 	addiu	t5,t5,0
    1cc0:	95a21416 	lhu	v0,5142(t5)
    1cc4:	3401ff0e 	li	at,0xff0e
    1cc8:	8faa007c 	lw	t2,124(sp)
    1ccc:	1441000c 	bne	v0,at,1d00 <func_80070C24+0x17c>
    1cd0:	c7ae0088 	lwc1	$f14,136(sp)
    1cd4:	24042813 	li	a0,10259
    1cd8:	afaa007c 	sw	t2,124(sp)
    1cdc:	0c000000 	jal	0 <func_8006F0A0>
    1ce0:	e7ae0088 	swc1	$f14,136(sp)
    1ce4:	3c0d0000 	lui	t5,0x0
    1ce8:	25ad0000 	addiu	t5,t5,0
    1cec:	340fffff 	li	t7,0xffff
    1cf0:	8faa007c 	lw	t2,124(sp)
    1cf4:	c7ae0088 	lwc1	$f14,136(sp)
    1cf8:	1000000d 	b	1d30 <func_80070C24+0x1ac>
    1cfc:	a5af1416 	sh	t7,5142(t5)
    1d00:	3401ff0d 	li	at,0xff0d
    1d04:	1441000a 	bne	v0,at,1d30 <func_80070C24+0x1ac>
    1d08:	240428ae 	li	a0,10414
    1d0c:	afaa007c 	sw	t2,124(sp)
    1d10:	0c000000 	jal	0 <func_8006F0A0>
    1d14:	e7ae0088 	swc1	$f14,136(sp)
    1d18:	3c0d0000 	lui	t5,0x0
    1d1c:	25ad0000 	addiu	t5,t5,0
    1d20:	3418ffff 	li	t8,0xffff
    1d24:	8faa007c 	lw	t2,124(sp)
    1d28:	c7ae0088 	lwc1	$f14,136(sp)
    1d2c:	a5b81416 	sh	t8,5142(t5)
    1d30:	8fae009c 	lw	t6,156(sp)
    1d34:	341fffff 	li	ra,0xffff
    1d38:	95d901d4 	lhu	t9,468(t6)
    1d3c:	5720003a 	bnezl	t9,1e28 <func_80070C24+0x2a4>
    1d40:	8daf1360 	lw	t7,4960(t5)
    1d44:	8faf00a4 	lw	t7,164(sp)
    1d48:	8fa200a0 	lw	v0,160(sp)
    1d4c:	34018000 	li	at,0x8000
    1d50:	95f80000 	lhu	t8,0(t7)
    1d54:	00411021 	addu	v0,v0,at
    1d58:	57000033 	bnezl	t8,1e28 <func_80070C24+0x2a4>
    1d5c:	8daf1360 	lw	t7,4960(t5)
    1d60:	8c4e6300 	lw	t6,25344(v0)
    1d64:	55c00005 	bnezl	t6,1d7c <func_80070C24+0x1f8>
    1d68:	8daf135c 	lw	t7,4956(t5)
    1d6c:	90596304 	lbu	t9,25348(v0)
    1d70:	53200006 	beqzl	t9,1d8c <func_80070C24+0x208>
    1d74:	9618001a 	lhu	t8,26(s0)
    1d78:	8daf135c 	lw	t7,4956(t5)
    1d7c:	24010003 	li	at,3
    1d80:	55e10029 	bnel	t7,at,1e28 <func_80070C24+0x2a4>
    1d84:	8daf1360 	lw	t7,4960(t5)
    1d88:	9618001a 	lhu	t8,26(s0)
    1d8c:	8fa40090 	lw	a0,144(sp)
    1d90:	57000025 	bnezl	t8,1e28 <func_80070C24+0x2a4>
    1d94:	8daf1360 	lw	t7,4960(t5)
    1d98:	afaa007c 	sw	t2,124(sp)
    1d9c:	0c000000 	jal	0 <func_8006F0A0>
    1da0:	e7ae0088 	swc1	$f14,136(sp)
    1da4:	3c0d0000 	lui	t5,0x0
    1da8:	25ad0000 	addiu	t5,t5,0
    1dac:	8faa007c 	lw	t2,124(sp)
    1db0:	341fffff 	li	ra,0xffff
    1db4:	1440001b 	bnez	v0,1e24 <func_80070C24+0x2a0>
    1db8:	c7ae0088 	lwc1	$f14,136(sp)
    1dbc:	8fae0040 	lw	t6,64(sp)
    1dc0:	91d9241b 	lbu	t9,9243(t6)
    1dc4:	53200005 	beqzl	t9,1ddc <func_80070C24+0x258>
    1dc8:	8db80010 	lw	t8,16(t5)
    1dcc:	8daf135c 	lw	t7,4956(t5)
    1dd0:	51e00015 	beqzl	t7,1e28 <func_80070C24+0x2a4>
    1dd4:	8daf1360 	lw	t7,4960(t5)
    1dd8:	8db80010 	lw	t8,16(t5)
    1ddc:	3c030000 	lui	v1,0x0
    1de0:	24630000 	addiu	v1,v1,0
    1de4:	13000004 	beqz	t8,1df8 <func_80070C24+0x274>
    1de8:	00000000 	nop
    1dec:	94620000 	lhu	v0,0(v1)
    1df0:	28410190 	slti	at,v0,400
    1df4:	14200007 	bnez	at,1e14 <func_80070C24+0x290>
    1df8:	3c030000 	lui	v1,0x0
    1dfc:	24630000 	addiu	v1,v1,0
    1e00:	94790000 	lhu	t9,0(v1)
    1e04:	95ae000c 	lhu	t6,12(t5)
    1e08:	01d97821 	addu	t7,t6,t9
    1e0c:	10000005 	b	1e24 <func_80070C24+0x2a0>
    1e10:	a5af000c 	sh	t7,12(t5)
    1e14:	95b8000c 	lhu	t8,12(t5)
    1e18:	00027040 	sll	t6,v0,0x1
    1e1c:	030ec821 	addu	t9,t8,t6
    1e20:	a5b9000c 	sh	t9,12(t5)
    1e24:	8daf1360 	lw	t7,4960(t5)
    1e28:	3c030000 	lui	v1,0x0
    1e2c:	24630000 	addiu	v1,v1,0
    1e30:	29e10005 	slti	at,t7,5
    1e34:	10200004 	beqz	at,1e48 <func_80070C24+0x2c4>
    1e38:	3c0b0000 	lui	t3,0x0
    1e3c:	94780000 	lhu	t8,0(v1)
    1e40:	53000007 	beqzl	t8,1e60 <func_80070C24+0x2dc>
    1e44:	95a2000c 	lhu	v0,12(t5)
    1e48:	95a2000c 	lhu	v0,12(t5)
    1e4c:	95ae141a 	lhu	t6,5146(t5)
    1e50:	01c2082a 	slt	at,t6,v0
    1e54:	54200009 	bnezl	at,1e7c <func_80070C24+0x2f8>
    1e58:	a5a2141a 	sh	v0,5146(t5)
    1e5c:	95a2000c 	lhu	v0,12(t5)
    1e60:	28410aab 	slti	at,v0,2731
    1e64:	54200005 	bnezl	at,1e7c <func_80070C24+0x2f8>
    1e68:	a5a2141a 	sh	v0,5146(t5)
    1e6c:	94790000 	lhu	t9,0(v1)
    1e70:	07230003 	bgezl	t9,1e80 <func_80070C24+0x2fc>
    1e74:	3043ffff 	andi	v1,v0,0xffff
    1e78:	a5a2141a 	sh	v0,5146(t5)
    1e7c:	3043ffff 	andi	v1,v0,0xffff
    1e80:	3401c001 	li	at,0xc001
    1e84:	0061082a 	slt	at,v1,at
    1e88:	10200003 	beqz	at,1e98 <func_80070C24+0x314>
    1e8c:	256b0000 	addiu	t3,t3,0
    1e90:	28614555 	slti	at,v1,17749
    1e94:	10200003 	beqz	at,1ea4 <func_80070C24+0x320>
    1e98:	240f0001 	li	t7,1
    1e9c:	10000002 	b	1ea8 <func_80070C24+0x324>
    1ea0:	adaf0010 	sw	t7,16(t5)
    1ea4:	ada00010 	sw	zero,16(t5)
    1ea8:	8d620000 	lw	v0,0(t3)
    1eac:	3c060000 	lui	a2,0x0
    1eb0:	24c60000 	addiu	a2,a2,0
    1eb4:	845800d4 	lh	t8,212(v0)
    1eb8:	8fb90090 	lw	t9,144(sp)
    1ebc:	27a4005c 	addiu	a0,sp,92
    1ec0:	17000004 	bnez	t8,1ed4 <func_80070C24+0x350>
    1ec4:	24070692 	li	a3,1682
    1ec8:	844e0858 	lh	t6,2136(v0)
    1ecc:	51c0003d 	beqzl	t6,1fc4 <func_80070C24+0x440>
    1ed0:	920300bf 	lbu	v1,191(s0)
    1ed4:	8f250000 	lw	a1,0(t9)
    1ed8:	e7ae0088 	swc1	$f14,136(sp)
    1edc:	afaa007c 	sw	t2,124(sp)
    1ee0:	0c000000 	jal	0 <func_8006F0A0>
    1ee4:	afa5006c 	sw	a1,108(sp)
    1ee8:	8faf006c 	lw	t7,108(sp)
    1eec:	8de402c0 	lw	a0,704(t7)
    1ef0:	0c000000 	jal	0 <func_8006F0A0>
    1ef4:	afa40070 	sw	a0,112(sp)
    1ef8:	8fa6006c 	lw	a2,108(sp)
    1efc:	afa20074 	sw	v0,116(sp)
    1f00:	8faa007c 	lw	t2,124(sp)
    1f04:	8cc302b0 	lw	v1,688(a2)
    1f08:	c7ae0088 	lwc1	$f14,136(sp)
    1f0c:	3c0ede00 	lui	t6,0xde00
    1f10:	24780008 	addiu	t8,v1,8
    1f14:	acd802b0 	sw	t8,688(a2)
    1f18:	ac6e0000 	sw	t6,0(v1)
    1f1c:	8fb90074 	lw	t9,116(sp)
    1f20:	27a50074 	addiu	a1,sp,116
    1f24:	ac790004 	sw	t9,4(v1)
    1f28:	8fa40090 	lw	a0,144(sp)
    1f2c:	afaa007c 	sw	t2,124(sp)
    1f30:	0c000000 	jal	0 <func_8006F0A0>
    1f34:	e7ae0088 	swc1	$f14,136(sp)
    1f38:	8faf0074 	lw	t7,116(sp)
    1f3c:	8faa007c 	lw	t2,124(sp)
    1f40:	c7ae0088 	lwc1	$f14,136(sp)
    1f44:	25f80008 	addiu	t8,t7,8
    1f48:	afb80074 	sw	t8,116(sp)
    1f4c:	3c0edf00 	lui	t6,0xdf00
    1f50:	adee0000 	sw	t6,0(t7)
    1f54:	ade00004 	sw	zero,4(t7)
    1f58:	8fa50074 	lw	a1,116(sp)
    1f5c:	8fa40070 	lw	a0,112(sp)
    1f60:	afaa007c 	sw	t2,124(sp)
    1f64:	0c000000 	jal	0 <func_8006F0A0>
    1f68:	e7ae0088 	swc1	$f14,136(sp)
    1f6c:	8fb90074 	lw	t9,116(sp)
    1f70:	8faf006c 	lw	t7,108(sp)
    1f74:	8faa007c 	lw	t2,124(sp)
    1f78:	c7ae0088 	lwc1	$f14,136(sp)
    1f7c:	adf902c0 	sw	t9,704(t7)
    1f80:	8fb80090 	lw	t8,144(sp)
    1f84:	3c060000 	lui	a2,0x0
    1f88:	24c60000 	addiu	a2,a2,0
    1f8c:	8f050000 	lw	a1,0(t8)
    1f90:	27a4005c 	addiu	a0,sp,92
    1f94:	2407069a 	li	a3,1690
    1f98:	afaa007c 	sw	t2,124(sp)
    1f9c:	0c000000 	jal	0 <func_8006F0A0>
    1fa0:	e7ae0088 	swc1	$f14,136(sp)
    1fa4:	3c0b0000 	lui	t3,0x0
    1fa8:	3c0d0000 	lui	t5,0x0
    1fac:	25ad0000 	addiu	t5,t5,0
    1fb0:	256b0000 	addiu	t3,t3,0
    1fb4:	8faa007c 	lw	t2,124(sp)
    1fb8:	341fffff 	li	ra,0xffff
    1fbc:	c7ae0088 	lwc1	$f14,136(sp)
    1fc0:	920300bf 	lbu	v1,191(s0)
    1fc4:	240400ff 	li	a0,255
    1fc8:	10830016 	beq	a0,v1,2024 <func_80070C24+0x4a0>
    1fcc:	00601025 	move	v0,v1
    1fd0:	920e00dc 	lbu	t6,220(s0)
    1fd4:	24010002 	li	at,2
    1fd8:	51c10013 	beql	t6,at,2028 <func_80070C24+0x4a4>
    1fdc:	3c013f80 	lui	at,0x3f80
    1fe0:	920600bd 	lbu	a2,189(s0)
    1fe4:	3c013f80 	lui	at,0x3f80
    1fe8:	5066000f 	beql	v1,a2,2028 <func_80070C24+0x4a4>
    1fec:	3c013f80 	lui	at,0x3f80
    1ff0:	44811000 	mtc1	at,$f2
    1ff4:	c60400d8 	lwc1	$f4,216(s0)
    1ff8:	28610020 	slti	at,v1,32
    1ffc:	4604103e 	c.le.s	$f2,$f4
    2000:	00000000 	nop
    2004:	45020008 	bc1fl	2028 <func_80070C24+0x4a4>
    2008:	3c013f80 	lui	at,0x3f80
    200c:	50200006 	beqzl	at,2028 <func_80070C24+0x4a4>
    2010:	3c013f80 	lui	at,0x3f80
    2014:	44803000 	mtc1	zero,$f6
    2018:	a20600be 	sb	a2,190(s0)
    201c:	a20300bd 	sb	v1,189(s0)
    2020:	e60600d8 	swc1	$f6,216(s0)
    2024:	3c013f80 	lui	at,0x3f80
    2028:	44811000 	mtc1	at,$f2
    202c:	240100fe 	li	at,254
    2030:	50410664 	beql	v0,at,39c4 <func_80070C24+0x1e40>
    2034:	240f0001 	li	t7,1
    2038:	9219001e 	lbu	t9,30(s0)
    203c:	57200471 	bnezl	t9,3204 <func_80070C24+0x1680>
    2040:	920e00bc 	lbu	t6,188(s0)
    2044:	1482046e 	bne	a0,v0,3200 <func_80070C24+0x167c>
    2048:	3c0e0000 	lui	t6,0x0
    204c:	920f001f 	lbu	t7,31(s0)
    2050:	95ac141a 	lhu	t4,5146(t5)
    2054:	25ce0000 	addiu	t6,t6,0
    2058:	000fc080 	sll	t8,t7,0x2
    205c:	030fc021 	addu	t8,t8,t7
    2060:	0018c080 	sll	t8,t8,0x2
    2064:	030fc021 	addu	t8,t8,t7
    2068:	0018c040 	sll	t8,t8,0x1
    206c:	030e3021 	addu	a2,t8,t6
    2070:	00002025 	move	a0,zero
    2074:	24090006 	li	t1,6
    2078:	01802825 	move	a1,t4
    207c:	00890019 	multu	a0,t1
    2080:	24840001 	addiu	a0,a0,1
    2084:	3084ffff 	andi	a0,a0,0xffff
    2088:	00004012 	mflo	t0
    208c:	00c81821 	addu	v1,a2,t0
    2090:	94670000 	lhu	a3,0(v1)
    2094:	00a7082a 	slt	at,a1,a3
    2098:	54200455 	bnezl	at,31f0 <func_80070C24+0x166c>
    209c:	28810007 	slti	at,a0,7
    20a0:	94790002 	lhu	t9,2(v1)
    20a4:	00b9082a 	slt	at,a1,t9
    20a8:	14200003 	bnez	at,20b8 <func_80070C24+0x534>
    20ac:	afb90028 	sw	t9,40(sp)
    20b0:	57f9044f 	bnel	ra,t9,31f0 <func_80070C24+0x166c>
    20b4:	28810007 	slti	at,a0,7
    20b8:	3186ffff 	andi	a2,t4,0xffff
    20bc:	97a4002a 	lhu	a0,42(sp)
    20c0:	30e5ffff 	andi	a1,a3,0xffff
    20c4:	afa80034 	sw	t0,52(sp)
    20c8:	afaa007c 	sw	t2,124(sp)
    20cc:	0c000000 	jal	0 <func_8006F0A0>
    20d0:	e7ae0088 	swc1	$f14,136(sp)
    20d4:	920f001f 	lbu	t7,31(s0)
    20d8:	8fa80034 	lw	t0,52(sp)
    20dc:	3c090000 	lui	t1,0x0
    20e0:	000fc080 	sll	t8,t7,0x2
    20e4:	030fc021 	addu	t8,t8,t7
    20e8:	0018c080 	sll	t8,t8,0x2
    20ec:	030fc021 	addu	t8,t8,t7
    20f0:	25290000 	addiu	t1,t1,0
    20f4:	0018c040 	sll	t8,t8,0x1
    20f8:	01387021 	addu	t6,t1,t8
    20fc:	01c8c821 	addu	t9,t6,t0
    2100:	932f0004 	lbu	t7,4(t9)
    2104:	3c010000 	lui	at,0x0
    2108:	3c0d0000 	lui	t5,0x0
    210c:	31f80003 	andi	t8,t7,0x3
    2110:	a0380000 	sb	t8,0(at)
    2114:	920e001f 	lbu	t6,31(s0)
    2118:	3c010000 	lui	at,0x0
    211c:	25ad0000 	addiu	t5,t5,0
    2120:	000ec880 	sll	t9,t6,0x2
    2124:	032ec821 	addu	t9,t9,t6
    2128:	0019c880 	sll	t9,t9,0x2
    212c:	032ec821 	addu	t9,t9,t6
    2130:	0019c840 	sll	t9,t9,0x1
    2134:	01397821 	addu	t7,t1,t9
    2138:	01e8c021 	addu	t8,t7,t0
    213c:	930e0005 	lbu	t6,5(t8)
    2140:	8faa007c 	lw	t2,124(sp)
    2144:	c7ae0088 	lwc1	$f14,136(sp)
    2148:	31d90003 	andi	t9,t6,0x3
    214c:	a0390000 	sb	t9,0(at)
    2150:	3c010000 	lui	at,0x0
    2154:	e4200000 	swc1	$f0,0(at)
    2158:	920f0021 	lbu	t7,33(s0)
    215c:	46000086 	mov.s	$f2,$f0
    2160:	51e0001b 	beqzl	t7,21d0 <func_80070C24+0x64c>
    2164:	00001025 	move	v0,zero
    2168:	96180024 	lhu	t8,36(s0)
    216c:	3c014f80 	lui	at,0x4f80
    2170:	44984000 	mtc1	t8,$f8
    2174:	07010004 	bgez	t8,2188 <func_80070C24+0x604>
    2178:	46804320 	cvt.s.w	$f12,$f8
    217c:	44815000 	mtc1	at,$f10
    2180:	00000000 	nop
    2184:	460a6300 	add.s	$f12,$f12,$f10
    2188:	96020022 	lhu	v0,34(s0)
    218c:	3c014f80 	lui	at,0x4f80
    2190:	44828000 	mtc1	v0,$f16
    2194:	244effff 	addiu	t6,v0,-1
    2198:	04410004 	bgez	v0,21ac <func_80070C24+0x628>
    219c:	468084a0 	cvt.s.w	$f18,$f16
    21a0:	44812000 	mtc1	at,$f4
    21a4:	00000000 	nop
    21a8:	46049480 	add.s	$f18,$f18,$f4
    21ac:	46126181 	sub.s	$f6,$f12,$f18
    21b0:	31d9ffff 	andi	t9,t6,0xffff
    21b4:	a60e0022 	sh	t6,34(s0)
    21b8:	1f200004 	bgtz	t9,21cc <func_80070C24+0x648>
    21bc:	460c3383 	div.s	$f14,$f6,$f12
    21c0:	920f0020 	lbu	t7,32(s0)
    21c4:	a2000021 	sb	zero,33(s0)
    21c8:	a20f001f 	sb	t7,31(s0)
    21cc:	00001025 	move	v0,zero
    21d0:	9218001f 	lbu	t8,31(s0)
    21d4:	3c014f80 	lui	at,0x4f80
    21d8:	00187080 	sll	t6,t8,0x2
    21dc:	01d87021 	addu	t6,t6,t8
    21e0:	000e7080 	sll	t6,t6,0x2
    21e4:	01d87021 	addu	t6,t6,t8
    21e8:	000e7040 	sll	t6,t6,0x1
    21ec:	012ec821 	addu	t9,t1,t6
    21f0:	03281821 	addu	v1,t9,t0
    21f4:	906f0004 	lbu	t7,4(v1)
    21f8:	000fc080 	sll	t8,t7,0x2
    21fc:	030fc023 	subu	t8,t8,t7
    2200:	0018c080 	sll	t8,t8,0x2
    2204:	030fc023 	subu	t8,t8,t7
    2208:	0018c040 	sll	t8,t8,0x1
    220c:	01587021 	addu	t6,t2,t8
    2210:	01c2c821 	addu	t9,t6,v0
    2214:	93250000 	lbu	a1,0(t9)
    2218:	44854000 	mtc1	a1,$f8
    221c:	04a10004 	bgez	a1,2230 <func_80070C24+0x6ac>
    2220:	468042a0 	cvt.s.w	$f10,$f8
    2224:	44818000 	mtc1	at,$f16
    2228:	00000000 	nop
    222c:	46105280 	add.s	$f10,$f10,$f16
    2230:	906f0005 	lbu	t7,5(v1)
    2234:	3c014f00 	lui	at,0x4f00
    2238:	000fc080 	sll	t8,t7,0x2
    223c:	030fc023 	subu	t8,t8,t7
    2240:	0018c080 	sll	t8,t8,0x2
    2244:	030fc023 	subu	t8,t8,t7
    2248:	0018c040 	sll	t8,t8,0x1
    224c:	01587021 	addu	t6,t2,t8
    2250:	01c2c821 	addu	t9,t6,v0
    2254:	932f0000 	lbu	t7,0(t9)
    2258:	24190001 	li	t9,1
    225c:	01e5c023 	subu	t8,t7,a1
    2260:	44982000 	mtc1	t8,$f4
    2264:	00000000 	nop
    2268:	468024a0 	cvt.s.w	$f18,$f4
    226c:	46009182 	mul.s	$f6,$f18,$f0
    2270:	46065200 	add.s	$f8,$f10,$f6
    2274:	444ef800 	cfc1	t6,$31
    2278:	44d9f800 	ctc1	t9,$31
    227c:	00000000 	nop
    2280:	46004424 	cvt.w.s	$f16,$f8
    2284:	4459f800 	cfc1	t9,$31
    2288:	00000000 	nop
    228c:	33390078 	andi	t9,t9,0x78
    2290:	53200013 	beqzl	t9,22e0 <func_80070C24+0x75c>
    2294:	44198000 	mfc1	t9,$f16
    2298:	44818000 	mtc1	at,$f16
    229c:	24190001 	li	t9,1
    22a0:	46104401 	sub.s	$f16,$f8,$f16
    22a4:	44d9f800 	ctc1	t9,$31
    22a8:	00000000 	nop
    22ac:	46008424 	cvt.w.s	$f16,$f16
    22b0:	4459f800 	cfc1	t9,$31
    22b4:	00000000 	nop
    22b8:	33390078 	andi	t9,t9,0x78
    22bc:	17200005 	bnez	t9,22d4 <func_80070C24+0x750>
    22c0:	00000000 	nop
    22c4:	44198000 	mfc1	t9,$f16
    22c8:	3c018000 	lui	at,0x8000
    22cc:	10000007 	b	22ec <func_80070C24+0x768>
    22d0:	0321c825 	or	t9,t9,at
    22d4:	10000005 	b	22ec <func_80070C24+0x768>
    22d8:	2419ffff 	li	t9,-1
    22dc:	44198000 	mfc1	t9,$f16
    22e0:	00000000 	nop
    22e4:	0720fffb 	bltz	t9,22d4 <func_80070C24+0x750>
    22e8:	00000000 	nop
    22ec:	a3b90050 	sb	t9,80(sp)
    22f0:	920f0020 	lbu	t7,32(s0)
    22f4:	44cef800 	ctc1	t6,$31
    22f8:	3c014f80 	lui	at,0x4f80
    22fc:	000fc080 	sll	t8,t7,0x2
    2300:	030fc021 	addu	t8,t8,t7
    2304:	0018c080 	sll	t8,t8,0x2
    2308:	030fc021 	addu	t8,t8,t7
    230c:	0018c040 	sll	t8,t8,0x1
    2310:	01387021 	addu	t6,t1,t8
    2314:	01c82021 	addu	a0,t6,t0
    2318:	908f0004 	lbu	t7,4(a0)
    231c:	000fc080 	sll	t8,t7,0x2
    2320:	030fc023 	subu	t8,t8,t7
    2324:	0018c080 	sll	t8,t8,0x2
    2328:	030fc023 	subu	t8,t8,t7
    232c:	0018c040 	sll	t8,t8,0x1
    2330:	01587021 	addu	t6,t2,t8
    2334:	01c27821 	addu	t7,t6,v0
    2338:	91e60000 	lbu	a2,0(t7)
    233c:	44862000 	mtc1	a2,$f4
    2340:	04c10004 	bgez	a2,2354 <func_80070C24+0x7d0>
    2344:	468024a0 	cvt.s.w	$f18,$f4
    2348:	44815000 	mtc1	at,$f10
    234c:	00000000 	nop
    2350:	460a9480 	add.s	$f18,$f18,$f10
    2354:	90980005 	lbu	t8,5(a0)
    2358:	3c014f00 	lui	at,0x4f00
    235c:	00187080 	sll	t6,t8,0x2
    2360:	01d87023 	subu	t6,t6,t8
    2364:	000e7080 	sll	t6,t6,0x2
    2368:	01d87023 	subu	t6,t6,t8
    236c:	000e7040 	sll	t6,t6,0x1
    2370:	014e7821 	addu	t7,t2,t6
    2374:	01e2c021 	addu	t8,t7,v0
    2378:	930e0000 	lbu	t6,0(t8)
    237c:	01c67823 	subu	t7,t6,a2
    2380:	448f3000 	mtc1	t7,$f6
    2384:	240e0001 	li	t6,1
    2388:	332f00ff 	andi	t7,t9,0xff
    238c:	46803220 	cvt.s.w	$f8,$f6
    2390:	46004402 	mul.s	$f16,$f8,$f0
    2394:	46109100 	add.s	$f4,$f18,$f16
    2398:	4458f800 	cfc1	t8,$31
    239c:	44cef800 	ctc1	t6,$31
    23a0:	00000000 	nop
    23a4:	460022a4 	cvt.w.s	$f10,$f4
    23a8:	444ef800 	cfc1	t6,$31
    23ac:	00000000 	nop
    23b0:	31ce0078 	andi	t6,t6,0x78
    23b4:	51c00013 	beqzl	t6,2404 <func_80070C24+0x880>
    23b8:	440e5000 	mfc1	t6,$f10
    23bc:	44815000 	mtc1	at,$f10
    23c0:	240e0001 	li	t6,1
    23c4:	460a2281 	sub.s	$f10,$f4,$f10
    23c8:	44cef800 	ctc1	t6,$31
    23cc:	00000000 	nop
    23d0:	460052a4 	cvt.w.s	$f10,$f10
    23d4:	444ef800 	cfc1	t6,$31
    23d8:	00000000 	nop
    23dc:	31ce0078 	andi	t6,t6,0x78
    23e0:	15c00005 	bnez	t6,23f8 <func_80070C24+0x874>
    23e4:	00000000 	nop
    23e8:	440e5000 	mfc1	t6,$f10
    23ec:	3c018000 	lui	at,0x8000
    23f0:	10000007 	b	2410 <func_80070C24+0x88c>
    23f4:	01c17025 	or	t6,t6,at
    23f8:	10000005 	b	2410 <func_80070C24+0x88c>
    23fc:	240effff 	li	t6,-1
    2400:	440e5000 	mfc1	t6,$f10
    2404:	00000000 	nop
    2408:	05c0fffb 	bltz	t6,23f8 <func_80070C24+0x874>
    240c:	00000000 	nop
    2410:	44d8f800 	ctc1	t8,$31
    2414:	448f3000 	mtc1	t7,$f6
    2418:	a3ae0051 	sb	t6,81(sp)
    241c:	05e10005 	bgez	t7,2434 <func_80070C24+0x8b0>
    2420:	46803220 	cvt.s.w	$f8,$f6
    2424:	3c014f80 	lui	at,0x4f80
    2428:	44819000 	mtc1	at,$f18
    242c:	00000000 	nop
    2430:	46124200 	add.s	$f8,$f8,$f18
    2434:	31d800ff 	andi	t8,t6,0xff
    2438:	332f00ff 	andi	t7,t9,0xff
    243c:	030f7023 	subu	t6,t8,t7
    2440:	448e8000 	mtc1	t6,$f16
    2444:	24180001 	li	t8,1
    2448:	02027821 	addu	t7,s0,v0
    244c:	46808120 	cvt.s.w	$f4,$f16
    2450:	24420001 	addiu	v0,v0,1
    2454:	3042ffff 	andi	v0,v0,0xffff
    2458:	3c014f00 	lui	at,0x4f00
    245c:	460e2282 	mul.s	$f10,$f4,$f14
    2460:	460a4180 	add.s	$f6,$f8,$f10
    2464:	4459f800 	cfc1	t9,$31
    2468:	44d8f800 	ctc1	t8,$31
    246c:	00000000 	nop
    2470:	460034a4 	cvt.w.s	$f18,$f6
    2474:	4458f800 	cfc1	t8,$31
    2478:	00000000 	nop
    247c:	33180078 	andi	t8,t8,0x78
    2480:	53000013 	beqzl	t8,24d0 <func_80070C24+0x94c>
    2484:	44189000 	mfc1	t8,$f18
    2488:	44819000 	mtc1	at,$f18
    248c:	24180001 	li	t8,1
    2490:	46123481 	sub.s	$f18,$f6,$f18
    2494:	44d8f800 	ctc1	t8,$31
    2498:	00000000 	nop
    249c:	460094a4 	cvt.w.s	$f18,$f18
    24a0:	4458f800 	cfc1	t8,$31
    24a4:	00000000 	nop
    24a8:	33180078 	andi	t8,t8,0x78
    24ac:	17000005 	bnez	t8,24c4 <func_80070C24+0x940>
    24b0:	00000000 	nop
    24b4:	44189000 	mfc1	t8,$f18
    24b8:	3c018000 	lui	at,0x8000
    24bc:	10000007 	b	24dc <func_80070C24+0x958>
    24c0:	0301c025 	or	t8,t8,at
    24c4:	10000005 	b	24dc <func_80070C24+0x958>
    24c8:	2418ffff 	li	t8,-1
    24cc:	44189000 	mfc1	t8,$f18
    24d0:	00000000 	nop
    24d4:	0700fffb 	bltz	t8,24c4 <func_80070C24+0x940>
    24d8:	00000000 	nop
    24dc:	28410003 	slti	at,v0,3
    24e0:	44d9f800 	ctc1	t9,$31
    24e4:	1420ff3a 	bnez	at,21d0 <func_80070C24+0x64c>
    24e8:	a1f800c0 	sb	t8,192(t7)
    24ec:	95a6000c 	lhu	a2,12(t5)
    24f0:	24018000 	li	at,-32768
    24f4:	afa80034 	sw	t0,52(sp)
    24f8:	00c12021 	addu	a0,a2,at
    24fc:	00042400 	sll	a0,a0,0x10
    2500:	00042403 	sra	a0,a0,0x10
    2504:	afaa007c 	sw	t2,124(sp)
    2508:	e7a2008c 	swc1	$f2,140(sp)
    250c:	0c000000 	jal	0 <func_8006F0A0>
    2510:	e7ae0088 	swc1	$f14,136(sp)
    2514:	3c0142f0 	lui	at,0x42f0
    2518:	44818000 	mtc1	at,$f16
    251c:	3c0d0000 	lui	t5,0x0
    2520:	25ad0000 	addiu	t5,t5,0
    2524:	46100102 	mul.s	$f4,$f0,$f16
    2528:	24018000 	li	at,-32768
    252c:	46002207 	neg.s	$f8,$f4
    2530:	4600428d 	trunc.w.s	$f10,$f8
    2534:	44195000 	mfc1	t9,$f10
    2538:	00000000 	nop
    253c:	a21900c3 	sb	t9,195(s0)
    2540:	95a6000c 	lhu	a2,12(t5)
    2544:	00c12021 	addu	a0,a2,at
    2548:	00042400 	sll	a0,a0,0x10
    254c:	0c000000 	jal	0 <func_8006F0A0>
    2550:	00042403 	sra	a0,a0,0x10
    2554:	3c0142f0 	lui	at,0x42f0
    2558:	44813000 	mtc1	at,$f6
    255c:	3c0d0000 	lui	t5,0x0
    2560:	25ad0000 	addiu	t5,t5,0
    2564:	46060482 	mul.s	$f18,$f0,$f6
    2568:	24018000 	li	at,-32768
    256c:	4600940d 	trunc.w.s	$f16,$f18
    2570:	440f8000 	mfc1	t7,$f16
    2574:	00000000 	nop
    2578:	a20f00c4 	sb	t7,196(s0)
    257c:	95a6000c 	lhu	a2,12(t5)
    2580:	00c12021 	addu	a0,a2,at
    2584:	00042400 	sll	a0,a0,0x10
    2588:	0c000000 	jal	0 <func_8006F0A0>
    258c:	00042403 	sra	a0,a0,0x10
    2590:	3c0141a0 	lui	at,0x41a0
    2594:	44812000 	mtc1	at,$f4
    2598:	821800c3 	lb	t8,195(s0)
    259c:	8fa80034 	lw	t0,52(sp)
    25a0:	46040202 	mul.s	$f8,$f0,$f4
    25a4:	8faa007c 	lw	t2,124(sp)
    25a8:	c7a2008c 	lwc1	$f2,140(sp)
    25ac:	c7ae0088 	lwc1	$f14,136(sp)
    25b0:	00187823 	negu	t7,t8
    25b4:	820e00c4 	lb	t6,196(s0)
    25b8:	a20f00c9 	sb	t7,201(s0)
    25bc:	4600428d 	trunc.w.s	$f10,$f8
    25c0:	3c090000 	lui	t1,0x0
    25c4:	3c0b0000 	lui	t3,0x0
    25c8:	256b0000 	addiu	t3,t3,0
    25cc:	44195000 	mfc1	t9,$f10
    25d0:	25290000 	addiu	t1,t1,0
    25d4:	00001025 	move	v0,zero
    25d8:	a21900c5 	sb	t9,197(s0)
    25dc:	821800c5 	lb	t8,197(s0)
    25e0:	000ec823 	negu	t9,t6
    25e4:	a21900ca 	sb	t9,202(s0)
    25e8:	00187823 	negu	t7,t8
    25ec:	a20f00cb 	sb	t7,203(s0)
    25f0:	920e001f 	lbu	t6,31(s0)
    25f4:	3c014f80 	lui	at,0x4f80
    25f8:	02023821 	addu	a3,s0,v0
    25fc:	000ec880 	sll	t9,t6,0x2
    2600:	032ec821 	addu	t9,t9,t6
    2604:	0019c880 	sll	t9,t9,0x2
    2608:	032ec821 	addu	t9,t9,t6
    260c:	0019c840 	sll	t9,t9,0x1
    2610:	0139c021 	addu	t8,t1,t9
    2614:	03081821 	addu	v1,t8,t0
    2618:	906f0004 	lbu	t7,4(v1)
    261c:	000f7080 	sll	t6,t7,0x2
    2620:	01cf7023 	subu	t6,t6,t7
    2624:	000e7080 	sll	t6,t6,0x2
    2628:	01cf7023 	subu	t6,t6,t7
    262c:	000e7040 	sll	t6,t6,0x1
    2630:	014ec821 	addu	t9,t2,t6
    2634:	0322c021 	addu	t8,t9,v0
    2638:	93050006 	lbu	a1,6(t8)
    263c:	44853000 	mtc1	a1,$f6
    2640:	04a10004 	bgez	a1,2654 <func_80070C24+0xad0>
    2644:	468034a0 	cvt.s.w	$f18,$f6
    2648:	44818000 	mtc1	at,$f16
    264c:	00000000 	nop
    2650:	46109480 	add.s	$f18,$f18,$f16
    2654:	906f0005 	lbu	t7,5(v1)
    2658:	3c014f00 	lui	at,0x4f00
    265c:	000f7080 	sll	t6,t7,0x2
    2660:	01cf7023 	subu	t6,t6,t7
    2664:	000e7080 	sll	t6,t6,0x2
    2668:	01cf7023 	subu	t6,t6,t7
    266c:	000e7040 	sll	t6,t6,0x1
    2670:	014ec821 	addu	t9,t2,t6
    2674:	0322c021 	addu	t8,t9,v0
    2678:	930f0006 	lbu	t7,6(t8)
    267c:	24180001 	li	t8,1
    2680:	01e57023 	subu	t6,t7,a1
    2684:	448e2000 	mtc1	t6,$f4
    2688:	00000000 	nop
    268c:	46802220 	cvt.s.w	$f8,$f4
    2690:	46024282 	mul.s	$f10,$f8,$f2
    2694:	460a9180 	add.s	$f6,$f18,$f10
    2698:	4459f800 	cfc1	t9,$31
    269c:	44d8f800 	ctc1	t8,$31
    26a0:	00000000 	nop
    26a4:	46003424 	cvt.w.s	$f16,$f6
    26a8:	4458f800 	cfc1	t8,$31
    26ac:	00000000 	nop
    26b0:	33180078 	andi	t8,t8,0x78
    26b4:	53000013 	beqzl	t8,2704 <func_80070C24+0xb80>
    26b8:	44188000 	mfc1	t8,$f16
    26bc:	44818000 	mtc1	at,$f16
    26c0:	24180001 	li	t8,1
    26c4:	46103401 	sub.s	$f16,$f6,$f16
    26c8:	44d8f800 	ctc1	t8,$31
    26cc:	00000000 	nop
    26d0:	46008424 	cvt.w.s	$f16,$f16
    26d4:	4458f800 	cfc1	t8,$31
    26d8:	00000000 	nop
    26dc:	33180078 	andi	t8,t8,0x78
    26e0:	17000005 	bnez	t8,26f8 <func_80070C24+0xb74>
    26e4:	00000000 	nop
    26e8:	44188000 	mfc1	t8,$f16
    26ec:	3c018000 	lui	at,0x8000
    26f0:	10000007 	b	2710 <func_80070C24+0xb8c>
    26f4:	0301c025 	or	t8,t8,at
    26f8:	10000005 	b	2710 <func_80070C24+0xb8c>
    26fc:	2418ffff 	li	t8,-1
    2700:	44188000 	mfc1	t8,$f16
    2704:	00000000 	nop
    2708:	0700fffb 	bltz	t8,26f8 <func_80070C24+0xb74>
    270c:	00000000 	nop
    2710:	a3b80050 	sb	t8,80(sp)
    2714:	920f0020 	lbu	t7,32(s0)
    2718:	44d9f800 	ctc1	t9,$31
    271c:	3c014f80 	lui	at,0x4f80
    2720:	000f7080 	sll	t6,t7,0x2
    2724:	01cf7021 	addu	t6,t6,t7
    2728:	000e7080 	sll	t6,t6,0x2
    272c:	01cf7021 	addu	t6,t6,t7
    2730:	000e7040 	sll	t6,t6,0x1
    2734:	012ec821 	addu	t9,t1,t6
    2738:	03282021 	addu	a0,t9,t0
    273c:	908f0004 	lbu	t7,4(a0)
    2740:	000f7080 	sll	t6,t7,0x2
    2744:	01cf7023 	subu	t6,t6,t7
    2748:	000e7080 	sll	t6,t6,0x2
    274c:	01cf7023 	subu	t6,t6,t7
    2750:	000e7040 	sll	t6,t6,0x1
    2754:	014ec821 	addu	t9,t2,t6
    2758:	03227821 	addu	t7,t9,v0
    275c:	91e60006 	lbu	a2,6(t7)
    2760:	44862000 	mtc1	a2,$f4
    2764:	04c10004 	bgez	a2,2778 <func_80070C24+0xbf4>
    2768:	46802220 	cvt.s.w	$f8,$f4
    276c:	44819000 	mtc1	at,$f18
    2770:	00000000 	nop
    2774:	46124200 	add.s	$f8,$f8,$f18
    2778:	908e0005 	lbu	t6,5(a0)
    277c:	3c014f00 	lui	at,0x4f00
    2780:	000ec880 	sll	t9,t6,0x2
    2784:	032ec823 	subu	t9,t9,t6
    2788:	0019c880 	sll	t9,t9,0x2
    278c:	032ec823 	subu	t9,t9,t6
    2790:	0019c840 	sll	t9,t9,0x1
    2794:	01597821 	addu	t7,t2,t9
    2798:	01e27021 	addu	t6,t7,v0
    279c:	91d90006 	lbu	t9,6(t6)
    27a0:	03267823 	subu	t7,t9,a2
    27a4:	448f5000 	mtc1	t7,$f10
    27a8:	24190001 	li	t9,1
    27ac:	330f00ff 	andi	t7,t8,0xff
    27b0:	468051a0 	cvt.s.w	$f6,$f10
    27b4:	46023402 	mul.s	$f16,$f6,$f2
    27b8:	46104100 	add.s	$f4,$f8,$f16
    27bc:	444ef800 	cfc1	t6,$31
    27c0:	44d9f800 	ctc1	t9,$31
    27c4:	00000000 	nop
    27c8:	460024a4 	cvt.w.s	$f18,$f4
    27cc:	4459f800 	cfc1	t9,$31
    27d0:	00000000 	nop
    27d4:	33390078 	andi	t9,t9,0x78
    27d8:	53200013 	beqzl	t9,2828 <func_80070C24+0xca4>
    27dc:	44199000 	mfc1	t9,$f18
    27e0:	44819000 	mtc1	at,$f18
    27e4:	24190001 	li	t9,1
    27e8:	46122481 	sub.s	$f18,$f4,$f18
    27ec:	44d9f800 	ctc1	t9,$31
    27f0:	00000000 	nop
    27f4:	460094a4 	cvt.w.s	$f18,$f18
    27f8:	4459f800 	cfc1	t9,$31
    27fc:	00000000 	nop
    2800:	33390078 	andi	t9,t9,0x78
    2804:	17200005 	bnez	t9,281c <func_80070C24+0xc98>
    2808:	00000000 	nop
    280c:	44199000 	mfc1	t9,$f18
    2810:	3c018000 	lui	at,0x8000
    2814:	10000007 	b	2834 <func_80070C24+0xcb0>
    2818:	0321c825 	or	t9,t9,at
    281c:	10000005 	b	2834 <func_80070C24+0xcb0>
    2820:	2419ffff 	li	t9,-1
    2824:	44199000 	mfc1	t9,$f18
    2828:	00000000 	nop
    282c:	0720fffb 	bltz	t9,281c <func_80070C24+0xc98>
    2830:	00000000 	nop
    2834:	44cef800 	ctc1	t6,$31
    2838:	448f5000 	mtc1	t7,$f10
    283c:	a3b90051 	sb	t9,81(sp)
    2840:	05e10005 	bgez	t7,2858 <func_80070C24+0xcd4>
    2844:	468051a0 	cvt.s.w	$f6,$f10
    2848:	3c014f80 	lui	at,0x4f80
    284c:	44814000 	mtc1	at,$f8
    2850:	00000000 	nop
    2854:	46083180 	add.s	$f6,$f6,$f8
    2858:	332e00ff 	andi	t6,t9,0xff
    285c:	330f00ff 	andi	t7,t8,0xff
    2860:	01cfc823 	subu	t9,t6,t7
    2864:	44998000 	mtc1	t9,$f16
    2868:	240e0001 	li	t6,1
    286c:	3c014f00 	lui	at,0x4f00
    2870:	46808120 	cvt.s.w	$f4,$f16
    2874:	460e2482 	mul.s	$f18,$f4,$f14
    2878:	46123280 	add.s	$f10,$f6,$f18
    287c:	4458f800 	cfc1	t8,$31
    2880:	44cef800 	ctc1	t6,$31
    2884:	00000000 	nop
    2888:	46005224 	cvt.w.s	$f8,$f10
    288c:	444ef800 	cfc1	t6,$31
    2890:	00000000 	nop
    2894:	31ce0078 	andi	t6,t6,0x78
    2898:	51c00013 	beqzl	t6,28e8 <func_80070C24+0xd64>
    289c:	440e4000 	mfc1	t6,$f8
    28a0:	44814000 	mtc1	at,$f8
    28a4:	240e0001 	li	t6,1
    28a8:	46085201 	sub.s	$f8,$f10,$f8
    28ac:	44cef800 	ctc1	t6,$31
    28b0:	00000000 	nop
    28b4:	46004224 	cvt.w.s	$f8,$f8
    28b8:	444ef800 	cfc1	t6,$31
    28bc:	00000000 	nop
    28c0:	31ce0078 	andi	t6,t6,0x78
    28c4:	15c00005 	bnez	t6,28dc <func_80070C24+0xd58>
    28c8:	00000000 	nop
    28cc:	440e4000 	mfc1	t6,$f8
    28d0:	3c018000 	lui	at,0x8000
    28d4:	10000007 	b	28f4 <func_80070C24+0xd70>
    28d8:	01c17025 	or	t6,t6,at
    28dc:	10000005 	b	28f4 <func_80070C24+0xd70>
    28e0:	240effff 	li	t6,-1
    28e4:	440e4000 	mfc1	t6,$f8
    28e8:	00000000 	nop
    28ec:	05c0fffb 	bltz	t6,28dc <func_80070C24+0xd58>
    28f0:	00000000 	nop
    28f4:	a0ee00c6 	sb	t6,198(a3)
    28f8:	920f001f 	lbu	t7,31(s0)
    28fc:	44d8f800 	ctc1	t8,$31
    2900:	3c014f80 	lui	at,0x4f80
    2904:	000fc880 	sll	t9,t7,0x2
    2908:	032fc821 	addu	t9,t9,t7
    290c:	0019c880 	sll	t9,t9,0x2
    2910:	032fc821 	addu	t9,t9,t7
    2914:	0019c840 	sll	t9,t9,0x1
    2918:	0139c021 	addu	t8,t1,t9
    291c:	03081821 	addu	v1,t8,t0
    2920:	906e0004 	lbu	t6,4(v1)
    2924:	000e7880 	sll	t7,t6,0x2
    2928:	01ee7823 	subu	t7,t7,t6
    292c:	000f7880 	sll	t7,t7,0x2
    2930:	01ee7823 	subu	t7,t7,t6
    2934:	000f7840 	sll	t7,t7,0x1
    2938:	014fc821 	addu	t9,t2,t7
    293c:	0322c021 	addu	t8,t9,v0
    2940:	9305000c 	lbu	a1,12(t8)
    2944:	44858000 	mtc1	a1,$f16
    2948:	04a10004 	bgez	a1,295c <func_80070C24+0xdd8>
    294c:	46808120 	cvt.s.w	$f4,$f16
    2950:	44813000 	mtc1	at,$f6
    2954:	00000000 	nop
    2958:	46062100 	add.s	$f4,$f4,$f6
    295c:	906e0005 	lbu	t6,5(v1)
    2960:	3c014f00 	lui	at,0x4f00
    2964:	000e7880 	sll	t7,t6,0x2
    2968:	01ee7823 	subu	t7,t7,t6
    296c:	000f7880 	sll	t7,t7,0x2
    2970:	01ee7823 	subu	t7,t7,t6
    2974:	000f7840 	sll	t7,t7,0x1
    2978:	014fc821 	addu	t9,t2,t7
    297c:	0322c021 	addu	t8,t9,v0
    2980:	930e000c 	lbu	t6,12(t8)
    2984:	24180001 	li	t8,1
    2988:	01c57823 	subu	t7,t6,a1
    298c:	448f9000 	mtc1	t7,$f18
    2990:	00000000 	nop
    2994:	468092a0 	cvt.s.w	$f10,$f18
    2998:	46025202 	mul.s	$f8,$f10,$f2
    299c:	46082400 	add.s	$f16,$f4,$f8
    29a0:	4459f800 	cfc1	t9,$31
    29a4:	44d8f800 	ctc1	t8,$31
    29a8:	00000000 	nop
    29ac:	460081a4 	cvt.w.s	$f6,$f16
    29b0:	4458f800 	cfc1	t8,$31
    29b4:	00000000 	nop
    29b8:	33180078 	andi	t8,t8,0x78
    29bc:	53000013 	beqzl	t8,2a0c <func_80070C24+0xe88>
    29c0:	44183000 	mfc1	t8,$f6
    29c4:	44813000 	mtc1	at,$f6
    29c8:	24180001 	li	t8,1
    29cc:	46068181 	sub.s	$f6,$f16,$f6
    29d0:	44d8f800 	ctc1	t8,$31
    29d4:	00000000 	nop
    29d8:	460031a4 	cvt.w.s	$f6,$f6
    29dc:	4458f800 	cfc1	t8,$31
    29e0:	00000000 	nop
    29e4:	33180078 	andi	t8,t8,0x78
    29e8:	17000005 	bnez	t8,2a00 <func_80070C24+0xe7c>
    29ec:	00000000 	nop
    29f0:	44183000 	mfc1	t8,$f6
    29f4:	3c018000 	lui	at,0x8000
    29f8:	10000007 	b	2a18 <func_80070C24+0xe94>
    29fc:	0301c025 	or	t8,t8,at
    2a00:	10000005 	b	2a18 <func_80070C24+0xe94>
    2a04:	2418ffff 	li	t8,-1
    2a08:	44183000 	mfc1	t8,$f6
    2a0c:	00000000 	nop
    2a10:	0700fffb 	bltz	t8,2a00 <func_80070C24+0xe7c>
    2a14:	00000000 	nop
    2a18:	a3b80050 	sb	t8,80(sp)
    2a1c:	920e0020 	lbu	t6,32(s0)
    2a20:	44d9f800 	ctc1	t9,$31
    2a24:	3c014f80 	lui	at,0x4f80
    2a28:	000e7880 	sll	t7,t6,0x2
    2a2c:	01ee7821 	addu	t7,t7,t6
    2a30:	000f7880 	sll	t7,t7,0x2
    2a34:	01ee7821 	addu	t7,t7,t6
    2a38:	000f7840 	sll	t7,t7,0x1
    2a3c:	012fc821 	addu	t9,t1,t7
    2a40:	03282021 	addu	a0,t9,t0
    2a44:	908e0004 	lbu	t6,4(a0)
    2a48:	000e7880 	sll	t7,t6,0x2
    2a4c:	01ee7823 	subu	t7,t7,t6
    2a50:	000f7880 	sll	t7,t7,0x2
    2a54:	01ee7823 	subu	t7,t7,t6
    2a58:	000f7840 	sll	t7,t7,0x1
    2a5c:	014fc821 	addu	t9,t2,t7
    2a60:	03227021 	addu	t6,t9,v0
    2a64:	91c6000c 	lbu	a2,12(t6)
    2a68:	44869000 	mtc1	a2,$f18
    2a6c:	04c10004 	bgez	a2,2a80 <func_80070C24+0xefc>
    2a70:	468092a0 	cvt.s.w	$f10,$f18
    2a74:	44812000 	mtc1	at,$f4
    2a78:	00000000 	nop
    2a7c:	46045280 	add.s	$f10,$f10,$f4
    2a80:	908f0005 	lbu	t7,5(a0)
    2a84:	3c014f00 	lui	at,0x4f00
    2a88:	000fc880 	sll	t9,t7,0x2
    2a8c:	032fc823 	subu	t9,t9,t7
    2a90:	0019c880 	sll	t9,t9,0x2
    2a94:	032fc823 	subu	t9,t9,t7
    2a98:	0019c840 	sll	t9,t9,0x1
    2a9c:	01597021 	addu	t6,t2,t9
    2aa0:	01c27821 	addu	t7,t6,v0
    2aa4:	91f9000c 	lbu	t9,12(t7)
    2aa8:	24420001 	addiu	v0,v0,1
    2aac:	3042ffff 	andi	v0,v0,0xffff
    2ab0:	03267023 	subu	t6,t9,a2
    2ab4:	448e4000 	mtc1	t6,$f8
    2ab8:	24190001 	li	t9,1
    2abc:	330e00ff 	andi	t6,t8,0xff
    2ac0:	46804420 	cvt.s.w	$f16,$f8
    2ac4:	46028182 	mul.s	$f6,$f16,$f2
    2ac8:	46065480 	add.s	$f18,$f10,$f6
    2acc:	444ff800 	cfc1	t7,$31
    2ad0:	44d9f800 	ctc1	t9,$31
    2ad4:	00000000 	nop
    2ad8:	46009124 	cvt.w.s	$f4,$f18
    2adc:	4459f800 	cfc1	t9,$31
    2ae0:	00000000 	nop
    2ae4:	33390078 	andi	t9,t9,0x78
    2ae8:	53200013 	beqzl	t9,2b38 <func_80070C24+0xfb4>
    2aec:	44192000 	mfc1	t9,$f4
    2af0:	44812000 	mtc1	at,$f4
    2af4:	24190001 	li	t9,1
    2af8:	46049101 	sub.s	$f4,$f18,$f4
    2afc:	44d9f800 	ctc1	t9,$31
    2b00:	00000000 	nop
    2b04:	46002124 	cvt.w.s	$f4,$f4
    2b08:	4459f800 	cfc1	t9,$31
    2b0c:	00000000 	nop
    2b10:	33390078 	andi	t9,t9,0x78
    2b14:	17200005 	bnez	t9,2b2c <func_80070C24+0xfa8>
    2b18:	00000000 	nop
    2b1c:	44192000 	mfc1	t9,$f4
    2b20:	3c018000 	lui	at,0x8000
    2b24:	10000007 	b	2b44 <func_80070C24+0xfc0>
    2b28:	0321c825 	or	t9,t9,at
    2b2c:	10000005 	b	2b44 <func_80070C24+0xfc0>
    2b30:	2419ffff 	li	t9,-1
    2b34:	44192000 	mfc1	t9,$f4
    2b38:	00000000 	nop
    2b3c:	0720fffb 	bltz	t9,2b2c <func_80070C24+0xfa8>
    2b40:	00000000 	nop
    2b44:	44cff800 	ctc1	t7,$31
    2b48:	448e4000 	mtc1	t6,$f8
    2b4c:	a3b90051 	sb	t9,81(sp)
    2b50:	05c10005 	bgez	t6,2b68 <func_80070C24+0xfe4>
    2b54:	46804420 	cvt.s.w	$f16,$f8
    2b58:	3c014f80 	lui	at,0x4f80
    2b5c:	44815000 	mtc1	at,$f10
    2b60:	00000000 	nop
    2b64:	460a8400 	add.s	$f16,$f16,$f10
    2b68:	332f00ff 	andi	t7,t9,0xff
    2b6c:	330e00ff 	andi	t6,t8,0xff
    2b70:	01eec823 	subu	t9,t7,t6
    2b74:	44993000 	mtc1	t9,$f6
    2b78:	240f0001 	li	t7,1
    2b7c:	3c014f00 	lui	at,0x4f00
    2b80:	468034a0 	cvt.s.w	$f18,$f6
    2b84:	460e9102 	mul.s	$f4,$f18,$f14
    2b88:	46048200 	add.s	$f8,$f16,$f4
    2b8c:	4458f800 	cfc1	t8,$31
    2b90:	44cff800 	ctc1	t7,$31
    2b94:	00000000 	nop
    2b98:	460042a4 	cvt.w.s	$f10,$f8
    2b9c:	444ff800 	cfc1	t7,$31
    2ba0:	00000000 	nop
    2ba4:	31ef0078 	andi	t7,t7,0x78
    2ba8:	51e00013 	beqzl	t7,2bf8 <func_80070C24+0x1074>
    2bac:	440f5000 	mfc1	t7,$f10
    2bb0:	44815000 	mtc1	at,$f10
    2bb4:	240f0001 	li	t7,1
    2bb8:	460a4281 	sub.s	$f10,$f8,$f10
    2bbc:	44cff800 	ctc1	t7,$31
    2bc0:	00000000 	nop
    2bc4:	460052a4 	cvt.w.s	$f10,$f10
    2bc8:	444ff800 	cfc1	t7,$31
    2bcc:	00000000 	nop
    2bd0:	31ef0078 	andi	t7,t7,0x78
    2bd4:	15e00005 	bnez	t7,2bec <func_80070C24+0x1068>
    2bd8:	00000000 	nop
    2bdc:	440f5000 	mfc1	t7,$f10
    2be0:	3c018000 	lui	at,0x8000
    2be4:	10000007 	b	2c04 <func_80070C24+0x1080>
    2be8:	01e17825 	or	t7,t7,at
    2bec:	10000005 	b	2c04 <func_80070C24+0x1080>
    2bf0:	240fffff 	li	t7,-1
    2bf4:	440f5000 	mfc1	t7,$f10
    2bf8:	00000000 	nop
    2bfc:	05e0fffb 	bltz	t7,2bec <func_80070C24+0x1068>
    2c00:	00000000 	nop
    2c04:	28410003 	slti	at,v0,3
    2c08:	44d8f800 	ctc1	t8,$31
    2c0c:	1420fe78 	bnez	at,25f0 <func_80070C24+0xa6c>
    2c10:	a0ef00cc 	sb	t7,204(a3)
    2c14:	00001025 	move	v0,zero
    2c18:	920e001f 	lbu	t6,31(s0)
    2c1c:	3c014f80 	lui	at,0x4f80
    2c20:	000ec880 	sll	t9,t6,0x2
    2c24:	032ec821 	addu	t9,t9,t6
    2c28:	0019c880 	sll	t9,t9,0x2
    2c2c:	032ec821 	addu	t9,t9,t6
    2c30:	0019c840 	sll	t9,t9,0x1
    2c34:	0139c021 	addu	t8,t1,t9
    2c38:	03081821 	addu	v1,t8,t0
    2c3c:	906f0004 	lbu	t7,4(v1)
    2c40:	000f7080 	sll	t6,t7,0x2
    2c44:	01cf7023 	subu	t6,t6,t7
    2c48:	000e7080 	sll	t6,t6,0x2
    2c4c:	01cf7023 	subu	t6,t6,t7
    2c50:	000e7040 	sll	t6,t6,0x1
    2c54:	014ec821 	addu	t9,t2,t6
    2c58:	0322c021 	addu	t8,t9,v0
    2c5c:	9305000f 	lbu	a1,15(t8)
    2c60:	44853000 	mtc1	a1,$f6
    2c64:	04a10004 	bgez	a1,2c78 <func_80070C24+0x10f4>
    2c68:	468034a0 	cvt.s.w	$f18,$f6
    2c6c:	44818000 	mtc1	at,$f16
    2c70:	00000000 	nop
    2c74:	46109480 	add.s	$f18,$f18,$f16
    2c78:	906f0005 	lbu	t7,5(v1)
    2c7c:	3c014f00 	lui	at,0x4f00
    2c80:	000f7080 	sll	t6,t7,0x2
    2c84:	01cf7023 	subu	t6,t6,t7
    2c88:	000e7080 	sll	t6,t6,0x2
    2c8c:	01cf7023 	subu	t6,t6,t7
    2c90:	000e7040 	sll	t6,t6,0x1
    2c94:	014ec821 	addu	t9,t2,t6
    2c98:	0322c021 	addu	t8,t9,v0
    2c9c:	930f000f 	lbu	t7,15(t8)
    2ca0:	24180001 	li	t8,1
    2ca4:	01e57023 	subu	t6,t7,a1
    2ca8:	448e2000 	mtc1	t6,$f4
    2cac:	00000000 	nop
    2cb0:	46802220 	cvt.s.w	$f8,$f4
    2cb4:	46024282 	mul.s	$f10,$f8,$f2
    2cb8:	460a9180 	add.s	$f6,$f18,$f10
    2cbc:	4459f800 	cfc1	t9,$31
    2cc0:	44d8f800 	ctc1	t8,$31
    2cc4:	00000000 	nop
    2cc8:	46003424 	cvt.w.s	$f16,$f6
    2ccc:	4458f800 	cfc1	t8,$31
    2cd0:	00000000 	nop
    2cd4:	33180078 	andi	t8,t8,0x78
    2cd8:	53000013 	beqzl	t8,2d28 <func_80070C24+0x11a4>
    2cdc:	44188000 	mfc1	t8,$f16
    2ce0:	44818000 	mtc1	at,$f16
    2ce4:	24180001 	li	t8,1
    2ce8:	46103401 	sub.s	$f16,$f6,$f16
    2cec:	44d8f800 	ctc1	t8,$31
    2cf0:	00000000 	nop
    2cf4:	46008424 	cvt.w.s	$f16,$f16
    2cf8:	4458f800 	cfc1	t8,$31
    2cfc:	00000000 	nop
    2d00:	33180078 	andi	t8,t8,0x78
    2d04:	17000005 	bnez	t8,2d1c <func_80070C24+0x1198>
    2d08:	00000000 	nop
    2d0c:	44188000 	mfc1	t8,$f16
    2d10:	3c018000 	lui	at,0x8000
    2d14:	10000007 	b	2d34 <func_80070C24+0x11b0>
    2d18:	0301c025 	or	t8,t8,at
    2d1c:	10000005 	b	2d34 <func_80070C24+0x11b0>
    2d20:	2418ffff 	li	t8,-1
    2d24:	44188000 	mfc1	t8,$f16
    2d28:	00000000 	nop
    2d2c:	0700fffb 	bltz	t8,2d1c <func_80070C24+0x1198>
    2d30:	00000000 	nop
    2d34:	a3b80050 	sb	t8,80(sp)
    2d38:	920f0020 	lbu	t7,32(s0)
    2d3c:	44d9f800 	ctc1	t9,$31
    2d40:	3c014f80 	lui	at,0x4f80
    2d44:	000f7080 	sll	t6,t7,0x2
    2d48:	01cf7021 	addu	t6,t6,t7
    2d4c:	000e7080 	sll	t6,t6,0x2
    2d50:	01cf7021 	addu	t6,t6,t7
    2d54:	000e7040 	sll	t6,t6,0x1
    2d58:	012ec821 	addu	t9,t1,t6
    2d5c:	03282021 	addu	a0,t9,t0
    2d60:	908f0004 	lbu	t7,4(a0)
    2d64:	000f7080 	sll	t6,t7,0x2
    2d68:	01cf7023 	subu	t6,t6,t7
    2d6c:	000e7080 	sll	t6,t6,0x2
    2d70:	01cf7023 	subu	t6,t6,t7
    2d74:	000e7040 	sll	t6,t6,0x1
    2d78:	014ec821 	addu	t9,t2,t6
    2d7c:	03227821 	addu	t7,t9,v0
    2d80:	91e6000f 	lbu	a2,15(t7)
    2d84:	44862000 	mtc1	a2,$f4
    2d88:	04c10004 	bgez	a2,2d9c <func_80070C24+0x1218>
    2d8c:	46802220 	cvt.s.w	$f8,$f4
    2d90:	44819000 	mtc1	at,$f18
    2d94:	00000000 	nop
    2d98:	46124200 	add.s	$f8,$f8,$f18
    2d9c:	908e0005 	lbu	t6,5(a0)
    2da0:	3c014f00 	lui	at,0x4f00
    2da4:	000ec880 	sll	t9,t6,0x2
    2da8:	032ec823 	subu	t9,t9,t6
    2dac:	0019c880 	sll	t9,t9,0x2
    2db0:	032ec823 	subu	t9,t9,t6
    2db4:	0019c840 	sll	t9,t9,0x1
    2db8:	01597821 	addu	t7,t2,t9
    2dbc:	01e27021 	addu	t6,t7,v0
    2dc0:	91d9000f 	lbu	t9,15(t6)
    2dc4:	03267823 	subu	t7,t9,a2
    2dc8:	448f5000 	mtc1	t7,$f10
    2dcc:	24190001 	li	t9,1
    2dd0:	330f00ff 	andi	t7,t8,0xff
    2dd4:	468051a0 	cvt.s.w	$f6,$f10
    2dd8:	46023402 	mul.s	$f16,$f6,$f2
    2ddc:	46104100 	add.s	$f4,$f8,$f16
    2de0:	444ef800 	cfc1	t6,$31
    2de4:	44d9f800 	ctc1	t9,$31
    2de8:	00000000 	nop
    2dec:	460024a4 	cvt.w.s	$f18,$f4
    2df0:	4459f800 	cfc1	t9,$31
    2df4:	00000000 	nop
    2df8:	33390078 	andi	t9,t9,0x78
    2dfc:	53200013 	beqzl	t9,2e4c <func_80070C24+0x12c8>
    2e00:	44199000 	mfc1	t9,$f18
    2e04:	44819000 	mtc1	at,$f18
    2e08:	24190001 	li	t9,1
    2e0c:	46122481 	sub.s	$f18,$f4,$f18
    2e10:	44d9f800 	ctc1	t9,$31
    2e14:	00000000 	nop
    2e18:	460094a4 	cvt.w.s	$f18,$f18
    2e1c:	4459f800 	cfc1	t9,$31
    2e20:	00000000 	nop
    2e24:	33390078 	andi	t9,t9,0x78
    2e28:	17200005 	bnez	t9,2e40 <func_80070C24+0x12bc>
    2e2c:	00000000 	nop
    2e30:	44199000 	mfc1	t9,$f18
    2e34:	3c018000 	lui	at,0x8000
    2e38:	10000007 	b	2e58 <func_80070C24+0x12d4>
    2e3c:	0321c825 	or	t9,t9,at
    2e40:	10000005 	b	2e58 <func_80070C24+0x12d4>
    2e44:	2419ffff 	li	t9,-1
    2e48:	44199000 	mfc1	t9,$f18
    2e4c:	00000000 	nop
    2e50:	0720fffb 	bltz	t9,2e40 <func_80070C24+0x12bc>
    2e54:	00000000 	nop
    2e58:	44cef800 	ctc1	t6,$31
    2e5c:	448f5000 	mtc1	t7,$f10
    2e60:	a3b90051 	sb	t9,81(sp)
    2e64:	05e10005 	bgez	t7,2e7c <func_80070C24+0x12f8>
    2e68:	468051a0 	cvt.s.w	$f6,$f10
    2e6c:	3c014f80 	lui	at,0x4f80
    2e70:	44814000 	mtc1	at,$f8
    2e74:	00000000 	nop
    2e78:	46083180 	add.s	$f6,$f6,$f8
    2e7c:	332e00ff 	andi	t6,t9,0xff
    2e80:	330f00ff 	andi	t7,t8,0xff
    2e84:	01cfc823 	subu	t9,t6,t7
    2e88:	44998000 	mtc1	t9,$f16
    2e8c:	240e0001 	li	t6,1
    2e90:	02027821 	addu	t7,s0,v0
    2e94:	46808120 	cvt.s.w	$f4,$f16
    2e98:	24420001 	addiu	v0,v0,1
    2e9c:	3042ffff 	andi	v0,v0,0xffff
    2ea0:	3c014f00 	lui	at,0x4f00
    2ea4:	460e2482 	mul.s	$f18,$f4,$f14
    2ea8:	46123280 	add.s	$f10,$f6,$f18
    2eac:	4458f800 	cfc1	t8,$31
    2eb0:	44cef800 	ctc1	t6,$31
    2eb4:	00000000 	nop
    2eb8:	46005224 	cvt.w.s	$f8,$f10
    2ebc:	444ef800 	cfc1	t6,$31
    2ec0:	00000000 	nop
    2ec4:	31ce0078 	andi	t6,t6,0x78
    2ec8:	51c00013 	beqzl	t6,2f18 <func_80070C24+0x1394>
    2ecc:	440e4000 	mfc1	t6,$f8
    2ed0:	44814000 	mtc1	at,$f8
    2ed4:	240e0001 	li	t6,1
    2ed8:	46085201 	sub.s	$f8,$f10,$f8
    2edc:	44cef800 	ctc1	t6,$31
    2ee0:	00000000 	nop
    2ee4:	46004224 	cvt.w.s	$f8,$f8
    2ee8:	444ef800 	cfc1	t6,$31
    2eec:	00000000 	nop
    2ef0:	31ce0078 	andi	t6,t6,0x78
    2ef4:	15c00005 	bnez	t6,2f0c <func_80070C24+0x1388>
    2ef8:	00000000 	nop
    2efc:	440e4000 	mfc1	t6,$f8
    2f00:	3c018000 	lui	at,0x8000
    2f04:	10000007 	b	2f24 <func_80070C24+0x13a0>
    2f08:	01c17025 	or	t6,t6,at
    2f0c:	10000005 	b	2f24 <func_80070C24+0x13a0>
    2f10:	240effff 	li	t6,-1
    2f14:	440e4000 	mfc1	t6,$f8
    2f18:	00000000 	nop
    2f1c:	05c0fffb 	bltz	t6,2f0c <func_80070C24+0x1388>
    2f20:	00000000 	nop
    2f24:	28410003 	slti	at,v0,3
    2f28:	44d8f800 	ctc1	t8,$31
    2f2c:	1420ff3a 	bnez	at,2c18 <func_80070C24+0x1094>
    2f30:	a1ee00cf 	sb	t6,207(t7)
    2f34:	9219001f 	lbu	t9,31(s0)
    2f38:	24070016 	li	a3,22
    2f3c:	0019c080 	sll	t8,t9,0x2
    2f40:	0319c021 	addu	t8,t8,t9
    2f44:	0018c080 	sll	t8,t8,0x2
    2f48:	0319c021 	addu	t8,t8,t9
    2f4c:	0018c040 	sll	t8,t8,0x1
    2f50:	01387021 	addu	t6,t1,t8
    2f54:	01c81821 	addu	v1,t6,t0
    2f58:	906f0004 	lbu	t7,4(v1)
    2f5c:	906e0005 	lbu	t6,5(v1)
    2f60:	01e70019 	multu	t7,a3
    2f64:	0000c812 	mflo	t9
    2f68:	0159c021 	addu	t8,t2,t9
    2f6c:	87020012 	lh	v0,18(t8)
    2f70:	01c70019 	multu	t6,a3
    2f74:	304203ff 	andi	v0,v0,0x3ff
    2f78:	00007812 	mflo	t7
    2f7c:	014fc821 	addu	t9,t2,t7
    2f80:	87380012 	lh	t8,18(t9)
    2f84:	330e03ff 	andi	t6,t8,0x3ff
    2f88:	01c27823 	subu	t7,t6,v0
    2f8c:	448f8000 	mtc1	t7,$f16
    2f90:	00000000 	nop
    2f94:	46808120 	cvt.s.w	$f4,$f16
    2f98:	46022182 	mul.s	$f6,$f4,$f2
    2f9c:	4600348d 	trunc.w.s	$f18,$f6
    2fa0:	440f9000 	mfc1	t7,$f18
    2fa4:	00000000 	nop
    2fa8:	004fc821 	addu	t9,v0,t7
    2fac:	a7b9004c 	sh	t9,76(sp)
    2fb0:	92180020 	lbu	t8,32(s0)
    2fb4:	00187080 	sll	t6,t8,0x2
    2fb8:	01d87021 	addu	t6,t6,t8
    2fbc:	000e7080 	sll	t6,t6,0x2
    2fc0:	01d87021 	addu	t6,t6,t8
    2fc4:	000e7040 	sll	t6,t6,0x1
    2fc8:	012e7821 	addu	t7,t1,t6
    2fcc:	01e82021 	addu	a0,t7,t0
    2fd0:	90990004 	lbu	t9,4(a0)
    2fd4:	908f0005 	lbu	t7,5(a0)
    2fd8:	03270019 	multu	t9,a3
    2fdc:	0000c012 	mflo	t8
    2fe0:	01587021 	addu	t6,t2,t8
    2fe4:	85c50012 	lh	a1,18(t6)
    2fe8:	01e70019 	multu	t7,a3
    2fec:	30a503ff 	andi	a1,a1,0x3ff
    2ff0:	0000c812 	mflo	t9
    2ff4:	0159c021 	addu	t8,t2,t9
    2ff8:	870e0012 	lh	t6,18(t8)
    2ffc:	31cf03ff 	andi	t7,t6,0x3ff
    3000:	01e5c823 	subu	t9,t7,a1
    3004:	44995000 	mtc1	t9,$f10
    3008:	87af004c 	lh	t7,76(sp)
    300c:	46805220 	cvt.s.w	$f8,$f10
    3010:	46024402 	mul.s	$f16,$f8,$f2
    3014:	4600810d 	trunc.w.s	$f4,$f16
    3018:	44192000 	mfc1	t9,$f4
    301c:	00000000 	nop
    3020:	00b9c021 	addu	t8,a1,t9
    3024:	a7b8004e 	sh	t8,78(sp)
    3028:	87ae004e 	lh	t6,78(sp)
    302c:	01cfc823 	subu	t9,t6,t7
    3030:	44993000 	mtc1	t9,$f6
    3034:	9219001f 	lbu	t9,31(s0)
    3038:	468034a0 	cvt.s.w	$f18,$f6
    303c:	460e9282 	mul.s	$f10,$f18,$f14
    3040:	4600520d 	trunc.w.s	$f8,$f10
    3044:	44184000 	mfc1	t8,$f8
    3048:	00000000 	nop
    304c:	01f87021 	addu	t6,t7,t8
    3050:	00197880 	sll	t7,t9,0x2
    3054:	01f97821 	addu	t7,t7,t9
    3058:	000f7880 	sll	t7,t7,0x2
    305c:	01f97821 	addu	t7,t7,t9
    3060:	000f7840 	sll	t7,t7,0x1
    3064:	012fc021 	addu	t8,t1,t7
    3068:	a60e00d2 	sh	t6,210(s0)
    306c:	03081821 	addu	v1,t8,t0
    3070:	906e0004 	lbu	t6,4(v1)
    3074:	90780005 	lbu	t8,5(v1)
    3078:	01c70019 	multu	t6,a3
    307c:	0000c812 	mflo	t9
    3080:	01597821 	addu	t7,t2,t9
    3084:	85e20014 	lh	v0,20(t7)
    3088:	03070019 	multu	t8,a3
    308c:	00007012 	mflo	t6
    3090:	014ec821 	addu	t9,t2,t6
    3094:	872f0014 	lh	t7,20(t9)
    3098:	01e2c023 	subu	t8,t7,v0
    309c:	44988000 	mtc1	t8,$f16
    30a0:	00000000 	nop
    30a4:	46808120 	cvt.s.w	$f4,$f16
    30a8:	46022182 	mul.s	$f6,$f4,$f2
    30ac:	4600348d 	trunc.w.s	$f18,$f6
    30b0:	44189000 	mfc1	t8,$f18
    30b4:	00000000 	nop
    30b8:	00587021 	addu	t6,v0,t8
    30bc:	a7ae004c 	sh	t6,76(sp)
    30c0:	92190020 	lbu	t9,32(s0)
    30c4:	00197880 	sll	t7,t9,0x2
    30c8:	01f97821 	addu	t7,t7,t9
    30cc:	000f7880 	sll	t7,t7,0x2
    30d0:	01f97821 	addu	t7,t7,t9
    30d4:	000f7840 	sll	t7,t7,0x1
    30d8:	012fc021 	addu	t8,t1,t7
    30dc:	03082021 	addu	a0,t8,t0
    30e0:	908e0004 	lbu	t6,4(a0)
    30e4:	90980005 	lbu	t8,5(a0)
    30e8:	3c040000 	lui	a0,0x0
    30ec:	01c70019 	multu	t6,a3
    30f0:	24840000 	addiu	a0,a0,0
    30f4:	0000c812 	mflo	t9
    30f8:	01597821 	addu	t7,t2,t9
    30fc:	85e50014 	lh	a1,20(t7)
    3100:	03070019 	multu	t8,a3
    3104:	00007012 	mflo	t6
    3108:	014ec821 	addu	t9,t2,t6
    310c:	872f0014 	lh	t7,20(t9)
    3110:	01e5c023 	subu	t8,t7,a1
    3114:	44985000 	mtc1	t8,$f10
    3118:	87af004c 	lh	t7,76(sp)
    311c:	46805220 	cvt.s.w	$f8,$f10
    3120:	46024402 	mul.s	$f16,$f8,$f2
    3124:	4600810d 	trunc.w.s	$f4,$f16
    3128:	44182000 	mfc1	t8,$f4
    312c:	00000000 	nop
    3130:	00b87021 	addu	t6,a1,t8
    3134:	a7ae004e 	sh	t6,78(sp)
    3138:	87b9004e 	lh	t9,78(sp)
    313c:	032fc023 	subu	t8,t9,t7
    3140:	44983000 	mtc1	t8,$f6
    3144:	92180020 	lbu	t8,32(s0)
    3148:	468034a0 	cvt.s.w	$f18,$f6
    314c:	460e9282 	mul.s	$f10,$f18,$f14
    3150:	4600520d 	trunc.w.s	$f8,$f10
    3154:	440e4000 	mfc1	t6,$f8
    3158:	00000000 	nop
    315c:	01eec821 	addu	t9,t7,t6
    3160:	00187880 	sll	t7,t8,0x2
    3164:	01f87821 	addu	t7,t7,t8
    3168:	000f7880 	sll	t7,t7,0x2
    316c:	01f87821 	addu	t7,t7,t8
    3170:	000f7840 	sll	t7,t7,0x1
    3174:	a61900d4 	sh	t9,212(s0)
    3178:	012f7021 	addu	t6,t1,t7
    317c:	01c8c821 	addu	t9,t6,t0
    3180:	93380005 	lbu	t8,5(t9)
    3184:	920f00b4 	lbu	t7,180(s0)
    3188:	030f082a 	slt	at,t8,t7
    318c:	5420020d 	bnezl	at,39c4 <func_80070C24+0x1e40>
    3190:	240f0001 	li	t7,1
    3194:	0c000000 	jal	0 <func_8006F0A0>
    3198:	afa80034 	sw	t0,52(sp)
    319c:	920e0020 	lbu	t6,32(s0)
    31a0:	8fa80034 	lw	t0,52(sp)
    31a4:	3c090000 	lui	t1,0x0
    31a8:	000ec880 	sll	t9,t6,0x2
    31ac:	032ec821 	addu	t9,t9,t6
    31b0:	0019c880 	sll	t9,t9,0x2
    31b4:	032ec821 	addu	t9,t9,t6
    31b8:	25290000 	addiu	t1,t1,0
    31bc:	0019c840 	sll	t9,t9,0x1
    31c0:	920600b4 	lbu	a2,180(s0)
    31c4:	0139c021 	addu	t8,t1,t9
    31c8:	3c040000 	lui	a0,0x0
    31cc:	03087821 	addu	t7,t8,t0
    31d0:	91e50005 	lbu	a1,5(t7)
    31d4:	24840000 	addiu	a0,a0,0
    31d8:	0c000000 	jal	0 <func_8006F0A0>
    31dc:	24c6ffff 	addiu	a2,a2,-1
    31e0:	3c0b0000 	lui	t3,0x0
    31e4:	100001f6 	b	39c0 <func_80070C24+0x1e3c>
    31e8:	256b0000 	addiu	t3,t3,0
    31ec:	28810007 	slti	at,a0,7
    31f0:	1420fba2 	bnez	at,207c <func_80070C24+0x4f8>
    31f4:	00000000 	nop
    31f8:	100001f2 	b	39c4 <func_80070C24+0x1e40>
    31fc:	240f0001 	li	t7,1
    3200:	920e00bc 	lbu	t6,188(s0)
    3204:	00002025 	move	a0,zero
    3208:	55c0004f 	bnezl	t6,3348 <func_80070C24+0x17c4>
    320c:	920f00bd 	lbu	t7,189(s0)
    3210:	921900bd 	lbu	t9,189(s0)
    3214:	02041021 	addu	v0,s0,a0
    3218:	0019c080 	sll	t8,t9,0x2
    321c:	0319c023 	subu	t8,t8,t9
    3220:	0018c080 	sll	t8,t8,0x2
    3224:	0319c023 	subu	t8,t8,t9
    3228:	0018c040 	sll	t8,t8,0x1
    322c:	01587821 	addu	t7,t2,t8
    3230:	01e47021 	addu	t6,t7,a0
    3234:	91d90000 	lbu	t9,0(t6)
    3238:	a05900c0 	sb	t9,192(v0)
    323c:	921800bd 	lbu	t8,189(s0)
    3240:	00187880 	sll	t7,t8,0x2
    3244:	01f87823 	subu	t7,t7,t8
    3248:	000f7880 	sll	t7,t7,0x2
    324c:	01f87823 	subu	t7,t7,t8
    3250:	000f7840 	sll	t7,t7,0x1
    3254:	014f7021 	addu	t6,t2,t7
    3258:	01c4c821 	addu	t9,t6,a0
    325c:	83380003 	lb	t8,3(t9)
    3260:	a05800c3 	sb	t8,195(v0)
    3264:	920f00bd 	lbu	t7,189(s0)
    3268:	000f7080 	sll	t6,t7,0x2
    326c:	01cf7023 	subu	t6,t6,t7
    3270:	000e7080 	sll	t6,t6,0x2
    3274:	01cf7023 	subu	t6,t6,t7
    3278:	000e7040 	sll	t6,t6,0x1
    327c:	014ec821 	addu	t9,t2,t6
    3280:	0324c021 	addu	t8,t9,a0
    3284:	930f0006 	lbu	t7,6(t8)
    3288:	a04f00c6 	sb	t7,198(v0)
    328c:	920e00bd 	lbu	t6,189(s0)
    3290:	000ec880 	sll	t9,t6,0x2
    3294:	032ec823 	subu	t9,t9,t6
    3298:	0019c880 	sll	t9,t9,0x2
    329c:	032ec823 	subu	t9,t9,t6
    32a0:	0019c840 	sll	t9,t9,0x1
    32a4:	0159c021 	addu	t8,t2,t9
    32a8:	03047821 	addu	t7,t8,a0
    32ac:	81ee0009 	lb	t6,9(t7)
    32b0:	a04e00c9 	sb	t6,201(v0)
    32b4:	921900bd 	lbu	t9,189(s0)
    32b8:	0019c080 	sll	t8,t9,0x2
    32bc:	0319c023 	subu	t8,t8,t9
    32c0:	0018c080 	sll	t8,t8,0x2
    32c4:	0319c023 	subu	t8,t8,t9
    32c8:	0018c040 	sll	t8,t8,0x1
    32cc:	01587821 	addu	t7,t2,t8
    32d0:	01e47021 	addu	t6,t7,a0
    32d4:	91d9000c 	lbu	t9,12(t6)
    32d8:	a05900cc 	sb	t9,204(v0)
    32dc:	921800bd 	lbu	t8,189(s0)
    32e0:	00187880 	sll	t7,t8,0x2
    32e4:	01f87823 	subu	t7,t7,t8
    32e8:	000f7880 	sll	t7,t7,0x2
    32ec:	01f87823 	subu	t7,t7,t8
    32f0:	000f7840 	sll	t7,t7,0x1
    32f4:	014f7021 	addu	t6,t2,t7
    32f8:	01c4c821 	addu	t9,t6,a0
    32fc:	24840001 	addiu	a0,a0,1
    3300:	9338000f 	lbu	t8,15(t9)
    3304:	3084ffff 	andi	a0,a0,0xffff
    3308:	28810003 	slti	at,a0,3
    330c:	1420ffc0 	bnez	at,3210 <func_80070C24+0x168c>
    3310:	a05800cf 	sb	t8,207(v0)
    3314:	920600bd 	lbu	a2,189(s0)
    3318:	24070016 	li	a3,22
    331c:	00c70019 	multu	a2,a3
    3320:	00007812 	mflo	t7
    3324:	014f1021 	addu	v0,t2,t7
    3328:	844e0012 	lh	t6,18(v0)
    332c:	31d903ff 	andi	t9,t6,0x3ff
    3330:	a61900d2 	sh	t9,210(s0)
    3334:	84580014 	lh	t8,20(v0)
    3338:	e60200d8 	swc1	$f2,216(s0)
    333c:	10000192 	b	3988 <func_80070C24+0x1e04>
    3340:	a61800d4 	sh	t8,212(s0)
    3344:	920f00bd 	lbu	t7,189(s0)
    3348:	24070016 	li	a3,22
    334c:	920400dc 	lbu	a0,220(s0)
    3350:	01e70019 	multu	t7,a3
    3354:	c60000d8 	lwc1	$f0,216(s0)
    3358:	00007012 	mflo	t6
    335c:	014ec821 	addu	t9,t2,t6
    3360:	87220012 	lh	v0,18(t9)
    3364:	00021283 	sra	v0,v0,0xa
    3368:	00021080 	sll	v0,v0,0x2
    336c:	304200ff 	andi	v0,v0,0xff
    3370:	54400004 	bnezl	v0,3384 <func_80070C24+0x1800>
    3374:	960300d6 	lhu	v1,214(s0)
    3378:	24420001 	addiu	v0,v0,1
    337c:	304200ff 	andi	v0,v0,0xff
    3380:	960300d6 	lhu	v1,214(s0)
    3384:	13e30002 	beq	ra,v1,3390 <func_80070C24+0x180c>
    3388:	00000000 	nop
    338c:	306200ff 	andi	v0,v1,0xff
    3390:	54800010 	bnezl	a0,33d4 <func_80070C24+0x1850>
    3394:	4600103c 	c.lt.s	$f2,$f0
    3398:	44828000 	mtc1	v0,$f16
    339c:	3c014f80 	lui	at,0x4f80
    33a0:	04410004 	bgez	v0,33b4 <func_80070C24+0x1830>
    33a4:	46808120 	cvt.s.w	$f4,$f16
    33a8:	44813000 	mtc1	at,$f6
    33ac:	00000000 	nop
    33b0:	46062100 	add.s	$f4,$f4,$f6
    33b4:	3c01437f 	lui	at,0x437f
    33b8:	44819000 	mtc1	at,$f18
    33bc:	00000000 	nop
    33c0:	46122283 	div.s	$f10,$f4,$f18
    33c4:	460a0200 	add.s	$f8,$f0,$f10
    33c8:	e60800d8 	swc1	$f8,216(s0)
    33cc:	c60000d8 	lwc1	$f0,216(s0)
    33d0:	4600103c 	c.lt.s	$f2,$f0
    33d4:	00002025 	move	a0,zero
    33d8:	45000002 	bc1f	33e4 <func_80070C24+0x1860>
    33dc:	00000000 	nop
    33e0:	e60200d8 	swc1	$f2,216(s0)
    33e4:	921800be 	lbu	t8,190(s0)
    33e8:	c60400d8 	lwc1	$f4,216(s0)
    33ec:	02041021 	addu	v0,s0,a0
    33f0:	00187880 	sll	t7,t8,0x2
    33f4:	01f87823 	subu	t7,t7,t8
    33f8:	000f7880 	sll	t7,t7,0x2
    33fc:	01f87823 	subu	t7,t7,t8
    3400:	921800bd 	lbu	t8,189(s0)
    3404:	000f7840 	sll	t7,t7,0x1
    3408:	014f7021 	addu	t6,t2,t7
    340c:	00187880 	sll	t7,t8,0x2
    3410:	01f87823 	subu	t7,t7,t8
    3414:	000f7880 	sll	t7,t7,0x2
    3418:	01c4c821 	addu	t9,t6,a0
    341c:	01f87823 	subu	t7,t7,t8
    3420:	000f7840 	sll	t7,t7,0x1
    3424:	93230000 	lbu	v1,0(t9)
    3428:	014f7021 	addu	t6,t2,t7
    342c:	01c4c821 	addu	t9,t6,a0
    3430:	93380000 	lbu	t8,0(t9)
    3434:	44835000 	mtc1	v1,$f10
    3438:	3c014f80 	lui	at,0x4f80
    343c:	03037823 	subu	t7,t8,v1
    3440:	448f8000 	mtc1	t7,$f16
    3444:	46805220 	cvt.s.w	$f8,$f10
    3448:	468081a0 	cvt.s.w	$f6,$f16
    344c:	46043482 	mul.s	$f18,$f6,$f4
    3450:	04630005 	bgezl	v1,3468 <func_80070C24+0x18e4>
    3454:	46124180 	add.s	$f6,$f8,$f18
    3458:	44818000 	mtc1	at,$f16
    345c:	00000000 	nop
    3460:	46104200 	add.s	$f8,$f8,$f16
    3464:	46124180 	add.s	$f6,$f8,$f18
    3468:	24190001 	li	t9,1
    346c:	3c014f00 	lui	at,0x4f00
    3470:	444ef800 	cfc1	t6,$31
    3474:	44d9f800 	ctc1	t9,$31
    3478:	00000000 	nop
    347c:	46003124 	cvt.w.s	$f4,$f6
    3480:	4459f800 	cfc1	t9,$31
    3484:	00000000 	nop
    3488:	33390078 	andi	t9,t9,0x78
    348c:	53200013 	beqzl	t9,34dc <func_80070C24+0x1958>
    3490:	44192000 	mfc1	t9,$f4
    3494:	44812000 	mtc1	at,$f4
    3498:	24190001 	li	t9,1
    349c:	46043101 	sub.s	$f4,$f6,$f4
    34a0:	44d9f800 	ctc1	t9,$31
    34a4:	00000000 	nop
    34a8:	46002124 	cvt.w.s	$f4,$f4
    34ac:	4459f800 	cfc1	t9,$31
    34b0:	00000000 	nop
    34b4:	33390078 	andi	t9,t9,0x78
    34b8:	17200005 	bnez	t9,34d0 <func_80070C24+0x194c>
    34bc:	00000000 	nop
    34c0:	44192000 	mfc1	t9,$f4
    34c4:	3c018000 	lui	at,0x8000
    34c8:	10000007 	b	34e8 <func_80070C24+0x1964>
    34cc:	0321c825 	or	t9,t9,at
    34d0:	10000005 	b	34e8 <func_80070C24+0x1964>
    34d4:	2419ffff 	li	t9,-1
    34d8:	44192000 	mfc1	t9,$f4
    34dc:	00000000 	nop
    34e0:	0720fffb 	bltz	t9,34d0 <func_80070C24+0x194c>
    34e4:	00000000 	nop
    34e8:	a05900c0 	sb	t9,192(v0)
    34ec:	921800be 	lbu	t8,190(s0)
    34f0:	44cef800 	ctc1	t6,$31
    34f4:	c60800d8 	lwc1	$f8,216(s0)
    34f8:	00187880 	sll	t7,t8,0x2
    34fc:	01f87823 	subu	t7,t7,t8
    3500:	000f7880 	sll	t7,t7,0x2
    3504:	01f87823 	subu	t7,t7,t8
    3508:	921800bd 	lbu	t8,189(s0)
    350c:	000f7840 	sll	t7,t7,0x1
    3510:	014f7021 	addu	t6,t2,t7
    3514:	00187880 	sll	t7,t8,0x2
    3518:	01f87823 	subu	t7,t7,t8
    351c:	000f7880 	sll	t7,t7,0x2
    3520:	01c4c821 	addu	t9,t6,a0
    3524:	01f87823 	subu	t7,t7,t8
    3528:	000f7840 	sll	t7,t7,0x1
    352c:	83250003 	lb	a1,3(t9)
    3530:	014f7021 	addu	t6,t2,t7
    3534:	01c4c821 	addu	t9,t6,a0
    3538:	83380003 	lb	t8,3(t9)
    353c:	3c014f80 	lui	at,0x4f80
    3540:	03057823 	subu	t7,t8,a1
    3544:	448f5000 	mtc1	t7,$f10
    3548:	00000000 	nop
    354c:	46805420 	cvt.s.w	$f16,$f10
    3550:	46088482 	mul.s	$f18,$f16,$f8
    3554:	4600918d 	trunc.w.s	$f6,$f18
    3558:	440f3000 	mfc1	t7,$f6
    355c:	00000000 	nop
    3560:	00af7021 	addu	t6,a1,t7
    3564:	a04e00c3 	sb	t6,195(v0)
    3568:	921900be 	lbu	t9,190(s0)
    356c:	c61000d8 	lwc1	$f16,216(s0)
    3570:	0019c080 	sll	t8,t9,0x2
    3574:	0319c023 	subu	t8,t8,t9
    3578:	0018c080 	sll	t8,t8,0x2
    357c:	0319c023 	subu	t8,t8,t9
    3580:	921900bd 	lbu	t9,189(s0)
    3584:	0018c040 	sll	t8,t8,0x1
    3588:	01587821 	addu	t7,t2,t8
    358c:	0019c080 	sll	t8,t9,0x2
    3590:	0319c023 	subu	t8,t8,t9
    3594:	0018c080 	sll	t8,t8,0x2
    3598:	01e47021 	addu	t6,t7,a0
    359c:	0319c023 	subu	t8,t8,t9
    35a0:	0018c040 	sll	t8,t8,0x1
    35a4:	91c30006 	lbu	v1,6(t6)
    35a8:	01587821 	addu	t7,t2,t8
    35ac:	01e47021 	addu	t6,t7,a0
    35b0:	91d90006 	lbu	t9,6(t6)
    35b4:	44839000 	mtc1	v1,$f18
    35b8:	0323c023 	subu	t8,t9,v1
    35bc:	44982000 	mtc1	t8,$f4
    35c0:	468091a0 	cvt.s.w	$f6,$f18
    35c4:	468022a0 	cvt.s.w	$f10,$f4
    35c8:	46105202 	mul.s	$f8,$f10,$f16
    35cc:	04630005 	bgezl	v1,35e4 <func_80070C24+0x1a60>
    35d0:	46083280 	add.s	$f10,$f6,$f8
    35d4:	44812000 	mtc1	at,$f4
    35d8:	00000000 	nop
    35dc:	46043180 	add.s	$f6,$f6,$f4
    35e0:	46083280 	add.s	$f10,$f6,$f8
    35e4:	240e0001 	li	t6,1
    35e8:	3c014f00 	lui	at,0x4f00
    35ec:	444ff800 	cfc1	t7,$31
    35f0:	44cef800 	ctc1	t6,$31
    35f4:	00000000 	nop
    35f8:	46005424 	cvt.w.s	$f16,$f10
    35fc:	444ef800 	cfc1	t6,$31
    3600:	00000000 	nop
    3604:	31ce0078 	andi	t6,t6,0x78
    3608:	51c00013 	beqzl	t6,3658 <func_80070C24+0x1ad4>
    360c:	440e8000 	mfc1	t6,$f16
    3610:	44818000 	mtc1	at,$f16
    3614:	240e0001 	li	t6,1
    3618:	46105401 	sub.s	$f16,$f10,$f16
    361c:	44cef800 	ctc1	t6,$31
    3620:	00000000 	nop
    3624:	46008424 	cvt.w.s	$f16,$f16
    3628:	444ef800 	cfc1	t6,$31
    362c:	00000000 	nop
    3630:	31ce0078 	andi	t6,t6,0x78
    3634:	15c00005 	bnez	t6,364c <func_80070C24+0x1ac8>
    3638:	00000000 	nop
    363c:	440e8000 	mfc1	t6,$f16
    3640:	3c018000 	lui	at,0x8000
    3644:	10000007 	b	3664 <func_80070C24+0x1ae0>
    3648:	01c17025 	or	t6,t6,at
    364c:	10000005 	b	3664 <func_80070C24+0x1ae0>
    3650:	240effff 	li	t6,-1
    3654:	440e8000 	mfc1	t6,$f16
    3658:	00000000 	nop
    365c:	05c0fffb 	bltz	t6,364c <func_80070C24+0x1ac8>
    3660:	00000000 	nop
    3664:	a04e00c6 	sb	t6,198(v0)
    3668:	921900be 	lbu	t9,190(s0)
    366c:	44cff800 	ctc1	t7,$31
    3670:	c60600d8 	lwc1	$f6,216(s0)
    3674:	0019c080 	sll	t8,t9,0x2
    3678:	0319c023 	subu	t8,t8,t9
    367c:	0018c080 	sll	t8,t8,0x2
    3680:	0319c023 	subu	t8,t8,t9
    3684:	921900bd 	lbu	t9,189(s0)
    3688:	0018c040 	sll	t8,t8,0x1
    368c:	01587821 	addu	t7,t2,t8
    3690:	0019c080 	sll	t8,t9,0x2
    3694:	0319c023 	subu	t8,t8,t9
    3698:	0018c080 	sll	t8,t8,0x2
    369c:	01e47021 	addu	t6,t7,a0
    36a0:	0319c023 	subu	t8,t8,t9
    36a4:	0018c040 	sll	t8,t8,0x1
    36a8:	81c50009 	lb	a1,9(t6)
    36ac:	01587821 	addu	t7,t2,t8
    36b0:	01e47021 	addu	t6,t7,a0
    36b4:	81d90009 	lb	t9,9(t6)
    36b8:	3c014f80 	lui	at,0x4f80
    36bc:	0325c023 	subu	t8,t9,a1
    36c0:	44989000 	mtc1	t8,$f18
    36c4:	00000000 	nop
    36c8:	46809120 	cvt.s.w	$f4,$f18
    36cc:	46062202 	mul.s	$f8,$f4,$f6
    36d0:	4600428d 	trunc.w.s	$f10,$f8
    36d4:	44185000 	mfc1	t8,$f10
    36d8:	00000000 	nop
    36dc:	00b87821 	addu	t7,a1,t8
    36e0:	a04f00c9 	sb	t7,201(v0)
    36e4:	920e00be 	lbu	t6,190(s0)
    36e8:	c60400d8 	lwc1	$f4,216(s0)
    36ec:	000ec880 	sll	t9,t6,0x2
    36f0:	032ec823 	subu	t9,t9,t6
    36f4:	0019c880 	sll	t9,t9,0x2
    36f8:	032ec823 	subu	t9,t9,t6
    36fc:	920e00bd 	lbu	t6,189(s0)
    3700:	0019c840 	sll	t9,t9,0x1
    3704:	0159c021 	addu	t8,t2,t9
    3708:	000ec880 	sll	t9,t6,0x2
    370c:	032ec823 	subu	t9,t9,t6
    3710:	0019c880 	sll	t9,t9,0x2
    3714:	03047821 	addu	t7,t8,a0
    3718:	032ec823 	subu	t9,t9,t6
    371c:	0019c840 	sll	t9,t9,0x1
    3720:	91e3000c 	lbu	v1,12(t7)
    3724:	0159c021 	addu	t8,t2,t9
    3728:	03047821 	addu	t7,t8,a0
    372c:	91ee000c 	lbu	t6,12(t7)
    3730:	44834000 	mtc1	v1,$f8
    3734:	01c3c823 	subu	t9,t6,v1
    3738:	44998000 	mtc1	t9,$f16
    373c:	468042a0 	cvt.s.w	$f10,$f8
    3740:	468084a0 	cvt.s.w	$f18,$f16
    3744:	46049182 	mul.s	$f6,$f18,$f4
    3748:	04630005 	bgezl	v1,3760 <func_80070C24+0x1bdc>
    374c:	46065480 	add.s	$f18,$f10,$f6
    3750:	44818000 	mtc1	at,$f16
    3754:	00000000 	nop
    3758:	46105280 	add.s	$f10,$f10,$f16
    375c:	46065480 	add.s	$f18,$f10,$f6
    3760:	240f0001 	li	t7,1
    3764:	3c014f00 	lui	at,0x4f00
    3768:	4458f800 	cfc1	t8,$31
    376c:	44cff800 	ctc1	t7,$31
    3770:	00000000 	nop
    3774:	46009124 	cvt.w.s	$f4,$f18
    3778:	444ff800 	cfc1	t7,$31
    377c:	00000000 	nop
    3780:	31ef0078 	andi	t7,t7,0x78
    3784:	51e00013 	beqzl	t7,37d4 <func_80070C24+0x1c50>
    3788:	440f2000 	mfc1	t7,$f4
    378c:	44812000 	mtc1	at,$f4
    3790:	240f0001 	li	t7,1
    3794:	46049101 	sub.s	$f4,$f18,$f4
    3798:	44cff800 	ctc1	t7,$31
    379c:	00000000 	nop
    37a0:	46002124 	cvt.w.s	$f4,$f4
    37a4:	444ff800 	cfc1	t7,$31
    37a8:	00000000 	nop
    37ac:	31ef0078 	andi	t7,t7,0x78
    37b0:	15e00005 	bnez	t7,37c8 <func_80070C24+0x1c44>
    37b4:	00000000 	nop
    37b8:	440f2000 	mfc1	t7,$f4
    37bc:	3c018000 	lui	at,0x8000
    37c0:	10000007 	b	37e0 <func_80070C24+0x1c5c>
    37c4:	01e17825 	or	t7,t7,at
    37c8:	10000005 	b	37e0 <func_80070C24+0x1c5c>
    37cc:	240fffff 	li	t7,-1
    37d0:	440f2000 	mfc1	t7,$f4
    37d4:	00000000 	nop
    37d8:	05e0fffb 	bltz	t7,37c8 <func_80070C24+0x1c44>
    37dc:	00000000 	nop
    37e0:	a04f00cc 	sb	t7,204(v0)
    37e4:	920e00be 	lbu	t6,190(s0)
    37e8:	44d8f800 	ctc1	t8,$31
    37ec:	c60a00d8 	lwc1	$f10,216(s0)
    37f0:	000ec880 	sll	t9,t6,0x2
    37f4:	032ec823 	subu	t9,t9,t6
    37f8:	0019c880 	sll	t9,t9,0x2
    37fc:	032ec823 	subu	t9,t9,t6
    3800:	920e00bd 	lbu	t6,189(s0)
    3804:	0019c840 	sll	t9,t9,0x1
    3808:	0159c021 	addu	t8,t2,t9
    380c:	000ec880 	sll	t9,t6,0x2
    3810:	032ec823 	subu	t9,t9,t6
    3814:	0019c880 	sll	t9,t9,0x2
    3818:	03047821 	addu	t7,t8,a0
    381c:	032ec823 	subu	t9,t9,t6
    3820:	0019c840 	sll	t9,t9,0x1
    3824:	91e5000f 	lbu	a1,15(t7)
    3828:	0159c021 	addu	t8,t2,t9
    382c:	03047821 	addu	t7,t8,a0
    3830:	91ee000f 	lbu	t6,15(t7)
    3834:	44859000 	mtc1	a1,$f18
    3838:	24840001 	addiu	a0,a0,1
    383c:	01c5c823 	subu	t9,t6,a1
    3840:	44994000 	mtc1	t9,$f8
    3844:	46809120 	cvt.s.w	$f4,$f18
    3848:	46804420 	cvt.s.w	$f16,$f8
    384c:	460a8182 	mul.s	$f6,$f16,$f10
    3850:	04a10004 	bgez	a1,3864 <func_80070C24+0x1ce0>
    3854:	3c014f80 	lui	at,0x4f80
    3858:	44814000 	mtc1	at,$f8
    385c:	00000000 	nop
    3860:	46082100 	add.s	$f4,$f4,$f8
    3864:	46062400 	add.s	$f16,$f4,$f6
    3868:	240f0001 	li	t7,1
    386c:	3084ffff 	andi	a0,a0,0xffff
    3870:	3c014f00 	lui	at,0x4f00
    3874:	4458f800 	cfc1	t8,$31
    3878:	44cff800 	ctc1	t7,$31
    387c:	00000000 	nop
    3880:	460082a4 	cvt.w.s	$f10,$f16
    3884:	444ff800 	cfc1	t7,$31
    3888:	00000000 	nop
    388c:	31ef0078 	andi	t7,t7,0x78
    3890:	51e00013 	beqzl	t7,38e0 <func_80070C24+0x1d5c>
    3894:	440f5000 	mfc1	t7,$f10
    3898:	44815000 	mtc1	at,$f10
    389c:	240f0001 	li	t7,1
    38a0:	460a8281 	sub.s	$f10,$f16,$f10
    38a4:	44cff800 	ctc1	t7,$31
    38a8:	00000000 	nop
    38ac:	460052a4 	cvt.w.s	$f10,$f10
    38b0:	444ff800 	cfc1	t7,$31
    38b4:	00000000 	nop
    38b8:	31ef0078 	andi	t7,t7,0x78
    38bc:	15e00005 	bnez	t7,38d4 <func_80070C24+0x1d50>
    38c0:	00000000 	nop
    38c4:	440f5000 	mfc1	t7,$f10
    38c8:	3c018000 	lui	at,0x8000
    38cc:	10000007 	b	38ec <func_80070C24+0x1d68>
    38d0:	01e17825 	or	t7,t7,at
    38d4:	10000005 	b	38ec <func_80070C24+0x1d68>
    38d8:	240fffff 	li	t7,-1
    38dc:	440f5000 	mfc1	t7,$f10
    38e0:	00000000 	nop
    38e4:	05e0fffb 	bltz	t7,38d4 <func_80070C24+0x1d50>
    38e8:	00000000 	nop
    38ec:	28810003 	slti	at,a0,3
    38f0:	44d8f800 	ctc1	t8,$31
    38f4:	1420febb 	bnez	at,33e4 <func_80070C24+0x1860>
    38f8:	a04f00cf 	sb	t7,207(v0)
    38fc:	920e00be 	lbu	t6,190(s0)
    3900:	920600bd 	lbu	a2,189(s0)
    3904:	c60000d8 	lwc1	$f0,216(s0)
    3908:	01c70019 	multu	t6,a3
    390c:	0000c812 	mflo	t9
    3910:	01591821 	addu	v1,t2,t9
    3914:	84640012 	lh	a0,18(v1)
    3918:	00c70019 	multu	a2,a3
    391c:	308403ff 	andi	a0,a0,0x3ff
    3920:	0000c012 	mflo	t8
    3924:	01581021 	addu	v0,t2,t8
    3928:	844f0012 	lh	t7,18(v0)
    392c:	31ee03ff 	andi	t6,t7,0x3ff
    3930:	01c4c823 	subu	t9,t6,a0
    3934:	44999000 	mtc1	t9,$f18
    3938:	00000000 	nop
    393c:	46809220 	cvt.s.w	$f8,$f18
    3940:	46004102 	mul.s	$f4,$f8,$f0
    3944:	4600218d 	trunc.w.s	$f6,$f4
    3948:	44193000 	mfc1	t9,$f6
    394c:	00000000 	nop
    3950:	0099c021 	addu	t8,a0,t9
    3954:	a61800d2 	sh	t8,210(s0)
    3958:	844f0014 	lh	t7,20(v0)
    395c:	84650014 	lh	a1,20(v1)
    3960:	01e57023 	subu	t6,t7,a1
    3964:	448e8000 	mtc1	t6,$f16
    3968:	00000000 	nop
    396c:	468082a0 	cvt.s.w	$f10,$f16
    3970:	46005482 	mul.s	$f18,$f10,$f0
    3974:	4600920d 	trunc.w.s	$f8,$f18
    3978:	440e4000 	mfc1	t6,$f8
    397c:	00000000 	nop
    3980:	00aec821 	addu	t9,a1,t6
    3984:	a61900d4 	sh	t9,212(s0)
    3988:	921800b4 	lbu	t8,180(s0)
    398c:	3c040000 	lui	a0,0x0
    3990:	00d8082a 	slt	at,a2,t8
    3994:	5420000b 	bnezl	at,39c4 <func_80070C24+0x1e40>
    3998:	240f0001 	li	t7,1
    399c:	0c000000 	jal	0 <func_8006F0A0>
    39a0:	24840000 	addiu	a0,a0,0
    39a4:	3c040000 	lui	a0,0x0
    39a8:	24840000 	addiu	a0,a0,0
    39ac:	920500bd 	lbu	a1,189(s0)
    39b0:	0c000000 	jal	0 <func_8006F0A0>
    39b4:	920600b4 	lbu	a2,180(s0)
    39b8:	3c0b0000 	lui	t3,0x0
    39bc:	256b0000 	addiu	t3,t3,0
    39c0:	240f0001 	li	t7,1
    39c4:	a20f00bc 	sb	t7,188(s0)
    39c8:	00002025 	move	a0,zero
    39cc:	240700ff 	li	a3,255
    39d0:	00047040 	sll	t6,a0,0x1
    39d4:	020e3021 	addu	a2,s0,t6
    39d8:	02041021 	addu	v0,s0,a0
    39dc:	905800c0 	lbu	t8,192(v0)
    39e0:	84d9008c 	lh	t9,140(a2)
    39e4:	02242821 	addu	a1,s1,a0
    39e8:	03381821 	addu	v1,t9,t8
    39ec:	00031c00 	sll	v1,v1,0x10
    39f0:	00031c03 	sra	v1,v1,0x10
    39f4:	28610100 	slti	at,v1,256
    39f8:	14200003 	bnez	at,3a08 <func_80070C24+0x1e84>
    39fc:	00000000 	nop
    3a00:	10000007 	b	3a20 <func_80070C24+0x1e9c>
    3a04:	a0a70004 	sb	a3,4(a1)
    3a08:	04610004 	bgez	v1,3a1c <func_80070C24+0x1e98>
    3a0c:	02242821 	addu	a1,s1,a0
    3a10:	02242821 	addu	a1,s1,a0
    3a14:	10000002 	b	3a20 <func_80070C24+0x1e9c>
    3a18:	a0a00004 	sb	zero,4(a1)
    3a1c:	a0a30004 	sb	v1,4(a1)
    3a20:	84cf0092 	lh	t7,146(a2)
    3a24:	904e00c6 	lbu	t6,198(v0)
    3a28:	24840001 	addiu	a0,a0,1
    3a2c:	3084ffff 	andi	a0,a0,0xffff
    3a30:	01ee1821 	addu	v1,t7,t6
    3a34:	00031c00 	sll	v1,v1,0x10
    3a38:	00031c03 	sra	v1,v1,0x10
    3a3c:	28610100 	slti	at,v1,256
    3a40:	14200003 	bnez	at,3a50 <func_80070C24+0x1ecc>
    3a44:	00000000 	nop
    3a48:	10000006 	b	3a64 <func_80070C24+0x1ee0>
    3a4c:	a047002d 	sb	a3,45(v0)
    3a50:	04630004 	bgezl	v1,3a64 <func_80070C24+0x1ee0>
    3a54:	a043002d 	sb	v1,45(v0)
    3a58:	10000002 	b	3a64 <func_80070C24+0x1ee0>
    3a5c:	a040002d 	sb	zero,45(v0)
    3a60:	a043002d 	sb	v1,45(v0)
    3a64:	84d90092 	lh	t9,146(a2)
    3a68:	905800cc 	lbu	t8,204(v0)
    3a6c:	03381821 	addu	v1,t9,t8
    3a70:	00031c00 	sll	v1,v1,0x10
    3a74:	00031c03 	sra	v1,v1,0x10
    3a78:	28610100 	slti	at,v1,256
    3a7c:	14200003 	bnez	at,3a8c <func_80070C24+0x1f08>
    3a80:	00000000 	nop
    3a84:	10000006 	b	3aa0 <func_80070C24+0x1f1c>
    3a88:	a047003b 	sb	a3,59(v0)
    3a8c:	04630004 	bgezl	v1,3aa0 <func_80070C24+0x1f1c>
    3a90:	a043003b 	sb	v1,59(v0)
    3a94:	10000002 	b	3aa0 <func_80070C24+0x1f1c>
    3a98:	a040003b 	sb	zero,59(v0)
    3a9c:	a043003b 	sb	v1,59(v0)
    3aa0:	84cf0098 	lh	t7,152(a2)
    3aa4:	904e00cf 	lbu	t6,207(v0)
    3aa8:	01ee1821 	addu	v1,t7,t6
    3aac:	00031c00 	sll	v1,v1,0x10
    3ab0:	00031c03 	sra	v1,v1,0x10
    3ab4:	28610100 	slti	at,v1,256
    3ab8:	14200003 	bnez	at,3ac8 <func_80070C24+0x1f44>
    3abc:	00000000 	nop
    3ac0:	10000006 	b	3adc <func_80070C24+0x1f58>
    3ac4:	a0a70007 	sb	a3,7(a1)
    3ac8:	04630004 	bgezl	v1,3adc <func_80070C24+0x1f58>
    3acc:	a0a30007 	sb	v1,7(a1)
    3ad0:	10000002 	b	3adc <func_80070C24+0x1f58>
    3ad4:	a0a00007 	sb	zero,7(a1)
    3ad8:	a0a30007 	sb	v1,7(a1)
    3adc:	28810003 	slti	at,a0,3
    3ae0:	5420ffbc 	bnezl	at,39d4 <func_80070C24+0x1e50>
    3ae4:	00047040 	sll	t6,a0,0x1
    3ae8:	820f00c5 	lb	t7,197(s0)
    3aec:	820e00c9 	lb	t6,201(s0)
    3af0:	821900c3 	lb	t9,195(s0)
    3af4:	821800c4 	lb	t8,196(s0)
    3af8:	a20f002c 	sb	t7,44(s0)
    3afc:	a20e0038 	sb	t6,56(s0)
    3b00:	860e009e 	lh	t6,158(s0)
    3b04:	860f00d2 	lh	t7,210(s0)
    3b08:	a219002a 	sb	t9,42(s0)
    3b0c:	a218002b 	sb	t8,43(s0)
    3b10:	821900ca 	lb	t9,202(s0)
    3b14:	821800cb 	lb	t8,203(s0)
    3b18:	01ee1021 	addu	v0,t7,t6
    3b1c:	284103e5 	slti	at,v0,997
    3b20:	a2190039 	sb	t9,57(s0)
    3b24:	10200003 	beqz	at,3b34 <func_80070C24+0x1fb0>
    3b28:	a218003a 	sb	t8,58(s0)
    3b2c:	10000003 	b	3b3c <func_80070C24+0x1fb8>
    3b30:	a622000a 	sh	v0,10(s1)
    3b34:	241903e4 	li	t9,996
    3b38:	a639000a 	sh	t9,10(s1)
    3b3c:	861800d4 	lh	t8,212(s0)
    3b40:	860f00a0 	lh	t7,160(s0)
    3b44:	240e3200 	li	t6,12800
    3b48:	030f1021 	addu	v0,t8,t7
    3b4c:	28413201 	slti	at,v0,12801
    3b50:	50200004 	beqzl	at,3b64 <func_80070C24+0x1fe0>
    3b54:	a62e000c 	sh	t6,12(s1)
    3b58:	10000002 	b	3b64 <func_80070C24+0x1fe0>
    3b5c:	a622000c 	sh	v0,12(s1)
    3b60:	a62e000c 	sh	t6,12(s1)
    3b64:	8d620000 	lw	v0,0(t3)
    3b68:	84590026 	lh	t9,38(v0)
    3b6c:	5320004c 	beqzl	t9,3ca0 <func_80070C24+0x211c>
    3b70:	84580014 	lh	t8,20(v0)
    3b74:	92380004 	lbu	t8,4(s1)
    3b78:	a4580014 	sh	t8,20(v0)
    3b7c:	8d6e0000 	lw	t6,0(t3)
    3b80:	922f0005 	lbu	t7,5(s1)
    3b84:	a5cf0016 	sh	t7,22(t6)
    3b88:	8d780000 	lw	t8,0(t3)
    3b8c:	92390006 	lbu	t9,6(s1)
    3b90:	a7190018 	sh	t9,24(t8)
    3b94:	8d6e0000 	lw	t6,0(t3)
    3b98:	920f002d 	lbu	t7,45(s0)
    3b9c:	a5cf001a 	sh	t7,26(t6)
    3ba0:	8d780000 	lw	t8,0(t3)
    3ba4:	9219002e 	lbu	t9,46(s0)
    3ba8:	a719001c 	sh	t9,28(t8)
    3bac:	8d6e0000 	lw	t6,0(t3)
    3bb0:	920f002f 	lbu	t7,47(s0)
    3bb4:	a5cf001e 	sh	t7,30(t6)
    3bb8:	8d780000 	lw	t8,0(t3)
    3bbc:	9219003b 	lbu	t9,59(s0)
    3bc0:	a7190020 	sh	t9,32(t8)
    3bc4:	8d6e0000 	lw	t6,0(t3)
    3bc8:	920f003c 	lbu	t7,60(s0)
    3bcc:	a5cf0022 	sh	t7,34(t6)
    3bd0:	8d780000 	lw	t8,0(t3)
    3bd4:	9219003d 	lbu	t9,61(s0)
    3bd8:	a7190024 	sh	t9,36(t8)
    3bdc:	8d6e0000 	lw	t6,0(t3)
    3be0:	922f0007 	lbu	t7,7(s1)
    3be4:	a5cf0028 	sh	t7,40(t6)
    3be8:	8d780000 	lw	t8,0(t3)
    3bec:	92390008 	lbu	t9,8(s1)
    3bf0:	a719002a 	sh	t9,42(t8)
    3bf4:	8d6e0000 	lw	t6,0(t3)
    3bf8:	922f0009 	lbu	t7,9(s1)
    3bfc:	a5cf002c 	sh	t7,44(t6)
    3c00:	8d780000 	lw	t8,0(t3)
    3c04:	8639000c 	lh	t9,12(s1)
    3c08:	a719002e 	sh	t9,46(t8)
    3c0c:	8d6e0000 	lw	t6,0(t3)
    3c10:	862f000a 	lh	t7,10(s1)
    3c14:	a5cf0030 	sh	t7,48(t6)
    3c18:	8d780000 	lw	t8,0(t3)
    3c1c:	8219002a 	lb	t9,42(s0)
    3c20:	a7190b5a 	sh	t9,2906(t8)
    3c24:	8d6e0000 	lw	t6,0(t3)
    3c28:	820f002b 	lb	t7,43(s0)
    3c2c:	a5cf0b5c 	sh	t7,2908(t6)
    3c30:	8d780000 	lw	t8,0(t3)
    3c34:	8219002c 	lb	t9,44(s0)
    3c38:	a7190b5e 	sh	t9,2910(t8)
    3c3c:	8d6e0000 	lw	t6,0(t3)
    3c40:	820f0038 	lb	t7,56(s0)
    3c44:	a5cf0b60 	sh	t7,2912(t6)
    3c48:	8d780000 	lw	t8,0(t3)
    3c4c:	82190039 	lb	t9,57(s0)
    3c50:	a7190b62 	sh	t9,2914(t8)
    3c54:	8d6e0000 	lw	t6,0(t3)
    3c58:	820f003a 	lb	t7,58(s0)
    3c5c:	a5cf0b64 	sh	t7,2916(t6)
    3c60:	8d780000 	lw	t8,0(t3)
    3c64:	861900a8 	lh	t9,168(s0)
    3c68:	a7190874 	sh	t9,2164(t8)
    3c6c:	8d6e0000 	lw	t6,0(t3)
    3c70:	860f00aa 	lh	t7,170(s0)
    3c74:	a5cf0876 	sh	t7,2166(t6)
    3c78:	8d780000 	lw	t8,0(t3)
    3c7c:	861900ac 	lh	t9,172(s0)
    3c80:	a7190878 	sh	t9,2168(t8)
    3c84:	c60400b0 	lwc1	$f4,176(s0)
    3c88:	8d790000 	lw	t9,0(t3)
    3c8c:	4600218d 	trunc.w.s	$f6,$f4
    3c90:	440e3000 	mfc1	t6,$f6
    3c94:	100000ce 	b	3fd0 <func_80070C24+0x244c>
    3c98:	a72e087a 	sh	t6,2170(t9)
    3c9c:	84580014 	lh	t8,20(v0)
    3ca0:	a2380004 	sb	t8,4(s1)
    3ca4:	8d6f0000 	lw	t7,0(t3)
    3ca8:	85ee0016 	lh	t6,22(t7)
    3cac:	a22e0005 	sb	t6,5(s1)
    3cb0:	8d790000 	lw	t9,0(t3)
    3cb4:	87380018 	lh	t8,24(t9)
    3cb8:	a2380006 	sb	t8,6(s1)
    3cbc:	8d6f0000 	lw	t7,0(t3)
    3cc0:	85ee001a 	lh	t6,26(t7)
    3cc4:	a20e002d 	sb	t6,45(s0)
    3cc8:	8d790000 	lw	t9,0(t3)
    3ccc:	8738001c 	lh	t8,28(t9)
    3cd0:	a218002e 	sb	t8,46(s0)
    3cd4:	8d6f0000 	lw	t7,0(t3)
    3cd8:	85ee001e 	lh	t6,30(t7)
    3cdc:	a20e002f 	sb	t6,47(s0)
    3ce0:	8d790000 	lw	t9,0(t3)
    3ce4:	87380020 	lh	t8,32(t9)
    3ce8:	a218003b 	sb	t8,59(s0)
    3cec:	8d6f0000 	lw	t7,0(t3)
    3cf0:	85ee0022 	lh	t6,34(t7)
    3cf4:	a20e003c 	sb	t6,60(s0)
    3cf8:	8d790000 	lw	t9,0(t3)
    3cfc:	87380024 	lh	t8,36(t9)
    3d00:	a218003d 	sb	t8,61(s0)
    3d04:	8d6f0000 	lw	t7,0(t3)
    3d08:	85ee0028 	lh	t6,40(t7)
    3d0c:	a22e0007 	sb	t6,7(s1)
    3d10:	8d790000 	lw	t9,0(t3)
    3d14:	8738002a 	lh	t8,42(t9)
    3d18:	a2380008 	sb	t8,8(s1)
    3d1c:	8d6f0000 	lw	t7,0(t3)
    3d20:	85ee002c 	lh	t6,44(t7)
    3d24:	a22e0009 	sb	t6,9(s1)
    3d28:	8d790000 	lw	t9,0(t3)
    3d2c:	87380030 	lh	t8,48(t9)
    3d30:	a638000a 	sh	t8,10(s1)
    3d34:	8d6f0000 	lw	t7,0(t3)
    3d38:	85ee002e 	lh	t6,46(t7)
    3d3c:	a62e000c 	sh	t6,12(s1)
    3d40:	8d620000 	lw	v0,0(t3)
    3d44:	84590b70 	lh	t9,2928(v0)
    3d48:	53200082 	beqzl	t9,3f54 <func_80070C24+0x23d0>
    3d4c:	84590b5a 	lh	t9,2906(v0)
    3d50:	0c000000 	jal	0 <func_8006F0A0>
    3d54:	84440b68 	lh	a0,2920(v0)
    3d58:	3c0b0000 	lui	t3,0x0
    3d5c:	256b0000 	addiu	t3,t3,0
    3d60:	8d780000 	lw	t8,0(t3)
    3d64:	e7a00044 	swc1	$f0,68(sp)
    3d68:	0c000000 	jal	0 <func_8006F0A0>
    3d6c:	87040b6a 	lh	a0,2922(t8)
    3d70:	c7b00044 	lwc1	$f16,68(sp)
    3d74:	3c0142f0 	lui	at,0x42f0
    3d78:	44819000 	mtc1	at,$f18
    3d7c:	46100282 	mul.s	$f10,$f0,$f16
    3d80:	3c0b0000 	lui	t3,0x0
    3d84:	256b0000 	addiu	t3,t3,0
    3d88:	8d790000 	lw	t9,0(t3)
    3d8c:	46125202 	mul.s	$f8,$f10,$f18
    3d90:	4600410d 	trunc.w.s	$f4,$f8
    3d94:	440e2000 	mfc1	t6,$f4
    3d98:	00000000 	nop
    3d9c:	a72e0b5a 	sh	t6,2906(t9)
    3da0:	8d780000 	lw	t8,0(t3)
    3da4:	870f0b5a 	lh	t7,2906(t8)
    3da8:	a20f002a 	sb	t7,42(s0)
    3dac:	8d6e0000 	lw	t6,0(t3)
    3db0:	0c000000 	jal	0 <func_8006F0A0>
    3db4:	85c40b68 	lh	a0,2920(t6)
    3db8:	3c0b0000 	lui	t3,0x0
    3dbc:	256b0000 	addiu	t3,t3,0
    3dc0:	8d790000 	lw	t9,0(t3)
    3dc4:	e7a00044 	swc1	$f0,68(sp)
    3dc8:	0c000000 	jal	0 <func_8006F0A0>
    3dcc:	87240b6a 	lh	a0,2922(t9)
    3dd0:	c7a60044 	lwc1	$f6,68(sp)
    3dd4:	3c0142f0 	lui	at,0x42f0
    3dd8:	44815000 	mtc1	at,$f10
    3ddc:	46060402 	mul.s	$f16,$f0,$f6
    3de0:	3c0b0000 	lui	t3,0x0
    3de4:	256b0000 	addiu	t3,t3,0
    3de8:	8d6e0000 	lw	t6,0(t3)
    3dec:	460a8482 	mul.s	$f18,$f16,$f10
    3df0:	4600920d 	trunc.w.s	$f8,$f18
    3df4:	440f4000 	mfc1	t7,$f8
    3df8:	00000000 	nop
    3dfc:	a5cf0b5c 	sh	t7,2908(t6)
    3e00:	8d790000 	lw	t9,0(t3)
    3e04:	87380b5c 	lh	t8,2908(t9)
    3e08:	a218002b 	sb	t8,43(s0)
    3e0c:	8d6f0000 	lw	t7,0(t3)
    3e10:	0c000000 	jal	0 <func_8006F0A0>
    3e14:	85e40b6a 	lh	a0,2922(t7)
    3e18:	3c0142f0 	lui	at,0x42f0
    3e1c:	44812000 	mtc1	at,$f4
    3e20:	3c0b0000 	lui	t3,0x0
    3e24:	256b0000 	addiu	t3,t3,0
    3e28:	46040182 	mul.s	$f6,$f0,$f4
    3e2c:	8d780000 	lw	t8,0(t3)
    3e30:	4600340d 	trunc.w.s	$f16,$f6
    3e34:	44198000 	mfc1	t9,$f16
    3e38:	00000000 	nop
    3e3c:	a7190b5e 	sh	t9,2910(t8)
    3e40:	8d6f0000 	lw	t7,0(t3)
    3e44:	85ee0b5e 	lh	t6,2910(t7)
    3e48:	a20e002c 	sb	t6,44(s0)
    3e4c:	8d790000 	lw	t9,0(t3)
    3e50:	0c000000 	jal	0 <func_8006F0A0>
    3e54:	87240b6c 	lh	a0,2924(t9)
    3e58:	3c0b0000 	lui	t3,0x0
    3e5c:	256b0000 	addiu	t3,t3,0
    3e60:	8d780000 	lw	t8,0(t3)
    3e64:	e7a00044 	swc1	$f0,68(sp)
    3e68:	0c000000 	jal	0 <func_8006F0A0>
    3e6c:	87040b6e 	lh	a0,2926(t8)
    3e70:	c7aa0044 	lwc1	$f10,68(sp)
    3e74:	3c0142f0 	lui	at,0x42f0
    3e78:	44814000 	mtc1	at,$f8
    3e7c:	460a0482 	mul.s	$f18,$f0,$f10
    3e80:	3c0b0000 	lui	t3,0x0
    3e84:	256b0000 	addiu	t3,t3,0
    3e88:	8d790000 	lw	t9,0(t3)
    3e8c:	46089102 	mul.s	$f4,$f18,$f8
    3e90:	4600218d 	trunc.w.s	$f6,$f4
    3e94:	440e3000 	mfc1	t6,$f6
    3e98:	00000000 	nop
    3e9c:	a72e0b60 	sh	t6,2912(t9)
    3ea0:	8d780000 	lw	t8,0(t3)
    3ea4:	870f0b60 	lh	t7,2912(t8)
    3ea8:	a20f0038 	sb	t7,56(s0)
    3eac:	8d6e0000 	lw	t6,0(t3)
    3eb0:	0c000000 	jal	0 <func_8006F0A0>
    3eb4:	85c40b6c 	lh	a0,2924(t6)
    3eb8:	3c0b0000 	lui	t3,0x0
    3ebc:	256b0000 	addiu	t3,t3,0
    3ec0:	8d790000 	lw	t9,0(t3)
    3ec4:	e7a00044 	swc1	$f0,68(sp)
    3ec8:	0c000000 	jal	0 <func_8006F0A0>
    3ecc:	87240b6e 	lh	a0,2926(t9)
    3ed0:	c7b00044 	lwc1	$f16,68(sp)
    3ed4:	3c0142f0 	lui	at,0x42f0
    3ed8:	44819000 	mtc1	at,$f18
    3edc:	46100282 	mul.s	$f10,$f0,$f16
    3ee0:	3c0b0000 	lui	t3,0x0
    3ee4:	256b0000 	addiu	t3,t3,0
    3ee8:	8d6e0000 	lw	t6,0(t3)
    3eec:	46125202 	mul.s	$f8,$f10,$f18
    3ef0:	4600410d 	trunc.w.s	$f4,$f8
    3ef4:	440f2000 	mfc1	t7,$f4
    3ef8:	00000000 	nop
    3efc:	a5cf0b62 	sh	t7,2914(t6)
    3f00:	8d790000 	lw	t9,0(t3)
    3f04:	87380b62 	lh	t8,2914(t9)
    3f08:	a2180039 	sb	t8,57(s0)
    3f0c:	8d6f0000 	lw	t7,0(t3)
    3f10:	0c000000 	jal	0 <func_8006F0A0>
    3f14:	85e40b6e 	lh	a0,2926(t7)
    3f18:	3c0142f0 	lui	at,0x42f0
    3f1c:	44813000 	mtc1	at,$f6
    3f20:	3c0b0000 	lui	t3,0x0
    3f24:	256b0000 	addiu	t3,t3,0
    3f28:	46060402 	mul.s	$f16,$f0,$f6
    3f2c:	8d780000 	lw	t8,0(t3)
    3f30:	4600828d 	trunc.w.s	$f10,$f16
    3f34:	44195000 	mfc1	t9,$f10
    3f38:	00000000 	nop
    3f3c:	a7190b64 	sh	t9,2916(t8)
    3f40:	8d6f0000 	lw	t7,0(t3)
    3f44:	85ee0b64 	lh	t6,2916(t7)
    3f48:	10000012 	b	3f94 <func_80070C24+0x2410>
    3f4c:	a20e003a 	sb	t6,58(s0)
    3f50:	84590b5a 	lh	t9,2906(v0)
    3f54:	a219002a 	sb	t9,42(s0)
    3f58:	8d780000 	lw	t8,0(t3)
    3f5c:	870f0b5c 	lh	t7,2908(t8)
    3f60:	a20f002b 	sb	t7,43(s0)
    3f64:	8d6e0000 	lw	t6,0(t3)
    3f68:	85d90b5e 	lh	t9,2910(t6)
    3f6c:	a219002c 	sb	t9,44(s0)
    3f70:	8d780000 	lw	t8,0(t3)
    3f74:	870f0b60 	lh	t7,2912(t8)
    3f78:	a20f0038 	sb	t7,56(s0)
    3f7c:	8d6e0000 	lw	t6,0(t3)
    3f80:	85d90b62 	lh	t9,2914(t6)
    3f84:	a2190039 	sb	t9,57(s0)
    3f88:	8d780000 	lw	t8,0(t3)
    3f8c:	870f0b64 	lh	t7,2916(t8)
    3f90:	a20f003a 	sb	t7,58(s0)
    3f94:	8d6e0000 	lw	t6,0(t3)
    3f98:	85d90874 	lh	t9,2164(t6)
    3f9c:	a61900a8 	sh	t9,168(s0)
    3fa0:	8d780000 	lw	t8,0(t3)
    3fa4:	870f0876 	lh	t7,2166(t8)
    3fa8:	a60f00aa 	sh	t7,170(s0)
    3fac:	8d6e0000 	lw	t6,0(t3)
    3fb0:	85d90878 	lh	t9,2168(t6)
    3fb4:	a61900ac 	sh	t9,172(s0)
    3fb8:	8d780000 	lw	t8,0(t3)
    3fbc:	870f087a 	lh	t7,2170(t8)
    3fc0:	448f9000 	mtc1	t7,$f18
    3fc4:	00000000 	nop
    3fc8:	46809220 	cvt.s.w	$f8,$f18
    3fcc:	e60800b0 	swc1	$f8,176(s0)
    3fd0:	820e002a 	lb	t6,42(s0)
    3fd4:	55c0000a 	bnezl	t6,4000 <func_80070C24+0x247c>
    3fd8:	820e0038 	lb	t6,56(s0)
    3fdc:	8219002b 	lb	t9,43(s0)
    3fe0:	57200007 	bnezl	t9,4000 <func_80070C24+0x247c>
    3fe4:	820e0038 	lb	t6,56(s0)
    3fe8:	8218002c 	lb	t8,44(s0)
    3fec:	240f0001 	li	t7,1
    3ff0:	57000003 	bnezl	t8,4000 <func_80070C24+0x247c>
    3ff4:	820e0038 	lb	t6,56(s0)
    3ff8:	a20f002a 	sb	t7,42(s0)
    3ffc:	820e0038 	lb	t6,56(s0)
    4000:	55c0000a 	bnezl	t6,402c <func_80070C24+0x24a8>
    4004:	8fbf001c 	lw	ra,28(sp)
    4008:	82190039 	lb	t9,57(s0)
    400c:	57200007 	bnezl	t9,402c <func_80070C24+0x24a8>
    4010:	8fbf001c 	lw	ra,28(sp)
    4014:	8218003a 	lb	t8,58(s0)
    4018:	240f0001 	li	t7,1
    401c:	57000003 	bnezl	t8,402c <func_80070C24+0x24a8>
    4020:	8fbf001c 	lw	ra,28(sp)
    4024:	a20f0038 	sb	t7,56(s0)
    4028:	8fbf001c 	lw	ra,28(sp)
    402c:	8fb00014 	lw	s0,20(sp)
    4030:	8fb10018 	lw	s1,24(sp)
    4034:	03e00008 	jr	ra
    4038:	27bd0090 	addiu	sp,sp,144

0000403c <func_800730DC>:
    403c:	27bdff78 	addiu	sp,sp,-136
    4040:	afbf0024 	sw	ra,36(sp)
    4044:	afb10020 	sw	s1,32(sp)
    4048:	afb0001c 	sw	s0,28(sp)
    404c:	8c850000 	lw	a1,0(a0)
    4050:	00808825 	move	s1,a0
    4054:	3c060000 	lui	a2,0x0
    4058:	24c60000 	addiu	a2,a2,0
    405c:	27a40060 	addiu	a0,sp,96
    4060:	240708da 	li	a3,2266
    4064:	0c000000 	jal	0 <func_8006F0A0>
    4068:	00a08025 	move	s0,a1
    406c:	922e1d6c 	lbu	t6,7532(s1)
    4070:	3c020000 	lui	v0,0x0
    4074:	11c0004c 	beqz	t6,41a8 <func_800730DC+0x16c>
    4078:	00000000 	nop
    407c:	3c020000 	lui	v0,0x0
    4080:	9442000c 	lhu	v0,12(v0)
    4084:	24018000 	li	at,-32768
    4088:	00412021 	addu	a0,v0,at
    408c:	00042400 	sll	a0,a0,0x10
    4090:	0c000000 	jal	0 <func_8006F0A0>
    4094:	00042403 	sra	a0,a0,0x10
    4098:	3c010000 	lui	at,0x0
    409c:	c4220000 	lwc1	$f2,0(at)
    40a0:	3c010001 	lui	at,0x1
    40a4:	34210a28 	ori	at,at,0xa28
    40a8:	02212021 	addu	a0,s1,at
    40ac:	3c0142f0 	lui	at,0x42f0
    40b0:	44812000 	mtc1	at,$f4
    40b4:	3c0141c8 	lui	at,0x41c8
    40b8:	44815000 	mtc1	at,$f10
    40bc:	46040182 	mul.s	$f6,$f0,$f4
    40c0:	44071000 	mfc1	a3,$f2
    40c4:	3c063f80 	lui	a2,0x3f80
    40c8:	e7a20010 	swc1	$f2,16(sp)
    40cc:	46003207 	neg.s	$f8,$f6
    40d0:	460a4102 	mul.s	$f4,$f8,$f10
    40d4:	44052000 	mfc1	a1,$f4
    40d8:	0c000000 	jal	0 <func_8006F0A0>
    40dc:	00000000 	nop
    40e0:	3c020000 	lui	v0,0x0
    40e4:	9442000c 	lhu	v0,12(v0)
    40e8:	24018000 	li	at,-32768
    40ec:	00412021 	addu	a0,v0,at
    40f0:	00042400 	sll	a0,a0,0x10
    40f4:	0c000000 	jal	0 <func_8006F0A0>
    40f8:	00042403 	sra	a0,a0,0x10
    40fc:	3c010000 	lui	at,0x0
    4100:	c4220000 	lwc1	$f2,0(at)
    4104:	3c010001 	lui	at,0x1
    4108:	34210a2c 	ori	at,at,0xa2c
    410c:	02212021 	addu	a0,s1,at
    4110:	3c0142f0 	lui	at,0x42f0
    4114:	44813000 	mtc1	at,$f6
    4118:	3c0141c8 	lui	at,0x41c8
    411c:	44815000 	mtc1	at,$f10
    4120:	46060202 	mul.s	$f8,$f0,$f6
    4124:	44071000 	mfc1	a3,$f2
    4128:	afa40030 	sw	a0,48(sp)
    412c:	3c063f80 	lui	a2,0x3f80
    4130:	e7a20010 	swc1	$f2,16(sp)
    4134:	460a4102 	mul.s	$f4,$f8,$f10
    4138:	44052000 	mfc1	a1,$f4
    413c:	0c000000 	jal	0 <func_8006F0A0>
    4140:	00000000 	nop
    4144:	3c020000 	lui	v0,0x0
    4148:	9442000c 	lhu	v0,12(v0)
    414c:	24018000 	li	at,-32768
    4150:	00412021 	addu	a0,v0,at
    4154:	00042400 	sll	a0,a0,0x10
    4158:	0c000000 	jal	0 <func_8006F0A0>
    415c:	00042403 	sra	a0,a0,0x10
    4160:	3c0141a0 	lui	at,0x41a0
    4164:	44813000 	mtc1	at,$f6
    4168:	3c0141c8 	lui	at,0x41c8
    416c:	44815000 	mtc1	at,$f10
    4170:	46060202 	mul.s	$f8,$f0,$f6
    4174:	3c010000 	lui	at,0x0
    4178:	c4260000 	lwc1	$f6,0(at)
    417c:	3c073f4c 	lui	a3,0x3f4c
    4180:	34e7cccd 	ori	a3,a3,0xcccd
    4184:	8fa40030 	lw	a0,48(sp)
    4188:	3c063f80 	lui	a2,0x3f80
    418c:	460a4102 	mul.s	$f4,$f8,$f10
    4190:	e7a60010 	swc1	$f6,16(sp)
    4194:	44052000 	mfc1	a1,$f4
    4198:	0c000000 	jal	0 <func_8006F0A0>
    419c:	00000000 	nop
    41a0:	10000031 	b	4268 <func_800730DC+0x22c>
    41a4:	00000000 	nop
    41a8:	9442000c 	lhu	v0,12(v0)
    41ac:	24018000 	li	at,-32768
    41b0:	00412021 	addu	a0,v0,at
    41b4:	00042400 	sll	a0,a0,0x10
    41b8:	0c000000 	jal	0 <func_8006F0A0>
    41bc:	00042403 	sra	a0,a0,0x10
    41c0:	3c0142f0 	lui	at,0x42f0
    41c4:	44814000 	mtc1	at,$f8
    41c8:	3c0141c8 	lui	at,0x41c8
    41cc:	44813000 	mtc1	at,$f6
    41d0:	46080282 	mul.s	$f10,$f0,$f8
    41d4:	3c010001 	lui	at,0x1
    41d8:	00310821 	addu	at,at,s1
    41dc:	3c020000 	lui	v0,0x0
    41e0:	46005107 	neg.s	$f4,$f10
    41e4:	46062202 	mul.s	$f8,$f4,$f6
    41e8:	e4280a28 	swc1	$f8,2600(at)
    41ec:	9442000c 	lhu	v0,12(v0)
    41f0:	24018000 	li	at,-32768
    41f4:	00412021 	addu	a0,v0,at
    41f8:	00042400 	sll	a0,a0,0x10
    41fc:	0c000000 	jal	0 <func_8006F0A0>
    4200:	00042403 	sra	a0,a0,0x10
    4204:	3c0142f0 	lui	at,0x42f0
    4208:	44815000 	mtc1	at,$f10
    420c:	3c0141c8 	lui	at,0x41c8
    4210:	44813000 	mtc1	at,$f6
    4214:	460a0102 	mul.s	$f4,$f0,$f10
    4218:	3c010001 	lui	at,0x1
    421c:	00310821 	addu	at,at,s1
    4220:	3c020000 	lui	v0,0x0
    4224:	46062202 	mul.s	$f8,$f4,$f6
    4228:	e4280a2c 	swc1	$f8,2604(at)
    422c:	9442000c 	lhu	v0,12(v0)
    4230:	24018000 	li	at,-32768
    4234:	00412021 	addu	a0,v0,at
    4238:	00042400 	sll	a0,a0,0x10
    423c:	0c000000 	jal	0 <func_8006F0A0>
    4240:	00042403 	sra	a0,a0,0x10
    4244:	3c0141a0 	lui	at,0x41a0
    4248:	44815000 	mtc1	at,$f10
    424c:	3c0141c8 	lui	at,0x41c8
    4250:	44813000 	mtc1	at,$f6
    4254:	460a0102 	mul.s	$f4,$f0,$f10
    4258:	3c010001 	lui	at,0x1
    425c:	00310821 	addu	at,at,s1
    4260:	46062202 	mul.s	$f8,$f4,$f6
    4264:	e4280a30 	swc1	$f8,2608(at)
    4268:	3c020000 	lui	v0,0x0
    426c:	24420000 	addiu	v0,v0,0
    4270:	8c4f0000 	lw	t7,0(v0)
    4274:	240100cd 	li	at,205
    4278:	55e10006 	bnel	t7,at,4294 <func_800730DC+0x258>
    427c:	c63200e8 	lwc1	$f18,232(s1)
    4280:	8c581360 	lw	t8,4960(v0)
    4284:	24010005 	li	at,5
    4288:	1301018c 	beq	t8,at,48bc <func_800730DC+0x880>
    428c:	00000000 	nop
    4290:	c63200e8 	lwc1	$f18,232(s1)
    4294:	c63000e0 	lwc1	$f16,224(s1)
    4298:	c62a00e4 	lwc1	$f10,228(s1)
    429c:	3c010001 	lui	at,0x1
    42a0:	02214021 	addu	t0,s1,at
    42a4:	c5080a30 	lwc1	$f8,2608(t0)
    42a8:	c5060a28 	lwc1	$f6,2600(t0)
    42ac:	c5040a2c 	lwc1	$f4,2604(t0)
    42b0:	46089200 	add.s	$f8,$f18,$f8
    42b4:	00003825 	move	a3,zero
    42b8:	afa80030 	sw	t0,48(sp)
    42bc:	46068300 	add.s	$f12,$f16,$f6
    42c0:	44064000 	mfc1	a2,$f8
    42c4:	0c000000 	jal	0 <func_8006F0A0>
    42c8:	46045380 	add.s	$f14,$f10,$f4
    42cc:	8fa80030 	lw	t0,48(sp)
    42d0:	3c01437f 	lui	at,0x437f
    42d4:	44818000 	mtc1	at,$f16
    42d8:	3c0141c8 	lui	at,0x41c8
    42dc:	44815000 	mtc1	at,$f10
    42e0:	c5080a2c 	lwc1	$f8,2604(t0)
    42e4:	3c0142a0 	lui	at,0x42a0
    42e8:	44809000 	mtc1	zero,$f18
    42ec:	460a4103 	div.s	$f4,$f8,$f10
    42f0:	44814000 	mtc1	at,$f8
    42f4:	3c013f80 	lui	at,0x3f80
    42f8:	44815000 	mtc1	at,$f10
    42fc:	e7a4007c 	swc1	$f4,124(sp)
    4300:	c7a6007c 	lwc1	$f6,124(sp)
    4304:	46083083 	div.s	$f2,$f6,$f8
    4308:	46101302 	mul.s	$f12,$f2,$f16
    430c:	4612603c 	c.lt.s	$f12,$f18
    4310:	00000000 	nop
    4314:	45020003 	bc1fl	4324 <func_800730DC+0x2e8>
    4318:	460c803c 	c.lt.s	$f16,$f12
    431c:	46009306 	mov.s	$f12,$f18
    4320:	460c803c 	c.lt.s	$f16,$f12
    4324:	00000000 	nop
    4328:	45020003 	bc1fl	4338 <func_800730DC+0x2fc>
    432c:	4612103c 	c.lt.s	$f2,$f18
    4330:	46008306 	mov.s	$f12,$f16
    4334:	4612103c 	c.lt.s	$f2,$f18
    4338:	46001006 	mov.s	$f0,$f2
    433c:	460c8301 	sub.s	$f12,$f16,$f12
    4340:	45020003 	bc1fl	4350 <func_800730DC+0x314>
    4344:	4600503c 	c.lt.s	$f10,$f0
    4348:	46009006 	mov.s	$f0,$f18
    434c:	4600503c 	c.lt.s	$f10,$f0
    4350:	00000000 	nop
    4354:	45000003 	bc1f	4364 <func_800730DC+0x328>
    4358:	3c013f80 	lui	at,0x3f80
    435c:	44810000 	mtc1	at,$f0
    4360:	00000000 	nop
    4364:	3c014296 	lui	at,0x4296
    4368:	44812000 	mtc1	at,$f4
    436c:	240b0001 	li	t3,1
    4370:	8e0302c0 	lw	v1,704(s0)
    4374:	46040182 	mul.s	$f6,$f0,$f4
    4378:	3c09fa00 	lui	t1,0xfa00
    437c:	24790008 	addiu	t9,v1,8
    4380:	ae1902c0 	sw	t9,704(s0)
    4384:	3c05ff00 	lui	a1,0xff00
    4388:	ac690000 	sw	t1,0(v1)
    438c:	444af800 	cfc1	t2,$31
    4390:	44cbf800 	ctc1	t3,$31
    4394:	00000000 	nop
    4398:	46003224 	cvt.w.s	$f8,$f6
    439c:	444bf800 	cfc1	t3,$31
    43a0:	00000000 	nop
    43a4:	316b0078 	andi	t3,t3,0x78
    43a8:	11600012 	beqz	t3,43f4 <func_800730DC+0x3b8>
    43ac:	3c014f00 	lui	at,0x4f00
    43b0:	44814000 	mtc1	at,$f8
    43b4:	240b0001 	li	t3,1
    43b8:	46083201 	sub.s	$f8,$f6,$f8
    43bc:	44cbf800 	ctc1	t3,$31
    43c0:	00000000 	nop
    43c4:	46004224 	cvt.w.s	$f8,$f8
    43c8:	444bf800 	cfc1	t3,$31
    43cc:	00000000 	nop
    43d0:	316b0078 	andi	t3,t3,0x78
    43d4:	15600005 	bnez	t3,43ec <func_800730DC+0x3b0>
    43d8:	00000000 	nop
    43dc:	440b4000 	mfc1	t3,$f8
    43e0:	3c018000 	lui	at,0x8000
    43e4:	10000007 	b	4404 <func_800730DC+0x3c8>
    43e8:	01615825 	or	t3,t3,at
    43ec:	10000005 	b	4404 <func_800730DC+0x3c8>
    43f0:	240bffff 	li	t3,-1
    43f4:	440b4000 	mfc1	t3,$f8
    43f8:	00000000 	nop
    43fc:	0560fffb 	bltz	t3,43ec <func_800730DC+0x3b0>
    4400:	00000000 	nop
    4404:	3c01431b 	lui	at,0x431b
    4408:	44caf800 	ctc1	t2,$31
    440c:	44815000 	mtc1	at,$f10
    4410:	24090001 	li	t1,1
    4414:	256d00b4 	addiu	t5,t3,180
    4418:	460a0102 	mul.s	$f4,$f0,$f10
    441c:	31ae00ff 	andi	t6,t5,0xff
    4420:	000e7c00 	sll	t7,t6,0x10
    4424:	01e5c025 	or	t8,t7,a1
    4428:	4459f800 	cfc1	t9,$31
    442c:	44c9f800 	ctc1	t1,$31
    4430:	00000000 	nop
    4434:	460021a4 	cvt.w.s	$f6,$f4
    4438:	4449f800 	cfc1	t1,$31
    443c:	00000000 	nop
    4440:	31290078 	andi	t1,t1,0x78
    4444:	11200012 	beqz	t1,4490 <func_800730DC+0x454>
    4448:	3c014f00 	lui	at,0x4f00
    444c:	44813000 	mtc1	at,$f6
    4450:	24090001 	li	t1,1
    4454:	46062181 	sub.s	$f6,$f4,$f6
    4458:	44c9f800 	ctc1	t1,$31
    445c:	00000000 	nop
    4460:	460031a4 	cvt.w.s	$f6,$f6
    4464:	4449f800 	cfc1	t1,$31
    4468:	00000000 	nop
    446c:	31290078 	andi	t1,t1,0x78
    4470:	15200005 	bnez	t1,4488 <func_800730DC+0x44c>
    4474:	00000000 	nop
    4478:	44093000 	mfc1	t1,$f6
    447c:	3c018000 	lui	at,0x8000
    4480:	10000007 	b	44a0 <func_800730DC+0x464>
    4484:	01214825 	or	t1,t1,at
    4488:	10000005 	b	44a0 <func_800730DC+0x464>
    448c:	2409ffff 	li	t1,-1
    4490:	44093000 	mfc1	t1,$f6
    4494:	00000000 	nop
    4498:	0520fffb 	bltz	t1,4488 <func_800730DC+0x44c>
    449c:	00000000 	nop
    44a0:	44d9f800 	ctc1	t9,$31
    44a4:	01205025 	move	t2,t1
    44a8:	254b0064 	addiu	t3,t2,100
    44ac:	46100202 	mul.s	$f8,$f0,$f16
    44b0:	24040001 	li	a0,1
    44b4:	316c00ff 	andi	t4,t3,0xff
    44b8:	000c6a00 	sll	t5,t4,0x8
    44bc:	030d7025 	or	t6,t8,t5
    44c0:	35cf00ff 	ori	t7,t6,0xff
    44c4:	ac6f0004 	sw	t7,4(v1)
    44c8:	444af800 	cfc1	t2,$31
    44cc:	44c4f800 	ctc1	a0,$31
    44d0:	8e0302c0 	lw	v1,704(s0)
    44d4:	3c09fb00 	lui	t1,0xfb00
    44d8:	460042a4 	cvt.w.s	$f10,$f8
    44dc:	24790008 	addiu	t9,v1,8
    44e0:	ae1902c0 	sw	t9,704(s0)
    44e4:	3c014f00 	lui	at,0x4f00
    44e8:	4444f800 	cfc1	a0,$31
    44ec:	ac690000 	sw	t1,0(v1)
    44f0:	30840078 	andi	a0,a0,0x78
    44f4:	50800013 	beqzl	a0,4544 <func_800730DC+0x508>
    44f8:	44045000 	mfc1	a0,$f10
    44fc:	44815000 	mtc1	at,$f10
    4500:	24040001 	li	a0,1
    4504:	460a4281 	sub.s	$f10,$f8,$f10
    4508:	44c4f800 	ctc1	a0,$31
    450c:	00000000 	nop
    4510:	460052a4 	cvt.w.s	$f10,$f10
    4514:	4444f800 	cfc1	a0,$31
    4518:	00000000 	nop
    451c:	30840078 	andi	a0,a0,0x78
    4520:	14800005 	bnez	a0,4538 <func_800730DC+0x4fc>
    4524:	00000000 	nop
    4528:	44045000 	mfc1	a0,$f10
    452c:	3c018000 	lui	at,0x8000
    4530:	10000007 	b	4550 <func_800730DC+0x514>
    4534:	00812025 	or	a0,a0,at
    4538:	10000005 	b	4550 <func_800730DC+0x514>
    453c:	2404ffff 	li	a0,-1
    4540:	44045000 	mfc1	a0,$f10
    4544:	00000000 	nop
    4548:	0480fffb 	bltz	a0,4538 <func_800730DC+0x4fc>
    454c:	00000000 	nop
    4550:	44caf800 	ctc1	t2,$31
    4554:	240f0001 	li	t7,1
    4558:	308400ff 	andi	a0,a0,0xff
    455c:	00045c00 	sll	t3,a0,0x10
    4560:	444ef800 	cfc1	t6,$31
    4564:	44cff800 	ctc1	t7,$31
    4568:	01656025 	or	t4,t3,a1
    456c:	0004c200 	sll	t8,a0,0x8
    4570:	46006124 	cvt.w.s	$f4,$f12
    4574:	01986825 	or	t5,t4,t8
    4578:	3c014f00 	lui	at,0x4f00
    457c:	444ff800 	cfc1	t7,$31
    4580:	00000000 	nop
    4584:	31ef0078 	andi	t7,t7,0x78
    4588:	51e00013 	beqzl	t7,45d8 <func_800730DC+0x59c>
    458c:	440f2000 	mfc1	t7,$f4
    4590:	44812000 	mtc1	at,$f4
    4594:	240f0001 	li	t7,1
    4598:	46046101 	sub.s	$f4,$f12,$f4
    459c:	44cff800 	ctc1	t7,$31
    45a0:	00000000 	nop
    45a4:	46002124 	cvt.w.s	$f4,$f4
    45a8:	444ff800 	cfc1	t7,$31
    45ac:	00000000 	nop
    45b0:	31ef0078 	andi	t7,t7,0x78
    45b4:	15e00005 	bnez	t7,45cc <func_800730DC+0x590>
    45b8:	00000000 	nop
    45bc:	440f2000 	mfc1	t7,$f4
    45c0:	3c018000 	lui	at,0x8000
    45c4:	10000007 	b	45e4 <func_800730DC+0x5a8>
    45c8:	01e17825 	or	t7,t7,at
    45cc:	10000005 	b	45e4 <func_800730DC+0x5a8>
    45d0:	240fffff 	li	t7,-1
    45d4:	440f2000 	mfc1	t7,$f4
    45d8:	00000000 	nop
    45dc:	05e0fffb 	bltz	t7,45cc <func_800730DC+0x590>
    45e0:	00000000 	nop
    45e4:	44cef800 	ctc1	t6,$31
    45e8:	3c014120 	lui	at,0x4120
    45ec:	44814000 	mtc1	at,$f8
    45f0:	46000180 	add.s	$f6,$f0,$f0
    45f4:	31f900ff 	andi	t9,t7,0xff
    45f8:	01b94825 	or	t1,t5,t9
    45fc:	ac690004 	sw	t1,4(v1)
    4600:	46083300 	add.s	$f12,$f6,$f8
    4604:	afa80030 	sw	t0,48(sp)
    4608:	24070001 	li	a3,1
    460c:	44066000 	mfc1	a2,$f12
    4610:	0c000000 	jal	0 <func_8006F0A0>
    4614:	46006386 	mov.s	$f14,$f12
    4618:	8e0202c0 	lw	v0,704(s0)
    461c:	8fa80030 	lw	t0,48(sp)
    4620:	3c0bda38 	lui	t3,0xda38
    4624:	244a0008 	addiu	t2,v0,8
    4628:	ae0a02c0 	sw	t2,704(s0)
    462c:	356b0003 	ori	t3,t3,0x3
    4630:	ac4b0000 	sw	t3,0(v0)
    4634:	8e240000 	lw	a0,0(s1)
    4638:	3c050000 	lui	a1,0x0
    463c:	24a50000 	addiu	a1,a1,0
    4640:	2406093c 	li	a2,2364
    4644:	afa20054 	sw	v0,84(sp)
    4648:	0c000000 	jal	0 <func_8006F0A0>
    464c:	afa80030 	sw	t0,48(sp)
    4650:	8fa30054 	lw	v1,84(sp)
    4654:	8fa80030 	lw	t0,48(sp)
    4658:	ac620004 	sw	v0,4(v1)
    465c:	8e240000 	lw	a0,0(s1)
    4660:	0c000000 	jal	0 <func_8006F0A0>
    4664:	afa80030 	sw	t0,48(sp)
    4668:	8e0202c0 	lw	v0,704(s0)
    466c:	8fa80030 	lw	t0,48(sp)
    4670:	3c0e0405 	lui	t6,0x405
    4674:	244c0008 	addiu	t4,v0,8
    4678:	ae0c02c0 	sw	t4,704(s0)
    467c:	25ce0000 	addiu	t6,t6,0
    4680:	3c18de00 	lui	t8,0xde00
    4684:	ac580000 	sw	t8,0(v0)
    4688:	ac4e0004 	sw	t6,4(v0)
    468c:	c62a00e0 	lwc1	$f10,224(s1)
    4690:	c5040a28 	lwc1	$f4,2600(t0)
    4694:	c62600e4 	lwc1	$f6,228(s1)
    4698:	c5080a2c 	lwc1	$f8,2604(t0)
    469c:	46045301 	sub.s	$f12,$f10,$f4
    46a0:	c62a00e8 	lwc1	$f10,232(s1)
    46a4:	c5040a30 	lwc1	$f4,2608(t0)
    46a8:	46083381 	sub.s	$f14,$f6,$f8
    46ac:	00003825 	move	a3,zero
    46b0:	46045181 	sub.s	$f6,$f10,$f4
    46b4:	44063000 	mfc1	a2,$f6
    46b8:	0c000000 	jal	0 <func_8006F0A0>
    46bc:	00000000 	nop
    46c0:	c7b0007c 	lwc1	$f16,124(sp)
    46c4:	3c0142f0 	lui	at,0x42f0
    46c8:	44814000 	mtc1	at,$f8
    46cc:	46008407 	neg.s	$f16,$f16
    46d0:	44809000 	mtc1	zero,$f18
    46d4:	46088003 	div.s	$f0,$f16,$f8
    46d8:	3c01c170 	lui	at,0xc170
    46dc:	44815000 	mtc1	at,$f10
    46e0:	4612003c 	c.lt.s	$f0,$f18
    46e4:	00000000 	nop
    46e8:	45000002 	bc1f	46f4 <func_800730DC+0x6b8>
    46ec:	00000000 	nop
    46f0:	46009006 	mov.s	$f0,$f18
    46f4:	46005102 	mul.s	$f4,$f10,$f0
    46f8:	3c0141c8 	lui	at,0x41c8
    46fc:	44813000 	mtc1	at,$f6
    4700:	24070001 	li	a3,1
    4704:	e7b00030 	swc1	$f16,48(sp)
    4708:	46062300 	add.s	$f12,$f4,$f6
    470c:	44066000 	mfc1	a2,$f12
    4710:	0c000000 	jal	0 <func_8006F0A0>
    4714:	46006386 	mov.s	$f14,$f12
    4718:	3c0142a0 	lui	at,0x42a0
    471c:	c7b00030 	lwc1	$f16,48(sp)
    4720:	44814000 	mtc1	at,$f8
    4724:	3c013f80 	lui	at,0x3f80
    4728:	44815000 	mtc1	at,$f10
    472c:	46088083 	div.s	$f2,$f16,$f8
    4730:	44809000 	mtc1	zero,$f18
    4734:	3c0dda38 	lui	t5,0xda38
    4738:	3c013f80 	lui	at,0x3f80
    473c:	35ad0003 	ori	t5,t5,0x3
    4740:	3c050000 	lui	a1,0x0
    4744:	4602503c 	c.lt.s	$f10,$f2
    4748:	00000000 	nop
    474c:	45020004 	bc1fl	4760 <func_800730DC+0x724>
    4750:	3c01437f 	lui	at,0x437f
    4754:	44811000 	mtc1	at,$f2
    4758:	00000000 	nop
    475c:	3c01437f 	lui	at,0x437f
    4760:	44812000 	mtc1	at,$f4
    4764:	00000000 	nop
    4768:	46041002 	mul.s	$f0,$f2,$f4
    476c:	4600903c 	c.lt.s	$f18,$f0
    4770:	00000000 	nop
    4774:	45000051 	bc1f	48bc <func_800730DC+0x880>
    4778:	00000000 	nop
    477c:	8e0202c0 	lw	v0,704(s0)
    4780:	24a50000 	addiu	a1,a1,0
    4784:	24060966 	li	a2,2406
    4788:	244f0008 	addiu	t7,v0,8
    478c:	ae0f02c0 	sw	t7,704(s0)
    4790:	ac4d0000 	sw	t5,0(v0)
    4794:	8e240000 	lw	a0,0(s1)
    4798:	e7a00030 	swc1	$f0,48(sp)
    479c:	0c000000 	jal	0 <func_8006F0A0>
    47a0:	afa2004c 	sw	v0,76(sp)
    47a4:	8fa3004c 	lw	v1,76(sp)
    47a8:	c7a00030 	lwc1	$f0,48(sp)
    47ac:	ac620004 	sw	v0,4(v1)
    47b0:	8e240000 	lw	a0,0(s1)
    47b4:	0c000000 	jal	0 <func_8006F0A0>
    47b8:	e7a00030 	swc1	$f0,48(sp)
    47bc:	8e0202c0 	lw	v0,704(s0)
    47c0:	444cf800 	cfc1	t4,$31
    47c4:	24040001 	li	a0,1
    47c8:	44c4f800 	ctc1	a0,$31
    47cc:	c7a00030 	lwc1	$f0,48(sp)
    47d0:	24590008 	addiu	t9,v0,8
    47d4:	ae1902c0 	sw	t9,704(s0)
    47d8:	460001a4 	cvt.w.s	$f6,$f0
    47dc:	3c09e700 	lui	t1,0xe700
    47e0:	ac490000 	sw	t1,0(v0)
    47e4:	ac400004 	sw	zero,4(v0)
    47e8:	8e0302c0 	lw	v1,704(s0)
    47ec:	4444f800 	cfc1	a0,$31
    47f0:	3c0bfa00 	lui	t3,0xfa00
    47f4:	246a0008 	addiu	t2,v1,8
    47f8:	ae0a02c0 	sw	t2,704(s0)
    47fc:	30840078 	andi	a0,a0,0x78
    4800:	10800013 	beqz	a0,4850 <func_800730DC+0x814>
    4804:	ac6b0000 	sw	t3,0(v1)
    4808:	3c014f00 	lui	at,0x4f00
    480c:	44813000 	mtc1	at,$f6
    4810:	24040001 	li	a0,1
    4814:	46060181 	sub.s	$f6,$f0,$f6
    4818:	44c4f800 	ctc1	a0,$31
    481c:	00000000 	nop
    4820:	460031a4 	cvt.w.s	$f6,$f6
    4824:	4444f800 	cfc1	a0,$31
    4828:	00000000 	nop
    482c:	30840078 	andi	a0,a0,0x78
    4830:	14800005 	bnez	a0,4848 <func_800730DC+0x80c>
    4834:	00000000 	nop
    4838:	44043000 	mfc1	a0,$f6
    483c:	3c018000 	lui	at,0x8000
    4840:	10000007 	b	4860 <func_800730DC+0x824>
    4844:	00812025 	or	a0,a0,at
    4848:	10000005 	b	4860 <func_800730DC+0x824>
    484c:	2404ffff 	li	a0,-1
    4850:	44043000 	mfc1	a0,$f6
    4854:	00000000 	nop
    4858:	0480fffb 	bltz	a0,4848 <func_800730DC+0x80c>
    485c:	00000000 	nop
    4860:	3c01f0ff 	lui	at,0xf0ff
    4864:	3421b400 	ori	at,at,0xb400
    4868:	308400ff 	andi	a0,a0,0xff
    486c:	0081c025 	or	t8,a0,at
    4870:	ac780004 	sw	t8,4(v1)
    4874:	8e0202c0 	lw	v0,704(s0)
    4878:	3c015046 	lui	at,0x5046
    487c:	34211400 	ori	at,at,0x1400
    4880:	244e0008 	addiu	t6,v0,8
    4884:	ae0e02c0 	sw	t6,704(s0)
    4888:	00816825 	or	t5,a0,at
    488c:	3c0ffb00 	lui	t7,0xfb00
    4890:	ac4f0000 	sw	t7,0(v0)
    4894:	ac4d0004 	sw	t5,4(v0)
    4898:	8e0202c0 	lw	v0,704(s0)
    489c:	3c0a0000 	lui	t2,0x0
    48a0:	44ccf800 	ctc1	t4,$31
    48a4:	24590008 	addiu	t9,v0,8
    48a8:	ae1902c0 	sw	t9,704(s0)
    48ac:	254a0000 	addiu	t2,t2,0
    48b0:	3c09de00 	lui	t1,0xde00
    48b4:	ac490000 	sw	t1,0(v0)
    48b8:	ac4a0004 	sw	t2,4(v0)
    48bc:	3c060000 	lui	a2,0x0
    48c0:	24c60000 	addiu	a2,a2,0
    48c4:	27a40060 	addiu	a0,sp,96
    48c8:	8e250000 	lw	a1,0(s1)
    48cc:	0c000000 	jal	0 <func_8006F0A0>
    48d0:	2407097d 	li	a3,2429
    48d4:	8fbf0024 	lw	ra,36(sp)
    48d8:	8fb0001c 	lw	s0,28(sp)
    48dc:	8fb10020 	lw	s1,32(sp)
    48e0:	03e00008 	jr	ra
    48e4:	27bd0088 	addiu	sp,sp,136

000048e8 <func_80073988>:
    48e8:	27bdffc0 	addiu	sp,sp,-64
    48ec:	3c010001 	lui	at,0x1
    48f0:	afbf003c 	sw	ra,60(sp)
    48f4:	afb00038 	sw	s0,56(sp)
    48f8:	afa50044 	sw	a1,68(sp)
    48fc:	afa60048 	sw	a2,72(sp)
    4900:	afa7004c 	sw	a3,76(sp)
    4904:	00811021 	addu	v0,a0,at
    4908:	904e0b13 	lbu	t6,2835(v0)
    490c:	00808025 	move	s0,a0
    4910:	55c00026 	bnezl	t6,49ac <func_80073988+0xc4>
    4914:	8fbf003c 	lw	ra,60(sp)
    4918:	904f0a3b 	lbu	t7,2619(v0)
    491c:	3c020000 	lui	v0,0x0
    4920:	55e00022 	bnezl	t7,49ac <func_80073988+0xc4>
    4924:	8fbf003c 	lw	ra,60(sp)
    4928:	9442000c 	lhu	v0,12(v0)
    492c:	24018000 	li	at,-32768
    4930:	00412021 	addu	a0,v0,at
    4934:	00042400 	sll	a0,a0,0x10
    4938:	0c000000 	jal	0 <func_8006F0A0>
    493c:	00042403 	sra	a0,a0,0x10
    4940:	27b80050 	addiu	t8,sp,80
    4944:	8f080000 	lw	t0,0(t8)
    4948:	3c010001 	lui	at,0x1
    494c:	34210a24 	ori	at,at,0xa24
    4950:	02012821 	addu	a1,s0,at
    4954:	8e070000 	lw	a3,0(s0)
    4958:	3c0142f0 	lui	at,0x42f0
    495c:	afa80010 	sw	t0,16(sp)
    4960:	8f190004 	lw	t9,4(t8)
    4964:	44812000 	mtc1	at,$f4
    4968:	240907d0 	li	t1,2000
    496c:	afb90014 	sw	t9,20(sp)
    4970:	46040182 	mul.s	$f6,$f0,$f4
    4974:	8f080008 	lw	t0,8(t8)
    4978:	240a0172 	li	t2,370
    497c:	240b0190 	li	t3,400
    4980:	240c0001 	li	t4,1
    4984:	afac002c 	sw	t4,44(sp)
    4988:	afab0028 	sw	t3,40(sp)
    498c:	afaa0020 	sw	t2,32(sp)
    4990:	e7a60024 	swc1	$f6,36(sp)
    4994:	afa9001c 	sw	t1,28(sp)
    4998:	02002025 	move	a0,s0
    499c:	260600b8 	addiu	a2,s0,184
    49a0:	0c000000 	jal	0 <func_8006F0A0>
    49a4:	afa80018 	sw	t0,24(sp)
    49a8:	8fbf003c 	lw	ra,60(sp)
    49ac:	8fb00038 	lw	s0,56(sp)
    49b0:	27bd0040 	addiu	sp,sp,64
    49b4:	03e00008 	jr	ra
    49b8:	00000000 	nop

000049bc <func_80073A5C>:
    49bc:	27bdfe50 	addiu	sp,sp,-432
    49c0:	3c0b0000 	lui	t3,0x0
    49c4:	afbf004c 	sw	ra,76(sp)
    49c8:	afb20048 	sw	s2,72(sp)
    49cc:	afb10044 	sw	s1,68(sp)
    49d0:	afb00040 	sw	s0,64(sp)
    49d4:	f7ba0038 	sdc1	$f26,56(sp)
    49d8:	f7b80030 	sdc1	$f24,48(sp)
    49dc:	f7b60028 	sdc1	$f22,40(sp)
    49e0:	f7b40020 	sdc1	$f20,32(sp)
    49e4:	afa401b0 	sw	a0,432(sp)
    49e8:	afa501b4 	sw	a1,436(sp)
    49ec:	256b0000 	addiu	t3,t3,0
    49f0:	8d6d0000 	lw	t5,0(t3)
    49f4:	27aa0118 	addiu	t2,sp,280
    49f8:	8d690004 	lw	t1,4(t3)
    49fc:	ad4d0000 	sw	t5,0(t2)
    4a00:	8d6d0008 	lw	t5,8(t3)
    4a04:	ad490004 	sw	t1,4(t2)
    4a08:	8d69000c 	lw	t1,12(t3)
    4a0c:	ad4d0008 	sw	t5,8(t2)
    4a10:	8d6d0010 	lw	t5,16(t3)
    4a14:	ad49000c 	sw	t1,12(t2)
    4a18:	8d690014 	lw	t1,20(t3)
    4a1c:	ad4d0010 	sw	t5,16(t2)
    4a20:	8d6d0018 	lw	t5,24(t3)
    4a24:	3c190000 	lui	t9,0x0
    4a28:	27390000 	addiu	t9,t9,0
    4a2c:	ad4d0018 	sw	t5,24(t2)
    4a30:	956d001c 	lhu	t5,28(t3)
    4a34:	00e08025 	move	s0,a3
    4a38:	00c08825 	move	s1,a2
    4a3c:	00009025 	move	s2,zero
    4a40:	272c0024 	addiu	t4,t9,36
    4a44:	27a800f0 	addiu	t0,sp,240
    4a48:	ad490014 	sw	t1,20(t2)
    4a4c:	a54d001c 	sh	t5,28(t2)
    4a50:	8f2e0000 	lw	t6,0(t9)
    4a54:	2739000c 	addiu	t9,t9,12
    4a58:	2508000c 	addiu	t0,t0,12
    4a5c:	ad0efff4 	sw	t6,-12(t0)
    4a60:	8f2ffff8 	lw	t7,-8(t9)
    4a64:	ad0ffff8 	sw	t7,-8(t0)
    4a68:	8f2efffc 	lw	t6,-4(t9)
    4a6c:	172cfff8 	bne	t9,t4,4a50 <func_80073A5C+0x94>
    4a70:	ad0efffc 	sw	t6,-4(t0)
    4a74:	8f2e0000 	lw	t6,0(t9)
    4a78:	3c0a0000 	lui	t2,0x0
    4a7c:	254a0000 	addiu	t2,t2,0
    4a80:	254d0024 	addiu	t5,t2,36
    4a84:	27b800c8 	addiu	t8,sp,200
    4a88:	ad0e0000 	sw	t6,0(t0)
    4a8c:	8d490000 	lw	t1,0(t2)
    4a90:	254a000c 	addiu	t2,t2,12
    4a94:	2718000c 	addiu	t8,t8,12
    4a98:	af09fff4 	sw	t1,-12(t8)
    4a9c:	8d4bfff8 	lw	t3,-8(t2)
    4aa0:	af0bfff8 	sw	t3,-8(t8)
    4aa4:	8d49fffc 	lw	t1,-4(t2)
    4aa8:	154dfff8 	bne	t2,t5,4a8c <func_80073A5C+0xd0>
    4aac:	af09fffc 	sw	t1,-4(t8)
    4ab0:	8d490000 	lw	t1,0(t2)
    4ab4:	3c060000 	lui	a2,0x0
    4ab8:	24c60000 	addiu	a2,a2,0
    4abc:	27a400b4 	addiu	a0,sp,180
    4ac0:	02002825 	move	a1,s0
    4ac4:	240709d4 	li	a3,2516
    4ac8:	0c000000 	jal	0 <func_8006F0A0>
    4acc:	af090000 	sw	t1,0(t8)
    4ad0:	27a401c0 	addiu	a0,sp,448
    4ad4:	0c000000 	jal	0 <func_8006F0A0>
    4ad8:	26250028 	addiu	a1,s1,40
    4adc:	c6300028 	lwc1	$f16,40(s1)
    4ae0:	c6260034 	lwc1	$f6,52(s1)
    4ae4:	3c014140 	lui	at,0x4140
    4ae8:	44812000 	mtc1	at,$f4
    4aec:	46103081 	sub.s	$f2,$f6,$f16
    4af0:	c632002c 	lwc1	$f18,44(s1)
    4af4:	c6280038 	lwc1	$f8,56(s1)
    4af8:	46040583 	div.s	$f22,$f0,$f4
    4afc:	c63a0030 	lwc1	$f26,48(s1)
    4b00:	c62a003c 	lwc1	$f10,60(s1)
    4b04:	3c0140c0 	lui	at,0x40c0
    4b08:	46124301 	sub.s	$f12,$f8,$f18
    4b0c:	46021102 	mul.s	$f4,$f2,$f2
    4b10:	461a5381 	sub.s	$f14,$f10,$f26
    4b14:	460c6182 	mul.s	$f6,$f12,$f12
    4b18:	46062200 	add.s	$f8,$f4,$f6
    4b1c:	460e7282 	mul.s	$f10,$f14,$f14
    4b20:	460a4000 	add.s	$f0,$f8,$f10
    4b24:	44814000 	mtc1	at,$f8
    4b28:	3c013f80 	lui	at,0x3f80
    4b2c:	46000004 	sqrt.s	$f0,$f0
    4b30:	4608b282 	mul.s	$f10,$f22,$f8
    4b34:	46006103 	div.s	$f4,$f12,$f0
    4b38:	e7aa0078 	swc1	$f10,120(sp)
    4b3c:	46001503 	div.s	$f20,$f2,$f0
    4b40:	e7a40068 	swc1	$f4,104(sp)
    4b44:	c7a40078 	lwc1	$f4,120(sp)
    4b48:	c7a60068 	lwc1	$f6,104(sp)
    4b4c:	e7a60198 	swc1	$f6,408(sp)
    4b50:	46007603 	div.s	$f24,$f14,$f0
    4b54:	e7b4019c 	swc1	$f20,412(sp)
    4b58:	4604a202 	mul.s	$f8,$f20,$f4
    4b5c:	46088280 	add.s	$f10,$f16,$f8
    4b60:	46043202 	mul.s	$f8,$f6,$f4
    4b64:	e7aa0170 	swc1	$f10,368(sp)
    4b68:	46089280 	add.s	$f10,$f18,$f8
    4b6c:	4604c202 	mul.s	$f8,$f24,$f4
    4b70:	c7a401c0 	lwc1	$f4,448(sp)
    4b74:	e7aa016c 	swc1	$f10,364(sp)
    4b78:	4608d280 	add.s	$f10,$f26,$f8
    4b7c:	c7a80170 	lwc1	$f8,368(sp)
    4b80:	4480d000 	mtc1	zero,$f26
    4b84:	46082081 	sub.s	$f2,$f4,$f8
    4b88:	e7aa0168 	swc1	$f10,360(sp)
    4b8c:	c7aa01c4 	lwc1	$f10,452(sp)
    4b90:	c7a4016c 	lwc1	$f4,364(sp)
    4b94:	c7a801c8 	lwc1	$f8,456(sp)
    4b98:	46045301 	sub.s	$f12,$f10,$f4
    4b9c:	c7aa0168 	lwc1	$f10,360(sp)
    4ba0:	46021102 	mul.s	$f4,$f2,$f2
    4ba4:	460a4381 	sub.s	$f14,$f8,$f10
    4ba8:	460c6202 	mul.s	$f8,$f12,$f12
    4bac:	46082280 	add.s	$f10,$f4,$f8
    4bb0:	460e7102 	mul.s	$f4,$f14,$f14
    4bb4:	c7a8019c 	lwc1	$f8,412(sp)
    4bb8:	e7a80050 	swc1	$f8,80(sp)
    4bbc:	46045000 	add.s	$f0,$f10,$f4
    4bc0:	46084282 	mul.s	$f10,$f8,$f8
    4bc4:	00000000 	nop
    4bc8:	46063102 	mul.s	$f4,$f6,$f6
    4bcc:	46000004 	sqrt.s	$f0,$f0
    4bd0:	46045280 	add.s	$f10,$f10,$f4
    4bd4:	4618c102 	mul.s	$f4,$f24,$f24
    4bd8:	46001403 	div.s	$f16,$f2,$f0
    4bdc:	46045280 	add.s	$f10,$f10,$f4
    4be0:	46006483 	div.s	$f18,$f12,$f0
    4be4:	e7b00184 	swc1	$f16,388(sp)
    4be8:	46108102 	mul.s	$f4,$f16,$f16
    4bec:	46007503 	div.s	$f20,$f14,$f0
    4bf0:	e7b20180 	swc1	$f18,384(sp)
    4bf4:	46129202 	mul.s	$f8,$f18,$f18
    4bf8:	46082100 	add.s	$f4,$f4,$f8
    4bfc:	4614a202 	mul.s	$f8,$f20,$f20
    4c00:	e7b4017c 	swc1	$f20,380(sp)
    4c04:	46082100 	add.s	$f4,$f4,$f8
    4c08:	c7a80050 	lwc1	$f8,80(sp)
    4c0c:	46045002 	mul.s	$f0,$f10,$f4
    4c10:	c7aa0184 	lwc1	$f10,388(sp)
    4c14:	460a4102 	mul.s	$f4,$f8,$f10
    4c18:	c7a80180 	lwc1	$f8,384(sp)
    4c1c:	46083282 	mul.s	$f10,$f6,$f8
    4c20:	c7a8017c 	lwc1	$f8,380(sp)
    4c24:	46000004 	sqrt.s	$f0,$f0
    4c28:	460a2180 	add.s	$f6,$f4,$f10
    4c2c:	4608c102 	mul.s	$f4,$f24,$f8
    4c30:	4481c000 	mtc1	at,$f24
    4c34:	3c014060 	lui	at,0x4060
    4c38:	46043280 	add.s	$f10,$f6,$f4
    4c3c:	44812000 	mtc1	at,$f4
    4c40:	46005203 	div.s	$f8,$f10,$f0
    4c44:	e7a80074 	swc1	$f8,116(sp)
    4c48:	c7a20074 	lwc1	$f2,116(sp)
    4c4c:	c7a60074 	lwc1	$f6,116(sp)
    4c50:	46041002 	mul.s	$f0,$f2,$f4
    4c54:	e7a60164 	swc1	$f6,356(sp)
    4c58:	4600c03c 	c.lt.s	$f24,$f0
    4c5c:	e7a0015c 	swc1	$f0,348(sp)
    4c60:	45000002 	bc1f	4c6c <func_80073A5C+0x2b0>
    4c64:	00000000 	nop
    4c68:	e7b8015c 	swc1	$f24,348(sp)
    4c6c:	93ac01df 	lbu	t4,479(sp)
    4c70:	55800003 	bnezl	t4,4c80 <func_80073A5C+0x2c4>
    4c74:	461a103c 	c.lt.s	$f2,$f26
    4c78:	e7a2015c 	swc1	$f2,348(sp)
    4c7c:	461a103c 	c.lt.s	$f2,$f26
    4c80:	93b901df 	lbu	t9,479(sp)
    4c84:	4501025d 	bc1t	55fc <func_80073A5C+0xc40>
    4c88:	00000000 	nop
    4c8c:	13200033 	beqz	t9,4d5c <func_80073A5C+0x3a0>
    4c90:	8fa401b0 	lw	a0,432(sp)
    4c94:	27a501c0 	addiu	a1,sp,448
    4c98:	0c000000 	jal	0 <func_8006F0A0>
    4c9c:	27a60144 	addiu	a2,sp,324
    4ca0:	c7a20148 	lwc1	$f2,328(sp)
    4ca4:	c7a00144 	lwc1	$f0,324(sp)
    4ca8:	3c010000 	lui	at,0x0
    4cac:	4600120d 	trunc.w.s	$f8,$f2
    4cb0:	3c0c0000 	lui	t4,0x0
    4cb4:	958c0000 	lhu	t4,0(t4)
    4cb8:	4600028d 	trunc.w.s	$f10,$f0
    4cbc:	440d4000 	mfc1	t5,$f8
    4cc0:	00000000 	nop
    4cc4:	000d5400 	sll	t2,t5,0x10
    4cc8:	000ac403 	sra	t8,t2,0x10
    4ccc:	44983000 	mtc1	t8,$f6
    4cd0:	440f5000 	mfc1	t7,$f10
    4cd4:	46803120 	cvt.s.w	$f4,$f6
    4cd8:	a42f0000 	sh	t7,0(at)
    4cdc:	3c0140a0 	lui	at,0x40a0
    4ce0:	44815000 	mtc1	at,$f10
    4ce4:	3c010000 	lui	at,0x0
    4ce8:	460a2201 	sub.s	$f8,$f4,$f10
    4cec:	4600418d 	trunc.w.s	$f6,$f8
    4cf0:	44093000 	mfc1	t1,$f6
    4cf4:	00000000 	nop
    4cf8:	a4290000 	sh	t1,0(at)
    4cfc:	3401fffc 	li	at,0xfffc
    4d00:	55810016 	bnel	t4,at,4d5c <func_80073A5C+0x3a0>
    4d04:	24120001 	li	s2,1
    4d08:	461a003c 	c.lt.s	$f0,$f26
    4d0c:	00000000 	nop
    4d10:	45030012 	bc1tl	4d5c <func_80073A5C+0x3a0>
    4d14:	24120001 	li	s2,1
    4d18:	461a103c 	c.lt.s	$f2,$f26
    4d1c:	3c0143a0 	lui	at,0x43a0
    4d20:	4503000e 	bc1tl	4d5c <func_80073A5C+0x3a0>
    4d24:	24120001 	li	s2,1
    4d28:	44812000 	mtc1	at,$f4
    4d2c:	3c014370 	lui	at,0x4370
    4d30:	4600203c 	c.lt.s	$f4,$f0
    4d34:	00000000 	nop
    4d38:	45030008 	bc1tl	4d5c <func_80073A5C+0x3a0>
    4d3c:	24120001 	li	s2,1
    4d40:	44815000 	mtc1	at,$f10
    4d44:	00000000 	nop
    4d48:	4602503c 	c.lt.s	$f10,$f2
    4d4c:	00000000 	nop
    4d50:	45020003 	bc1fl	4d60 <func_80073A5C+0x3a4>
    4d54:	c7a80184 	lwc1	$f8,388(sp)
    4d58:	24120001 	li	s2,1
    4d5c:	c7a80184 	lwc1	$f8,388(sp)
    4d60:	c7a40180 	lwc1	$f4,384(sp)
    4d64:	87b901d2 	lh	t9,466(sp)
    4d68:	46004187 	neg.s	$f6,$f8
    4d6c:	c7a8017c 	lwc1	$f8,380(sp)
    4d70:	e7a6007c 	swc1	$f6,124(sp)
    4d74:	46002287 	neg.s	$f10,$f4
    4d78:	46004187 	neg.s	$f6,$f8
    4d7c:	44992000 	mtc1	t9,$f4
    4d80:	e7a60074 	swc1	$f6,116(sp)
    4d84:	3c014120 	lui	at,0x4120
    4d88:	44813000 	mtc1	at,$f6
    4d8c:	c7a801d4 	lwc1	$f8,468(sp)
    4d90:	e7aa0078 	swc1	$f10,120(sp)
    4d94:	468022a0 	cvt.s.w	$f10,$f4
    4d98:	8fa801b4 	lw	t0,436(sp)
    4d9c:	3c0e0100 	lui	t6,0x100
    4da0:	25ce0000 	addiu	t6,t6,0
    4da4:	250f0088 	addiu	t7,t0,136
    4da8:	46064103 	div.s	$f4,$f8,$f6
    4dac:	afaf0060 	sw	t7,96(sp)
    4db0:	afae005c 	sw	t6,92(sp)
    4db4:	e7aa006c 	swc1	$f10,108(sp)
    4db8:	00008825 	move	s1,zero
    4dbc:	afb20064 	sw	s2,100(sp)
    4dc0:	e7a40068 	swc1	$f4,104(sp)
    4dc4:	c7ac01c0 	lwc1	$f12,448(sp)
    4dc8:	c7ae01c4 	lwc1	$f14,452(sp)
    4dcc:	8fa601c8 	lw	a2,456(sp)
    4dd0:	0c000000 	jal	0 <func_8006F0A0>
    4dd4:	00003825 	move	a3,zero
    4dd8:	93ad01df 	lbu	t5,479(sp)
    4ddc:	8faa01b0 	lw	t2,432(sp)
    4de0:	24060001 	li	a2,1
    4de4:	51a00027 	beqzl	t5,4e84 <func_80073A5C+0x4c8>
    4de8:	44913000 	mtc1	s1,$f6
    4dec:	4458f800 	cfc1	t8,$31
    4df0:	44c6f800 	ctc1	a2,$31
    4df4:	c54a00d0 	lwc1	$f10,208(t2)
    4df8:	2404003c 	li	a0,60
    4dfc:	2405000f 	li	a1,15
    4e00:	46005224 	cvt.w.s	$f8,$f10
    4e04:	3c014f00 	lui	at,0x4f00
    4e08:	4446f800 	cfc1	a2,$31
    4e0c:	00000000 	nop
    4e10:	30c60078 	andi	a2,a2,0x78
    4e14:	50c00013 	beqzl	a2,4e64 <func_80073A5C+0x4a8>
    4e18:	44064000 	mfc1	a2,$f8
    4e1c:	44814000 	mtc1	at,$f8
    4e20:	24060001 	li	a2,1
    4e24:	46085201 	sub.s	$f8,$f10,$f8
    4e28:	44c6f800 	ctc1	a2,$31
    4e2c:	00000000 	nop
    4e30:	46004224 	cvt.w.s	$f8,$f8
    4e34:	4446f800 	cfc1	a2,$31
    4e38:	00000000 	nop
    4e3c:	30c60078 	andi	a2,a2,0x78
    4e40:	14c00005 	bnez	a2,4e58 <func_80073A5C+0x49c>
    4e44:	00000000 	nop
    4e48:	44064000 	mfc1	a2,$f8
    4e4c:	3c018000 	lui	at,0x8000
    4e50:	10000007 	b	4e70 <func_80073A5C+0x4b4>
    4e54:	00c13025 	or	a2,a2,at
    4e58:	10000005 	b	4e70 <func_80073A5C+0x4b4>
    4e5c:	2406ffff 	li	a2,-1
    4e60:	44064000 	mfc1	a2,$f8
    4e64:	00000000 	nop
    4e68:	04c0fffb 	bltz	a2,4e58 <func_80073A5C+0x49c>
    4e6c:	00000000 	nop
    4e70:	44d8f800 	ctc1	t8,$31
    4e74:	0c000000 	jal	0 <func_8006F0A0>
    4e78:	30c6ffff 	andi	a2,a2,0xffff
    4e7c:	e7a0013c 	swc1	$f0,316(sp)
    4e80:	44913000 	mtc1	s1,$f6
    4e84:	c7a4007c 	lwc1	$f4,124(sp)
    4e88:	c7a80078 	lwc1	$f8,120(sp)
    4e8c:	46803020 	cvt.s.w	$f0,$f6
    4e90:	24070001 	li	a3,1
    4e94:	46002282 	mul.s	$f10,$f4,$f0
    4e98:	c7a40074 	lwc1	$f4,116(sp)
    4e9c:	46165302 	mul.s	$f12,$f10,$f22
    4ea0:	00000000 	nop
    4ea4:	46004182 	mul.s	$f6,$f8,$f0
    4ea8:	00000000 	nop
    4eac:	46163382 	mul.s	$f14,$f6,$f22
    4eb0:	00000000 	nop
    4eb4:	46002282 	mul.s	$f10,$f4,$f0
    4eb8:	00000000 	nop
    4ebc:	46165202 	mul.s	$f8,$f10,$f22
    4ec0:	44064000 	mfc1	a2,$f8
    4ec4:	0c000000 	jal	0 <func_8006F0A0>
    4ec8:	00000000 	nop
    4ecc:	00119080 	sll	s2,s1,0x2
    4ed0:	3c010000 	lui	at,0x0
    4ed4:	00320821 	addu	at,at,s2
    4ed8:	c4260000 	lwc1	$f6,0(at)
    4edc:	c7a40164 	lwc1	$f4,356(sp)
    4ee0:	93ab01df 	lbu	t3,479(sp)
    4ee4:	3c010000 	lui	at,0x0
    4ee8:	46043302 	mul.s	$f12,$f6,$f4
    4eec:	11600010 	beqz	t3,4f30 <func_80073A5C+0x574>
    4ef0:	24070001 	li	a3,1
    4ef4:	3c010000 	lui	at,0x0
    4ef8:	c42a0000 	lwc1	$f10,0(at)
    4efc:	c7a8013c 	lwc1	$f8,316(sp)
    4f00:	c7a4006c 	lwc1	$f4,108(sp)
    4f04:	3c010000 	lui	at,0x0
    4f08:	46085182 	mul.s	$f6,$f10,$f8
    4f0c:	46062280 	add.s	$f10,$f4,$f6
    4f10:	d4240000 	ldc1	$f4,0(at)
    4f14:	46005221 	cvt.d.s	$f8,$f10
    4f18:	460062a1 	cvt.d.s	$f10,$f12
    4f1c:	46282182 	mul.d	$f6,$f4,$f8
    4f20:	00000000 	nop
    4f24:	46265102 	mul.d	$f4,$f10,$f6
    4f28:	1000000a 	b	4f54 <func_80073A5C+0x598>
    4f2c:	46202320 	cvt.s.d	$f12,$f4
    4f30:	c4280000 	lwc1	$f8,0(at)
    4f34:	c7aa006c 	lwc1	$f10,108(sp)
    4f38:	4616b100 	add.s	$f4,$f22,$f22
    4f3c:	460a4182 	mul.s	$f6,$f8,$f10
    4f40:	00000000 	nop
    4f44:	46043202 	mul.s	$f8,$f6,$f4
    4f48:	00000000 	nop
    4f4c:	46086302 	mul.s	$f12,$f12,$f8
    4f50:	00000000 	nop
    4f54:	44066000 	mfc1	a2,$f12
    4f58:	0c000000 	jal	0 <func_8006F0A0>
    4f5c:	46006386 	mov.s	$f14,$f12
    4f60:	c7b40068 	lwc1	$f20,104(sp)
    4f64:	03b24821 	addu	t1,sp,s2
    4f68:	3c014f80 	lui	at,0x4f80
    4f6c:	4614c03c 	c.lt.s	$f24,$f20
    4f70:	8fac01b0 	lw	t4,432(sp)
    4f74:	8fa40060 	lw	a0,96(sp)
    4f78:	3c063f00 	lui	a2,0x3f00
    4f7c:	45000002 	bc1f	4f88 <func_80073A5C+0x5cc>
    4f80:	3c073d4c 	lui	a3,0x3d4c
    4f84:	4600c506 	mov.s	$f20,$f24
    4f88:	8d2900f0 	lw	t1,240(t1)
    4f8c:	8fa5015c 	lw	a1,348(sp)
    4f90:	34e7cccd 	ori	a3,a3,0xcccd
    4f94:	44895000 	mtc1	t1,$f10
    4f98:	05210004 	bgez	t1,4fac <func_80073A5C+0x5f0>
    4f9c:	468051a0 	cvt.s.w	$f6,$f10
    4fa0:	44812000 	mtc1	at,$f4
    4fa4:	00000000 	nop
    4fa8:	46043180 	add.s	$f6,$f6,$f4
    4fac:	46143502 	mul.s	$f20,$f6,$f20
    4fb0:	461aa03c 	c.lt.s	$f20,$f26
    4fb4:	00000000 	nop
    4fb8:	45020003 	bc1fl	4fc8 <func_80073A5C+0x60c>
    4fbc:	859907b2 	lh	t9,1970(t4)
    4fc0:	4600d506 	mov.s	$f20,$f26
    4fc4:	859907b2 	lh	t9,1970(t4)
    4fc8:	240803e4 	li	t0,996
    4fcc:	3c014248 	lui	at,0x4248
    4fd0:	01197823 	subu	t7,t0,t9
    4fd4:	448f4000 	mtc1	t7,$f8
    4fd8:	44812000 	mtc1	at,$f4
    4fdc:	3c010000 	lui	at,0x0
    4fe0:	468042a0 	cvt.s.w	$f10,$f8
    4fe4:	46045003 	div.s	$f0,$f10,$f4
    4fe8:	4600c03c 	c.lt.s	$f24,$f0
    4fec:	00000000 	nop
    4ff0:	45020003 	bc1fl	5000 <func_80073A5C+0x644>
    4ff4:	4600c181 	sub.s	$f6,$f24,$f0
    4ff8:	4600c006 	mov.s	$f0,$f24
    4ffc:	4600c181 	sub.s	$f6,$f24,$f0
    5000:	8fae0064 	lw	t6,100(sp)
    5004:	4606a502 	mul.s	$f20,$f20,$f6
    5008:	15c0000b 	bnez	t6,5038 <func_80073A5C+0x67c>
    500c:	00000000 	nop
    5010:	3c010000 	lui	at,0x0
    5014:	c4280000 	lwc1	$f8,0(at)
    5018:	3c073d4c 	lui	a3,0x3d4c
    501c:	34e7cccd 	ori	a3,a3,0xcccd
    5020:	8fa40060 	lw	a0,96(sp)
    5024:	3c063f00 	lui	a2,0x3f00
    5028:	0c000000 	jal	0 <func_8006F0A0>
    502c:	e7a80010 	swc1	$f8,16(sp)
    5030:	10000006 	b	504c <func_80073A5C+0x690>
    5034:	8e0702d0 	lw	a3,720(s0)
    5038:	c42a0000 	lwc1	$f10,0(at)
    503c:	4405d000 	mfc1	a1,$f26
    5040:	0c000000 	jal	0 <func_8006F0A0>
    5044:	e7aa0010 	swc1	$f10,16(sp)
    5048:	8e0702d0 	lw	a3,720(s0)
    504c:	24ed0008 	addiu	t5,a3,8
    5050:	ae0d02d0 	sw	t5,720(s0)
    5054:	0c000000 	jal	0 <func_8006F0A0>
    5058:	00e02025 	move	a0,a3
    505c:	ae0202d0 	sw	v0,720(s0)
    5060:	244a0008 	addiu	t2,v0,8
    5064:	ae0a02d0 	sw	t2,720(s0)
    5068:	3c18fa00 	lui	t8,0xfa00
    506c:	00115880 	sll	t3,s1,0x2
    5070:	01715823 	subu	t3,t3,s1
    5074:	ac580000 	sw	t8,0(v0)
    5078:	00401825 	move	v1,v0
    507c:	27a90118 	addiu	t1,sp,280
    5080:	01691021 	addu	v0,t3,t1
    5084:	90480002 	lbu	t0,2(v0)
    5088:	904e0000 	lbu	t6,0(v0)
    508c:	904b0001 	lbu	t3,1(v0)
    5090:	0008ca00 	sll	t9,t0,0x8
    5094:	8fa801b4 	lw	t0,436(sp)
    5098:	000e6e00 	sll	t5,t6,0x18
    509c:	240e0001 	li	t6,1
    50a0:	c5040088 	lwc1	$f4,136(t0)
    50a4:	000b4c00 	sll	t1,t3,0x10
    50a8:	032d5025 	or	t2,t9,t5
    50ac:	4604a182 	mul.s	$f6,$f20,$f4
    50b0:	3c0bda38 	lui	t3,0xda38
    50b4:	3c050000 	lui	a1,0x0
    50b8:	01496025 	or	t4,t2,t1
    50bc:	3c014f00 	lui	at,0x4f00
    50c0:	24a50000 	addiu	a1,a1,0
    50c4:	356b0003 	ori	t3,t3,0x3
    50c8:	444ff800 	cfc1	t7,$31
    50cc:	44cef800 	ctc1	t6,$31
    50d0:	02002025 	move	a0,s0
    50d4:	46003224 	cvt.w.s	$f8,$f6
    50d8:	444ef800 	cfc1	t6,$31
    50dc:	00000000 	nop
    50e0:	31ce0078 	andi	t6,t6,0x78
    50e4:	51c00013 	beqzl	t6,5134 <func_80073A5C+0x778>
    50e8:	440e4000 	mfc1	t6,$f8
    50ec:	44814000 	mtc1	at,$f8
    50f0:	240e0001 	li	t6,1
    50f4:	46083201 	sub.s	$f8,$f6,$f8
    50f8:	44cef800 	ctc1	t6,$31
    50fc:	00000000 	nop
    5100:	46004224 	cvt.w.s	$f8,$f8
    5104:	444ef800 	cfc1	t6,$31
    5108:	00000000 	nop
    510c:	31ce0078 	andi	t6,t6,0x78
    5110:	15c00005 	bnez	t6,5128 <func_80073A5C+0x76c>
    5114:	00000000 	nop
    5118:	440e4000 	mfc1	t6,$f8
    511c:	3c018000 	lui	at,0x8000
    5120:	10000007 	b	5140 <func_80073A5C+0x784>
    5124:	01c17025 	or	t6,t6,at
    5128:	10000005 	b	5140 <func_80073A5C+0x784>
    512c:	240effff 	li	t6,-1
    5130:	440e4000 	mfc1	t6,$f8
    5134:	00000000 	nop
    5138:	05c0fffb 	bltz	t6,5128 <func_80073A5C+0x76c>
    513c:	00000000 	nop
    5140:	31d900ff 	andi	t9,t6,0xff
    5144:	01996825 	or	t5,t4,t9
    5148:	ac6d0004 	sw	t5,4(v1)
    514c:	8e0702d0 	lw	a3,720(s0)
    5150:	44cff800 	ctc1	t7,$31
    5154:	24060a66 	li	a2,2662
    5158:	24f80008 	addiu	t8,a3,8
    515c:	ae1802d0 	sw	t8,720(s0)
    5160:	aceb0000 	sw	t3,0(a3)
    5164:	0c000000 	jal	0 <func_8006F0A0>
    5168:	afa700ac 	sw	a3,172(sp)
    516c:	8fa300ac 	lw	v1,172(sp)
    5170:	3c09fcff 	lui	t1,0xfcff
    5174:	3c08ff2d 	lui	t0,0xff2d
    5178:	ac620004 	sw	v0,4(v1)
    517c:	8e0702d0 	lw	a3,720(s0)
    5180:	3508feff 	ori	t0,t0,0xfeff
    5184:	352997ff 	ori	t1,t1,0x97ff
    5188:	24ea0008 	addiu	t2,a3,8
    518c:	ae0a02d0 	sw	t2,720(s0)
    5190:	ace80004 	sw	t0,4(a3)
    5194:	ace90000 	sw	t1,0(a3)
    5198:	8e0702d0 	lw	a3,720(s0)
    519c:	3c0ee300 	lui	t6,0xe300
    51a0:	35ce1a01 	ori	t6,t6,0x1a01
    51a4:	24ef0008 	addiu	t7,a3,8
    51a8:	ae0f02d0 	sw	t7,720(s0)
    51ac:	240c0030 	li	t4,48
    51b0:	acec0004 	sw	t4,4(a3)
    51b4:	acee0000 	sw	t6,0(a3)
    51b8:	8e0702d0 	lw	a3,720(s0)
    51bc:	3c0de300 	lui	t5,0xe300
    51c0:	35ad1801 	ori	t5,t5,0x1801
    51c4:	24f90008 	addiu	t9,a3,8
    51c8:	ae1902d0 	sw	t9,720(s0)
    51cc:	241800c0 	li	t8,192
    51d0:	acf80004 	sw	t8,4(a3)
    51d4:	aced0000 	sw	t5,0(a3)
    51d8:	8e0702d0 	lw	a3,720(s0)
    51dc:	3c0ada38 	lui	t2,0xda38
    51e0:	354a0001 	ori	t2,t2,0x1
    51e4:	24eb0008 	addiu	t3,a3,8
    51e8:	ae0b02d0 	sw	t3,720(s0)
    51ec:	acea0000 	sw	t2,0(a3)
    51f0:	8fa9005c 	lw	t1,92(sp)
    51f4:	03b21021 	addu	v0,sp,s2
    51f8:	26310001 	addiu	s1,s1,1
    51fc:	ace90004 	sw	t1,4(a3)
    5200:	8c4200c8 	lw	v0,200(v0)
    5204:	00118c00 	sll	s1,s1,0x10
    5208:	00118c03 	sra	s1,s1,0x10
    520c:	10400007 	beqz	v0,522c <func_80073A5C+0x870>
    5210:	24010001 	li	at,1
    5214:	10410005 	beq	v0,at,522c <func_80073A5C+0x870>
    5218:	24010002 	li	at,2
    521c:	1041000c 	beq	v0,at,5250 <func_80073A5C+0x894>
    5220:	3c030403 	lui	v1,0x403
    5224:	10000012 	b	5270 <func_80073A5C+0x8b4>
    5228:	2a21000a 	slti	at,s1,10
    522c:	8e0702d0 	lw	a3,720(s0)
    5230:	3c030000 	lui	v1,0x0
    5234:	24630000 	addiu	v1,v1,0
    5238:	24e80008 	addiu	t0,a3,8
    523c:	ae0802d0 	sw	t0,720(s0)
    5240:	3c0fde00 	lui	t7,0xde00
    5244:	acef0000 	sw	t7,0(a3)
    5248:	10000008 	b	526c <func_80073A5C+0x8b0>
    524c:	ace30004 	sw	v1,4(a3)
    5250:	8e0702d0 	lw	a3,720(s0)
    5254:	24637798 	addiu	v1,v1,30616
    5258:	3c0cde00 	lui	t4,0xde00
    525c:	24ee0008 	addiu	t6,a3,8
    5260:	ae0e02d0 	sw	t6,720(s0)
    5264:	ace30004 	sw	v1,4(a3)
    5268:	acec0000 	sw	t4,0(a3)
    526c:	2a21000a 	slti	at,s1,10
    5270:	5420fed5 	bnezl	at,4dc8 <func_80073A5C+0x40c>
    5274:	c7ac01c0 	lwc1	$f12,448(sp)
    5278:	87b101da 	lh	s1,474(sp)
    527c:	3c013fc0 	lui	at,0x3fc0
    5280:	c7a40164 	lwc1	$f4,356(sp)
    5284:	122000dd 	beqz	s1,55fc <func_80073A5C+0xc40>
    5288:	00000000 	nop
    528c:	44815000 	mtc1	at,$f10
    5290:	8fa901b4 	lw	t1,436(sp)
    5294:	46045181 	sub.s	$f6,$f10,$f4
    5298:	46062581 	sub.s	$f22,$f4,$f6
    529c:	4616d03c 	c.lt.s	$f26,$f22
    52a0:	00000000 	nop
    52a4:	450200d5 	bc1fl	55fc <func_80073A5C+0xc40>
    52a8:	e53a0084 	swc1	$f26,132(t1)
    52ac:	0c000000 	jal	0 <func_8006F0A0>
    52b0:	8e0402d0 	lw	a0,720(s0)
    52b4:	ae0202d0 	sw	v0,720(s0)
    52b8:	c7b40068 	lwc1	$f20,104(sp)
    52bc:	44915000 	mtc1	s1,$f10
    52c0:	3c09e300 	lui	t1,0xe300
    52c4:	4614c03c 	c.lt.s	$f24,$f20
    52c8:	8fb901b0 	lw	t9,432(sp)
    52cc:	35291a01 	ori	t1,t1,0x1a01
    52d0:	24080030 	li	t0,48
    52d4:	45000002 	bc1f	52e0 <func_80073A5C+0x924>
    52d8:	46805120 	cvt.s.w	$f4,$f10
    52dc:	4600c506 	mov.s	$f20,$f24
    52e0:	46142502 	mul.s	$f20,$f4,$f20
    52e4:	3c063f00 	lui	a2,0x3f00
    52e8:	461aa03c 	c.lt.s	$f20,$f26
    52ec:	00000000 	nop
    52f0:	45020003 	bc1fl	5300 <func_80073A5C+0x944>
    52f4:	872d07b2 	lh	t5,1970(t9)
    52f8:	4600d506 	mov.s	$f20,$f26
    52fc:	872d07b2 	lh	t5,1970(t9)
    5300:	241803e4 	li	t8,996
    5304:	3c014248 	lui	at,0x4248
    5308:	030d5823 	subu	t3,t8,t5
    530c:	448b3000 	mtc1	t3,$f6
    5310:	44815000 	mtc1	at,$f10
    5314:	3c010000 	lui	at,0x0
    5318:	46803220 	cvt.s.w	$f8,$f6
    531c:	460a4003 	div.s	$f0,$f8,$f10
    5320:	4600c03c 	c.lt.s	$f24,$f0
    5324:	00000000 	nop
    5328:	45020003 	bc1fl	5338 <func_80073A5C+0x97c>
    532c:	8e0702d0 	lw	a3,720(s0)
    5330:	4600c006 	mov.s	$f0,$f24
    5334:	8e0702d0 	lw	a3,720(s0)
    5338:	3c0ee300 	lui	t6,0xe300
    533c:	4600c101 	sub.s	$f4,$f24,$f0
    5340:	24ea0008 	addiu	t2,a3,8
    5344:	ae0a02d0 	sw	t2,720(s0)
    5348:	ace80004 	sw	t0,4(a3)
    534c:	ace90000 	sw	t1,0(a3)
    5350:	8e0702d0 	lw	a3,720(s0)
    5354:	35ce1801 	ori	t6,t6,0x1801
    5358:	240c00c0 	li	t4,192
    535c:	24ef0008 	addiu	t7,a3,8
    5360:	ae0f02d0 	sw	t7,720(s0)
    5364:	acec0004 	sw	t4,4(a3)
    5368:	acee0000 	sw	t6,0(a3)
    536c:	8fb90064 	lw	t9,100(sp)
    5370:	8fa401b4 	lw	a0,436(sp)
    5374:	4604a502 	mul.s	$f20,$f20,$f4
    5378:	1720000d 	bnez	t9,53b0 <func_80073A5C+0x9f4>
    537c:	24840084 	addiu	a0,a0,132
    5380:	4616a182 	mul.s	$f6,$f20,$f22
    5384:	3c010000 	lui	at,0x0
    5388:	c4280000 	lwc1	$f8,0(at)
    538c:	8fa401b4 	lw	a0,436(sp)
    5390:	3c063f00 	lui	a2,0x3f00
    5394:	3c074248 	lui	a3,0x4248
    5398:	e7a80010 	swc1	$f8,16(sp)
    539c:	44053000 	mfc1	a1,$f6
    53a0:	0c000000 	jal	0 <func_8006F0A0>
    53a4:	24840084 	addiu	a0,a0,132
    53a8:	10000007 	b	53c8 <func_80073A5C+0xa0c>
    53ac:	3c0142f0 	lui	at,0x42f0
    53b0:	c42a0000 	lwc1	$f10,0(at)
    53b4:	4405d000 	mfc1	a1,$f26
    53b8:	3c074248 	lui	a3,0x4248
    53bc:	0c000000 	jal	0 <func_8006F0A0>
    53c0:	e7aa0010 	swc1	$f10,16(sp)
    53c4:	3c0142f0 	lui	at,0x42f0
    53c8:	44813000 	mtc1	at,$f6
    53cc:	c7a401d4 	lwc1	$f4,468(sp)
    53d0:	3c0dfa00 	lui	t5,0xfa00
    53d4:	46062003 	div.s	$f0,$f4,$f6
    53d8:	461a003c 	c.lt.s	$f0,$f26
    53dc:	e7a0013c 	swc1	$f0,316(sp)
    53e0:	45020003 	bc1fl	53f0 <func_80073A5C+0xa34>
    53e4:	8e0202d0 	lw	v0,720(s0)
    53e8:	e7ba013c 	swc1	$f26,316(sp)
    53ec:	8e0202d0 	lw	v0,720(s0)
    53f0:	3c014296 	lui	at,0x4296
    53f4:	44815000 	mtc1	at,$f10
    53f8:	24580008 	addiu	t8,v0,8
    53fc:	ae1802d0 	sw	t8,720(s0)
    5400:	ac4d0000 	sw	t5,0(v0)
    5404:	c7a8013c 	lwc1	$f8,316(sp)
    5408:	240a0001 	li	t2,1
    540c:	3c014f00 	lui	at,0x4f00
    5410:	460a4102 	mul.s	$f4,$f8,$f10
    5414:	444bf800 	cfc1	t3,$31
    5418:	44caf800 	ctc1	t2,$31
    541c:	00000000 	nop
    5420:	460021a4 	cvt.w.s	$f6,$f4
    5424:	444af800 	cfc1	t2,$31
    5428:	00000000 	nop
    542c:	314a0078 	andi	t2,t2,0x78
    5430:	51400013 	beqzl	t2,5480 <func_80073A5C+0xac4>
    5434:	440a3000 	mfc1	t2,$f6
    5438:	44813000 	mtc1	at,$f6
    543c:	240a0001 	li	t2,1
    5440:	46062181 	sub.s	$f6,$f4,$f6
    5444:	44caf800 	ctc1	t2,$31
    5448:	00000000 	nop
    544c:	460031a4 	cvt.w.s	$f6,$f6
    5450:	444af800 	cfc1	t2,$31
    5454:	00000000 	nop
    5458:	314a0078 	andi	t2,t2,0x78
    545c:	15400005 	bnez	t2,5474 <func_80073A5C+0xab8>
    5460:	00000000 	nop
    5464:	440a3000 	mfc1	t2,$f6
    5468:	3c018000 	lui	at,0x8000
    546c:	10000007 	b	548c <func_80073A5C+0xad0>
    5470:	01415025 	or	t2,t2,at
    5474:	10000005 	b	548c <func_80073A5C+0xad0>
    5478:	240affff 	li	t2,-1
    547c:	440a3000 	mfc1	t2,$f6
    5480:	00000000 	nop
    5484:	0540fffb 	bltz	t2,5474 <func_80073A5C+0xab8>
    5488:	00000000 	nop
    548c:	254800b4 	addiu	t0,t2,180
    5490:	310f00ff 	andi	t7,t0,0xff
    5494:	000f7400 	sll	t6,t7,0x10
    5498:	3c01ff00 	lui	at,0xff00
    549c:	01c16025 	or	t4,t6,at
    54a0:	3c01431b 	lui	at,0x431b
    54a4:	44cbf800 	ctc1	t3,$31
    54a8:	44815000 	mtc1	at,$f10
    54ac:	24180001 	li	t8,1
    54b0:	3c014f00 	lui	at,0x4f00
    54b4:	460a4102 	mul.s	$f4,$f8,$f10
    54b8:	8faf01b4 	lw	t7,436(sp)
    54bc:	4459f800 	cfc1	t9,$31
    54c0:	44d8f800 	ctc1	t8,$31
    54c4:	00000000 	nop
    54c8:	460021a4 	cvt.w.s	$f6,$f4
    54cc:	4458f800 	cfc1	t8,$31
    54d0:	00000000 	nop
    54d4:	33180078 	andi	t8,t8,0x78
    54d8:	53000013 	beqzl	t8,5528 <func_80073A5C+0xb6c>
    54dc:	44183000 	mfc1	t8,$f6
    54e0:	44813000 	mtc1	at,$f6
    54e4:	24180001 	li	t8,1
    54e8:	46062181 	sub.s	$f6,$f4,$f6
    54ec:	44d8f800 	ctc1	t8,$31
    54f0:	00000000 	nop
    54f4:	460031a4 	cvt.w.s	$f6,$f6
    54f8:	4458f800 	cfc1	t8,$31
    54fc:	00000000 	nop
    5500:	33180078 	andi	t8,t8,0x78
    5504:	17000005 	bnez	t8,551c <func_80073A5C+0xb60>
    5508:	00000000 	nop
    550c:	44183000 	mfc1	t8,$f6
    5510:	3c018000 	lui	at,0x8000
    5514:	10000007 	b	5534 <func_80073A5C+0xb78>
    5518:	0301c025 	or	t8,t8,at
    551c:	10000005 	b	5534 <func_80073A5C+0xb78>
    5520:	2418ffff 	li	t8,-1
    5524:	44183000 	mfc1	t8,$f6
    5528:	00000000 	nop
    552c:	0700fffb 	bltz	t8,551c <func_80073A5C+0xb60>
    5530:	00000000 	nop
    5534:	44d9f800 	ctc1	t9,$31
    5538:	24190001 	li	t9,1
    553c:	c5e80084 	lwc1	$f8,132(t7)
    5540:	270b0064 	addiu	t3,t8,100
    5544:	444ef800 	cfc1	t6,$31
    5548:	44d9f800 	ctc1	t9,$31
    554c:	316a00ff 	andi	t2,t3,0xff
    5550:	000a4a00 	sll	t1,t2,0x8
    5554:	460042a4 	cvt.w.s	$f10,$f8
    5558:	01894025 	or	t0,t4,t1
    555c:	3c014f00 	lui	at,0x4f00
    5560:	3c0cf64f 	lui	t4,0xf64f
    5564:	4459f800 	cfc1	t9,$31
    5568:	00000000 	nop
    556c:	33390078 	andi	t9,t9,0x78
    5570:	53200013 	beqzl	t9,55c0 <func_80073A5C+0xc04>
    5574:	44195000 	mfc1	t9,$f10
    5578:	44815000 	mtc1	at,$f10
    557c:	24190001 	li	t9,1
    5580:	460a4281 	sub.s	$f10,$f8,$f10
    5584:	44d9f800 	ctc1	t9,$31
    5588:	00000000 	nop
    558c:	460052a4 	cvt.w.s	$f10,$f10
    5590:	4459f800 	cfc1	t9,$31
    5594:	00000000 	nop
    5598:	33390078 	andi	t9,t9,0x78
    559c:	17200005 	bnez	t9,55b4 <func_80073A5C+0xbf8>
    55a0:	00000000 	nop
    55a4:	44195000 	mfc1	t9,$f10
    55a8:	3c018000 	lui	at,0x8000
    55ac:	10000007 	b	55cc <func_80073A5C+0xc10>
    55b0:	0321c825 	or	t9,t9,at
    55b4:	10000005 	b	55cc <func_80073A5C+0xc10>
    55b8:	2419ffff 	li	t9,-1
    55bc:	44195000 	mfc1	t9,$f10
    55c0:	00000000 	nop
    55c4:	0720fffb 	bltz	t9,55b4 <func_80073A5C+0xbf8>
    55c8:	00000000 	nop
    55cc:	332d00ff 	andi	t5,t9,0xff
    55d0:	010d5825 	or	t3,t0,t5
    55d4:	ac4b0004 	sw	t3,4(v0)
    55d8:	8e0702d0 	lw	a3,720(s0)
    55dc:	44cef800 	ctc1	t6,$31
    55e0:	358cc3bc 	ori	t4,t4,0xc3bc
    55e4:	24ea0008 	addiu	t2,a3,8
    55e8:	ae0a02d0 	sw	t2,720(s0)
    55ec:	ace00004 	sw	zero,4(a3)
    55f0:	10000002 	b	55fc <func_80073A5C+0xc40>
    55f4:	acec0000 	sw	t4,0(a3)
    55f8:	e53a0084 	swc1	$f26,132(t1)
    55fc:	3c060000 	lui	a2,0x0
    5600:	24c60000 	addiu	a2,a2,0
    5604:	27a400b4 	addiu	a0,sp,180
    5608:	02002825 	move	a1,s0
    560c:	0c000000 	jal	0 <func_8006F0A0>
    5610:	24070abe 	li	a3,2750
    5614:	8fbf004c 	lw	ra,76(sp)
    5618:	d7b40020 	ldc1	$f20,32(sp)
    561c:	d7b60028 	ldc1	$f22,40(sp)
    5620:	d7b80030 	ldc1	$f24,48(sp)
    5624:	d7ba0038 	ldc1	$f26,56(sp)
    5628:	8fb00040 	lw	s0,64(sp)
    562c:	8fb10044 	lw	s1,68(sp)
    5630:	8fb20048 	lw	s2,72(sp)
    5634:	03e00008 	jr	ra
    5638:	27bd01b0 	addiu	sp,sp,432

0000563c <func_800746DC>:
    563c:	27bdffe8 	addiu	sp,sp,-24
    5640:	afbf0014 	sw	ra,20(sp)
    5644:	0c000000 	jal	0 <func_8006F0A0>
    5648:	00000000 	nop
    564c:	8fbf0014 	lw	ra,20(sp)
    5650:	3c013f00 	lui	at,0x3f00
    5654:	44812000 	mtc1	at,$f4
    5658:	27bd0018 	addiu	sp,sp,24
    565c:	03e00008 	jr	ra
    5660:	46040001 	sub.s	$f0,$f0,$f4

00005664 <func_80074704>:
    5664:	27bdfed8 	addiu	sp,sp,-296
    5668:	3c0f0000 	lui	t7,0x0
    566c:	afbf006c 	sw	ra,108(sp)
    5670:	afbe0068 	sw	s8,104(sp)
    5674:	afb70064 	sw	s7,100(sp)
    5678:	afb60060 	sw	s6,96(sp)
    567c:	afb5005c 	sw	s5,92(sp)
    5680:	afb40058 	sw	s4,88(sp)
    5684:	afb30054 	sw	s3,84(sp)
    5688:	afb20050 	sw	s2,80(sp)
    568c:	afb1004c 	sw	s1,76(sp)
    5690:	afb00048 	sw	s0,72(sp)
    5694:	f7be0040 	sdc1	$f30,64(sp)
    5698:	f7bc0038 	sdc1	$f28,56(sp)
    569c:	f7ba0030 	sdc1	$f26,48(sp)
    56a0:	f7b80028 	sdc1	$f24,40(sp)
    56a4:	f7b60020 	sdc1	$f22,32(sp)
    56a8:	f7b40018 	sdc1	$f20,24(sp)
    56ac:	25ef0000 	addiu	t7,t7,0
    56b0:	8df90000 	lw	t9,0(t7)
    56b4:	27ae00dc 	addiu	t6,sp,220
    56b8:	8df80004 	lw	t8,4(t7)
    56bc:	add90000 	sw	t9,0(t6)
    56c0:	8df90008 	lw	t9,8(t7)
    56c4:	3c090000 	lui	t1,0x0
    56c8:	25290000 	addiu	t1,t1,0
    56cc:	add80004 	sw	t8,4(t6)
    56d0:	add90008 	sw	t9,8(t6)
    56d4:	8d2b0000 	lw	t3,0(t1)
    56d8:	27a800d0 	addiu	t0,sp,208
    56dc:	8d2a0004 	lw	t2,4(t1)
    56e0:	ad0b0000 	sw	t3,0(t0)
    56e4:	8d2b0008 	lw	t3,8(t1)
    56e8:	ad0a0004 	sw	t2,4(t0)
    56ec:	3c010001 	lui	at,0x1
    56f0:	ad0b0008 	sw	t3,8(t0)
    56f4:	8c8c0790 	lw	t4,1936(a0)
    56f8:	00c08825 	move	s1,a2
    56fc:	00a0b025 	move	s6,a1
    5700:	858d014c 	lh	t5,332(t4)
    5704:	8c951c44 	lw	s5,7236(a0)
    5708:	0081a021 	addu	s4,a0,at
    570c:	31ae0100 	andi	t6,t5,0x100
    5710:	55c0013c 	bnezl	t6,5c04 <func_80074704+0x5a0>
    5714:	8fbf006c 	lw	ra,108(sp)
    5718:	928f0b14 	lbu	t7,2836(s4)
    571c:	00c02825 	move	a1,a2
    5720:	3c060000 	lui	a2,0x0
    5724:	15e00136 	bnez	t7,5c00 <func_80074704+0x59c>
    5728:	27a400b8 	addiu	a0,sp,184
    572c:	24c60000 	addiu	a2,a2,0
    5730:	0c000000 	jal	0 <func_8006F0A0>
    5734:	24070aef 	li	a3,2799
    5738:	c6c20028 	lwc1	$f2,40(s6)
    573c:	c6c40034 	lwc1	$f4,52(s6)
    5740:	c6cc002c 	lwc1	$f12,44(s6)
    5744:	c6c60038 	lwc1	$f6,56(s6)
    5748:	46022501 	sub.s	$f20,$f4,$f2
    574c:	c6d20030 	lwc1	$f18,48(s6)
    5750:	c6c8003c 	lwc1	$f8,60(s6)
    5754:	460c3401 	sub.s	$f16,$f6,$f12
    5758:	4614a282 	mul.s	$f10,$f20,$f20
    575c:	3c014248 	lui	at,0x4248
    5760:	46124581 	sub.s	$f22,$f8,$f18
    5764:	46108102 	mul.s	$f4,$f16,$f16
    5768:	4481c000 	mtc1	at,$f24
    576c:	3c01438c 	lui	at,0x438c
    5770:	4616b202 	mul.s	$f8,$f22,$f22
    5774:	3c19e700 	lui	t9,0xe700
    5778:	46045180 	add.s	$f6,$f10,$f4
    577c:	46083000 	add.s	$f0,$f6,$f8
    5780:	46000004 	sqrt.s	$f0,$f0
    5784:	4600a383 	div.s	$f14,$f20,$f0
    5788:	46008183 	div.s	$f6,$f16,$f0
    578c:	46187282 	mul.s	$f10,$f14,$f24
    5790:	4600b683 	div.s	$f26,$f22,$f0
    5794:	460a1100 	add.s	$f4,$f2,$f10
    5798:	46183202 	mul.s	$f8,$f6,$f24
    579c:	e7a400f8 	swc1	$f4,248(sp)
    57a0:	46086280 	add.s	$f10,$f12,$f8
    57a4:	4618d102 	mul.s	$f4,$f26,$f24
    57a8:	44814000 	mtc1	at,$f8
    57ac:	e7aa00f4 	swc1	$f10,244(sp)
    57b0:	46087282 	mul.s	$f10,$f14,$f8
    57b4:	46049180 	add.s	$f6,$f18,$f4
    57b8:	460a1100 	add.s	$f4,$f2,$f10
    57bc:	e7a600f0 	swc1	$f6,240(sp)
    57c0:	44813000 	mtc1	at,$f6
    57c4:	e7a400ec 	swc1	$f4,236(sp)
    57c8:	4606d202 	mul.s	$f8,$f26,$f6
    57cc:	46089280 	add.s	$f10,$f18,$f8
    57d0:	e7aa00e8 	swc1	$f10,232(sp)
    57d4:	92830b13 	lbu	v1,2835(s4)
    57d8:	50600014 	beqzl	v1,582c <func_80074704+0x1c8>
    57dc:	00009025 	move	s2,zero
    57e0:	8e2202d0 	lw	v0,720(s1)
    57e4:	3c0a96ff 	lui	t2,0x96ff
    57e8:	354aff1e 	ori	t2,t2,0xff1e
    57ec:	24580008 	addiu	t8,v0,8
    57f0:	ae3802d0 	sw	t8,720(s1)
    57f4:	ac400004 	sw	zero,4(v0)
    57f8:	ac590000 	sw	t9,0(v0)
    57fc:	8e2202d0 	lw	v0,720(s1)
    5800:	3c09fa00 	lui	t1,0xfa00
    5804:	24050014 	li	a1,20
    5808:	24480008 	addiu	t0,v0,8
    580c:	ae2802d0 	sw	t0,720(s1)
    5810:	ac4a0004 	sw	t2,4(v0)
    5814:	ac490000 	sw	t1,0(v0)
    5818:	0c000000 	jal	0 <func_8006F0A0>
    581c:	8e2402d0 	lw	a0,720(s1)
    5820:	ae2202d0 	sw	v0,720(s1)
    5824:	92830b13 	lbu	v1,2835(s4)
    5828:	00009025 	move	s2,zero
    582c:	18600076 	blez	v1,5a08 <func_80074704+0x3a4>
    5830:	00601025 	move	v0,v1
    5834:	3c010000 	lui	at,0x0
    5838:	c43e0000 	lwc1	$f30,0(at)
    583c:	3c0142c8 	lui	at,0x42c8
    5840:	4481e000 	mtc1	at,$f28
    5844:	3c0b0000 	lui	t3,0x0
    5848:	256b0000 	addiu	t3,t3,0
    584c:	3c010000 	lui	at,0x0
    5850:	3c130100 	lui	s3,0x100
    5854:	3c17da38 	lui	s7,0xda38
    5858:	36f70003 	ori	s7,s7,0x3
    585c:	26730000 	addiu	s3,s3,0
    5860:	c43a0000 	lwc1	$f26,0(at)
    5864:	afab0078 	sw	t3,120(sp)
    5868:	3c1ede00 	lui	s8,0xde00
    586c:	0c000000 	jal	0 <func_8006F0A0>
    5870:	00000000 	nop
    5874:	0c000000 	jal	0 <func_8006F0A0>
    5878:	46000586 	mov.s	$f22,$f0
    587c:	0c000000 	jal	0 <func_8006F0A0>
    5880:	46000506 	mov.s	$f20,$f0
    5884:	461ab101 	sub.s	$f4,$f22,$f26
    5888:	c7a800f8 	lwc1	$f8,248(sp)
    588c:	00003825 	move	a3,zero
    5890:	461aa281 	sub.s	$f10,$f20,$f26
    5894:	461c2182 	mul.s	$f6,$f4,$f28
    5898:	46083300 	add.s	$f12,$f6,$f8
    589c:	461c5102 	mul.s	$f4,$f10,$f28
    58a0:	c7a600f4 	lwc1	$f6,244(sp)
    58a4:	461a0201 	sub.s	$f8,$f0,$f26
    58a8:	461c4282 	mul.s	$f10,$f8,$f28
    58ac:	46062380 	add.s	$f14,$f4,$f6
    58b0:	c7a400f0 	lwc1	$f4,240(sp)
    58b4:	46045180 	add.s	$f6,$f10,$f4
    58b8:	44063000 	mfc1	a2,$f6
    58bc:	0c000000 	jal	0 <func_8006F0A0>
    58c0:	00000000 	nop
    58c4:	868c0acc 	lh	t4,2764(s4)
    58c8:	448c4000 	mtc1	t4,$f8
    58cc:	00000000 	nop
    58d0:	468042a0 	cvt.s.w	$f10,$f8
    58d4:	e7aa00d0 	swc1	$f10,208(sp)
    58d8:	868d0ace 	lh	t5,2766(s4)
    58dc:	c7b400d0 	lwc1	$f20,208(sp)
    58e0:	448d2000 	mtc1	t5,$f4
    58e4:	00000000 	nop
    58e8:	468021a0 	cvt.s.w	$f6,$f4
    58ec:	e7a600d4 	swc1	$f6,212(sp)
    58f0:	868e0ad0 	lh	t6,2768(s4)
    58f4:	448e4000 	mtc1	t6,$f8
    58f8:	00000000 	nop
    58fc:	468042a0 	cvt.s.w	$f10,$f8
    5900:	0c000000 	jal	0 <func_8006F0A0>
    5904:	e7aa00d8 	swc1	$f10,216(sp)
    5908:	3c0143fa 	lui	at,0x43fa
    590c:	44813000 	mtc1	at,$f6
    5910:	c7a400d4 	lwc1	$f4,212(sp)
    5914:	3c014348 	lui	at,0x4348
    5918:	44815000 	mtc1	at,$f10
    591c:	46062200 	add.s	$f8,$f4,$f6
    5920:	c7b600d8 	lwc1	$f22,216(sp)
    5924:	460a0102 	mul.s	$f4,$f0,$f10
    5928:	8e2202d0 	lw	v0,720(s1)
    592c:	3c18da38 	lui	t8,0xda38
    5930:	4614a182 	mul.s	$f6,$f20,$f20
    5934:	244f0008 	addiu	t7,v0,8
    5938:	ae2f02d0 	sw	t7,720(s1)
    593c:	4616b282 	mul.s	$f10,$f22,$f22
    5940:	37180001 	ori	t8,t8,0x1
    5944:	46082400 	add.s	$f16,$f4,$f8
    5948:	ac580000 	sw	t8,0(v0)
    594c:	ac530004 	sw	s3,4(v0)
    5950:	46008387 	neg.s	$f14,$f16
    5954:	460a3000 	add.s	$f0,$f6,$f10
    5958:	0c000000 	jal	0 <func_8006F0A0>
    595c:	46000304 	sqrt.s	$f12,$f0
    5960:	46000606 	mov.s	$f24,$f0
    5964:	4600b306 	mov.s	$f12,$f22
    5968:	0c000000 	jal	0 <func_8006F0A0>
    596c:	4600a386 	mov.s	$f14,$f20
    5970:	46000307 	neg.s	$f12,$f0
    5974:	0c000000 	jal	0 <func_8006F0A0>
    5978:	24050001 	li	a1,1
    597c:	3c010000 	lui	at,0x0
    5980:	c4240000 	lwc1	$f4,0(at)
    5984:	24050001 	li	a1,1
    5988:	0c000000 	jal	0 <func_8006F0A0>
    598c:	46182301 	sub.s	$f12,$f4,$f24
    5990:	3c010000 	lui	at,0x0
    5994:	4406f000 	mfc1	a2,$f30
    5998:	c42e0000 	lwc1	$f14,0(at)
    599c:	4600f306 	mov.s	$f12,$f30
    59a0:	0c000000 	jal	0 <func_8006F0A0>
    59a4:	24070001 	li	a3,1
    59a8:	8e2202d0 	lw	v0,720(s1)
    59ac:	3c050000 	lui	a1,0x0
    59b0:	24a50000 	addiu	a1,a1,0
    59b4:	24590008 	addiu	t9,v0,8
    59b8:	ae3902d0 	sw	t9,720(s1)
    59bc:	02202025 	move	a0,s1
    59c0:	24060b47 	li	a2,2887
    59c4:	ac570000 	sw	s7,0(v0)
    59c8:	0c000000 	jal	0 <func_8006F0A0>
    59cc:	00408025 	move	s0,v0
    59d0:	ae020004 	sw	v0,4(s0)
    59d4:	8e2202d0 	lw	v0,720(s1)
    59d8:	26520001 	addiu	s2,s2,1
    59dc:	00129400 	sll	s2,s2,0x10
    59e0:	24480008 	addiu	t0,v0,8
    59e4:	ae2802d0 	sw	t0,720(s1)
    59e8:	ac5e0000 	sw	s8,0(v0)
    59ec:	8fa90078 	lw	t1,120(sp)
    59f0:	00129403 	sra	s2,s2,0x10
    59f4:	ac490004 	sw	t1,4(v0)
    59f8:	92820b13 	lbu	v0,2835(s4)
    59fc:	0242082a 	slt	at,s2,v0
    5a00:	1420ff9a 	bnez	at,586c <func_80074704+0x208>
    5a04:	00000000 	nop
    5a08:	c6a80028 	lwc1	$f8,40(s5)
    5a0c:	c6c6002c 	lwc1	$f6,44(s6)
    5a10:	3c17da38 	lui	s7,0xda38
    5a14:	36f70003 	ori	s7,s7,0x3
    5a18:	4606403c 	c.lt.s	$f8,$f6
    5a1c:	3c1ede00 	lui	s8,0xde00
    5a20:	00009825 	move	s3,zero
    5a24:	45000070 	bc1f	5be8 <func_80074704+0x584>
    5a28:	00000000 	nop
    5a2c:	1840006e 	blez	v0,5be8 <func_80074704+0x584>
    5a30:	00009025 	move	s2,zero
    5a34:	3c01c1f0 	lui	at,0xc1f0
    5a38:	4481f000 	mtc1	at,$f30
    5a3c:	3c01c240 	lui	at,0xc240
    5a40:	4481e000 	mtc1	at,$f28
    5a44:	3c010000 	lui	at,0x0
    5a48:	c43a0000 	lwc1	$f26,0(at)
    5a4c:	3c010000 	lui	at,0x0
    5a50:	c4380000 	lwc1	$f24,0(at)
    5a54:	3c014000 	lui	at,0x4000
    5a58:	3c0a0402 	lui	t2,0x402
    5a5c:	254a0000 	addiu	t2,t2,0
    5a60:	4481b000 	mtc1	at,$f22
    5a64:	afaa007c 	sw	t2,124(sp)
    5a68:	16600014 	bnez	s3,5abc <func_80074704+0x458>
    5a6c:	00000000 	nop
    5a70:	0c000000 	jal	0 <func_8006F0A0>
    5a74:	02202025 	move	a0,s1
    5a78:	8e2202d0 	lw	v0,720(s1)
    5a7c:	3c0d9b9b 	lui	t5,0x9b9b
    5a80:	35ad9b00 	ori	t5,t5,0x9b00
    5a84:	244b0008 	addiu	t3,v0,8
    5a88:	ae2b02d0 	sw	t3,720(s1)
    5a8c:	3c0cfb00 	lui	t4,0xfb00
    5a90:	ac4c0000 	sw	t4,0(v0)
    5a94:	ac4d0004 	sw	t5,4(v0)
    5a98:	8e2202d0 	lw	v0,720(s1)
    5a9c:	3c0ffa00 	lui	t7,0xfa00
    5aa0:	2418ff78 	li	t8,-136
    5aa4:	244e0008 	addiu	t6,v0,8
    5aa8:	ae2e02d0 	sw	t6,720(s1)
    5aac:	26730001 	addiu	s3,s3,1
    5ab0:	327300ff 	andi	s3,s3,0xff
    5ab4:	ac580004 	sw	t8,4(v0)
    5ab8:	ac4f0000 	sw	t7,0(v0)
    5abc:	0c000000 	jal	0 <func_8006F0A0>
    5ac0:	00000000 	nop
    5ac4:	0c000000 	jal	0 <func_8006F0A0>
    5ac8:	46000506 	mov.s	$f20,$f0
    5acc:	3c01438c 	lui	at,0x438c
    5ad0:	44811000 	mtc1	at,$f2
    5ad4:	c7a400ec 	lwc1	$f4,236(sp)
    5ad8:	c6a80028 	lwc1	$f8,40(s5)
    5adc:	4602a282 	mul.s	$f10,$f20,$f2
    5ae0:	00003825 	move	a3,zero
    5ae4:	46164380 	add.s	$f14,$f8,$f22
    5ae8:	46020182 	mul.s	$f6,$f0,$f2
    5aec:	46045300 	add.s	$f12,$f10,$f4
    5af0:	c7aa00e8 	lwc1	$f10,232(sp)
    5af4:	460a3100 	add.s	$f4,$f6,$f10
    5af8:	44062000 	mfc1	a2,$f4
    5afc:	0c000000 	jal	0 <func_8006F0A0>
    5b00:	00000000 	nop
    5b04:	3c020000 	lui	v0,0x0
    5b08:	8c420004 	lw	v0,4(v0)
    5b0c:	14400009 	bnez	v0,5b34 <func_80074704+0x4d0>
    5b10:	00000000 	nop
    5b14:	c6a80028 	lwc1	$f8,40(s5)
    5b18:	c6ca002c 	lwc1	$f10,44(s6)
    5b1c:	46164180 	add.s	$f6,$f8,$f22
    5b20:	460a3101 	sub.s	$f4,$f6,$f10
    5b24:	4604e03c 	c.lt.s	$f28,$f4
    5b28:	00000000 	nop
    5b2c:	4503000c 	bc1tl	5b60 <func_80074704+0x4fc>
    5b30:	4406c000 	mfc1	a2,$f24
    5b34:	10400010 	beqz	v0,5b78 <func_80074704+0x514>
    5b38:	24070001 	li	a3,1
    5b3c:	c6a80028 	lwc1	$f8,40(s5)
    5b40:	c6ca002c 	lwc1	$f10,44(s6)
    5b44:	46164180 	add.s	$f6,$f8,$f22
    5b48:	460a3101 	sub.s	$f4,$f6,$f10
    5b4c:	4604f03c 	c.lt.s	$f30,$f4
    5b50:	00000000 	nop
    5b54:	45020009 	bc1fl	5b7c <func_80074704+0x518>
    5b58:	4406d000 	mfc1	a2,$f26
    5b5c:	4406c000 	mfc1	a2,$f24
    5b60:	4600c306 	mov.s	$f12,$f24
    5b64:	4600c386 	mov.s	$f14,$f24
    5b68:	0c000000 	jal	0 <func_8006F0A0>
    5b6c:	24070001 	li	a3,1
    5b70:	10000006 	b	5b8c <func_80074704+0x528>
    5b74:	8e2202d0 	lw	v0,720(s1)
    5b78:	4406d000 	mfc1	a2,$f26
    5b7c:	4600d306 	mov.s	$f12,$f26
    5b80:	0c000000 	jal	0 <func_8006F0A0>
    5b84:	4600d386 	mov.s	$f14,$f26
    5b88:	8e2202d0 	lw	v0,720(s1)
    5b8c:	3c050000 	lui	a1,0x0
    5b90:	24a50000 	addiu	a1,a1,0
    5b94:	24590008 	addiu	t9,v0,8
    5b98:	ae3902d0 	sw	t9,720(s1)
    5b9c:	02202025 	move	a0,s1
    5ba0:	24060b7c 	li	a2,2940
    5ba4:	ac570000 	sw	s7,0(v0)
    5ba8:	0c000000 	jal	0 <func_8006F0A0>
    5bac:	00408025 	move	s0,v0
    5bb0:	ae020004 	sw	v0,4(s0)
    5bb4:	8e2202d0 	lw	v0,720(s1)
    5bb8:	26520001 	addiu	s2,s2,1
    5bbc:	00129400 	sll	s2,s2,0x10
    5bc0:	24480008 	addiu	t0,v0,8
    5bc4:	ae2802d0 	sw	t0,720(s1)
    5bc8:	ac5e0000 	sw	s8,0(v0)
    5bcc:	8fa9007c 	lw	t1,124(sp)
    5bd0:	00129403 	sra	s2,s2,0x10
    5bd4:	ac490004 	sw	t1,4(v0)
    5bd8:	928a0b13 	lbu	t2,2835(s4)
    5bdc:	024a082a 	slt	at,s2,t2
    5be0:	1420ffa1 	bnez	at,5a68 <func_80074704+0x404>
    5be4:	00000000 	nop
    5be8:	3c060000 	lui	a2,0x0
    5bec:	24c60000 	addiu	a2,a2,0
    5bf0:	27a400b8 	addiu	a0,sp,184
    5bf4:	02202825 	move	a1,s1
    5bf8:	0c000000 	jal	0 <func_8006F0A0>
    5bfc:	24070b82 	li	a3,2946
    5c00:	8fbf006c 	lw	ra,108(sp)
    5c04:	d7b40018 	ldc1	$f20,24(sp)
    5c08:	d7b60020 	ldc1	$f22,32(sp)
    5c0c:	d7b80028 	ldc1	$f24,40(sp)
    5c10:	d7ba0030 	ldc1	$f26,48(sp)
    5c14:	d7bc0038 	ldc1	$f28,56(sp)
    5c18:	d7be0040 	ldc1	$f30,64(sp)
    5c1c:	8fb00048 	lw	s0,72(sp)
    5c20:	8fb1004c 	lw	s1,76(sp)
    5c24:	8fb20050 	lw	s2,80(sp)
    5c28:	8fb30054 	lw	s3,84(sp)
    5c2c:	8fb40058 	lw	s4,88(sp)
    5c30:	8fb5005c 	lw	s5,92(sp)
    5c34:	8fb60060 	lw	s6,96(sp)
    5c38:	8fb70064 	lw	s7,100(sp)
    5c3c:	8fbe0068 	lw	s8,104(sp)
    5c40:	03e00008 	jr	ra
    5c44:	27bd0128 	addiu	sp,sp,296

00005c48 <func_80074CE8>:
    5c48:	3c010001 	lui	at,0x1
    5c4c:	00811021 	addu	v0,a0,at
    5c50:	904e0ae1 	lbu	t6,2785(v0)
    5c54:	3c013f80 	lui	at,0x3f80
    5c58:	10ae001a 	beq	a1,t6,5cc4 <func_80074CE8+0x7c>
    5c5c:	00000000 	nop
    5c60:	c4440afc 	lwc1	$f4,2812(v0)
    5c64:	44813000 	mtc1	at,$f6
    5c68:	00000000 	nop
    5c6c:	4604303e 	c.le.s	$f6,$f4
    5c70:	00000000 	nop
    5c74:	45000013 	bc1f	5cc4 <func_80074CE8+0x7c>
    5c78:	00000000 	nop
    5c7c:	904f0ae3 	lbu	t7,2787(v0)
    5c80:	240100ff 	li	at,255
    5c84:	15e1000f 	bne	t7,at,5cc4 <func_80074CE8+0x7c>
    5c88:	2ca1001f 	sltiu	at,a1,31
    5c8c:	54200003 	bnezl	at,5c9c <func_80074CE8+0x54>
    5c90:	44804000 	mtc1	zero,$f8
    5c94:	00002825 	move	a1,zero
    5c98:	44804000 	mtc1	zero,$f8
    5c9c:	3c010001 	lui	at,0x1
    5ca0:	00240821 	addu	at,at,a0
    5ca4:	e4280afc 	swc1	$f8,2812(at)
    5ca8:	90580ae1 	lbu	t8,2785(v0)
    5cac:	3c010001 	lui	at,0x1
    5cb0:	00240821 	addu	at,at,a0
    5cb4:	a0380ae2 	sb	t8,2786(at)
    5cb8:	3c010001 	lui	at,0x1
    5cbc:	00240821 	addu	at,at,a0
    5cc0:	a0250ae1 	sb	a1,2785(at)
    5cc4:	03e00008 	jr	ra
    5cc8:	00000000 	nop

00005ccc <func_80074D6C>:
    5ccc:	27bdff98 	addiu	sp,sp,-104
    5cd0:	3c010001 	lui	at,0x1
    5cd4:	afbf001c 	sw	ra,28(sp)
    5cd8:	afb00018 	sw	s0,24(sp)
    5cdc:	00814821 	addu	t1,a0,at
    5ce0:	91221e14 	lbu	v0,7700(t1)
    5ce4:	00808025 	move	s0,a0
    5ce8:	50400005 	beqzl	v0,5d00 <func_80074D6C+0x34>
    5cec:	2401001d 	li	at,29
    5cf0:	848e07b2 	lh	t6,1970(a0)
    5cf4:	29c103d4 	slti	at,t6,980
    5cf8:	14200003 	bnez	at,5d08 <func_80074D6C+0x3c>
    5cfc:	2401001d 	li	at,29
    5d00:	54410065 	bnel	v0,at,5e98 <func_80074D6C+0x1cc>
    5d04:	912e0b0d 	lbu	t6,2829(t1)
    5d08:	8e050000 	lw	a1,0(s0)
    5d0c:	3c060000 	lui	a2,0x0
    5d10:	24c60000 	addiu	a2,a2,0
    5d14:	afa90028 	sw	t1,40(sp)
    5d18:	27a40050 	addiu	a0,sp,80
    5d1c:	24070bd8 	li	a3,3032
    5d20:	0c000000 	jal	0 <func_8006F0A0>
    5d24:	afa50060 	sw	a1,96(sp)
    5d28:	0c000000 	jal	0 <func_8006F0A0>
    5d2c:	8e040000 	lw	a0,0(s0)
    5d30:	860f07b2 	lh	t7,1970(s0)
    5d34:	241803e8 	li	t8,1000
    5d38:	8fa90028 	lw	t1,40(sp)
    5d3c:	030fc823 	subu	t9,t8,t7
    5d40:	44992000 	mtc1	t9,$f4
    5d44:	3c010000 	lui	at,0x0
    5d48:	c4280000 	lwc1	$f8,0(at)
    5d4c:	468021a0 	cvt.s.w	$f6,$f4
    5d50:	912a1e14 	lbu	t2,7700(t1)
    5d54:	2401001d 	li	at,29
    5d58:	8fa80060 	lw	t0,96(sp)
    5d5c:	3c0cfa00 	lui	t4,0xfa00
    5d60:	27a40050 	addiu	a0,sp,80
    5d64:	46083002 	mul.s	$f0,$f6,$f8
    5d68:	15410004 	bne	t2,at,5d7c <func_80074D6C+0xb0>
    5d6c:	3c060000 	lui	a2,0x0
    5d70:	3c013f80 	lui	at,0x3f80
    5d74:	44810000 	mtc1	at,$f0
    5d78:	00000000 	nop
    5d7c:	3c013f80 	lui	at,0x3f80
    5d80:	44811000 	mtc1	at,$f2
    5d84:	24c60000 	addiu	a2,a2,0
    5d88:	24070be3 	li	a3,3043
    5d8c:	4600103c 	c.lt.s	$f2,$f0
    5d90:	00000000 	nop
    5d94:	45020003 	bc1fl	5da4 <func_80074D6C+0xd8>
    5d98:	8d0202c0 	lw	v0,704(t0)
    5d9c:	46001006 	mov.s	$f0,$f2
    5da0:	8d0202c0 	lw	v0,704(t0)
    5da4:	3c01437f 	lui	at,0x437f
    5da8:	44815000 	mtc1	at,$f10
    5dac:	244b0008 	addiu	t3,v0,8
    5db0:	ad0b02c0 	sw	t3,704(t0)
    5db4:	46005402 	mul.s	$f16,$f10,$f0
    5db8:	ac4c0000 	sw	t4,0(v0)
    5dbc:	921907af 	lbu	t9,1967(s0)
    5dc0:	920e07b1 	lbu	t6,1969(s0)
    5dc4:	920d07b0 	lbu	t5,1968(s0)
    5dc8:	00195600 	sll	t2,t9,0x18
    5dcc:	000ec200 	sll	t8,t6,0x8
    5dd0:	030a5825 	or	t3,t8,t2
    5dd4:	24180001 	li	t8,1
    5dd8:	4459f800 	cfc1	t9,$31
    5ddc:	44d8f800 	ctc1	t8,$31
    5de0:	000d7400 	sll	t6,t5,0x10
    5de4:	016e7825 	or	t7,t3,t6
    5de8:	460084a4 	cvt.w.s	$f18,$f16
    5dec:	3c014f00 	lui	at,0x4f00
    5df0:	3c0bf64f 	lui	t3,0xf64f
    5df4:	4458f800 	cfc1	t8,$31
    5df8:	00000000 	nop
    5dfc:	33180078 	andi	t8,t8,0x78
    5e00:	53000013 	beqzl	t8,5e50 <func_80074D6C+0x184>
    5e04:	44189000 	mfc1	t8,$f18
    5e08:	44819000 	mtc1	at,$f18
    5e0c:	24180001 	li	t8,1
    5e10:	46128481 	sub.s	$f18,$f16,$f18
    5e14:	44d8f800 	ctc1	t8,$31
    5e18:	00000000 	nop
    5e1c:	460094a4 	cvt.w.s	$f18,$f18
    5e20:	4458f800 	cfc1	t8,$31
    5e24:	00000000 	nop
    5e28:	33180078 	andi	t8,t8,0x78
    5e2c:	17000005 	bnez	t8,5e44 <func_80074D6C+0x178>
    5e30:	00000000 	nop
    5e34:	44189000 	mfc1	t8,$f18
    5e38:	3c018000 	lui	at,0x8000
    5e3c:	10000007 	b	5e5c <func_80074D6C+0x190>
    5e40:	0301c025 	or	t8,t8,at
    5e44:	10000005 	b	5e5c <func_80074D6C+0x190>
    5e48:	2418ffff 	li	t8,-1
    5e4c:	44189000 	mfc1	t8,$f18
    5e50:	00000000 	nop
    5e54:	0700fffb 	bltz	t8,5e44 <func_80074D6C+0x178>
    5e58:	00000000 	nop
    5e5c:	330a00ff 	andi	t2,t8,0xff
    5e60:	01ea6025 	or	t4,t7,t2
    5e64:	ac4c0004 	sw	t4,4(v0)
    5e68:	8d0302c0 	lw	v1,704(t0)
    5e6c:	356bc3bc 	ori	t3,t3,0xc3bc
    5e70:	44d9f800 	ctc1	t9,$31
    5e74:	246d0008 	addiu	t5,v1,8
    5e78:	ad0d02c0 	sw	t5,704(t0)
    5e7c:	ac600004 	sw	zero,4(v1)
    5e80:	ac6b0000 	sw	t3,0(v1)
    5e84:	8e050000 	lw	a1,0(s0)
    5e88:	0c000000 	jal	0 <func_8006F0A0>
    5e8c:	afa90028 	sw	t1,40(sp)
    5e90:	8fa90028 	lw	t1,40(sp)
    5e94:	912e0b0d 	lbu	t6,2829(t1)
    5e98:	3c060000 	lui	a2,0x0
    5e9c:	24c60000 	addiu	a2,a2,0
    5ea0:	11c00027 	beqz	t6,5f40 <func_80074D6C+0x274>
    5ea4:	27a40034 	addiu	a0,sp,52
    5ea8:	8e050000 	lw	a1,0(s0)
    5eac:	afa90028 	sw	t1,40(sp)
    5eb0:	24070be8 	li	a3,3048
    5eb4:	0c000000 	jal	0 <func_8006F0A0>
    5eb8:	afa50044 	sw	a1,68(sp)
    5ebc:	0c000000 	jal	0 <func_8006F0A0>
    5ec0:	8e040000 	lw	a0,0(s0)
    5ec4:	8fa80044 	lw	t0,68(sp)
    5ec8:	8fa90028 	lw	t1,40(sp)
    5ecc:	3c18fa00 	lui	t8,0xfa00
    5ed0:	8d0302c0 	lw	v1,704(t0)
    5ed4:	3c060000 	lui	a2,0x0
    5ed8:	24c60000 	addiu	a2,a2,0
    5edc:	24790008 	addiu	t9,v1,8
    5ee0:	ad1902c0 	sw	t9,704(t0)
    5ee4:	ac780000 	sw	t8,0(v1)
    5ee8:	912d0b0e 	lbu	t5,2830(t1)
    5eec:	912a0b11 	lbu	t2,2833(t1)
    5ef0:	91380b0f 	lbu	t8,2831(t1)
    5ef4:	000d5e00 	sll	t3,t5,0x18
    5ef8:	014b7025 	or	t6,t2,t3
    5efc:	912a0b10 	lbu	t2,2832(t1)
    5f00:	00187c00 	sll	t7,t8,0x10
    5f04:	01cf6025 	or	t4,t6,t7
    5f08:	000a5a00 	sll	t3,t2,0x8
    5f0c:	018bc825 	or	t9,t4,t3
    5f10:	ac790004 	sw	t9,4(v1)
    5f14:	8d0302c0 	lw	v1,704(t0)
    5f18:	3c0ef64f 	lui	t6,0xf64f
    5f1c:	35cec3bc 	ori	t6,t6,0xc3bc
    5f20:	24780008 	addiu	t8,v1,8
    5f24:	ad1802c0 	sw	t8,704(t0)
    5f28:	ac600004 	sw	zero,4(v1)
    5f2c:	ac6e0000 	sw	t6,0(v1)
    5f30:	8e050000 	lw	a1,0(s0)
    5f34:	27a40034 	addiu	a0,sp,52
    5f38:	0c000000 	jal	0 <func_8006F0A0>
    5f3c:	24070bf0 	li	a3,3056
    5f40:	8fbf001c 	lw	ra,28(sp)
    5f44:	8fb00018 	lw	s0,24(sp)
    5f48:	27bd0068 	addiu	sp,sp,104
    5f4c:	03e00008 	jr	ra
    5f50:	00000000 	nop

00005f54 <func_80074FF4>:
    5f54:	27bdffc8 	addiu	sp,sp,-56
    5f58:	afbf0014 	sw	ra,20(sp)
    5f5c:	afa40038 	sw	a0,56(sp)
    5f60:	afa5003c 	sw	a1,60(sp)
    5f64:	afa60040 	sw	a2,64(sp)
    5f68:	afa70044 	sw	a3,68(sp)
    5f6c:	8c850000 	lw	a1,0(a0)
    5f70:	3c060000 	lui	a2,0x0
    5f74:	24c60000 	addiu	a2,a2,0
    5f78:	27a40024 	addiu	a0,sp,36
    5f7c:	24070bfd 	li	a3,3069
    5f80:	0c000000 	jal	0 <func_8006F0A0>
    5f84:	afa50034 	sw	a1,52(sp)
    5f88:	8faf0038 	lw	t7,56(sp)
    5f8c:	0c000000 	jal	0 <func_8006F0A0>
    5f90:	8de40000 	lw	a0,0(t7)
    5f94:	8fa80034 	lw	t0,52(sp)
    5f98:	3c19fa00 	lui	t9,0xfa00
    5f9c:	3c060000 	lui	a2,0x0
    5fa0:	8d0302c0 	lw	v1,704(t0)
    5fa4:	24c60000 	addiu	a2,a2,0
    5fa8:	27a40024 	addiu	a0,sp,36
    5fac:	24780008 	addiu	t8,v1,8
    5fb0:	ad1802c0 	sw	t8,704(t0)
    5fb4:	ac790000 	sw	t9,0(v1)
    5fb8:	93ad0043 	lbu	t5,67(sp)
    5fbc:	93aa003f 	lbu	t2,63(sp)
    5fc0:	93b90047 	lbu	t9,71(sp)
    5fc4:	000d7400 	sll	t6,t5,0x10
    5fc8:	93ad004b 	lbu	t5,75(sp)
    5fcc:	000a5e00 	sll	t3,t2,0x18
    5fd0:	016e7825 	or	t7,t3,t6
    5fd4:	00194a00 	sll	t1,t9,0x8
    5fd8:	01e95025 	or	t2,t7,t1
    5fdc:	014d5825 	or	t3,t2,t5
    5fe0:	ac6b0004 	sw	t3,4(v1)
    5fe4:	8d0302c0 	lw	v1,704(t0)
    5fe8:	3c18f64f 	lui	t8,0xf64f
    5fec:	3718c3bc 	ori	t8,t8,0xc3bc
    5ff0:	246e0008 	addiu	t6,v1,8
    5ff4:	ad0e02c0 	sw	t6,704(t0)
    5ff8:	ac600004 	sw	zero,4(v1)
    5ffc:	ac780000 	sw	t8,0(v1)
    6000:	8fb90038 	lw	t9,56(sp)
    6004:	24070c07 	li	a3,3079
    6008:	0c000000 	jal	0 <func_8006F0A0>
    600c:	8f250000 	lw	a1,0(t9)
    6010:	8fbf0014 	lw	ra,20(sp)
    6014:	27bd0038 	addiu	sp,sp,56
    6018:	03e00008 	jr	ra
    601c:	00000000 	nop

00006020 <func_800750C0>:
    6020:	27bdffe0 	addiu	sp,sp,-32
    6024:	3c010001 	lui	at,0x1
    6028:	afbf001c 	sw	ra,28(sp)
    602c:	afa40020 	sw	a0,32(sp)
    6030:	00811021 	addu	v0,a0,at
    6034:	904e0b03 	lbu	t6,2819(v0)
    6038:	3c030000 	lui	v1,0x0
    603c:	24630000 	addiu	v1,v1,0
    6040:	11c000a6 	beqz	t6,62dc <func_800750C0+0x2bc>
    6044:	00000000 	nop
    6048:	90640000 	lbu	a0,0(v1)
    604c:	24010001 	li	at,1
    6050:	10800008 	beqz	a0,6074 <func_800750C0+0x54>
    6054:	00000000 	nop
    6058:	1081005e 	beq	a0,at,61d4 <func_800750C0+0x1b4>
    605c:	3c080000 	lui	t0,0x0
    6060:	24050002 	li	a1,2
    6064:	5085007e 	beql	a0,a1,6260 <func_800750C0+0x240>
    6068:	84440ab0 	lh	a0,2736(v0)
    606c:	1000009b 	b	62dc <func_800750C0+0x2bc>
    6070:	00000000 	nop
    6074:	0c000000 	jal	0 <func_8006F0A0>
    6078:	00000000 	nop
    607c:	3c010000 	lui	at,0x0
    6080:	c4240000 	lwc1	$f4,0(at)
    6084:	3c030000 	lui	v1,0x0
    6088:	24630000 	addiu	v1,v1,0
    608c:	4604003c 	c.lt.s	$f0,$f4
    6090:	3c014248 	lui	at,0x4248
    6094:	45000006 	bc1f	60b0 <func_800750C0+0x90>
    6098:	00000000 	nop
    609c:	c4660008 	lwc1	$f6,8(v1)
    60a0:	44814000 	mtc1	at,$f8
    60a4:	00000000 	nop
    60a8:	46083280 	add.s	$f10,$f6,$f8
    60ac:	e46a0008 	swc1	$f10,8(v1)
    60b0:	0c000000 	jal	0 <func_8006F0A0>
    60b4:	00000000 	nop
    60b8:	3c030000 	lui	v1,0x0
    60bc:	24630000 	addiu	v1,v1,0
    60c0:	c4700008 	lwc1	$f16,8(v1)
    60c4:	3c0143fa 	lui	at,0x43fa
    60c8:	44812000 	mtc1	at,$f4
    60cc:	46008480 	add.s	$f18,$f16,$f0
    60d0:	240400c8 	li	a0,200
    60d4:	240f00ff 	li	t7,255
    60d8:	e4720008 	swc1	$f18,8(v1)
    60dc:	c4660008 	lwc1	$f6,8(v1)
    60e0:	4606203c 	c.lt.s	$f4,$f6
    60e4:	00000000 	nop
    60e8:	45000038 	bc1f	61cc <func_800750C0+0x1ac>
    60ec:	00000000 	nop
    60f0:	44804000 	mtc1	zero,$f8
    60f4:	a0640001 	sb	a0,1(v1)
    60f8:	a0640002 	sb	a0,2(v1)
    60fc:	a06f0003 	sb	t7,3(v1)
    6100:	a0640004 	sb	a0,4(v1)
    6104:	0c000000 	jal	0 <func_8006F0A0>
    6108:	e4680008 	swc1	$f8,8(v1)
    610c:	3c010000 	lui	at,0x0
    6110:	c42a0000 	lwc1	$f10,0(at)
    6114:	24050001 	li	a1,1
    6118:	3c014f00 	lui	at,0x4f00
    611c:	460a0402 	mul.s	$f16,$f0,$f10
    6120:	8fa40020 	lw	a0,32(sp)
    6124:	4458f800 	cfc1	t8,$31
    6128:	44c5f800 	ctc1	a1,$31
    612c:	00000000 	nop
    6130:	460084a4 	cvt.w.s	$f18,$f16
    6134:	4445f800 	cfc1	a1,$31
    6138:	00000000 	nop
    613c:	30a50078 	andi	a1,a1,0x78
    6140:	50a00013 	beqzl	a1,6190 <func_800750C0+0x170>
    6144:	44059000 	mfc1	a1,$f18
    6148:	44819000 	mtc1	at,$f18
    614c:	24050001 	li	a1,1
    6150:	46128481 	sub.s	$f18,$f16,$f18
    6154:	44c5f800 	ctc1	a1,$31
    6158:	00000000 	nop
    615c:	460094a4 	cvt.w.s	$f18,$f18
    6160:	4445f800 	cfc1	a1,$31
    6164:	00000000 	nop
    6168:	30a50078 	andi	a1,a1,0x78
    616c:	14a00005 	bnez	a1,6184 <func_800750C0+0x164>
    6170:	00000000 	nop
    6174:	44059000 	mfc1	a1,$f18
    6178:	3c018000 	lui	at,0x8000
    617c:	10000007 	b	619c <func_800750C0+0x17c>
    6180:	00a12825 	or	a1,a1,at
    6184:	10000005 	b	619c <func_800750C0+0x17c>
    6188:	2405ffff 	li	a1,-1
    618c:	44059000 	mfc1	a1,$f18
    6190:	00000000 	nop
    6194:	04a0fffb 	bltz	a1,6184 <func_800750C0+0x164>
    6198:	00000000 	nop
    619c:	44d8f800 	ctc1	t8,$31
    61a0:	24a50001 	addiu	a1,a1,1
    61a4:	0c000000 	jal	0 <func_8006F0A0>
    61a8:	30a500ff 	andi	a1,a1,0xff
    61ac:	3c030000 	lui	v1,0x0
    61b0:	24630000 	addiu	v1,v1,0
    61b4:	90790000 	lbu	t9,0(v1)
    61b8:	3c080000 	lui	t0,0x0
    61bc:	25080000 	addiu	t0,t0,0
    61c0:	27290001 	addiu	t1,t9,1
    61c4:	a5000000 	sh	zero,0(t0)
    61c8:	a0690000 	sb	t1,0(v1)
    61cc:	10000043 	b	62dc <func_800750C0+0x2bc>
    61d0:	00000000 	nop
    61d4:	240400c8 	li	a0,200
    61d8:	240a00ff 	li	t2,255
    61dc:	a0640001 	sb	a0,1(v1)
    61e0:	a0640002 	sb	a0,2(v1)
    61e4:	a06a0003 	sb	t2,3(v1)
    61e8:	844b0ab0 	lh	t3,2736(v0)
    61ec:	844d0ab2 	lh	t5,2738(v0)
    61f0:	844f0ab4 	lh	t7,2740(v0)
    61f4:	256c0050 	addiu	t4,t3,80
    61f8:	25ae0050 	addiu	t6,t5,80
    61fc:	25f80064 	addiu	t8,t7,100
    6200:	25080000 	addiu	t0,t0,0
    6204:	a44c0ab0 	sh	t4,2736(v0)
    6208:	a44e0ab2 	sh	t6,2738(v0)
    620c:	a4580ab4 	sh	t8,2740(v0)
    6210:	85190000 	lh	t9,0(t0)
    6214:	906b0004 	lbu	t3,4(v1)
    6218:	2404000f 	li	a0,15
    621c:	27290064 	addiu	t1,t9,100
    6220:	a5090000 	sh	t1,0(t0)
    6224:	850a0000 	lh	t2,0(t0)
    6228:	00002825 	move	a1,zero
    622c:	014b082a 	slt	at,t2,t3
    6230:	1420002a 	bnez	at,62dc <func_800750C0+0x2bc>
    6234:	00000000 	nop
    6238:	0c000000 	jal	0 <func_8006F0A0>
    623c:	00003025 	move	a2,zero
    6240:	3c030000 	lui	v1,0x0
    6244:	24630000 	addiu	v1,v1,0
    6248:	906c0000 	lbu	t4,0(v1)
    624c:	a0600004 	sb	zero,4(v1)
    6250:	258d0001 	addiu	t5,t4,1
    6254:	10000021 	b	62dc <func_800750C0+0x2bc>
    6258:	a06d0000 	sb	t5,0(v1)
    625c:	84440ab0 	lh	a0,2736(v0)
    6260:	3c080000 	lui	t0,0x0
    6264:	25080000 	addiu	t0,t0,0
    6268:	58800007 	blezl	a0,6288 <func_800750C0+0x268>
    626c:	84440ab4 	lh	a0,2740(v0)
    6270:	844f0ab2 	lh	t7,2738(v0)
    6274:	248efff6 	addiu	t6,a0,-10
    6278:	a44e0ab0 	sh	t6,2736(v0)
    627c:	25f8fff6 	addiu	t8,t7,-10
    6280:	a4580ab2 	sh	t8,2738(v0)
    6284:	84440ab4 	lh	a0,2740(v0)
    6288:	18800002 	blez	a0,6294 <func_800750C0+0x274>
    628c:	2499fff6 	addiu	t9,a0,-10
    6290:	a4590ab4 	sh	t9,2740(v0)
    6294:	85090000 	lh	t1,0(t0)
    6298:	906b0004 	lbu	t3,4(v1)
    629c:	252afff6 	addiu	t2,t1,-10
    62a0:	a50a0000 	sh	t2,0(t0)
    62a4:	850c0000 	lh	t4,0(t0)
    62a8:	016c082a 	slt	at,t3,t4
    62ac:	1420000b 	bnez	at,62dc <func_800750C0+0x2bc>
    62b0:	00000000 	nop
    62b4:	a4400ab0 	sh	zero,2736(v0)
    62b8:	a4400ab2 	sh	zero,2738(v0)
    62bc:	a4400ab4 	sh	zero,2740(v0)
    62c0:	a0600000 	sb	zero,0(v1)
    62c4:	904d0b03 	lbu	t5,2819(v0)
    62c8:	8fae0020 	lw	t6,32(sp)
    62cc:	3c010001 	lui	at,0x1
    62d0:	14ad0002 	bne	a1,t5,62dc <func_800750C0+0x2bc>
    62d4:	002e0821 	addu	at,at,t6
    62d8:	a0200b03 	sb	zero,2819(at)
    62dc:	3c030000 	lui	v1,0x0
    62e0:	24630000 	addiu	v1,v1,0
    62e4:	906f0000 	lbu	t7,0(v1)
    62e8:	3c080000 	lui	t0,0x0
    62ec:	25080000 	addiu	t0,t0,0
    62f0:	51e00009 	beqzl	t7,6318 <func_800750C0+0x2f8>
    62f4:	8fbf001c 	lw	ra,28(sp)
    62f8:	85180000 	lh	t8,0(t0)
    62fc:	8fa40020 	lw	a0,32(sp)
    6300:	90650001 	lbu	a1,1(v1)
    6304:	90660002 	lbu	a2,2(v1)
    6308:	90670003 	lbu	a3,3(v1)
    630c:	0c000000 	jal	0 <func_8006F0A0>
    6310:	afb80010 	sw	t8,16(sp)
    6314:	8fbf001c 	lw	ra,28(sp)
    6318:	27bd0020 	addiu	sp,sp,32
    631c:	03e00008 	jr	ra
    6320:	00000000 	nop

00006324 <func_800753C4>:
    6324:	afa50004 	sw	a1,4(sp)
    6328:	3c070000 	lui	a3,0x0
    632c:	30a500ff 	andi	a1,a1,0xff
    6330:	afa40000 	sw	a0,0(sp)
    6334:	00001025 	move	v0,zero
    6338:	24e70000 	addiu	a3,a3,0
    633c:	00001825 	move	v1,zero
    6340:	240600ff 	li	a2,255
    6344:	00037140 	sll	t6,v1,0x5
    6348:	00ee2021 	addu	a0,a3,t6
    634c:	908f0000 	lbu	t7,0(a0)
    6350:	24630001 	addiu	v1,v1,1
    6354:	00031c00 	sll	v1,v1,0x10
    6358:	14cf0007 	bne	a2,t7,6378 <func_800753C4+0x54>
    635c:	00031c03 	sra	v1,v1,0x10
    6360:	24420001 	addiu	v0,v0,1
    6364:	00021400 	sll	v0,v0,0x10
    6368:	00021403 	sra	v0,v0,0x10
    636c:	0045082a 	slt	at,v0,a1
    6370:	10200004 	beqz	at,6384 <func_800753C4+0x60>
    6374:	a0800000 	sb	zero,0(a0)
    6378:	28610003 	slti	at,v1,3
    637c:	5420fff2 	bnezl	at,6348 <func_800753C4+0x24>
    6380:	00037140 	sll	t6,v1,0x5
    6384:	03e00008 	jr	ra
    6388:	00000000 	nop

0000638c <func_8007542C>:
    638c:	27bdff20 	addiu	sp,sp,-224
    6390:	3c0f0000 	lui	t7,0x0
    6394:	afbf0064 	sw	ra,100(sp)
    6398:	afb70060 	sw	s7,96(sp)
    639c:	afb6005c 	sw	s6,92(sp)
    63a0:	afb50058 	sw	s5,88(sp)
    63a4:	afb40054 	sw	s4,84(sp)
    63a8:	afb30050 	sw	s3,80(sp)
    63ac:	afb2004c 	sw	s2,76(sp)
    63b0:	afb10048 	sw	s1,72(sp)
    63b4:	afb00044 	sw	s0,68(sp)
    63b8:	f7be0038 	sdc1	$f30,56(sp)
    63bc:	f7bc0030 	sdc1	$f28,48(sp)
    63c0:	f7ba0028 	sdc1	$f26,40(sp)
    63c4:	f7b80020 	sdc1	$f24,32(sp)
    63c8:	f7b60018 	sdc1	$f22,24(sp)
    63cc:	f7b40010 	sdc1	$f20,16(sp)
    63d0:	afa500e4 	sw	a1,228(sp)
    63d4:	25ef0000 	addiu	t7,t7,0
    63d8:	8df90000 	lw	t9,0(t7)
    63dc:	27ae00b8 	addiu	t6,sp,184
    63e0:	8df80004 	lw	t8,4(t7)
    63e4:	add90000 	sw	t9,0(t6)
    63e8:	8df90008 	lw	t9,8(t7)
    63ec:	3c090000 	lui	t1,0x0
    63f0:	25290000 	addiu	t1,t1,0
    63f4:	add80004 	sw	t8,4(t6)
    63f8:	add90008 	sw	t9,8(t6)
    63fc:	8d2b0000 	lw	t3,0(t1)
    6400:	27a800ac 	addiu	t0,sp,172
    6404:	8d2a0004 	lw	t2,4(t1)
    6408:	ad0b0000 	sw	t3,0(t0)
    640c:	8d2b0008 	lw	t3,8(t1)
    6410:	ad0a0004 	sw	t2,4(t0)
    6414:	00809825 	move	s3,a0
    6418:	ad0b0008 	sw	t3,8(t0)
    641c:	8c850000 	lw	a1,0(a0)
    6420:	3c060000 	lui	a2,0x0
    6424:	24c60000 	addiu	a2,a2,0
    6428:	27a40098 	addiu	a0,sp,152
    642c:	24070cb5 	li	a3,3253
    6430:	0c000000 	jal	0 <func_8006F0A0>
    6434:	00a09025 	move	s2,a1
    6438:	3c010000 	lui	at,0x0
    643c:	c43e0000 	lwc1	$f30,0(at)
    6440:	3c010000 	lui	at,0x0
    6444:	c43c0000 	lwc1	$f28,0(at)
    6448:	3c0141b0 	lui	at,0x41b0
    644c:	4481d000 	mtc1	at,$f26
    6450:	3c010000 	lui	at,0x0
    6454:	c4380000 	lwc1	$f24,0(at)
    6458:	3c013f00 	lui	at,0x3f00
    645c:	4481b000 	mtc1	at,$f22
    6460:	0000a025 	move	s4,zero
    6464:	24170002 	li	s7,2
    6468:	3c0d0000 	lui	t5,0x0
    646c:	25ad0000 	addiu	t5,t5,0
    6470:	00146140 	sll	t4,s4,0x5
    6474:	018d8021 	addu	s0,t4,t5
    6478:	92030000 	lbu	v1,0(s0)
    647c:	24010001 	li	at,1
    6480:	50600008 	beqzl	v1,64a4 <func_8007542C+0x118>
    6484:	c66e00e0 	lwc1	$f14,224(s3)
    6488:	50610047 	beql	v1,at,65a8 <func_8007542C+0x21c>
    648c:	920c001f 	lbu	t4,31(s0)
    6490:	5077004f 	beql	v1,s7,65d0 <func_8007542C+0x244>
    6494:	9202001e 	lbu	v0,30(s0)
    6498:	10000055 	b	65f0 <func_8007542C+0x264>
    649c:	00000000 	nop
    64a0:	c66e00e0 	lwc1	$f14,224(s3)
    64a4:	c66400ec 	lwc1	$f4,236(s3)
    64a8:	c66600f4 	lwc1	$f6,244(s3)
    64ac:	c66800e8 	lwc1	$f8,232(s3)
    64b0:	460e2081 	sub.s	$f2,$f4,$f14
    64b4:	46083301 	sub.s	$f12,$f6,$f8
    64b8:	46021282 	mul.s	$f10,$f2,$f2
    64bc:	00000000 	nop
    64c0:	460c6402 	mul.s	$f16,$f12,$f12
    64c4:	46105000 	add.s	$f0,$f10,$f16
    64c8:	46000004 	sqrt.s	$f0,$f0
    64cc:	46001483 	div.s	$f18,$f2,$f0
    64d0:	46006503 	div.s	$f20,$f12,$f0
    64d4:	461c9102 	mul.s	$f4,$f18,$f28
    64d8:	46047180 	add.s	$f6,$f14,$f4
    64dc:	0c000000 	jal	0 <func_8006F0A0>
    64e0:	e6060010 	swc1	$f6,16(s0)
    64e4:	3c01447a 	lui	at,0x447a
    64e8:	44814000 	mtc1	at,$f8
    64ec:	3c01457a 	lui	at,0x457a
    64f0:	44818000 	mtc1	at,$f16
    64f4:	46080282 	mul.s	$f10,$f0,$f8
    64f8:	46105480 	add.s	$f18,$f10,$f16
    64fc:	461ca182 	mul.s	$f6,$f20,$f28
    6500:	e6120014 	swc1	$f18,20(s0)
    6504:	c66400e8 	lwc1	$f4,232(s3)
    6508:	46062200 	add.s	$f8,$f4,$f6
    650c:	0c000000 	jal	0 <func_8006F0A0>
    6510:	e6080018 	swc1	$f8,24(s0)
    6514:	46160281 	sub.s	$f10,$f0,$f22
    6518:	44809000 	mtc1	zero,$f18
    651c:	461e5402 	mul.s	$f16,$f10,$f30
    6520:	e6120008 	swc1	$f18,8(s0)
    6524:	0c000000 	jal	0 <func_8006F0A0>
    6528:	e6100004 	swc1	$f16,4(s0)
    652c:	46160101 	sub.s	$f4,$f0,$f22
    6530:	a200001e 	sb	zero,30(s0)
    6534:	461e2182 	mul.s	$f6,$f4,$f30
    6538:	0c000000 	jal	0 <func_8006F0A0>
    653c:	e606000c 	swc1	$f6,12(s0)
    6540:	46160201 	sub.s	$f8,$f0,$f22
    6544:	3c014220 	lui	at,0x4220
    6548:	44815000 	mtc1	at,$f10
    654c:	00000000 	nop
    6550:	460a4402 	mul.s	$f16,$f8,$f10
    6554:	4600848d 	trunc.w.s	$f18,$f16
    6558:	440f9000 	mfc1	t7,$f18
    655c:	0c000000 	jal	0 <func_8006F0A0>
    6560:	a20f001c 	sb	t7,28(s0)
    6564:	46160101 	sub.s	$f4,$f0,$f22
    6568:	3c014220 	lui	at,0x4220
    656c:	44813000 	mtc1	at,$f6
    6570:	920a0000 	lbu	t2,0(s0)
    6574:	00144080 	sll	t0,s4,0x2
    6578:	46062202 	mul.s	$f8,$f4,$f6
    657c:	01144023 	subu	t0,t0,s4
    6580:	25090003 	addiu	t1,t0,3
    6584:	254b0001 	addiu	t3,t2,1
    6588:	a209001f 	sb	t1,31(s0)
    658c:	a20b0000 	sb	t3,0(s0)
    6590:	316300ff 	andi	v1,t3,0xff
    6594:	4600428d 	trunc.w.s	$f10,$f8
    6598:	44195000 	mfc1	t9,$f10
    659c:	10000014 	b	65f0 <func_8007542C+0x264>
    65a0:	a219001d 	sb	t9,29(s0)
    65a4:	920c001f 	lbu	t4,31(s0)
    65a8:	258dffff 	addiu	t5,t4,-1
    65ac:	31ae00ff 	andi	t6,t5,0xff
    65b0:	1dc00004 	bgtz	t6,65c4 <func_8007542C+0x238>
    65b4:	a20d001f 	sb	t5,31(s0)
    65b8:	920f0000 	lbu	t7,0(s0)
    65bc:	25f80001 	addiu	t8,t7,1
    65c0:	a2180000 	sb	t8,0(s0)
    65c4:	1000000a 	b	65f0 <func_8007542C+0x264>
    65c8:	92030000 	lbu	v1,0(s0)
    65cc:	9202001e 	lbu	v0,30(s0)
    65d0:	240800ff 	li	t0,255
    65d4:	28410007 	slti	at,v0,7
    65d8:	10200003 	beqz	at,65e8 <func_8007542C+0x25c>
    65dc:	24590001 	addiu	t9,v0,1
    65e0:	10000002 	b	65ec <func_8007542C+0x260>
    65e4:	a219001e 	sb	t9,30(s0)
    65e8:	a2080000 	sb	t0,0(s0)
    65ec:	92030000 	lbu	v1,0(s0)
    65f0:	16e30069 	bne	s7,v1,6798 <func_8007542C+0x40c>
    65f4:	00003825 	move	a3,zero
    65f8:	c6100004 	lwc1	$f16,4(s0)
    65fc:	c6120010 	lwc1	$f18,16(s0)
    6600:	c608000c 	lwc1	$f8,12(s0)
    6604:	c60a0018 	lwc1	$f10,24(s0)
    6608:	46128300 	add.s	$f12,$f16,$f18
    660c:	c6040008 	lwc1	$f4,8(s0)
    6610:	c6060014 	lwc1	$f6,20(s0)
    6614:	460a4400 	add.s	$f16,$f8,$f10
    6618:	3c150100 	lui	s5,0x100
    661c:	3c160000 	lui	s6,0x0
    6620:	26d60000 	addiu	s6,s6,0
    6624:	44068000 	mfc1	a2,$f16
    6628:	26b50000 	addiu	s5,s5,0
    662c:	0c000000 	jal	0 <func_8006F0A0>
    6630:	46062380 	add.s	$f14,$f4,$f6
    6634:	8209001c 	lb	t1,28(s0)
    6638:	24050001 	li	a1,1
    663c:	44899000 	mtc1	t1,$f18
    6640:	00000000 	nop
    6644:	46809120 	cvt.s.w	$f4,$f18
    6648:	46182302 	mul.s	$f12,$f4,$f24
    664c:	0c000000 	jal	0 <func_8006F0A0>
    6650:	00000000 	nop
    6654:	820a001d 	lb	t2,29(s0)
    6658:	24050001 	li	a1,1
    665c:	448a3000 	mtc1	t2,$f6
    6660:	00000000 	nop
    6664:	46803220 	cvt.s.w	$f8,$f6
    6668:	46184302 	mul.s	$f12,$f8,$f24
    666c:	0c000000 	jal	0 <func_8006F0A0>
    6670:	00000000 	nop
    6674:	3c0142c8 	lui	at,0x42c8
    6678:	44817000 	mtc1	at,$f14
    667c:	4406d000 	mfc1	a2,$f26
    6680:	4600d306 	mov.s	$f12,$f26
    6684:	0c000000 	jal	0 <func_8006F0A0>
    6688:	24070001 	li	a3,1
    668c:	8e4202d0 	lw	v0,720(s2)
    6690:	3c0cfa00 	lui	t4,0xfa00
    6694:	240dff80 	li	t5,-128
    6698:	244b0008 	addiu	t3,v0,8
    669c:	ae4b02d0 	sw	t3,720(s2)
    66a0:	ac4c0000 	sw	t4,0(v0)
    66a4:	ac4d0004 	sw	t5,4(v0)
    66a8:	8e4202d0 	lw	v0,720(s2)
    66ac:	3c1800ff 	lui	t8,0xff
    66b0:	3718ff80 	ori	t8,t8,0xff80
    66b4:	244e0008 	addiu	t6,v0,8
    66b8:	ae4e02d0 	sw	t6,720(s2)
    66bc:	3c0ffb00 	lui	t7,0xfb00
    66c0:	ac4f0000 	sw	t7,0(v0)
    66c4:	ac580004 	sw	t8,4(v0)
    66c8:	8e4202d0 	lw	v0,720(s2)
    66cc:	3c08da38 	lui	t0,0xda38
    66d0:	35080003 	ori	t0,t0,0x3
    66d4:	24590008 	addiu	t9,v0,8
    66d8:	ae5902d0 	sw	t9,720(s2)
    66dc:	3c050000 	lui	a1,0x0
    66e0:	ac480000 	sw	t0,0(v0)
    66e4:	8e640000 	lw	a0,0(s3)
    66e8:	24a50000 	addiu	a1,a1,0
    66ec:	24060d05 	li	a2,3333
    66f0:	0c000000 	jal	0 <func_8006F0A0>
    66f4:	00408825 	move	s1,v0
    66f8:	ae220004 	sw	v0,4(s1)
    66fc:	8e4202d0 	lw	v0,720(s2)
    6700:	3c0adb06 	lui	t2,0xdb06
    6704:	354a0020 	ori	t2,t2,0x20
    6708:	24490008 	addiu	t1,v0,8
    670c:	ae4902d0 	sw	t1,720(s2)
    6710:	ac4a0000 	sw	t2,0(v0)
    6714:	920b001e 	lbu	t3,30(s0)
    6718:	3c040000 	lui	a0,0x0
    671c:	3c190000 	lui	t9,0x0
    6720:	000b6080 	sll	t4,t3,0x2
    6724:	008c2021 	addu	a0,a0,t4
    6728:	8c840000 	lw	a0,0(a0)
    672c:	3c0100ff 	lui	at,0xff
    6730:	3421ffff 	ori	at,at,0xffff
    6734:	00047100 	sll	t6,a0,0x4
    6738:	000e7f02 	srl	t7,t6,0x1c
    673c:	000fc080 	sll	t8,t7,0x2
    6740:	0338c821 	addu	t9,t9,t8
    6744:	8f390000 	lw	t9,0(t9)
    6748:	00816824 	and	t5,a0,at
    674c:	3c018000 	lui	at,0x8000
    6750:	01b94021 	addu	t0,t5,t9
    6754:	01014821 	addu	t1,t0,at
    6758:	ac490004 	sw	t1,4(v0)
    675c:	0c000000 	jal	0 <func_8006F0A0>
    6760:	8e640000 	lw	a0,0(s3)
    6764:	8e4202d0 	lw	v0,720(s2)
    6768:	3c0bda38 	lui	t3,0xda38
    676c:	356b0001 	ori	t3,t3,0x1
    6770:	244a0008 	addiu	t2,v0,8
    6774:	ae4a02d0 	sw	t2,720(s2)
    6778:	ac550004 	sw	s5,4(v0)
    677c:	ac4b0000 	sw	t3,0(v0)
    6780:	8e4202d0 	lw	v0,720(s2)
    6784:	3c0ede00 	lui	t6,0xde00
    6788:	244c0008 	addiu	t4,v0,8
    678c:	ae4c02d0 	sw	t4,720(s2)
    6790:	ac560004 	sw	s6,4(v0)
    6794:	ac4e0000 	sw	t6,0(v0)
    6798:	26940001 	addiu	s4,s4,1
    679c:	0014a400 	sll	s4,s4,0x10
    67a0:	0014a403 	sra	s4,s4,0x10
    67a4:	2a810003 	slti	at,s4,3
    67a8:	1420ff2f 	bnez	at,6468 <func_8007542C+0xdc>
    67ac:	00000000 	nop
    67b0:	3c060000 	lui	a2,0x0
    67b4:	24c60000 	addiu	a2,a2,0
    67b8:	27a40098 	addiu	a0,sp,152
    67bc:	8e650000 	lw	a1,0(s3)
    67c0:	0c000000 	jal	0 <func_8006F0A0>
    67c4:	24070d19 	li	a3,3353
    67c8:	8fbf0064 	lw	ra,100(sp)
    67cc:	d7b40010 	ldc1	$f20,16(sp)
    67d0:	d7b60018 	ldc1	$f22,24(sp)
    67d4:	d7b80020 	ldc1	$f24,32(sp)
    67d8:	d7ba0028 	ldc1	$f26,40(sp)
    67dc:	d7bc0030 	ldc1	$f28,48(sp)
    67e0:	d7be0038 	ldc1	$f30,56(sp)
    67e4:	8fb00044 	lw	s0,68(sp)
    67e8:	8fb10048 	lw	s1,72(sp)
    67ec:	8fb2004c 	lw	s2,76(sp)
    67f0:	8fb30050 	lw	s3,80(sp)
    67f4:	8fb40054 	lw	s4,84(sp)
    67f8:	8fb50058 	lw	s5,88(sp)
    67fc:	8fb6005c 	lw	s6,92(sp)
    6800:	8fb70060 	lw	s7,96(sp)
    6804:	03e00008 	jr	ra
    6808:	27bd00e0 	addiu	sp,sp,224

0000680c <func_800758AC>:
    680c:	27bdffe0 	addiu	sp,sp,-32
    6810:	3c010001 	lui	at,0x1
    6814:	afbf0014 	sw	ra,20(sp)
    6818:	afa40020 	sw	a0,32(sp)
    681c:	3c080000 	lui	t0,0x0
    6820:	00240821 	addu	at,at,a0
    6824:	240e00ff 	li	t6,255
    6828:	25080000 	addiu	t0,t0,0
    682c:	a02e0b04 	sb	t6,2820(at)
    6830:	8d020000 	lw	v0,0(t0)
    6834:	240104de 	li	at,1246
    6838:	10410003 	beq	v0,at,6848 <func_800758AC+0x3c>
    683c:	240105e0 	li	at,1504
    6840:	54410007 	bnel	v0,at,6860 <func_800758AC+0x54>
    6844:	9503140e 	lhu	v1,5134(t0)
    6848:	0c000000 	jal	0 <func_8006F0A0>
    684c:	24040004 	li	a0,4
    6850:	3c030000 	lui	v1,0x0
    6854:	10000071 	b	6a1c <func_800758AC+0x210>
    6858:	9463140e 	lhu	v1,5134(v1)
    685c:	9503140e 	lhu	v1,5134(t0)
    6860:	8fb80020 	lw	t8,32(sp)
    6864:	5060000c 	beqzl	v1,6898 <func_800758AC+0x8c>
    6868:	930407a4 	lbu	a0,1956(t8)
    686c:	0c000000 	jal	0 <func_8006F0A0>
    6870:	00000000 	nop
    6874:	14400003 	bnez	v0,6884 <func_800758AC+0x78>
    6878:	3c020000 	lui	v0,0x0
    687c:	0c000000 	jal	0 <func_8006F0A0>
    6880:	9444140e 	lhu	a0,5134(v0)
    6884:	3c010000 	lui	at,0x0
    6888:	a420140e 	sh	zero,5134(at)
    688c:	10000063 	b	6a1c <func_800758AC+0x210>
    6890:	00001825 	move	v1,zero
    6894:	930407a4 	lbu	a0,1956(t8)
    6898:	2401007f 	li	at,127
    689c:	8fa90020 	lw	t1,32(sp)
    68a0:	1481000d 	bne	a0,at,68d8 <func_800758AC+0xcc>
    68a4:	00803825 	move	a3,a0
    68a8:	930507a5 	lbu	a1,1957(t8)
    68ac:	24010013 	li	at,19
    68b0:	50a10079 	beql	a1,at,6a98 <func_800758AC+0x28c>
    68b4:	8fbf0014 	lw	ra,20(sp)
    68b8:	911913e1 	lbu	t9,5089(t0)
    68bc:	10b90057 	beq	a1,t9,6a1c <func_800758AC+0x210>
    68c0:	00000000 	nop
    68c4:	0c000000 	jal	0 <func_8006F0A0>
    68c8:	30a400ff 	andi	a0,a1,0xff
    68cc:	3c030000 	lui	v1,0x0
    68d0:	10000052 	b	6a1c <func_800758AC+0x210>
    68d4:	9463140e 	lhu	v1,5134(v1)
    68d8:	912507a5 	lbu	a1,1957(t1)
    68dc:	24010013 	li	at,19
    68e0:	14a10011 	bne	a1,at,6928 <func_800758AC+0x11c>
    68e4:	00a03025 	move	a2,a1
    68e8:	3c040000 	lui	a0,0x0
    68ec:	24840000 	addiu	a0,a0,0
    68f0:	910613e0 	lbu	a2,5088(t0)
    68f4:	0c000000 	jal	0 <func_8006F0A0>
    68f8:	00e02825 	move	a1,a3
    68fc:	8faa0020 	lw	t2,32(sp)
    6900:	3c0b0000 	lui	t3,0x0
    6904:	916b13e0 	lbu	t3,5088(t3)
    6908:	914407a4 	lbu	a0,1956(t2)
    690c:	108b0003 	beq	a0,t3,691c <func_800758AC+0x110>
    6910:	00000000 	nop
    6914:	0c000000 	jal	0 <func_8006F0A0>
    6918:	00000000 	nop
    691c:	3c030000 	lui	v1,0x0
    6920:	1000003e 	b	6a1c <func_800758AC+0x210>
    6924:	9463140e 	lhu	v1,5134(v1)
    6928:	9502000c 	lhu	v0,12(t0)
    692c:	28414aab 	slti	at,v0,19115
    6930:	14200012 	bnez	at,697c <func_800758AC+0x170>
    6934:	3401b71d 	li	at,0xb71d
    6938:	0041082a 	slt	at,v0,at
    693c:	50200010 	beqzl	at,6980 <func_800758AC+0x174>
    6940:	910f13e1 	lbu	t7,5089(t0)
    6944:	910c13e0 	lbu	t4,5088(t0)
    6948:	50ec0006 	beql	a3,t4,6964 <func_800758AC+0x158>
    694c:	8fae0020 	lw	t6,32(sp)
    6950:	0c000000 	jal	0 <func_8006F0A0>
    6954:	00000000 	nop
    6958:	3c080000 	lui	t0,0x0
    695c:	25080000 	addiu	t0,t0,0
    6960:	8fae0020 	lw	t6,32(sp)
    6964:	3c010001 	lui	at,0x1
    6968:	240d0001 	li	t5,1
    696c:	002e0821 	addu	at,at,t6
    6970:	a02d0b04 	sb	t5,2820(at)
    6974:	10000029 	b	6a1c <func_800758AC+0x210>
    6978:	9503140e 	lhu	v1,5134(t0)
    697c:	910f13e1 	lbu	t7,5089(t0)
    6980:	50cf0008 	beql	a2,t7,69a4 <func_800758AC+0x198>
    6984:	3401b71d 	li	at,0xb71d
    6988:	0c000000 	jal	0 <func_8006F0A0>
    698c:	30a400ff 	andi	a0,a1,0xff
    6990:	3c020000 	lui	v0,0x0
    6994:	3c080000 	lui	t0,0x0
    6998:	25080000 	addiu	t0,t0,0
    699c:	9442000c 	lhu	v0,12(v0)
    69a0:	3401b71d 	li	at,0xb71d
    69a4:	0041082a 	slt	at,v0,at
    69a8:	1420000a 	bnez	at,69d4 <func_800758AC+0x1c8>
    69ac:	3401caac 	li	at,0xcaac
    69b0:	0041082a 	slt	at,v0,at
    69b4:	10200007 	beqz	at,69d4 <func_800758AC+0x1c8>
    69b8:	8fb90020 	lw	t9,32(sp)
    69bc:	3c010001 	lui	at,0x1
    69c0:	00390821 	addu	at,at,t9
    69c4:	24180003 	li	t8,3
    69c8:	a0380b04 	sb	t8,2820(at)
    69cc:	10000013 	b	6a1c <func_800758AC+0x210>
    69d0:	9503140e 	lhu	v1,5134(t0)
    69d4:	3401caad 	li	at,0xcaad
    69d8:	0041082a 	slt	at,v0,at
    69dc:	10200004 	beqz	at,69f0 <func_800758AC+0x1e4>
    69e0:	8faa0020 	lw	t2,32(sp)
    69e4:	28414555 	slti	at,v0,17749
    69e8:	10200007 	beqz	at,6a08 <func_800758AC+0x1fc>
    69ec:	8fac0020 	lw	t4,32(sp)
    69f0:	3c010001 	lui	at,0x1
    69f4:	002a0821 	addu	at,at,t2
    69f8:	24090005 	li	t1,5
    69fc:	a0290b04 	sb	t1,2820(at)
    6a00:	10000006 	b	6a1c <func_800758AC+0x210>
    6a04:	9503140e 	lhu	v1,5134(t0)
    6a08:	3c010001 	lui	at,0x1
    6a0c:	002c0821 	addu	at,at,t4
    6a10:	240b0007 	li	t3,7
    6a14:	a02b0b04 	sb	t3,2820(at)
    6a18:	9503140e 	lhu	v1,5134(t0)
    6a1c:	3c040000 	lui	a0,0x0
    6a20:	24840000 	addiu	a0,a0,0
    6a24:	0c000000 	jal	0 <func_8006F0A0>
    6a28:	3065ffff 	andi	a1,v1,0xffff
    6a2c:	3c020000 	lui	v0,0x0
    6a30:	3c040000 	lui	a0,0x0
    6a34:	24840000 	addiu	a0,a0,0
    6a38:	0c000000 	jal	0 <func_8006F0A0>
    6a3c:	9445140e 	lhu	a1,5134(v0)
    6a40:	8fad0020 	lw	t5,32(sp)
    6a44:	3c040000 	lui	a0,0x0
    6a48:	24840000 	addiu	a0,a0,0
    6a4c:	0c000000 	jal	0 <func_8006F0A0>
    6a50:	91a507a4 	lbu	a1,1956(t5)
    6a54:	8fae0020 	lw	t6,32(sp)
    6a58:	3c040000 	lui	a0,0x0
    6a5c:	24840000 	addiu	a0,a0,0
    6a60:	0c000000 	jal	0 <func_8006F0A0>
    6a64:	91c507a5 	lbu	a1,1957(t6)
    6a68:	8fa20020 	lw	v0,32(sp)
    6a6c:	3c010001 	lui	at,0x1
    6a70:	3c040000 	lui	a0,0x0
    6a74:	00411021 	addu	v0,v0,at
    6a78:	90450b04 	lbu	a1,2820(v0)
    6a7c:	afa20018 	sw	v0,24(sp)
    6a80:	0c000000 	jal	0 <func_8006F0A0>
    6a84:	24840000 	addiu	a0,a0,0
    6a88:	8fa20018 	lw	v0,24(sp)
    6a8c:	0c000000 	jal	0 <func_8006F0A0>
    6a90:	80441cc0 	lb	a0,7360(v0)
    6a94:	8fbf0014 	lw	ra,20(sp)
    6a98:	27bd0020 	addiu	sp,sp,32
    6a9c:	03e00008 	jr	ra
    6aa0:	00000000 	nop

00006aa4 <func_80075B44>:
    6aa4:	27bdffe0 	addiu	sp,sp,-32
    6aa8:	afb00014 	sw	s0,20(sp)
    6aac:	3c010001 	lui	at,0x1
    6ab0:	afbf001c 	sw	ra,28(sp)
    6ab4:	afb10018 	sw	s1,24(sp)
    6ab8:	00818021 	addu	s0,a0,at
    6abc:	92020b04 	lbu	v0,2820(s0)
    6ac0:	00808825 	move	s1,a0
    6ac4:	2c410009 	sltiu	at,v0,9
    6ac8:	102000ba 	beqz	at,6db4 <L80075E34+0x20>
    6acc:	00027080 	sll	t6,v0,0x2
    6ad0:	3c010000 	lui	at,0x0
    6ad4:	002e0821 	addu	at,at,t6
    6ad8:	8c2e0000 	lw	t6,0(at)
    6adc:	01c00008 	jr	t6
    6ae0:	00000000 	nop

00006ae4 <L80075B84>:
    6ae4:	24040056 	li	a0,86
    6ae8:	24050001 	li	a1,1
    6aec:	0c000000 	jal	0 <func_8006F0A0>
    6af0:	00003025 	move	a2,zero
    6af4:	920f0b12 	lbu	t7,2834(s0)
    6af8:	55e0000a 	bnezl	t7,6b24 <L80075B84+0x40>
    6afc:	92190b04 	lbu	t9,2820(s0)
    6b00:	92180b16 	lbu	t8,2838(s0)
    6b04:	3c040000 	lui	a0,0x0
    6b08:	57000006 	bnezl	t8,6b24 <L80075B84+0x40>
    6b0c:	92190b04 	lbu	t9,2820(s0)
    6b10:	0c000000 	jal	0 <func_8006F0A0>
    6b14:	24840000 	addiu	a0,a0,0
    6b18:	0c000000 	jal	0 <func_8006F0A0>
    6b1c:	922407a4 	lbu	a0,1956(s1)
    6b20:	92190b04 	lbu	t9,2820(s0)
    6b24:	3c010001 	lui	at,0x1
    6b28:	00310821 	addu	at,at,s1
    6b2c:	27280001 	addiu	t0,t9,1
    6b30:	100000a0 	b	6db4 <L80075E34+0x20>
    6b34:	a0280b04 	sb	t0,2820(at)

00006b38 <L80075BD8>:
    6b38:	3c030000 	lui	v1,0x0
    6b3c:	24630000 	addiu	v1,v1,0
    6b40:	9469000c 	lhu	t1,12(v1)
    6b44:	3401b71d 	li	at,0xb71d
    6b48:	0121082a 	slt	at,t1,at
    6b4c:	5420009a 	bnezl	at,6db8 <L80075E34+0x24>
    6b50:	8fbf001c 	lw	ra,28(sp)
    6b54:	920a0b12 	lbu	t2,2834(s0)
    6b58:	55400009 	bnezl	t2,6b80 <L80075BD8+0x48>
    6b5c:	3c010001 	lui	at,0x1
    6b60:	920b0b16 	lbu	t3,2838(s0)
    6b64:	3c0410f0 	lui	a0,0x10f0
    6b68:	55600005 	bnezl	t3,6b80 <L80075BD8+0x48>
    6b6c:	3c010001 	lui	at,0x1
    6b70:	0c000000 	jal	0 <func_8006F0A0>
    6b74:	348400ff 	ori	a0,a0,0xff
    6b78:	92020b04 	lbu	v0,2820(s0)
    6b7c:	3c010001 	lui	at,0x1
    6b80:	00310821 	addu	at,at,s1
    6b84:	244c0001 	addiu	t4,v0,1
    6b88:	1000008a 	b	6db4 <L80075E34+0x20>
    6b8c:	a02c0b04 	sb	t4,2820(at)

00006b90 <L80075C30>:
    6b90:	3c030000 	lui	v1,0x0
    6b94:	24630000 	addiu	v1,v1,0
    6b98:	946d000c 	lhu	t5,12(v1)
    6b9c:	3401c001 	li	at,0xc001
    6ba0:	01a1082a 	slt	at,t5,at
    6ba4:	54200084 	bnezl	at,6db8 <L80075E34+0x24>
    6ba8:	8fbf001c 	lw	ra,28(sp)
    6bac:	0c000000 	jal	0 <func_8006F0A0>
    6bb0:	240428ae 	li	a0,10414
    6bb4:	920e0b04 	lbu	t6,2820(s0)
    6bb8:	3c010001 	lui	at,0x1
    6bbc:	00310821 	addu	at,at,s1
    6bc0:	25cf0001 	addiu	t7,t6,1
    6bc4:	1000007b 	b	6db4 <L80075E34+0x20>
    6bc8:	a02f0b04 	sb	t7,2820(at)

00006bcc <L80075C6C>:
    6bcc:	92180b12 	lbu	t8,2834(s0)
    6bd0:	5700000c 	bnezl	t8,6c04 <L80075C6C+0x38>
    6bd4:	3c010001 	lui	at,0x1
    6bd8:	92190b16 	lbu	t9,2838(s0)
    6bdc:	57200009 	bnezl	t9,6c04 <L80075C6C+0x38>
    6be0:	3c010001 	lui	at,0x1
    6be4:	0c000000 	jal	0 <func_8006F0A0>
    6be8:	922407a5 	lbu	a0,1957(s1)
    6bec:	24040001 	li	a0,1
    6bf0:	24050001 	li	a1,1
    6bf4:	0c000000 	jal	0 <func_8006F0A0>
    6bf8:	24060001 	li	a2,1
    6bfc:	92020b04 	lbu	v0,2820(s0)
    6c00:	3c010001 	lui	at,0x1
    6c04:	00310821 	addu	at,at,s1
    6c08:	24480001 	addiu	t0,v0,1
    6c0c:	10000069 	b	6db4 <L80075E34+0x20>
    6c10:	a0280b04 	sb	t0,2820(at)

00006c14 <L80075CB4>:
    6c14:	3c030000 	lui	v1,0x0
    6c18:	24630000 	addiu	v1,v1,0
    6c1c:	9469000c 	lhu	t1,12(v1)
    6c20:	3401caac 	li	at,0xcaac
    6c24:	244a0001 	addiu	t2,v0,1
    6c28:	0121082a 	slt	at,t1,at
    6c2c:	14200061 	bnez	at,6db4 <L80075E34+0x20>
    6c30:	3c010001 	lui	at,0x1
    6c34:	00310821 	addu	at,at,s1
    6c38:	1000005e 	b	6db4 <L80075E34+0x20>
    6c3c:	a02a0b04 	sb	t2,2820(at)

00006c40 <L80075CE0>:
    6c40:	24040001 	li	a0,1
    6c44:	24050001 	li	a1,1
    6c48:	0c000000 	jal	0 <func_8006F0A0>
    6c4c:	00003025 	move	a2,zero
    6c50:	920b0b12 	lbu	t3,2834(s0)
    6c54:	55600009 	bnezl	t3,6c7c <L80075CE0+0x3c>
    6c58:	920d0b04 	lbu	t5,2820(s0)
    6c5c:	920c0b16 	lbu	t4,2838(s0)
    6c60:	24040024 	li	a0,36
    6c64:	24050001 	li	a1,1
    6c68:	55800004 	bnezl	t4,6c7c <L80075CE0+0x3c>
    6c6c:	920d0b04 	lbu	t5,2820(s0)
    6c70:	0c000000 	jal	0 <func_8006F0A0>
    6c74:	24060001 	li	a2,1
    6c78:	920d0b04 	lbu	t5,2820(s0)
    6c7c:	3c010001 	lui	at,0x1
    6c80:	00310821 	addu	at,at,s1
    6c84:	25ae0001 	addiu	t6,t5,1
    6c88:	1000004a 	b	6db4 <L80075E34+0x20>
    6c8c:	a02e0b04 	sb	t6,2820(at)

00006c90 <L80075D30>:
    6c90:	3c030000 	lui	v1,0x0
    6c94:	24630000 	addiu	v1,v1,0
    6c98:	9462000c 	lhu	v0,12(v1)
    6c9c:	3401caac 	li	at,0xcaac
    6ca0:	0041082a 	slt	at,v0,at
    6ca4:	10200043 	beqz	at,6db4 <L80075E34+0x20>
    6ca8:	28414556 	slti	at,v0,17750
    6cac:	14200041 	bnez	at,6db4 <L80075E34+0x20>
    6cb0:	24090001 	li	t1,1
    6cb4:	8c6f0014 	lw	t7,20(v1)
    6cb8:	8c790018 	lw	t9,24(v1)
    6cbc:	a069141c 	sb	t1,5148(v1)
    6cc0:	25f80001 	addiu	t8,t7,1
    6cc4:	27280001 	addiu	t0,t9,1
    6cc8:	ac780014 	sw	t8,20(v1)
    6ccc:	ac680018 	sw	t0,24(v1)
    6cd0:	0c000000 	jal	0 <func_8006F0A0>
    6cd4:	24042813 	li	a0,10259
    6cd8:	02202025 	move	a0,s1
    6cdc:	24050021 	li	a1,33
    6ce0:	0c000000 	jal	0 <func_8006F0A0>
    6ce4:	24060022 	li	a2,34
    6ce8:	14400006 	bnez	v0,6d04 <L80075D30+0x74>
    6cec:	02202025 	move	a0,s1
    6cf0:	2405002d 	li	a1,45
    6cf4:	0c000000 	jal	0 <func_8006F0A0>
    6cf8:	2406002e 	li	a2,46
    6cfc:	5040000c 	beqzl	v0,6d30 <L80075D30+0xa0>
    6d00:	920b0b04 	lbu	t3,2820(s0)
    6d04:	922a1d6c 	lbu	t2,7532(s1)
    6d08:	55400009 	bnezl	t2,6d30 <L80075D30+0xa0>
    6d0c:	920b0b04 	lbu	t3,2820(s0)
    6d10:	0c000000 	jal	0 <func_8006F0A0>
    6d14:	02202025 	move	a0,s1
    6d18:	14400004 	bnez	v0,6d2c <L80075D30+0x9c>
    6d1c:	02202025 	move	a0,s1
    6d20:	24053066 	li	a1,12390
    6d24:	0c000000 	jal	0 <func_8006F0A0>
    6d28:	00003025 	move	a2,zero
    6d2c:	920b0b04 	lbu	t3,2820(s0)
    6d30:	3c010001 	lui	at,0x1
    6d34:	00310821 	addu	at,at,s1
    6d38:	256c0001 	addiu	t4,t3,1
    6d3c:	1000001d 	b	6db4 <L80075E34+0x20>
    6d40:	a02c0b04 	sb	t4,2820(at)

00006d44 <L80075DE4>:
    6d44:	24040024 	li	a0,36
    6d48:	24050001 	li	a1,1
    6d4c:	0c000000 	jal	0 <func_8006F0A0>
    6d50:	00003025 	move	a2,zero
    6d54:	920d0b12 	lbu	t5,2834(s0)
    6d58:	55a00009 	bnezl	t5,6d80 <L80075DE4+0x3c>
    6d5c:	920f0b04 	lbu	t7,2820(s0)
    6d60:	920e0b16 	lbu	t6,2838(s0)
    6d64:	24040056 	li	a0,86
    6d68:	24050001 	li	a1,1
    6d6c:	55c00004 	bnezl	t6,6d80 <L80075DE4+0x3c>
    6d70:	920f0b04 	lbu	t7,2820(s0)
    6d74:	0c000000 	jal	0 <func_8006F0A0>
    6d78:	24060001 	li	a2,1
    6d7c:	920f0b04 	lbu	t7,2820(s0)
    6d80:	3c010001 	lui	at,0x1
    6d84:	00310821 	addu	at,at,s1
    6d88:	25f80001 	addiu	t8,t7,1
    6d8c:	10000009 	b	6db4 <L80075E34+0x20>
    6d90:	a0380b04 	sb	t8,2820(at)

00006d94 <L80075E34>:
    6d94:	3c030000 	lui	v1,0x0
    6d98:	24630000 	addiu	v1,v1,0
    6d9c:	9479000c 	lhu	t9,12(v1)
    6da0:	2b214aac 	slti	at,t9,19116
    6da4:	14200003 	bnez	at,6db4 <L80075E34+0x20>
    6da8:	3c010001 	lui	at,0x1
    6dac:	00310821 	addu	at,at,s1
    6db0:	a0200b04 	sb	zero,2820(at)
    6db4:	8fbf001c 	lw	ra,28(sp)
    6db8:	8fb00014 	lw	s0,20(sp)
    6dbc:	8fb10018 	lw	s1,24(sp)
    6dc0:	03e00008 	jr	ra
    6dc4:	27bd0020 	addiu	sp,sp,32

00006dc8 <func_80075E68>:
    6dc8:	3c0e0000 	lui	t6,0x0
    6dcc:	91ce0000 	lbu	t6,0(t6)
    6dd0:	27bdffb8 	addiu	sp,sp,-72
    6dd4:	afbf0034 	sw	ra,52(sp)
    6dd8:	11c00022 	beqz	t6,6e64 <func_80075E68+0x9c>
    6ddc:	3c020000 	lui	v0,0x0
    6de0:	24420000 	addiu	v0,v0,0
    6de4:	c4440000 	lwc1	$f4,0(v0)
    6de8:	c4460004 	lwc1	$f6,4(v0)
    6dec:	c4480008 	lwc1	$f8,8(v0)
    6df0:	27af003c 	addiu	t7,sp,60
    6df4:	e7a4003c 	swc1	$f4,60(sp)
    6df8:	e7a60040 	swc1	$f6,64(sp)
    6dfc:	e7a80044 	swc1	$f8,68(sp)
    6e00:	8df90000 	lw	t9,0(t7)
    6e04:	8c870000 	lw	a3,0(a0)
    6e08:	3c010001 	lui	at,0x1
    6e0c:	afb90010 	sw	t9,16(sp)
    6e10:	8df80004 	lw	t8,4(t7)
    6e14:	34210a24 	ori	at,at,0xa24
    6e18:	00812821 	addu	a1,a0,at
    6e1c:	afb80014 	sw	t8,20(sp)
    6e20:	8df90008 	lw	t9,8(t7)
    6e24:	3c010000 	lui	at,0x0
    6e28:	3c080000 	lui	t0,0x0
    6e2c:	3c090000 	lui	t1,0x0
    6e30:	3c0a0000 	lui	t2,0x0
    6e34:	854a0000 	lh	t2,0(t2)
    6e38:	85290000 	lh	t1,0(t1)
    6e3c:	85080000 	lh	t0,0(t0)
    6e40:	c42a0000 	lwc1	$f10,0(at)
    6e44:	afa0002c 	sw	zero,44(sp)
    6e48:	248600b8 	addiu	a2,a0,184
    6e4c:	afb90018 	sw	t9,24(sp)
    6e50:	afaa0028 	sw	t2,40(sp)
    6e54:	afa90020 	sw	t1,32(sp)
    6e58:	afa8001c 	sw	t0,28(sp)
    6e5c:	0c000000 	jal	0 <func_8006F0A0>
    6e60:	e7aa0024 	swc1	$f10,36(sp)
    6e64:	8fbf0034 	lw	ra,52(sp)
    6e68:	27bd0048 	addiu	sp,sp,72
    6e6c:	03e00008 	jr	ra
    6e70:	00000000 	nop

00006e74 <func_80075F14>:
    6e74:	27bdffc8 	addiu	sp,sp,-56
    6e78:	afbf0024 	sw	ra,36(sp)
    6e7c:	afa40038 	sw	a0,56(sp)
    6e80:	3c014120 	lui	at,0x4120
    6e84:	44810000 	mtc1	at,$f0
    6e88:	8c831c44 	lw	v1,7236(a0)
    6e8c:	3c010000 	lui	at,0x0
    6e90:	a0200000 	sb	zero,0(at)
    6e94:	c4640024 	lwc1	$f4,36(v1)
    6e98:	3c040000 	lui	a0,0x0
    6e9c:	240a00ff 	li	t2,255
    6ea0:	4600218d 	trunc.w.s	$f6,$f4
    6ea4:	c4640028 	lwc1	$f4,40(v1)
    6ea8:	24840000 	addiu	a0,a0,0
    6eac:	44183000 	mfc1	t8,$f6
    6eb0:	4600218d 	trunc.w.s	$f6,$f4
    6eb4:	c464002c 	lwc1	$f4,44(v1)
    6eb8:	0018cc00 	sll	t9,t8,0x10
    6ebc:	00194403 	sra	t0,t9,0x10
    6ec0:	44884000 	mtc1	t0,$f8
    6ec4:	440b3000 	mfc1	t3,$f6
    6ec8:	4600218d 	trunc.w.s	$f6,$f4
    6ecc:	afaa001c 	sw	t2,28(sp)
    6ed0:	000b6400 	sll	t4,t3,0x10
    6ed4:	468042a0 	cvt.s.w	$f10,$f8
    6ed8:	000c6c03 	sra	t5,t4,0x10
    6edc:	448d4000 	mtc1	t5,$f8
    6ee0:	44183000 	mfc1	t8,$f6
    6ee4:	afa00018 	sw	zero,24(sp)
    6ee8:	afa00014 	sw	zero,20(sp)
    6eec:	46005401 	sub.s	$f16,$f10,$f0
    6ef0:	0018cc00 	sll	t9,t8,0x10
    6ef4:	00194403 	sra	t0,t9,0x10
    6ef8:	468042a0 	cvt.s.w	$f10,$f8
    6efc:	44884000 	mtc1	t0,$f8
    6f00:	afa00010 	sw	zero,16(sp)
    6f04:	afa30030 	sw	v1,48(sp)
    6f08:	4600848d 	trunc.w.s	$f18,$f16
    6f0c:	46005400 	add.s	$f16,$f10,$f0
    6f10:	44059000 	mfc1	a1,$f18
    6f14:	468042a0 	cvt.s.w	$f10,$f8
    6f18:	00052c00 	sll	a1,a1,0x10
    6f1c:	00052c03 	sra	a1,a1,0x10
    6f20:	4600848d 	trunc.w.s	$f18,$f16
    6f24:	46005401 	sub.s	$f16,$f10,$f0
    6f28:	44069000 	mfc1	a2,$f18
    6f2c:	4600848d 	trunc.w.s	$f18,$f16
    6f30:	00063400 	sll	a2,a2,0x10
    6f34:	00063403 	sra	a2,a2,0x10
    6f38:	44079000 	mfc1	a3,$f18
    6f3c:	00000000 	nop
    6f40:	00073c00 	sll	a3,a3,0x10
    6f44:	0c000000 	jal	0 <func_8006F0A0>
    6f48:	00073c03 	sra	a3,a3,0x10
    6f4c:	8fa40038 	lw	a0,56(sp)
    6f50:	3c060000 	lui	a2,0x0
    6f54:	24c60000 	addiu	a2,a2,0
    6f58:	248507a8 	addiu	a1,a0,1960
    6f5c:	0c000000 	jal	0 <func_8006F0A0>
    6f60:	afa5002c 	sw	a1,44(sp)
    6f64:	3c014120 	lui	at,0x4120
    6f68:	44810000 	mtc1	at,$f0
    6f6c:	8fa30030 	lw	v1,48(sp)
    6f70:	3c010000 	lui	at,0x0
    6f74:	ac220000 	sw	v0,0(at)
    6f78:	c4640024 	lwc1	$f4,36(v1)
    6f7c:	3c040000 	lui	a0,0x0
    6f80:	241800ff 	li	t8,255
    6f84:	4600218d 	trunc.w.s	$f6,$f4
    6f88:	c4640028 	lwc1	$f4,40(v1)
    6f8c:	24840000 	addiu	a0,a0,0
    6f90:	440c3000 	mfc1	t4,$f6
    6f94:	4600218d 	trunc.w.s	$f6,$f4
    6f98:	c464002c 	lwc1	$f4,44(v1)
    6f9c:	000c6c00 	sll	t5,t4,0x10
    6fa0:	000d7403 	sra	t6,t5,0x10
    6fa4:	448e4000 	mtc1	t6,$f8
    6fa8:	44193000 	mfc1	t9,$f6
    6fac:	4600218d 	trunc.w.s	$f6,$f4
    6fb0:	afb8001c 	sw	t8,28(sp)
    6fb4:	00194400 	sll	t0,t9,0x10
    6fb8:	468042a0 	cvt.s.w	$f10,$f8
    6fbc:	00084c03 	sra	t1,t0,0x10
    6fc0:	44894000 	mtc1	t1,$f8
    6fc4:	440c3000 	mfc1	t4,$f6
    6fc8:	afa00018 	sw	zero,24(sp)
    6fcc:	afa00014 	sw	zero,20(sp)
    6fd0:	46005400 	add.s	$f16,$f10,$f0
    6fd4:	000c6c00 	sll	t5,t4,0x10
    6fd8:	000d7403 	sra	t6,t5,0x10
    6fdc:	468042a0 	cvt.s.w	$f10,$f8
    6fe0:	448e4000 	mtc1	t6,$f8
    6fe4:	afa00010 	sw	zero,16(sp)
    6fe8:	4600848d 	trunc.w.s	$f18,$f16
    6fec:	46005400 	add.s	$f16,$f10,$f0
    6ff0:	44059000 	mfc1	a1,$f18
    6ff4:	468042a0 	cvt.s.w	$f10,$f8
    6ff8:	00052c00 	sll	a1,a1,0x10
    6ffc:	00052c03 	sra	a1,a1,0x10
    7000:	4600848d 	trunc.w.s	$f18,$f16
    7004:	46005400 	add.s	$f16,$f10,$f0
    7008:	44069000 	mfc1	a2,$f18
    700c:	4600848d 	trunc.w.s	$f18,$f16
    7010:	00063400 	sll	a2,a2,0x10
    7014:	00063403 	sra	a2,a2,0x10
    7018:	44079000 	mfc1	a3,$f18
    701c:	00000000 	nop
    7020:	00073c00 	sll	a3,a3,0x10
    7024:	0c000000 	jal	0 <func_8006F0A0>
    7028:	00073c03 	sra	a3,a3,0x10
    702c:	3c060000 	lui	a2,0x0
    7030:	24c60000 	addiu	a2,a2,0
    7034:	8fa40038 	lw	a0,56(sp)
    7038:	0c000000 	jal	0 <func_8006F0A0>
    703c:	8fa5002c 	lw	a1,44(sp)
    7040:	8fbf0024 	lw	ra,36(sp)
    7044:	3c010000 	lui	at,0x0
    7048:	ac220000 	sw	v0,0(at)
    704c:	03e00008 	jr	ra
    7050:	27bd0038 	addiu	sp,sp,56

00007054 <func_800760F4>:
    7054:	27bdffc8 	addiu	sp,sp,-56
    7058:	afbf002c 	sw	ra,44(sp)
    705c:	afb00028 	sw	s0,40(sp)
    7060:	8c831c44 	lw	v1,7236(a0)
    7064:	3c014120 	lui	at,0x4120
    7068:	44810000 	mtc1	at,$f0
    706c:	c4640024 	lwc1	$f4,36(v1)
    7070:	3c020000 	lui	v0,0x0
    7074:	90420000 	lbu	v0,0(v0)
    7078:	4600218d 	trunc.w.s	$f6,$f4
    707c:	c4640028 	lwc1	$f4,40(v1)
    7080:	00808025 	move	s0,a0
    7084:	3c040000 	lui	a0,0x0
    7088:	440f3000 	mfc1	t7,$f6
    708c:	4600218d 	trunc.w.s	$f6,$f4
    7090:	c464002c 	lwc1	$f4,44(v1)
    7094:	000fc400 	sll	t8,t7,0x10
    7098:	0018cc03 	sra	t9,t8,0x10
    709c:	44994000 	mtc1	t9,$f8
    70a0:	440a3000 	mfc1	t2,$f6
    70a4:	4600218d 	trunc.w.s	$f6,$f4
    70a8:	240900ff 	li	t1,255
    70ac:	000a5c00 	sll	t3,t2,0x10
    70b0:	468042a0 	cvt.s.w	$f10,$f8
    70b4:	000b6403 	sra	t4,t3,0x10
    70b8:	448c4000 	mtc1	t4,$f8
    70bc:	440f3000 	mfc1	t7,$f6
    70c0:	afa9001c 	sw	t1,28(sp)
    70c4:	24840000 	addiu	a0,a0,0
    70c8:	46005401 	sub.s	$f16,$f10,$f0
    70cc:	000fc400 	sll	t8,t7,0x10
    70d0:	0018cc03 	sra	t9,t8,0x10
    70d4:	468042a0 	cvt.s.w	$f10,$f8
    70d8:	44994000 	mtc1	t9,$f8
    70dc:	afa30034 	sw	v1,52(sp)
    70e0:	afa20018 	sw	v0,24(sp)
    70e4:	afa20014 	sw	v0,20(sp)
    70e8:	4600848d 	trunc.w.s	$f18,$f16
    70ec:	afa20010 	sw	v0,16(sp)
    70f0:	46005400 	add.s	$f16,$f10,$f0
    70f4:	44059000 	mfc1	a1,$f18
    70f8:	468042a0 	cvt.s.w	$f10,$f8
    70fc:	00052c00 	sll	a1,a1,0x10
    7100:	00052c03 	sra	a1,a1,0x10
    7104:	4600848d 	trunc.w.s	$f18,$f16
    7108:	46005401 	sub.s	$f16,$f10,$f0
    710c:	44069000 	mfc1	a2,$f18
    7110:	4600848d 	trunc.w.s	$f18,$f16
    7114:	00063400 	sll	a2,a2,0x10
    7118:	00063403 	sra	a2,a2,0x10
    711c:	44079000 	mfc1	a3,$f18
    7120:	00000000 	nop
    7124:	00073c00 	sll	a3,a3,0x10
    7128:	0c000000 	jal	0 <func_8006F0A0>
    712c:	00073c03 	sra	a3,a3,0x10
    7130:	8fa30034 	lw	v1,52(sp)
    7134:	3c014120 	lui	at,0x4120
    7138:	44810000 	mtc1	at,$f0
    713c:	c4640024 	lwc1	$f4,36(v1)
    7140:	3c020000 	lui	v0,0x0
    7144:	90420000 	lbu	v0,0(v0)
    7148:	4600218d 	trunc.w.s	$f6,$f4
    714c:	c4640028 	lwc1	$f4,40(v1)
    7150:	3c040000 	lui	a0,0x0
    7154:	240f00ff 	li	t7,255
    7158:	440b3000 	mfc1	t3,$f6
    715c:	4600218d 	trunc.w.s	$f6,$f4
    7160:	c464002c 	lwc1	$f4,44(v1)
    7164:	000b6400 	sll	t4,t3,0x10
    7168:	000c6c03 	sra	t5,t4,0x10
    716c:	448d4000 	mtc1	t5,$f8
    7170:	44183000 	mfc1	t8,$f6
    7174:	4600218d 	trunc.w.s	$f6,$f4
    7178:	afaf001c 	sw	t7,28(sp)
    717c:	0018cc00 	sll	t9,t8,0x10
    7180:	468042a0 	cvt.s.w	$f10,$f8
    7184:	00194403 	sra	t0,t9,0x10
    7188:	44884000 	mtc1	t0,$f8
    718c:	440b3000 	mfc1	t3,$f6
    7190:	24840000 	addiu	a0,a0,0
    7194:	afa20018 	sw	v0,24(sp)
    7198:	46005400 	add.s	$f16,$f10,$f0
    719c:	000b6400 	sll	t4,t3,0x10
    71a0:	000c6c03 	sra	t5,t4,0x10
    71a4:	468042a0 	cvt.s.w	$f10,$f8
    71a8:	448d4000 	mtc1	t5,$f8
    71ac:	afa20014 	sw	v0,20(sp)
    71b0:	afa20010 	sw	v0,16(sp)
    71b4:	4600848d 	trunc.w.s	$f18,$f16
    71b8:	46005400 	add.s	$f16,$f10,$f0
    71bc:	44059000 	mfc1	a1,$f18
    71c0:	468042a0 	cvt.s.w	$f10,$f8
    71c4:	00052c00 	sll	a1,a1,0x10
    71c8:	00052c03 	sra	a1,a1,0x10
    71cc:	4600848d 	trunc.w.s	$f18,$f16
    71d0:	46005400 	add.s	$f16,$f10,$f0
    71d4:	44069000 	mfc1	a2,$f18
    71d8:	4600848d 	trunc.w.s	$f18,$f16
    71dc:	00063400 	sll	a2,a2,0x10
    71e0:	00063403 	sra	a2,a2,0x10
    71e4:	44079000 	mfc1	a3,$f18
    71e8:	00000000 	nop
    71ec:	00073c00 	sll	a3,a3,0x10
    71f0:	0c000000 	jal	0 <func_8006F0A0>
    71f4:	00073c03 	sra	a3,a3,0x10
    71f8:	3c030000 	lui	v1,0x0
    71fc:	24630000 	addiu	v1,v1,0
    7200:	90620000 	lbu	v0,0(v1)
    7204:	284100fe 	slti	at,v0,254
    7208:	10200002 	beqz	at,7214 <func_800760F4+0x1c0>
    720c:	24580002 	addiu	t8,v0,2
    7210:	a0780000 	sb	t8,0(v1)
    7214:	0c000000 	jal	0 <func_8006F0A0>
    7218:	02002025 	move	a0,s0
    721c:	3c030000 	lui	v1,0x0
    7220:	10400029 	beqz	v0,72c8 <func_800760F4+0x274>
    7224:	24630000 	addiu	v1,v1,0
    7228:	00001825 	move	v1,zero
    722c:	3c060001 	lui	a2,0x1
    7230:	2405ff01 	li	a1,-255
    7234:	0003c840 	sll	t9,v1,0x1
    7238:	02194021 	addu	t0,s0,t9
    723c:	01061021 	addu	v0,t0,a2
    7240:	84440ab0 	lh	a0,2736(v0)
    7244:	24630001 	addiu	v1,v1,1
    7248:	00031c00 	sll	v1,v1,0x10
    724c:	2881ff02 	slti	at,a0,-254
    7250:	14200006 	bnez	at,726c <func_800760F4+0x218>
    7254:	00031c03 	sra	v1,v1,0x10
    7258:	844a0ab6 	lh	t2,2742(v0)
    725c:	2489fff4 	addiu	t1,a0,-12
    7260:	a4490ab0 	sh	t1,2736(v0)
    7264:	254bfff4 	addiu	t3,t2,-12
    7268:	a44b0ab6 	sh	t3,2742(v0)
    726c:	28610003 	slti	at,v1,3
    7270:	1420fff0 	bnez	at,7234 <func_800760F4+0x1e0>
    7274:	a4450abc 	sh	a1,2748(v0)
    7278:	02061021 	addu	v0,s0,a2
    727c:	84430ac4 	lh	v1,2756(v0)
    7280:	844c0af8 	lh	t4,2808(v0)
    7284:	246eff9c 	addiu	t6,v1,-100
    7288:	01836821 	addu	t5,t4,v1
    728c:	29a10385 	slti	at,t5,901
    7290:	14200003 	bnez	at,72a0 <func_800760F4+0x24c>
    7294:	3c010001 	lui	at,0x1
    7298:	00300821 	addu	at,at,s0
    729c:	a42e0ac4 	sh	t6,2756(at)
    72a0:	84430ac2 	lh	v1,2754(v0)
    72a4:	844f0af6 	lh	t7,2806(v0)
    72a8:	2479fff6 	addiu	t9,v1,-10
    72ac:	01e3c021 	addu	t8,t7,v1
    72b0:	2b0103b7 	slti	at,t8,951
    72b4:	1420000f 	bnez	at,72f4 <func_800760F4+0x2a0>
    72b8:	3c010001 	lui	at,0x1
    72bc:	00300821 	addu	at,at,s0
    72c0:	1000000c 	b	72f4 <func_800760F4+0x2a0>
    72c4:	a4390ac2 	sh	t9,2754(at)
    72c8:	3c010001 	lui	at,0x1
    72cc:	3c060001 	lui	a2,0x1
    72d0:	00300821 	addu	at,at,s0
    72d4:	24080001 	li	t0,1
    72d8:	a0280b05 	sb	t0,2821(at)
    72dc:	02061021 	addu	v0,s0,a2
    72e0:	a0400b06 	sb	zero,2822(v0)
    72e4:	a0400b07 	sb	zero,2823(v0)
    72e8:	a0400b08 	sb	zero,2824(v0)
    72ec:	90690000 	lbu	t1,0(v1)
    72f0:	a0490b09 	sb	t1,2825(v0)
    72f4:	8fbf002c 	lw	ra,44(sp)
    72f8:	8fb00028 	lw	s0,40(sp)
    72fc:	27bd0038 	addiu	sp,sp,56
    7300:	03e00008 	jr	ra
    7304:	00000000 	nop

00007308 <func_800763A8>:
    7308:	27bdffc0 	addiu	sp,sp,-64
    730c:	afb2002c 	sw	s2,44(sp)
    7310:	3c120000 	lui	s2,0x0
    7314:	26520000 	addiu	s2,s2,0
    7318:	92420000 	lbu	v0,0(s2)
    731c:	afbf003c 	sw	ra,60(sp)
    7320:	afb50038 	sw	s5,56(sp)
    7324:	afb40034 	sw	s4,52(sp)
    7328:	afb30030 	sw	s3,48(sp)
    732c:	afb10028 	sw	s1,40(sp)
    7330:	afb00024 	sw	s0,36(sp)
    7334:	28410003 	slti	at,v0,3
    7338:	0080a825 	move	s5,a0
    733c:	14200004 	bnez	at,7350 <func_800763A8+0x48>
    7340:	8c911c44 	lw	s1,7236(a0)
    7344:	244efffd 	addiu	t6,v0,-3
    7348:	10000002 	b	7354 <func_800763A8+0x4c>
    734c:	a24e0000 	sb	t6,0(s2)
    7350:	a2400000 	sb	zero,0(s2)
    7354:	92500000 	lbu	s0,0(s2)
    7358:	24010001 	li	at,1
    735c:	02a02025 	move	a0,s5
    7360:	1601000d 	bne	s0,at,7398 <func_800763A8+0x90>
    7364:	02001025 	move	v0,s0
    7368:	26b007a8 	addiu	s0,s5,1960
    736c:	3c060000 	lui	a2,0x0
    7370:	8cc60000 	lw	a2,0(a2)
    7374:	0c000000 	jal	0 <func_8006F0A0>
    7378:	02002825 	move	a1,s0
    737c:	3c060000 	lui	a2,0x0
    7380:	8cc60000 	lw	a2,0(a2)
    7384:	02a02025 	move	a0,s5
    7388:	0c000000 	jal	0 <func_8006F0A0>
    738c:	02002825 	move	a1,s0
    7390:	10000063 	b	7520 <func_800763A8+0x218>
    7394:	00000000 	nop
    7398:	28410002 	slti	at,v0,2
    739c:	14200060 	bnez	at,7520 <func_800763A8+0x218>
    73a0:	00000000 	nop
    73a4:	c6240024 	lwc1	$f4,36(s1)
    73a8:	3c014120 	lui	at,0x4120
    73ac:	44810000 	mtc1	at,$f0
    73b0:	4600218d 	trunc.w.s	$f6,$f4
    73b4:	c6240028 	lwc1	$f4,40(s1)
    73b8:	3c040000 	lui	a0,0x0
    73bc:	240a00ff 	li	t2,255
    73c0:	44183000 	mfc1	t8,$f6
    73c4:	4600218d 	trunc.w.s	$f6,$f4
    73c8:	c624002c 	lwc1	$f4,44(s1)
    73cc:	0018cc00 	sll	t9,t8,0x10
    73d0:	00194403 	sra	t0,t9,0x10
    73d4:	44884000 	mtc1	t0,$f8
    73d8:	440b3000 	mfc1	t3,$f6
    73dc:	4600218d 	trunc.w.s	$f6,$f4
    73e0:	afaa001c 	sw	t2,28(sp)
    73e4:	000b6400 	sll	t4,t3,0x10
    73e8:	468042a0 	cvt.s.w	$f10,$f8
    73ec:	000c6c03 	sra	t5,t4,0x10
    73f0:	448d4000 	mtc1	t5,$f8
    73f4:	44183000 	mfc1	t8,$f6
    73f8:	afb00018 	sw	s0,24(sp)
    73fc:	afb00014 	sw	s0,20(sp)
    7400:	46005401 	sub.s	$f16,$f10,$f0
    7404:	0018cc00 	sll	t9,t8,0x10
    7408:	00194403 	sra	t0,t9,0x10
    740c:	468042a0 	cvt.s.w	$f10,$f8
    7410:	44884000 	mtc1	t0,$f8
    7414:	afb00010 	sw	s0,16(sp)
    7418:	24840000 	addiu	a0,a0,0
    741c:	4600848d 	trunc.w.s	$f18,$f16
    7420:	46005400 	add.s	$f16,$f10,$f0
    7424:	44059000 	mfc1	a1,$f18
    7428:	468042a0 	cvt.s.w	$f10,$f8
    742c:	00052c00 	sll	a1,a1,0x10
    7430:	00052c03 	sra	a1,a1,0x10
    7434:	4600848d 	trunc.w.s	$f18,$f16
    7438:	46005401 	sub.s	$f16,$f10,$f0
    743c:	44069000 	mfc1	a2,$f18
    7440:	4600848d 	trunc.w.s	$f18,$f16
    7444:	00063400 	sll	a2,a2,0x10
    7448:	00063403 	sra	a2,a2,0x10
    744c:	44079000 	mfc1	a3,$f18
    7450:	00000000 	nop
    7454:	00073c00 	sll	a3,a3,0x10
    7458:	0c000000 	jal	0 <func_8006F0A0>
    745c:	00073c03 	sra	a3,a3,0x10
    7460:	c6240024 	lwc1	$f4,36(s1)
    7464:	3c014120 	lui	at,0x4120
    7468:	44810000 	mtc1	at,$f0
    746c:	4600218d 	trunc.w.s	$f6,$f4
    7470:	c6240028 	lwc1	$f4,40(s1)
    7474:	92500000 	lbu	s0,0(s2)
    7478:	3c040000 	lui	a0,0x0
    747c:	440c3000 	mfc1	t4,$f6
    7480:	4600218d 	trunc.w.s	$f6,$f4
    7484:	c624002c 	lwc1	$f4,44(s1)
    7488:	000c6c00 	sll	t5,t4,0x10
    748c:	000d7403 	sra	t6,t5,0x10
    7490:	448e4000 	mtc1	t6,$f8
    7494:	44193000 	mfc1	t9,$f6
    7498:	4600218d 	trunc.w.s	$f6,$f4
    749c:	241800ff 	li	t8,255
    74a0:	00194400 	sll	t0,t9,0x10
    74a4:	468042a0 	cvt.s.w	$f10,$f8
    74a8:	00084c03 	sra	t1,t0,0x10
    74ac:	44894000 	mtc1	t1,$f8
    74b0:	440c3000 	mfc1	t4,$f6
    74b4:	afb8001c 	sw	t8,28(sp)
    74b8:	24840000 	addiu	a0,a0,0
    74bc:	46005400 	add.s	$f16,$f10,$f0
    74c0:	000c6c00 	sll	t5,t4,0x10
    74c4:	000d7403 	sra	t6,t5,0x10
    74c8:	468042a0 	cvt.s.w	$f10,$f8
    74cc:	448e4000 	mtc1	t6,$f8
    74d0:	afb00018 	sw	s0,24(sp)
    74d4:	afb00014 	sw	s0,20(sp)
    74d8:	afb00010 	sw	s0,16(sp)
    74dc:	4600848d 	trunc.w.s	$f18,$f16
    74e0:	46005400 	add.s	$f16,$f10,$f0
    74e4:	44059000 	mfc1	a1,$f18
    74e8:	468042a0 	cvt.s.w	$f10,$f8
    74ec:	00052c00 	sll	a1,a1,0x10
    74f0:	00052c03 	sra	a1,a1,0x10
    74f4:	4600848d 	trunc.w.s	$f18,$f16
    74f8:	46005400 	add.s	$f16,$f10,$f0
    74fc:	44069000 	mfc1	a2,$f18
    7500:	4600848d 	trunc.w.s	$f18,$f16
    7504:	00063400 	sll	a2,a2,0x10
    7508:	00063403 	sra	a2,a2,0x10
    750c:	44079000 	mfc1	a3,$f18
    7510:	00000000 	nop
    7514:	00073c00 	sll	a3,a3,0x10
    7518:	0c000000 	jal	0 <func_8006F0A0>
    751c:	00073c03 	sra	a3,a3,0x10
    7520:	0c000000 	jal	0 <func_8006F0A0>
    7524:	02a02025 	move	a0,s5
    7528:	10400025 	beqz	v0,75c0 <func_800763A8+0x2b8>
    752c:	3c140001 	lui	s4,0x1
    7530:	3c130001 	lui	s3,0x1
    7534:	3c120001 	lui	s2,0x1
    7538:	36520ab0 	ori	s2,s2,0xab0
    753c:	36730ab6 	ori	s3,s3,0xab6
    7540:	00008025 	move	s0,zero
    7544:	3c140001 	lui	s4,0x1
    7548:	0010c840 	sll	t9,s0,0x1
    754c:	02b98821 	addu	s1,s5,t9
    7550:	24080001 	li	t0,1
    7554:	afa80010 	sw	t0,16(sp)
    7558:	02322021 	addu	a0,s1,s2
    755c:	00002825 	move	a1,zero
    7560:	24060005 	li	a2,5
    7564:	0c000000 	jal	0 <func_8006F0A0>
    7568:	2407000c 	li	a3,12
    756c:	24090001 	li	t1,1
    7570:	afa90010 	sw	t1,16(sp)
    7574:	02332021 	addu	a0,s1,s3
    7578:	00002825 	move	a1,zero
    757c:	24060005 	li	a2,5
    7580:	0c000000 	jal	0 <func_8006F0A0>
    7584:	2407000c 	li	a3,12
    7588:	26100001 	addiu	s0,s0,1
    758c:	00108400 	sll	s0,s0,0x10
    7590:	00108403 	sra	s0,s0,0x10
    7594:	2a010003 	slti	at,s0,3
    7598:	02345021 	addu	t2,s1,s4
    759c:	1420ffea 	bnez	at,7548 <func_800763A8+0x240>
    75a0:	a5400abc 	sh	zero,2748(t2)
    75a4:	3c010001 	lui	at,0x1
    75a8:	00350821 	addu	at,at,s5
    75ac:	a4200ac4 	sh	zero,2756(at)
    75b0:	3c010001 	lui	at,0x1
    75b4:	00350821 	addu	at,at,s5
    75b8:	10000011 	b	7600 <func_800763A8+0x2f8>
    75bc:	a4200ac2 	sh	zero,2754(at)
    75c0:	3c010001 	lui	at,0x1
    75c4:	00350821 	addu	at,at,s5
    75c8:	240b0001 	li	t3,1
    75cc:	a02b0b05 	sb	t3,2821(at)
    75d0:	02b41021 	addu	v0,s5,s4
    75d4:	a0400b06 	sb	zero,2822(v0)
    75d8:	a0400b07 	sb	zero,2823(v0)
    75dc:	a0400b08 	sb	zero,2824(v0)
    75e0:	924c0000 	lbu	t4,0(s2)
    75e4:	3c010001 	lui	at,0x1
    75e8:	00350821 	addu	at,at,s5
    75ec:	a04c0b09 	sb	t4,2825(v0)
    75f0:	924d0000 	lbu	t5,0(s2)
    75f4:	55a00003 	bnezl	t5,7604 <func_800763A8+0x2fc>
    75f8:	8fbf003c 	lw	ra,60(sp)
    75fc:	a0200b05 	sb	zero,2821(at)
    7600:	8fbf003c 	lw	ra,60(sp)
    7604:	8fb00024 	lw	s0,36(sp)
    7608:	8fb10028 	lw	s1,40(sp)
    760c:	8fb2002c 	lw	s2,44(sp)
    7610:	8fb30030 	lw	s3,48(sp)
    7614:	8fb40034 	lw	s4,52(sp)
    7618:	8fb50038 	lw	s5,56(sp)
    761c:	03e00008 	jr	ra
    7620:	27bd0040 	addiu	sp,sp,64

00007624 <func_800766C4>:
    7624:	3c010001 	lui	at,0x1
    7628:	00811021 	addu	v0,a0,at
    762c:	90430b16 	lbu	v1,2838(v0)
    7630:	90450b12 	lbu	a1,2834(v0)
    7634:	306600ff 	andi	a2,v1,0xff
    7638:	0065082a 	slt	at,v1,a1
    763c:	10200003 	beqz	at,764c <func_800766C4+0x28>
    7640:	00000000 	nop
    7644:	10000001 	b	764c <func_800766C4+0x28>
    7648:	30a600ff 	andi	a2,a1,0xff
    764c:	90450b13 	lbu	a1,2835(v0)
    7650:	10c5000c 	beq	a2,a1,7684 <func_800766C4+0x60>
    7654:	00000000 	nop
    7658:	8c8e009c 	lw	t6,156(a0)
    765c:	00a6082a 	slt	at,a1,a2
    7660:	31cf0007 	andi	t7,t6,0x7
    7664:	15e00007 	bnez	t7,7684 <func_800766C4+0x60>
    7668:	00000000 	nop
    766c:	10200004 	beqz	at,7680 <func_800766C4+0x5c>
    7670:	24b9fffe 	addiu	t9,a1,-2
    7674:	24b80002 	addiu	t8,a1,2
    7678:	03e00008 	jr	ra
    767c:	a0580b13 	sb	t8,2835(v0)
    7680:	a0590b13 	sb	t9,2835(v0)
    7684:	03e00008 	jr	ra
    7688:	00000000 	nop

0000768c <func_8007672C>:
    768c:	27bdffa0 	addiu	sp,sp,-96
    7690:	93ae0073 	lbu	t6,115(sp)
    7694:	afb00018 	sw	s0,24(sp)
    7698:	00808025 	move	s0,a0
    769c:	afbf001c 	sw	ra,28(sp)
    76a0:	afa50064 	sw	a1,100(sp)
    76a4:	afa60068 	sw	a2,104(sp)
    76a8:	11c00075 	beqz	t6,7880 <func_8007672C+0x1f4>
    76ac:	afa7006c 	sw	a3,108(sp)
    76b0:	3c060000 	lui	a2,0x0
    76b4:	24c60000 	addiu	a2,a2,0
    76b8:	27a4004c 	addiu	a0,sp,76
    76bc:	02002825 	move	a1,s0
    76c0:	0c000000 	jal	0 <func_8006F0A0>
    76c4:	24070efb 	li	a3,3835
    76c8:	93a50077 	lbu	a1,119(sp)
    76cc:	30af0001 	andi	t7,a1,0x1
    76d0:	51e0002d 	beqzl	t7,7788 <func_8007672C+0xfc>
    76d4:	30ab0002 	andi	t3,a1,0x2
    76d8:	8e0402c0 	lw	a0,704(s0)
    76dc:	0c000000 	jal	0 <func_8006F0A0>
    76e0:	afa50024 	sw	a1,36(sp)
    76e4:	8fa50024 	lw	a1,36(sp)
    76e8:	ae0202c0 	sw	v0,704(s0)
    76ec:	24580008 	addiu	t8,v0,8
    76f0:	ae1802c0 	sw	t8,704(s0)
    76f4:	3c19fa00 	lui	t9,0xfa00
    76f8:	ac590000 	sw	t9,0(v0)
    76fc:	93ac006b 	lbu	t4,107(sp)
    7700:	93a90067 	lbu	t1,103(sp)
    7704:	93b8006f 	lbu	t8,111(sp)
    7708:	93ab0073 	lbu	t3,115(sp)
    770c:	000c6c00 	sll	t5,t4,0x10
    7710:	00095600 	sll	t2,t1,0x18
    7714:	014d7025 	or	t6,t2,t5
    7718:	0018ca00 	sll	t9,t8,0x8
    771c:	01d94025 	or	t0,t6,t9
    7720:	010b6025 	or	t4,t0,t3
    7724:	ac4c0004 	sw	t4,4(v0)
    7728:	8e0202c0 	lw	v0,704(s0)
    772c:	3c0de300 	lui	t5,0xe300
    7730:	35ad1a01 	ori	t5,t5,0x1a01
    7734:	244a0008 	addiu	t2,v0,8
    7738:	ae0a02c0 	sw	t2,704(s0)
    773c:	240f0030 	li	t7,48
    7740:	ac4f0004 	sw	t7,4(v0)
    7744:	ac4d0000 	sw	t5,0(v0)
    7748:	8e0202c0 	lw	v0,704(s0)
    774c:	3c0ee300 	lui	t6,0xe300
    7750:	35ce1801 	ori	t6,t6,0x1801
    7754:	24580008 	addiu	t8,v0,8
    7758:	ae1802c0 	sw	t8,704(s0)
    775c:	241900c0 	li	t9,192
    7760:	ac590004 	sw	t9,4(v0)
    7764:	ac4e0000 	sw	t6,0(v0)
    7768:	8e0202c0 	lw	v0,704(s0)
    776c:	3c08f64f 	lui	t0,0xf64f
    7770:	3508c3bc 	ori	t0,t0,0xc3bc
    7774:	24490008 	addiu	t1,v0,8
    7778:	ae0902c0 	sw	t1,704(s0)
    777c:	ac400004 	sw	zero,4(v0)
    7780:	ac480000 	sw	t0,0(v0)
    7784:	30ab0002 	andi	t3,a1,0x2
    7788:	11600037 	beqz	t3,7868 <func_8007672C+0x1dc>
    778c:	93aa0067 	lbu	t2,103(sp)
    7790:	93b8006b 	lbu	t8,107(sp)
    7794:	93a8006f 	lbu	t0,111(sp)
    7798:	93af0073 	lbu	t7,115(sp)
    779c:	000a6e00 	sll	t5,t2,0x18
    77a0:	00187400 	sll	t6,t8,0x10
    77a4:	01aec825 	or	t9,t5,t6
    77a8:	00085a00 	sll	t3,t0,0x8
    77ac:	032b6025 	or	t4,t9,t3
    77b0:	8e0402d0 	lw	a0,720(s0)
    77b4:	018fc025 	or	t8,t4,t7
    77b8:	0c000000 	jal	0 <func_8006F0A0>
    77bc:	afb80024 	sw	t8,36(sp)
    77c0:	ae0202d0 	sw	v0,720(s0)
    77c4:	244d0008 	addiu	t5,v0,8
    77c8:	ae0d02d0 	sw	t5,720(s0)
    77cc:	3c0efa00 	lui	t6,0xfa00
    77d0:	ac4e0000 	sw	t6,0(v0)
    77d4:	8fa90024 	lw	t1,36(sp)
    77d8:	240100ff 	li	at,255
    77dc:	3c0be200 	lui	t3,0xe200
    77e0:	ac490004 	sw	t1,4(v0)
    77e4:	93a80073 	lbu	t0,115(sp)
    77e8:	3c0fe300 	lui	t7,0xe300
    77ec:	356b001c 	ori	t3,t3,0x1c
    77f0:	15010008 	bne	t0,at,7814 <func_8007672C+0x188>
    77f4:	35ef1a01 	ori	t7,t7,0x1a01
    77f8:	8e0202d0 	lw	v0,720(s0)
    77fc:	3c0a0f0a 	lui	t2,0xf0a
    7800:	354a4000 	ori	t2,t2,0x4000
    7804:	24590008 	addiu	t9,v0,8
    7808:	ae1902d0 	sw	t9,720(s0)
    780c:	ac4a0004 	sw	t2,4(v0)
    7810:	ac4b0000 	sw	t3,0(v0)
    7814:	8e0202d0 	lw	v0,720(s0)
    7818:	24180030 	li	t8,48
    781c:	3c0ee300 	lui	t6,0xe300
    7820:	244c0008 	addiu	t4,v0,8
    7824:	ae0c02d0 	sw	t4,720(s0)
    7828:	ac580004 	sw	t8,4(v0)
    782c:	ac4f0000 	sw	t7,0(v0)
    7830:	8e0202d0 	lw	v0,720(s0)
    7834:	35ce1801 	ori	t6,t6,0x1801
    7838:	240900c0 	li	t1,192
    783c:	244d0008 	addiu	t5,v0,8
    7840:	ae0d02d0 	sw	t5,720(s0)
    7844:	ac490004 	sw	t1,4(v0)
    7848:	ac4e0000 	sw	t6,0(v0)
    784c:	8e0202d0 	lw	v0,720(s0)
    7850:	3c19f64f 	lui	t9,0xf64f
    7854:	3739c3bc 	ori	t9,t9,0xc3bc
    7858:	24480008 	addiu	t0,v0,8
    785c:	ae0802d0 	sw	t0,720(s0)
    7860:	ac400004 	sw	zero,4(v0)
    7864:	ac590000 	sw	t9,0(v0)
    7868:	3c060000 	lui	a2,0x0
    786c:	24c60000 	addiu	a2,a2,0
    7870:	27a4004c 	addiu	a0,sp,76
    7874:	02002825 	move	a1,s0
    7878:	0c000000 	jal	0 <func_8006F0A0>
    787c:	24070f17 	li	a3,3863
    7880:	8fbf001c 	lw	ra,28(sp)
    7884:	8fb00018 	lw	s0,24(sp)
    7888:	27bd0060 	addiu	sp,sp,96
    788c:	03e00008 	jr	ra
    7890:	00000000 	nop

00007894 <func_80076934>:
    7894:	27bdff48 	addiu	sp,sp,-184
    7898:	3c010001 	lui	at,0x1
    789c:	afbf0034 	sw	ra,52(sp)
    78a0:	afa400b8 	sw	a0,184(sp)
    78a4:	afa500bc 	sw	a1,188(sp)
    78a8:	00816021 	addu	t4,a0,at
    78ac:	91870b0b 	lbu	a3,2827(t4)
    78b0:	91860b0c 	lbu	a2,2828(t4)
    78b4:	30a500ff 	andi	a1,a1,0xff
    78b8:	24010001 	li	at,1
    78bc:	00e04025 	move	t0,a3
    78c0:	10a10023 	beq	a1,at,7950 <func_80076934+0xbc>
    78c4:	00c04825 	move	t1,a2
    78c8:	24010002 	li	at,2
    78cc:	10a10027 	beq	a1,at,796c <func_80076934+0xd8>
    78d0:	24010003 	li	at,3
    78d4:	10a10006 	beq	a1,at,78f0 <func_80076934+0x5c>
    78d8:	8fae00b8 	lw	t6,184(sp)
    78dc:	24010004 	li	at,4
    78e0:	10a1003a 	beq	a1,at,79cc <func_80076934+0x138>
    78e4:	8fa300b4 	lw	v1,180(sp)
    78e8:	10000043 	b	79f8 <func_80076934+0x164>
    78ec:	8fa500b0 	lw	a1,176(sp)
    78f0:	85cf00a4 	lh	t7,164(t6)
    78f4:	2401005e 	li	at,94
    78f8:	8fb900b8 	lw	t9,184(sp)
    78fc:	15e1000b 	bne	t7,at,792c <func_80076934+0x98>
    7900:	24050080 	li	a1,128
    7904:	81981cbc 	lb	t8,7356(t4)
    7908:	28c10081 	slti	at,a2,129
    790c:	57000008 	bnezl	t8,7930 <func_80076934+0x9c>
    7910:	8f23009c 	lw	v1,156(t9)
    7914:	14200003 	bnez	at,7924 <func_80076934+0x90>
    7918:	00002825 	move	a1,zero
    791c:	10000036 	b	79f8 <func_80076934+0x164>
    7920:	240300ff 	li	v1,255
    7924:	10000034 	b	79f8 <func_80076934+0x164>
    7928:	00061843 	sra	v1,a2,0x1
    792c:	8f23009c 	lw	v1,156(t9)
    7930:	240e0080 	li	t6,128
    7934:	3063007f 	andi	v1,v1,0x7f
    7938:	28610041 	slti	at,v1,65
    793c:	14200002 	bnez	at,7948 <func_80076934+0xb4>
    7940:	00000000 	nop
    7944:	01c31823 	subu	v1,t6,v1
    7948:	1000002b 	b	79f8 <func_80076934+0x164>
    794c:	24630049 	addiu	v1,v1,73
    7950:	28e100ff 	slti	at,a3,255
    7954:	14200003 	bnez	at,7964 <func_80076934+0xd0>
    7958:	240300ff 	li	v1,255
    795c:	10000026 	b	79f8 <func_80076934+0x164>
    7960:	240500ff 	li	a1,255
    7964:	10000024 	b	79f8 <func_80076934+0x164>
    7968:	24050080 	li	a1,128
    796c:	28c10081 	slti	at,a2,129
    7970:	14200003 	bnez	at,7980 <func_80076934+0xec>
    7974:	24050080 	li	a1,128
    7978:	1000000a 	b	79a4 <func_80076934+0x110>
    797c:	240300ff 	li	v1,255
    7980:	8faf00b8 	lw	t7,184(sp)
    7984:	24180080 	li	t8,128
    7988:	8de3009c 	lw	v1,156(t7)
    798c:	3063007f 	andi	v1,v1,0x7f
    7990:	28610041 	slti	at,v1,65
    7994:	54200003 	bnezl	at,79a4 <func_80076934+0x110>
    7998:	24630049 	addiu	v1,v1,73
    799c:	03031823 	subu	v1,t8,v1
    79a0:	24630049 	addiu	v1,v1,73
    79a4:	0068082a 	slt	at,v1,t0
    79a8:	14200013 	bnez	at,79f8 <func_80076934+0x164>
    79ac:	240100ff 	li	at,255
    79b0:	10610011 	beq	v1,at,79f8 <func_80076934+0x164>
    79b4:	8fae00b8 	lw	t6,184(sp)
    79b8:	3c010001 	lui	at,0x1
    79bc:	002e0821 	addu	at,at,t6
    79c0:	24190003 	li	t9,3
    79c4:	1000000c 	b	79f8 <func_80076934+0x164>
    79c8:	a0390b0a 	sb	t9,2826(at)
    79cc:	28c10081 	slti	at,a2,129
    79d0:	14200003 	bnez	at,79e0 <func_80076934+0x14c>
    79d4:	00002825 	move	a1,zero
    79d8:	10000002 	b	79e4 <func_80076934+0x150>
    79dc:	240300ff 	li	v1,255
    79e0:	00061843 	sra	v1,a2,0x1
    79e4:	15000004 	bnez	t0,79f8 <func_80076934+0x164>
    79e8:	8faf00b8 	lw	t7,184(sp)
    79ec:	3c010001 	lui	at,0x1
    79f0:	002f0821 	addu	at,at,t7
    79f4:	a0200b0a 	sb	zero,2826(at)
    79f8:	01032023 	subu	a0,t0,v1
    79fc:	04800003 	bltz	a0,7a0c <func_80076934+0x178>
    7a00:	8fb800b8 	lw	t8,184(sp)
    7a04:	10000002 	b	7a10 <func_80076934+0x17c>
    7a08:	00801025 	move	v0,a0
    7a0c:	00041023 	negu	v0,a0
    7a10:	28410009 	slti	at,v0,9
    7a14:	50200004 	beqzl	at,7a28 <func_80076934+0x194>
    7a18:	0068082a 	slt	at,v1,t0
    7a1c:	10000007 	b	7a3c <func_80076934+0x1a8>
    7a20:	00604025 	move	t0,v1
    7a24:	0068082a 	slt	at,v1,t0
    7a28:	50200004 	beqzl	at,7a3c <func_80076934+0x1a8>
    7a2c:	25080009 	addiu	t0,t0,9
    7a30:	10000002 	b	7a3c <func_80076934+0x1a8>
    7a34:	2508fff7 	addiu	t0,t0,-9
    7a38:	25080009 	addiu	t0,t0,9
    7a3c:	01251823 	subu	v1,t1,a1
    7a40:	04600003 	bltz	v1,7a50 <func_80076934+0x1bc>
    7a44:	00031023 	negu	v0,v1
    7a48:	10000001 	b	7a50 <func_80076934+0x1bc>
    7a4c:	00601025 	move	v0,v1
    7a50:	28410009 	slti	at,v0,9
    7a54:	10200003 	beqz	at,7a64 <func_80076934+0x1d0>
    7a58:	3c0d0000 	lui	t5,0x0
    7a5c:	10000007 	b	7a7c <func_80076934+0x1e8>
    7a60:	00a04825 	move	t1,a1
    7a64:	00a9082a 	slt	at,a1,t1
    7a68:	50200004 	beqzl	at,7a7c <func_80076934+0x1e8>
    7a6c:	25290009 	addiu	t1,t1,9
    7a70:	10000002 	b	7a7c <func_80076934+0x1e8>
    7a74:	2529fff7 	addiu	t1,t1,-9
    7a78:	25290009 	addiu	t1,t1,9
    7a7c:	3c0140c0 	lui	at,0x40c0
    7a80:	44818000 	mtc1	at,$f16
    7a84:	3c010001 	lui	at,0x1
    7a88:	00380821 	addu	at,at,t8
    7a8c:	a0280b0b 	sb	t0,2827(at)
    7a90:	01097021 	addu	t6,t0,t1
    7a94:	8fb900b8 	lw	t9,184(sp)
    7a98:	448e3000 	mtc1	t6,$f6
    7a9c:	3c010001 	lui	at,0x1
    7aa0:	00390821 	addu	at,at,t9
    7aa4:	46803220 	cvt.s.w	$f8,$f6
    7aa8:	a0290b0c 	sb	t1,2828(at)
    7aac:	3c014400 	lui	at,0x4400
    7ab0:	44812000 	mtc1	at,$f4
    7ab4:	3c013cc0 	lui	at,0x3cc0
    7ab8:	44819000 	mtc1	at,$f18
    7abc:	46082281 	sub.s	$f10,$f4,$f8
    7ac0:	3c1f0000 	lui	ra,0x0
    7ac4:	27ff0000 	addiu	ra,ra,0
    7ac8:	25ad0000 	addiu	t5,t5,0
    7acc:	46125382 	mul.s	$f14,$f10,$f18
    7ad0:	460e803c 	c.lt.s	$f16,$f14
    7ad4:	00000000 	nop
    7ad8:	45020003 	bc1fl	7ae8 <func_80076934+0x254>
    7adc:	918f0a42 	lbu	t7,2626(t4)
    7ae0:	46008386 	mov.s	$f14,$f16
    7ae4:	918f0a42 	lbu	t7,2626(t4)
    7ae8:	55e00006 	bnezl	t7,7b04 <func_80076934+0x270>
    7aec:	91b90003 	lbu	t9,3(t5)
    7af0:	91980ae3 	lbu	t8,2787(t4)
    7af4:	240100ff 	li	at,255
    7af8:	5301000d 	beql	t8,at,7b30 <func_80076934+0x29c>
    7afc:	afac0058 	sw	t4,88(sp)
    7b00:	91b90003 	lbu	t9,3(t5)
    7b04:	91ae0004 	lbu	t6,4(t5)
    7b08:	91af0005 	lbu	t7,5(t5)
    7b0c:	93e90003 	lbu	t1,3(ra)
    7b10:	93ea0004 	lbu	t2,4(ra)
    7b14:	93eb0005 	lbu	t3,5(ra)
    7b18:	afac0058 	sw	t4,88(sp)
    7b1c:	a3b900a4 	sb	t9,164(sp)
    7b20:	a3ae00a5 	sb	t6,165(sp)
    7b24:	100000af 	b	7de4 <func_80076934+0x550>
    7b28:	a3af00a6 	sb	t7,166(sp)
    7b2c:	afac0058 	sw	t4,88(sp)
    7b30:	3c0c0000 	lui	t4,0x0
    7b34:	3c080000 	lui	t0,0x0
    7b38:	91080000 	lbu	t0,0(t0)
    7b3c:	918c0000 	lbu	t4,0(t4)
    7b40:	15880012 	bne	t4,t0,7b8c <func_80076934+0x2f8>
    7b44:	3c0d0000 	lui	t5,0x0
    7b48:	00083080 	sll	a2,t0,0x2
    7b4c:	25ad0000 	addiu	t5,t5,0
    7b50:	00c83023 	subu	a2,a2,t0
    7b54:	01a61021 	addu	v0,t5,a2
    7b58:	3c1f0000 	lui	ra,0x0
    7b5c:	27ff0000 	addiu	ra,ra,0
    7b60:	90580000 	lbu	t8,0(v0)
    7b64:	90590001 	lbu	t9,1(v0)
    7b68:	904e0002 	lbu	t6,2(v0)
    7b6c:	03e61821 	addu	v1,ra,a2
    7b70:	90690000 	lbu	t1,0(v1)
    7b74:	906a0001 	lbu	t2,1(v1)
    7b78:	906b0002 	lbu	t3,2(v1)
    7b7c:	a3b800a4 	sb	t8,164(sp)
    7b80:	a3b900a5 	sb	t9,165(sp)
    7b84:	10000097 	b	7de4 <func_80076934+0x550>
    7b88:	a3ae00a6 	sb	t6,166(sp)
    7b8c:	3c0d0000 	lui	t5,0x0
    7b90:	25ad0000 	addiu	t5,t5,0
    7b94:	000c3880 	sll	a3,t4,0x2
    7b98:	00ec3823 	subu	a3,a3,t4
    7b9c:	01a72021 	addu	a0,t5,a3
    7ba0:	908f0000 	lbu	t7,0(a0)
    7ba4:	3c010000 	lui	at,0x0
    7ba8:	c4200000 	lwc1	$f0,0(at)
    7bac:	448f9000 	mtc1	t7,$f18
    7bb0:	3c013f80 	lui	at,0x3f80
    7bb4:	44816000 	mtc1	at,$f12
    7bb8:	46809220 	cvt.s.w	$f8,$f18
    7bbc:	00083080 	sll	a2,t0,0x2
    7bc0:	3c1f0000 	lui	ra,0x0
    7bc4:	00c83023 	subu	a2,a2,t0
    7bc8:	27ff0000 	addiu	ra,ra,0
    7bcc:	46006081 	sub.s	$f2,$f12,$f0
    7bd0:	05e10005 	bgez	t7,7be8 <func_80076934+0x354>
    7bd4:	01a61021 	addu	v0,t5,a2
    7bd8:	3c014f80 	lui	at,0x4f80
    7bdc:	44815000 	mtc1	at,$f10
    7be0:	00000000 	nop
    7be4:	460a4200 	add.s	$f8,$f8,$f10
    7be8:	90580000 	lbu	t8,0(v0)
    7bec:	46004482 	mul.s	$f18,$f8,$f0
    7bf0:	44983000 	mtc1	t8,$f6
    7bf4:	07010005 	bgez	t8,7c0c <func_80076934+0x378>
    7bf8:	46803120 	cvt.s.w	$f4,$f6
    7bfc:	3c014f80 	lui	at,0x4f80
    7c00:	44815000 	mtc1	at,$f10
    7c04:	00000000 	nop
    7c08:	460a2100 	add.s	$f4,$f4,$f10
    7c0c:	46022202 	mul.s	$f8,$f4,$f2
    7c10:	908f0001 	lbu	t7,1(a0)
    7c14:	3c014f80 	lui	at,0x4f80
    7c18:	448f2000 	mtc1	t7,$f4
    7c1c:	46089180 	add.s	$f6,$f18,$f8
    7c20:	468024a0 	cvt.s.w	$f18,$f4
    7c24:	4600328d 	trunc.w.s	$f10,$f6
    7c28:	440e5000 	mfc1	t6,$f10
    7c2c:	05e10004 	bgez	t7,7c40 <func_80076934+0x3ac>
    7c30:	a3ae00a4 	sb	t6,164(sp)
    7c34:	44814000 	mtc1	at,$f8
    7c38:	00000000 	nop
    7c3c:	46089480 	add.s	$f18,$f18,$f8
    7c40:	90580001 	lbu	t8,1(v0)
    7c44:	46009182 	mul.s	$f6,$f18,$f0
    7c48:	3c014f80 	lui	at,0x4f80
    7c4c:	44985000 	mtc1	t8,$f10
    7c50:	07010004 	bgez	t8,7c64 <func_80076934+0x3d0>
    7c54:	46805120 	cvt.s.w	$f4,$f10
    7c58:	44814000 	mtc1	at,$f8
    7c5c:	00000000 	nop
    7c60:	46082100 	add.s	$f4,$f4,$f8
    7c64:	46022482 	mul.s	$f18,$f4,$f2
    7c68:	908f0002 	lbu	t7,2(a0)
    7c6c:	3c014f80 	lui	at,0x4f80
    7c70:	448f2000 	mtc1	t7,$f4
    7c74:	46123280 	add.s	$f10,$f6,$f18
    7c78:	468021a0 	cvt.s.w	$f6,$f4
    7c7c:	4600520d 	trunc.w.s	$f8,$f10
    7c80:	440e4000 	mfc1	t6,$f8
    7c84:	05e10004 	bgez	t7,7c98 <func_80076934+0x404>
    7c88:	a3ae00a5 	sb	t6,165(sp)
    7c8c:	44819000 	mtc1	at,$f18
    7c90:	00000000 	nop
    7c94:	46123180 	add.s	$f6,$f6,$f18
    7c98:	90580002 	lbu	t8,2(v0)
    7c9c:	46003282 	mul.s	$f10,$f6,$f0
    7ca0:	3c014f80 	lui	at,0x4f80
    7ca4:	44984000 	mtc1	t8,$f8
    7ca8:	07010004 	bgez	t8,7cbc <func_80076934+0x428>
    7cac:	46804120 	cvt.s.w	$f4,$f8
    7cb0:	44819000 	mtc1	at,$f18
    7cb4:	00000000 	nop
    7cb8:	46122100 	add.s	$f4,$f4,$f18
    7cbc:	46022182 	mul.s	$f6,$f4,$f2
    7cc0:	03e72821 	addu	a1,ra,a3
    7cc4:	90af0000 	lbu	t7,0(a1)
    7cc8:	03e61821 	addu	v1,ra,a2
    7ccc:	3c014f80 	lui	at,0x4f80
    7cd0:	448f2000 	mtc1	t7,$f4
    7cd4:	46065200 	add.s	$f8,$f10,$f6
    7cd8:	468022a0 	cvt.s.w	$f10,$f4
    7cdc:	4600448d 	trunc.w.s	$f18,$f8
    7ce0:	440e9000 	mfc1	t6,$f18
    7ce4:	05e10004 	bgez	t7,7cf8 <func_80076934+0x464>
    7ce8:	a3ae00a6 	sb	t6,166(sp)
    7cec:	44813000 	mtc1	at,$f6
    7cf0:	00000000 	nop
    7cf4:	46065280 	add.s	$f10,$f10,$f6
    7cf8:	90780000 	lbu	t8,0(v1)
    7cfc:	46005202 	mul.s	$f8,$f10,$f0
    7d00:	3c014f80 	lui	at,0x4f80
    7d04:	44989000 	mtc1	t8,$f18
    7d08:	07010004 	bgez	t8,7d1c <func_80076934+0x488>
    7d0c:	46809120 	cvt.s.w	$f4,$f18
    7d10:	44813000 	mtc1	at,$f6
    7d14:	00000000 	nop
    7d18:	46062100 	add.s	$f4,$f4,$f6
    7d1c:	46022282 	mul.s	$f10,$f4,$f2
    7d20:	90ae0001 	lbu	t6,1(a1)
    7d24:	3c014f80 	lui	at,0x4f80
    7d28:	448e2000 	mtc1	t6,$f4
    7d2c:	460a4480 	add.s	$f18,$f8,$f10
    7d30:	46802220 	cvt.s.w	$f8,$f4
    7d34:	4600918d 	trunc.w.s	$f6,$f18
    7d38:	44093000 	mfc1	t1,$f6
    7d3c:	05c10004 	bgez	t6,7d50 <func_80076934+0x4bc>
    7d40:	312900ff 	andi	t1,t1,0xff
    7d44:	44815000 	mtc1	at,$f10
    7d48:	00000000 	nop
    7d4c:	460a4200 	add.s	$f8,$f8,$f10
    7d50:	906f0001 	lbu	t7,1(v1)
    7d54:	46004482 	mul.s	$f18,$f8,$f0
    7d58:	3c014f80 	lui	at,0x4f80
    7d5c:	448f3000 	mtc1	t7,$f6
    7d60:	05e10004 	bgez	t7,7d74 <func_80076934+0x4e0>
    7d64:	46803120 	cvt.s.w	$f4,$f6
    7d68:	44815000 	mtc1	at,$f10
    7d6c:	00000000 	nop
    7d70:	460a2100 	add.s	$f4,$f4,$f10
    7d74:	46022202 	mul.s	$f8,$f4,$f2
    7d78:	90b90002 	lbu	t9,2(a1)
    7d7c:	3c014f80 	lui	at,0x4f80
    7d80:	44992000 	mtc1	t9,$f4
    7d84:	46089180 	add.s	$f6,$f18,$f8
    7d88:	468024a0 	cvt.s.w	$f18,$f4
    7d8c:	4600328d 	trunc.w.s	$f10,$f6
    7d90:	440a5000 	mfc1	t2,$f10
    7d94:	07210004 	bgez	t9,7da8 <func_80076934+0x514>
    7d98:	314a00ff 	andi	t2,t2,0xff
    7d9c:	44814000 	mtc1	at,$f8
    7da0:	00000000 	nop
    7da4:	46089480 	add.s	$f18,$f18,$f8
    7da8:	906e0002 	lbu	t6,2(v1)
    7dac:	46009182 	mul.s	$f6,$f18,$f0
    7db0:	3c014f80 	lui	at,0x4f80
    7db4:	448e5000 	mtc1	t6,$f10
    7db8:	05c10004 	bgez	t6,7dcc <func_80076934+0x538>
    7dbc:	46805120 	cvt.s.w	$f4,$f10
    7dc0:	44814000 	mtc1	at,$f8
    7dc4:	00000000 	nop
    7dc8:	46082100 	add.s	$f4,$f4,$f8
    7dcc:	46022482 	mul.s	$f18,$f4,$f2
    7dd0:	46123280 	add.s	$f10,$f6,$f18
    7dd4:	4600520d 	trunc.w.s	$f8,$f10
    7dd8:	440b4000 	mfc1	t3,$f8
    7ddc:	00000000 	nop
    7de0:	316b00ff 	andi	t3,t3,0xff
    7de4:	44892000 	mtc1	t1,$f4
    7de8:	3c010000 	lui	at,0x0
    7dec:	c42c0000 	lwc1	$f12,0(at)
    7df0:	460e8001 	sub.s	$f0,$f16,$f14
    7df4:	05210005 	bgez	t1,7e0c <func_80076934+0x578>
    7df8:	468021a0 	cvt.s.w	$f6,$f4
    7dfc:	3c014f80 	lui	at,0x4f80
    7e00:	44819000 	mtc1	at,$f18
    7e04:	00000000 	nop
    7e08:	46123180 	add.s	$f6,$f6,$f18
    7e0c:	93b800a4 	lbu	t8,164(sp)
    7e10:	460e3282 	mul.s	$f10,$f6,$f14
    7e14:	44984000 	mtc1	t8,$f8
    7e18:	07010005 	bgez	t8,7e30 <func_80076934+0x59c>
    7e1c:	46804120 	cvt.s.w	$f4,$f8
    7e20:	3c014f80 	lui	at,0x4f80
    7e24:	44819000 	mtc1	at,$f18
    7e28:	00000000 	nop
    7e2c:	46122100 	add.s	$f4,$f4,$f18
    7e30:	46040182 	mul.s	$f6,$f0,$f4
    7e34:	24090001 	li	t1,1
    7e38:	46065200 	add.s	$f8,$f10,$f6
    7e3c:	460c4482 	mul.s	$f18,$f8,$f12
    7e40:	4459f800 	cfc1	t9,$31
    7e44:	44c9f800 	ctc1	t1,$31
    7e48:	00000000 	nop
    7e4c:	46009124 	cvt.w.s	$f4,$f18
    7e50:	4449f800 	cfc1	t1,$31
    7e54:	00000000 	nop
    7e58:	31290078 	andi	t1,t1,0x78
    7e5c:	11200012 	beqz	t1,7ea8 <func_80076934+0x614>
    7e60:	3c014f00 	lui	at,0x4f00
    7e64:	44812000 	mtc1	at,$f4
    7e68:	24090001 	li	t1,1
    7e6c:	46049101 	sub.s	$f4,$f18,$f4
    7e70:	44c9f800 	ctc1	t1,$31
    7e74:	00000000 	nop
    7e78:	46002124 	cvt.w.s	$f4,$f4
    7e7c:	4449f800 	cfc1	t1,$31
    7e80:	00000000 	nop
    7e84:	31290078 	andi	t1,t1,0x78
    7e88:	15200005 	bnez	t1,7ea0 <func_80076934+0x60c>
    7e8c:	00000000 	nop
    7e90:	44092000 	mfc1	t1,$f4
    7e94:	3c018000 	lui	at,0x8000
    7e98:	10000007 	b	7eb8 <func_80076934+0x624>
    7e9c:	01214825 	or	t1,t1,at
    7ea0:	10000005 	b	7eb8 <func_80076934+0x624>
    7ea4:	2409ffff 	li	t1,-1
    7ea8:	44092000 	mfc1	t1,$f4
    7eac:	00000000 	nop
    7eb0:	0520fffb 	bltz	t1,7ea0 <func_80076934+0x60c>
    7eb4:	00000000 	nop
    7eb8:	44d9f800 	ctc1	t9,$31
    7ebc:	448a5000 	mtc1	t2,$f10
    7ec0:	312900ff 	andi	t1,t1,0xff
    7ec4:	05410005 	bgez	t2,7edc <func_80076934+0x648>
    7ec8:	468051a0 	cvt.s.w	$f6,$f10
    7ecc:	3c014f80 	lui	at,0x4f80
    7ed0:	44814000 	mtc1	at,$f8
    7ed4:	00000000 	nop
    7ed8:	46083180 	add.s	$f6,$f6,$f8
    7edc:	93ae00a5 	lbu	t6,165(sp)
    7ee0:	460e3482 	mul.s	$f18,$f6,$f14
    7ee4:	448e2000 	mtc1	t6,$f4
    7ee8:	05c10005 	bgez	t6,7f00 <func_80076934+0x66c>
    7eec:	468022a0 	cvt.s.w	$f10,$f4
    7ef0:	3c014f80 	lui	at,0x4f80
    7ef4:	44814000 	mtc1	at,$f8
    7ef8:	00000000 	nop
    7efc:	46085280 	add.s	$f10,$f10,$f8
    7f00:	460a0182 	mul.s	$f6,$f0,$f10
    7f04:	240a0001 	li	t2,1
    7f08:	3c0e0000 	lui	t6,0x0
    7f0c:	46069100 	add.s	$f4,$f18,$f6
    7f10:	460c2202 	mul.s	$f8,$f4,$f12
    7f14:	444ff800 	cfc1	t7,$31
    7f18:	44caf800 	ctc1	t2,$31
    7f1c:	00000000 	nop
    7f20:	460042a4 	cvt.w.s	$f10,$f8
    7f24:	444af800 	cfc1	t2,$31
    7f28:	00000000 	nop
    7f2c:	314a0078 	andi	t2,t2,0x78
    7f30:	11400012 	beqz	t2,7f7c <func_80076934+0x6e8>
    7f34:	3c014f00 	lui	at,0x4f00
    7f38:	44815000 	mtc1	at,$f10
    7f3c:	240a0001 	li	t2,1
    7f40:	460a4281 	sub.s	$f10,$f8,$f10
    7f44:	44caf800 	ctc1	t2,$31
    7f48:	00000000 	nop
    7f4c:	460052a4 	cvt.w.s	$f10,$f10
    7f50:	444af800 	cfc1	t2,$31
    7f54:	00000000 	nop
    7f58:	314a0078 	andi	t2,t2,0x78
    7f5c:	15400005 	bnez	t2,7f74 <func_80076934+0x6e0>
    7f60:	00000000 	nop
    7f64:	440a5000 	mfc1	t2,$f10
    7f68:	3c018000 	lui	at,0x8000
    7f6c:	10000007 	b	7f8c <func_80076934+0x6f8>
    7f70:	01415025 	or	t2,t2,at
    7f74:	10000005 	b	7f8c <func_80076934+0x6f8>
    7f78:	240affff 	li	t2,-1
    7f7c:	440a5000 	mfc1	t2,$f10
    7f80:	00000000 	nop
    7f84:	0540fffb 	bltz	t2,7f74 <func_80076934+0x6e0>
    7f88:	00000000 	nop
    7f8c:	44cff800 	ctc1	t7,$31
    7f90:	448b9000 	mtc1	t3,$f18
    7f94:	314a00ff 	andi	t2,t2,0xff
    7f98:	05610005 	bgez	t3,7fb0 <func_80076934+0x71c>
    7f9c:	468091a0 	cvt.s.w	$f6,$f18
    7fa0:	3c014f80 	lui	at,0x4f80
    7fa4:	44812000 	mtc1	at,$f4
    7fa8:	00000000 	nop
    7fac:	46043180 	add.s	$f6,$f6,$f4
    7fb0:	93b800a6 	lbu	t8,166(sp)
    7fb4:	460e3202 	mul.s	$f8,$f6,$f14
    7fb8:	44985000 	mtc1	t8,$f10
    7fbc:	07010005 	bgez	t8,7fd4 <func_80076934+0x740>
    7fc0:	468054a0 	cvt.s.w	$f18,$f10
    7fc4:	3c014f80 	lui	at,0x4f80
    7fc8:	44812000 	mtc1	at,$f4
    7fcc:	00000000 	nop
    7fd0:	46049480 	add.s	$f18,$f18,$f4
    7fd4:	46120182 	mul.s	$f6,$f0,$f18
    7fd8:	240b0001 	li	t3,1
    7fdc:	46064280 	add.s	$f10,$f8,$f6
    7fe0:	460c5102 	mul.s	$f4,$f10,$f12
    7fe4:	4459f800 	cfc1	t9,$31
    7fe8:	44cbf800 	ctc1	t3,$31
    7fec:	00000000 	nop
    7ff0:	460024a4 	cvt.w.s	$f18,$f4
    7ff4:	444bf800 	cfc1	t3,$31
    7ff8:	00000000 	nop
    7ffc:	316b0078 	andi	t3,t3,0x78
    8000:	11600012 	beqz	t3,804c <func_80076934+0x7b8>
    8004:	3c014f00 	lui	at,0x4f00
    8008:	44819000 	mtc1	at,$f18
    800c:	240b0001 	li	t3,1
    8010:	46122481 	sub.s	$f18,$f4,$f18
    8014:	44cbf800 	ctc1	t3,$31
    8018:	00000000 	nop
    801c:	460094a4 	cvt.w.s	$f18,$f18
    8020:	444bf800 	cfc1	t3,$31
    8024:	00000000 	nop
    8028:	316b0078 	andi	t3,t3,0x78
    802c:	15600005 	bnez	t3,8044 <func_80076934+0x7b0>
    8030:	00000000 	nop
    8034:	440b9000 	mfc1	t3,$f18
    8038:	3c018000 	lui	at,0x8000
    803c:	10000007 	b	805c <func_80076934+0x7c8>
    8040:	01615825 	or	t3,t3,at
    8044:	10000005 	b	805c <func_80076934+0x7c8>
    8048:	240bffff 	li	t3,-1
    804c:	440b9000 	mfc1	t3,$f18
    8050:	00000000 	nop
    8054:	0560fffb 	bltz	t3,8044 <func_80076934+0x7b0>
    8058:	00000000 	nop
    805c:	95ce0000 	lhu	t6,0(t6)
    8060:	44d9f800 	ctc1	t9,$31
    8064:	316b00ff 	andi	t3,t3,0xff
    8068:	448e4000 	mtc1	t6,$f8
    806c:	05c10005 	bgez	t6,8084 <func_80076934+0x7f0>
    8070:	468040a0 	cvt.s.w	$f2,$f8
    8074:	3c014f80 	lui	at,0x4f80
    8078:	44813000 	mtc1	at,$f6
    807c:	00000000 	nop
    8080:	46061080 	add.s	$f2,$f2,$f6
    8084:	3c010000 	lui	at,0x0
    8088:	c42a0000 	lwc1	$f10,0(at)
    808c:	3c013fc0 	lui	at,0x3fc0
    8090:	44814000 	mtc1	at,$f8
    8094:	460a1102 	mul.s	$f4,$f2,$f10
    8098:	3c013f80 	lui	at,0x3f80
    809c:	8fb900b8 	lw	t9,184(sp)
    80a0:	46081182 	mul.s	$f6,$f2,$f8
    80a4:	3c060000 	lui	a2,0x0
    80a8:	24c60000 	addiu	a2,a2,0
    80ac:	27a4007c 	addiu	a0,sp,124
    80b0:	24070fcc 	li	a3,4044
    80b4:	4600248d 	trunc.w.s	$f18,$f4
    80b8:	44812000 	mtc1	at,$f4
    80bc:	4600328d 	trunc.w.s	$f10,$f6
    80c0:	44189000 	mfc1	t8,$f18
    80c4:	46041482 	mul.s	$f18,$f2,$f4
    80c8:	a7b80096 	sh	t8,150(sp)
    80cc:	440e5000 	mfc1	t6,$f10
    80d0:	00000000 	nop
    80d4:	a7ae0094 	sh	t6,148(sp)
    80d8:	4600920d 	trunc.w.s	$f8,$f18
    80dc:	44184000 	mfc1	t8,$f8
    80e0:	00000000 	nop
    80e4:	a7b80092 	sh	t8,146(sp)
    80e8:	8f250000 	lw	a1,0(t9)
    80ec:	e7ae0098 	swc1	$f14,152(sp)
    80f0:	a3ab00a2 	sb	t3,162(sp)
    80f4:	a3aa00a1 	sb	t2,161(sp)
    80f8:	a3a900a0 	sb	t1,160(sp)
    80fc:	0c000000 	jal	0 <func_8006F0A0>
    8100:	afa5008c 	sw	a1,140(sp)
    8104:	8fa3008c 	lw	v1,140(sp)
    8108:	0c000000 	jal	0 <func_8006F0A0>
    810c:	8c6402d0 	lw	a0,720(v1)
    8110:	8fa3008c 	lw	v1,140(sp)
    8114:	93a900a0 	lbu	t1,160(sp)
    8118:	93aa00a1 	lbu	t2,161(sp)
    811c:	93ab00a2 	lbu	t3,162(sp)
    8120:	c7ae0098 	lwc1	$f14,152(sp)
    8124:	244e0008 	addiu	t6,v0,8
    8128:	ac6202d0 	sw	v0,720(v1)
    812c:	3c0fe300 	lui	t7,0xe300
    8130:	ac6e02d0 	sw	t6,720(v1)
    8134:	35ef1a01 	ori	t7,t7,0x1a01
    8138:	24180020 	li	t8,32
    813c:	ac580004 	sw	t8,4(v0)
    8140:	ac4f0000 	sw	t7,0(v0)
    8144:	8c6202d0 	lw	v0,720(v1)
    8148:	3c0ee300 	lui	t6,0xe300
    814c:	35ce1801 	ori	t6,t6,0x1801
    8150:	24590008 	addiu	t9,v0,8
    8154:	ac7902d0 	sw	t9,720(v1)
    8158:	240f0080 	li	t7,128
    815c:	ac4f0004 	sw	t7,4(v0)
    8160:	ac4e0000 	sw	t6,0(v0)
    8164:	8c6202d0 	lw	v0,720(v1)
    8168:	3c19fa00 	lui	t9,0xfa00
    816c:	37390080 	ori	t9,t9,0x80
    8170:	24580008 	addiu	t8,v0,8
    8174:	ac7802d0 	sw	t8,720(v1)
    8178:	ac590000 	sw	t9,0(v0)
    817c:	93af00a4 	lbu	t7,164(sp)
    8180:	93ae00a5 	lbu	t6,165(sp)
    8184:	00002825 	move	a1,zero
    8188:	000fc600 	sll	t8,t7,0x18
    818c:	000e7c00 	sll	t7,t6,0x10
    8190:	030fc825 	or	t9,t8,t7
    8194:	93b800a6 	lbu	t8,166(sp)
    8198:	00003825 	move	a3,zero
    819c:	00187a00 	sll	t7,t8,0x8
    81a0:	8fb80058 	lw	t8,88(sp)
    81a4:	032f7025 	or	t6,t9,t7
    81a8:	930f0b0b 	lbu	t7,2827(t8)
    81ac:	01cfc025 	or	t8,t6,t7
    81b0:	ac580004 	sw	t8,4(v0)
    81b4:	8c6202d0 	lw	v0,720(v1)
    81b8:	3c0efb00 	lui	t6,0xfb00
    81bc:	0009c600 	sll	t8,t1,0x18
    81c0:	24590008 	addiu	t9,v0,8
    81c4:	ac7902d0 	sw	t9,720(v1)
    81c8:	ac4e0000 	sw	t6,0(v0)
    81cc:	000a7400 	sll	t6,t2,0x10
    81d0:	8fb90058 	lw	t9,88(sp)
    81d4:	030e7825 	or	t7,t8,t6
    81d8:	000bc200 	sll	t8,t3,0x8
    81dc:	01f87025 	or	t6,t7,t8
    81e0:	93380b0c 	lbu	t8,2828(t9)
    81e4:	01d8c825 	or	t9,t6,t8
    81e8:	ac590004 	sw	t9,4(v0)
    81ec:	8c6202d0 	lw	v0,720(v1)
    81f0:	3c0edb06 	lui	t6,0xdb06
    81f4:	35ce0020 	ori	t6,t6,0x20
    81f8:	244f0008 	addiu	t7,v0,8
    81fc:	ac6f02d0 	sw	t7,720(v1)
    8200:	ac4e0000 	sw	t6,0(v0)
    8204:	8fb800b8 	lw	t8,184(sp)
    8208:	240f0020 	li	t7,32
    820c:	24190200 	li	t9,512
    8210:	8f040000 	lw	a0,0(t8)
    8214:	97b80094 	lhu	t8,148(sp)
    8218:	afaf0014 	sw	t7,20(sp)
    821c:	97af0092 	lhu	t7,146(sp)
    8220:	afb90010 	sw	t9,16(sp)
    8224:	240e0001 	li	t6,1
    8228:	33190fff 	andi	t9,t8,0xfff
    822c:	afae0018 	sw	t6,24(sp)
    8230:	afb9001c 	sw	t9,28(sp)
    8234:	24180fff 	li	t8,4095
    8238:	31ee0fff 	andi	t6,t7,0xfff
    823c:	97a60096 	lhu	a2,150(sp)
    8240:	030ec823 	subu	t9,t8,t6
    8244:	24180040 	li	t8,64
    8248:	240f0100 	li	t7,256
    824c:	afaf0024 	sw	t7,36(sp)
    8250:	afb80028 	sw	t8,40(sp)
    8254:	afb90020 	sw	t9,32(sp)
    8258:	afa3008c 	sw	v1,140(sp)
    825c:	e7ae0098 	swc1	$f14,152(sp)
    8260:	afa20068 	sw	v0,104(sp)
    8264:	0c000000 	jal	0 <func_8006F0A0>
    8268:	30c60fff 	andi	a2,a2,0xfff
    826c:	8fa80068 	lw	t0,104(sp)
    8270:	8fa3008c 	lw	v1,140(sp)
    8274:	c7ae0098 	lwc1	$f14,152(sp)
    8278:	ad020004 	sw	v0,4(t0)
    827c:	8c6202d0 	lw	v0,720(v1)
    8280:	3c19e300 	lui	t9,0xe300
    8284:	37391001 	ori	t9,t9,0x1001
    8288:	244e0008 	addiu	t6,v0,8
    828c:	ac6e02d0 	sw	t6,720(v1)
    8290:	ac400004 	sw	zero,4(v0)
    8294:	ac590000 	sw	t9,0(v0)
    8298:	8c6202d0 	lw	v0,720(v1)
    829c:	3c0e0000 	lui	t6,0x0
    82a0:	25ce0000 	addiu	t6,t6,0
    82a4:	244f0008 	addiu	t7,v0,8
    82a8:	ac6f02d0 	sw	t7,720(v1)
    82ac:	3c18de00 	lui	t8,0xde00
    82b0:	ac580000 	sw	t8,0(v0)
    82b4:	ac4e0004 	sw	t6,4(v0)
    82b8:	8fb900b8 	lw	t9,184(sp)
    82bc:	3c060000 	lui	a2,0x0
    82c0:	24c60000 	addiu	a2,a2,0
    82c4:	8f250000 	lw	a1,0(t9)
    82c8:	27a4007c 	addiu	a0,sp,124
    82cc:	24070fe4 	li	a3,4068
    82d0:	0c000000 	jal	0 <func_8006F0A0>
    82d4:	e7ae0098 	swc1	$f14,152(sp)
    82d8:	c7ae0098 	lwc1	$f14,152(sp)
    82dc:	3c020000 	lui	v0,0x0
    82e0:	24420000 	addiu	v0,v0,0
    82e4:	4600718d 	trunc.w.s	$f6,$f14
    82e8:	944f0000 	lhu	t7,0(v0)
    82ec:	8fbf0034 	lw	ra,52(sp)
    82f0:	27bd00b8 	addiu	sp,sp,184
    82f4:	440e3000 	mfc1	t6,$f6
    82f8:	00000000 	nop
    82fc:	01eec821 	addu	t9,t7,t6
    8300:	03e00008 	jr	ra
    8304:	a4590000 	sh	t9,0(v0)

00008308 <func_800773A8>:
    8308:	27bdffd8 	addiu	sp,sp,-40
    830c:	3c010001 	lui	at,0x1
    8310:	afbf0014 	sw	ra,20(sp)
    8314:	afa40028 	sw	a0,40(sp)
    8318:	afa60030 	sw	a2,48(sp)
    831c:	afa70034 	sw	a3,52(sp)
    8320:	00811821 	addu	v1,a0,at
    8324:	906e1cbf 	lbu	t6,7359(v1)
    8328:	44856000 	mtc1	a1,$f12
    832c:	24010005 	li	at,5
    8330:	11c1007a 	beq	t6,at,851c <func_800773A8+0x214>
    8334:	00803025 	move	a2,a0
    8338:	afa3001c 	sw	v1,28(sp)
    833c:	afa60028 	sw	a2,40(sp)
    8340:	0c000000 	jal	0 <func_8006F0A0>
    8344:	e7ac002c 	swc1	$f12,44(sp)
    8348:	8fa3001c 	lw	v1,28(sp)
    834c:	8fa60028 	lw	a2,40(sp)
    8350:	c7a20034 	lwc1	$f2,52(sp)
    8354:	10400071 	beqz	v0,851c <func_800773A8+0x214>
    8358:	c7ac002c 	lwc1	$f12,44(sp)
    835c:	44808000 	mtc1	zero,$f16
    8360:	3c013f80 	lui	at,0x3f80
    8364:	44817000 	mtc1	at,$f14
    8368:	4610603c 	c.lt.s	$f12,$f16
    836c:	00002025 	move	a0,zero
    8370:	24050003 	li	a1,3
    8374:	45020003 	bc1fl	8384 <func_800773A8+0x7c>
    8378:	460c703c 	c.lt.s	$f14,$f12
    837c:	46008306 	mov.s	$f12,$f16
    8380:	460c703c 	c.lt.s	$f14,$f12
    8384:	00000000 	nop
    8388:	45020003 	bc1fl	8398 <func_800773A8+0x90>
    838c:	4602603c 	c.lt.s	$f12,$f2
    8390:	46007306 	mov.s	$f12,$f14
    8394:	4602603c 	c.lt.s	$f12,$f2
    8398:	46026001 	sub.s	$f0,$f12,$f2
    839c:	45020003 	bc1fl	83ac <func_800773A8+0xa4>
    83a0:	846f0af6 	lh	t7,2806(v1)
    83a4:	46008006 	mov.s	$f0,$f16
    83a8:	846f0af6 	lh	t7,2806(v1)
    83ac:	c7a40030 	lwc1	$f4,48(sp)
    83b0:	46106032 	c.eq.s	$f12,$f16
    83b4:	448f3000 	mtc1	t7,$f6
    83b8:	3c010001 	lui	at,0x1
    83bc:	00260821 	addu	at,at,a2
    83c0:	46803220 	cvt.s.w	$f8,$f6
    83c4:	46082281 	sub.s	$f10,$f4,$f8
    83c8:	46005482 	mul.s	$f18,$f10,$f0
    83cc:	4600918d 	trunc.w.s	$f6,$f18
    83d0:	44193000 	mfc1	t9,$f6
    83d4:	4500000b 	bc1f	8404 <func_800773A8+0xfc>
    83d8:	a4390ac2 	sh	t9,2754(at)
    83dc:	3c010001 	lui	at,0x1
    83e0:	00c11821 	addu	v1,a2,at
    83e4:	00002025 	move	a0,zero
    83e8:	24050003 	li	a1,3
    83ec:	24840001 	addiu	a0,a0,1
    83f0:	24630002 	addiu	v1,v1,2
    83f4:	1485fffd 	bne	a0,a1,83ec <func_800773A8+0xe4>
    83f8:	a4600aba 	sh	zero,2746(v1)
    83fc:	1000001f 	b	847c <func_800773A8+0x174>
    8400:	c7a00038 	lwc1	$f0,56(sp)
    8404:	3c0140a0 	lui	at,0x40a0
    8408:	44812000 	mtc1	at,$f4
    840c:	3c010001 	lui	at,0x1
    8410:	00c11821 	addu	v1,a2,at
    8414:	46046002 	mul.s	$f0,$f12,$f4
    8418:	00c11021 	addu	v0,a2,at
    841c:	4600703c 	c.lt.s	$f14,$f0
    8420:	00000000 	nop
    8424:	45000002 	bc1f	8430 <func_800773A8+0x128>
    8428:	00000000 	nop
    842c:	46007006 	mov.s	$f0,$f14
    8430:	90480af3 	lbu	t0,2803(v0)
    8434:	3c014f80 	lui	at,0x4f80
    8438:	44884000 	mtc1	t0,$f8
    843c:	05010004 	bgez	t0,8450 <func_800773A8+0x148>
    8440:	468042a0 	cvt.s.w	$f10,$f8
    8444:	44819000 	mtc1	at,$f18
    8448:	00000000 	nop
    844c:	46125280 	add.s	$f10,$f10,$f18
    8450:	46005182 	mul.s	$f6,$f10,$f0
    8454:	24840001 	addiu	a0,a0,1
    8458:	24630002 	addiu	v1,v1,2
    845c:	24420001 	addiu	v0,v0,1
    8460:	4600310d 	trunc.w.s	$f4,$f6
    8464:	440c2000 	mfc1	t4,$f4
    8468:	00000000 	nop
    846c:	000c6823 	negu	t5,t4
    8470:	1485ffef 	bne	a0,a1,8430 <func_800773A8+0x128>
    8474:	a46d0aba 	sh	t5,2746(v1)
    8478:	c7a00038 	lwc1	$f0,56(sp)
    847c:	3c010001 	lui	at,0x1
    8480:	00c11821 	addu	v1,a2,at
    8484:	4610003e 	c.le.s	$f0,$f16
    8488:	00002025 	move	a0,zero
    848c:	45030024 	bc1tl	8520 <func_800773A8+0x218>
    8490:	8fbf0014 	lw	ra,20(sp)
    8494:	46006302 	mul.s	$f12,$f12,$f0
    8498:	00c11021 	addu	v0,a2,at
    849c:	904e0ae4 	lbu	t6,2788(v0)
    84a0:	3c014f80 	lui	at,0x4f80
    84a4:	448e4000 	mtc1	t6,$f8
    84a8:	05c10004 	bgez	t6,84bc <func_800773A8+0x1b4>
    84ac:	468044a0 	cvt.s.w	$f18,$f8
    84b0:	44815000 	mtc1	at,$f10
    84b4:	00000000 	nop
    84b8:	460a9480 	add.s	$f18,$f18,$f10
    84bc:	460c9182 	mul.s	$f6,$f18,$f12
    84c0:	3c014f80 	lui	at,0x4f80
    84c4:	4600310d 	trunc.w.s	$f4,$f6
    84c8:	44082000 	mfc1	t0,$f4
    84cc:	00000000 	nop
    84d0:	00084823 	negu	t1,t0
    84d4:	a4690ab0 	sh	t1,2736(v1)
    84d8:	904a0aea 	lbu	t2,2794(v0)
    84dc:	448a4000 	mtc1	t2,$f8
    84e0:	05410004 	bgez	t2,84f4 <func_800773A8+0x1ec>
    84e4:	468042a0 	cvt.s.w	$f10,$f8
    84e8:	44819000 	mtc1	at,$f18
    84ec:	00000000 	nop
    84f0:	46125280 	add.s	$f10,$f10,$f18
    84f4:	460c5182 	mul.s	$f6,$f10,$f12
    84f8:	24840001 	addiu	a0,a0,1
    84fc:	24630002 	addiu	v1,v1,2
    8500:	24420001 	addiu	v0,v0,1
    8504:	4600310d 	trunc.w.s	$f4,$f6
    8508:	440e2000 	mfc1	t6,$f4
    850c:	00000000 	nop
    8510:	000e7823 	negu	t7,t6
    8514:	1485ffe1 	bne	a0,a1,849c <func_800773A8+0x194>
    8518:	a46f0ab4 	sh	t7,2740(v1)
    851c:	8fbf0014 	lw	ra,20(sp)
    8520:	27bd0028 	addiu	sp,sp,40
    8524:	03e00008 	jr	ra
    8528:	00000000 	nop

0000852c <func_800775CC>:
    852c:	3c020000 	lui	v0,0x0
    8530:	03e00008 	jr	ra
    8534:	8c420018 	lw	v0,24(v0)

00008538 <func_800775D8>:
    8538:	3c010000 	lui	at,0x0
    853c:	03e00008 	jr	ra
    8540:	ac200018 	sw	zero,24(at)

00008544 <func_800775E4>:
    8544:	3c020000 	lui	v0,0x0
    8548:	03e00008 	jr	ra
    854c:	8c420014 	lw	v0,20(v0)

00008550 <func_800775F0>:
    8550:	3c010000 	lui	at,0x0
    8554:	afa40000 	sw	a0,0(sp)
    8558:	03e00008 	jr	ra
    855c:	a424140e 	sh	a0,5134(at)

00008560 <func_80077600>:
    8560:	3c0e0000 	lui	t6,0x0
    8564:	95ce140e 	lhu	t6,5134(t6)
    8568:	3401ffff 	li	at,0xffff
    856c:	00001825 	move	v1,zero
    8570:	15c10002 	bne	t6,at,857c <func_80077600+0x1c>
    8574:	00000000 	nop
    8578:	24030001 	li	v1,1
    857c:	03e00008 	jr	ra
    8580:	00601025 	move	v0,v1

00008584 <func_80077624>:
    8584:	27bdffe8 	addiu	sp,sp,-24
    8588:	afbf0014 	sw	ra,20(sp)
    858c:	908507a5 	lbu	a1,1957(a0)
    8590:	24010013 	li	at,19
    8594:	14a10005 	bne	a1,at,85ac <func_80077624+0x28>
    8598:	00000000 	nop
    859c:	0c000000 	jal	0 <func_8006F0A0>
    85a0:	24040005 	li	a0,5
    85a4:	10000004 	b	85b8 <func_80077624+0x34>
    85a8:	2404000e 	li	a0,14
    85ac:	0c000000 	jal	0 <func_8006F0A0>
    85b0:	30a400ff 	andi	a0,a1,0xff
    85b4:	2404000e 	li	a0,14
    85b8:	24050001 	li	a1,1
    85bc:	0c000000 	jal	0 <func_8006F0A0>
    85c0:	24060001 	li	a2,1
    85c4:	2404000f 	li	a0,15
    85c8:	24050001 	li	a1,1
    85cc:	0c000000 	jal	0 <func_8006F0A0>
    85d0:	24060001 	li	a2,1
    85d4:	8fbf0014 	lw	ra,20(sp)
    85d8:	27bd0018 	addiu	sp,sp,24
    85dc:	03e00008 	jr	ra
    85e0:	00000000 	nop

000085e4 <func_80077684>:
    85e4:	27bdffe8 	addiu	sp,sp,-24
    85e8:	afbf0014 	sw	ra,20(sp)
    85ec:	afa40018 	sw	a0,24(sp)
    85f0:	2404000e 	li	a0,14
    85f4:	24050001 	li	a1,1
    85f8:	0c000000 	jal	0 <func_8006F0A0>
    85fc:	00003025 	move	a2,zero
    8600:	2404000f 	li	a0,15
    8604:	24050001 	li	a1,1
    8608:	0c000000 	jal	0 <func_8006F0A0>
    860c:	00003025 	move	a2,zero
    8610:	0c000000 	jal	0 <func_8006F0A0>
    8614:	00002025 	move	a0,zero
    8618:	24010001 	li	at,1
    861c:	14410005 	bne	v0,at,8634 <func_80077684+0x50>
    8620:	240e0080 	li	t6,128
    8624:	3c010000 	lui	at,0x0
    8628:	a02e13e0 	sb	t6,5088(at)
    862c:	0c000000 	jal	0 <func_8006F0A0>
    8630:	8fa40018 	lw	a0,24(sp)
    8634:	8fbf0014 	lw	ra,20(sp)
    8638:	27bd0018 	addiu	sp,sp,24
    863c:	03e00008 	jr	ra
    8640:	00000000 	nop

00008644 <func_800776E4>:
    8644:	3c010000 	lui	at,0x0
    8648:	3c020000 	lui	v0,0x0
    864c:	a0200000 	sb	zero,0(at)
    8650:	24420000 	addiu	v0,v0,0
    8654:	844f1394 	lh	t7,5012(v0)
    8658:	27bdffe8 	addiu	sp,sp,-24
    865c:	240efffd 	li	t6,-3
    8660:	3c010001 	lui	at,0x1
    8664:	afbf0014 	sw	ra,20(sp)
    8668:	ac400008 	sw	zero,8(v0)
    866c:	ac4e1364 	sw	t6,4964(v0)
    8670:	00240821 	addu	at,at,a0
    8674:	a42f1e1a 	sh	t7,7706(at)
    8678:	3c010001 	lui	at,0x1
    867c:	00240821 	addu	at,at,a0
    8680:	24180014 	li	t8,20
    8684:	a0381e15 	sb	t8,7701(at)
    8688:	3c010001 	lui	at,0x1
    868c:	24050003 	li	a1,3
    8690:	00240821 	addu	at,at,a0
    8694:	a0251e5e 	sb	a1,7774(at)
    8698:	3c030001 	lui	v1,0x1
    869c:	a045141d 	sb	a1,5149(v0)
    86a0:	00641821 	addu	v1,v1,a0
    86a4:	84631e1a 	lh	v1,7706(v1)
    86a8:	24010053 	li	at,83
    86ac:	1061001b 	beq	v1,at,871c <func_800776E4+0xd8>
    86b0:	240100e4 	li	at,228
    86b4:	10610015 	beq	v1,at,870c <func_800776E4+0xc8>
    86b8:	240100fc 	li	at,252
    86bc:	10610019 	beq	v1,at,8724 <func_800776E4+0xe0>
    86c0:	24010102 	li	at,258
    86c4:	10610009 	beq	v1,at,86ec <func_800776E4+0xa8>
    86c8:	24010123 	li	at,291
    86cc:	1061000b 	beq	v1,at,86fc <func_800776E4+0xb8>
    86d0:	24010147 	li	at,327
    86d4:	54610014 	bnel	v1,at,8728 <func_800776E4+0xe4>
    86d8:	8fbf0014 	lw	ra,20(sp)
    86dc:	0c000000 	jal	0 <func_8006F0A0>
    86e0:	240400b9 	li	a0,185
    86e4:	10000010 	b	8728 <func_800776E4+0xe4>
    86e8:	8fbf0014 	lw	ra,20(sp)
    86ec:	0c000000 	jal	0 <func_8006F0A0>
    86f0:	240400b1 	li	a0,177
    86f4:	1000000c 	b	8728 <func_800776E4+0xe4>
    86f8:	8fbf0014 	lw	ra,20(sp)
    86fc:	0c000000 	jal	0 <func_8006F0A0>
    8700:	240400b8 	li	a0,184
    8704:	10000008 	b	8728 <func_800776E4+0xe4>
    8708:	8fbf0014 	lw	ra,20(sp)
    870c:	0c000000 	jal	0 <func_8006F0A0>
    8710:	240400b6 	li	a0,182
    8714:	10000004 	b	8728 <func_800776E4+0xe4>
    8718:	8fbf0014 	lw	ra,20(sp)
    871c:	0c000000 	jal	0 <func_8006F0A0>
    8720:	240400a7 	li	a0,167
    8724:	8fbf0014 	lw	ra,20(sp)
    8728:	27bd0018 	addiu	sp,sp,24
    872c:	03e00008 	jr	ra
    8730:	00000000 	nop
	...
