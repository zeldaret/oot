
build/src/overlays/actors/ovl_En_fHG/z_en_fhg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnfHG_Init>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afa50024 	sw	a1,36(sp)
       8:	afbf001c 	sw	ra,28(sp)
       c:	afb00018 	sw	s0,24(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnfHG_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	8fa40024 	lw	a0,36(sp)
      24:	0c000000 	jal	0 <EnfHG_Init>
      28:	24050014 	li	a1,20
      2c:	3c053c3c 	lui	a1,0x3c3c
      30:	34a56a7e 	ori	a1,a1,0x6a7e
      34:	0c000000 	jal	0 <EnfHG_Init>
      38:	02002025 	move	a0,s0
      3c:	3c01c060 	lui	at,0xc060
      40:	44812000 	mtc1	at,$f4
      44:	3c05c522 	lui	a1,0xc522
      48:	34a58000 	ori	a1,a1,0x8000
      4c:	260400b4 	addiu	a0,s0,180
      50:	00003025 	move	a2,zero
      54:	3c0741a0 	lui	a3,0x41a0
      58:	0c000000 	jal	0 <EnfHG_Init>
      5c:	e604006c 	swc1	$f4,108(s0)
      60:	8e0e0028 	lw	t6,40(s0)
      64:	3c01428c 	lui	at,0x428c
      68:	8e0f0024 	lw	t7,36(s0)
      6c:	ae0e003c 	sw	t6,60(s0)
      70:	c608003c 	lwc1	$f8,60(s0)
      74:	44815000 	mtc1	at,$f10
      78:	ae0f0038 	sw	t7,56(s0)
      7c:	44803000 	mtc1	zero,$f6
      80:	460a4400 	add.s	$f16,$f8,$f10
      84:	8e0f002c 	lw	t7,44(s0)
      88:	3c060601 	lui	a2,0x601
      8c:	3c070601 	lui	a3,0x601
      90:	e610003c 	swc1	$f16,60(s0)
      94:	e6060068 	swc1	$f6,104(s0)
      98:	ae0f0040 	sw	t7,64(s0)
      9c:	8fa40024 	lw	a0,36(sp)
      a0:	24e7b4c8 	addiu	a3,a3,-19256
      a4:	24c6b098 	addiu	a2,a2,-20328
      a8:	0c000000 	jal	0 <EnfHG_Init>
      ac:	26050204 	addiu	a1,s0,516
      b0:	8602001c 	lh	v0,28(s0)
      b4:	8fa50024 	lw	a1,36(sp)
      b8:	02002025 	move	a0,s0
      bc:	2841000a 	slti	at,v0,10
      c0:	14200007 	bnez	at,e0 <EnfHG_Init+0xe0>
      c4:	2446fff6 	addiu	a2,v0,-10
      c8:	00063400 	sll	a2,a2,0x10
      cc:	00063403 	sra	a2,a2,0x10
      d0:	0c000000 	jal	0 <EnfHG_Init>
      d4:	02002025 	move	a0,s0
      d8:	10000004 	b	ec <EnfHG_Init+0xec>
      dc:	8fbf001c 	lw	ra,28(sp)
      e0:	0c000000 	jal	0 <EnfHG_Init>
      e4:	8fa50024 	lw	a1,36(sp)
      e8:	8fbf001c 	lw	ra,28(sp)
      ec:	8fb00018 	lw	s0,24(sp)
      f0:	27bd0020 	addiu	sp,sp,32
      f4:	03e00008 	jr	ra
      f8:	00000000 	nop

000000fc <EnfHG_Destroy>:
      fc:	27bdffe8 	addiu	sp,sp,-24
     100:	afa40018 	sw	a0,24(sp)
     104:	afbf0014 	sw	ra,20(sp)
     108:	3c040000 	lui	a0,0x0
     10c:	afa5001c 	sw	a1,28(sp)
     110:	0c000000 	jal	0 <EnfHG_Init>
     114:	24840000 	addiu	a0,a0,0
     118:	8fa50018 	lw	a1,24(sp)
     11c:	8fa4001c 	lw	a0,28(sp)
     120:	0c000000 	jal	0 <EnfHG_Init>
     124:	24a50204 	addiu	a1,a1,516
     128:	3c040000 	lui	a0,0x0
     12c:	0c000000 	jal	0 <EnfHG_Init>
     130:	24840000 	addiu	a0,a0,0
     134:	8fbf0014 	lw	ra,20(sp)
     138:	27bd0018 	addiu	sp,sp,24
     13c:	03e00008 	jr	ra
     140:	00000000 	nop

00000144 <func_80B62B04>:
     144:	27bdffe8 	addiu	sp,sp,-24
     148:	afa5001c 	sw	a1,28(sp)
     14c:	afbf0014 	sw	ra,20(sp)
     150:	00803025 	move	a2,a0
     154:	3c050601 	lui	a1,0x601
     158:	24a5e8a0 	addiu	a1,a1,-5984
     15c:	afa60018 	sw	a2,24(sp)
     160:	0c000000 	jal	0 <EnfHG_Init>
     164:	24840250 	addiu	a0,a0,592
     168:	3c014160 	lui	at,0x4160
     16c:	8fa60018 	lw	a2,24(sp)
     170:	44812000 	mtc1	at,$f4
     174:	3c01c396 	lui	at,0xc396
     178:	44813000 	mtc1	at,$f6
     17c:	3c0e0000 	lui	t6,0x0
     180:	25ce0000 	addiu	t6,t6,0
     184:	3c010000 	lui	at,0x0
     188:	acce01fc 	sw	t6,508(a2)
     18c:	e4c40024 	swc1	$f4,36(a2)
     190:	e4c60028 	swc1	$f6,40(a2)
     194:	c4280000 	lwc1	$f8,0(at)
     198:	e4c8002c 	swc1	$f8,44(a2)
     19c:	8fbf0014 	lw	ra,20(sp)
     1a0:	27bd0018 	addiu	sp,sp,24
     1a4:	03e00008 	jr	ra
     1a8:	00000000 	nop

000001ac <func_80B62B6C>:
     1ac:	27bdff98 	addiu	sp,sp,-104
     1b0:	afbf003c 	sw	ra,60(sp)
     1b4:	afb00038 	sw	s0,56(sp)
     1b8:	afa5006c 	sw	a1,108(sp)
     1bc:	8c8f0118 	lw	t7,280(a0)
     1c0:	8ca71c44 	lw	a3,7236(a1)
     1c4:	24010009 	li	at,9
     1c8:	afaf005c 	sw	t7,92(sp)
     1cc:	848301ca 	lh	v1,458(a0)
     1d0:	00808025 	move	s0,a0
     1d4:	50610007 	beql	v1,at,1f4 <func_80B62B6C+0x48>
     1d8:	2c610010 	sltiu	at,v1,16
     1dc:	26040250 	addiu	a0,s0,592
     1e0:	0c000000 	jal	0 <EnfHG_Init>
     1e4:	afa70060 	sw	a3,96(sp)
     1e8:	8fa70060 	lw	a3,96(sp)
     1ec:	860301ca 	lh	v1,458(s0)
     1f0:	2c610010 	sltiu	at,v1,16
     1f4:	10200467 	beqz	at,1394 <L80B63D54>
     1f8:	0003c080 	sll	t8,v1,0x2
     1fc:	3c010000 	lui	at,0x0
     200:	00380821 	addu	at,at,t8
     204:	8c380000 	lw	t8,0(at)
     208:	03000008 	jr	t8
     20c:	00000000 	nop

00000210 <L80B62BD0>:
     210:	3c014160 	lui	at,0x4160
     214:	44811000 	mtc1	at,$f2
     218:	c4e40024 	lwc1	$f4,36(a3)
     21c:	3c014316 	lui	at,0x4316
     220:	44816000 	mtc1	at,$f12
     224:	46022001 	sub.s	$f0,$f4,$f2
     228:	3c010000 	lui	at,0x0
     22c:	46000005 	abs.s	$f0,$f0
     230:	460c003c 	c.lt.s	$f0,$f12
     234:	00000000 	nop
     238:	45020457 	bc1fl	1398 <L80B63D54+0x4>
     23c:	860501cc 	lh	a1,460(s0)
     240:	c4e6002c 	lwc1	$f6,44(a3)
     244:	c4280000 	lwc1	$f8,0(at)
     248:	2419000f 	li	t9,15
     24c:	46083001 	sub.s	$f0,$f6,$f8
     250:	46000005 	abs.s	$f0,$f0
     254:	460c003c 	c.lt.s	$f0,$f12
     258:	00000000 	nop
     25c:	4502044e 	bc1fl	1398 <L80B63D54+0x4>
     260:	860501cc 	lh	a1,460(s0)
     264:	1000044b 	b	1394 <L80B63D54>
     268:	a61901ca 	sh	t9,458(s0)

0000026c <L80B62C2C>:
     26c:	3c014160 	lui	at,0x4160
     270:	44811000 	mtc1	at,$f2
     274:	c4ea0024 	lwc1	$f10,36(a3)
     278:	3c0142c8 	lui	at,0x42c8
     27c:	44816000 	mtc1	at,$f12
     280:	46025001 	sub.s	$f0,$f10,$f2
     284:	3c010000 	lui	at,0x0
     288:	46000005 	abs.s	$f0,$f0
     28c:	460c003c 	c.lt.s	$f0,$f12
     290:	00000000 	nop
     294:	45020440 	bc1fl	1398 <L80B63D54+0x4>
     298:	860501cc 	lh	a1,460(s0)
     29c:	c4f2002c 	lwc1	$f18,44(a3)
     2a0:	c4240000 	lwc1	$f4,0(at)
     2a4:	24080001 	li	t0,1
     2a8:	3c090000 	lui	t1,0x0
     2ac:	46049001 	sub.s	$f0,$f18,$f4
     2b0:	46000005 	abs.s	$f0,$f0
     2b4:	460c003c 	c.lt.s	$f0,$f12
     2b8:	00000000 	nop
     2bc:	45020436 	bc1fl	1398 <L80B63D54+0x4>
     2c0:	860501cc 	lh	a1,460(s0)
     2c4:	a60801ca 	sh	t0,458(s0)
     2c8:	95290ee2 	lhu	t1,3810(t1)
     2cc:	240b0039 	li	t3,57
     2d0:	312a0004 	andi	t2,t1,0x4
     2d4:	51400430 	beqzl	t2,1398 <L80B63D54+0x4>
     2d8:	860501cc 	lh	a1,460(s0)
     2dc:	1000042d 	b	1394 <L80B63D54>
     2e0:	a60b01d4 	sh	t3,468(s0)

000002e4 <L80B62CA4>:
     2e4:	3c0c0000 	lui	t4,0x0
     2e8:	958c0ee2 	lhu	t4,3810(t4)
     2ec:	8fa4006c 	lw	a0,108(sp)
     2f0:	318d0004 	andi	t5,t4,0x4
     2f4:	11a00032 	beqz	t5,3c0 <L80B62CA4+0xdc>
     2f8:	24851d64 	addiu	a1,a0,7524
     2fc:	860301d4 	lh	v1,468(s0)
     300:	8fa6006c 	lw	a2,108(sp)
     304:	24010037 	li	at,55
     308:	14610013 	bne	v1,at,358 <L80B62CA4+0x74>
     30c:	24c41c24 	addiu	a0,a2,7204
     310:	3c014160 	lui	at,0x4160
     314:	44811000 	mtc1	at,$f2
     318:	3c01c302 	lui	at,0xc302
     31c:	44813000 	mtc1	at,$f6
     320:	3c010000 	lui	at,0x0
     324:	c4280000 	lwc1	$f8,0(at)
     328:	240f0100 	li	t7,256
     32c:	afaf0028 	sw	t7,40(sp)
     330:	02002825 	move	a1,s0
     334:	2407002e 	li	a3,46
     338:	afa0001c 	sw	zero,28(sp)
     33c:	afa00020 	sw	zero,32(sp)
     340:	afa00024 	sw	zero,36(sp)
     344:	e7a20010 	swc1	$f2,16(sp)
     348:	e7a60014 	swc1	$f6,20(sp)
     34c:	0c000000 	jal	0 <EnfHG_Init>
     350:	e7a80018 	swc1	$f8,24(sp)
     354:	860301d4 	lh	v1,468(s0)
     358:	24010033 	li	at,51
     35c:	14610006 	bne	v1,at,378 <L80B62CA4+0x94>
     360:	2405283c 	li	a1,10300
     364:	0c000000 	jal	0 <EnfHG_Init>
     368:	8e04011c 	lw	a0,284(s0)
     36c:	0c000000 	jal	0 <EnfHG_Init>
     370:	2404001b 	li	a0,27
     374:	860301d4 	lh	v1,468(s0)
     378:	54600407 	bnezl	v1,1398 <L80B63D54+0x4>
     37c:	860501cc 	lh	a1,460(s0)
     380:	0c000000 	jal	0 <EnfHG_Init>
     384:	00000000 	nop
     388:	3c010000 	lui	at,0x0
     38c:	c42a0000 	lwc1	$f10,0(at)
     390:	02002025 	move	a0,s0
     394:	8fa5006c 	lw	a1,108(sp)
     398:	460a0482 	mul.s	$f18,$f0,$f10
     39c:	4600910d 	trunc.w.s	$f4,$f18
     3a0:	44062000 	mfc1	a2,$f4
     3a4:	00000000 	nop
     3a8:	00063400 	sll	a2,a2,0x10
     3ac:	0c000000 	jal	0 <EnfHG_Init>
     3b0:	00063403 	sra	a2,a2,0x10
     3b4:	241900ff 	li	t9,255
     3b8:	100003f6 	b	1394 <L80B63D54>
     3bc:	a219014c 	sb	t9,332(s0)
     3c0:	0c000000 	jal	0 <EnfHG_Init>
     3c4:	afa70060 	sw	a3,96(sp)
     3c8:	8fa4006c 	lw	a0,108(sp)
     3cc:	02002825 	move	a1,s0
     3d0:	0c000000 	jal	0 <EnfHG_Init>
     3d4:	24060008 	li	a2,8
     3d8:	0c000000 	jal	0 <EnfHG_Init>
     3dc:	8fa4006c 	lw	a0,108(sp)
     3e0:	a60201cc 	sh	v0,460(s0)
     3e4:	8fa4006c 	lw	a0,108(sp)
     3e8:	00002825 	move	a1,zero
     3ec:	0c000000 	jal	0 <EnfHG_Init>
     3f0:	24060001 	li	a2,1
     3f4:	8fa4006c 	lw	a0,108(sp)
     3f8:	860501cc 	lh	a1,460(s0)
     3fc:	0c000000 	jal	0 <EnfHG_Init>
     400:	24060007 	li	a2,7
     404:	3c01c220 	lui	at,0xc220
     408:	44813000 	mtc1	at,$f6
     40c:	24090002 	li	t1,2
     410:	240a003c 	li	t2,60
     414:	3c041001 	lui	a0,0x1001
     418:	a60901ca 	sh	t1,458(s0)
     41c:	a60a01d4 	sh	t2,468(s0)
     420:	348400ff 	ori	a0,a0,0xff
     424:	0c000000 	jal	0 <EnfHG_Init>
     428:	e6060028 	swc1	$f6,40(s0)
     42c:	3c020000 	lui	v0,0x0
     430:	24420000 	addiu	v0,v0,0
     434:	944b0ee2 	lhu	t3,3810(v0)
     438:	8fa4006c 	lw	a0,108(sp)
     43c:	24050023 	li	a1,35
     440:	356c0004 	ori	t4,t3,0x4
     444:	0c000000 	jal	0 <EnfHG_Init>
     448:	a44c0ee2 	sh	t4,3810(v0)
     44c:	8fa70060 	lw	a3,96(sp)

00000450 <L80B62E10>:
     450:	3c014160 	lui	at,0x4160
     454:	44811000 	mtc1	at,$f2
     458:	3c01c1d0 	lui	at,0xc1d0
     45c:	44814000 	mtc1	at,$f8
     460:	3c010000 	lui	at,0x0
     464:	e4e20024 	swc1	$f2,36(a3)
     468:	e4e80028 	swc1	$f8,40(a3)
     46c:	c42a0000 	lwc1	$f10,0(at)
     470:	a4e000b6 	sh	zero,182(a3)
     474:	84ed00b6 	lh	t5,182(a3)
     478:	44809000 	mtc1	zero,$f18
     47c:	3c014080 	lui	at,0x4080
     480:	44812000 	mtc1	at,$f4
     484:	e4ea002c 	swc1	$f10,44(a3)
     488:	a4ed0032 	sh	t5,50(a3)
     48c:	e4f20068 	swc1	$f18,104(a3)
     490:	3c010000 	lui	at,0x0
     494:	e6020150 	swc1	$f2,336(s0)
     498:	e6040154 	swc1	$f4,340(s0)
     49c:	c4260000 	lwc1	$f6,0(at)
     4a0:	3c010000 	lui	at,0x0
     4a4:	e602015c 	swc1	$f2,348(s0)
     4a8:	e6020160 	swc1	$f2,352(s0)
     4ac:	e6060158 	swc1	$f6,344(s0)
     4b0:	c4280000 	lwc1	$f8,0(at)
     4b4:	860301d4 	lh	v1,468(s0)
     4b8:	24010019 	li	at,25
     4bc:	e6080164 	swc1	$f8,356(s0)
     4c0:	14610012 	bne	v1,at,50c <L80B62E10+0xbc>
     4c4:	8fa6006c 	lw	a2,108(sp)
     4c8:	3c01c302 	lui	at,0xc302
     4cc:	44815000 	mtc1	at,$f10
     4d0:	3c010000 	lui	at,0x0
     4d4:	c4320000 	lwc1	$f18,0(at)
     4d8:	240f0100 	li	t7,256
     4dc:	afaf0028 	sw	t7,40(sp)
     4e0:	24c41c24 	addiu	a0,a2,7204
     4e4:	02002825 	move	a1,s0
     4e8:	2407002e 	li	a3,46
     4ec:	e7a20010 	swc1	$f2,16(sp)
     4f0:	afa0001c 	sw	zero,28(sp)
     4f4:	afa00020 	sw	zero,32(sp)
     4f8:	afa00024 	sw	zero,36(sp)
     4fc:	e7aa0014 	swc1	$f10,20(sp)
     500:	0c000000 	jal	0 <EnfHG_Init>
     504:	e7b20018 	swc1	$f18,24(sp)
     508:	860301d4 	lh	v1,468(s0)
     50c:	24010015 	li	at,21
     510:	14610004 	bne	v1,at,524 <L80B62E10+0xd4>
     514:	2405283c 	li	a1,10300
     518:	0c000000 	jal	0 <EnfHG_Init>
     51c:	8e04011c 	lw	a0,284(s0)
     520:	860301d4 	lh	v1,468(s0)
     524:	1460039b 	bnez	v1,1394 <L80B63D54>
     528:	24180003 	li	t8,3
     52c:	24190050 	li	t9,80
     530:	a61801ca 	sh	t8,458(s0)
     534:	10000397 	b	1394 <L80B63D54>
     538:	a61901d4 	sh	t9,468(s0)

0000053c <L80B62EFC>:
     53c:	860301d4 	lh	v1,468(s0)
     540:	24010019 	li	at,25
     544:	02002025 	move	a0,s0
     548:	54610005 	bnel	v1,at,560 <L80B62EFC+0x24>
     54c:	24010014 	li	at,20
     550:	0c000000 	jal	0 <EnfHG_Init>
     554:	2405283e 	li	a1,10302
     558:	860301d4 	lh	v1,468(s0)
     55c:	24010014 	li	at,20
     560:	14610005 	bne	v1,at,578 <L80B62EFC+0x3c>
     564:	8fa4006c 	lw	a0,108(sp)
     568:	02002825 	move	a1,s0
     56c:	0c000000 	jal	0 <EnfHG_Init>
     570:	24060009 	li	a2,9
     574:	860301d4 	lh	v1,468(s0)
     578:	24010001 	li	at,1
     57c:	54610004 	bnel	v1,at,590 <L80B62EFC+0x54>
     580:	3c0141a0 	lui	at,0x41a0
     584:	0c000000 	jal	0 <EnfHG_Init>
     588:	24040023 	li	a0,35
     58c:	3c0141a0 	lui	at,0x41a0
     590:	44813000 	mtc1	at,$f6
     594:	c60401a8 	lwc1	$f4,424(s0)
     598:	3c063d4c 	lui	a2,0x3d4c
     59c:	34c6cccd 	ori	a2,a2,0xcccd
     5a0:	46062202 	mul.s	$f8,$f4,$f6
     5a4:	26040150 	addiu	a0,s0,336
     5a8:	3c054258 	lui	a1,0x4258
     5ac:	44074000 	mfc1	a3,$f8
     5b0:	0c000000 	jal	0 <EnfHG_Init>
     5b4:	00000000 	nop
     5b8:	3c0141a0 	lui	at,0x41a0
     5bc:	44819000 	mtc1	at,$f18
     5c0:	c60a01a8 	lwc1	$f10,424(s0)
     5c4:	3c063d4c 	lui	a2,0x3d4c
     5c8:	34c6cccd 	ori	a2,a2,0xcccd
     5cc:	46125102 	mul.s	$f4,$f10,$f18
     5d0:	26040154 	addiu	a0,s0,340
     5d4:	3c054080 	lui	a1,0x4080
     5d8:	44072000 	mfc1	a3,$f4
     5dc:	0c000000 	jal	0 <EnfHG_Init>
     5e0:	00000000 	nop
     5e4:	3c0141a0 	lui	at,0x41a0
     5e8:	44814000 	mtc1	at,$f8
     5ec:	c60601a8 	lwc1	$f6,424(s0)
     5f0:	3c05c54a 	lui	a1,0xc54a
     5f4:	3c063d4c 	lui	a2,0x3d4c
     5f8:	46083282 	mul.s	$f10,$f6,$f8
     5fc:	34c6cccd 	ori	a2,a2,0xcccd
     600:	34a53000 	ori	a1,a1,0x3000
     604:	26040158 	addiu	a0,s0,344
     608:	44075000 	mfc1	a3,$f10
     60c:	0c000000 	jal	0 <EnfHG_Init>
     610:	00000000 	nop
     614:	3c0141a0 	lui	at,0x41a0
     618:	44812000 	mtc1	at,$f4
     61c:	c61201a8 	lwc1	$f18,424(s0)
     620:	3c063d4c 	lui	a2,0x3d4c
     624:	34c6cccd 	ori	a2,a2,0xcccd
     628:	46049182 	mul.s	$f6,$f18,$f4
     62c:	2604015c 	addiu	a0,s0,348
     630:	3c05c2ac 	lui	a1,0xc2ac
     634:	44073000 	mfc1	a3,$f6
     638:	0c000000 	jal	0 <EnfHG_Init>
     63c:	00000000 	nop
     640:	3c014160 	lui	at,0x4160
     644:	44811000 	mtc1	at,$f2
     648:	3c0141a0 	lui	at,0x41a0
     64c:	44815000 	mtc1	at,$f10
     650:	c60801a8 	lwc1	$f8,424(s0)
     654:	3c063d4c 	lui	a2,0x3d4c
     658:	44051000 	mfc1	a1,$f2
     65c:	460a4482 	mul.s	$f18,$f8,$f10
     660:	34c6cccd 	ori	a2,a2,0xcccd
     664:	26040160 	addiu	a0,s0,352
     668:	44079000 	mfc1	a3,$f18
     66c:	0c000000 	jal	0 <EnfHG_Init>
     670:	00000000 	nop
     674:	3c0141a0 	lui	at,0x41a0
     678:	44813000 	mtc1	at,$f6
     67c:	c60401a8 	lwc1	$f4,424(s0)
     680:	3c05c53a 	lui	a1,0xc53a
     684:	3c063d4c 	lui	a2,0x3d4c
     688:	46062202 	mul.s	$f8,$f4,$f6
     68c:	34c6cccd 	ori	a2,a2,0xcccd
     690:	34a54000 	ori	a1,a1,0x4000
     694:	26040164 	addiu	a0,s0,356
     698:	44074000 	mfc1	a3,$f8
     69c:	0c000000 	jal	0 <EnfHG_Init>
     6a0:	00000000 	nop
     6a4:	3c073c23 	lui	a3,0x3c23
     6a8:	34e7d70a 	ori	a3,a3,0xd70a
     6ac:	260401a8 	addiu	a0,s0,424
     6b0:	3c053f80 	lui	a1,0x3f80
     6b4:	0c000000 	jal	0 <EnfHG_Init>
     6b8:	3c063f80 	lui	a2,0x3f80
     6bc:	860801d4 	lh	t0,468(s0)
     6c0:	24090004 	li	t1,4
     6c4:	240a0032 	li	t2,50
     6c8:	55000333 	bnezl	t0,1398 <L80B63D54+0x4>
     6cc:	860501cc 	lh	a1,460(s0)
     6d0:	44805000 	mtc1	zero,$f10
     6d4:	a60901ca 	sh	t1,458(s0)
     6d8:	a60a01d4 	sh	t2,468(s0)
     6dc:	1000032d 	b	1394 <L80B63D54>
     6e0:	e60a01a8 	swc1	$f10,424(s0)

000006e4 <L80B630A4>:
     6e4:	3c0141a0 	lui	at,0x41a0
     6e8:	44812000 	mtc1	at,$f4
     6ec:	c61201a8 	lwc1	$f18,424(s0)
     6f0:	3c063dcc 	lui	a2,0x3dcc
     6f4:	34c6cccd 	ori	a2,a2,0xcccd
     6f8:	46049182 	mul.s	$f6,$f18,$f4
     6fc:	26040150 	addiu	a0,s0,336
     700:	3c0542a8 	lui	a1,0x42a8
     704:	44073000 	mfc1	a3,$f6
     708:	0c000000 	jal	0 <EnfHG_Init>
     70c:	00000000 	nop
     710:	3c0141a0 	lui	at,0x41a0
     714:	44815000 	mtc1	at,$f10
     718:	c60801a8 	lwc1	$f8,424(s0)
     71c:	3c063dcc 	lui	a2,0x3dcc
     720:	34c6cccd 	ori	a2,a2,0xcccd
     724:	460a4482 	mul.s	$f18,$f8,$f10
     728:	26040154 	addiu	a0,s0,340
     72c:	3c05c1d0 	lui	a1,0xc1d0
     730:	44079000 	mfc1	a3,$f18
     734:	0c000000 	jal	0 <EnfHG_Init>
     738:	00000000 	nop
     73c:	3c0141a0 	lui	at,0x41a0
     740:	44813000 	mtc1	at,$f6
     744:	c60401a8 	lwc1	$f4,424(s0)
     748:	3c05c542 	lui	a1,0xc542
     74c:	3c063dcc 	lui	a2,0x3dcc
     750:	46062202 	mul.s	$f8,$f4,$f6
     754:	34c6cccd 	ori	a2,a2,0xcccd
     758:	34a5b000 	ori	a1,a1,0xb000
     75c:	26040158 	addiu	a0,s0,344
     760:	44074000 	mfc1	a3,$f8
     764:	0c000000 	jal	0 <EnfHG_Init>
     768:	00000000 	nop
     76c:	3c0141a0 	lui	at,0x41a0
     770:	44819000 	mtc1	at,$f18
     774:	c60a01a8 	lwc1	$f10,424(s0)
     778:	3c063dcc 	lui	a2,0x3dcc
     77c:	34c6cccd 	ori	a2,a2,0xcccd
     780:	46125102 	mul.s	$f4,$f10,$f18
     784:	2604015c 	addiu	a0,s0,348
     788:	3c05c308 	lui	a1,0xc308
     78c:	44072000 	mfc1	a3,$f4
     790:	0c000000 	jal	0 <EnfHG_Init>
     794:	00000000 	nop
     798:	3c0141a0 	lui	at,0x41a0
     79c:	44814000 	mtc1	at,$f8
     7a0:	c60601a8 	lwc1	$f6,424(s0)
     7a4:	3c063dcc 	lui	a2,0x3dcc
     7a8:	34c6cccd 	ori	a2,a2,0xcccd
     7ac:	46083282 	mul.s	$f10,$f6,$f8
     7b0:	26040160 	addiu	a0,s0,352
     7b4:	3c054294 	lui	a1,0x4294
     7b8:	44075000 	mfc1	a3,$f10
     7bc:	0c000000 	jal	0 <EnfHG_Init>
     7c0:	00000000 	nop
     7c4:	3c014220 	lui	at,0x4220
     7c8:	44812000 	mtc1	at,$f4
     7cc:	c61201a8 	lwc1	$f18,424(s0)
     7d0:	3c05c553 	lui	a1,0xc553
     7d4:	3c063dcc 	lui	a2,0x3dcc
     7d8:	46049182 	mul.s	$f6,$f18,$f4
     7dc:	34c6cccd 	ori	a2,a2,0xcccd
     7e0:	34a54000 	ori	a1,a1,0x4000
     7e4:	26040164 	addiu	a0,s0,356
     7e8:	44073000 	mfc1	a3,$f6
     7ec:	0c000000 	jal	0 <EnfHG_Init>
     7f0:	00000000 	nop
     7f4:	3c073d4c 	lui	a3,0x3d4c
     7f8:	34e7cccd 	ori	a3,a3,0xcccd
     7fc:	260401a8 	addiu	a0,s0,424
     800:	3c053f80 	lui	a1,0x3f80
     804:	0c000000 	jal	0 <EnfHG_Init>
     808:	3c063f80 	lui	a2,0x3f80
     80c:	860301d4 	lh	v1,468(s0)
     810:	24010005 	li	at,5
     814:	02002025 	move	a0,s0
     818:	14610004 	bne	v1,at,82c <L80B630A4+0x148>
     81c:	00000000 	nop
     820:	0c000000 	jal	0 <EnfHG_Init>
     824:	2405282c 	li	a1,10284
     828:	860301d4 	lh	v1,468(s0)
     82c:	146002d9 	bnez	v1,1394 <L80B63D54>
     830:	240b0005 	li	t3,5
     834:	44804000 	mtc1	zero,$f8
     838:	240c0032 	li	t4,50
     83c:	a60b01ca 	sh	t3,458(s0)
     840:	a60c01d4 	sh	t4,468(s0)
     844:	100002d3 	b	1394 <L80B63D54>
     848:	e60801a8 	swc1	$f8,424(s0)

0000084c <L80B6320C>:
     84c:	3c014280 	lui	at,0x4280
     850:	44811000 	mtc1	at,$f2
     854:	3c01c180 	lui	at,0xc180
     858:	44816000 	mtc1	at,$f12
     85c:	3c010000 	lui	at,0x0
     860:	c42e0000 	lwc1	$f14,0(at)
     864:	3c01432e 	lui	at,0x432e
     868:	44818000 	mtc1	at,$f16
     86c:	3c01c308 	lui	at,0xc308
     870:	44815000 	mtc1	at,$f10
     874:	240d0006 	li	t5,6
     878:	a60d01ca 	sh	t5,458(s0)
     87c:	3c010000 	lui	at,0x0
     880:	e6020150 	swc1	$f2,336(s0)
     884:	e60c0154 	swc1	$f12,340(s0)
     888:	e60e0158 	swc1	$f14,344(s0)
     88c:	e6100160 	swc1	$f16,352(s0)
     890:	e60a015c 	swc1	$f10,348(s0)
     894:	c4320000 	lwc1	$f18,0(at)
     898:	3c014208 	lui	at,0x4208
     89c:	44812000 	mtc1	at,$f4
     8a0:	3c01428a 	lui	at,0x428a
     8a4:	44813000 	mtc1	at,$f6
     8a8:	46041001 	sub.s	$f0,$f2,$f4
     8ac:	3c010000 	lui	at,0x0
     8b0:	e6120164 	swc1	$f18,356(s0)
     8b4:	c6120164 	lwc1	$f18,356(s0)
     8b8:	46000005 	abs.s	$f0,$f0
     8bc:	240e00fa 	li	t6,250
     8c0:	e6000168 	swc1	$f0,360(s0)
     8c4:	46066001 	sub.s	$f0,$f12,$f6
     8c8:	46000005 	abs.s	$f0,$f0
     8cc:	e600016c 	swc1	$f0,364(s0)
     8d0:	c4280000 	lwc1	$f8,0(at)
     8d4:	3c014324 	lui	at,0x4324
     8d8:	44815000 	mtc1	at,$f10
     8dc:	46087001 	sub.s	$f0,$f14,$f8
     8e0:	3c010000 	lui	at,0x0
     8e4:	46000005 	abs.s	$f0,$f0
     8e8:	e6000170 	swc1	$f0,368(s0)
     8ec:	44800000 	mtc1	zero,$f0
     8f0:	00000000 	nop
     8f4:	46000005 	abs.s	$f0,$f0
     8f8:	e6000174 	swc1	$f0,372(s0)
     8fc:	460a8001 	sub.s	$f0,$f16,$f10
     900:	46000005 	abs.s	$f0,$f0
     904:	e6000178 	swc1	$f0,376(s0)
     908:	c4240000 	lwc1	$f4,0(at)
     90c:	a60e01d4 	sh	t6,468(s0)
     910:	46049001 	sub.s	$f0,$f18,$f4
     914:	46000005 	abs.s	$f0,$f0
     918:	e600017c 	swc1	$f0,380(s0)

0000091c <L80B632DC>:
     91c:	c60601a8 	lwc1	$f6,424(s0)
     920:	c6080168 	lwc1	$f8,360(s0)
     924:	3c063d4c 	lui	a2,0x3d4c
     928:	34c6cccd 	ori	a2,a2,0xcccd
     92c:	46083282 	mul.s	$f10,$f6,$f8
     930:	26040150 	addiu	a0,s0,336
     934:	3c054208 	lui	a1,0x4208
     938:	44075000 	mfc1	a3,$f10
     93c:	0c000000 	jal	0 <EnfHG_Init>
     940:	00000000 	nop
     944:	c61201a8 	lwc1	$f18,424(s0)
     948:	c604016c 	lwc1	$f4,364(s0)
     94c:	3c063d4c 	lui	a2,0x3d4c
     950:	34c6cccd 	ori	a2,a2,0xcccd
     954:	46049182 	mul.s	$f6,$f18,$f4
     958:	26040154 	addiu	a0,s0,340
     95c:	3c05428a 	lui	a1,0x428a
     960:	44073000 	mfc1	a3,$f6
     964:	0c000000 	jal	0 <EnfHG_Init>
     968:	00000000 	nop
     96c:	c60801a8 	lwc1	$f8,424(s0)
     970:	c60a0170 	lwc1	$f10,368(s0)
     974:	3c05c54d 	lui	a1,0xc54d
     978:	3c063d4c 	lui	a2,0x3d4c
     97c:	460a4482 	mul.s	$f18,$f8,$f10
     980:	34c6cccd 	ori	a2,a2,0xcccd
     984:	34a5a000 	ori	a1,a1,0xa000
     988:	26040158 	addiu	a0,s0,344
     98c:	44079000 	mfc1	a3,$f18
     990:	0c000000 	jal	0 <EnfHG_Init>
     994:	00000000 	nop
     998:	c60401a8 	lwc1	$f4,424(s0)
     99c:	c6060174 	lwc1	$f6,372(s0)
     9a0:	3c063d4c 	lui	a2,0x3d4c
     9a4:	34c6cccd 	ori	a2,a2,0xcccd
     9a8:	46062202 	mul.s	$f8,$f4,$f6
     9ac:	2604015c 	addiu	a0,s0,348
     9b0:	3c05c308 	lui	a1,0xc308
     9b4:	44074000 	mfc1	a3,$f8
     9b8:	0c000000 	jal	0 <EnfHG_Init>
     9bc:	00000000 	nop
     9c0:	c60a01a8 	lwc1	$f10,424(s0)
     9c4:	c6120178 	lwc1	$f18,376(s0)
     9c8:	3c063d4c 	lui	a2,0x3d4c
     9cc:	34c6cccd 	ori	a2,a2,0xcccd
     9d0:	46125102 	mul.s	$f4,$f10,$f18
     9d4:	26040160 	addiu	a0,s0,352
     9d8:	3c054324 	lui	a1,0x4324
     9dc:	44072000 	mfc1	a3,$f4
     9e0:	0c000000 	jal	0 <EnfHG_Init>
     9e4:	00000000 	nop
     9e8:	c60601a8 	lwc1	$f6,424(s0)
     9ec:	c608017c 	lwc1	$f8,380(s0)
     9f0:	3c05c553 	lui	a1,0xc553
     9f4:	3c063d4c 	lui	a2,0x3d4c
     9f8:	46083282 	mul.s	$f10,$f6,$f8
     9fc:	34c6cccd 	ori	a2,a2,0xcccd
     a00:	34a54000 	ori	a1,a1,0x4000
     a04:	26040164 	addiu	a0,s0,356
     a08:	44075000 	mfc1	a3,$f10
     a0c:	0c000000 	jal	0 <EnfHG_Init>
     a10:	00000000 	nop
     a14:	3c053c23 	lui	a1,0x3c23
     a18:	3c073a83 	lui	a3,0x3a83
     a1c:	34e7126f 	ori	a3,a3,0x126f
     a20:	34a5d70a 	ori	a1,a1,0xd70a
     a24:	260401a8 	addiu	a0,s0,424
     a28:	0c000000 	jal	0 <EnfHG_Init>
     a2c:	3c063f80 	lui	a2,0x3f80
     a30:	860301d4 	lh	v1,468(s0)
     a34:	240100f5 	li	at,245
     a38:	10610002 	beq	v1,at,a44 <L80B632DC+0x128>
     a3c:	24010003 	li	at,3
     a40:	14610012 	bne	v1,at,a8c <L80B632DC+0x170>
     a44:	3c050601 	lui	a1,0x601
     a48:	24a5ddb8 	addiu	a1,a1,-8776
     a4c:	26040250 	addiu	a0,s0,592
     a50:	0c000000 	jal	0 <EnfHG_Init>
     a54:	3c06c100 	lui	a2,0xc100
     a58:	240f0002 	li	t7,2
     a5c:	a20f014c 	sb	t7,332(s0)
     a60:	02002025 	move	a0,s0
     a64:	0c000000 	jal	0 <EnfHG_Init>
     a68:	2405283d 	li	a1,10301
     a6c:	860301d4 	lh	v1,468(s0)
     a70:	24010003 	li	at,3
     a74:	02002025 	move	a0,s0
     a78:	54610005 	bnel	v1,at,a90 <L80B632DC+0x174>
     a7c:	240100c0 	li	at,192
     a80:	0c000000 	jal	0 <EnfHG_Init>
     a84:	240538b2 	li	a1,14514
     a88:	860301d4 	lh	v1,468(s0)
     a8c:	240100c0 	li	at,192
     a90:	14610004 	bne	v1,at,aa4 <L80B632DC+0x188>
     a94:	02002025 	move	a0,s0
     a98:	0c000000 	jal	0 <EnfHG_Init>
     a9c:	2405282c 	li	a1,10284
     aa0:	860301d4 	lh	v1,468(s0)
     aa4:	240100d4 	li	at,212
     aa8:	14610015 	bne	v1,at,b00 <L80B632DC+0x1e4>
     aac:	02002025 	move	a0,s0
     ab0:	26180250 	addiu	t8,s0,592
     ab4:	afb80044 	sw	t8,68(sp)
     ab8:	0c000000 	jal	0 <EnfHG_Init>
     abc:	2405282b 	li	a1,10283
     ac0:	3c0140a0 	lui	at,0x40a0
     ac4:	44819000 	mtc1	at,$f18
     ac8:	3c01c120 	lui	at,0xc120
     acc:	44812000 	mtc1	at,$f4
     ad0:	3c050601 	lui	a1,0x601
     ad4:	3c063e99 	lui	a2,0x3e99
     ad8:	24190001 	li	t9,1
     adc:	afb90014 	sw	t9,20(sp)
     ae0:	34c6999a 	ori	a2,a2,0x999a
     ae4:	24a5e8a0 	addiu	a1,a1,-5984
     ae8:	8fa40044 	lw	a0,68(sp)
     aec:	24070000 	li	a3,0
     af0:	e7b20010 	swc1	$f18,16(sp)
     af4:	0c000000 	jal	0 <EnfHG_Init>
     af8:	e7a40018 	swc1	$f4,24(sp)
     afc:	860301d4 	lh	v1,468(s0)
     b00:	2401005a 	li	at,90
     b04:	1461000b 	bne	v1,at,b34 <L80B632DC+0x218>
     b08:	8fa9006c 	lw	t1,108(sp)
     b0c:	3c010001 	lui	at,0x1
     b10:	00290821 	addu	at,at,t1
     b14:	24080002 	li	t0,2
     b18:	a0280ae3 	sb	t0,2787(at)
     b1c:	8fab006c 	lw	t3,108(sp)
     b20:	3c010001 	lui	at,0x1
     b24:	240a0014 	li	t2,20
     b28:	002b0821 	addu	at,at,t3
     b2c:	a42a0afa 	sh	t2,2810(at)
     b30:	860301d4 	lh	v1,468(s0)
     b34:	24010064 	li	at,100
     b38:	14610003 	bne	v1,at,b48 <L80B632DC+0x22c>
     b3c:	240c0003 	li	t4,3
     b40:	a20c014c 	sb	t4,332(s0)
     b44:	860301d4 	lh	v1,468(s0)
     b48:	2401003c 	li	at,60
     b4c:	14610003 	bne	v1,at,b5c <L80B632DC+0x240>
     b50:	240d0005 	li	t5,5
     b54:	a20d014c 	sb	t5,332(s0)
     b58:	860301d4 	lh	v1,468(s0)
     b5c:	24010082 	li	at,130
     b60:	14610004 	bne	v1,at,b74 <L80B632DC+0x258>
     b64:	3c041050 	lui	a0,0x1050
     b68:	0c000000 	jal	0 <EnfHG_Init>
     b6c:	348400ff 	ori	a0,a0,0xff
     b70:	860301d4 	lh	v1,468(s0)
     b74:	2401001e 	li	at,30
     b78:	14610004 	bne	v1,at,b8c <L80B632DC+0x270>
     b7c:	8faf005c 	lw	t7,92(sp)
     b80:	240e0002 	li	t6,2
     b84:	a5ee01aa 	sh	t6,426(t7)
     b88:	860301d4 	lh	v1,468(s0)
     b8c:	24010023 	li	at,35
     b90:	14610005 	bne	v1,at,ba8 <L80B632DC+0x28c>
     b94:	3c040000 	lui	a0,0x0
     b98:	24840000 	addiu	a0,a0,0
     b9c:	0c000000 	jal	0 <EnfHG_Init>
     ba0:	240538ab 	li	a1,14507
     ba4:	860301d4 	lh	v1,468(s0)
     ba8:	24010082 	li	at,130
     bac:	14610008 	bne	v1,at,bd0 <L80B632DC+0x2b4>
     bb0:	24180001 	li	t8,1
     bb4:	8fb9005c 	lw	t9,92(sp)
     bb8:	3c040000 	lui	a0,0x0
     bbc:	24840000 	addiu	a0,a0,0
     bc0:	240539d6 	li	a1,14806
     bc4:	0c000000 	jal	0 <EnfHG_Init>
     bc8:	a73801aa 	sh	t8,426(t9)
     bcc:	860301d4 	lh	v1,468(s0)
     bd0:	24010014 	li	at,20
     bd4:	54610005 	bnel	v1,at,bec <L80B632DC+0x2d0>
     bd8:	24010002 	li	at,2
     bdc:	0c000000 	jal	0 <EnfHG_Init>
     be0:	2404001b 	li	a0,27
     be4:	860301d4 	lh	v1,468(s0)
     be8:	24010002 	li	at,2
     bec:	146101e9 	bne	v1,at,1394 <L80B63D54>
     bf0:	3c014342 	lui	at,0x4342
     bf4:	44815000 	mtc1	at,$f10
     bf8:	c6080150 	lwc1	$f8,336(s0)
     bfc:	3c01c1d0 	lui	at,0xc1d0
     c00:	44812000 	mtc1	at,$f4
     c04:	460a4001 	sub.s	$f0,$f8,$f10
     c08:	c6120154 	lwc1	$f18,340(s0)
     c0c:	44803000 	mtc1	zero,$f6
     c10:	24080007 	li	t0,7
     c14:	46000005 	abs.s	$f0,$f0
     c18:	e60601a8 	swc1	$f6,424(s0)
     c1c:	e6000168 	swc1	$f0,360(s0)
     c20:	46049001 	sub.s	$f0,$f18,$f4
     c24:	a60801ca 	sh	t0,458(s0)
     c28:	3c010000 	lui	at,0x0
     c2c:	c6060158 	lwc1	$f6,344(s0)
     c30:	46000005 	abs.s	$f0,$f0
     c34:	c6120024 	lwc1	$f18,36(s0)
     c38:	e600016c 	swc1	$f0,364(s0)
     c3c:	c4280000 	lwc1	$f8,0(at)
     c40:	3c01428c 	lui	at,0x428c
     c44:	c60a015c 	lwc1	$f10,348(s0)
     c48:	46083001 	sub.s	$f0,$f6,$f8
     c4c:	44813000 	mtc1	at,$f6
     c50:	c6040028 	lwc1	$f4,40(s0)
     c54:	3c0141a0 	lui	at,0x41a0
     c58:	46000005 	abs.s	$f0,$f0
     c5c:	46062200 	add.s	$f8,$f4,$f6
     c60:	e6000170 	swc1	$f0,368(s0)
     c64:	c6040160 	lwc1	$f4,352(s0)
     c68:	46125001 	sub.s	$f0,$f10,$f18
     c6c:	44815000 	mtc1	at,$f10
     c70:	c6060164 	lwc1	$f6,356(s0)
     c74:	24090064 	li	t1,100
     c78:	460a4481 	sub.s	$f18,$f8,$f10
     c7c:	c608002c 	lwc1	$f8,44(s0)
     c80:	240a0022 	li	t2,34
     c84:	46000005 	abs.s	$f0,$f0
     c88:	a60901d4 	sh	t1,468(s0)
     c8c:	e6000174 	swc1	$f0,372(s0)
     c90:	46122001 	sub.s	$f0,$f4,$f18
     c94:	a60a01d6 	sh	t2,470(s0)
     c98:	46000005 	abs.s	$f0,$f0
     c9c:	e6000178 	swc1	$f0,376(s0)
     ca0:	46083001 	sub.s	$f0,$f6,$f8
     ca4:	46000005 	abs.s	$f0,$f0
     ca8:	100001ba 	b	1394 <L80B63D54>
     cac:	e600017c 	swc1	$f0,380(s0)

00000cb0 <L80B63670>:
     cb0:	860b01d6 	lh	t3,470(s0)
     cb4:	24010001 	li	at,1
     cb8:	15610013 	bne	t3,at,d08 <L80B63670+0x58>
     cbc:	3c040601 	lui	a0,0x601
     cc0:	260c0250 	addiu	t4,s0,592
     cc4:	afac0044 	sw	t4,68(sp)
     cc8:	0c000000 	jal	0 <EnfHG_Init>
     ccc:	2484e8a0 	addiu	a0,a0,-5984
     cd0:	44825000 	mtc1	v0,$f10
     cd4:	3c01c040 	lui	at,0xc040
     cd8:	44819000 	mtc1	at,$f18
     cdc:	46805120 	cvt.s.w	$f4,$f10
     ce0:	3c050601 	lui	a1,0x601
     ce4:	240d0001 	li	t5,1
     ce8:	afad0014 	sw	t5,20(sp)
     cec:	24a5e8a0 	addiu	a1,a1,-5984
     cf0:	8fa40044 	lw	a0,68(sp)
     cf4:	e7a40010 	swc1	$f4,16(sp)
     cf8:	3c063f00 	lui	a2,0x3f00
     cfc:	24070000 	li	a3,0
     d00:	0c000000 	jal	0 <EnfHG_Init>
     d04:	e7b20018 	swc1	$f18,24(sp)
     d08:	c60601a8 	lwc1	$f6,424(s0)
     d0c:	c6080168 	lwc1	$f8,360(s0)
     d10:	3c063dcc 	lui	a2,0x3dcc
     d14:	34c6cccd 	ori	a2,a2,0xcccd
     d18:	46083282 	mul.s	$f10,$f6,$f8
     d1c:	26040150 	addiu	a0,s0,336
     d20:	3c054342 	lui	a1,0x4342
     d24:	44075000 	mfc1	a3,$f10
     d28:	0c000000 	jal	0 <EnfHG_Init>
     d2c:	00000000 	nop
     d30:	c60401a8 	lwc1	$f4,424(s0)
     d34:	c612016c 	lwc1	$f18,364(s0)
     d38:	3c063dcc 	lui	a2,0x3dcc
     d3c:	34c6cccd 	ori	a2,a2,0xcccd
     d40:	46122182 	mul.s	$f6,$f4,$f18
     d44:	26040154 	addiu	a0,s0,340
     d48:	3c05c1d0 	lui	a1,0xc1d0
     d4c:	44073000 	mfc1	a3,$f6
     d50:	0c000000 	jal	0 <EnfHG_Init>
     d54:	00000000 	nop
     d58:	3c010000 	lui	at,0x0
     d5c:	c42a0000 	lwc1	$f10,0(at)
     d60:	c60801ac 	lwc1	$f8,428(s0)
     d64:	c61201a8 	lwc1	$f18,424(s0)
     d68:	c6060170 	lwc1	$f6,368(s0)
     d6c:	460a4100 	add.s	$f4,$f8,$f10
     d70:	3c063dcc 	lui	a2,0x3dcc
     d74:	46069202 	mul.s	$f8,$f18,$f6
     d78:	34c6cccd 	ori	a2,a2,0xcccd
     d7c:	44052000 	mfc1	a1,$f4
     d80:	26040158 	addiu	a0,s0,344
     d84:	44074000 	mfc1	a3,$f8
     d88:	0c000000 	jal	0 <EnfHG_Init>
     d8c:	00000000 	nop
     d90:	3c063dcc 	lui	a2,0x3dcc
     d94:	34c6cccd 	ori	a2,a2,0xcccd
     d98:	260401ac 	addiu	a0,s0,428
     d9c:	3c05c2c8 	lui	a1,0xc2c8
     da0:	0c000000 	jal	0 <EnfHG_Init>
     da4:	3c073f80 	lui	a3,0x3f80
     da8:	3c014120 	lui	at,0x4120
     dac:	44812000 	mtc1	at,$f4
     db0:	c60a01a8 	lwc1	$f10,424(s0)
     db4:	3c063dcc 	lui	a2,0x3dcc
     db8:	34c6cccd 	ori	a2,a2,0xcccd
     dbc:	46045482 	mul.s	$f18,$f10,$f4
     dc0:	2604015c 	addiu	a0,s0,348
     dc4:	8e050024 	lw	a1,36(s0)
     dc8:	44079000 	mfc1	a3,$f18
     dcc:	0c000000 	jal	0 <EnfHG_Init>
     dd0:	00000000 	nop
     dd4:	3c01428c 	lui	at,0x428c
     dd8:	44814000 	mtc1	at,$f8
     ddc:	c6060028 	lwc1	$f6,40(s0)
     de0:	3c0141a0 	lui	at,0x41a0
     de4:	44812000 	mtc1	at,$f4
     de8:	46083280 	add.s	$f10,$f6,$f8
     dec:	3c014120 	lui	at,0x4120
     df0:	44814000 	mtc1	at,$f8
     df4:	c60601a8 	lwc1	$f6,424(s0)
     df8:	46045481 	sub.s	$f18,$f10,$f4
     dfc:	3c063dcc 	lui	a2,0x3dcc
     e00:	46083282 	mul.s	$f10,$f6,$f8
     e04:	34c6cccd 	ori	a2,a2,0xcccd
     e08:	44059000 	mfc1	a1,$f18
     e0c:	26040160 	addiu	a0,s0,352
     e10:	44075000 	mfc1	a3,$f10
     e14:	0c000000 	jal	0 <EnfHG_Init>
     e18:	00000000 	nop
     e1c:	3c014120 	lui	at,0x4120
     e20:	44819000 	mtc1	at,$f18
     e24:	c60401a8 	lwc1	$f4,424(s0)
     e28:	3c063dcc 	lui	a2,0x3dcc
     e2c:	34c6cccd 	ori	a2,a2,0xcccd
     e30:	46122182 	mul.s	$f6,$f4,$f18
     e34:	26040164 	addiu	a0,s0,356
     e38:	8e05002c 	lw	a1,44(s0)
     e3c:	44073000 	mfc1	a3,$f6
     e40:	0c000000 	jal	0 <EnfHG_Init>
     e44:	00000000 	nop
     e48:	3c063dcc 	lui	a2,0x3dcc
     e4c:	34c6cccd 	ori	a2,a2,0xcccd
     e50:	26040028 	addiu	a0,s0,40
     e54:	3c054270 	lui	a1,0x4270
     e58:	0c000000 	jal	0 <EnfHG_Init>
     e5c:	3c074000 	lui	a3,0x4000
     e60:	860401c0 	lh	a0,448(s0)
     e64:	00800821 	move	at,a0
     e68:	00042080 	sll	a0,a0,0x2
     e6c:	00812023 	subu	a0,a0,at
     e70:	00042100 	sll	a0,a0,0x4
     e74:	00812023 	subu	a0,a0,at
     e78:	000420c0 	sll	a0,a0,0x3
     e7c:	00812023 	subu	a0,a0,at
     e80:	00042080 	sll	a0,a0,0x2
     e84:	00042400 	sll	a0,a0,0x10
     e88:	0c000000 	jal	0 <EnfHG_Init>
     e8c:	00042403 	sra	a0,a0,0x10
     e90:	46000280 	add.s	$f10,$f0,$f0
     e94:	c6080028 	lwc1	$f8,40(s0)
     e98:	3c013f80 	lui	at,0x3f80
     e9c:	44811000 	mtc1	at,$f2
     ea0:	460a4100 	add.s	$f4,$f8,$f10
     ea4:	3c073d4c 	lui	a3,0x3d4c
     ea8:	44051000 	mfc1	a1,$f2
     eac:	44061000 	mfc1	a2,$f2
     eb0:	e6040028 	swc1	$f4,40(s0)
     eb4:	34e7cccd 	ori	a3,a3,0xcccd
     eb8:	0c000000 	jal	0 <EnfHG_Init>
     ebc:	260401a8 	addiu	a0,s0,424
     ec0:	860301d4 	lh	v1,468(s0)
     ec4:	8fa4006c 	lw	a0,108(sp)
     ec8:	2401004b 	li	at,75
     ecc:	14610018 	bne	v1,at,f30 <L80B63670+0x280>
     ed0:	24851d4c 	addiu	a1,a0,7500
     ed4:	3c020600 	lui	v0,0x600
     ed8:	244259a0 	addiu	v0,v0,22944
     edc:	00027900 	sll	t7,v0,0x4
     ee0:	000fc702 	srl	t8,t7,0x1c
     ee4:	0018c880 	sll	t9,t8,0x2
     ee8:	3c080000 	lui	t0,0x0
     eec:	01194021 	addu	t0,t0,t9
     ef0:	3c0100ff 	lui	at,0xff
     ef4:	8d080000 	lw	t0,0(t0)
     ef8:	3421ffff 	ori	at,at,0xffff
     efc:	00414824 	and	t1,v0,at
     f00:	3c018000 	lui	at,0x8000
     f04:	240a00b4 	li	t2,180
     f08:	240b0080 	li	t3,128
     f0c:	240c0028 	li	t4,40
     f10:	01093021 	addu	a2,t0,t1
     f14:	00c13021 	addu	a2,a2,at
     f18:	afac0018 	sw	t4,24(sp)
     f1c:	afab0014 	sw	t3,20(sp)
     f20:	afaa0010 	sw	t2,16(sp)
     f24:	0c000000 	jal	0 <EnfHG_Init>
     f28:	240700a0 	li	a3,160
     f2c:	860301d4 	lh	v1,468(s0)
     f30:	14600118 	bnez	v1,1394 <L80B63D54>
     f34:	240d0008 	li	t5,8
     f38:	44809000 	mtc1	zero,$f18
     f3c:	240e00c8 	li	t6,200
     f40:	240f0017 	li	t7,23
     f44:	a60d01ca 	sh	t5,458(s0)
     f48:	a60e01d4 	sh	t6,468(s0)
     f4c:	a60f01d6 	sh	t7,470(s0)
     f50:	3c040601 	lui	a0,0x601
     f54:	26180250 	addiu	t8,s0,592
     f58:	e61201a8 	swc1	$f18,424(s0)
     f5c:	afb80044 	sw	t8,68(sp)
     f60:	0c000000 	jal	0 <EnfHG_Init>
     f64:	2484c65c 	addiu	a0,a0,-14756
     f68:	44823000 	mtc1	v0,$f6
     f6c:	3c01c080 	lui	at,0xc080
     f70:	44815000 	mtc1	at,$f10
     f74:	46803220 	cvt.s.w	$f8,$f6
     f78:	3c050601 	lui	a1,0x601
     f7c:	24190003 	li	t9,3
     f80:	afb90014 	sw	t9,20(sp)
     f84:	24a5c65c 	addiu	a1,a1,-14756
     f88:	8fa40044 	lw	a0,68(sp)
     f8c:	e7a80010 	swc1	$f8,16(sp)
     f90:	3c063f80 	lui	a2,0x3f80
     f94:	24070000 	li	a3,0
     f98:	0c000000 	jal	0 <EnfHG_Init>
     f9c:	e7aa0018 	swc1	$f10,24(sp)
     fa0:	2408000a 	li	t0,10
     fa4:	a208014c 	sb	t0,332(s0)
     fa8:	02002025 	move	a0,s0
     fac:	0c000000 	jal	0 <EnfHG_Init>
     fb0:	240538b2 	li	a1,14514
     fb4:	02002025 	move	a0,s0
     fb8:	0c000000 	jal	0 <EnfHG_Init>
     fbc:	2405283d 	li	a1,10301
     fc0:	100000f5 	b	1398 <L80B63D54+0x4>
     fc4:	860501cc 	lh	a1,460(s0)

00000fc8 <L80B63988>:
     fc8:	860901d6 	lh	t1,470(s0)
     fcc:	24010001 	li	at,1
     fd0:	3c040601 	lui	a0,0x601
     fd4:	15210014 	bne	t1,at,1028 <L80B63988+0x60>
     fd8:	2484cb1c 	addiu	a0,a0,-13540
     fdc:	260a0250 	addiu	t2,s0,592
     fe0:	0c000000 	jal	0 <EnfHG_Init>
     fe4:	afaa0044 	sw	t2,68(sp)
     fe8:	44822000 	mtc1	v0,$f4
     fec:	3c01c040 	lui	at,0xc040
     ff0:	44813000 	mtc1	at,$f6
     ff4:	468024a0 	cvt.s.w	$f18,$f4
     ff8:	3c050601 	lui	a1,0x601
     ffc:	240b0003 	li	t3,3
    1000:	afab0014 	sw	t3,20(sp)
    1004:	24a5cb1c 	addiu	a1,a1,-13540
    1008:	8fa40044 	lw	a0,68(sp)
    100c:	e7b20010 	swc1	$f18,16(sp)
    1010:	3c063f00 	lui	a2,0x3f00
    1014:	24070000 	li	a3,0
    1018:	0c000000 	jal	0 <EnfHG_Init>
    101c:	e7a60018 	swc1	$f6,24(sp)
    1020:	240c000b 	li	t4,11
    1024:	a20c014c 	sb	t4,332(s0)
    1028:	860d01d4 	lh	t5,468(s0)
    102c:	240100aa 	li	at,170
    1030:	8fa4006c 	lw	a0,108(sp)
    1034:	15a10006 	bne	t5,at,1050 <L80B63988+0x88>
    1038:	02002825 	move	a1,s0
    103c:	0c000000 	jal	0 <EnfHG_Init>
    1040:	24060008 	li	a2,8
    1044:	02002025 	move	a0,s0
    1048:	0c000000 	jal	0 <EnfHG_Init>
    104c:	240538a6 	li	a1,14502
    1050:	3c010000 	lui	at,0x0
    1054:	c42a0000 	lwc1	$f10,0(at)
    1058:	c60801ac 	lwc1	$f8,428(s0)
    105c:	3c013fc0 	lui	at,0x3fc0
    1060:	44813000 	mtc1	at,$f6
    1064:	c61201a8 	lwc1	$f18,424(s0)
    1068:	460a4100 	add.s	$f4,$f8,$f10
    106c:	3c063dcc 	lui	a2,0x3dcc
    1070:	46069202 	mul.s	$f8,$f18,$f6
    1074:	34c6cccd 	ori	a2,a2,0xcccd
    1078:	44052000 	mfc1	a1,$f4
    107c:	26040158 	addiu	a0,s0,344
    1080:	44074000 	mfc1	a3,$f8
    1084:	0c000000 	jal	0 <EnfHG_Init>
    1088:	00000000 	nop
    108c:	3c063dcc 	lui	a2,0x3dcc
    1090:	34c6cccd 	ori	a2,a2,0xcccd
    1094:	260401ac 	addiu	a0,s0,428
    1098:	3c05c2c8 	lui	a1,0xc2c8
    109c:	0c000000 	jal	0 <EnfHG_Init>
    10a0:	3c073f80 	lui	a3,0x3f80
    10a4:	3c014120 	lui	at,0x4120
    10a8:	44812000 	mtc1	at,$f4
    10ac:	c60a01a8 	lwc1	$f10,424(s0)
    10b0:	3c05c536 	lui	a1,0xc536
    10b4:	34a53800 	ori	a1,a1,0x3800
    10b8:	46045482 	mul.s	$f18,$f10,$f4
    10bc:	2604002c 	addiu	a0,s0,44
    10c0:	3c063f80 	lui	a2,0x3f80
    10c4:	44079000 	mfc1	a3,$f18
    10c8:	0c000000 	jal	0 <EnfHG_Init>
    10cc:	00000000 	nop
    10d0:	3c013f80 	lui	at,0x3f80
    10d4:	44810000 	mtc1	at,$f0
    10d8:	3c073d4c 	lui	a3,0x3d4c
    10dc:	34e7cccd 	ori	a3,a3,0xcccd
    10e0:	44050000 	mfc1	a1,$f0
    10e4:	44060000 	mfc1	a2,$f0
    10e8:	0c000000 	jal	0 <EnfHG_Init>
    10ec:	260401a8 	addiu	a0,s0,424
    10f0:	3c010000 	lui	at,0x0
    10f4:	c4280000 	lwc1	$f8,0(at)
    10f8:	c606002c 	lwc1	$f6,44(s0)
    10fc:	3c014396 	lui	at,0x4396
    1100:	44815000 	mtc1	at,$f10
    1104:	46083001 	sub.s	$f0,$f6,$f8
    1108:	46000005 	abs.s	$f0,$f0
    110c:	460a003c 	c.lt.s	$f0,$f10
    1110:	00000000 	nop
    1114:	4502001e 	bc1fl	1190 <L80B63988+0x1c8>
    1118:	3c063e4c 	lui	a2,0x3e4c
    111c:	860e01c8 	lh	t6,456(s0)
    1120:	3c014160 	lui	at,0x4160
    1124:	240f0001 	li	t7,1
    1128:	15c00018 	bnez	t6,118c <L80B63988+0x1c4>
    112c:	02002825 	move	a1,s0
    1130:	44811000 	mtc1	at,$f2
    1134:	a60f01c8 	sh	t7,456(s0)
    1138:	3c014248 	lui	at,0x4248
    113c:	e7a20010 	swc1	$f2,16(sp)
    1140:	c6040028 	lwc1	$f4,40(s0)
    1144:	44819000 	mtc1	at,$f18
    1148:	3c010000 	lui	at,0x0
    114c:	c4280000 	lwc1	$f8,0(at)
    1150:	46122180 	add.s	$f6,$f4,$f18
    1154:	afa0001c 	sw	zero,28(sp)
    1158:	e7a80018 	swc1	$f8,24(sp)
    115c:	8fa6006c 	lw	a2,108(sp)
    1160:	e7a60014 	swc1	$f6,20(sp)
    1164:	861900b6 	lh	t9,182(s0)
    1168:	24080028 	li	t0,40
    116c:	afa80028 	sw	t0,40(sp)
    1170:	afa00024 	sw	zero,36(sp)
    1174:	2407006d 	li	a3,109
    1178:	24c41c24 	addiu	a0,a2,7204
    117c:	0c000000 	jal	0 <EnfHG_Init>
    1180:	afb90020 	sw	t9,32(sp)
    1184:	24090001 	li	t1,1
    1188:	a209014f 	sb	t1,335(s0)
    118c:	3c063e4c 	lui	a2,0x3e4c
    1190:	34c6cccd 	ori	a2,a2,0xcccd
    1194:	2604015c 	addiu	a0,s0,348
    1198:	8e050024 	lw	a1,36(s0)
    119c:	0c000000 	jal	0 <EnfHG_Init>
    11a0:	3c074248 	lui	a3,0x4248
    11a4:	3c063e4c 	lui	a2,0x3e4c
    11a8:	34c6cccd 	ori	a2,a2,0xcccd
    11ac:	26040164 	addiu	a0,s0,356
    11b0:	8e05002c 	lw	a1,44(s0)
    11b4:	0c000000 	jal	0 <EnfHG_Init>
    11b8:	3c074248 	lui	a3,0x4248
    11bc:	3c040000 	lui	a0,0x0
    11c0:	24840000 	addiu	a0,a0,0
    11c4:	0c000000 	jal	0 <EnfHG_Init>
    11c8:	860501d4 	lh	a1,468(s0)
    11cc:	3c010000 	lui	at,0x0
    11d0:	c4240000 	lwc1	$f4,0(at)
    11d4:	c60a002c 	lwc1	$f10,44(s0)
    11d8:	3c013f80 	lui	at,0x3f80
    11dc:	44819000 	mtc1	at,$f18
    11e0:	46045001 	sub.s	$f0,$f10,$f4
    11e4:	8faa006c 	lw	t2,108(sp)
    11e8:	3c010001 	lui	at,0x1
    11ec:	3c050601 	lui	a1,0x601
    11f0:	46000005 	abs.s	$f0,$f0
    11f4:	240b0014 	li	t3,20
    11f8:	4612003c 	c.lt.s	$f0,$f18
    11fc:	240d0009 	li	t5,9
    1200:	24a5b4c8 	addiu	a1,a1,-19256
    1204:	26040250 	addiu	a0,s0,592
    1208:	45000062 	bc1f	1394 <L80B63D54>
    120c:	002a0821 	addu	at,at,t2
    1210:	a0200ae3 	sb	zero,2787(at)
    1214:	8fac006c 	lw	t4,108(sp)
    1218:	3c010001 	lui	at,0x1
    121c:	3c06c040 	lui	a2,0xc040
    1220:	002c0821 	addu	at,at,t4
    1224:	a42b0afa 	sh	t3,2810(at)
    1228:	0c000000 	jal	0 <EnfHG_Init>
    122c:	a60d01ca 	sh	t5,458(s0)
    1230:	240e00ff 	li	t6,255
    1234:	240f004b 	li	t7,75
    1238:	2418008c 	li	t8,140
    123c:	a20e014c 	sb	t6,332(s0)
    1240:	a60f01d6 	sh	t7,470(s0)
    1244:	10000053 	b	1394 <L80B63D54>
    1248:	a61801d4 	sh	t8,468(s0)

0000124c <L80B63C0C>:
    124c:	02002025 	move	a0,s0
    1250:	0c000000 	jal	0 <EnfHG_Init>
    1254:	8fa5006c 	lw	a1,108(sp)
    1258:	3c010000 	lui	at,0x0
    125c:	c4280000 	lwc1	$f8,0(at)
    1260:	c60601ac 	lwc1	$f6,428(s0)
    1264:	3c013fc0 	lui	at,0x3fc0
    1268:	44819000 	mtc1	at,$f18
    126c:	c60401a8 	lwc1	$f4,424(s0)
    1270:	46083280 	add.s	$f10,$f6,$f8
    1274:	3c063dcc 	lui	a2,0x3dcc
    1278:	46122182 	mul.s	$f6,$f4,$f18
    127c:	34c6cccd 	ori	a2,a2,0xcccd
    1280:	44055000 	mfc1	a1,$f10
    1284:	26040158 	addiu	a0,s0,344
    1288:	44073000 	mfc1	a3,$f6
    128c:	0c000000 	jal	0 <EnfHG_Init>
    1290:	00000000 	nop
    1294:	3c063dcc 	lui	a2,0x3dcc
    1298:	34c6cccd 	ori	a2,a2,0xcccd
    129c:	260401ac 	addiu	a0,s0,428
    12a0:	3c05c2c8 	lui	a1,0xc2c8
    12a4:	0c000000 	jal	0 <EnfHG_Init>
    12a8:	3c073f80 	lui	a3,0x3f80
    12ac:	3c01428c 	lui	at,0x428c
    12b0:	44815000 	mtc1	at,$f10
    12b4:	c6080028 	lwc1	$f8,40(s0)
    12b8:	3c0141a0 	lui	at,0x41a0
    12bc:	44819000 	mtc1	at,$f18
    12c0:	460a4100 	add.s	$f4,$f8,$f10
    12c4:	3c014120 	lui	at,0x4120
    12c8:	44815000 	mtc1	at,$f10
    12cc:	c60801a8 	lwc1	$f8,424(s0)
    12d0:	46122181 	sub.s	$f6,$f4,$f18
    12d4:	3c063dcc 	lui	a2,0x3dcc
    12d8:	460a4102 	mul.s	$f4,$f8,$f10
    12dc:	34c6cccd 	ori	a2,a2,0xcccd
    12e0:	44053000 	mfc1	a1,$f6
    12e4:	26040160 	addiu	a0,s0,352
    12e8:	44072000 	mfc1	a3,$f4
    12ec:	0c000000 	jal	0 <EnfHG_Init>
    12f0:	00000000 	nop
    12f4:	861901d6 	lh	t9,470(s0)
    12f8:	8fa4006c 	lw	a0,108(sp)
    12fc:	57200026 	bnezl	t9,1398 <L80B63D54+0x4>
    1300:	860501cc 	lh	a1,460(s0)
    1304:	0c000000 	jal	0 <EnfHG_Init>
    1308:	00002825 	move	a1,zero
    130c:	26030150 	addiu	v1,s0,336
    1310:	8c690000 	lw	t1,0(v1)
    1314:	00003025 	move	a2,zero
    1318:	ac49005c 	sw	t1,92(v0)
    131c:	8c680004 	lw	t0,4(v1)
    1320:	ac480060 	sw	t0,96(v0)
    1324:	8c690008 	lw	t1,8(v1)
    1328:	ac490064 	sw	t1,100(v0)
    132c:	8c6b0000 	lw	t3,0(v1)
    1330:	ac4b0074 	sw	t3,116(v0)
    1334:	8c6a0004 	lw	t2,4(v1)
    1338:	ac4a0078 	sw	t2,120(v0)
    133c:	8c6b0008 	lw	t3,8(v1)
    1340:	ac4b007c 	sw	t3,124(v0)
    1344:	8e0d015c 	lw	t5,348(s0)
    1348:	ac4d0050 	sw	t5,80(v0)
    134c:	8e0c0160 	lw	t4,352(s0)
    1350:	ac4c0054 	sw	t4,84(v0)
    1354:	8e0d0164 	lw	t5,356(s0)
    1358:	ac4d0058 	sw	t5,88(v0)
    135c:	860501cc 	lh	a1,460(s0)
    1360:	0c000000 	jal	0 <EnfHG_Init>
    1364:	8fa4006c 	lw	a0,108(sp)
    1368:	a60001cc 	sh	zero,460(s0)
    136c:	8fa4006c 	lw	a0,108(sp)
    1370:	0c000000 	jal	0 <EnfHG_Init>
    1374:	24851d64 	addiu	a1,a0,7524
    1378:	8fa4006c 	lw	a0,108(sp)
    137c:	02002825 	move	a1,s0
    1380:	0c000000 	jal	0 <EnfHG_Init>
    1384:	24060007 	li	a2,7
    1388:	3c0f0000 	lui	t7,0x0
    138c:	25ef0000 	addiu	t7,t7,0
    1390:	ae0f01fc 	sw	t7,508(s0)

00001394 <L80B63D54>:
    1394:	860501cc 	lh	a1,460(s0)
    1398:	8fa4006c 	lw	a0,108(sp)
    139c:	2606015c 	addiu	a2,s0,348
    13a0:	50a00004 	beqzl	a1,13b4 <L80B63D54+0x20>
    13a4:	8fbf003c 	lw	ra,60(sp)
    13a8:	0c000000 	jal	0 <EnfHG_Init>
    13ac:	26070150 	addiu	a3,s0,336
    13b0:	8fbf003c 	lw	ra,60(sp)
    13b4:	8fb00038 	lw	s0,56(sp)
    13b8:	27bd0068 	addiu	sp,sp,104
    13bc:	03e00008 	jr	ra
    13c0:	00000000 	nop

000013c4 <func_80B63D84>:
    13c4:	27bdffd0 	addiu	sp,sp,-48
    13c8:	3c0f0000 	lui	t7,0x0
    13cc:	afbf001c 	sw	ra,28(sp)
    13d0:	afb00018 	sw	s0,24(sp)
    13d4:	afa50034 	sw	a1,52(sp)
    13d8:	afa60038 	sw	a2,56(sp)
    13dc:	25ef0000 	addiu	t7,t7,0
    13e0:	8df90000 	lw	t9,0(t7)
    13e4:	27ae0024 	addiu	t6,sp,36
    13e8:	8df80004 	lw	t8,4(t7)
    13ec:	add90000 	sw	t9,0(t6)
    13f0:	8df90008 	lw	t9,8(t7)
    13f4:	00808025 	move	s0,a0
    13f8:	3c050601 	lui	a1,0x601
    13fc:	24a5b4c8 	addiu	a1,a1,-19256
    1400:	24840250 	addiu	a0,a0,592
    1404:	24060000 	li	a2,0
    1408:	add80004 	sw	t8,4(t6)
    140c:	0c000000 	jal	0 <EnfHG_Init>
    1410:	add90008 	sw	t9,8(t6)
    1414:	3c080000 	lui	t0,0x0
    1418:	25080000 	addiu	t0,t0,0
    141c:	ae0801fc 	sw	t0,508(s0)
    1420:	87a9003a 	lh	t1,58(sp)
    1424:	3c040000 	lui	a0,0x0
    1428:	24840000 	addiu	a0,a0,0
    142c:	a60901c2 	sh	t1,450(s0)
    1430:	860501c2 	lh	a1,450(s0)
    1434:	00055040 	sll	t2,a1,0x1
    1438:	03aa5821 	addu	t3,sp,t2
    143c:	856b0024 	lh	t3,36(t3)
    1440:	0c000000 	jal	0 <EnfHG_Init>
    1444:	a60b01c4 	sh	t3,452(s0)
    1448:	3c040000 	lui	a0,0x0
    144c:	24840000 	addiu	a0,a0,0
    1450:	0c000000 	jal	0 <EnfHG_Init>
    1454:	860501c4 	lh	a1,452(s0)
    1458:	860c01c2 	lh	t4,450(s0)
    145c:	3c0e0000 	lui	t6,0x0
    1460:	25ce0000 	addiu	t6,t6,0
    1464:	000c6900 	sll	t5,t4,0x4
    1468:	3c010000 	lui	at,0x0
    146c:	01ae1021 	addu	v0,t5,t6
    1470:	c4200000 	lwc1	$f0,0(at)
    1474:	c4440000 	lwc1	$f4,0(v0)
    1478:	3c014120 	lui	at,0x4120
    147c:	44814000 	mtc1	at,$f8
    1480:	46002182 	mul.s	$f6,$f4,$f0
    1484:	3c0142f0 	lui	at,0x42f0
    1488:	3c040000 	lui	a0,0x0
    148c:	24840000 	addiu	a0,a0,0
    1490:	46083280 	add.s	$f10,$f6,$f8
    1494:	44813000 	mtc1	at,$f6
    1498:	3c010000 	lui	at,0x0
    149c:	e60a0024 	swc1	$f10,36(s0)
    14a0:	c4440004 	lwc1	$f4,4(v0)
    14a4:	46062200 	add.s	$f8,$f4,$f6
    14a8:	e6080028 	swc1	$f8,40(s0)
    14ac:	c44a0008 	lwc1	$f10,8(v0)
    14b0:	c4260000 	lwc1	$f6,0(at)
    14b4:	46005102 	mul.s	$f4,$f10,$f0
    14b8:	c60a0024 	lwc1	$f10,36(s0)
    14bc:	46062201 	sub.s	$f8,$f4,$f6
    14c0:	46005121 	cvt.d.s	$f4,$f10
    14c4:	e608002c 	swc1	$f8,44(s0)
    14c8:	844f000c 	lh	t7,12(v0)
    14cc:	44072000 	mfc1	a3,$f4
    14d0:	44062800 	mfc1	a2,$f5
    14d4:	0c000000 	jal	0 <EnfHG_Init>
    14d8:	a60f0032 	sh	t7,50(s0)
    14dc:	c606002c 	lwc1	$f6,44(s0)
    14e0:	3c040000 	lui	a0,0x0
    14e4:	24840000 	addiu	a0,a0,0
    14e8:	46003221 	cvt.d.s	$f8,$f6
    14ec:	44074000 	mfc1	a3,$f8
    14f0:	44064800 	mfc1	a2,$f9
    14f4:	0c000000 	jal	0 <EnfHG_Init>
    14f8:	00000000 	nop
    14fc:	3c013f80 	lui	at,0x3f80
    1500:	44816000 	mtc1	at,$f12
    1504:	861801c4 	lh	t8,452(s0)
    1508:	3c014000 	lui	at,0x4000
    150c:	44817000 	mtc1	at,$f14
    1510:	3c010000 	lui	at,0x0
    1514:	3c080000 	lui	t0,0x0
    1518:	c4300000 	lwc1	$f16,0(at)
    151c:	25080000 	addiu	t0,t0,0
    1520:	0018c900 	sll	t9,t8,0x4
    1524:	3c010000 	lui	at,0x0
    1528:	03281021 	addu	v0,t9,t0
    152c:	c4320000 	lwc1	$f18,0(at)
    1530:	c44a0000 	lwc1	$f10,0(v0)
    1534:	3c014120 	lui	at,0x4120
    1538:	44813000 	mtc1	at,$f6
    153c:	46125102 	mul.s	$f4,$f10,$f18
    1540:	3c010000 	lui	at,0x0
    1544:	24090064 	li	t1,100
    1548:	46062200 	add.s	$f8,$f4,$f6
    154c:	e608018c 	swc1	$f8,396(s0)
    1550:	c44a0004 	lwc1	$f10,4(v0)
    1554:	e60a0190 	swc1	$f10,400(s0)
    1558:	c4440008 	lwc1	$f4,8(v0)
    155c:	c4280000 	lwc1	$f8,0(at)
    1560:	3c010000 	lui	at,0x0
    1564:	46122182 	mul.s	$f6,$f4,$f18
    1568:	c604018c 	lwc1	$f4,396(s0)
    156c:	46083281 	sub.s	$f10,$f6,$f8
    1570:	c6060024 	lwc1	$f6,36(s0)
    1574:	46062001 	sub.s	$f0,$f4,$f6
    1578:	e60a0194 	swc1	$f10,404(s0)
    157c:	46000005 	abs.s	$f0,$f0
    1580:	460e0202 	mul.s	$f8,$f0,$f14
    1584:	00000000 	nop
    1588:	46104082 	mul.s	$f2,$f8,$f16
    158c:	460c103c 	c.lt.s	$f2,$f12
    1590:	e6020198 	swc1	$f2,408(s0)
    1594:	45000002 	bc1f	15a0 <func_80B63D84+0x1dc>
    1598:	00000000 	nop
    159c:	e60c0198 	swc1	$f12,408(s0)
    15a0:	c60a0194 	lwc1	$f10,404(s0)
    15a4:	c604002c 	lwc1	$f4,44(s0)
    15a8:	46045001 	sub.s	$f0,$f10,$f4
    15ac:	46000005 	abs.s	$f0,$f0
    15b0:	460e0182 	mul.s	$f6,$f0,$f14
    15b4:	00000000 	nop
    15b8:	46103082 	mul.s	$f2,$f6,$f16
    15bc:	460c103c 	c.lt.s	$f2,$f12
    15c0:	e602019c 	swc1	$f2,412(s0)
    15c4:	44801000 	mtc1	zero,$f2
    15c8:	45000002 	bc1f	15d4 <func_80B63D84+0x210>
    15cc:	00000000 	nop
    15d0:	e60c019c 	swc1	$f12,412(s0)
    15d4:	c4200000 	lwc1	$f0,0(at)
    15d8:	8fa20034 	lw	v0,52(sp)
    15dc:	a60901d4 	sh	t1,468(s0)
    15e0:	3c010000 	lui	at,0x0
    15e4:	e6000050 	swc1	$f0,80(s0)
    15e8:	e6000054 	swc1	$f0,84(s0)
    15ec:	c4280000 	lwc1	$f8,0(at)
    15f0:	e60201a4 	swc1	$f2,420(s0)
    15f4:	3c014f80 	lui	at,0x4f80
    15f8:	e6080058 	swc1	$f8,88(s0)
    15fc:	904a07af 	lbu	t2,1967(v0)
    1600:	448a5000 	mtc1	t2,$f10
    1604:	05410004 	bgez	t2,1618 <func_80B63D84+0x254>
    1608:	46805120 	cvt.s.w	$f4,$f10
    160c:	44813000 	mtc1	at,$f6
    1610:	00000000 	nop
    1614:	46062100 	add.s	$f4,$f4,$f6
    1618:	e60401e8 	swc1	$f4,488(s0)
    161c:	904b07b0 	lbu	t3,1968(v0)
    1620:	3c014f80 	lui	at,0x4f80
    1624:	448b4000 	mtc1	t3,$f8
    1628:	05610004 	bgez	t3,163c <func_80B63D84+0x278>
    162c:	468042a0 	cvt.s.w	$f10,$f8
    1630:	44813000 	mtc1	at,$f6
    1634:	00000000 	nop
    1638:	46065280 	add.s	$f10,$f10,$f6
    163c:	e60a01ec 	swc1	$f10,492(s0)
    1640:	904c07b1 	lbu	t4,1969(v0)
    1644:	3c014f80 	lui	at,0x4f80
    1648:	448c2000 	mtc1	t4,$f4
    164c:	05810004 	bgez	t4,1660 <func_80B63D84+0x29c>
    1650:	46802220 	cvt.s.w	$f8,$f4
    1654:	44813000 	mtc1	at,$f6
    1658:	00000000 	nop
    165c:	46064200 	add.s	$f8,$f8,$f6
    1660:	e60801f0 	swc1	$f8,496(s0)
    1664:	e60201f4 	swc1	$f2,500(s0)
    1668:	e60201f8 	swc1	$f2,504(s0)
    166c:	a60001e0 	sh	zero,480(s0)
    1670:	a60001c6 	sh	zero,454(s0)
    1674:	a60001c8 	sh	zero,456(s0)
    1678:	8fbf001c 	lw	ra,28(sp)
    167c:	8fb00018 	lw	s0,24(sp)
    1680:	27bd0030 	addiu	sp,sp,48
    1684:	03e00008 	jr	ra
    1688:	00000000 	nop

0000168c <func_80B6404C>:
    168c:	27bdffb8 	addiu	sp,sp,-72
    1690:	afb00038 	sw	s0,56(sp)
    1694:	00808025 	move	s0,a0
    1698:	afbf003c 	sw	ra,60(sp)
    169c:	3c040000 	lui	a0,0x0
    16a0:	afa5004c 	sw	a1,76(sp)
    16a4:	0c000000 	jal	0 <EnfHG_Init>
    16a8:	24840000 	addiu	a0,a0,0
    16ac:	c6040024 	lwc1	$f4,36(s0)
    16b0:	3c040000 	lui	a0,0x0
    16b4:	24840000 	addiu	a0,a0,0
    16b8:	460021a1 	cvt.d.s	$f6,$f4
    16bc:	44073000 	mfc1	a3,$f6
    16c0:	44063800 	mfc1	a2,$f7
    16c4:	0c000000 	jal	0 <EnfHG_Init>
    16c8:	00000000 	nop
    16cc:	c608002c 	lwc1	$f8,44(s0)
    16d0:	3c040000 	lui	a0,0x0
    16d4:	24840000 	addiu	a0,a0,0
    16d8:	460042a1 	cvt.d.s	$f10,$f8
    16dc:	44075000 	mfc1	a3,$f10
    16e0:	44065800 	mfc1	a2,$f11
    16e4:	0c000000 	jal	0 <EnfHG_Init>
    16e8:	00000000 	nop
    16ec:	860e001c 	lh	t6,28(s0)
    16f0:	24010001 	li	at,1
    16f4:	15c10013 	bne	t6,at,1744 <func_80B6404C+0xb8>
    16f8:	3c0142c8 	lui	at,0x42c8
    16fc:	44819000 	mtc1	at,$f18
    1700:	c6100050 	lwc1	$f16,80(s0)
    1704:	c60400e4 	lwc1	$f4,228(s0)
    1708:	c60800e8 	lwc1	$f8,232(s0)
    170c:	46128002 	mul.s	$f0,$f16,$f18
    1710:	c61000ec 	lwc1	$f16,236(s0)
    1714:	860f01c0 	lh	t7,448(s0)
    1718:	26040180 	addiu	a0,s0,384
    171c:	31f80007 	andi	t8,t7,0x7
    1720:	46002183 	div.s	$f6,$f4,$f0
    1724:	46004283 	div.s	$f10,$f8,$f0
    1728:	e6060180 	swc1	$f6,384(s0)
    172c:	46008483 	div.s	$f18,$f16,$f0
    1730:	e60a0184 	swc1	$f10,388(s0)
    1734:	17000003 	bnez	t8,1744 <func_80B6404C+0xb8>
    1738:	e6120188 	swc1	$f18,392(s0)
    173c:	0c000000 	jal	0 <EnfHG_Init>
    1740:	24052804 	li	a1,10244
    1744:	26040250 	addiu	a0,s0,592
    1748:	0c000000 	jal	0 <EnfHG_Init>
    174c:	afa40044 	sw	a0,68(sp)
    1750:	3c053c3c 	lui	a1,0x3c3c
    1754:	34a56a7e 	ori	a1,a1,0x6a7e
    1758:	26040050 	addiu	a0,s0,80
    175c:	3c063f80 	lui	a2,0x3f80
    1760:	0c000000 	jal	0 <EnfHG_Init>
    1764:	8e0701a4 	lw	a3,420(s0)
    1768:	3c053951 	lui	a1,0x3951
    176c:	3c0735c9 	lui	a3,0x35c9
    1770:	34e7539c 	ori	a3,a3,0x539c
    1774:	34a5b717 	ori	a1,a1,0xb717
    1778:	260401a4 	addiu	a0,s0,420
    177c:	0c000000 	jal	0 <EnfHG_Init>
    1780:	3c063f80 	lui	a2,0x3f80
    1784:	3c063dcc 	lui	a2,0x3dcc
    1788:	34c6cccd 	ori	a2,a2,0xcccd
    178c:	26040028 	addiu	a0,s0,40
    1790:	3c054270 	lui	a1,0x4270
    1794:	0c000000 	jal	0 <EnfHG_Init>
    1798:	3c073f80 	lui	a3,0x3f80
    179c:	861901d4 	lh	t9,468(s0)
    17a0:	c6040050 	lwc1	$f4,80(s0)
    17a4:	3c040000 	lui	a0,0x0
    17a8:	17200033 	bnez	t9,1878 <func_80B6404C+0x1ec>
    17ac:	e6040054 	swc1	$f4,84(s0)
    17b0:	24840000 	addiu	a0,a0,0
    17b4:	0c000000 	jal	0 <EnfHG_Init>
    17b8:	8605001c 	lh	a1,28(s0)
    17bc:	8608001c 	lh	t0,28(s0)
    17c0:	24010001 	li	at,1
    17c4:	3c0c0000 	lui	t4,0x0
    17c8:	1101000e 	beq	t0,at,1804 <func_80B6404C+0x178>
    17cc:	258c0000 	addiu	t4,t4,0
    17d0:	3c0a0000 	lui	t2,0x0
    17d4:	2409008c 	li	t1,140
    17d8:	254a0000 	addiu	t2,t2,0
    17dc:	a60901d4 	sh	t1,468(s0)
    17e0:	ae0a01fc 	sw	t2,508(s0)
    17e4:	3c050601 	lui	a1,0x601
    17e8:	24a5b4c8 	addiu	a1,a1,-19256
    17ec:	8fa40044 	lw	a0,68(sp)
    17f0:	0c000000 	jal	0 <EnfHG_Init>
    17f4:	24060000 	li	a2,0
    17f8:	240b8000 	li	t3,-32768
    17fc:	1000001e 	b	1878 <func_80B6404C+0x1ec>
    1800:	a60b01c6 	sh	t3,454(s0)
    1804:	ae0c01fc 	sw	t4,508(s0)
    1808:	02002025 	move	a0,s0
    180c:	0c000000 	jal	0 <EnfHG_Init>
    1810:	2405283d 	li	a1,10301
    1814:	c6060024 	lwc1	$f6,36(s0)
    1818:	8fa6004c 	lw	a2,76(sp)
    181c:	240d0028 	li	t5,40
    1820:	a60d01d4 	sh	t5,468(s0)
    1824:	3c014248 	lui	at,0x4248
    1828:	e7a60010 	swc1	$f6,16(sp)
    182c:	c6080028 	lwc1	$f8,40(s0)
    1830:	44815000 	mtc1	at,$f10
    1834:	34018000 	li	at,0x8000
    1838:	24180027 	li	t8,39
    183c:	460a4400 	add.s	$f16,$f8,$f10
    1840:	02002825 	move	a1,s0
    1844:	2407006d 	li	a3,109
    1848:	24c41c24 	addiu	a0,a2,7204
    184c:	e7b00014 	swc1	$f16,20(sp)
    1850:	c612002c 	lwc1	$f18,44(s0)
    1854:	afa0001c 	sw	zero,28(sp)
    1858:	e7b20018 	swc1	$f18,24(sp)
    185c:	860e00b6 	lh	t6,182(s0)
    1860:	afb80028 	sw	t8,40(sp)
    1864:	afa00024 	sw	zero,36(sp)
    1868:	01c17821 	addu	t7,t6,at
    186c:	0c000000 	jal	0 <EnfHG_Init>
    1870:	afaf0020 	sw	t7,32(sp)
    1874:	a200014f 	sb	zero,335(s0)
    1878:	8fbf003c 	lw	ra,60(sp)
    187c:	8fb00038 	lw	s0,56(sp)
    1880:	27bd0048 	addiu	sp,sp,72
    1884:	03e00008 	jr	ra
    1888:	00000000 	nop

0000188c <func_80B6424C>:
    188c:	27bdffa8 	addiu	sp,sp,-88
    1890:	afb00038 	sw	s0,56(sp)
    1894:	00808025 	move	s0,a0
    1898:	afbf003c 	sw	ra,60(sp)
    189c:	3c040000 	lui	a0,0x0
    18a0:	afa5005c 	sw	a1,92(sp)
    18a4:	0c000000 	jal	0 <EnfHG_Init>
    18a8:	24840000 	addiu	a0,a0,0
    18ac:	a200014d 	sb	zero,333(s0)
    18b0:	26040250 	addiu	a0,s0,592
    18b4:	0c000000 	jal	0 <EnfHG_Init>
    18b8:	afa40044 	sw	a0,68(sp)
    18bc:	860e01d4 	lh	t6,468(s0)
    18c0:	8fa8005c 	lw	t0,92(sp)
    18c4:	3c063f80 	lui	a2,0x3f80
    18c8:	11c00029 	beqz	t6,1970 <func_80B6424C+0xe4>
    18cc:	3c053c3c 	lui	a1,0x3c3c
    18d0:	3c073951 	lui	a3,0x3951
    18d4:	34e7b717 	ori	a3,a3,0xb717
    18d8:	34a56a7e 	ori	a1,a1,0x6a7e
    18dc:	26040058 	addiu	a0,s0,88
    18e0:	0c000000 	jal	0 <EnfHG_Init>
    18e4:	3c063f80 	lui	a2,0x3f80
    18e8:	860f01d4 	lh	t7,468(s0)
    18ec:	24010001 	li	at,1
    18f0:	24180001 	li	t8,1
    18f4:	15e10008 	bne	t7,at,1918 <func_80B6424C+0x8c>
    18f8:	24190032 	li	t9,50
    18fc:	a218014c 	sb	t8,332(s0)
    1900:	a61901d6 	sh	t9,470(s0)
    1904:	3c050601 	lui	a1,0x601
    1908:	24a5c65c 	addiu	a1,a1,-14756
    190c:	8fa40044 	lw	a0,68(sp)
    1910:	0c000000 	jal	0 <EnfHG_Init>
    1914:	24060000 	li	a2,0
    1918:	260401e8 	addiu	a0,s0,488
    191c:	3c05437f 	lui	a1,0x437f
    1920:	3c063f80 	lui	a2,0x3f80
    1924:	0c000000 	jal	0 <EnfHG_Init>
    1928:	3c074120 	lui	a3,0x4120
    192c:	260401ec 	addiu	a0,s0,492
    1930:	3c05437f 	lui	a1,0x437f
    1934:	3c063f80 	lui	a2,0x3f80
    1938:	0c000000 	jal	0 <EnfHG_Init>
    193c:	3c074120 	lui	a3,0x4120
    1940:	260401f0 	addiu	a0,s0,496
    1944:	3c05437f 	lui	a1,0x437f
    1948:	3c063f80 	lui	a2,0x3f80
    194c:	0c000000 	jal	0 <EnfHG_Init>
    1950:	3c074120 	lui	a3,0x4120
    1954:	260401f4 	addiu	a0,s0,500
    1958:	3c05c270 	lui	a1,0xc270
    195c:	3c063f80 	lui	a2,0x3f80
    1960:	0c000000 	jal	0 <EnfHG_Init>
    1964:	3c0740a0 	lui	a3,0x40a0
    1968:	10000084 	b	1b7c <func_80B6424C+0x2f0>
    196c:	860a01de 	lh	t2,478(s0)
    1970:	910907af 	lbu	t1,1967(t0)
    1974:	260401e8 	addiu	a0,s0,488
    1978:	44892000 	mtc1	t1,$f4
    197c:	05210005 	bgez	t1,1994 <func_80B6424C+0x108>
    1980:	46802120 	cvt.s.w	$f4,$f4
    1984:	3c014f80 	lui	at,0x4f80
    1988:	44813000 	mtc1	at,$f6
    198c:	00000000 	nop
    1990:	46062100 	add.s	$f4,$f4,$f6
    1994:	44052000 	mfc1	a1,$f4
    1998:	0c000000 	jal	0 <EnfHG_Init>
    199c:	3c074120 	lui	a3,0x4120
    19a0:	8faa005c 	lw	t2,92(sp)
    19a4:	260401ec 	addiu	a0,s0,492
    19a8:	3c063f80 	lui	a2,0x3f80
    19ac:	914b07af 	lbu	t3,1967(t2)
    19b0:	3c014f80 	lui	at,0x4f80
    19b4:	448b4000 	mtc1	t3,$f8
    19b8:	05610004 	bgez	t3,19cc <func_80B6424C+0x140>
    19bc:	46804220 	cvt.s.w	$f8,$f8
    19c0:	44815000 	mtc1	at,$f10
    19c4:	00000000 	nop
    19c8:	460a4200 	add.s	$f8,$f8,$f10
    19cc:	44054000 	mfc1	a1,$f8
    19d0:	0c000000 	jal	0 <EnfHG_Init>
    19d4:	3c074120 	lui	a3,0x4120
    19d8:	8fac005c 	lw	t4,92(sp)
    19dc:	260401f0 	addiu	a0,s0,496
    19e0:	3c063f80 	lui	a2,0x3f80
    19e4:	918d07af 	lbu	t5,1967(t4)
    19e8:	3c014f80 	lui	at,0x4f80
    19ec:	448d8000 	mtc1	t5,$f16
    19f0:	05a10004 	bgez	t5,1a04 <func_80B6424C+0x178>
    19f4:	46808420 	cvt.s.w	$f16,$f16
    19f8:	44819000 	mtc1	at,$f18
    19fc:	00000000 	nop
    1a00:	46128400 	add.s	$f16,$f16,$f18
    1a04:	44058000 	mfc1	a1,$f16
    1a08:	0c000000 	jal	0 <EnfHG_Init>
    1a0c:	3c074120 	lui	a3,0x4120
    1a10:	260401f4 	addiu	a0,s0,500
    1a14:	24050000 	li	a1,0
    1a18:	3c063f80 	lui	a2,0x3f80
    1a1c:	0c000000 	jal	0 <EnfHG_Init>
    1a20:	3c0740a0 	lui	a3,0x40a0
    1a24:	860e01d6 	lh	t6,470(s0)
    1a28:	2401001d 	li	at,29
    1a2c:	02002025 	move	a0,s0
    1a30:	55c10007 	bnel	t6,at,1a50 <func_80B6424C+0x1c4>
    1a34:	860f01de 	lh	t7,478(s0)
    1a38:	0c000000 	jal	0 <EnfHG_Init>
    1a3c:	240538a6 	li	a1,14502
    1a40:	02002025 	move	a0,s0
    1a44:	0c000000 	jal	0 <EnfHG_Init>
    1a48:	240538b2 	li	a1,14514
    1a4c:	860f01de 	lh	t7,478(s0)
    1a50:	55e00033 	bnezl	t7,1b20 <func_80B6424C+0x294>
    1a54:	3c053c3c 	lui	a1,0x3c3c
    1a58:	860301d6 	lh	v1,470(s0)
    1a5c:	24010018 	li	at,24
    1a60:	54610019 	bnel	v1,at,1ac8 <func_80B6424C+0x23c>
    1a64:	2401002d 	li	at,45
    1a68:	c6040024 	lwc1	$f4,36(s0)
    1a6c:	3c0142c8 	lui	at,0x42c8
    1a70:	44814000 	mtc1	at,$f8
    1a74:	e7a40010 	swc1	$f4,16(sp)
    1a78:	c6060028 	lwc1	$f6,40(s0)
    1a7c:	3c0141c8 	lui	at,0x41c8
    1a80:	44818000 	mtc1	at,$f16
    1a84:	46083280 	add.s	$f10,$f6,$f8
    1a88:	8fa6005c 	lw	a2,92(sp)
    1a8c:	24190001 	li	t9,1
    1a90:	02002825 	move	a1,s0
    1a94:	46105480 	add.s	$f18,$f10,$f16
    1a98:	2407006d 	li	a3,109
    1a9c:	24c41c24 	addiu	a0,a2,7204
    1aa0:	e7b20014 	swc1	$f18,20(sp)
    1aa4:	c604002c 	lwc1	$f4,44(s0)
    1aa8:	afb90028 	sw	t9,40(sp)
    1aac:	afa00024 	sw	zero,36(sp)
    1ab0:	afa00020 	sw	zero,32(sp)
    1ab4:	afa0001c 	sw	zero,28(sp)
    1ab8:	0c000000 	jal	0 <EnfHG_Init>
    1abc:	e7a40018 	swc1	$f4,24(sp)
    1ac0:	860301d6 	lh	v1,470(s0)
    1ac4:	2401002d 	li	at,45
    1ac8:	14610006 	bne	v1,at,1ae4 <func_80B6424C+0x258>
    1acc:	8fa40044 	lw	a0,68(sp)
    1ad0:	3c050601 	lui	a1,0x601
    1ad4:	24a5b9d0 	addiu	a1,a1,-17968
    1ad8:	0c000000 	jal	0 <EnfHG_Init>
    1adc:	24060000 	li	a2,0
    1ae0:	860301d6 	lh	v1,470(s0)
    1ae4:	24010026 	li	at,38
    1ae8:	14610003 	bne	v1,at,1af8 <func_80B6424C+0x26c>
    1aec:	24080003 	li	t0,3
    1af0:	a208014c 	sb	t0,332(s0)
    1af4:	860301d6 	lh	v1,470(s0)
    1af8:	24010010 	li	at,16
    1afc:	14610007 	bne	v1,at,1b1c <func_80B6424C+0x290>
    1b00:	8fa40044 	lw	a0,68(sp)
    1b04:	3c050601 	lui	a1,0x601
    1b08:	24a5cb1c 	addiu	a1,a1,-13540
    1b0c:	0c000000 	jal	0 <EnfHG_Init>
    1b10:	24060000 	li	a2,0
    1b14:	24090004 	li	t1,4
    1b18:	a209014c 	sb	t1,332(s0)
    1b1c:	3c053c3c 	lui	a1,0x3c3c
    1b20:	3c073b03 	lui	a3,0x3b03
    1b24:	34e7126f 	ori	a3,a3,0x126f
    1b28:	34a56a7e 	ori	a1,a1,0x6a7e
    1b2c:	26040058 	addiu	a0,s0,88
    1b30:	0c000000 	jal	0 <EnfHG_Init>
    1b34:	3c063f80 	lui	a2,0x3f80
    1b38:	26040024 	addiu	a0,s0,36
    1b3c:	8e05018c 	lw	a1,396(s0)
    1b40:	3c063f80 	lui	a2,0x3f80
    1b44:	0c000000 	jal	0 <EnfHG_Init>
    1b48:	8e070198 	lw	a3,408(s0)
    1b4c:	3c063dcc 	lui	a2,0x3dcc
    1b50:	34c6cccd 	ori	a2,a2,0xcccd
    1b54:	26040028 	addiu	a0,s0,40
    1b58:	3c054270 	lui	a1,0x4270
    1b5c:	0c000000 	jal	0 <EnfHG_Init>
    1b60:	3c073f80 	lui	a3,0x3f80
    1b64:	2604002c 	addiu	a0,s0,44
    1b68:	8e050194 	lw	a1,404(s0)
    1b6c:	3c063f80 	lui	a2,0x3f80
    1b70:	0c000000 	jal	0 <EnfHG_Init>
    1b74:	8e07019c 	lw	a3,412(s0)
    1b78:	860a01de 	lh	t2,478(s0)
    1b7c:	24010014 	li	at,20
    1b80:	3c0b0000 	lui	t3,0x0
    1b84:	1541001c 	bne	t2,at,1bf8 <func_80B6424C+0x36c>
    1b88:	256b0000 	addiu	t3,t3,0
    1b8c:	3c040601 	lui	a0,0x601
    1b90:	ae0b01fc 	sw	t3,508(s0)
    1b94:	a60001c8 	sh	zero,456(s0)
    1b98:	0c000000 	jal	0 <EnfHG_Init>
    1b9c:	2484cb1c 	addiu	a0,a0,-13540
    1ba0:	44823000 	mtc1	v0,$f6
    1ba4:	3c01c0a0 	lui	at,0xc0a0
    1ba8:	44815000 	mtc1	at,$f10
    1bac:	46803220 	cvt.s.w	$f8,$f6
    1bb0:	3c050601 	lui	a1,0x601
    1bb4:	240c0002 	li	t4,2
    1bb8:	afac0014 	sw	t4,20(sp)
    1bbc:	24a5cb1c 	addiu	a1,a1,-13540
    1bc0:	8fa40044 	lw	a0,68(sp)
    1bc4:	e7a80010 	swc1	$f8,16(sp)
    1bc8:	3c06bf80 	lui	a2,0xbf80
    1bcc:	24070000 	li	a3,0
    1bd0:	0c000000 	jal	0 <EnfHG_Init>
    1bd4:	e7aa0018 	swc1	$f10,24(sp)
    1bd8:	3c013f80 	lui	at,0x3f80
    1bdc:	44818000 	mtc1	at,$f16
    1be0:	240d000a 	li	t5,10
    1be4:	240e0004 	li	t6,4
    1be8:	a60d01d4 	sh	t5,468(s0)
    1bec:	a20e014c 	sb	t6,332(s0)
    1bf0:	10000069 	b	1d98 <func_80B6424C+0x50c>
    1bf4:	e61001a0 	swc1	$f16,416(s0)
    1bf8:	c606002c 	lwc1	$f6,44(s0)
    1bfc:	c6080194 	lwc1	$f8,404(s0)
    1c00:	c6120024 	lwc1	$f18,36(s0)
    1c04:	c604018c 	lwc1	$f4,396(s0)
    1c08:	46083281 	sub.s	$f10,$f6,$f8
    1c0c:	3c0143af 	lui	at,0x43af
    1c10:	44813000 	mtc1	at,$f6
    1c14:	46049081 	sub.s	$f2,$f18,$f4
    1c18:	e7aa0050 	swc1	$f10,80(sp)
    1c1c:	c7b00050 	lwc1	$f16,80(sp)
    1c20:	3c014396 	lui	at,0x4396
    1c24:	44814000 	mtc1	at,$f8
    1c28:	46108482 	mul.s	$f18,$f16,$f16
    1c2c:	240f0001 	li	t7,1
    1c30:	46021102 	mul.s	$f4,$f2,$f2
    1c34:	46122000 	add.s	$f0,$f4,$f18
    1c38:	46000004 	sqrt.s	$f0,$f0
    1c3c:	4606003c 	c.lt.s	$f0,$f6
    1c40:	e7a0004c 	swc1	$f0,76(sp)
    1c44:	45020003 	bc1fl	1c54 <func_80B6424C+0x3c8>
    1c48:	4608003c 	c.lt.s	$f0,$f8
    1c4c:	a20f014d 	sb	t7,333(s0)
    1c50:	4608003c 	c.lt.s	$f0,$f8
    1c54:	00000000 	nop
    1c58:	4502001e 	bc1fl	1cd4 <func_80B6424C+0x448>
    1c5c:	c6080198 	lwc1	$f8,408(s0)
    1c60:	861801c8 	lh	t8,456(s0)
    1c64:	8fa6005c 	lw	a2,92(sp)
    1c68:	24190001 	li	t9,1
    1c6c:	17000018 	bnez	t8,1cd0 <func_80B6424C+0x444>
    1c70:	3c014248 	lui	at,0x4248
    1c74:	c60a018c 	lwc1	$f10,396(s0)
    1c78:	a61901c8 	sh	t9,456(s0)
    1c7c:	44812000 	mtc1	at,$f4
    1c80:	e7aa0010 	swc1	$f10,16(sp)
    1c84:	c6100028 	lwc1	$f16,40(s0)
    1c88:	24090028 	li	t1,40
    1c8c:	24c41c24 	addiu	a0,a2,7204
    1c90:	46048480 	add.s	$f18,$f16,$f4
    1c94:	02002825 	move	a1,s0
    1c98:	2407006d 	li	a3,109
    1c9c:	e7b20014 	swc1	$f18,20(sp)
    1ca0:	c6060194 	lwc1	$f6,404(s0)
    1ca4:	afa0001c 	sw	zero,28(sp)
    1ca8:	e7a60018 	swc1	$f6,24(sp)
    1cac:	860800b6 	lh	t0,182(s0)
    1cb0:	e7a20054 	swc1	$f2,84(sp)
    1cb4:	afa90028 	sw	t1,40(sp)
    1cb8:	afa00024 	sw	zero,36(sp)
    1cbc:	0c000000 	jal	0 <EnfHG_Init>
    1cc0:	afa80020 	sw	t0,32(sp)
    1cc4:	c7a20054 	lwc1	$f2,84(sp)
    1cc8:	240a0001 	li	t2,1
    1ccc:	a20a014f 	sb	t2,335(s0)
    1cd0:	c6080198 	lwc1	$f8,408(s0)
    1cd4:	3c040000 	lui	a0,0x0
    1cd8:	24840000 	addiu	a0,a0,0
    1cdc:	460042a1 	cvt.d.s	$f10,$f8
    1ce0:	e7a20054 	swc1	$f2,84(sp)
    1ce4:	44075000 	mfc1	a3,$f10
    1ce8:	44065800 	mfc1	a2,$f11
    1cec:	0c000000 	jal	0 <EnfHG_Init>
    1cf0:	00000000 	nop
    1cf4:	c610019c 	lwc1	$f16,412(s0)
    1cf8:	3c040000 	lui	a0,0x0
    1cfc:	24840000 	addiu	a0,a0,0
    1d00:	46008121 	cvt.d.s	$f4,$f16
    1d04:	44072000 	mfc1	a3,$f4
    1d08:	44062800 	mfc1	a2,$f5
    1d0c:	0c000000 	jal	0 <EnfHG_Init>
    1d10:	00000000 	nop
    1d14:	c7a20054 	lwc1	$f2,84(sp)
    1d18:	3c040000 	lui	a0,0x0
    1d1c:	24840000 	addiu	a0,a0,0
    1d20:	460014a1 	cvt.d.s	$f18,$f2
    1d24:	44079000 	mfc1	a3,$f18
    1d28:	44069800 	mfc1	a2,$f19
    1d2c:	0c000000 	jal	0 <EnfHG_Init>
    1d30:	00000000 	nop
    1d34:	c7a60050 	lwc1	$f6,80(sp)
    1d38:	3c040000 	lui	a0,0x0
    1d3c:	24840000 	addiu	a0,a0,0
    1d40:	46003221 	cvt.d.s	$f8,$f6
    1d44:	44074000 	mfc1	a3,$f8
    1d48:	44064800 	mfc1	a2,$f9
    1d4c:	0c000000 	jal	0 <EnfHG_Init>
    1d50:	00000000 	nop
    1d54:	44800000 	mtc1	zero,$f0
    1d58:	c7aa004c 	lwc1	$f10,76(sp)
    1d5c:	3c0c0000 	lui	t4,0x0
    1d60:	3c050601 	lui	a1,0x601
    1d64:	46005032 	c.eq.s	$f10,$f0
    1d68:	240b008c 	li	t3,140
    1d6c:	258c0000 	addiu	t4,t4,0
    1d70:	24a5b4c8 	addiu	a1,a1,-19256
    1d74:	45020009 	bc1fl	1d9c <func_80B6424C+0x510>
    1d78:	8fbf003c 	lw	ra,60(sp)
    1d7c:	a60b01d4 	sh	t3,468(s0)
    1d80:	ae0c01fc 	sw	t4,508(s0)
    1d84:	44060000 	mfc1	a2,$f0
    1d88:	0c000000 	jal	0 <EnfHG_Init>
    1d8c:	8fa40044 	lw	a0,68(sp)
    1d90:	240d0005 	li	t5,5
    1d94:	a20d014c 	sb	t5,332(s0)
    1d98:	8fbf003c 	lw	ra,60(sp)
    1d9c:	8fb00038 	lw	s0,56(sp)
    1da0:	27bd0058 	addiu	sp,sp,88
    1da4:	03e00008 	jr	ra
    1da8:	00000000 	nop

00001dac <func_80B6476C>:
    1dac:	27bdffa0 	addiu	sp,sp,-96
    1db0:	afb00040 	sw	s0,64(sp)
    1db4:	00808025 	move	s0,a0
    1db8:	afbf0044 	sw	ra,68(sp)
    1dbc:	3c040000 	lui	a0,0x0
    1dc0:	f7b40038 	sdc1	$f20,56(sp)
    1dc4:	afa50064 	sw	a1,100(sp)
    1dc8:	0c000000 	jal	0 <EnfHG_Init>
    1dcc:	24840000 	addiu	a0,a0,0
    1dd0:	26040250 	addiu	a0,s0,592
    1dd4:	0c000000 	jal	0 <EnfHG_Init>
    1dd8:	afa4004c 	sw	a0,76(sp)
    1ddc:	8fae0064 	lw	t6,100(sp)
    1de0:	3c013f80 	lui	at,0x3f80
    1de4:	4481a000 	mtc1	at,$f20
    1de8:	91cf07af 	lbu	t7,1967(t6)
    1dec:	260401e8 	addiu	a0,s0,488
    1df0:	4406a000 	mfc1	a2,$f20
    1df4:	448f2000 	mtc1	t7,$f4
    1df8:	05e10005 	bgez	t7,1e10 <func_80B6476C+0x64>
    1dfc:	46802120 	cvt.s.w	$f4,$f4
    1e00:	3c014f80 	lui	at,0x4f80
    1e04:	44813000 	mtc1	at,$f6
    1e08:	00000000 	nop
    1e0c:	46062100 	add.s	$f4,$f4,$f6
    1e10:	44052000 	mfc1	a1,$f4
    1e14:	0c000000 	jal	0 <EnfHG_Init>
    1e18:	3c074120 	lui	a3,0x4120
    1e1c:	8fb80064 	lw	t8,100(sp)
    1e20:	4406a000 	mfc1	a2,$f20
    1e24:	260401ec 	addiu	a0,s0,492
    1e28:	931907af 	lbu	t9,1967(t8)
    1e2c:	44994000 	mtc1	t9,$f8
    1e30:	07210005 	bgez	t9,1e48 <func_80B6476C+0x9c>
    1e34:	46804220 	cvt.s.w	$f8,$f8
    1e38:	3c014f80 	lui	at,0x4f80
    1e3c:	44815000 	mtc1	at,$f10
    1e40:	00000000 	nop
    1e44:	460a4200 	add.s	$f8,$f8,$f10
    1e48:	44054000 	mfc1	a1,$f8
    1e4c:	0c000000 	jal	0 <EnfHG_Init>
    1e50:	3c074120 	lui	a3,0x4120
    1e54:	8fa80064 	lw	t0,100(sp)
    1e58:	4406a000 	mfc1	a2,$f20
    1e5c:	260401f0 	addiu	a0,s0,496
    1e60:	910907af 	lbu	t1,1967(t0)
    1e64:	3c014f80 	lui	at,0x4f80
    1e68:	44899000 	mtc1	t1,$f18
    1e6c:	05210004 	bgez	t1,1e80 <func_80B6476C+0xd4>
    1e70:	468094a0 	cvt.s.w	$f18,$f18
    1e74:	44812000 	mtc1	at,$f4
    1e78:	00000000 	nop
    1e7c:	46049480 	add.s	$f18,$f18,$f4
    1e80:	44059000 	mfc1	a1,$f18
    1e84:	0c000000 	jal	0 <EnfHG_Init>
    1e88:	3c074120 	lui	a3,0x4120
    1e8c:	4406a000 	mfc1	a2,$f20
    1e90:	260401f4 	addiu	a0,s0,500
    1e94:	24050000 	li	a1,0
    1e98:	0c000000 	jal	0 <EnfHG_Init>
    1e9c:	3c0740a0 	lui	a3,0x40a0
    1ea0:	3c053c3c 	lui	a1,0x3c3c
    1ea4:	4406a000 	mfc1	a2,$f20
    1ea8:	3c073b03 	lui	a3,0x3b03
    1eac:	34e7126f 	ori	a3,a3,0x126f
    1eb0:	34a56a7e 	ori	a1,a1,0x6a7e
    1eb4:	0c000000 	jal	0 <EnfHG_Init>
    1eb8:	26040058 	addiu	a0,s0,88
    1ebc:	860a01d4 	lh	t2,468(s0)
    1ec0:	3c063dcc 	lui	a2,0x3dcc
    1ec4:	260401a0 	addiu	a0,s0,416
    1ec8:	11400021 	beqz	t2,1f50 <func_80B6476C+0x1a4>
    1ecc:	3c073dcc 	lui	a3,0x3dcc
    1ed0:	4405a000 	mfc1	a1,$f20
    1ed4:	260401a0 	addiu	a0,s0,416
    1ed8:	0c000000 	jal	0 <EnfHG_Init>
    1edc:	34c6cccd 	ori	a2,a2,0xcccd
    1ee0:	860b01d4 	lh	t3,468(s0)
    1ee4:	24010001 	li	at,1
    1ee8:	5561001e 	bnel	t3,at,1f64 <func_80B6476C+0x1b8>
    1eec:	c60401a0 	lwc1	$f4,416(s0)
    1ef0:	860c01c2 	lh	t4,450(s0)
    1ef4:	3c010000 	lui	at,0x0
    1ef8:	c4200000 	lwc1	$f0,0(at)
    1efc:	a60c01c4 	sh	t4,452(s0)
    1f00:	860d01c4 	lh	t5,452(s0)
    1f04:	3c0f0000 	lui	t7,0x0
    1f08:	25ef0000 	addiu	t7,t7,0
    1f0c:	000d7100 	sll	t6,t5,0x4
    1f10:	01cf1021 	addu	v0,t6,t7
    1f14:	c4460000 	lwc1	$f6,0(v0)
    1f18:	3c014120 	lui	at,0x4120
    1f1c:	44815000 	mtc1	at,$f10
    1f20:	46003202 	mul.s	$f8,$f6,$f0
    1f24:	3c010000 	lui	at,0x0
    1f28:	460a4480 	add.s	$f18,$f8,$f10
    1f2c:	e612018c 	swc1	$f18,396(s0)
    1f30:	c4440004 	lwc1	$f4,4(v0)
    1f34:	e6040190 	swc1	$f4,400(s0)
    1f38:	c4460008 	lwc1	$f6,8(v0)
    1f3c:	c42a0000 	lwc1	$f10,0(at)
    1f40:	46003202 	mul.s	$f8,$f6,$f0
    1f44:	460a4481 	sub.s	$f18,$f8,$f10
    1f48:	10000005 	b	1f60 <func_80B6476C+0x1b4>
    1f4c:	e6120194 	swc1	$f18,404(s0)
    1f50:	4405a000 	mfc1	a1,$f20
    1f54:	4406a000 	mfc1	a2,$f20
    1f58:	0c000000 	jal	0 <EnfHG_Init>
    1f5c:	34e7cccd 	ori	a3,a3,0xcccd
    1f60:	c60401a0 	lwc1	$f4,416(s0)
    1f64:	c6060198 	lwc1	$f6,408(s0)
    1f68:	4406a000 	mfc1	a2,$f20
    1f6c:	26040024 	addiu	a0,s0,36
    1f70:	46062202 	mul.s	$f8,$f4,$f6
    1f74:	8e05018c 	lw	a1,396(s0)
    1f78:	44074000 	mfc1	a3,$f8
    1f7c:	0c000000 	jal	0 <EnfHG_Init>
    1f80:	00000000 	nop
    1f84:	3c063dcc 	lui	a2,0x3dcc
    1f88:	4407a000 	mfc1	a3,$f20
    1f8c:	34c6cccd 	ori	a2,a2,0xcccd
    1f90:	26040028 	addiu	a0,s0,40
    1f94:	0c000000 	jal	0 <EnfHG_Init>
    1f98:	3c054270 	lui	a1,0x4270
    1f9c:	c60a01a0 	lwc1	$f10,416(s0)
    1fa0:	c612019c 	lwc1	$f18,412(s0)
    1fa4:	4406a000 	mfc1	a2,$f20
    1fa8:	2604002c 	addiu	a0,s0,44
    1fac:	46125102 	mul.s	$f4,$f10,$f18
    1fb0:	8e050194 	lw	a1,404(s0)
    1fb4:	44072000 	mfc1	a3,$f4
    1fb8:	0c000000 	jal	0 <EnfHG_Init>
    1fbc:	00000000 	nop
    1fc0:	c60e018c 	lwc1	$f14,396(s0)
    1fc4:	c6060024 	lwc1	$f6,36(s0)
    1fc8:	c6100194 	lwc1	$f16,404(s0)
    1fcc:	c608002c 	lwc1	$f8,44(s0)
    1fd0:	460e3081 	sub.s	$f2,$f6,$f14
    1fd4:	3c014396 	lui	at,0x4396
    1fd8:	44812000 	mtc1	at,$f4
    1fdc:	46104301 	sub.s	$f12,$f8,$f16
    1fe0:	46021282 	mul.s	$f10,$f2,$f2
    1fe4:	00000000 	nop
    1fe8:	460c6482 	mul.s	$f18,$f12,$f12
    1fec:	46125000 	add.s	$f0,$f10,$f18
    1ff0:	46000504 	sqrt.s	$f20,$f0
    1ff4:	4604a03c 	c.lt.s	$f20,$f4
    1ff8:	00000000 	nop
    1ffc:	45000019 	bc1f	2064 <func_80B6476C+0x2b8>
    2000:	00000000 	nop
    2004:	861801c8 	lh	t8,456(s0)
    2008:	24190001 	li	t9,1
    200c:	02002825 	move	a1,s0
    2010:	17000014 	bnez	t8,2064 <func_80B6476C+0x2b8>
    2014:	2407006d 	li	a3,109
    2018:	a61901c8 	sh	t9,456(s0)
    201c:	e7ae0010 	swc1	$f14,16(sp)
    2020:	3c014248 	lui	at,0x4248
    2024:	44814000 	mtc1	at,$f8
    2028:	c6060028 	lwc1	$f6,40(s0)
    202c:	afa0001c 	sw	zero,28(sp)
    2030:	e7b00018 	swc1	$f16,24(sp)
    2034:	46083280 	add.s	$f10,$f6,$f8
    2038:	8fa60064 	lw	a2,100(sp)
    203c:	34018000 	li	at,0x8000
    2040:	240b0028 	li	t3,40
    2044:	e7aa0014 	swc1	$f10,20(sp)
    2048:	860900b6 	lh	t1,182(s0)
    204c:	afab0028 	sw	t3,40(sp)
    2050:	afa00024 	sw	zero,36(sp)
    2054:	01215021 	addu	t2,t1,at
    2058:	afaa0020 	sw	t2,32(sp)
    205c:	0c000000 	jal	0 <EnfHG_Init>
    2060:	24c41c24 	addiu	a0,a2,7204
    2064:	44800000 	mtc1	zero,$f0
    2068:	3c0d0000 	lui	t5,0x0
    206c:	3c050601 	lui	a1,0x601
    2070:	4600a032 	c.eq.s	$f20,$f0
    2074:	240c008c 	li	t4,140
    2078:	25ad0000 	addiu	t5,t5,0
    207c:	24a5b4c8 	addiu	a1,a1,-19256
    2080:	45020015 	bc1fl	20d8 <func_80B6476C+0x32c>
    2084:	8fbf0044 	lw	ra,68(sp)
    2088:	8e020118 	lw	v0,280(s0)
    208c:	a60c01d4 	sh	t4,468(s0)
    2090:	ae0d01fc 	sw	t5,508(s0)
    2094:	44060000 	mfc1	a2,$f0
    2098:	8fa4004c 	lw	a0,76(sp)
    209c:	0c000000 	jal	0 <EnfHG_Init>
    20a0:	afa20050 	sw	v0,80(sp)
    20a4:	8fa20050 	lw	v0,80(sp)
    20a8:	240f0005 	li	t7,5
    20ac:	24180001 	li	t8,1
    20b0:	904e00af 	lbu	t6,175(v0)
    20b4:	24198000 	li	t9,-32768
    20b8:	29c10019 	slti	at,t6,25
    20bc:	54200004 	bnezl	at,20d0 <func_80B6476C+0x324>
    20c0:	a05801c9 	sb	t8,457(v0)
    20c4:	10000002 	b	20d0 <func_80B6476C+0x324>
    20c8:	a20f014c 	sb	t7,332(s0)
    20cc:	a05801c9 	sb	t8,457(v0)
    20d0:	a61901c6 	sh	t9,454(s0)
    20d4:	8fbf0044 	lw	ra,68(sp)
    20d8:	d7b40038 	ldc1	$f20,56(sp)
    20dc:	8fb00040 	lw	s0,64(sp)
    20e0:	03e00008 	jr	ra
    20e4:	27bd0060 	addiu	sp,sp,96

000020e8 <func_80B64AA8>:
    20e8:	27bdffb8 	addiu	sp,sp,-72
    20ec:	afb10040 	sw	s1,64(sp)
    20f0:	00808825 	move	s1,a0
    20f4:	afbf0044 	sw	ra,68(sp)
    20f8:	3c040000 	lui	a0,0x0
    20fc:	afb0003c 	sw	s0,60(sp)
    2100:	f7b40030 	sdc1	$f20,48(sp)
    2104:	afa5004c 	sw	a1,76(sp)
    2108:	0c000000 	jal	0 <EnfHG_Init>
    210c:	24840000 	addiu	a0,a0,0
    2110:	862501c6 	lh	a1,454(s1)
    2114:	262401e0 	addiu	a0,s1,480
    2118:	24060005 	li	a2,5
    211c:	50a00004 	beqzl	a1,2130 <func_80B64AA8+0x48>
    2120:	862e001c 	lh	t6,28(s1)
    2124:	0c000000 	jal	0 <EnfHG_Init>
    2128:	240707d0 	li	a3,2000
    212c:	862e001c 	lh	t6,28(s1)
    2130:	24100001 	li	s0,1
    2134:	3c0142c8 	lui	at,0x42c8
    2138:	160e0013 	bne	s0,t6,2188 <func_80B64AA8+0xa0>
    213c:	00000000 	nop
    2140:	c6240050 	lwc1	$f4,80(s1)
    2144:	44813000 	mtc1	at,$f6
    2148:	c62800e4 	lwc1	$f8,228(s1)
    214c:	c63000e8 	lwc1	$f16,232(s1)
    2150:	46062002 	mul.s	$f0,$f4,$f6
    2154:	c62400ec 	lwc1	$f4,236(s1)
    2158:	862f01c0 	lh	t7,448(s1)
    215c:	26240180 	addiu	a0,s1,384
    2160:	31f80007 	andi	t8,t7,0x7
    2164:	46004283 	div.s	$f10,$f8,$f0
    2168:	46008483 	div.s	$f18,$f16,$f0
    216c:	e62a0180 	swc1	$f10,384(s1)
    2170:	46002183 	div.s	$f6,$f4,$f0
    2174:	e6320184 	swc1	$f18,388(s1)
    2178:	17000003 	bnez	t8,2188 <func_80B64AA8+0xa0>
    217c:	e6260188 	swc1	$f6,392(s1)
    2180:	0c000000 	jal	0 <EnfHG_Init>
    2184:	24052804 	li	a1,10244
    2188:	0c000000 	jal	0 <EnfHG_Init>
    218c:	26240250 	addiu	a0,s1,592
    2190:	3c010000 	lui	at,0x0
    2194:	c4200000 	lwc1	$f0,0(at)
    2198:	3c013f80 	lui	at,0x3f80
    219c:	4481a000 	mtc1	at,$f20
    21a0:	44050000 	mfc1	a1,$f0
    21a4:	44070000 	mfc1	a3,$f0
    21a8:	4406a000 	mfc1	a2,$f20
    21ac:	0c000000 	jal	0 <EnfHG_Init>
    21b0:	26240058 	addiu	a0,s1,88
    21b4:	3c053b03 	lui	a1,0x3b03
    21b8:	3c063d4c 	lui	a2,0x3d4c
    21bc:	3c0738d1 	lui	a3,0x38d1
    21c0:	34e7b717 	ori	a3,a3,0xb717
    21c4:	34c6cccd 	ori	a2,a2,0xcccd
    21c8:	34a5126f 	ori	a1,a1,0x126f
    21cc:	0c000000 	jal	0 <EnfHG_Init>
    21d0:	26240050 	addiu	a0,s1,80
    21d4:	3c063d4c 	lui	a2,0x3d4c
    21d8:	4407a000 	mfc1	a3,$f20
    21dc:	34c6cccd 	ori	a2,a2,0xcccd
    21e0:	26240028 	addiu	a0,s1,40
    21e4:	0c000000 	jal	0 <EnfHG_Init>
    21e8:	3c054348 	lui	a1,0x4348
    21ec:	862201d4 	lh	v0,468(s1)
    21f0:	c6280050 	lwc1	$f8,80(s1)
    21f4:	24010050 	li	at,80
    21f8:	14410008 	bne	v0,at,221c <func_80B64AA8+0x134>
    21fc:	e6280054 	swc1	$f8,84(s1)
    2200:	8639001c 	lh	t9,28(s1)
    2204:	02202025 	move	a0,s1
    2208:	16190004 	bne	s0,t9,221c <func_80B64AA8+0x134>
    220c:	00000000 	nop
    2210:	0c000000 	jal	0 <EnfHG_Init>
    2214:	240538b0 	li	a1,14512
    2218:	862201d4 	lh	v0,468(s1)
    221c:	54400040 	bnezl	v0,2320 <func_80B64AA8+0x238>
    2220:	8fbf0044 	lw	ra,68(sp)
    2224:	8628001c 	lh	t0,28(s1)
    2228:	8e220118 	lw	v0,280(s1)
    222c:	24030001 	li	v1,1
    2230:	52080005 	beql	s0,t0,2248 <func_80B64AA8+0x160>
    2234:	904901c9 	lbu	t1,457(v0)
    2238:	a223014e 	sb	v1,334(s1)
    223c:	10000037 	b	231c <func_80B64AA8+0x234>
    2240:	a04301c6 	sb	v1,454(v0)
    2244:	904901c9 	lbu	t1,457(v0)
    2248:	3c0a0000 	lui	t2,0x0
    224c:	254a0000 	addiu	t2,t2,0
    2250:	11200004 	beqz	t1,2264 <func_80B64AA8+0x17c>
    2254:	00000000 	nop
    2258:	ae2a01fc 	sw	t2,508(s1)
    225c:	1000002f 	b	231c <func_80B64AA8+0x234>
    2260:	ae200134 	sw	zero,308(s1)
    2264:	0c000000 	jal	0 <EnfHG_Init>
    2268:	00000000 	nop
    226c:	3c010000 	lui	at,0x0
    2270:	c4340000 	lwc1	$f20,0(at)
    2274:	02202025 	move	a0,s1
    2278:	8fa5004c 	lw	a1,76(sp)
    227c:	46140282 	mul.s	$f10,$f0,$f20
    2280:	4600540d 	trunc.w.s	$f16,$f10
    2284:	44028000 	mfc1	v0,$f16
    2288:	00000000 	nop
    228c:	00028400 	sll	s0,v0,0x10
    2290:	00023400 	sll	a2,v0,0x10
    2294:	00108403 	sra	s0,s0,0x10
    2298:	0c000000 	jal	0 <EnfHG_Init>
    229c:	00063403 	sra	a2,a2,0x10
    22a0:	0c000000 	jal	0 <EnfHG_Init>
    22a4:	00000000 	nop
    22a8:	46140482 	mul.s	$f18,$f0,$f20
    22ac:	4600910d 	trunc.w.s	$f4,$f18
    22b0:	44022000 	mfc1	v0,$f4
    22b4:	00000000 	nop
    22b8:	00026c00 	sll	t5,v0,0x10
    22bc:	000d7403 	sra	t6,t5,0x10
    22c0:	00021c00 	sll	v1,v0,0x10
    22c4:	120efff6 	beq	s0,t6,22a0 <func_80B64AA8+0x1b8>
    22c8:	00031c03 	sra	v1,v1,0x10
    22cc:	c6260024 	lwc1	$f6,36(s1)
    22d0:	8fa6004c 	lw	a2,76(sp)
    22d4:	2478000a 	addiu	t8,v1,10
    22d8:	e7a60010 	swc1	$f6,16(sp)
    22dc:	c6280028 	lwc1	$f8,40(s1)
    22e0:	02202825 	move	a1,s1
    22e4:	24070052 	li	a3,82
    22e8:	e7a80014 	swc1	$f8,20(sp)
    22ec:	c62a002c 	lwc1	$f10,44(s1)
    22f0:	afb80028 	sw	t8,40(sp)
    22f4:	afa00024 	sw	zero,36(sp)
    22f8:	afa00020 	sw	zero,32(sp)
    22fc:	afa0001c 	sw	zero,28(sp)
    2300:	24c41c24 	addiu	a0,a2,7204
    2304:	0c000000 	jal	0 <EnfHG_Init>
    2308:	e7aa0018 	swc1	$f10,24(sp)
    230c:	3c040000 	lui	a0,0x0
    2310:	24840000 	addiu	a0,a0,0
    2314:	0c000000 	jal	0 <EnfHG_Init>
    2318:	00402825 	move	a1,v0
    231c:	8fbf0044 	lw	ra,68(sp)
    2320:	d7b40030 	ldc1	$f20,48(sp)
    2324:	8fb0003c 	lw	s0,60(sp)
    2328:	8fb10040 	lw	s1,64(sp)
    232c:	03e00008 	jr	ra
    2330:	27bd0048 	addiu	sp,sp,72

00002334 <func_80B64CF4>:
    2334:	afa50004 	sw	a1,4(sp)
    2338:	03e00008 	jr	ra
    233c:	a080014d 	sb	zero,333(a0)

00002340 <EnfHG_Update>:
    2340:	27bdffe0 	addiu	sp,sp,-32
    2344:	afbf001c 	sw	ra,28(sp)
    2348:	afb00018 	sw	s0,24(sp)
    234c:	908e014e 	lbu	t6,334(a0)
    2350:	00808025 	move	s0,a0
    2354:	24190001 	li	t9,1
    2358:	51c00006 	beqzl	t6,2374 <EnfHG_Update+0x34>
    235c:	860f01c0 	lh	t7,448(s0)
    2360:	0c000000 	jal	0 <EnfHG_Init>
    2364:	00000000 	nop
    2368:	10000056 	b	24c4 <EnfHG_Update+0x184>
    236c:	8fbf001c 	lw	ra,28(sp)
    2370:	860f01c0 	lh	t7,448(s0)
    2374:	a219014d 	sb	t9,333(s0)
    2378:	00001025 	move	v0,zero
    237c:	25f80001 	addiu	t8,t7,1
    2380:	a61801c0 	sh	t8,448(s0)
    2384:	00024040 	sll	t0,v0,0x1
    2388:	02081821 	addu	v1,s0,t0
    238c:	846401d4 	lh	a0,468(v1)
    2390:	24420001 	addiu	v0,v0,1
    2394:	304200ff 	andi	v0,v0,0xff
    2398:	10800003 	beqz	a0,23a8 <EnfHG_Update+0x68>
    239c:	28410005 	slti	at,v0,5
    23a0:	2489ffff 	addiu	t1,a0,-1
    23a4:	a46901d4 	sh	t1,468(v1)
    23a8:	5420fff7 	bnezl	at,2388 <EnfHG_Update+0x48>
    23ac:	00024040 	sll	t0,v0,0x1
    23b0:	8e1901fc 	lw	t9,508(s0)
    23b4:	02002025 	move	a0,s0
    23b8:	0320f809 	jalr	t9
    23bc:	00000000 	nop
    23c0:	860201de 	lh	v0,478(s0)
    23c4:	3c01428c 	lui	at,0x428c
    23c8:	44813000 	mtc1	at,$f6
    23cc:	10400002 	beqz	v0,23d8 <EnfHG_Update+0x98>
    23d0:	244affff 	addiu	t2,v0,-1
    23d4:	a60a01de 	sh	t2,478(s0)
    23d8:	8e0b0028 	lw	t3,40(s0)
    23dc:	860401de 	lh	a0,478(s0)
    23e0:	8e0c0024 	lw	t4,36(s0)
    23e4:	ae0b003c 	sw	t3,60(s0)
    23e8:	c604003c 	lwc1	$f4,60(s0)
    23ec:	00800821 	move	at,a0
    23f0:	000420c0 	sll	a0,a0,0x3
    23f4:	46062200 	add.s	$f8,$f4,$f6
    23f8:	00812021 	addu	a0,a0,at
    23fc:	ae0c0038 	sw	t4,56(s0)
    2400:	8e0c002c 	lw	t4,44(s0)
    2404:	860d0032 	lh	t5,50(s0)
    2408:	00042300 	sll	a0,a0,0xc
    240c:	00042400 	sll	a0,a0,0x10
    2410:	e608003c 	swc1	$f8,60(s0)
    2414:	00042403 	sra	a0,a0,0x10
    2418:	ae0c0040 	sw	t4,64(s0)
    241c:	0c000000 	jal	0 <EnfHG_Init>
    2420:	a60d00b6 	sh	t5,182(s0)
    2424:	860201de 	lh	v0,478(s0)
    2428:	3c0141a0 	lui	at,0x41a0
    242c:	44819000 	mtc1	at,$f18
    2430:	44825000 	mtc1	v0,$f10
    2434:	3c01442f 	lui	at,0x442f
    2438:	44813000 	mtc1	at,$f6
    243c:	46805420 	cvt.s.w	$f16,$f10
    2440:	000220c0 	sll	a0,v0,0x3
    2444:	46060202 	mul.s	$f8,$f0,$f6
    2448:	00822023 	subu	a0,a0,v0
    244c:	00042300 	sll	a0,a0,0xc
    2450:	00042400 	sll	a0,a0,0x10
    2454:	00042403 	sra	a0,a0,0x10
    2458:	46128103 	div.s	$f4,$f16,$f18
    245c:	46044282 	mul.s	$f10,$f8,$f4
    2460:	0c000000 	jal	0 <EnfHG_Init>
    2464:	e60a00bc 	swc1	$f10,188(s0)
    2468:	860e01de 	lh	t6,478(s0)
    246c:	3c0141a0 	lui	at,0x41a0
    2470:	44813000 	mtc1	at,$f6
    2474:	448e8000 	mtc1	t6,$f16
    2478:	3c010000 	lui	at,0x0
    247c:	c4240000 	lwc1	$f4,0(at)
    2480:	468084a0 	cvt.s.w	$f18,$f16
    2484:	46040282 	mul.s	$f10,$f0,$f4
    2488:	46069203 	div.s	$f8,$f18,$f6
    248c:	4600540d 	trunc.w.s	$f16,$f10
    2490:	44188000 	mfc1	t8,$f16
    2494:	00000000 	nop
    2498:	00184400 	sll	t0,t8,0x10
    249c:	00084c03 	sra	t1,t0,0x10
    24a0:	44899000 	mtc1	t1,$f18
    24a4:	00000000 	nop
    24a8:	468091a0 	cvt.s.w	$f6,$f18
    24ac:	46083102 	mul.s	$f4,$f6,$f8
    24b0:	4600228d 	trunc.w.s	$f10,$f4
    24b4:	440a5000 	mfc1	t2,$f10
    24b8:	00000000 	nop
    24bc:	a60a00b8 	sh	t2,184(s0)
    24c0:	8fbf001c 	lw	ra,28(sp)
    24c4:	8fb00018 	lw	s0,24(sp)
    24c8:	27bd0020 	addiu	sp,sp,32
    24cc:	03e00008 	jr	ra
    24d0:	00000000 	nop

000024d4 <func_80B64E94>:
    24d4:	afa40000 	sw	a0,0(sp)
    24d8:	afa50004 	sw	a1,4(sp)
    24dc:	03e00008 	jr	ra
    24e0:	afa60008 	sw	a2,8(sp)

000024e4 <EnfHG_Draw>:
    24e4:	27bdffa0 	addiu	sp,sp,-96
    24e8:	afbf0034 	sw	ra,52(sp)
    24ec:	afb20030 	sw	s2,48(sp)
    24f0:	afb1002c 	sw	s1,44(sp)
    24f4:	afb00028 	sw	s0,40(sp)
    24f8:	8c8e0118 	lw	t6,280(a0)
    24fc:	00a09025 	move	s2,a1
    2500:	00808025 	move	s0,a0
    2504:	afae0058 	sw	t6,88(sp)
    2508:	8ca50000 	lw	a1,0(a1)
    250c:	3c060000 	lui	a2,0x0
    2510:	24c60000 	addiu	a2,a2,0
    2514:	27a40040 	addiu	a0,sp,64
    2518:	24070987 	li	a3,2439
    251c:	0c000000 	jal	0 <EnfHG_Init>
    2520:	00a08825 	move	s1,a1
    2524:	0c000000 	jal	0 <EnfHG_Init>
    2528:	8e440000 	lw	a0,0(s2)
    252c:	8fa20058 	lw	v0,88(sp)
    2530:	24050001 	li	a1,1
    2534:	844f01a0 	lh	t7,416(v0)
    2538:	31f80004 	andi	t8,t7,0x4
    253c:	53000010 	beqzl	t8,2580 <EnfHG_Draw+0x9c>
    2540:	444af800 	cfc1	t2,$31
    2544:	905901c9 	lbu	t9,457(v0)
    2548:	24060032 	li	a2,50
    254c:	00003825 	move	a3,zero
    2550:	1720000a 	bnez	t9,257c <EnfHG_Draw+0x98>
    2554:	24080384 	li	t0,900
    2558:	8e2402c0 	lw	a0,704(s1)
    255c:	2409044b 	li	t1,1099
    2560:	afa90018 	sw	t1,24(sp)
    2564:	afa80014 	sw	t0,20(sp)
    2568:	afa00010 	sw	zero,16(sp)
    256c:	0c000000 	jal	0 <EnfHG_Init>
    2570:	240500ff 	li	a1,255
    2574:	10000076 	b	2750 <EnfHG_Draw+0x26c>
    2578:	ae2202c0 	sw	v0,704(s1)
    257c:	444af800 	cfc1	t2,$31
    2580:	44c5f800 	ctc1	a1,$31
    2584:	c60401e8 	lwc1	$f4,488(s0)
    2588:	8e2402c0 	lw	a0,704(s1)
    258c:	3c014f00 	lui	at,0x4f00
    2590:	460021a4 	cvt.w.s	$f6,$f4
    2594:	4445f800 	cfc1	a1,$31
    2598:	00000000 	nop
    259c:	30a50078 	andi	a1,a1,0x78
    25a0:	50a00013 	beqzl	a1,25f0 <EnfHG_Draw+0x10c>
    25a4:	44053000 	mfc1	a1,$f6
    25a8:	44813000 	mtc1	at,$f6
    25ac:	24050001 	li	a1,1
    25b0:	46062181 	sub.s	$f6,$f4,$f6
    25b4:	44c5f800 	ctc1	a1,$31
    25b8:	00000000 	nop
    25bc:	460031a4 	cvt.w.s	$f6,$f6
    25c0:	4445f800 	cfc1	a1,$31
    25c4:	00000000 	nop
    25c8:	30a50078 	andi	a1,a1,0x78
    25cc:	14a00005 	bnez	a1,25e4 <EnfHG_Draw+0x100>
    25d0:	00000000 	nop
    25d4:	44053000 	mfc1	a1,$f6
    25d8:	3c018000 	lui	at,0x8000
    25dc:	10000007 	b	25fc <EnfHG_Draw+0x118>
    25e0:	00a12825 	or	a1,a1,at
    25e4:	10000005 	b	25fc <EnfHG_Draw+0x118>
    25e8:	2405ffff 	li	a1,-1
    25ec:	44053000 	mfc1	a1,$f6
    25f0:	00000000 	nop
    25f4:	04a0fffb 	bltz	a1,25e4 <EnfHG_Draw+0x100>
    25f8:	00000000 	nop
    25fc:	44caf800 	ctc1	t2,$31
    2600:	24060001 	li	a2,1
    2604:	c60801ec 	lwc1	$f8,492(s0)
    2608:	3c014f00 	lui	at,0x4f00
    260c:	444bf800 	cfc1	t3,$31
    2610:	44c6f800 	ctc1	a2,$31
    2614:	00000000 	nop
    2618:	460042a4 	cvt.w.s	$f10,$f8
    261c:	4446f800 	cfc1	a2,$31
    2620:	00000000 	nop
    2624:	30c60078 	andi	a2,a2,0x78
    2628:	50c00013 	beqzl	a2,2678 <EnfHG_Draw+0x194>
    262c:	44065000 	mfc1	a2,$f10
    2630:	44815000 	mtc1	at,$f10
    2634:	24060001 	li	a2,1
    2638:	460a4281 	sub.s	$f10,$f8,$f10
    263c:	44c6f800 	ctc1	a2,$31
    2640:	00000000 	nop
    2644:	460052a4 	cvt.w.s	$f10,$f10
    2648:	4446f800 	cfc1	a2,$31
    264c:	00000000 	nop
    2650:	30c60078 	andi	a2,a2,0x78
    2654:	14c00005 	bnez	a2,266c <EnfHG_Draw+0x188>
    2658:	00000000 	nop
    265c:	44065000 	mfc1	a2,$f10
    2660:	3c018000 	lui	at,0x8000
    2664:	10000007 	b	2684 <EnfHG_Draw+0x1a0>
    2668:	00c13025 	or	a2,a2,at
    266c:	10000005 	b	2684 <EnfHG_Draw+0x1a0>
    2670:	2406ffff 	li	a2,-1
    2674:	44065000 	mfc1	a2,$f10
    2678:	00000000 	nop
    267c:	04c0fffb 	bltz	a2,266c <EnfHG_Draw+0x188>
    2680:	00000000 	nop
    2684:	44cbf800 	ctc1	t3,$31
    2688:	24070001 	li	a3,1
    268c:	c61001f0 	lwc1	$f16,496(s0)
    2690:	3c014f00 	lui	at,0x4f00
    2694:	444cf800 	cfc1	t4,$31
    2698:	44c7f800 	ctc1	a3,$31
    269c:	00000000 	nop
    26a0:	460084a4 	cvt.w.s	$f18,$f16
    26a4:	4447f800 	cfc1	a3,$31
    26a8:	00000000 	nop
    26ac:	30e70078 	andi	a3,a3,0x78
    26b0:	50e00013 	beqzl	a3,2700 <EnfHG_Draw+0x21c>
    26b4:	44079000 	mfc1	a3,$f18
    26b8:	44819000 	mtc1	at,$f18
    26bc:	24070001 	li	a3,1
    26c0:	46128481 	sub.s	$f18,$f16,$f18
    26c4:	44c7f800 	ctc1	a3,$31
    26c8:	00000000 	nop
    26cc:	460094a4 	cvt.w.s	$f18,$f18
    26d0:	4447f800 	cfc1	a3,$31
    26d4:	00000000 	nop
    26d8:	30e70078 	andi	a3,a3,0x78
    26dc:	14e00005 	bnez	a3,26f4 <EnfHG_Draw+0x210>
    26e0:	00000000 	nop
    26e4:	44079000 	mfc1	a3,$f18
    26e8:	3c018000 	lui	at,0x8000
    26ec:	10000007 	b	270c <EnfHG_Draw+0x228>
    26f0:	00e13825 	or	a3,a3,at
    26f4:	10000005 	b	270c <EnfHG_Draw+0x228>
    26f8:	2407ffff 	li	a3,-1
    26fc:	44079000 	mfc1	a3,$f18
    2700:	00000000 	nop
    2704:	04e0fffb 	bltz	a3,26f4 <EnfHG_Draw+0x210>
    2708:	00000000 	nop
    270c:	afa00010 	sw	zero,16(sp)
    2710:	c60401f4 	lwc1	$f4,500(s0)
    2714:	44ccf800 	ctc1	t4,$31
    2718:	00000000 	nop
    271c:	4600218d 	trunc.w.s	$f6,$f4
    2720:	440e3000 	mfc1	t6,$f6
    2724:	00000000 	nop
    2728:	25cf03e3 	addiu	t7,t6,995
    272c:	afaf0014 	sw	t7,20(sp)
    2730:	c60801f8 	lwc1	$f8,504(s0)
    2734:	4600428d 	trunc.w.s	$f10,$f8
    2738:	44195000 	mfc1	t9,$f10
    273c:	00000000 	nop
    2740:	272803e8 	addiu	t0,t9,1000
    2744:	0c000000 	jal	0 <EnfHG_Init>
    2748:	afa80018 	sw	t0,24(sp)
    274c:	ae2202c0 	sw	v0,704(s1)
    2750:	3c070000 	lui	a3,0x0
    2754:	24090023 	li	t1,35
    2758:	afa90010 	sw	t1,16(sp)
    275c:	24e70000 	addiu	a3,a3,0
    2760:	02002025 	move	a0,s0
    2764:	02402825 	move	a1,s2
    2768:	0c000000 	jal	0 <EnfHG_Init>
    276c:	26060204 	addiu	a2,s0,516
    2770:	02402025 	move	a0,s2
    2774:	0c000000 	jal	0 <EnfHG_Init>
    2778:	8e2502c0 	lw	a1,704(s1)
    277c:	ae2202c0 	sw	v0,704(s1)
    2780:	3c060000 	lui	a2,0x0
    2784:	24c60000 	addiu	a2,a2,0
    2788:	8e450000 	lw	a1,0(s2)
    278c:	27a40040 	addiu	a0,sp,64
    2790:	0c000000 	jal	0 <EnfHG_Init>
    2794:	240709b0 	li	a3,2480
    2798:	8fbf0034 	lw	ra,52(sp)
    279c:	8fb00028 	lw	s0,40(sp)
    27a0:	8fb1002c 	lw	s1,44(sp)
    27a4:	8fb20030 	lw	s2,48(sp)
    27a8:	03e00008 	jr	ra
    27ac:	27bd0060 	addiu	sp,sp,96
