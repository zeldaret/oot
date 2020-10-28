
build/src/overlays/actors/ovl_En_Rr/z_en_rr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnRr_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb10018 	sw	s1,24(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf001c 	sw	ra,28(sp)
      10:	afb00014 	sw	s0,20(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnRr_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	3c0e0000 	lui	t6,0x0
      28:	25ce0000 	addiu	t6,t6,0
      2c:	240f0004 	li	t7,4
      30:	ae0e0098 	sw	t6,152(s0)
      34:	a20f00af 	sb	t7,175(s0)
      38:	26050150 	addiu	a1,s0,336
      3c:	afa50024 	sw	a1,36(sp)
      40:	0c000000 	jal	0 <EnRr_Init>
      44:	02202025 	move	a0,s1
      48:	3c070000 	lui	a3,0x0
      4c:	8fa50024 	lw	a1,36(sp)
      50:	24e70000 	addiu	a3,a3,0
      54:	02202025 	move	a0,s1
      58:	0c000000 	jal	0 <EnRr_Init>
      5c:	02003025 	move	a2,s0
      60:	2605019c 	addiu	a1,s0,412
      64:	afa50024 	sw	a1,36(sp)
      68:	0c000000 	jal	0 <EnRr_Init>
      6c:	02202025 	move	a0,s1
      70:	3c070000 	lui	a3,0x0
      74:	8fa50024 	lw	a1,36(sp)
      78:	24e70000 	addiu	a3,a3,0
      7c:	02202025 	move	a0,s1
      80:	0c000000 	jal	0 <EnRr_Init>
      84:	02003025 	move	a2,s0
      88:	02002025 	move	a0,s0
      8c:	0c000000 	jal	0 <EnRr_Init>
      90:	3c0541f0 	lui	a1,0x41f0
      94:	3c010000 	lui	at,0x0
      98:	c4220000 	lwc1	$f2,0(at)
      9c:	3c010000 	lui	at,0x0
      a0:	c4240000 	lwc1	$f4,0(at)
      a4:	44800000 	mtc1	zero,$f0
      a8:	241800ff 	li	t8,255
      ac:	a21800ae 	sb	t8,174(s0)
      b0:	3c010000 	lui	at,0x0
      b4:	e6020050 	swc1	$f2,80(s0)
      b8:	e6020058 	swc1	$f2,88(s0)
      bc:	e6040054 	swc1	$f4,84(s0)
      c0:	e6000068 	swc1	$f0,104(s0)
      c4:	e6000060 	swc1	$f0,96(s0)
      c8:	c4260000 	lwc1	$f6,0(at)
      cc:	3c080000 	lui	t0,0x0
      d0:	24030001 	li	v1,1
      d4:	25080000 	addiu	t0,t0,0
      d8:	00034980 	sll	t1,v1,0x6
      dc:	a60001ea 	sh	zero,490(s0)
      e0:	a2000372 	sb	zero,882(s0)
      e4:	a2000373 	sb	zero,883(s0)
      e8:	a2000375 	sb	zero,885(s0)
      ec:	a60001ee 	sh	zero,494(s0)
      f0:	a60001f0 	sh	zero,496(s0)
      f4:	a60001f2 	sh	zero,498(s0)
      f8:	a6000378 	sh	zero,888(s0)
      fc:	a2000376 	sb	zero,886(s0)
     100:	a60001f4 	sh	zero,500(s0)
     104:	a2000370 	sb	zero,880(s0)
     108:	a2000371 	sb	zero,881(s0)
     10c:	ae08014c 	sw	t0,332(s0)
     110:	02091021 	addu	v0,s0,t1
     114:	e6000224 	swc1	$f0,548(s0)
     118:	e6000228 	swc1	$f0,552(s0)
     11c:	e6000244 	swc1	$f0,580(s0)
     120:	e6000248 	swc1	$f0,584(s0)
     124:	e600024c 	swc1	$f0,588(s0)
     128:	e606006c 	swc1	$f6,108(s0)
     12c:	02002025 	move	a0,s0
     130:	02202825 	move	a1,s1
     134:	e44002e4 	swc1	$f0,740(v0)
     138:	e44002e8 	swc1	$f0,744(v0)
     13c:	e4400304 	swc1	$f0,772(v0)
     140:	e4400308 	swc1	$f0,776(v0)
     144:	e440030c 	swc1	$f0,780(v0)
     148:	e44002a4 	swc1	$f0,676(v0)
     14c:	e44002a8 	swc1	$f0,680(v0)
     150:	e44002c4 	swc1	$f0,708(v0)
     154:	e44002c8 	swc1	$f0,712(v0)
     158:	e44002cc 	swc1	$f0,716(v0)
     15c:	e4400264 	swc1	$f0,612(v0)
     160:	e4400268 	swc1	$f0,616(v0)
     164:	e4400284 	swc1	$f0,644(v0)
     168:	e4400288 	swc1	$f0,648(v0)
     16c:	e440028c 	swc1	$f0,652(v0)
     170:	e4400224 	swc1	$f0,548(v0)
     174:	e4400228 	swc1	$f0,552(v0)
     178:	e4400244 	swc1	$f0,580(v0)
     17c:	e4400248 	swc1	$f0,584(v0)
     180:	0c000000 	jal	0 <EnRr_Init>
     184:	e440024c 	swc1	$f0,588(v0)
     188:	8fbf001c 	lw	ra,28(sp)
     18c:	8fb00014 	lw	s0,20(sp)
     190:	8fb10018 	lw	s1,24(sp)
     194:	03e00008 	jr	ra
     198:	27bd0040 	addiu	sp,sp,64

0000019c <EnRr_Destroy>:
     19c:	27bdffe8 	addiu	sp,sp,-24
     1a0:	afa40018 	sw	a0,24(sp)
     1a4:	afa5001c 	sw	a1,28(sp)
     1a8:	00a02025 	move	a0,a1
     1ac:	8fa50018 	lw	a1,24(sp)
     1b0:	afbf0014 	sw	ra,20(sp)
     1b4:	0c000000 	jal	0 <EnRr_Init>
     1b8:	24a50150 	addiu	a1,a1,336
     1bc:	8fa50018 	lw	a1,24(sp)
     1c0:	8fa4001c 	lw	a0,28(sp)
     1c4:	0c000000 	jal	0 <EnRr_Init>
     1c8:	24a5019c 	addiu	a1,a1,412
     1cc:	8fbf0014 	lw	ra,20(sp)
     1d0:	27bd0018 	addiu	sp,sp,24
     1d4:	03e00008 	jr	ra
     1d8:	00000000 	nop

000001dc <func_80AE861C>:
     1dc:	44856000 	mtc1	a1,$f12
     1e0:	27bdffe8 	addiu	sp,sp,-24
     1e4:	afbf0014 	sw	ra,20(sp)
     1e8:	24053990 	li	a1,14736
     1ec:	0c000000 	jal	0 <EnRr_Init>
     1f0:	e48c0068 	swc1	$f12,104(a0)
     1f4:	8fbf0014 	lw	ra,20(sp)
     1f8:	27bd0018 	addiu	sp,sp,24
     1fc:	03e00008 	jr	ra
     200:	00000000 	nop

00000204 <func_80AE8644>:
     204:	27bdffe8 	addiu	sp,sp,-24
     208:	afbf0014 	sw	ra,20(sp)
     20c:	240e0001 	li	t6,1
     210:	240f0014 	li	t7,20
     214:	a08e0370 	sb	t6,880(a0)
     218:	a48f01ea 	sh	t7,490(a0)
     21c:	3c010000 	lui	at,0x0
     220:	44801000 	mtc1	zero,$f2
     224:	c4240000 	lwc1	$f4,0(at)
     228:	3c010000 	lui	at,0x0
     22c:	e4820364 	swc1	$f2,868(a0)
     230:	e48401fc 	swc1	$f4,508(a0)
     234:	c4200000 	lwc1	$f0,0(at)
     238:	3c010000 	lui	at,0x0
     23c:	c42c0000 	lwc1	$f12,0(at)
     240:	3c010000 	lui	at,0x0
     244:	c4260000 	lwc1	$f6,0(at)
     248:	00803025 	move	a2,a0
     24c:	e4820258 	swc1	$f2,600(a0)
     250:	e4800238 	swc1	$f0,568(a0)
     254:	e4800240 	swc1	$f0,576(a0)
     258:	e48c0250 	swc1	$f12,592(a0)
     25c:	e4860228 	swc1	$f6,552(a0)
     260:	24040001 	li	a0,1
     264:	3c080000 	lui	t0,0x0
     268:	25080000 	addiu	t0,t0,0
     26c:	0004c880 	sll	t9,a0,0x2
     270:	03281821 	addu	v1,t9,t0
     274:	0004c180 	sll	t8,a0,0x6
     278:	c4680000 	lwc1	$f8,0(v1)
     27c:	00d81021 	addu	v0,a2,t8
     280:	e4420258 	swc1	$f2,600(v0)
     284:	e4400240 	swc1	$f0,576(v0)
     288:	e4400238 	swc1	$f0,568(v0)
     28c:	e44c0250 	swc1	$f12,592(v0)
     290:	e4480228 	swc1	$f8,552(v0)
     294:	c46a0004 	lwc1	$f10,4(v1)
     298:	e4420298 	swc1	$f2,664(v0)
     29c:	e4400278 	swc1	$f0,632(v0)
     2a0:	e4400280 	swc1	$f0,640(v0)
     2a4:	e44c0290 	swc1	$f12,656(v0)
     2a8:	e44a0268 	swc1	$f10,616(v0)
     2ac:	c4700008 	lwc1	$f16,8(v1)
     2b0:	e44202d8 	swc1	$f2,728(v0)
     2b4:	e44002b8 	swc1	$f0,696(v0)
     2b8:	e44002c0 	swc1	$f0,704(v0)
     2bc:	e44c02d0 	swc1	$f12,720(v0)
     2c0:	e45002a8 	swc1	$f16,680(v0)
     2c4:	c472000c 	lwc1	$f18,12(v1)
     2c8:	3c090000 	lui	t1,0x0
     2cc:	25290000 	addiu	t1,t1,0
     2d0:	e4420318 	swc1	$f2,792(v0)
     2d4:	e44002f8 	swc1	$f0,760(v0)
     2d8:	e4400300 	swc1	$f0,768(v0)
     2dc:	e44c0310 	swc1	$f12,784(v0)
     2e0:	e45202e8 	swc1	$f18,744(v0)
     2e4:	acc9014c 	sw	t1,332(a2)
     2e8:	00c02025 	move	a0,a2
     2ec:	0c000000 	jal	0 <EnRr_Init>
     2f0:	24053991 	li	a1,14737
     2f4:	8fbf0014 	lw	ra,20(sp)
     2f8:	27bd0018 	addiu	sp,sp,24
     2fc:	03e00008 	jr	ra
     300:	00000000 	nop

00000304 <func_80AE8744>:
     304:	44800000 	mtc1	zero,$f0
     308:	a0800370 	sb	zero,880(a0)
     30c:	3c010000 	lui	at,0x0
     310:	e4800364 	swc1	$f0,868(a0)
     314:	c4240000 	lwc1	$f4,0(at)
     318:	3c013f80 	lui	at,0x3f80
     31c:	44811000 	mtc1	at,$f2
     320:	24020001 	li	v0,1
     324:	00027180 	sll	t6,v0,0x6
     328:	008e1821 	addu	v1,a0,t6
     32c:	e4800250 	swc1	$f0,592(a0)
     330:	e4800258 	swc1	$f0,600(a0)
     334:	e4800228 	swc1	$f0,552(a0)
     338:	e48401fc 	swc1	$f4,508(a0)
     33c:	e4820240 	swc1	$f2,576(a0)
     340:	e4820238 	swc1	$f2,568(a0)
     344:	e4600310 	swc1	$f0,784(v1)
     348:	e4600318 	swc1	$f0,792(v1)
     34c:	e46002e8 	swc1	$f0,744(v1)
     350:	e46002d0 	swc1	$f0,720(v1)
     354:	e46002d8 	swc1	$f0,728(v1)
     358:	e46002a8 	swc1	$f0,680(v1)
     35c:	e4600290 	swc1	$f0,656(v1)
     360:	e4600298 	swc1	$f0,664(v1)
     364:	e4600268 	swc1	$f0,616(v1)
     368:	e4600228 	swc1	$f0,552(v1)
     36c:	e4600250 	swc1	$f0,592(v1)
     370:	e4600258 	swc1	$f0,600(v1)
     374:	e46202f8 	swc1	$f2,760(v1)
     378:	e4620300 	swc1	$f2,768(v1)
     37c:	e46202b8 	swc1	$f2,696(v1)
     380:	e46202c0 	swc1	$f2,704(v1)
     384:	e4620278 	swc1	$f2,632(v1)
     388:	e4620280 	swc1	$f2,640(v1)
     38c:	e4620238 	swc1	$f2,568(v1)
     390:	e4620240 	swc1	$f2,576(v1)
     394:	908f0375 	lbu	t7,885(a0)
     398:	3c090000 	lui	t1,0x0
     39c:	2408003c 	li	t0,60
     3a0:	11e00007 	beqz	t7,3c0 <func_80AE8744+0xbc>
     3a4:	25290000 	addiu	t1,t1,0
     3a8:	3c190000 	lui	t9,0x0
     3ac:	24180064 	li	t8,100
     3b0:	27390000 	addiu	t9,t9,0
     3b4:	a49801ea 	sh	t8,490(a0)
     3b8:	03e00008 	jr	ra
     3bc:	ac99014c 	sw	t9,332(a0)
     3c0:	a48801ea 	sh	t0,490(a0)
     3c4:	ac89014c 	sw	t1,332(a0)
     3c8:	03e00008 	jr	ra
     3cc:	00000000 	nop

000003d0 <func_80AE8810>:
     3d0:	27bdffe8 	addiu	sp,sp,-24
     3d4:	afbf0014 	sw	ra,20(sp)
     3d8:	afa5001c 	sw	a1,28(sp)
     3dc:	44800000 	mtc1	zero,$f0
     3e0:	8c8f0004 	lw	t7,4(a0)
     3e4:	2401fffe 	li	at,-2
     3e8:	240e0064 	li	t6,100
     3ec:	01e1c024 	and	t8,t7,at
     3f0:	24190008 	li	t9,8
     3f4:	24080001 	li	t0,1
     3f8:	a48e01ee 	sh	t6,494(a0)
     3fc:	ac980004 	sw	t8,4(a0)
     400:	a49901f4 	sh	t9,500(a0)
     404:	a4880378 	sh	t0,888(a0)
     408:	a0800370 	sb	zero,880(a0)
     40c:	3c010000 	lui	at,0x0
     410:	e4800068 	swc1	$f0,104(a0)
     414:	e480036c 	swc1	$f0,876(a0)
     418:	e4800364 	swc1	$f0,868(a0)
     41c:	c4240000 	lwc1	$f4,0(at)
     420:	3c010000 	lui	at,0x0
     424:	24030001 	li	v1,1
     428:	e4840218 	swc1	$f4,536(a0)
     42c:	c4260000 	lwc1	$f6,0(at)
     430:	3c014400 	lui	at,0x4400
     434:	44814000 	mtc1	at,$f8
     438:	3c013f80 	lui	at,0x3f80
     43c:	44811000 	mtc1	at,$f2
     440:	00034980 	sll	t1,v1,0x6
     444:	00891021 	addu	v0,a0,t1
     448:	e4800250 	swc1	$f0,592(a0)
     44c:	e4800258 	swc1	$f0,600(a0)
     450:	e4800228 	swc1	$f0,552(a0)
     454:	e48601fc 	swc1	$f6,508(a0)
     458:	e4880220 	swc1	$f8,544(a0)
     45c:	e4820240 	swc1	$f2,576(a0)
     460:	e4820238 	swc1	$f2,568(a0)
     464:	3c0a0000 	lui	t2,0x0
     468:	254a0000 	addiu	t2,t2,0
     46c:	e4400310 	swc1	$f0,784(v0)
     470:	e4400318 	swc1	$f0,792(v0)
     474:	e44002e8 	swc1	$f0,744(v0)
     478:	e44002d0 	swc1	$f0,720(v0)
     47c:	e44002d8 	swc1	$f0,728(v0)
     480:	e44002a8 	swc1	$f0,680(v0)
     484:	e4400290 	swc1	$f0,656(v0)
     488:	e4400298 	swc1	$f0,664(v0)
     48c:	e4400268 	swc1	$f0,616(v0)
     490:	e4400228 	swc1	$f0,552(v0)
     494:	e4400250 	swc1	$f0,592(v0)
     498:	e4400258 	swc1	$f0,600(v0)
     49c:	e44202f8 	swc1	$f2,760(v0)
     4a0:	e4420300 	swc1	$f2,768(v0)
     4a4:	e44202b8 	swc1	$f2,696(v0)
     4a8:	e44202c0 	swc1	$f2,704(v0)
     4ac:	e4420278 	swc1	$f2,632(v0)
     4b0:	e4420280 	swc1	$f2,640(v0)
     4b4:	e4420238 	swc1	$f2,568(v0)
     4b8:	e4420240 	swc1	$f2,576(v0)
     4bc:	ac8a014c 	sw	t2,332(a0)
     4c0:	0c000000 	jal	0 <EnRr_Init>
     4c4:	24053992 	li	a1,14738
     4c8:	8fbf0014 	lw	ra,20(sp)
     4cc:	27bd0018 	addiu	sp,sp,24
     4d0:	03e00008 	jr	ra
     4d4:	00000000 	nop

000004d8 <func_80AE8918>:
     4d8:	afa40000 	sw	a0,0(sp)
     4dc:	308400ff 	andi	a0,a0,0xff
     4e0:	afa50004 	sw	a1,4(sp)
     4e4:	24010001 	li	at,1
     4e8:	30a500ff 	andi	a1,a1,0xff
     4ec:	10810004 	beq	a0,at,500 <func_80AE8918+0x28>
     4f0:	00001825 	move	v1,zero
     4f4:	24010002 	li	at,2
     4f8:	54810003 	bnel	a0,at,508 <func_80AE8918+0x30>
     4fc:	24010002 	li	at,2
     500:	24030001 	li	v1,1
     504:	24010002 	li	at,2
     508:	10a10003 	beq	a1,at,518 <func_80AE8918+0x40>
     50c:	24010003 	li	at,3
     510:	14a10003 	bne	a1,at,520 <func_80AE8918+0x48>
     514:	00000000 	nop
     518:	34630002 	ori	v1,v1,0x2
     51c:	306300ff 	andi	v1,v1,0xff
     520:	03e00008 	jr	ra
     524:	00601025 	move	v0,v1

00000528 <func_80AE8968>:
     528:	27bdffd0 	addiu	sp,sp,-48
     52c:	afbf0024 	sw	ra,36(sp)
     530:	afb00020 	sw	s0,32(sp)
     534:	afa50034 	sw	a1,52(sp)
     538:	8caf1c44 	lw	t7,7236(a1)
     53c:	44802000 	mtc1	zero,$f4
     540:	2408006e 	li	t0,110
     544:	afaf002c 	sw	t7,44(sp)
     548:	8c980004 	lw	t8,4(a0)
     54c:	a4800378 	sh	zero,888(a0)
     550:	a48801f4 	sh	t0,500(a0)
     554:	37190001 	ori	t9,t8,0x1
     558:	ac990004 	sw	t9,4(a0)
     55c:	3c010000 	lui	at,0x0
     560:	e4840364 	swc1	$f4,868(a0)
     564:	c4260000 	lwc1	$f6,0(at)
     568:	3c014500 	lui	at,0x4500
     56c:	44814000 	mtc1	at,$f8
     570:	e48601fc 	swc1	$f6,508(a0)
     574:	3c090000 	lui	t1,0x0
     578:	e4880220 	swc1	$f8,544(a0)
     57c:	3c0a0000 	lui	t2,0x0
     580:	954a0002 	lhu	t2,2(t2)
     584:	95290070 	lhu	t1,112(t1)
     588:	3c0c0000 	lui	t4,0x0
     58c:	918c0001 	lbu	t4,1(t4)
     590:	012a5824 	and	t3,t1,t2
     594:	24010003 	li	at,3
     598:	018b6807 	srav	t5,t3,t4
     59c:	00808025 	move	s0,a0
     5a0:	00003025 	move	a2,zero
     5a4:	11a1000b 	beq	t5,at,5d4 <func_80AE8968+0xac>
     5a8:	00003825 	move	a3,zero
     5ac:	8fa40034 	lw	a0,52(sp)
     5b0:	24050001 	li	a1,1
     5b4:	0c000000 	jal	0 <EnRr_Init>
     5b8:	a3a0002a 	sb	zero,42(sp)
     5bc:	93a6002a 	lbu	a2,42(sp)
     5c0:	10400004 	beqz	v0,5d4 <func_80AE8968+0xac>
     5c4:	304700ff 	andi	a3,v0,0xff
     5c8:	240e0001 	li	t6,1
     5cc:	a2020372 	sb	v0,882(s0)
     5d0:	a20e0375 	sb	t6,885(s0)
     5d4:	3c0f0000 	lui	t7,0x0
     5d8:	3c180000 	lui	t8,0x0
     5dc:	97180004 	lhu	t8,4(t8)
     5e0:	95ef0070 	lhu	t7,112(t7)
     5e4:	3c080000 	lui	t0,0x0
     5e8:	91080002 	lbu	t0,2(t0)
     5ec:	01f8c824 	and	t9,t7,t8
     5f0:	24010001 	li	at,1
     5f4:	01194807 	srav	t1,t9,t0
     5f8:	1121000a 	beq	t1,at,624 <func_80AE8968+0xfc>
     5fc:	8fa40034 	lw	a0,52(sp)
     600:	24050002 	li	a1,2
     604:	0c000000 	jal	0 <EnRr_Init>
     608:	a3a7002b 	sb	a3,43(sp)
     60c:	93a7002b 	lbu	a3,43(sp)
     610:	10400004 	beqz	v0,624 <func_80AE8968+0xfc>
     614:	304600ff 	andi	a2,v0,0xff
     618:	240a0001 	li	t2,1
     61c:	a2020373 	sb	v0,883(s0)
     620:	a20a0375 	sb	t2,885(s0)
     624:	8fab002c 	lw	t3,44(sp)
     628:	30e400ff 	andi	a0,a3,0xff
     62c:	30c500ff 	andi	a1,a2,0xff
     630:	0c000000 	jal	0 <EnRr_Init>
     634:	ad600118 	sw	zero,280(t3)
     638:	24010001 	li	at,1
     63c:	10410009 	beq	v0,at,664 <func_80AE8968+0x13c>
     640:	8fa40034 	lw	a0,52(sp)
     644:	24010002 	li	at,2
     648:	1041000b 	beq	v0,at,678 <func_80AE8968+0x150>
     64c:	8fa40034 	lw	a0,52(sp)
     650:	24010003 	li	at,3
     654:	1041000d 	beq	v0,at,68c <func_80AE8968+0x164>
     658:	8fa40034 	lw	a0,52(sp)
     65c:	1000000e 	b	698 <func_80AE8968+0x170>
     660:	00000000 	nop
     664:	2405305f 	li	a1,12383
     668:	0c000000 	jal	0 <EnRr_Init>
     66c:	00003025 	move	a2,zero
     670:	10000009 	b	698 <func_80AE8968+0x170>
     674:	00000000 	nop
     678:	24053060 	li	a1,12384
     67c:	0c000000 	jal	0 <EnRr_Init>
     680:	00003025 	move	a2,zero
     684:	10000004 	b	698 <func_80AE8968+0x170>
     688:	00000000 	nop
     68c:	24053061 	li	a1,12385
     690:	0c000000 	jal	0 <EnRr_Init>
     694:	00003025 	move	a2,zero
     698:	3c040000 	lui	a0,0x0
     69c:	3c050000 	lui	a1,0x0
     6a0:	24a50000 	addiu	a1,a1,0
     6a4:	24840000 	addiu	a0,a0,0
     6a8:	0c000000 	jal	0 <EnRr_Init>
     6ac:	2406028a 	li	a2,650
     6b0:	3c014140 	lui	at,0x4140
     6b4:	44815000 	mtc1	at,$f10
     6b8:	860700b6 	lh	a3,182(s0)
     6bc:	240c0008 	li	t4,8
     6c0:	afac0014 	sw	t4,20(sp)
     6c4:	8fa40034 	lw	a0,52(sp)
     6c8:	02002825 	move	a1,s0
     6cc:	3c064080 	lui	a2,0x4080
     6d0:	0c000000 	jal	0 <EnRr_Init>
     6d4:	e7aa0010 	swc1	$f10,16(sp)
     6d8:	920d0114 	lbu	t5,276(s0)
     6dc:	3c0e0000 	lui	t6,0x0
     6e0:	25ce0000 	addiu	t6,t6,0
     6e4:	15a00006 	bnez	t5,700 <func_80AE8968+0x1d8>
     6e8:	02002025 	move	a0,s0
     6ec:	ae0e014c 	sw	t6,332(s0)
     6f0:	0c000000 	jal	0 <EnRr_Init>
     6f4:	24053994 	li	a1,14740
     6f8:	1000000b 	b	728 <func_80AE8968+0x200>
     6fc:	8fbf0024 	lw	ra,36(sp)
     700:	920f00af 	lbu	t7,175(s0)
     704:	11e00005 	beqz	t7,71c <func_80AE8968+0x1f4>
     708:	00000000 	nop
     70c:	0c000000 	jal	0 <EnRr_Init>
     710:	02002025 	move	a0,s0
     714:	10000004 	b	728 <func_80AE8968+0x200>
     718:	8fbf0024 	lw	ra,36(sp)
     71c:	0c000000 	jal	0 <EnRr_Init>
     720:	02002025 	move	a0,s0
     724:	8fbf0024 	lw	ra,36(sp)
     728:	8fb00020 	lw	s0,32(sp)
     72c:	27bd0030 	addiu	sp,sp,48
     730:	03e00008 	jr	ra
     734:	00000000 	nop

00000738 <func_80AE8B78>:
     738:	27bdffe8 	addiu	sp,sp,-24
     73c:	44800000 	mtc1	zero,$f0
     740:	afbf0014 	sw	ra,20(sp)
     744:	240e0014 	li	t6,20
     748:	a0800370 	sb	zero,880(a0)
     74c:	a48e01ea 	sh	t6,490(a0)
     750:	3c010000 	lui	at,0x0
     754:	e4800364 	swc1	$f0,868(a0)
     758:	c4240000 	lwc1	$f4,0(at)
     75c:	3c013f80 	lui	at,0x3f80
     760:	44811000 	mtc1	at,$f2
     764:	24030001 	li	v1,1
     768:	00037980 	sll	t7,v1,0x6
     76c:	008f1021 	addu	v0,a0,t7
     770:	e4800218 	swc1	$f0,536(a0)
     774:	e4800220 	swc1	$f0,544(a0)
     778:	e4800250 	swc1	$f0,592(a0)
     77c:	e4800258 	swc1	$f0,600(a0)
     780:	e4800228 	swc1	$f0,552(a0)
     784:	e48401fc 	swc1	$f4,508(a0)
     788:	e4820240 	swc1	$f2,576(a0)
     78c:	e4820238 	swc1	$f2,568(a0)
     790:	3c180000 	lui	t8,0x0
     794:	27180000 	addiu	t8,t8,0
     798:	e4400310 	swc1	$f0,784(v0)
     79c:	e4400318 	swc1	$f0,792(v0)
     7a0:	e44002e8 	swc1	$f0,744(v0)
     7a4:	e44002d0 	swc1	$f0,720(v0)
     7a8:	e44002d8 	swc1	$f0,728(v0)
     7ac:	e44002a8 	swc1	$f0,680(v0)
     7b0:	e4400290 	swc1	$f0,656(v0)
     7b4:	e4400298 	swc1	$f0,664(v0)
     7b8:	e4400268 	swc1	$f0,616(v0)
     7bc:	e4400228 	swc1	$f0,552(v0)
     7c0:	e4400250 	swc1	$f0,592(v0)
     7c4:	e4400258 	swc1	$f0,600(v0)
     7c8:	e44202f8 	swc1	$f2,760(v0)
     7cc:	e4420300 	swc1	$f2,768(v0)
     7d0:	e44202b8 	swc1	$f2,696(v0)
     7d4:	e44202c0 	swc1	$f2,704(v0)
     7d8:	e4420278 	swc1	$f2,632(v0)
     7dc:	e4420280 	swc1	$f2,640(v0)
     7e0:	e4420238 	swc1	$f2,568(v0)
     7e4:	e4420240 	swc1	$f2,576(v0)
     7e8:	ac98014c 	sw	t8,332(a0)
     7ec:	0c000000 	jal	0 <EnRr_Init>
     7f0:	24053995 	li	a1,14741
     7f4:	8fbf0014 	lw	ra,20(sp)
     7f8:	27bd0018 	addiu	sp,sp,24
     7fc:	03e00008 	jr	ra
     800:	00000000 	nop

00000804 <func_80AE8C44>:
     804:	44800000 	mtc1	zero,$f0
     808:	3c010000 	lui	at,0x0
     80c:	24020001 	li	v0,1
     810:	e4800364 	swc1	$f0,868(a0)
     814:	c4240000 	lwc1	$f4,0(at)
     818:	3c010000 	lui	at,0x0
     81c:	00027180 	sll	t6,v0,0x6
     820:	e4840218 	swc1	$f4,536(a0)
     824:	c4260000 	lwc1	$f6,0(at)
     828:	3c014500 	lui	at,0x4500
     82c:	44814000 	mtc1	at,$f8
     830:	3c013f80 	lui	at,0x3f80
     834:	44811000 	mtc1	at,$f2
     838:	008e1821 	addu	v1,a0,t6
     83c:	e4800250 	swc1	$f0,592(a0)
     840:	e4800258 	swc1	$f0,600(a0)
     844:	e4800228 	swc1	$f0,552(a0)
     848:	e48601fc 	swc1	$f6,508(a0)
     84c:	e4880220 	swc1	$f8,544(a0)
     850:	e4820240 	swc1	$f2,576(a0)
     854:	e4820238 	swc1	$f2,568(a0)
     858:	3c0f0000 	lui	t7,0x0
     85c:	25ef0000 	addiu	t7,t7,0
     860:	e4600310 	swc1	$f0,784(v1)
     864:	e4600318 	swc1	$f0,792(v1)
     868:	e46002e8 	swc1	$f0,744(v1)
     86c:	e46002d0 	swc1	$f0,720(v1)
     870:	e46002d8 	swc1	$f0,728(v1)
     874:	e46002a8 	swc1	$f0,680(v1)
     878:	e4600290 	swc1	$f0,656(v1)
     87c:	e4600298 	swc1	$f0,664(v1)
     880:	e4600268 	swc1	$f0,616(v1)
     884:	e4600228 	swc1	$f0,552(v1)
     888:	e4600250 	swc1	$f0,592(v1)
     88c:	e4600258 	swc1	$f0,600(v1)
     890:	e46202f8 	swc1	$f2,760(v1)
     894:	e4620300 	swc1	$f2,768(v1)
     898:	e46202b8 	swc1	$f2,696(v1)
     89c:	e46202c0 	swc1	$f2,704(v1)
     8a0:	e4620278 	swc1	$f2,632(v1)
     8a4:	e4620280 	swc1	$f2,640(v1)
     8a8:	e4620238 	swc1	$f2,568(v1)
     8ac:	e4620240 	swc1	$f2,576(v1)
     8b0:	03e00008 	jr	ra
     8b4:	ac8f014c 	sw	t7,332(a0)

000008b8 <func_80AE8CF8>:
     8b8:	27bdffe8 	addiu	sp,sp,-24
     8bc:	44800000 	mtc1	zero,$f0
     8c0:	afbf0014 	sw	ra,20(sp)
     8c4:	24030001 	li	v1,1
     8c8:	240e0001 	li	t6,1
     8cc:	00037980 	sll	t7,v1,0x6
     8d0:	a08e0371 	sb	t6,881(a0)
     8d4:	a48001e8 	sh	zero,488(a0)
     8d8:	008f1021 	addu	v0,a0,t7
     8dc:	e4800368 	swc1	$f0,872(a0)
     8e0:	e4800364 	swc1	$f0,868(a0)
     8e4:	e4800250 	swc1	$f0,592(a0)
     8e8:	e4800258 	swc1	$f0,600(a0)
     8ec:	e4800228 	swc1	$f0,552(a0)
     8f0:	3c180000 	lui	t8,0x0
     8f4:	27180000 	addiu	t8,t8,0
     8f8:	e4400310 	swc1	$f0,784(v0)
     8fc:	e4400318 	swc1	$f0,792(v0)
     900:	e44002e8 	swc1	$f0,744(v0)
     904:	e44002d0 	swc1	$f0,720(v0)
     908:	e44002d8 	swc1	$f0,728(v0)
     90c:	e44002a8 	swc1	$f0,680(v0)
     910:	e4400290 	swc1	$f0,656(v0)
     914:	e4400298 	swc1	$f0,664(v0)
     918:	e4400268 	swc1	$f0,616(v0)
     91c:	e4400228 	swc1	$f0,552(v0)
     920:	e4400250 	swc1	$f0,592(v0)
     924:	e4400258 	swc1	$f0,600(v0)
     928:	ac98014c 	sw	t8,332(a0)
     92c:	afa40018 	sw	a0,24(sp)
     930:	0c000000 	jal	0 <EnRr_Init>
     934:	24053996 	li	a1,14742
     938:	8fa40018 	lw	a0,24(sp)
     93c:	2401fffe 	li	at,-2
     940:	8c990004 	lw	t9,4(a0)
     944:	03214024 	and	t0,t9,at
     948:	ac880004 	sw	t0,4(a0)
     94c:	8fbf0014 	lw	ra,20(sp)
     950:	27bd0018 	addiu	sp,sp,24
     954:	03e00008 	jr	ra
     958:	00000000 	nop

0000095c <func_80AE8D9C>:
     95c:	44801000 	mtc1	zero,$f2
     960:	3c013f80 	lui	at,0x3f80
     964:	44816000 	mtc1	at,$f12
     968:	240e0001 	li	t6,1
     96c:	a08e0376 	sb	t6,886(a0)
     970:	a48001f6 	sh	zero,502(a0)
     974:	3c010000 	lui	at,0x0
     978:	e48201f8 	swc1	$f2,504(a0)
     97c:	c4240000 	lwc1	$f4,0(at)
     980:	3c014040 	lui	at,0x4040
     984:	44813000 	mtc1	at,$f6
     988:	3c010000 	lui	at,0x0
     98c:	e4820200 	swc1	$f2,512(a0)
     990:	e4820204 	swc1	$f2,516(a0)
     994:	e482020c 	swc1	$f2,524(a0)
     998:	e4820214 	swc1	$f2,532(a0)
     99c:	e48c0210 	swc1	$f12,528(a0)
     9a0:	e48401fc 	swc1	$f4,508(a0)
     9a4:	e4860208 	swc1	$f6,520(a0)
     9a8:	c4280000 	lwc1	$f8,0(at)
     9ac:	3c014500 	lui	at,0x4500
     9b0:	44815000 	mtc1	at,$f10
     9b4:	46006006 	mov.s	$f0,$f12
     9b8:	e480022c 	swc1	$f0,556(a0)
     9bc:	24020001 	li	v0,1
     9c0:	24830040 	addiu	v1,a0,64
     9c4:	24050005 	li	a1,5
     9c8:	e482021c 	swc1	$f2,540(a0)
     9cc:	e4820258 	swc1	$f2,600(a0)
     9d0:	e4820254 	swc1	$f2,596(a0)
     9d4:	e4820250 	swc1	$f2,592(a0)
     9d8:	e4820248 	swc1	$f2,584(a0)
     9dc:	e48c0230 	swc1	$f12,560(a0)
     9e0:	e48c0234 	swc1	$f12,564(a0)
     9e4:	e48c0238 	swc1	$f12,568(a0)
     9e8:	e48c023c 	swc1	$f12,572(a0)
     9ec:	e48c0240 	swc1	$f12,576(a0)
     9f0:	e4880218 	swc1	$f8,536(a0)
     9f4:	e48a0220 	swc1	$f10,544(a0)
     9f8:	24420002 	addiu	v0,v0,2
     9fc:	e4620288 	swc1	$f2,648(v1)
     a00:	e4620290 	swc1	$f2,656(v1)
     a04:	e4620294 	swc1	$f2,660(v1)
     a08:	e4620298 	swc1	$f2,664(v1)
     a0c:	e46c0280 	swc1	$f12,640(v1)
     a10:	e46c027c 	swc1	$f12,636(v1)
     a14:	e46c0278 	swc1	$f12,632(v1)
     a18:	e46c0274 	swc1	$f12,628(v1)
     a1c:	e46c0270 	swc1	$f12,624(v1)
     a20:	e460026c 	swc1	$f0,620(v1)
     a24:	24630080 	addiu	v1,v1,128
     a28:	e46201c8 	swc1	$f2,456(v1)
     a2c:	e46201d0 	swc1	$f2,464(v1)
     a30:	e46201d4 	swc1	$f2,468(v1)
     a34:	e46201d8 	swc1	$f2,472(v1)
     a38:	e46c01c0 	swc1	$f12,448(v1)
     a3c:	e46c01bc 	swc1	$f12,444(v1)
     a40:	e46c01b8 	swc1	$f12,440(v1)
     a44:	e46c01b4 	swc1	$f12,436(v1)
     a48:	e46c01b0 	swc1	$f12,432(v1)
     a4c:	1445ffea 	bne	v0,a1,9f8 <func_80AE8D9C+0x9c>
     a50:	e46001ac 	swc1	$f0,428(v1)
     a54:	3c0f0000 	lui	t7,0x0
     a58:	25ef0000 	addiu	t7,t7,0
     a5c:	03e00008 	jr	ra
     a60:	ac8f014c 	sw	t7,332(a0)

00000a64 <func_80AE8EA4>:
     a64:	27bdffb8 	addiu	sp,sp,-72
     a68:	afbf0024 	sw	ra,36(sp)
     a6c:	afb00020 	sw	s0,32(sp)
     a70:	afa5004c 	sw	a1,76(sp)
     a74:	908201ad 	lbu	v0,429(a0)
     a78:	00808025 	move	s0,a0
     a7c:	8ca71c44 	lw	a3,7236(a1)
     a80:	304f0002 	andi	t7,v0,0x2
     a84:	11e0001a 	beqz	t7,af0 <func_80AE8EA4+0x8c>
     a88:	3058fffd 	andi	t8,v0,0xfffd
     a8c:	a09801ad 	sb	t8,429(a0)
     a90:	3c040000 	lui	a0,0x0
     a94:	24840000 	addiu	a0,a0,0
     a98:	0c000000 	jal	0 <EnRr_Init>
     a9c:	860501e8 	lh	a1,488(s0)
     aa0:	861901c2 	lh	t9,450(s0)
     aa4:	8fa4004c 	lw	a0,76(sp)
     aa8:	27a5003c 	addiu	a1,sp,60
     aac:	44992000 	mtc1	t9,$f4
     ab0:	00000000 	nop
     ab4:	468021a0 	cvt.s.w	$f6,$f4
     ab8:	e7a6003c 	swc1	$f6,60(sp)
     abc:	860801c4 	lh	t0,452(s0)
     ac0:	44884000 	mtc1	t0,$f8
     ac4:	00000000 	nop
     ac8:	468042a0 	cvt.s.w	$f10,$f8
     acc:	e7aa0040 	swc1	$f10,64(sp)
     ad0:	860901c6 	lh	t1,454(s0)
     ad4:	44898000 	mtc1	t1,$f16
     ad8:	00000000 	nop
     adc:	468084a0 	cvt.s.w	$f18,$f16
     ae0:	0c000000 	jal	0 <EnRr_Init>
     ae4:	e7b20044 	swc1	$f18,68(sp)
     ae8:	100000cc 	b	e1c <L80AE91A8+0xb4>
     aec:	8fbf0024 	lw	ra,36(sp)
     af0:	92040161 	lbu	a0,353(s0)
     af4:	308a0002 	andi	t2,a0,0x2
     af8:	5140009c 	beqzl	t2,d6c <L80AE91A8+0x4>
     afc:	860b01f4 	lh	t3,500(s0)
     b00:	920200b1 	lbu	v0,177(s0)
     b04:	308bfffd 	andi	t3,a0,0xfffd
     b08:	00001825 	move	v1,zero
     b0c:	10400018 	beqz	v0,b70 <func_80AE8EA4+0x10c>
     b10:	a20b0161 	sb	t3,353(s0)
     b14:	860c0176 	lh	t4,374(s0)
     b18:	8fa4004c 	lw	a0,76(sp)
     b1c:	00002825 	move	a1,zero
     b20:	448c2000 	mtc1	t4,$f4
     b24:	27a6003c 	addiu	a2,sp,60
     b28:	468021a0 	cvt.s.w	$f6,$f4
     b2c:	e7a6003c 	swc1	$f6,60(sp)
     b30:	860d0178 	lh	t5,376(s0)
     b34:	448d4000 	mtc1	t5,$f8
     b38:	00000000 	nop
     b3c:	468042a0 	cvt.s.w	$f10,$f8
     b40:	e7aa0040 	swc1	$f10,64(sp)
     b44:	860e017a 	lh	t6,378(s0)
     b48:	afa70038 	sw	a3,56(sp)
     b4c:	a3a00037 	sb	zero,55(sp)
     b50:	448e8000 	mtc1	t6,$f16
     b54:	00000000 	nop
     b58:	468084a0 	cvt.s.w	$f18,$f16
     b5c:	0c000000 	jal	0 <EnRr_Init>
     b60:	e7b20044 	swc1	$f18,68(sp)
     b64:	93a30037 	lbu	v1,55(sp)
     b68:	8fa70038 	lw	a3,56(sp)
     b6c:	920200b1 	lbu	v0,177(s0)
     b70:	244fffff 	addiu	t7,v0,-1
     b74:	2de1000f 	sltiu	at,t7,15
     b78:	1020007b 	beqz	at,d68 <L80AE91A8>
     b7c:	000f7880 	sll	t7,t7,0x2
     b80:	3c010000 	lui	at,0x0
     b84:	002f0821 	addu	at,at,t7
     b88:	8c2f0000 	lw	t7,0(at)
     b8c:	01e00008 	jr	t7
     b90:	00000000 	nop

00000b94 <L80AE8FD4>:
     b94:	24030001 	li	v1,1

00000b98 <L80AE8FD8>:
     b98:	24630001 	addiu	v1,v1,1
     b9c:	306300ff 	andi	v1,v1,0xff

00000ba0 <L80AE8FE0>:
     ba0:	24630001 	addiu	v1,v1,1
     ba4:	306300ff 	andi	v1,v1,0xff

00000ba8 <L80AE8FE8>:
     ba8:	24630001 	addiu	v1,v1,1
     bac:	306300ff 	andi	v1,v1,0xff

00000bb0 <L80AE8FF0>:
     bb0:	3c040000 	lui	a0,0x0
     bb4:	860501e8 	lh	a1,488(s0)
     bb8:	920600af 	lbu	a2,175(s0)
     bbc:	920700b0 	lbu	a3,176(s0)
     bc0:	a3a30037 	sb	v1,55(sp)
     bc4:	afa20010 	sw	v0,16(sp)
     bc8:	0c000000 	jal	0 <EnRr_Init>
     bcc:	24840000 	addiu	a0,a0,0
     bd0:	a2000376 	sb	zero,886(s0)
     bd4:	0c000000 	jal	0 <EnRr_Init>
     bd8:	02002025 	move	a0,s0
     bdc:	24180028 	li	t8,40
     be0:	a61801f0 	sh	t8,496(s0)
     be4:	861901f0 	lh	t9,496(s0)
     be8:	02002025 	move	a0,s0
     bec:	24054000 	li	a1,16384
     bf0:	240600ff 	li	a2,255
     bf4:	24072000 	li	a3,8192
     bf8:	0c000000 	jal	0 <EnRr_Init>
     bfc:	afb90010 	sw	t9,16(sp)
     c00:	86080378 	lh	t0,888(s0)
     c04:	93a30037 	lbu	v1,55(sp)
     c08:	02002025 	move	a0,s0
     c0c:	51000006 	beqzl	t0,c28 <L80AE8FF0+0x78>
     c10:	920900af 	lbu	t1,175(s0)
     c14:	0c000000 	jal	0 <EnRr_Init>
     c18:	8fa5004c 	lw	a1,76(sp)
     c1c:	1000007f 	b	e1c <L80AE91A8+0xb4>
     c20:	8fbf0024 	lw	ra,36(sp)
     c24:	920900af 	lbu	t1,175(s0)
     c28:	02002025 	move	a0,s0
     c2c:	11200005 	beqz	t1,c44 <L80AE8FF0+0x94>
     c30:	00000000 	nop
     c34:	0c000000 	jal	0 <EnRr_Init>
     c38:	02002025 	move	a0,s0
     c3c:	10000077 	b	e1c <L80AE91A8+0xb4>
     c40:	8fbf0024 	lw	ra,36(sp)
     c44:	0c000000 	jal	0 <EnRr_Init>
     c48:	a2030374 	sb	v1,884(s0)
     c4c:	10000073 	b	e1c <L80AE91A8+0xb4>
     c50:	8fbf0024 	lw	ra,36(sp)

00000c54 <L80AE9094>:
     c54:	0c000000 	jal	0 <EnRr_Init>
     c58:	02002025 	move	a0,s0
     c5c:	920a00af 	lbu	t2,175(s0)
     c60:	02002025 	move	a0,s0
     c64:	24054000 	li	a1,16384
     c68:	15400002 	bnez	t2,c74 <L80AE9094+0x20>
     c6c:	240600ff 	li	a2,255
     c70:	a2000374 	sb	zero,884(s0)
     c74:	240b0050 	li	t3,80
     c78:	afab0010 	sw	t3,16(sp)
     c7c:	0c000000 	jal	0 <EnRr_Init>
     c80:	24072000 	li	a3,8192
     c84:	240c0014 	li	t4,20
     c88:	a60c01f2 	sh	t4,498(s0)
     c8c:	0c000000 	jal	0 <EnRr_Init>
     c90:	02002025 	move	a0,s0
     c94:	10000061 	b	e1c <L80AE91A8+0xb4>
     c98:	8fbf0024 	lw	ra,36(sp)

00000c9c <L80AE90DC>:
     c9c:	0c000000 	jal	0 <EnRr_Init>
     ca0:	02002025 	move	a0,s0
     ca4:	920d00af 	lbu	t5,175(s0)
     ca8:	240f0014 	li	t7,20
     cac:	02002025 	move	a0,s0
     cb0:	15a00002 	bnez	t5,cbc <L80AE90DC+0x20>
     cb4:	00002825 	move	a1,zero
     cb8:	a2000374 	sb	zero,884(s0)
     cbc:	920e0114 	lbu	t6,276(s0)
     cc0:	240600ff 	li	a2,255
     cc4:	24072000 	li	a3,8192
     cc8:	15c00004 	bnez	t6,cdc <L80AE90DC+0x40>
     ccc:	24180050 	li	t8,80
     cd0:	a60f01f2 	sh	t7,498(s0)
     cd4:	0c000000 	jal	0 <EnRr_Init>
     cd8:	afb80010 	sw	t8,16(sp)
     cdc:	0c000000 	jal	0 <EnRr_Init>
     ce0:	02002025 	move	a0,s0
     ce4:	1000004d 	b	e1c <L80AE91A8+0xb4>
     ce8:	8fbf0024 	lw	ra,36(sp)

00000cec <L80AE912C>:
     cec:	0c000000 	jal	0 <EnRr_Init>
     cf0:	02002025 	move	a0,s0
     cf4:	921900af 	lbu	t9,175(s0)
     cf8:	02002025 	move	a0,s0
     cfc:	24058000 	li	a1,-32768
     d00:	17200003 	bnez	t9,d10 <L80AE912C+0x24>
     d04:	240600ff 	li	a2,255
     d08:	24080005 	li	t0,5
     d0c:	a2080374 	sb	t0,884(s0)
     d10:	24090050 	li	t1,80
     d14:	afa90010 	sw	t1,16(sp)
     d18:	0c000000 	jal	0 <EnRr_Init>
     d1c:	24072000 	li	a3,8192
     d20:	0c000000 	jal	0 <EnRr_Init>
     d24:	02002025 	move	a0,s0
     d28:	1000003c 	b	e1c <L80AE91A8+0xb4>
     d2c:	8fbf0024 	lw	ra,36(sp)

00000d30 <L80AE9170>:
     d30:	02002025 	move	a0,s0
     d34:	0c000000 	jal	0 <EnRr_Init>
     d38:	2405389e 	li	a1,14494
     d3c:	240a0050 	li	t2,80
     d40:	afaa0010 	sw	t2,16(sp)
     d44:	02002025 	move	a0,s0
     d48:	00002825 	move	a1,zero
     d4c:	240600ff 	li	a2,255
     d50:	0c000000 	jal	0 <EnRr_Init>
     d54:	24072000 	li	a3,8192
     d58:	0c000000 	jal	0 <EnRr_Init>
     d5c:	02002025 	move	a0,s0
     d60:	1000002e 	b	e1c <L80AE91A8+0xb4>
     d64:	8fbf0024 	lw	ra,36(sp)

00000d68 <L80AE91A8>:
     d68:	860b01f4 	lh	t3,500(s0)
     d6c:	5560002b 	bnezl	t3,e1c <L80AE91A8+0xb4>
     d70:	8fbf0024 	lw	ra,36(sp)
     d74:	920c0114 	lbu	t4,276(s0)
     d78:	55800028 	bnezl	t4,e1c <L80AE91A8+0xb4>
     d7c:	8fbf0024 	lw	ra,36(sp)
     d80:	80ed0a78 	lb	t5,2680(a3)
     d84:	55a00025 	bnezl	t5,e1c <L80AE91A8+0xb4>
     d88:	8fbf0024 	lw	ra,36(sp)
     d8c:	8cee0680 	lw	t6,1664(a3)
     d90:	31cf0080 	andi	t7,t6,0x80
     d94:	55e00021 	bnezl	t7,e1c <L80AE91A8+0xb4>
     d98:	8fbf0024 	lw	ra,36(sp)
     d9c:	92020162 	lbu	v0,354(s0)
     da0:	3c040000 	lui	a0,0x0
     da4:	24840000 	addiu	a0,a0,0
     da8:	30580002 	andi	t8,v0,0x2
     dac:	17000005 	bnez	t8,dc4 <L80AE91A8+0x5c>
     db0:	3049fffd 	andi	t1,v0,0xfffd
     db4:	921901ae 	lbu	t9,430(s0)
     db8:	33280002 	andi	t0,t9,0x2
     dbc:	51000017 	beqzl	t0,e1c <L80AE91A8+0xb4>
     dc0:	8fbf0024 	lw	ra,36(sp)
     dc4:	920a01ae 	lbu	t2,430(s0)
     dc8:	a2090162 	sb	t1,354(s0)
     dcc:	860501e8 	lh	a1,488(s0)
     dd0:	314bfffd 	andi	t3,t2,0xfffd
     dd4:	a20b01ae 	sb	t3,430(s0)
     dd8:	0c000000 	jal	0 <EnRr_Init>
     ddc:	afa70038 	sw	a3,56(sp)
     de0:	8fa4004c 	lw	a0,76(sp)
     de4:	3c190001 	lui	t9,0x1
     de8:	8fa50038 	lw	a1,56(sp)
     dec:	0324c821 	addu	t9,t9,a0
     df0:	8f391d4c 	lw	t9,7500(t9)
     df4:	0320f809 	jalr	t9
     df8:	00000000 	nop
     dfc:	10400006 	beqz	v0,e18 <L80AE91A8+0xb0>
     e00:	8fa70038 	lw	a3,56(sp)
     e04:	acf00118 	sw	s0,280(a3)
     e08:	a2000376 	sb	zero,886(s0)
     e0c:	02002025 	move	a0,s0
     e10:	0c000000 	jal	0 <EnRr_Init>
     e14:	00e02825 	move	a1,a3
     e18:	8fbf0024 	lw	ra,36(sp)
     e1c:	8fb00020 	lw	s0,32(sp)
     e20:	27bd0048 	addiu	sp,sp,72
     e24:	03e00008 	jr	ra
     e28:	00000000 	nop

00000e2c <func_80AE926C>:
     e2c:	27bdffd8 	addiu	sp,sp,-40
     e30:	44801000 	mtc1	zero,$f2
     e34:	afbf0024 	sw	ra,36(sp)
     e38:	afb30020 	sw	s3,32(sp)
     e3c:	afb2001c 	sw	s2,28(sp)
     e40:	afb10018 	sw	s1,24(sp)
     e44:	afb00014 	sw	s0,20(sp)
     e48:	afa5002c 	sw	a1,44(sp)
     e4c:	3c013f80 	lui	at,0x3f80
     e50:	44810000 	mtc1	at,$f0
     e54:	a48001f6 	sh	zero,502(a0)
     e58:	3c010000 	lui	at,0x0
     e5c:	e48201f8 	swc1	$f2,504(a0)
     e60:	c4240000 	lwc1	$f4,0(at)
     e64:	3c014040 	lui	at,0x4040
     e68:	44813000 	mtc1	at,$f6
     e6c:	3c010000 	lui	at,0x0
     e70:	e4820200 	swc1	$f2,512(a0)
     e74:	e4820204 	swc1	$f2,516(a0)
     e78:	e482020c 	swc1	$f2,524(a0)
     e7c:	e4820214 	swc1	$f2,532(a0)
     e80:	e4800210 	swc1	$f0,528(a0)
     e84:	e48401fc 	swc1	$f4,508(a0)
     e88:	e4860208 	swc1	$f6,520(a0)
     e8c:	c4280000 	lwc1	$f8,0(at)
     e90:	3c014500 	lui	at,0x4500
     e94:	44815000 	mtc1	at,$f10
     e98:	00809025 	move	s2,a0
     e9c:	00808025 	move	s0,a0
     ea0:	00008825 	move	s1,zero
     ea4:	e482021c 	swc1	$f2,540(a0)
     ea8:	e4880218 	swc1	$f8,536(a0)
     eac:	e48a0220 	swc1	$f10,544(a0)
     eb0:	26310001 	addiu	s1,s1,1
     eb4:	2a210005 	slti	at,s1,5
     eb8:	26100040 	addiu	s0,s0,64
     ebc:	e6020208 	swc1	$f2,520(s0)
     ec0:	e6020210 	swc1	$f2,528(s0)
     ec4:	e6020214 	swc1	$f2,532(s0)
     ec8:	e6020218 	swc1	$f2,536(s0)
     ecc:	e6000200 	swc1	$f0,512(s0)
     ed0:	e60001fc 	swc1	$f0,508(s0)
     ed4:	e60001f8 	swc1	$f0,504(s0)
     ed8:	e60001f4 	swc1	$f0,500(s0)
     edc:	e60001f0 	swc1	$f0,496(s0)
     ee0:	1420fff3 	bnez	at,eb0 <func_80AE926C+0x84>
     ee4:	e60001ec 	swc1	$f0,492(s0)
     ee8:	00008825 	move	s1,zero
     eec:	02408025 	move	s0,s2
     ef0:	c6500200 	lwc1	$f16,512(s2)
     ef4:	4600848d 	trunc.w.s	$f18,$f16
     ef8:	440f9000 	mfc1	t7,$f18
     efc:	00000000 	nop
     f00:	000fc400 	sll	t8,t7,0x10
     f04:	0018cc03 	sra	t9,t8,0x10
     f08:	02390019 	multu	s1,t9
     f0c:	00002012 	mflo	a0
     f10:	00042300 	sll	a0,a0,0xc
     f14:	00042400 	sll	a0,a0,0x10
     f18:	0c000000 	jal	0 <EnRr_Init>
     f1c:	00042403 	sra	a0,a0,0x10
     f20:	c6440214 	lwc1	$f4,532(s2)
     f24:	26310001 	addiu	s1,s1,1
     f28:	2a210005 	slti	at,s1,5
     f2c:	46040082 	mul.s	$f2,$f0,$f4
     f30:	26100040 	addiu	s0,s0,64
     f34:	e602020c 	swc1	$f2,524(s0)
     f38:	1420ffed 	bnez	at,ef0 <func_80AE926C+0xc4>
     f3c:	e6020204 	swc1	$f2,516(s0)
     f40:	24110001 	li	s1,1
     f44:	26500040 	addiu	s0,s2,64
     f48:	24130005 	li	s3,5
     f4c:	c6460204 	lwc1	$f6,516(s2)
     f50:	4600320d 	trunc.w.s	$f8,$f6
     f54:	44094000 	mfc1	t1,$f8
     f58:	00000000 	nop
     f5c:	00095400 	sll	t2,t1,0x10
     f60:	000a5c03 	sra	t3,t2,0x10
     f64:	022b0019 	multu	s1,t3
     f68:	00002012 	mflo	a0
     f6c:	00042300 	sll	a0,a0,0xc
     f70:	00042400 	sll	a0,a0,0x10
     f74:	0c000000 	jal	0 <EnRr_Init>
     f78:	00042403 	sra	a0,a0,0x10
     f7c:	c64a021c 	lwc1	$f10,540(s2)
     f80:	460a0402 	mul.s	$f16,$f0,$f10
     f84:	e6100250 	swc1	$f16,592(s0)
     f88:	c652020c 	lwc1	$f18,524(s2)
     f8c:	4600910d 	trunc.w.s	$f4,$f18
     f90:	440d2000 	mfc1	t5,$f4
     f94:	00000000 	nop
     f98:	000d7400 	sll	t6,t5,0x10
     f9c:	000e7c03 	sra	t7,t6,0x10
     fa0:	022f0019 	multu	s1,t7
     fa4:	00002012 	mflo	a0
     fa8:	00042300 	sll	a0,a0,0xc
     fac:	00042400 	sll	a0,a0,0x10
     fb0:	0c000000 	jal	0 <EnRr_Init>
     fb4:	00042403 	sra	a0,a0,0x10
     fb8:	c646021c 	lwc1	$f6,540(s2)
     fbc:	26310001 	addiu	s1,s1,1
     fc0:	26100040 	addiu	s0,s0,64
     fc4:	46060202 	mul.s	$f8,$f0,$f6
     fc8:	1633ffe0 	bne	s1,s3,f4c <func_80AE926C+0x120>
     fcc:	e6080218 	swc1	$f8,536(s0)
     fd0:	8fbf0024 	lw	ra,36(sp)
     fd4:	8fb00014 	lw	s0,20(sp)
     fd8:	8fb10018 	lw	s1,24(sp)
     fdc:	8fb2001c 	lw	s2,28(sp)
     fe0:	8fb30020 	lw	s3,32(sp)
     fe4:	03e00008 	jr	ra
     fe8:	27bd0028 	addiu	sp,sp,40

00000fec <func_80AE942C>:
     fec:	27bdffd0 	addiu	sp,sp,-48
     ff0:	afbf002c 	sw	ra,44(sp)
     ff4:	afb40028 	sw	s4,40(sp)
     ff8:	afb30024 	sw	s3,36(sp)
     ffc:	afb20020 	sw	s2,32(sp)
    1000:	afb1001c 	sw	s1,28(sp)
    1004:	afb00018 	sw	s0,24(sp)
    1008:	afa50034 	sw	a1,52(sp)
    100c:	908e0371 	lbu	t6,881(a0)
    1010:	00809025 	move	s2,a0
    1014:	849301f6 	lh	s3,502(a0)
    1018:	15c00043 	bnez	t6,1128 <func_80AE942C+0x13c>
    101c:	00008025 	move	s0,zero
    1020:	00808825 	move	s1,a0
    1024:	c6440200 	lwc1	$f4,512(s2)
    1028:	4600218d 	trunc.w.s	$f6,$f4
    102c:	44183000 	mfc1	t8,$f6
    1030:	00000000 	nop
    1034:	0018cc00 	sll	t9,t8,0x10
    1038:	00194403 	sra	t0,t9,0x10
    103c:	02080019 	multu	s0,t0
    1040:	00004812 	mflo	t1
    1044:	00095300 	sll	t2,t1,0xc
    1048:	026a2021 	addu	a0,s3,t2
    104c:	00042400 	sll	a0,a0,0x10
    1050:	0c000000 	jal	0 <EnRr_Init>
    1054:	00042403 	sra	a0,a0,0x10
    1058:	c6480214 	lwc1	$f8,532(s2)
    105c:	26100001 	addiu	s0,s0,1
    1060:	2a010005 	slti	at,s0,5
    1064:	46080082 	mul.s	$f2,$f0,$f8
    1068:	26310040 	addiu	s1,s1,64
    106c:	e622020c 	swc1	$f2,524(s1)
    1070:	1420ffec 	bnez	at,1024 <func_80AE942C+0x38>
    1074:	e6220204 	swc1	$f2,516(s1)
    1078:	924b0371 	lbu	t3,881(s2)
    107c:	865301f6 	lh	s3,502(s2)
    1080:	5560002a 	bnezl	t3,112c <func_80AE942C+0x140>
    1084:	924f0376 	lbu	t7,886(s2)
    1088:	924c0370 	lbu	t4,880(s2)
    108c:	24100001 	li	s0,1
    1090:	26510040 	addiu	s1,s2,64
    1094:	15800024 	bnez	t4,1128 <func_80AE942C+0x13c>
    1098:	24140005 	li	s4,5
    109c:	c64a0204 	lwc1	$f10,516(s2)
    10a0:	4600540d 	trunc.w.s	$f16,$f10
    10a4:	440e8000 	mfc1	t6,$f16
    10a8:	00000000 	nop
    10ac:	000e7c00 	sll	t7,t6,0x10
    10b0:	000fc403 	sra	t8,t7,0x10
    10b4:	02180019 	multu	s0,t8
    10b8:	0000c812 	mflo	t9
    10bc:	00194300 	sll	t0,t9,0xc
    10c0:	02682021 	addu	a0,s3,t0
    10c4:	00042400 	sll	a0,a0,0x10
    10c8:	0c000000 	jal	0 <EnRr_Init>
    10cc:	00042403 	sra	a0,a0,0x10
    10d0:	c652021c 	lwc1	$f18,540(s2)
    10d4:	46120102 	mul.s	$f4,$f0,$f18
    10d8:	e6240250 	swc1	$f4,592(s1)
    10dc:	c646020c 	lwc1	$f6,524(s2)
    10e0:	4600320d 	trunc.w.s	$f8,$f6
    10e4:	440a4000 	mfc1	t2,$f8
    10e8:	00000000 	nop
    10ec:	000a5c00 	sll	t3,t2,0x10
    10f0:	000b6403 	sra	t4,t3,0x10
    10f4:	020c0019 	multu	s0,t4
    10f8:	00006812 	mflo	t5
    10fc:	000d7300 	sll	t6,t5,0xc
    1100:	026e2021 	addu	a0,s3,t6
    1104:	00042400 	sll	a0,a0,0x10
    1108:	0c000000 	jal	0 <EnRr_Init>
    110c:	00042403 	sra	a0,a0,0x10
    1110:	c64a021c 	lwc1	$f10,540(s2)
    1114:	26100001 	addiu	s0,s0,1
    1118:	26310040 	addiu	s1,s1,64
    111c:	460a0402 	mul.s	$f16,$f0,$f10
    1120:	1614ffde 	bne	s0,s4,109c <func_80AE942C+0xb0>
    1124:	e6300218 	swc1	$f16,536(s1)
    1128:	924f0376 	lbu	t7,886(s2)
    112c:	55e00009 	bnezl	t7,1154 <func_80AE942C+0x168>
    1130:	8fbf002c 	lw	ra,44(sp)
    1134:	c65201f8 	lwc1	$f18,504(s2)
    1138:	865801f6 	lh	t8,502(s2)
    113c:	4600910d 	trunc.w.s	$f4,$f18
    1140:	440a2000 	mfc1	t2,$f4
    1144:	00000000 	nop
    1148:	030a5821 	addu	t3,t8,t2
    114c:	a64b01f6 	sh	t3,502(s2)
    1150:	8fbf002c 	lw	ra,44(sp)
    1154:	8fb00018 	lw	s0,24(sp)
    1158:	8fb1001c 	lw	s1,28(sp)
    115c:	8fb20020 	lw	s2,32(sp)
    1160:	8fb30024 	lw	s3,36(sp)
    1164:	8fb40028 	lw	s4,40(sp)
    1168:	03e00008 	jr	ra
    116c:	27bd0030 	addiu	sp,sp,48

00001170 <func_80AE95B0>:
    1170:	27bdffd8 	addiu	sp,sp,-40
    1174:	afb00020 	sw	s0,32(sp)
    1178:	00808025 	move	s0,a0
    117c:	afbf0024 	sw	ra,36(sp)
    1180:	afa5002c 	sw	a1,44(sp)
    1184:	8605008a 	lh	a1,138(s0)
    1188:	afa00010 	sw	zero,16(sp)
    118c:	248400b6 	addiu	a0,a0,182
    1190:	2406000a 	li	a2,10
    1194:	0c000000 	jal	0 <EnRr_Init>
    1198:	240701f4 	li	a3,500
    119c:	860f01ea 	lh	t7,490(s0)
    11a0:	860e00b6 	lh	t6,182(s0)
    11a4:	3c014320 	lui	at,0x4320
    11a8:	15e0000c 	bnez	t7,11dc <func_80AE95B0+0x6c>
    11ac:	a60e0032 	sh	t6,50(s0)
    11b0:	c6040090 	lwc1	$f4,144(s0)
    11b4:	44813000 	mtc1	at,$f6
    11b8:	00000000 	nop
    11bc:	4606203c 	c.lt.s	$f4,$f6
    11c0:	00000000 	nop
    11c4:	45020006 	bc1fl	11e0 <func_80AE95B0+0x70>
    11c8:	3c0143c8 	lui	at,0x43c8
    11cc:	0c000000 	jal	0 <EnRr_Init>
    11d0:	02002025 	move	a0,s0
    11d4:	10000012 	b	1220 <func_80AE95B0+0xb0>
    11d8:	8fbf0024 	lw	ra,36(sp)
    11dc:	3c0143c8 	lui	at,0x43c8
    11e0:	44815000 	mtc1	at,$f10
    11e4:	c6080090 	lwc1	$f8,144(s0)
    11e8:	460a403c 	c.lt.s	$f8,$f10
    11ec:	00000000 	nop
    11f0:	4502000b 	bc1fl	1220 <func_80AE95B0+0xb0>
    11f4:	8fbf0024 	lw	ra,36(sp)
    11f8:	44808000 	mtc1	zero,$f16
    11fc:	c6120068 	lwc1	$f18,104(s0)
    1200:	02002025 	move	a0,s0
    1204:	46128032 	c.eq.s	$f16,$f18
    1208:	00000000 	nop
    120c:	45020004 	bc1fl	1220 <func_80AE95B0+0xb0>
    1210:	8fbf0024 	lw	ra,36(sp)
    1214:	0c000000 	jal	0 <EnRr_Init>
    1218:	3c054000 	lui	a1,0x4000
    121c:	8fbf0024 	lw	ra,36(sp)
    1220:	8fb00020 	lw	s0,32(sp)
    1224:	27bd0028 	addiu	sp,sp,40
    1228:	03e00008 	jr	ra
    122c:	00000000 	nop

00001230 <func_80AE9670>:
    1230:	27bdffd8 	addiu	sp,sp,-40
    1234:	afb00020 	sw	s0,32(sp)
    1238:	00808025 	move	s0,a0
    123c:	afbf0024 	sw	ra,36(sp)
    1240:	afa5002c 	sw	a1,44(sp)
    1244:	8605008a 	lh	a1,138(s0)
    1248:	afa00010 	sw	zero,16(sp)
    124c:	248400b6 	addiu	a0,a0,182
    1250:	2406000a 	li	a2,10
    1254:	0c000000 	jal	0 <EnRr_Init>
    1258:	240701f4 	li	a3,500
    125c:	920f0370 	lbu	t7,880(s0)
    1260:	860e00b6 	lh	t6,182(s0)
    1264:	25f8ffff 	addiu	t8,t7,-1
    1268:	2f010005 	sltiu	at,t8,5
    126c:	10200032 	beqz	at,1338 <L80AE9764+0x14>
    1270:	a60e0032 	sh	t6,50(s0)
    1274:	0018c080 	sll	t8,t8,0x2
    1278:	3c010000 	lui	at,0x0
    127c:	00380821 	addu	at,at,t8
    1280:	8c380000 	lw	t8,0(at)
    1284:	03000008 	jr	t8
    1288:	00000000 	nop

0000128c <L80AE96CC>:
    128c:	861901ea 	lh	t9,490(s0)
    1290:	24080002 	li	t0,2
    1294:	57200029 	bnezl	t9,133c <L80AE9764+0x18>
    1298:	8fbf0024 	lw	ra,36(sp)
    129c:	10000026 	b	1338 <L80AE9764+0x14>
    12a0:	a2080370 	sb	t0,880(s0)

000012a4 <L80AE96E4>:
    12a4:	860901ea 	lh	t1,490(s0)
    12a8:	3c013fc0 	lui	at,0x3fc0
    12ac:	240a0005 	li	t2,5
    12b0:	15200021 	bnez	t1,1338 <L80AE9764+0x14>
    12b4:	240b0003 	li	t3,3
    12b8:	44810000 	mtc1	at,$f0
    12bc:	a60a01ea 	sh	t2,490(s0)
    12c0:	a20b0370 	sb	t3,880(s0)
    12c4:	e6000340 	swc1	$f0,832(s0)
    12c8:	1000001b 	b	1338 <L80AE9764+0x14>
    12cc:	e6000338 	swc1	$f0,824(s0)

000012d0 <L80AE9710>:
    12d0:	860c01ea 	lh	t4,490(s0)
    12d4:	240d0002 	li	t5,2
    12d8:	3c0144fa 	lui	at,0x44fa
    12dc:	15800016 	bnez	t4,1338 <L80AE9764+0x14>
    12e0:	240e0004 	li	t6,4
    12e4:	44812000 	mtc1	at,$f4
    12e8:	a60d01ea 	sh	t5,490(s0)
    12ec:	a20e0370 	sb	t6,880(s0)
    12f0:	10000011 	b	1338 <L80AE9764+0x14>
    12f4:	e6040328 	swc1	$f4,808(s0)

000012f8 <L80AE9738>:
    12f8:	860f01ea 	lh	t7,490(s0)
    12fc:	3c010000 	lui	at,0x0
    1300:	24180014 	li	t8,20
    1304:	15e0000c 	bnez	t7,1338 <L80AE9764+0x14>
    1308:	24190005 	li	t9,5
    130c:	c4200000 	lwc1	$f0,0(at)
    1310:	a61801ea 	sh	t8,490(s0)
    1314:	a2190370 	sb	t9,880(s0)
    1318:	e6000340 	swc1	$f0,832(s0)
    131c:	10000006 	b	1338 <L80AE9764+0x14>
    1320:	e6000338 	swc1	$f0,824(s0)

00001324 <L80AE9764>:
    1324:	860801ea 	lh	t0,490(s0)
    1328:	55000004 	bnezl	t0,133c <L80AE9764+0x18>
    132c:	8fbf0024 	lw	ra,36(sp)
    1330:	0c000000 	jal	0 <EnRr_Init>
    1334:	02002025 	move	a0,s0
    1338:	8fbf0024 	lw	ra,36(sp)
    133c:	8fb00020 	lw	s0,32(sp)
    1340:	27bd0028 	addiu	sp,sp,40
    1344:	03e00008 	jr	ra
    1348:	00000000 	nop

0000134c <func_80AE978C>:
    134c:	27bdffe0 	addiu	sp,sp,-32
    1350:	afbf001c 	sw	ra,28(sp)
    1354:	afb10018 	sw	s1,24(sp)
    1358:	afb00014 	sw	s0,20(sp)
    135c:	afa50024 	sw	a1,36(sp)
    1360:	8cb11c44 	lw	s1,7236(a1)
    1364:	00808025 	move	s0,a0
    1368:	24050078 	li	a1,120
    136c:	c48c008c 	lwc1	$f12,140(a0)
    1370:	24060002 	li	a2,2
    1374:	0c000000 	jal	0 <EnRr_Init>
    1378:	24070078 	li	a3,120
    137c:	860f01e8 	lh	t7,488(s0)
    1380:	02002025 	move	a0,s0
    1384:	31f80007 	andi	t8,t7,0x7
    1388:	57000004 	bnezl	t8,139c <func_80AE978C+0x50>
    138c:	860801ee 	lh	t0,494(s0)
    1390:	0c000000 	jal	0 <EnRr_Init>
    1394:	24053993 	li	a1,14739
    1398:	860801ee 	lh	t0,494(s0)
    139c:	24190008 	li	t9,8
    13a0:	a61901f4 	sh	t9,500(s0)
    13a4:	11000007 	beqz	t0,13c4 <func_80AE978C+0x78>
    13a8:	02002025 	move	a0,s0
    13ac:	8e290680 	lw	t1,1664(s1)
    13b0:	3c063f80 	lui	a2,0x3f80
    13b4:	3c0741f0 	lui	a3,0x41f0
    13b8:	312a0080 	andi	t2,t1,0x80
    13bc:	55400006 	bnezl	t2,13d8 <func_80AE978C+0x8c>
    13c0:	26240024 	addiu	a0,s1,36
    13c4:	0c000000 	jal	0 <EnRr_Init>
    13c8:	8fa50024 	lw	a1,36(sp)
    13cc:	10000018 	b	1430 <func_80AE978C+0xe4>
    13d0:	8fbf001c 	lw	ra,28(sp)
    13d4:	26240024 	addiu	a0,s1,36
    13d8:	0c000000 	jal	0 <EnRr_Init>
    13dc:	8e05037c 	lw	a1,892(s0)
    13e0:	c6040380 	lwc1	$f4,896(s0)
    13e4:	c606036c 	lwc1	$f6,876(s0)
    13e8:	26240028 	addiu	a0,s1,40
    13ec:	3c063f80 	lui	a2,0x3f80
    13f0:	46062200 	add.s	$f8,$f4,$f6
    13f4:	3c0741f0 	lui	a3,0x41f0
    13f8:	44054000 	mfc1	a1,$f8
    13fc:	0c000000 	jal	0 <EnRr_Init>
    1400:	00000000 	nop
    1404:	2624002c 	addiu	a0,s1,44
    1408:	8e050384 	lw	a1,900(s0)
    140c:	3c063f80 	lui	a2,0x3f80
    1410:	0c000000 	jal	0 <EnRr_Init>
    1414:	3c0741f0 	lui	a3,0x41f0
    1418:	2604036c 	addiu	a0,s0,876
    141c:	3c05c25c 	lui	a1,0xc25c
    1420:	3c063f80 	lui	a2,0x3f80
    1424:	0c000000 	jal	0 <EnRr_Init>
    1428:	3c0740a0 	lui	a3,0x40a0
    142c:	8fbf001c 	lw	ra,28(sp)
    1430:	8fb00014 	lw	s0,20(sp)
    1434:	8fb10018 	lw	s1,24(sp)
    1438:	03e00008 	jr	ra
    143c:	27bd0020 	addiu	sp,sp,32

00001440 <func_80AE9880>:
    1440:	27bdffe8 	addiu	sp,sp,-24
    1444:	afbf0014 	sw	ra,20(sp)
    1448:	afa5001c 	sw	a1,28(sp)
    144c:	90820114 	lbu	v0,276(a0)
    1450:	14400005 	bnez	v0,1468 <func_80AE9880+0x28>
    1454:	304e0008 	andi	t6,v0,0x8
    1458:	0c000000 	jal	0 <EnRr_Init>
    145c:	00000000 	nop
    1460:	10000012 	b	14ac <func_80AE9880+0x6c>
    1464:	8fbf0014 	lw	ra,20(sp)
    1468:	11c00009 	beqz	t6,1490 <func_80AE9880+0x50>
    146c:	3c010000 	lui	at,0x0
    1470:	3c010000 	lui	at,0x0
    1474:	c4200000 	lwc1	$f0,0(at)
    1478:	24820040 	addiu	v0,a0,64
    147c:	e4400298 	swc1	$f0,664(v0)
    1480:	e44002d8 	swc1	$f0,728(v0)
    1484:	e4400318 	swc1	$f0,792(v0)
    1488:	10000007 	b	14a8 <func_80AE9880+0x68>
    148c:	e4400258 	swc1	$f0,600(v0)
    1490:	c4200000 	lwc1	$f0,0(at)
    1494:	24820040 	addiu	v0,a0,64
    1498:	e4400298 	swc1	$f0,664(v0)
    149c:	e44002d8 	swc1	$f0,728(v0)
    14a0:	e4400318 	swc1	$f0,792(v0)
    14a4:	e4400258 	swc1	$f0,600(v0)
    14a8:	8fbf0014 	lw	ra,20(sp)
    14ac:	27bd0018 	addiu	sp,sp,24
    14b0:	03e00008 	jr	ra
    14b4:	00000000 	nop

000014b8 <func_80AE98F8>:
    14b8:	27bdff50 	addiu	sp,sp,-176
    14bc:	afbf005c 	sw	ra,92(sp)
    14c0:	afb20058 	sw	s2,88(sp)
    14c4:	afb10054 	sw	s1,84(sp)
    14c8:	afb00050 	sw	s0,80(sp)
    14cc:	f7b40048 	sdc1	$f20,72(sp)
    14d0:	848201e8 	lh	v0,488(a0)
    14d4:	00a08025 	move	s0,a1
    14d8:	00809025 	move	s2,a0
    14dc:	28410028 	slti	at,v0,40
    14e0:	10200030 	beqz	at,15a4 <func_80AE98F8+0xec>
    14e4:	27b1009c 	addiu	s1,sp,156
    14e8:	3c013f80 	lui	at,0x3f80
    14ec:	4481a000 	mtc1	at,$f20
    14f0:	00008025 	move	s0,zero
    14f4:	00801825 	move	v1,a0
    14f8:	24910228 	addiu	s1,a0,552
    14fc:	864e01e8 	lh	t6,488(s2)
    1500:	3c0141c8 	lui	at,0x41c8
    1504:	44814000 	mtc1	at,$f8
    1508:	448e2000 	mtc1	t6,$f4
    150c:	260f003b 	addiu	t7,s0,59
    1510:	448f8000 	mtc1	t7,$f16
    1514:	468021a0 	cvt.s.w	$f6,$f4
    1518:	4406a000 	mfc1	a2,$f20
    151c:	afa3006c 	sw	v1,108(sp)
    1520:	02202025 	move	a0,s1
    1524:	3c074248 	lui	a3,0x4248
    1528:	468084a0 	cvt.s.w	$f18,$f16
    152c:	46083282 	mul.s	$f10,$f6,$f8
    1530:	460a9101 	sub.s	$f4,$f18,$f10
    1534:	44052000 	mfc1	a1,$f4
    1538:	0c000000 	jal	0 <EnRr_Init>
    153c:	00000000 	nop
    1540:	24180004 	li	t8,4
    1544:	03101023 	subu	v0,t8,s0
    1548:	00420019 	multu	v0,v0
    154c:	864801e8 	lh	t0,488(s2)
    1550:	3c010000 	lui	at,0x0
    1554:	c4240000 	lwc1	$f4,0(at)
    1558:	44888000 	mtc1	t0,$f16
    155c:	8fa3006c 	lw	v1,108(sp)
    1560:	24010005 	li	at,5
    1564:	468084a0 	cvt.s.w	$f18,$f16
    1568:	26100001 	addiu	s0,s0,1
    156c:	26310040 	addiu	s1,s1,64
    1570:	0000c812 	mflo	t9
    1574:	44993000 	mtc1	t9,$f6
    1578:	24630040 	addiu	v1,v1,64
    157c:	46803220 	cvt.s.w	$f8,$f6
    1580:	46124282 	mul.s	$f10,$f8,$f18
    1584:	00000000 	nop
    1588:	46045182 	mul.s	$f6,$f10,$f4
    158c:	46143000 	add.s	$f0,$f6,$f20
    1590:	e4600200 	swc1	$f0,512(v1)
    1594:	1601ffd9 	bne	s0,at,14fc <func_80AE98F8+0x44>
    1598:	e46001f8 	swc1	$f0,504(v1)
    159c:	100000a4 	b	1830 <L80AE9B4C+0x124>
    15a0:	8fbf005c 	lw	ra,92(sp)
    15a4:	2841005f 	slti	at,v0,95
    15a8:	14200061 	bnez	at,1730 <L80AE9B4C+0x24>
    15ac:	02002025 	move	a0,s0
    15b0:	c6500024 	lwc1	$f16,36(s2)
    15b4:	24010001 	li	at,1
    15b8:	02202825 	move	a1,s1
    15bc:	e7b0009c 	swc1	$f16,156(sp)
    15c0:	c6480028 	lwc1	$f8,40(s2)
    15c4:	e7a800a0 	swc1	$f8,160(sp)
    15c8:	c652002c 	lwc1	$f18,44(s2)
    15cc:	e7b200a4 	swc1	$f18,164(sp)
    15d0:	92420372 	lbu	v0,882(s2)
    15d4:	10410005 	beq	v0,at,15ec <func_80AE98F8+0x134>
    15d8:	24010002 	li	at,2
    15dc:	10410007 	beq	v0,at,15fc <func_80AE98F8+0x144>
    15e0:	27b1009c 	addiu	s1,sp,156
    15e4:	10000009 	b	160c <func_80AE98F8+0x154>
    15e8:	27b1009c 	addiu	s1,sp,156
    15ec:	0c000000 	jal	0 <EnRr_Init>
    15f0:	24060015 	li	a2,21
    15f4:	10000006 	b	1610 <func_80AE98F8+0x158>
    15f8:	92420373 	lbu	v0,883(s2)
    15fc:	02002025 	move	a0,s0
    1600:	02202825 	move	a1,s1
    1604:	0c000000 	jal	0 <EnRr_Init>
    1608:	24060016 	li	a2,22
    160c:	92420373 	lbu	v0,883(s2)
    1610:	24010002 	li	at,2
    1614:	02002025 	move	a0,s0
    1618:	10410006 	beq	v0,at,1634 <func_80AE98F8+0x17c>
    161c:	02202825 	move	a1,s1
    1620:	24010003 	li	at,3
    1624:	10410007 	beq	v0,at,1644 <func_80AE98F8+0x18c>
    1628:	02002025 	move	a0,s0
    162c:	10000009 	b	1654 <func_80AE98F8+0x19c>
    1630:	92490374 	lbu	t1,884(s2)
    1634:	0c000000 	jal	0 <EnRr_Init>
    1638:	24060018 	li	a2,24
    163c:	10000005 	b	1654 <func_80AE98F8+0x19c>
    1640:	92490374 	lbu	t1,884(s2)
    1644:	02202825 	move	a1,s1
    1648:	0c000000 	jal	0 <EnRr_Init>
    164c:	24060017 	li	a2,23
    1650:	92490374 	lbu	t1,884(s2)
    1654:	3c050000 	lui	a1,0x0
    1658:	3c040000 	lui	a0,0x0
    165c:	00095080 	sll	t2,t1,0x2
    1660:	00aa2821 	addu	a1,a1,t2
    1664:	8ca50000 	lw	a1,0(a1)
    1668:	0c000000 	jal	0 <EnRr_Init>
    166c:	24840000 	addiu	a0,a0,0
    1670:	924b0374 	lbu	t3,884(s2)
    1674:	2d610006 	sltiu	at,t3,6
    1678:	10200024 	beqz	at,170c <L80AE9B4C>
    167c:	000b5880 	sll	t3,t3,0x2
    1680:	3c010000 	lui	at,0x0
    1684:	002b0821 	addu	at,at,t3
    1688:	8c2b0000 	lw	t3,0(at)
    168c:	01600008 	jr	t3
    1690:	00000000 	nop

00001694 <L80AE9AD4>:
    1694:	02002025 	move	a0,s0
    1698:	02202825 	move	a1,s1
    169c:	0c000000 	jal	0 <EnRr_Init>
    16a0:	2406000f 	li	a2,15
    16a4:	1000001e 	b	1720 <L80AE9B4C+0x14>
    16a8:	00000000 	nop

000016ac <L80AE9AEC>:
    16ac:	02002025 	move	a0,s0
    16b0:	02202825 	move	a1,s1
    16b4:	0c000000 	jal	0 <EnRr_Init>
    16b8:	24060005 	li	a2,5
    16bc:	10000018 	b	1720 <L80AE9B4C+0x14>
    16c0:	00000000 	nop

000016c4 <L80AE9B04>:
    16c4:	02002025 	move	a0,s0
    16c8:	02202825 	move	a1,s1
    16cc:	0c000000 	jal	0 <EnRr_Init>
    16d0:	24060012 	li	a2,18
    16d4:	10000012 	b	1720 <L80AE9B4C+0x14>
    16d8:	00000000 	nop

000016dc <L80AE9B1C>:
    16dc:	02002025 	move	a0,s0
    16e0:	02202825 	move	a1,s1
    16e4:	0c000000 	jal	0 <EnRr_Init>
    16e8:	24060014 	li	a2,20
    16ec:	1000000c 	b	1720 <L80AE9B4C+0x14>
    16f0:	00000000 	nop

000016f4 <L80AE9B34>:
    16f4:	02002025 	move	a0,s0
    16f8:	02202825 	move	a1,s1
    16fc:	0c000000 	jal	0 <EnRr_Init>
    1700:	24060002 	li	a2,2
    1704:	10000006 	b	1720 <L80AE9B4C+0x14>
    1708:	00000000 	nop

0000170c <L80AE9B4C>:
    170c:	02002025 	move	a0,s0
    1710:	02402825 	move	a1,s2
    1714:	02203025 	move	a2,s1
    1718:	0c000000 	jal	0 <EnRr_Init>
    171c:	240700c0 	li	a3,192
    1720:	0c000000 	jal	0 <EnRr_Init>
    1724:	02402025 	move	a0,s2
    1728:	10000041 	b	1830 <L80AE9B4C+0x124>
    172c:	8fbf005c 	lw	ra,92(sp)
    1730:	24010058 	li	at,88
    1734:	1441002c 	bne	v0,at,17e8 <L80AE9B4C+0xdc>
    1738:	02002025 	move	a0,s0
    173c:	c64a0024 	lwc1	$f10,36(s2)
    1740:	3c0141a0 	lui	at,0x41a0
    1744:	44813000 	mtc1	at,$f6
    1748:	e7aa0090 	swc1	$f10,144(sp)
    174c:	c6440028 	lwc1	$f4,40(s2)
    1750:	44800000 	mtc1	zero,$f0
    1754:	240c0064 	li	t4,100
    1758:	46062400 	add.s	$f16,$f4,$f6
    175c:	240d00ff 	li	t5,255
    1760:	240e00ff 	li	t6,255
    1764:	240f00ff 	li	t7,255
    1768:	e7b00094 	swc1	$f16,148(sp)
    176c:	c648002c 	lwc1	$f8,44(s2)
    1770:	241800ff 	li	t8,255
    1774:	241900ff 	li	t9,255
    1778:	24080001 	li	t0,1
    177c:	24090009 	li	t1,9
    1780:	240a0001 	li	t2,1
    1784:	afaa003c 	sw	t2,60(sp)
    1788:	afa90038 	sw	t1,56(sp)
    178c:	afa80034 	sw	t0,52(sp)
    1790:	afb90028 	sw	t9,40(sp)
    1794:	afb80024 	sw	t8,36(sp)
    1798:	afa00030 	sw	zero,48(sp)
    179c:	afa0002c 	sw	zero,44(sp)
    17a0:	afaf0020 	sw	t7,32(sp)
    17a4:	afae001c 	sw	t6,28(sp)
    17a8:	afad0018 	sw	t5,24(sp)
    17ac:	afa00014 	sw	zero,20(sp)
    17b0:	afac0010 	sw	t4,16(sp)
    17b4:	27a50090 	addiu	a1,sp,144
    17b8:	27a60084 	addiu	a2,sp,132
    17bc:	27a70078 	addiu	a3,sp,120
    17c0:	e7a00084 	swc1	$f0,132(sp)
    17c4:	e7a00088 	swc1	$f0,136(sp)
    17c8:	e7a0008c 	swc1	$f0,140(sp)
    17cc:	e7a00078 	swc1	$f0,120(sp)
    17d0:	e7a0007c 	swc1	$f0,124(sp)
    17d4:	e7a00080 	swc1	$f0,128(sp)
    17d8:	0c000000 	jal	0 <EnRr_Init>
    17dc:	e7a80098 	swc1	$f8,152(sp)
    17e0:	10000013 	b	1830 <L80AE9B4C+0x124>
    17e4:	8fbf005c 	lw	ra,92(sp)
    17e8:	3c013f80 	lui	at,0x3f80
    17ec:	4481a000 	mtc1	at,$f20
    17f0:	44800000 	mtc1	zero,$f0
    17f4:	26440050 	addiu	a0,s2,80
    17f8:	4406a000 	mfc1	a2,$f20
    17fc:	44050000 	mfc1	a1,$f0
    1800:	0c000000 	jal	0 <EnRr_Init>
    1804:	8e470368 	lw	a3,872(s2)
    1808:	3c053a83 	lui	a1,0x3a83
    180c:	4406a000 	mfc1	a2,$f20
    1810:	3c073727 	lui	a3,0x3727
    1814:	34e7c5ac 	ori	a3,a3,0xc5ac
    1818:	34a5126f 	ori	a1,a1,0x126f
    181c:	0c000000 	jal	0 <EnRr_Init>
    1820:	26440368 	addiu	a0,s2,872
    1824:	c6520050 	lwc1	$f18,80(s2)
    1828:	e6520058 	swc1	$f18,88(s2)
    182c:	8fbf005c 	lw	ra,92(sp)
    1830:	d7b40048 	ldc1	$f20,72(sp)
    1834:	8fb00050 	lw	s0,80(sp)
    1838:	8fb10054 	lw	s1,84(sp)
    183c:	8fb20058 	lw	s2,88(sp)
    1840:	03e00008 	jr	ra
    1844:	27bd00b0 	addiu	sp,sp,176

00001848 <func_80AE9C88>:
    1848:	27bdffd8 	addiu	sp,sp,-40
    184c:	afbf0024 	sw	ra,36(sp)
    1850:	afb00020 	sw	s0,32(sp)
    1854:	afa5002c 	sw	a1,44(sp)
    1858:	848e01ea 	lh	t6,490(a0)
    185c:	00808025 	move	s0,a0
    1860:	34018000 	li	at,0x8000
    1864:	15c00006 	bnez	t6,1880 <func_80AE9C88+0x38>
    1868:	2406000a 	li	a2,10
    186c:	3c0f0000 	lui	t7,0x0
    1870:	25ef0000 	addiu	t7,t7,0
    1874:	a0800375 	sb	zero,885(a0)
    1878:	10000013 	b	18c8 <func_80AE9C88+0x80>
    187c:	ac8f014c 	sw	t7,332(a0)
    1880:	8605008a 	lh	a1,138(s0)
    1884:	afa00010 	sw	zero,16(sp)
    1888:	260400b6 	addiu	a0,s0,182
    188c:	00a12821 	addu	a1,a1,at
    1890:	00052c00 	sll	a1,a1,0x10
    1894:	00052c03 	sra	a1,a1,0x10
    1898:	0c000000 	jal	0 <EnRr_Init>
    189c:	240703e8 	li	a3,1000
    18a0:	44802000 	mtc1	zero,$f4
    18a4:	c6060068 	lwc1	$f6,104(s0)
    18a8:	861800b6 	lh	t8,182(s0)
    18ac:	02002025 	move	a0,s0
    18b0:	46062032 	c.eq.s	$f4,$f6
    18b4:	a6180032 	sh	t8,50(s0)
    18b8:	45020004 	bc1fl	18cc <func_80AE9C88+0x84>
    18bc:	8fbf0024 	lw	ra,36(sp)
    18c0:	0c000000 	jal	0 <EnRr_Init>
    18c4:	3c054000 	lui	a1,0x4000
    18c8:	8fbf0024 	lw	ra,36(sp)
    18cc:	8fb00020 	lw	s0,32(sp)
    18d0:	27bd0028 	addiu	sp,sp,40
    18d4:	03e00008 	jr	ra
    18d8:	00000000 	nop

000018dc <func_80AE9D1C>:
    18dc:	27bdffe8 	addiu	sp,sp,-24
    18e0:	afbf0014 	sw	ra,20(sp)
    18e4:	908e0114 	lbu	t6,276(a0)
    18e8:	55c00013 	bnezl	t6,1938 <func_80AE9D1C+0x5c>
    18ec:	8fbf0014 	lw	ra,20(sp)
    18f0:	848f0378 	lh	t7,888(a0)
    18f4:	a0800376 	sb	zero,886(a0)
    18f8:	51e00006 	beqzl	t7,1914 <func_80AE9D1C+0x38>
    18fc:	909800af 	lbu	t8,175(a0)
    1900:	0c000000 	jal	0 <EnRr_Init>
    1904:	00000000 	nop
    1908:	1000000b 	b	1938 <func_80AE9D1C+0x5c>
    190c:	8fbf0014 	lw	ra,20(sp)
    1910:	909800af 	lbu	t8,175(a0)
    1914:	3c190000 	lui	t9,0x0
    1918:	27390000 	addiu	t9,t9,0
    191c:	13000003 	beqz	t8,192c <func_80AE9D1C+0x50>
    1920:	00000000 	nop
    1924:	10000003 	b	1934 <func_80AE9D1C+0x58>
    1928:	ac99014c 	sw	t9,332(a0)
    192c:	0c000000 	jal	0 <EnRr_Init>
    1930:	00000000 	nop
    1934:	8fbf0014 	lw	ra,20(sp)
    1938:	27bd0018 	addiu	sp,sp,24
    193c:	03e00008 	jr	ra
    1940:	00000000 	nop

00001944 <EnRr_Update>:
    1944:	27bdffb0 	addiu	sp,sp,-80
    1948:	afbf004c 	sw	ra,76(sp)
    194c:	afb60048 	sw	s6,72(sp)
    1950:	afb50044 	sw	s5,68(sp)
    1954:	afb40040 	sw	s4,64(sp)
    1958:	afb3003c 	sw	s3,60(sp)
    195c:	afb20038 	sw	s2,56(sp)
    1960:	afb10034 	sw	s1,52(sp)
    1964:	afb00030 	sw	s0,48(sp)
    1968:	f7b60028 	sdc1	$f22,40(sp)
    196c:	f7b40020 	sdc1	$f20,32(sp)
    1970:	848e01e8 	lh	t6,488(a0)
    1974:	90980376 	lbu	t8,886(a0)
    1978:	00808825 	move	s1,a0
    197c:	25cf0001 	addiu	t7,t6,1
    1980:	00a0a025 	move	s4,a1
    1984:	17000004 	bnez	t8,1998 <EnRr_Update+0x54>
    1988:	a48f01e8 	sh	t7,488(a0)
    198c:	849901ec 	lh	t9,492(a0)
    1990:	27280001 	addiu	t0,t9,1
    1994:	a48801ec 	sh	t0,492(a0)
    1998:	862201ea 	lh	v0,490(s1)
    199c:	3c0141f0 	lui	at,0x41f0
    19a0:	4481b000 	mtc1	at,$f22
    19a4:	10400002 	beqz	v0,19b0 <EnRr_Update+0x6c>
    19a8:	2449ffff 	addiu	t1,v0,-1
    19ac:	a62901ea 	sh	t1,490(s1)
    19b0:	862201ee 	lh	v0,494(s1)
    19b4:	4405b000 	mfc1	a1,$f22
    19b8:	10400002 	beqz	v0,19c4 <EnRr_Update+0x80>
    19bc:	244affff 	addiu	t2,v0,-1
    19c0:	a62a01ee 	sh	t2,494(s1)
    19c4:	862201f4 	lh	v0,500(s1)
    19c8:	10400002 	beqz	v0,19d4 <EnRr_Update+0x90>
    19cc:	244bffff 	addiu	t3,v0,-1
    19d0:	a62b01f4 	sh	t3,500(s1)
    19d4:	862201f0 	lh	v0,496(s1)
    19d8:	10400002 	beqz	v0,19e4 <EnRr_Update+0xa0>
    19dc:	244cffff 	addiu	t4,v0,-1
    19e0:	a62c01f0 	sh	t4,496(s1)
    19e4:	862201f2 	lh	v0,498(s1)
    19e8:	10400002 	beqz	v0,19f4 <EnRr_Update+0xb0>
    19ec:	244dffff 	addiu	t5,v0,-1
    19f0:	a62d01f2 	sh	t5,498(s1)
    19f4:	0c000000 	jal	0 <EnRr_Init>
    19f8:	02202025 	move	a0,s1
    19fc:	02202025 	move	a0,s1
    1a00:	0c000000 	jal	0 <EnRr_Init>
    1a04:	02802825 	move	a1,s4
    1a08:	922e0371 	lbu	t6,881(s1)
    1a0c:	55c0000c 	bnezl	t6,1a40 <EnRr_Update+0xfc>
    1a10:	8e39014c 	lw	t9,332(s1)
    1a14:	922f0114 	lbu	t7,276(s1)
    1a18:	02202025 	move	a0,s1
    1a1c:	11e00005 	beqz	t7,1a34 <EnRr_Update+0xf0>
    1a20:	00000000 	nop
    1a24:	96380112 	lhu	t8,274(s1)
    1a28:	33194000 	andi	t9,t8,0x4000
    1a2c:	57200004 	bnezl	t9,1a40 <EnRr_Update+0xfc>
    1a30:	8e39014c 	lw	t9,332(s1)
    1a34:	0c000000 	jal	0 <EnRr_Init>
    1a38:	02802825 	move	a1,s4
    1a3c:	8e39014c 	lw	t9,332(s1)
    1a40:	02202025 	move	a0,s1
    1a44:	02802825 	move	a1,s4
    1a48:	0320f809 	jalr	t9
    1a4c:	00000000 	nop
    1a50:	86280378 	lh	t0,888(s1)
    1a54:	24013f80 	li	at,16256
    1a58:	3c040000 	lui	a0,0x0
    1a5c:	15010005 	bne	t0,at,1a74 <EnRr_Update+0x130>
    1a60:	24840000 	addiu	a0,a0,0
    1a64:	3c050000 	lui	a1,0x0
    1a68:	24a50000 	addiu	a1,a1,0
    1a6c:	0c000000 	jal	0 <EnRr_Init>
    1a70:	2406054b 	li	a2,1355
    1a74:	3c063dcc 	lui	a2,0x3dcc
    1a78:	34c6cccd 	ori	a2,a2,0xcccd
    1a7c:	26240068 	addiu	a0,s1,104
    1a80:	0c000000 	jal	0 <EnRr_Init>
    1a84:	24050000 	li	a1,0
    1a88:	0c000000 	jal	0 <EnRr_Init>
    1a8c:	02202025 	move	a0,s1
    1a90:	26330150 	addiu	s3,s1,336
    1a94:	02602825 	move	a1,s3
    1a98:	0c000000 	jal	0 <EnRr_Init>
    1a9c:	02202025 	move	a0,s1
    1aa0:	c624037c 	lwc1	$f4,892(s1)
    1aa4:	c6280380 	lwc1	$f8,896(s1)
    1aa8:	c6300384 	lwc1	$f16,900(s1)
    1aac:	4600218d 	trunc.w.s	$f6,$f4
    1ab0:	922f0371 	lbu	t7,881(s1)
    1ab4:	4600428d 	trunc.w.s	$f10,$f8
    1ab8:	440a3000 	mfc1	t2,$f6
    1abc:	4600848d 	trunc.w.s	$f18,$f16
    1ac0:	440c5000 	mfc1	t4,$f10
    1ac4:	a62a01e2 	sh	t2,482(s1)
    1ac8:	440e9000 	mfc1	t6,$f18
    1acc:	a62c01e4 	sh	t4,484(s1)
    1ad0:	15e0001c 	bnez	t7,1b44 <EnRr_Update+0x200>
    1ad4:	a62e01e6 	sh	t6,486(s1)
    1ad8:	863801f0 	lh	t8,496(s1)
    1adc:	3c010001 	lui	at,0x1
    1ae0:	34211e60 	ori	at,at,0x1e60
    1ae4:	17000017 	bnez	t8,1b44 <EnRr_Update+0x200>
    1ae8:	02802025 	move	a0,s4
    1aec:	02818021 	addu	s0,s4,at
    1af0:	02002825 	move	a1,s0
    1af4:	0c000000 	jal	0 <EnRr_Init>
    1af8:	02603025 	move	a2,s3
    1afc:	2632019c 	addiu	s2,s1,412
    1b00:	02403025 	move	a2,s2
    1b04:	02802025 	move	a0,s4
    1b08:	0c000000 	jal	0 <EnRr_Init>
    1b0c:	02002825 	move	a1,s0
    1b10:	863901f4 	lh	t9,500(s1)
    1b14:	02802025 	move	a0,s4
    1b18:	02002825 	move	a1,s0
    1b1c:	57200004 	bnezl	t9,1b30 <EnRr_Update+0x1ec>
    1b20:	02802025 	move	a0,s4
    1b24:	0c000000 	jal	0 <EnRr_Init>
    1b28:	02603025 	move	a2,s3
    1b2c:	02802025 	move	a0,s4
    1b30:	02002825 	move	a1,s0
    1b34:	0c000000 	jal	0 <EnRr_Init>
    1b38:	02403025 	move	a2,s2
    1b3c:	1000000e 	b	1b78 <EnRr_Update+0x234>
    1b40:	3c0141a0 	lui	at,0x41a0
    1b44:	922801ae 	lbu	t0,430(s1)
    1b48:	922a01ad 	lbu	t2,429(s1)
    1b4c:	922c0162 	lbu	t4,354(s1)
    1b50:	922e0161 	lbu	t6,353(s1)
    1b54:	3109fffd 	andi	t1,t0,0xfffd
    1b58:	314bfffd 	andi	t3,t2,0xfffd
    1b5c:	318dfffd 	andi	t5,t4,0xfffd
    1b60:	31cffffd 	andi	t7,t6,0xfffd
    1b64:	a22901ae 	sb	t1,430(s1)
    1b68:	a22b01ad 	sb	t3,429(s1)
    1b6c:	a22d0162 	sb	t5,354(s1)
    1b70:	a22f0161 	sb	t7,353(s1)
    1b74:	3c0141a0 	lui	at,0x41a0
    1b78:	4481a000 	mtc1	at,$f20
    1b7c:	4407b000 	mfc1	a3,$f22
    1b80:	24180007 	li	t8,7
    1b84:	4406a000 	mfc1	a2,$f20
    1b88:	afb80014 	sw	t8,20(sp)
    1b8c:	02802025 	move	a0,s4
    1b90:	02202825 	move	a1,s1
    1b94:	0c000000 	jal	0 <EnRr_Init>
    1b98:	e7b40010 	swc1	$f20,16(sp)
    1b9c:	92390376 	lbu	t9,886(s1)
    1ba0:	3c013f80 	lui	at,0x3f80
    1ba4:	57200070 	bnezl	t9,1d68 <EnRr_Update+0x424>
    1ba8:	8fbf004c 	lw	ra,76(sp)
    1bac:	4481b000 	mtc1	at,$f22
    1bb0:	262401f8 	addiu	a0,s1,504
    1bb4:	8e2501fc 	lw	a1,508(s1)
    1bb8:	4406b000 	mfc1	a2,$f22
    1bbc:	0c000000 	jal	0 <EnRr_Init>
    1bc0:	3c074248 	lui	a3,0x4248
    1bc4:	4406b000 	mfc1	a2,$f22
    1bc8:	26240200 	addiu	a0,s1,512
    1bcc:	3c054080 	lui	a1,0x4080
    1bd0:	0c000000 	jal	0 <EnRr_Init>
    1bd4:	3c0740a0 	lui	a3,0x40a0
    1bd8:	4406b000 	mfc1	a2,$f22
    1bdc:	3c073d23 	lui	a3,0x3d23
    1be0:	34e7d70a 	ori	a3,a3,0xd70a
    1be4:	26240204 	addiu	a0,s1,516
    1be8:	0c000000 	jal	0 <EnRr_Init>
    1bec:	8e250208 	lw	a1,520(s1)
    1bf0:	4406b000 	mfc1	a2,$f22
    1bf4:	3c073c23 	lui	a3,0x3c23
    1bf8:	34e7d70a 	ori	a3,a3,0xd70a
    1bfc:	2624020c 	addiu	a0,s1,524
    1c00:	0c000000 	jal	0 <EnRr_Init>
    1c04:	8e250210 	lw	a1,528(s1)
    1c08:	4406b000 	mfc1	a2,$f22
    1c0c:	3c073ac4 	lui	a3,0x3ac4
    1c10:	34e79ba6 	ori	a3,a3,0x9ba6
    1c14:	26240214 	addiu	a0,s1,532
    1c18:	0c000000 	jal	0 <EnRr_Init>
    1c1c:	8e250218 	lw	a1,536(s1)
    1c20:	4406b000 	mfc1	a2,$f22
    1c24:	4407a000 	mfc1	a3,$f20
    1c28:	2624021c 	addiu	a0,s1,540
    1c2c:	0c000000 	jal	0 <EnRr_Init>
    1c30:	8e250220 	lw	a1,544(s1)
    1c34:	3c01447a 	lui	at,0x447a
    1c38:	4481a000 	mtc1	at,$f20
    1c3c:	00009025 	move	s2,zero
    1c40:	02208025 	move	s0,s1
    1c44:	26330224 	addiu	s3,s1,548
    1c48:	2634022c 	addiu	s4,s1,556
    1c4c:	26350260 	addiu	s5,s1,608
    1c50:	2636025c 	addiu	s6,s1,604
    1c54:	c6280364 	lwc1	$f8,868(s1)
    1c58:	c6040250 	lwc1	$f4,592(s0)
    1c5c:	afa00010 	sw	zero,16(sp)
    1c60:	46144282 	mul.s	$f10,$f8,$f20
    1c64:	4600218d 	trunc.w.s	$f6,$f4
    1c68:	02c02025 	move	a0,s6
    1c6c:	24060005 	li	a2,5
    1c70:	44053000 	mfc1	a1,$f6
    1c74:	4600540d 	trunc.w.s	$f16,$f10
    1c78:	00052c00 	sll	a1,a1,0x10
    1c7c:	00052c03 	sra	a1,a1,0x10
    1c80:	44078000 	mfc1	a3,$f16
    1c84:	00000000 	nop
    1c88:	00073c00 	sll	a3,a3,0x10
    1c8c:	0c000000 	jal	0 <EnRr_Init>
    1c90:	00073c03 	sra	a3,a3,0x10
    1c94:	c6260364 	lwc1	$f6,868(s1)
    1c98:	c6120258 	lwc1	$f18,600(s0)
    1c9c:	afa00010 	sw	zero,16(sp)
    1ca0:	46143202 	mul.s	$f8,$f6,$f20
    1ca4:	4600910d 	trunc.w.s	$f4,$f18
    1ca8:	02a02025 	move	a0,s5
    1cac:	24060005 	li	a2,5
    1cb0:	44052000 	mfc1	a1,$f4
    1cb4:	4600428d 	trunc.w.s	$f10,$f8
    1cb8:	00052c00 	sll	a1,a1,0x10
    1cbc:	00052c03 	sra	a1,a1,0x10
    1cc0:	44075000 	mfc1	a3,$f10
    1cc4:	00000000 	nop
    1cc8:	00073c00 	sll	a3,a3,0x10
    1ccc:	0c000000 	jal	0 <EnRr_Init>
    1cd0:	00073c03 	sra	a3,a3,0x10
    1cd4:	3c010000 	lui	at,0x0
    1cd8:	c4320000 	lwc1	$f18,0(at)
    1cdc:	c6300364 	lwc1	$f16,868(s1)
    1ce0:	4406b000 	mfc1	a2,$f22
    1ce4:	02802025 	move	a0,s4
    1ce8:	46128102 	mul.s	$f4,$f16,$f18
    1cec:	8e050238 	lw	a1,568(s0)
    1cf0:	44072000 	mfc1	a3,$f4
    1cf4:	0c000000 	jal	0 <EnRr_Init>
    1cf8:	00000000 	nop
    1cfc:	c606022c 	lwc1	$f6,556(s0)
    1d00:	3c014396 	lui	at,0x4396
    1d04:	44815000 	mtc1	at,$f10
    1d08:	e6060234 	swc1	$f6,564(s0)
    1d0c:	c6280364 	lwc1	$f8,868(s1)
    1d10:	4406b000 	mfc1	a2,$f22
    1d14:	02602025 	move	a0,s3
    1d18:	460a4402 	mul.s	$f16,$f8,$f10
    1d1c:	8e050228 	lw	a1,552(s0)
    1d20:	44078000 	mfc1	a3,$f16
    1d24:	0c000000 	jal	0 <EnRr_Init>
    1d28:	00000000 	nop
    1d2c:	26520040 	addiu	s2,s2,64
    1d30:	24010140 	li	at,320
    1d34:	26100040 	addiu	s0,s0,64
    1d38:	26730040 	addiu	s3,s3,64
    1d3c:	26940040 	addiu	s4,s4,64
    1d40:	26b50040 	addiu	s5,s5,64
    1d44:	1641ffc3 	bne	s2,at,1c54 <EnRr_Update+0x310>
    1d48:	26d60040 	addiu	s6,s6,64
    1d4c:	4405b000 	mfc1	a1,$f22
    1d50:	4406b000 	mfc1	a2,$f22
    1d54:	3c073e4c 	lui	a3,0x3e4c
    1d58:	34e7cccd 	ori	a3,a3,0xcccd
    1d5c:	0c000000 	jal	0 <EnRr_Init>
    1d60:	26240364 	addiu	a0,s1,868
    1d64:	8fbf004c 	lw	ra,76(sp)
    1d68:	d7b40020 	ldc1	$f20,32(sp)
    1d6c:	d7b60028 	ldc1	$f22,40(sp)
    1d70:	8fb00030 	lw	s0,48(sp)
    1d74:	8fb10034 	lw	s1,52(sp)
    1d78:	8fb20038 	lw	s2,56(sp)
    1d7c:	8fb3003c 	lw	s3,60(sp)
    1d80:	8fb40040 	lw	s4,64(sp)
    1d84:	8fb50044 	lw	s5,68(sp)
    1d88:	8fb60048 	lw	s6,72(sp)
    1d8c:	03e00008 	jr	ra
    1d90:	27bd0050 	addiu	sp,sp,80

00001d94 <EnRr_Draw>:
    1d94:	27bdff38 	addiu	sp,sp,-200
    1d98:	afb30054 	sw	s3,84(sp)
    1d9c:	00809825 	move	s3,a0
    1da0:	afbf005c 	sw	ra,92(sp)
    1da4:	afb40058 	sw	s4,88(sp)
    1da8:	afb20050 	sw	s2,80(sp)
    1dac:	afb1004c 	sw	s1,76(sp)
    1db0:	afb00048 	sw	s0,72(sp)
    1db4:	f7b60040 	sdc1	$f22,64(sp)
    1db8:	f7b40038 	sdc1	$f20,56(sp)
    1dbc:	afa500cc 	sw	a1,204(sp)
    1dc0:	8ca40000 	lw	a0,0(a1)
    1dc4:	0c000000 	jal	0 <EnRr_Init>
    1dc8:	24050100 	li	a1,256
    1dcc:	8faf00cc 	lw	t7,204(sp)
    1dd0:	3c060000 	lui	a2,0x0
    1dd4:	0040a025 	move	s4,v0
    1dd8:	8de50000 	lw	a1,0(t7)
    1ddc:	24c60000 	addiu	a2,a2,0
    1de0:	27a40098 	addiu	a0,sp,152
    1de4:	240705c6 	li	a3,1478
    1de8:	0c000000 	jal	0 <EnRr_Init>
    1dec:	afa500a8 	sw	a1,168(sp)
    1df0:	8fb800cc 	lw	t8,204(sp)
    1df4:	0c000000 	jal	0 <EnRr_Init>
    1df8:	8f040000 	lw	a0,0(t8)
    1dfc:	8fa900a8 	lw	t1,168(sp)
    1e00:	3c0adb06 	lui	t2,0xdb06
    1e04:	354a0030 	ori	t2,t2,0x30
    1e08:	8d2202d0 	lw	v0,720(t1)
    1e0c:	3c0cdb06 	lui	t4,0xdb06
    1e10:	358c0020 	ori	t4,t4,0x20
    1e14:	24590008 	addiu	t9,v0,8
    1e18:	ad3902d0 	sw	t9,720(t1)
    1e1c:	ac4a0000 	sw	t2,0(v0)
    1e20:	ac540004 	sw	s4,4(v0)
    1e24:	8d2202d0 	lw	v0,720(t1)
    1e28:	3007003f 	andi	a3,zero,0x3f
    1e2c:	240e0020 	li	t6,32
    1e30:	244b0008 	addiu	t3,v0,8
    1e34:	ad2b02d0 	sw	t3,720(t1)
    1e38:	ac4c0000 	sw	t4,0(v0)
    1e3c:	8fad00cc 	lw	t5,204(sp)
    1e40:	866301ec 	lh	v1,492(s3)
    1e44:	240c0010 	li	t4,16
    1e48:	8da40000 	lw	a0,0(t5)
    1e4c:	00030823 	negu	at,v1
    1e50:	0001c880 	sll	t9,at,0x2
    1e54:	0321c823 	subu	t9,t9,at
    1e58:	0019c840 	sll	t9,t9,0x1
    1e5c:	332a007f 	andi	t2,t9,0x7f
    1e60:	240b0020 	li	t3,32
    1e64:	240f0010 	li	t7,16
    1e68:	24180001 	li	t8,1
    1e6c:	afb80018 	sw	t8,24(sp)
    1e70:	afaf0014 	sw	t7,20(sp)
    1e74:	afab0024 	sw	t3,36(sp)
    1e78:	afaa0020 	sw	t2,32(sp)
    1e7c:	afac0028 	sw	t4,40(sp)
    1e80:	afa7001c 	sw	a3,28(sp)
    1e84:	afae0010 	sw	t6,16(sp)
    1e88:	00002825 	move	a1,zero
    1e8c:	00004025 	move	t0,zero
    1e90:	3006007f 	andi	a2,zero,0x7f
    1e94:	0c000000 	jal	0 <EnRr_Init>
    1e98:	00408025 	move	s0,v0
    1e9c:	0c000000 	jal	0 <EnRr_Init>
    1ea0:	ae020004 	sw	v0,4(s0)
    1ea4:	3c013f80 	lui	at,0x3f80
    1ea8:	4481b000 	mtc1	at,$f22
    1eac:	c6660244 	lwc1	$f6,580(s3)
    1eb0:	c664022c 	lwc1	$f4,556(s3)
    1eb4:	c6700248 	lwc1	$f16,584(s3)
    1eb8:	4606b200 	add.s	$f8,$f22,$f6
    1ebc:	c66a0230 	lwc1	$f10,560(s3)
    1ec0:	c6660234 	lwc1	$f6,564(s3)
    1ec4:	4610b480 	add.s	$f18,$f22,$f16
    1ec8:	46082302 	mul.s	$f12,$f4,$f8
    1ecc:	c664024c 	lwc1	$f4,588(s3)
    1ed0:	24070001 	li	a3,1
    1ed4:	46125382 	mul.s	$f14,$f10,$f18
    1ed8:	4604b200 	add.s	$f8,$f22,$f4
    1edc:	46083402 	mul.s	$f16,$f6,$f8
    1ee0:	44068000 	mfc1	a2,$f16
    1ee4:	0c000000 	jal	0 <EnRr_Init>
    1ee8:	00000000 	nop
    1eec:	8fa300a8 	lw	v1,168(sp)
    1ef0:	3c0eda38 	lui	t6,0xda38
    1ef4:	35ce0003 	ori	t6,t6,0x3
    1ef8:	8c6202d0 	lw	v0,720(v1)
    1efc:	3c050000 	lui	a1,0x0
    1f00:	24a50000 	addiu	a1,a1,0
    1f04:	244d0008 	addiu	t5,v0,8
    1f08:	ac6d02d0 	sw	t5,720(v1)
    1f0c:	ac4e0000 	sw	t6,0(v0)
    1f10:	8faf00cc 	lw	t7,204(sp)
    1f14:	240605dd 	li	a2,1501
    1f18:	00408025 	move	s0,v0
    1f1c:	0c000000 	jal	0 <EnRr_Init>
    1f20:	8de40000 	lw	a0,0(t7)
    1f24:	0c000000 	jal	0 <EnRr_Init>
    1f28:	ae020004 	sw	v0,4(s0)
    1f2c:	4480a000 	mtc1	zero,$f20
    1f30:	2411000c 	li	s1,12
    1f34:	26720394 	addiu	s2,s3,916
    1f38:	26700040 	addiu	s0,s3,64
    1f3c:	e7b400b8 	swc1	$f20,184(sp)
    1f40:	e7b400bc 	swc1	$f20,188(sp)
    1f44:	e7b400c0 	swc1	$f20,192(sp)
    1f48:	3c01447a 	lui	at,0x447a
    1f4c:	44819000 	mtc1	at,$f18
    1f50:	c60a0224 	lwc1	$f10,548(s0)
    1f54:	4406a000 	mfc1	a2,$f20
    1f58:	4600a306 	mov.s	$f12,$f20
    1f5c:	24070001 	li	a3,1
    1f60:	0c000000 	jal	0 <EnRr_Init>
    1f64:	46125380 	add.s	$f14,$f10,$f18
    1f68:	8604025c 	lh	a0,604(s0)
    1f6c:	8605025e 	lh	a1,606(s0)
    1f70:	86060260 	lh	a2,608(s0)
    1f74:	0c000000 	jal	0 <EnRr_Init>
    1f78:	24070001 	li	a3,1
    1f7c:	0c000000 	jal	0 <EnRr_Init>
    1f80:	00000000 	nop
    1f84:	c6060244 	lwc1	$f6,580(s0)
    1f88:	c604022c 	lwc1	$f4,556(s0)
    1f8c:	c60a0248 	lwc1	$f10,584(s0)
    1f90:	4606b200 	add.s	$f8,$f22,$f6
    1f94:	c6100230 	lwc1	$f16,560(s0)
    1f98:	c6060234 	lwc1	$f6,564(s0)
    1f9c:	460ab480 	add.s	$f18,$f22,$f10
    1fa0:	46082302 	mul.s	$f12,$f4,$f8
    1fa4:	c604024c 	lwc1	$f4,588(s0)
    1fa8:	24070001 	li	a3,1
    1fac:	46128382 	mul.s	$f14,$f16,$f18
    1fb0:	4604b200 	add.s	$f8,$f22,$f4
    1fb4:	46083282 	mul.s	$f10,$f6,$f8
    1fb8:	44065000 	mfc1	a2,$f10
    1fbc:	0c000000 	jal	0 <EnRr_Init>
    1fc0:	00000000 	nop
    1fc4:	3c050000 	lui	a1,0x0
    1fc8:	24a50000 	addiu	a1,a1,0
    1fcc:	02802025 	move	a0,s4
    1fd0:	0c000000 	jal	0 <EnRr_Init>
    1fd4:	240605f7 	li	a2,1527
    1fd8:	0c000000 	jal	0 <EnRr_Init>
    1fdc:	00000000 	nop
    1fe0:	26940040 	addiu	s4,s4,64
    1fe4:	27a400b8 	addiu	a0,sp,184
    1fe8:	0c000000 	jal	0 <EnRr_Init>
    1fec:	02402825 	move	a1,s2
    1ff0:	2631000c 	addiu	s1,s1,12
    1ff4:	2401003c 	li	at,60
    1ff8:	2652000c 	addiu	s2,s2,12
    1ffc:	1621ffd2 	bne	s1,at,1f48 <EnRr_Draw+0x1b4>
    2000:	26100040 	addiu	s0,s0,64
    2004:	8e790024 	lw	t9,36(s3)
    2008:	8e780028 	lw	t8,40(s3)
    200c:	27a400b8 	addiu	a0,sp,184
    2010:	ae790388 	sw	t9,904(s3)
    2014:	8e79002c 	lw	t9,44(s3)
    2018:	2665037c 	addiu	a1,s3,892
    201c:	ae78038c 	sw	t8,908(s3)
    2020:	0c000000 	jal	0 <EnRr_Init>
    2024:	ae790390 	sw	t9,912(s3)
    2028:	8faa00a8 	lw	t2,168(sp)
    202c:	3c0d0600 	lui	t5,0x600
    2030:	25ad0470 	addiu	t5,t5,1136
    2034:	8d4202d0 	lw	v0,720(t2)
    2038:	3c0cde00 	lui	t4,0xde00
    203c:	3c060000 	lui	a2,0x0
    2040:	244b0008 	addiu	t3,v0,8
    2044:	ad4b02d0 	sw	t3,720(t2)
    2048:	ac4d0004 	sw	t5,4(v0)
    204c:	ac4c0000 	sw	t4,0(v0)
    2050:	8fae00cc 	lw	t6,204(sp)
    2054:	24c60000 	addiu	a2,a2,0
    2058:	27a40098 	addiu	a0,sp,152
    205c:	2407060f 	li	a3,1551
    2060:	0c000000 	jal	0 <EnRr_Init>
    2064:	8dc50000 	lw	a1,0(t6)
    2068:	866201f2 	lh	v0,498(s3)
    206c:	1040004f 	beqz	v0,21ac <EnRr_Draw+0x418>
    2070:	2450ffff 	addiu	s0,v0,-1
    2074:	926f0114 	lbu	t7,276(s3)
    2078:	00108400 	sll	s0,s0,0x10
    207c:	00108403 	sra	s0,s0,0x10
    2080:	32190001 	andi	t9,s0,0x1
    2084:	25f80001 	addiu	t8,t7,1
    2088:	17200048 	bnez	t9,21ac <EnRr_Draw+0x418>
    208c:	a2780114 	sb	t8,276(s3)
    2090:	3c014120 	lui	at,0x4120
    2094:	4481a000 	mtc1	at,$f20
    2098:	0c000000 	jal	0 <EnRr_Init>
    209c:	4600a306 	mov.s	$f12,$f20
    20a0:	00105883 	sra	t3,s0,0x2
    20a4:	240a0004 	li	t2,4
    20a8:	014b6023 	subu	t4,t2,t3
    20ac:	2402000c 	li	v0,12
    20b0:	01820019 	multu	t4,v0
    20b4:	00107043 	sra	t6,s0,0x1
    20b8:	31cf0003 	andi	t7,t6,0x3
    20bc:	3c190000 	lui	t9,0x0
    20c0:	27390000 	addiu	t9,t9,0
    20c4:	4600a306 	mov.s	$f12,$f20
    20c8:	00006812 	mflo	t5
    20cc:	026d8821 	addu	s1,s3,t5
    20d0:	c6300388 	lwc1	$f16,904(s1)
    20d4:	01e20019 	multu	t7,v0
    20d8:	0000c012 	mflo	t8
    20dc:	03199021 	addu	s2,t8,t9
    20e0:	c6520000 	lwc1	$f18,0(s2)
    20e4:	46128100 	add.s	$f4,$f16,$f18
    20e8:	46040180 	add.s	$f6,$f0,$f4
    20ec:	0c000000 	jal	0 <EnRr_Init>
    20f0:	e7a6007c 	swc1	$f6,124(sp)
    20f4:	c628038c 	lwc1	$f8,908(s1)
    20f8:	c64a0004 	lwc1	$f10,4(s2)
    20fc:	4600a306 	mov.s	$f12,$f20
    2100:	460a4400 	add.s	$f16,$f8,$f10
    2104:	46100480 	add.s	$f18,$f0,$f16
    2108:	0c000000 	jal	0 <EnRr_Init>
    210c:	e7b20080 	swc1	$f18,128(sp)
    2110:	c6240390 	lwc1	$f4,912(s1)
    2114:	c6460008 	lwc1	$f6,8(s2)
    2118:	8fa400cc 	lw	a0,204(sp)
    211c:	02602825 	move	a1,s3
    2120:	46062200 	add.s	$f8,$f4,$f6
    2124:	27a6007c 	addiu	a2,sp,124
    2128:	24070096 	li	a3,150
    212c:	240d0096 	li	t5,150
    2130:	46080280 	add.s	$f10,$f0,$f8
    2134:	240e0096 	li	t6,150
    2138:	240f00fa 	li	t7,250
    213c:	241800eb 	li	t8,235
    2140:	e7aa0084 	swc1	$f10,132(sp)
    2144:	966a0112 	lhu	t2,274(s3)
    2148:	241900f5 	li	t9,245
    214c:	3c014040 	lui	at,0x4040
    2150:	314b4000 	andi	t3,t2,0x4000
    2154:	1160000c 	beqz	t3,2188 <EnRr_Draw+0x3f4>
    2158:	240a00ff 	li	t2,255
    215c:	240cffff 	li	t4,-1
    2160:	afac0018 	sw	t4,24(sp)
    2164:	8fa400cc 	lw	a0,204(sp)
    2168:	02602825 	move	a1,s3
    216c:	27a6007c 	addiu	a2,sp,124
    2170:	24070064 	li	a3,100
    2174:	afa00010 	sw	zero,16(sp)
    2178:	0c000000 	jal	0 <EnRr_Init>
    217c:	afa00014 	sw	zero,20(sp)
    2180:	1000000b 	b	21b0 <EnRr_Draw+0x41c>
    2184:	8fbf005c 	lw	ra,92(sp)
    2188:	44818000 	mtc1	at,$f16
    218c:	afad0010 	sw	t5,16(sp)
    2190:	afae0014 	sw	t6,20(sp)
    2194:	afaf0018 	sw	t7,24(sp)
    2198:	afb8001c 	sw	t8,28(sp)
    219c:	afb90020 	sw	t9,32(sp)
    21a0:	afaa0024 	sw	t2,36(sp)
    21a4:	0c000000 	jal	0 <EnRr_Init>
    21a8:	e7b00028 	swc1	$f16,40(sp)
    21ac:	8fbf005c 	lw	ra,92(sp)
    21b0:	d7b40038 	ldc1	$f20,56(sp)
    21b4:	d7b60040 	ldc1	$f22,64(sp)
    21b8:	8fb00048 	lw	s0,72(sp)
    21bc:	8fb1004c 	lw	s1,76(sp)
    21c0:	8fb20050 	lw	s2,80(sp)
    21c4:	8fb30054 	lw	s3,84(sp)
    21c8:	8fb40058 	lw	s4,88(sp)
    21cc:	03e00008 	jr	ra
    21d0:	27bd00c8 	addiu	sp,sp,200
	...
