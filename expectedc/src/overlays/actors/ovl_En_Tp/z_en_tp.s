
build/src/overlays/actors/ovl_En_Tp/z_en_tp.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B20DE0>:
       0:	03e00008 	jr	ra
       4:	ac850154 	sw	a1,340(a0)

00000008 <EnTp_Init>:
       8:	27bdff90 	addiu	sp,sp,-112
       c:	afb60060 	sw	s6,96(sp)
      10:	00a0b025 	move	s6,a1
      14:	afbf006c 	sw	ra,108(sp)
      18:	afb30054 	sw	s3,84(sp)
      1c:	3c050000 	lui	a1,0x0
      20:	00809825 	move	s3,a0
      24:	afbe0068 	sw	s8,104(sp)
      28:	afb70064 	sw	s7,100(sp)
      2c:	afb5005c 	sw	s5,92(sp)
      30:	afb40058 	sw	s4,88(sp)
      34:	afb20050 	sw	s2,80(sp)
      38:	afb1004c 	sw	s1,76(sp)
      3c:	afb00048 	sw	s0,72(sp)
      40:	f7b80040 	sdc1	$f24,64(sp)
      44:	f7b60038 	sdc1	$f22,56(sp)
      48:	f7b40030 	sdc1	$f20,48(sp)
      4c:	0c000000 	jal	0 <func_80B20DE0>
      50:	24a50000 	addiu	a1,a1,0
      54:	3c0f0000 	lui	t7,0x0
      58:	240e0003 	li	t6,3
      5c:	25ef0000 	addiu	t7,t7,0
      60:	3c060000 	lui	a2,0x0
      64:	3c073e0f 	lui	a3,0x3e0f
      68:	a26e001f 	sb	t6,31(s3)
      6c:	ae6f0098 	sw	t7,152(s3)
      70:	34e75c29 	ori	a3,a3,0x5c29
      74:	24c60000 	addiu	a2,a2,0
      78:	266400b4 	addiu	a0,s3,180
      7c:	0c000000 	jal	0 <func_80B20DE0>
      80:	24050000 	li	a1,0
      84:	24180001 	li	t8,1
      88:	241900ff 	li	t9,255
      8c:	26700174 	addiu	s0,s3,372
      90:	ae600150 	sw	zero,336(s3)
      94:	a27800af 	sb	t8,175(s3)
      98:	0260a825 	move	s5,s3
      9c:	a679015e 	sh	t9,350(s3)
      a0:	02002825 	move	a1,s0
      a4:	0c000000 	jal	0 <func_80B20DE0>
      a8:	02c02025 	move	a0,s6
      ac:	3c070000 	lui	a3,0x0
      b0:	26680194 	addiu	t0,s3,404
      b4:	afa80010 	sw	t0,16(sp)
      b8:	24e70000 	addiu	a3,a3,0
      bc:	02c02025 	move	a0,s6
      c0:	02002825 	move	a1,s0
      c4:	0c000000 	jal	0 <func_80B20DE0>
      c8:	02603025 	move	a2,s3
      cc:	8663001c 	lh	v1,28(s3)
      d0:	24090006 	li	t1,6
      d4:	240c0008 	li	t4,8
      d8:	04610051 	bgez	v1,220 <EnTp_Init+0x218>
      dc:	00000000 	nop
      e0:	926a0185 	lbu	t2,389(s3)
      e4:	8e6d0190 	lw	t5,400(s3)
      e8:	a2690117 	sb	t1,279(s3)
      ec:	354b0004 	ori	t3,t2,0x4
      f0:	a660015a 	sh	zero,346(s3)
      f4:	a26b0185 	sb	t3,389(s3)
      f8:	a5ac0036 	sh	t4,54(t5)
      fc:	8e620190 	lw	v0,400(s3)
     100:	02602025 	move	a0,s3
     104:	844e0036 	lh	t6,54(v0)
     108:	0c000000 	jal	0 <func_80B20DE0>
     10c:	a44e002e 	sh	t6,46(v0)
     110:	8e780024 	lw	t8,36(s3)
     114:	8e790004 	lw	t9,4(s3)
     118:	8e6f0028 	lw	t7,40(s3)
     11c:	ae780038 	sw	t8,56(s3)
     120:	8e78002c 	lw	t8,44(s3)
     124:	37280015 	ori	t0,t9,0x15
     128:	ae680004 	sw	t0,4(s3)
     12c:	02602025 	move	a0,s3
     130:	3c053fc0 	lui	a1,0x3fc0
     134:	ae6f003c 	sw	t7,60(s3)
     138:	0c000000 	jal	0 <func_80B20DE0>
     13c:	ae780040 	sw	t8,64(s3)
     140:	3c013f40 	lui	at,0x3f40
     144:	4481c000 	mtc1	at,$f24
     148:	3c0140c0 	lui	at,0x40c0
     14c:	4481b000 	mtc1	at,$f22
     150:	3c010000 	lui	at,0x0
     154:	c4340000 	lwc1	$f20,0(at)
     158:	00008825 	move	s1,zero
     15c:	0000a025 	move	s4,zero
     160:	26d71c24 	addiu	s7,s6,7204
     164:	241e0002 	li	s8,2
     168:	c6640028 	lwc1	$f4,40(s3)
     16c:	8e670024 	lw	a3,36(s3)
     170:	02e02025 	move	a0,s7
     174:	e7a40010 	swc1	$f4,16(sp)
     178:	c666002c 	lwc1	$f6,44(s3)
     17c:	afb40024 	sw	s4,36(sp)
     180:	afa00020 	sw	zero,32(sp)
     184:	afa0001c 	sw	zero,28(sp)
     188:	afa00018 	sw	zero,24(sp)
     18c:	02c02825 	move	a1,s6
     190:	24060035 	li	a2,53
     194:	0c000000 	jal	0 <func_80B20DE0>
     198:	e7a60014 	swc1	$f6,20(sp)
     19c:	1040001a 	beqz	v0,208 <EnTp_Init+0x200>
     1a0:	00408025 	move	s0,v0
     1a4:	aea2011c 	sw	v0,284(s5)
     1a8:	00110823 	negu	at,s1
     1ac:	26290001 	addiu	t1,s1,1
     1b0:	00019080 	sll	s2,at,0x2
     1b4:	4405a000 	mfc1	a1,$f20
     1b8:	ac550118 	sw	s5,280(v0)
     1bc:	a4490162 	sh	t1,354(v0)
     1c0:	ac5301d4 	sw	s3,468(v0)
     1c4:	02419021 	addu	s2,s2,at
     1c8:	0c000000 	jal	0 <func_80B20DE0>
     1cc:	00402025 	move	a0,v0
     1d0:	44914000 	mtc1	s1,$f8
     1d4:	163e0006 	bne	s1,s8,1f0 <EnTp_Init+0x1e8>
     1d8:	468042a0 	cvt.s.w	$f10,$f8
     1dc:	8e0a0004 	lw	t2,4(s0)
     1e0:	240c0001 	li	t4,1
     1e4:	ae0c0150 	sw	t4,336(s0)
     1e8:	354b0015 	ori	t3,t2,0x15
     1ec:	ae0b0004 	sw	t3,4(s0)
     1f0:	46185402 	mul.s	$f16,$f10,$f24
     1f4:	a612015c 	sh	s2,348(s0)
     1f8:	a612015a 	sh	s2,346(s0)
     1fc:	0200a825 	move	s5,s0
     200:	4610b481 	sub.s	$f18,$f22,$f16
     204:	e612016c 	swc1	$f18,364(s0)
     208:	26310001 	addiu	s1,s1,1
     20c:	24010007 	li	at,7
     210:	5621ffd6 	bnel	s1,at,16c <EnTp_Init+0x164>
     214:	c6640028 	lwc1	$f4,40(s3)
     218:	1000000a 	b	244 <EnTp_Init+0x23c>
     21c:	8fbf006c 	lw	ra,108(sp)
     220:	14600005 	bnez	v1,238 <EnTp_Init+0x230>
     224:	00000000 	nop
     228:	0c000000 	jal	0 <func_80B20DE0>
     22c:	02602025 	move	a0,s3
     230:	10000004 	b	244 <EnTp_Init+0x23c>
     234:	8fbf006c 	lw	ra,108(sp)
     238:	0c000000 	jal	0 <func_80B20DE0>
     23c:	02602025 	move	a0,s3
     240:	8fbf006c 	lw	ra,108(sp)
     244:	d7b40030 	ldc1	$f20,48(sp)
     248:	d7b60038 	ldc1	$f22,56(sp)
     24c:	d7b80040 	ldc1	$f24,64(sp)
     250:	8fb00048 	lw	s0,72(sp)
     254:	8fb1004c 	lw	s1,76(sp)
     258:	8fb20050 	lw	s2,80(sp)
     25c:	8fb30054 	lw	s3,84(sp)
     260:	8fb40058 	lw	s4,88(sp)
     264:	8fb5005c 	lw	s5,92(sp)
     268:	8fb60060 	lw	s6,96(sp)
     26c:	8fb70064 	lw	s7,100(sp)
     270:	8fbe0068 	lw	s8,104(sp)
     274:	03e00008 	jr	ra
     278:	27bd0070 	addiu	sp,sp,112

0000027c <EnTp_Destroy>:
     27c:	27bdffe8 	addiu	sp,sp,-24
     280:	00803025 	move	a2,a0
     284:	afbf0014 	sw	ra,20(sp)
     288:	00a02025 	move	a0,a1
     28c:	0c000000 	jal	0 <func_80B20DE0>
     290:	24c50174 	addiu	a1,a2,372
     294:	8fbf0014 	lw	ra,20(sp)
     298:	27bd0018 	addiu	sp,sp,24
     29c:	03e00008 	jr	ra
     2a0:	00000000 	nop

000002a4 <func_80B21084>:
     2a4:	27bdffe8 	addiu	sp,sp,-24
     2a8:	afbf0014 	sw	ra,20(sp)
     2ac:	240e0002 	li	t6,2
     2b0:	3c050000 	lui	a1,0x0
     2b4:	ac8e014c 	sw	t6,332(a0)
     2b8:	0c000000 	jal	0 <func_80B20DE0>
     2bc:	24a50000 	addiu	a1,a1,0
     2c0:	8fbf0014 	lw	ra,20(sp)
     2c4:	27bd0018 	addiu	sp,sp,24
     2c8:	03e00008 	jr	ra
     2cc:	00000000 	nop

000002d0 <func_80B210B0>:
     2d0:	27bdffc8 	addiu	sp,sp,-56
     2d4:	afbf0024 	sw	ra,36(sp)
     2d8:	afb00020 	sw	s0,32(sp)
     2dc:	afa5003c 	sw	a1,60(sp)
     2e0:	848e001c 	lh	t6,28(a0)
     2e4:	2401000b 	li	at,11
     2e8:	00808025 	move	s0,a0
     2ec:	55c1000b 	bnel	t6,at,31c <func_80B210B0+0x4c>
     2f0:	8e190150 	lw	t9,336(s0)
     2f4:	8c980118 	lw	t8,280(a0)
     2f8:	240f0001 	li	t7,1
     2fc:	ac8f014c 	sw	t7,332(a0)
     300:	57000066 	bnezl	t8,49c <func_80B210B0+0x1cc>
     304:	8fbf0024 	lw	ra,36(sp)
     308:	0c000000 	jal	0 <func_80B20DE0>
     30c:	00000000 	nop
     310:	10000062 	b	49c <func_80B210B0+0x1cc>
     314:	8fbf0024 	lw	ra,36(sp)
     318:	8e190150 	lw	t9,336(s0)
     31c:	3c013f80 	lui	at,0x3f80
     320:	53200005 	beqzl	t9,338 <func_80B210B0+0x68>
     324:	8e0201d4 	lw	v0,468(s0)
     328:	8e080004 	lw	t0,4(s0)
     32c:	35090001 	ori	t1,t0,0x1
     330:	ae090004 	sw	t1,4(s0)
     334:	8e0201d4 	lw	v0,468(s0)
     338:	8c4a0150 	lw	t2,336(v0)
     33c:	51400020 	beqzl	t2,3c0 <func_80B210B0+0xf0>
     340:	8e090118 	lw	t1,280(s0)
     344:	44800000 	mtc1	zero,$f0
     348:	c60a0028 	lwc1	$f10,40(s0)
     34c:	4600010d 	trunc.w.s	$f4,$f0
     350:	e6000168 	swc1	$f0,360(s0)
     354:	e6000060 	swc1	$f0,96(s0)
     358:	44032000 	mfc1	v1,$f4
     35c:	00000000 	nop
     360:	00036400 	sll	t4,v1,0x10
     364:	000c6c03 	sra	t5,t4,0x10
     368:	448d3000 	mtc1	t5,$f6
     36c:	a6030160 	sh	v1,352(s0)
     370:	46803220 	cvt.s.w	$f8,$f6
     374:	e6080068 	swc1	$f8,104(s0)
     378:	c450000c 	lwc1	$f16,12(v0)
     37c:	4610503c 	c.lt.s	$f10,$f16
     380:	00000000 	nop
     384:	45020006 	bc1fl	3a0 <func_80B210B0+0xd0>
     388:	8e180118 	lw	t8,280(s0)
     38c:	8e0e0004 	lw	t6,4(s0)
     390:	2401fffe 	li	at,-2
     394:	01c17824 	and	t7,t6,at
     398:	ae0f0004 	sw	t7,4(s0)
     39c:	8e180118 	lw	t8,280(s0)
     3a0:	8f080100 	lw	t0,256(t8)
     3a4:	ae080024 	sw	t0,36(s0)
     3a8:	8f190104 	lw	t9,260(t8)
     3ac:	ae190028 	sw	t9,40(s0)
     3b0:	8f080108 	lw	t0,264(t8)
     3b4:	10000038 	b	498 <func_80B210B0+0x1c8>
     3b8:	ae08002c 	sw	t0,44(s0)
     3bc:	8e090118 	lw	t1,280(s0)
     3c0:	44811000 	mtc1	at,$f2
     3c4:	3c014080 	lui	at,0x4080
     3c8:	44812000 	mtc1	at,$f4
     3cc:	c5320028 	lwc1	$f18,40(t1)
     3d0:	44800000 	mtc1	zero,$f0
     3d4:	44061000 	mfc1	a2,$f2
     3d8:	46049181 	sub.s	$f6,$f18,$f4
     3dc:	44071000 	mfc1	a3,$f2
     3e0:	26040028 	addiu	a0,s0,40
     3e4:	e7a00010 	swc1	$f0,16(sp)
     3e8:	44053000 	mfc1	a1,$f6
     3ec:	0c000000 	jal	0 <func_80B20DE0>
     3f0:	00000000 	nop
     3f4:	8e0201d4 	lw	v0,468(s0)
     3f8:	844a00b6 	lh	t2,182(v0)
     3fc:	254b4000 	addiu	t3,t2,16384
     400:	a7ab0036 	sh	t3,54(sp)
     404:	860d015a 	lh	t5,346(s0)
     408:	844c015c 	lh	t4,348(v0)
     40c:	018d2021 	addu	a0,t4,t5
     410:	00800821 	move	at,a0
     414:	00042140 	sll	a0,a0,0x5
     418:	00812023 	subu	a0,a0,at
     41c:	00042080 	sll	a0,a0,0x2
     420:	00812021 	addu	a0,a0,at
     424:	00042100 	sll	a0,a0,0x4
     428:	00042400 	sll	a0,a0,0x10
     42c:	00042403 	sra	a0,a0,0x10
     430:	0c000000 	jal	0 <func_80B20DE0>
     434:	a7a40034 	sh	a0,52(sp)
     438:	e7a0002c 	swc1	$f0,44(sp)
     43c:	0c000000 	jal	0 <func_80B20DE0>
     440:	87a40036 	lh	a0,54(sp)
     444:	c608016c 	lwc1	$f8,364(s0)
     448:	c7b0002c 	lwc1	$f16,44(sp)
     44c:	c6040008 	lwc1	$f4,8(s0)
     450:	46080282 	mul.s	$f10,$f0,$f8
     454:	00000000 	nop
     458:	46105482 	mul.s	$f18,$f10,$f16
     45c:	46049180 	add.s	$f6,$f18,$f4
     460:	e6060024 	swc1	$f6,36(s0)
     464:	0c000000 	jal	0 <func_80B20DE0>
     468:	87a40034 	lh	a0,52(sp)
     46c:	e7a0002c 	swc1	$f0,44(sp)
     470:	0c000000 	jal	0 <func_80B20DE0>
     474:	87a40036 	lh	a0,54(sp)
     478:	c608016c 	lwc1	$f8,364(s0)
     47c:	c7b0002c 	lwc1	$f16,44(sp)
     480:	c6040010 	lwc1	$f4,16(s0)
     484:	46080282 	mul.s	$f10,$f0,$f8
     488:	00000000 	nop
     48c:	46105482 	mul.s	$f18,$f10,$f16
     490:	46049180 	add.s	$f6,$f18,$f4
     494:	e606002c 	swc1	$f6,44(s0)
     498:	8fbf0024 	lw	ra,36(sp)
     49c:	8fb00020 	lw	s0,32(sp)
     4a0:	27bd0038 	addiu	sp,sp,56
     4a4:	03e00008 	jr	ra
     4a8:	00000000 	nop

000004ac <func_80B2128C>:
     4ac:	27bdffe8 	addiu	sp,sp,-24
     4b0:	afbf0014 	sw	ra,20(sp)
     4b4:	240e0007 	li	t6,7
     4b8:	240f00c8 	li	t7,200
     4bc:	3c050000 	lui	a1,0x0
     4c0:	ac8e014c 	sw	t6,332(a0)
     4c4:	a48f015a 	sh	t7,346(a0)
     4c8:	0c000000 	jal	0 <func_80B20DE0>
     4cc:	24a50000 	addiu	a1,a1,0
     4d0:	8fbf0014 	lw	ra,20(sp)
     4d4:	27bd0018 	addiu	sp,sp,24
     4d8:	03e00008 	jr	ra
     4dc:	00000000 	nop

000004e0 <func_80B212C0>:
     4e0:	27bdffd0 	addiu	sp,sp,-48
     4e4:	afbf0024 	sw	ra,36(sp)
     4e8:	afb00020 	sw	s0,32(sp)
     4ec:	afa50034 	sw	a1,52(sp)
     4f0:	8ca21c44 	lw	v0,7236(a1)
     4f4:	3c0141f0 	lui	at,0x41f0
     4f8:	44813000 	mtc1	at,$f6
     4fc:	c4440028 	lwc1	$f4,40(v0)
     500:	44805000 	mtc1	zero,$f10
     504:	00808025 	move	s0,a0
     508:	46062200 	add.s	$f8,$f4,$f6
     50c:	24840028 	addiu	a0,a0,40
     510:	3c063f80 	lui	a2,0x3f80
     514:	3c073f00 	lui	a3,0x3f00
     518:	44054000 	mfc1	a1,$f8
     51c:	afa2002c 	sw	v0,44(sp)
     520:	0c000000 	jal	0 <func_80B20DE0>
     524:	e7aa0010 	swc1	$f10,16(sp)
     528:	3c070000 	lui	a3,0x0
     52c:	3c0f0000 	lui	t7,0x0
     530:	24e70000 	addiu	a3,a3,0
     534:	25ef0000 	addiu	t7,t7,0
     538:	afaf0014 	sw	t7,20(sp)
     53c:	afa70010 	sw	a3,16(sp)
     540:	24043064 	li	a0,12388
     544:	260500e4 	addiu	a1,s0,228
     548:	0c000000 	jal	0 <func_80B20DE0>
     54c:	24060004 	li	a2,4
     550:	92020184 	lbu	v0,388(s0)
     554:	30580002 	andi	t8,v0,0x2
     558:	13000008 	beqz	t8,57c <func_80B212C0+0x9c>
     55c:	3059fffd 	andi	t9,v0,0xfffd
     560:	a2190184 	sb	t9,388(s0)
     564:	8fa8002c 	lw	t0,44(sp)
     568:	8e090178 	lw	t1,376(s0)
     56c:	240a0001 	li	t2,1
     570:	55090003 	bnel	t0,t1,580 <func_80B212C0+0xa0>
     574:	86020160 	lh	v0,352(s0)
     578:	a60a015a 	sh	t2,346(s0)
     57c:	86020160 	lh	v0,352(s0)
     580:	284100ff 	slti	at,v0,255
     584:	10200002 	beqz	at,590 <func_80B212C0+0xb0>
     588:	244b000f 	addiu	t3,v0,15
     58c:	a60b0160 	sh	t3,352(s0)
     590:	0c000000 	jal	0 <func_80B20DE0>
     594:	c60c0168 	lwc1	$f12,360(s0)
     598:	44808000 	mtc1	zero,$f16
     59c:	00000000 	nop
     5a0:	46100032 	c.eq.s	$f0,$f16
     5a4:	00000000 	nop
     5a8:	45000005 	bc1f	5c0 <func_80B212C0+0xe0>
     5ac:	00000000 	nop
     5b0:	0c000000 	jal	0 <func_80B20DE0>
     5b4:	00000000 	nop
     5b8:	46000480 	add.s	$f18,$f0,$f0
     5bc:	e6120170 	swc1	$f18,368(s0)
     5c0:	0c000000 	jal	0 <func_80B20DE0>
     5c4:	c60c0168 	lwc1	$f12,360(s0)
     5c8:	3c010000 	lui	at,0x0
     5cc:	c4220000 	lwc1	$f2,0(at)
     5d0:	3c014000 	lui	at,0x4000
     5d4:	44812000 	mtc1	at,$f4
     5d8:	c6060170 	lwc1	$f6,368(s0)
     5dc:	c6100028 	lwc1	$f16,40(s0)
     5e0:	3c063dcc 	lui	a2,0x3dcc
     5e4:	46062200 	add.s	$f8,$f4,$f6
     5e8:	c6040168 	lwc1	$f4,360(s0)
     5ec:	44071000 	mfc1	a3,$f2
     5f0:	34c6cccd 	ori	a2,a2,0xcccd
     5f4:	46080282 	mul.s	$f10,$f0,$f8
     5f8:	46022180 	add.s	$f6,$f4,$f2
     5fc:	44804000 	mtc1	zero,$f8
     600:	26040068 	addiu	a0,s0,104
     604:	3c054020 	lui	a1,0x4020
     608:	e6060168 	swc1	$f6,360(s0)
     60c:	460a8480 	add.s	$f18,$f16,$f10
     610:	e6120028 	swc1	$f18,40(s0)
     614:	0c000000 	jal	0 <func_80B20DE0>
     618:	e7a80010 	swc1	$f8,16(sp)
     61c:	860c015a 	lh	t4,346(s0)
     620:	26040032 	addiu	a0,s0,50
     624:	24060001 	li	a2,1
     628:	258dffff 	addiu	t5,t4,-1
     62c:	a60d015a 	sh	t5,346(s0)
     630:	860e015a 	lh	t6,346(s0)
     634:	240702ee 	li	a3,750
     638:	11c00007 	beqz	t6,658 <func_80B212C0+0x178>
     63c:	00000000 	nop
     640:	8605008a 	lh	a1,138(s0)
     644:	0c000000 	jal	0 <func_80B20DE0>
     648:	afa00010 	sw	zero,16(sp)
     64c:	860f0032 	lh	t7,50(s0)
     650:	10000003 	b	660 <func_80B212C0+0x180>
     654:	a60f00b6 	sh	t7,182(s0)
     658:	0c000000 	jal	0 <func_80B20DE0>
     65c:	02002025 	move	a0,s0
     660:	8fbf0024 	lw	ra,36(sp)
     664:	8fb00020 	lw	s0,32(sp)
     668:	27bd0030 	addiu	sp,sp,48
     66c:	03e00008 	jr	ra
     670:	00000000 	nop

00000674 <func_80B21454>:
     674:	27bdffe8 	addiu	sp,sp,-24
     678:	afbf0014 	sw	ra,20(sp)
     67c:	848f001c 	lh	t7,28(a0)
     680:	240e0002 	li	t6,2
     684:	a48e015a 	sh	t6,346(a0)
     688:	05e1000f 	bgez	t7,6c8 <func_80B21454+0x54>
     68c:	2418000d 	li	t8,13
     690:	8c82011c 	lw	v0,284(a0)
     694:	2403000b 	li	v1,11
     698:	24053866 	li	a1,14438
     69c:	50400007 	beqzl	v0,6bc <func_80B21454+0x48>
     6a0:	a498015a 	sh	t8,346(a0)
     6a4:	a443001c 	sh	v1,28(v0)
     6a8:	a04000af 	sb	zero,175(v0)
     6ac:	8c42011c 	lw	v0,284(v0)
     6b0:	5440fffd 	bnezl	v0,6a8 <func_80B21454+0x34>
     6b4:	a443001c 	sh	v1,28(v0)
     6b8:	a498015a 	sh	t8,346(a0)
     6bc:	0c000000 	jal	0 <func_80B20DE0>
     6c0:	afa40018 	sw	a0,24(sp)
     6c4:	8fa40018 	lw	a0,24(sp)
     6c8:	24190001 	li	t9,1
     6cc:	3c050000 	lui	a1,0x0
     6d0:	ac99014c 	sw	t9,332(a0)
     6d4:	0c000000 	jal	0 <func_80B20DE0>
     6d8:	24a50000 	addiu	a1,a1,0
     6dc:	8fbf0014 	lw	ra,20(sp)
     6e0:	27bd0018 	addiu	sp,sp,24
     6e4:	03e00008 	jr	ra
     6e8:	00000000 	nop

000006ec <func_80B214CC>:
     6ec:	27bdff70 	addiu	sp,sp,-144
     6f0:	3c0e0000 	lui	t6,0x0
     6f4:	afbf0064 	sw	ra,100(sp)
     6f8:	afb40060 	sw	s4,96(sp)
     6fc:	afb3005c 	sw	s3,92(sp)
     700:	afb20058 	sw	s2,88(sp)
     704:	afb10054 	sw	s1,84(sp)
     708:	afb00050 	sw	s0,80(sp)
     70c:	f7b40048 	sdc1	$f20,72(sp)
     710:	25ce0000 	addiu	t6,t6,0
     714:	8dd80000 	lw	t8,0(t6)
     718:	27b00078 	addiu	s0,sp,120
     71c:	3c190000 	lui	t9,0x0
     720:	ae180000 	sw	t8,0(s0)
     724:	8dcf0004 	lw	t7,4(t6)
     728:	27390000 	addiu	t9,t9,0
     72c:	27b1006c 	addiu	s1,sp,108
     730:	ae0f0004 	sw	t7,4(s0)
     734:	8dd80008 	lw	t8,8(t6)
     738:	00809025 	move	s2,a0
     73c:	00a0a025 	move	s4,a1
     740:	ae180008 	sw	t8,8(s0)
     744:	8f290000 	lw	t1,0(t9)
     748:	ae290000 	sw	t1,0(s1)
     74c:	8f280004 	lw	t0,4(t9)
     750:	ae280004 	sw	t0,4(s1)
     754:	8f290008 	lw	t1,8(t9)
     758:	ae290008 	sw	t1,8(s1)
     75c:	848a015a 	lh	t2,346(a0)
     760:	254bffff 	addiu	t3,t2,-1
     764:	a48b015a 	sh	t3,346(a0)
     768:	848c015a 	lh	t4,346(a0)
     76c:	5d8000a3 	bgtzl	t4,9fc <func_80B214CC+0x310>
     770:	8fbf0064 	lw	ra,100(sp)
     774:	848d001c 	lh	t5,28(a0)
     778:	2401000c 	li	at,12
     77c:	26931c24 	addiu	s3,s4,7204
     780:	55a10071 	bnel	t5,at,948 <func_80B214CC+0x25c>
     784:	3c013f00 	lui	at,0x3f00
     788:	0c000000 	jal	0 <func_80B20DE0>
     78c:	00000000 	nop
     790:	3c013f00 	lui	at,0x3f00
     794:	4481a000 	mtc1	at,$f20
     798:	3c014170 	lui	at,0x4170
     79c:	44813000 	mtc1	at,$f6
     7a0:	46140101 	sub.s	$f4,$f0,$f20
     7a4:	c64a0024 	lwc1	$f10,36(s2)
     7a8:	46062202 	mul.s	$f8,$f4,$f6
     7ac:	460a4400 	add.s	$f16,$f8,$f10
     7b0:	0c000000 	jal	0 <func_80B20DE0>
     7b4:	e7b0006c 	swc1	$f16,108(sp)
     7b8:	46140481 	sub.s	$f18,$f0,$f20
     7bc:	3c014170 	lui	at,0x4170
     7c0:	44812000 	mtc1	at,$f4
     7c4:	c648002c 	lwc1	$f8,44(s2)
     7c8:	46049182 	mul.s	$f6,$f18,$f4
     7cc:	46083280 	add.s	$f10,$f6,$f8
     7d0:	0c000000 	jal	0 <func_80B20DE0>
     7d4:	e7aa0074 	swc1	$f10,116(sp)
     7d8:	46140401 	sub.s	$f16,$f0,$f20
     7dc:	3c0140a0 	lui	at,0x40a0
     7e0:	44819000 	mtc1	at,$f18
     7e4:	c6460028 	lwc1	$f6,40(s2)
     7e8:	240e0064 	li	t6,100
     7ec:	46128102 	mul.s	$f4,$f16,$f18
     7f0:	240f00ff 	li	t7,255
     7f4:	241800ff 	li	t8,255
     7f8:	241900ff 	li	t9,255
     7fc:	240800ff 	li	t0,255
     800:	240900ff 	li	t1,255
     804:	240a0001 	li	t2,1
     808:	46062200 	add.s	$f8,$f4,$f6
     80c:	240b0009 	li	t3,9
     810:	240c0001 	li	t4,1
     814:	afac003c 	sw	t4,60(sp)
     818:	e7a80070 	swc1	$f8,112(sp)
     81c:	afab0038 	sw	t3,56(sp)
     820:	afaa0034 	sw	t2,52(sp)
     824:	afa90030 	sw	t1,48(sp)
     828:	afa80024 	sw	t0,36(sp)
     82c:	afb90020 	sw	t9,32(sp)
     830:	afb8001c 	sw	t8,28(sp)
     834:	afaf0018 	sw	t7,24(sp)
     838:	afae0010 	sw	t6,16(sp)
     83c:	afa0002c 	sw	zero,44(sp)
     840:	afa00028 	sw	zero,40(sp)
     844:	afa00014 	sw	zero,20(sp)
     848:	02802025 	move	a0,s4
     84c:	02202825 	move	a1,s1
     850:	02003025 	move	a2,s0
     854:	0c000000 	jal	0 <func_80B20DE0>
     858:	02003825 	move	a3,s0
     85c:	0c000000 	jal	0 <func_80B20DE0>
     860:	00000000 	nop
     864:	46140281 	sub.s	$f10,$f0,$f20
     868:	3c014170 	lui	at,0x4170
     86c:	44818000 	mtc1	at,$f16
     870:	c6440024 	lwc1	$f4,36(s2)
     874:	46105482 	mul.s	$f18,$f10,$f16
     878:	46049180 	add.s	$f6,$f18,$f4
     87c:	0c000000 	jal	0 <func_80B20DE0>
     880:	e7a6006c 	swc1	$f6,108(sp)
     884:	46140201 	sub.s	$f8,$f0,$f20
     888:	3c014170 	lui	at,0x4170
     88c:	44815000 	mtc1	at,$f10
     890:	c652002c 	lwc1	$f18,44(s2)
     894:	460a4402 	mul.s	$f16,$f8,$f10
     898:	46128100 	add.s	$f4,$f16,$f18
     89c:	0c000000 	jal	0 <func_80B20DE0>
     8a0:	e7a40074 	swc1	$f4,116(sp)
     8a4:	46140181 	sub.s	$f6,$f0,$f20
     8a8:	3c0140a0 	lui	at,0x40a0
     8ac:	44814000 	mtc1	at,$f8
     8b0:	c6500028 	lwc1	$f16,40(s2)
     8b4:	240d0064 	li	t5,100
     8b8:	46083282 	mul.s	$f10,$f6,$f8
     8bc:	240e00ff 	li	t6,255
     8c0:	240f00ff 	li	t7,255
     8c4:	241800ff 	li	t8,255
     8c8:	241900ff 	li	t9,255
     8cc:	240800ff 	li	t0,255
     8d0:	24090001 	li	t1,1
     8d4:	46105480 	add.s	$f18,$f10,$f16
     8d8:	240a0009 	li	t2,9
     8dc:	240b0001 	li	t3,1
     8e0:	afab003c 	sw	t3,60(sp)
     8e4:	e7b20070 	swc1	$f18,112(sp)
     8e8:	afaa0038 	sw	t2,56(sp)
     8ec:	afa90034 	sw	t1,52(sp)
     8f0:	afa80030 	sw	t0,48(sp)
     8f4:	afb90024 	sw	t9,36(sp)
     8f8:	afb80020 	sw	t8,32(sp)
     8fc:	afaf001c 	sw	t7,28(sp)
     900:	afae0018 	sw	t6,24(sp)
     904:	afad0010 	sw	t5,16(sp)
     908:	afa0002c 	sw	zero,44(sp)
     90c:	afa00028 	sw	zero,40(sp)
     910:	afa00014 	sw	zero,20(sp)
     914:	02802025 	move	a0,s4
     918:	02202825 	move	a1,s1
     91c:	02003025 	move	a2,s0
     920:	0c000000 	jal	0 <func_80B20DE0>
     924:	02003825 	move	a3,s0
     928:	02802025 	move	a0,s4
     92c:	02402825 	move	a1,s2
     930:	26460024 	addiu	a2,s2,36
     934:	0c000000 	jal	0 <func_80B20DE0>
     938:	24070050 	li	a3,80
     93c:	10000022 	b	9c8 <func_80B214CC+0x2dc>
     940:	8e42011c 	lw	v0,284(s2)
     944:	3c013f00 	lui	at,0x3f00
     948:	4481a000 	mtc1	at,$f20
     94c:	00008825 	move	s1,zero
     950:	c6440028 	lwc1	$f4,40(s2)
     954:	8e470024 	lw	a3,36(s2)
     958:	240c000a 	li	t4,10
     95c:	e7a40010 	swc1	$f4,16(sp)
     960:	c646002c 	lwc1	$f6,44(s2)
     964:	afac0024 	sw	t4,36(sp)
     968:	afa00020 	sw	zero,32(sp)
     96c:	afa0001c 	sw	zero,28(sp)
     970:	afa00018 	sw	zero,24(sp)
     974:	02602025 	move	a0,s3
     978:	02802825 	move	a1,s4
     97c:	24060035 	li	a2,53
     980:	0c000000 	jal	0 <func_80B20DE0>
     984:	e7a60014 	swc1	$f6,20(sp)
     988:	10400009 	beqz	v0,9b0 <func_80B214CC+0x2c4>
     98c:	00408025 	move	s0,v0
     990:	c6480058 	lwc1	$f8,88(s2)
     994:	00402025 	move	a0,v0
     998:	46144282 	mul.s	$f10,$f8,$f20
     99c:	44055000 	mfc1	a1,$f10
     9a0:	0c000000 	jal	0 <func_80B20DE0>
     9a4:	00000000 	nop
     9a8:	864d0160 	lh	t5,352(s2)
     9ac:	a60d0160 	sh	t5,352(s0)
     9b0:	26310001 	addiu	s1,s1,1
     9b4:	00118c00 	sll	s1,s1,0x10
     9b8:	00118c03 	sra	s1,s1,0x10
     9bc:	5a20ffe5 	blezl	s1,954 <func_80B214CC+0x268>
     9c0:	c6440028 	lwc1	$f4,40(s2)
     9c4:	8e42011c 	lw	v0,284(s2)
     9c8:	24190002 	li	t9,2
     9cc:	02402025 	move	a0,s2
     9d0:	10400007 	beqz	v0,9f0 <func_80B214CC+0x304>
     9d4:	00000000 	nop
     9d8:	ac400118 	sw	zero,280(v0)
     9dc:	8e4f011c 	lw	t7,284(s2)
     9e0:	240e000b 	li	t6,11
     9e4:	a5ee001c 	sh	t6,28(t7)
     9e8:	8e58011c 	lw	t8,284(s2)
     9ec:	a30000af 	sb	zero,175(t8)
     9f0:	0c000000 	jal	0 <func_80B20DE0>
     9f4:	ae590150 	sw	t9,336(s2)
     9f8:	8fbf0064 	lw	ra,100(sp)
     9fc:	d7b40048 	ldc1	$f20,72(sp)
     a00:	8fb00050 	lw	s0,80(sp)
     a04:	8fb10054 	lw	s1,84(sp)
     a08:	8fb20058 	lw	s2,88(sp)
     a0c:	8fb3005c 	lw	s3,92(sp)
     a10:	8fb40060 	lw	s4,96(sp)
     a14:	03e00008 	jr	ra
     a18:	27bd0090 	addiu	sp,sp,144

00000a1c <func_80B217FC>:
     a1c:	27bdffd8 	addiu	sp,sp,-40
     a20:	afbf0024 	sw	ra,36(sp)
     a24:	afb00020 	sw	s0,32(sp)
     a28:	f7b40018 	sdc1	$f20,24(sp)
     a2c:	00808025 	move	s0,a0
     a30:	0c000000 	jal	0 <func_80B20DE0>
     a34:	ac80014c 	sw	zero,332(a0)
     a38:	3c013f00 	lui	at,0x3f00
     a3c:	4481a000 	mtc1	at,$f20
     a40:	3c0140a0 	lui	at,0x40a0
     a44:	44813000 	mtc1	at,$f6
     a48:	46140101 	sub.s	$f4,$f0,$f20
     a4c:	c60a0024 	lwc1	$f10,36(s0)
     a50:	46062202 	mul.s	$f8,$f4,$f6
     a54:	46085400 	add.s	$f16,$f10,$f8
     a58:	0c000000 	jal	0 <func_80B20DE0>
     a5c:	e6100024 	swc1	$f16,36(s0)
     a60:	46140481 	sub.s	$f18,$f0,$f20
     a64:	3c0140a0 	lui	at,0x40a0
     a68:	44812000 	mtc1	at,$f4
     a6c:	c60a0028 	lwc1	$f10,40(s0)
     a70:	46049182 	mul.s	$f6,$f18,$f4
     a74:	46065200 	add.s	$f8,$f10,$f6
     a78:	0c000000 	jal	0 <func_80B20DE0>
     a7c:	e6080028 	swc1	$f8,40(s0)
     a80:	46140401 	sub.s	$f16,$f0,$f20
     a84:	3c0140a0 	lui	at,0x40a0
     a88:	44819000 	mtc1	at,$f18
     a8c:	c60a002c 	lwc1	$f10,44(s0)
     a90:	46128102 	mul.s	$f4,$f16,$f18
     a94:	46045180 	add.s	$f6,$f10,$f4
     a98:	0c000000 	jal	0 <func_80B20DE0>
     a9c:	e606002c 	swc1	$f6,44(s0)
     aa0:	46140201 	sub.s	$f8,$f0,$f20
     aa4:	3c013fc0 	lui	at,0x3fc0
     aa8:	44818000 	mtc1	at,$f16
     aac:	00000000 	nop
     ab0:	46104482 	mul.s	$f18,$f8,$f16
     ab4:	0c000000 	jal	0 <func_80B20DE0>
     ab8:	e612005c 	swc1	$f18,92(s0)
     abc:	46140281 	sub.s	$f10,$f0,$f20
     ac0:	3c013fc0 	lui	at,0x3fc0
     ac4:	44812000 	mtc1	at,$f4
     ac8:	00000000 	nop
     acc:	46045182 	mul.s	$f6,$f10,$f4
     ad0:	0c000000 	jal	0 <func_80B20DE0>
     ad4:	e6060060 	swc1	$f6,96(s0)
     ad8:	46140201 	sub.s	$f8,$f0,$f20
     adc:	3c013fc0 	lui	at,0x3fc0
     ae0:	44818000 	mtc1	at,$f16
     ae4:	8e0e0004 	lw	t6,4(s0)
     ae8:	2401fffe 	li	at,-2
     aec:	46104482 	mul.s	$f18,$f8,$f16
     af0:	3c050000 	lui	a1,0x0
     af4:	01c17824 	and	t7,t6,at
     af8:	ae0f0004 	sw	t7,4(s0)
     afc:	24a50000 	addiu	a1,a1,0
     b00:	02002025 	move	a0,s0
     b04:	0c000000 	jal	0 <func_80B20DE0>
     b08:	e6120064 	swc1	$f18,100(s0)
     b0c:	8fbf0024 	lw	ra,36(sp)
     b10:	d7b40018 	ldc1	$f20,24(sp)
     b14:	8fb00020 	lw	s0,32(sp)
     b18:	03e00008 	jr	ra
     b1c:	27bd0028 	addiu	sp,sp,40

00000b20 <func_80B21900>:
     b20:	27bdffe8 	addiu	sp,sp,-24
     b24:	afbf0014 	sw	ra,20(sp)
     b28:	afa5001c 	sw	a1,28(sp)
     b2c:	0c000000 	jal	0 <func_80B20DE0>
     b30:	afa40018 	sw	a0,24(sp)
     b34:	8fa40018 	lw	a0,24(sp)
     b38:	848e015e 	lh	t6,350(a0)
     b3c:	25cfffec 	addiu	t7,t6,-20
     b40:	a48f015e 	sh	t7,350(a0)
     b44:	8498015e 	lh	t8,350(a0)
     b48:	2b010014 	slti	at,t8,20
     b4c:	50200004 	beqzl	at,b60 <func_80B21900+0x40>
     b50:	8fbf0014 	lw	ra,20(sp)
     b54:	0c000000 	jal	0 <func_80B20DE0>
     b58:	a480015e 	sh	zero,350(a0)
     b5c:	8fbf0014 	lw	ra,20(sp)
     b60:	27bd0018 	addiu	sp,sp,24
     b64:	03e00008 	jr	ra
     b68:	00000000 	nop

00000b6c <func_80B2194C>:
     b6c:	27bdffe8 	addiu	sp,sp,-24
     b70:	afbf0014 	sw	ra,20(sp)
     b74:	0c000000 	jal	0 <func_80B20DE0>
     b78:	afa40018 	sw	a0,24(sp)
     b7c:	3c014170 	lui	at,0x4170
     b80:	44812000 	mtc1	at,$f4
     b84:	3c014220 	lui	at,0x4220
     b88:	44814000 	mtc1	at,$f8
     b8c:	46040182 	mul.s	$f6,$f0,$f4
     b90:	8fa40018 	lw	a0,24(sp)
     b94:	24180008 	li	t8,8
     b98:	3c050000 	lui	a1,0x0
     b9c:	24a50000 	addiu	a1,a1,0
     ba0:	ac98014c 	sw	t8,332(a0)
     ba4:	46083280 	add.s	$f10,$f6,$f8
     ba8:	4600540d 	trunc.w.s	$f16,$f10
     bac:	440f8000 	mfc1	t7,$f16
     bb0:	0c000000 	jal	0 <func_80B20DE0>
     bb4:	a48f015a 	sh	t7,346(a0)
     bb8:	8fbf0014 	lw	ra,20(sp)
     bbc:	27bd0018 	addiu	sp,sp,24
     bc0:	03e00008 	jr	ra
     bc4:	00000000 	nop

00000bc8 <func_80B219A8>:
     bc8:	27bdffd0 	addiu	sp,sp,-48
     bcc:	afbf0024 	sw	ra,36(sp)
     bd0:	afb00020 	sw	s0,32(sp)
     bd4:	afa50034 	sw	a1,52(sp)
     bd8:	8caf1c44 	lw	t7,7236(a1)
     bdc:	44802000 	mtc1	zero,$f4
     be0:	00808025 	move	s0,a0
     be4:	3c063dcc 	lui	a2,0x3dcc
     be8:	3c073e4c 	lui	a3,0x3e4c
     bec:	34e7cccd 	ori	a3,a3,0xcccd
     bf0:	34c6cccd 	ori	a2,a2,0xcccd
     bf4:	24840068 	addiu	a0,a0,104
     bf8:	3c054020 	lui	a1,0x4020
     bfc:	afaf0028 	sw	t7,40(sp)
     c00:	0c000000 	jal	0 <func_80B20DE0>
     c04:	e7a40010 	swc1	$f4,16(sp)
     c08:	8fb80028 	lw	t8,40(sp)
     c0c:	3c0142aa 	lui	at,0x42aa
     c10:	44814000 	mtc1	at,$f8
     c14:	c7060028 	lwc1	$f6,40(t8)
     c18:	3c013e80 	lui	at,0x3e80
     c1c:	c6040068 	lwc1	$f4,104(s0)
     c20:	46083280 	add.s	$f10,$f6,$f8
     c24:	44813000 	mtc1	at,$f6
     c28:	c610016c 	lwc1	$f16,364(s0)
     c2c:	26040028 	addiu	a0,s0,40
     c30:	46062202 	mul.s	$f8,$f4,$f6
     c34:	46105480 	add.s	$f18,$f10,$f16
     c38:	44805000 	mtc1	zero,$f10
     c3c:	3c063f80 	lui	a2,0x3f80
     c40:	44059000 	mfc1	a1,$f18
     c44:	e7aa0010 	swc1	$f10,16(sp)
     c48:	44074000 	mfc1	a3,$f8
     c4c:	0c000000 	jal	0 <func_80B20DE0>
     c50:	00000000 	nop
     c54:	3c070000 	lui	a3,0x0
     c58:	3c190000 	lui	t9,0x0
     c5c:	24e70000 	addiu	a3,a3,0
     c60:	27390000 	addiu	t9,t9,0
     c64:	afb90014 	sw	t9,20(sp)
     c68:	afa70010 	sw	a3,16(sp)
     c6c:	24043064 	li	a0,12388
     c70:	260500e4 	addiu	a1,s0,228
     c74:	0c000000 	jal	0 <func_80B20DE0>
     c78:	24060004 	li	a2,4
     c7c:	92020184 	lbu	v0,388(s0)
     c80:	30480002 	andi	t0,v0,0x2
     c84:	11000008 	beqz	t0,ca8 <func_80B219A8+0xe0>
     c88:	3049fffd 	andi	t1,v0,0xfffd
     c8c:	a2090184 	sb	t1,388(s0)
     c90:	8faa0028 	lw	t2,40(sp)
     c94:	8e0b0178 	lw	t3,376(s0)
     c98:	240c0001 	li	t4,1
     c9c:	554b0003 	bnel	t2,t3,cac <func_80B219A8+0xe4>
     ca0:	86020160 	lh	v0,352(s0)
     ca4:	a60c015c 	sh	t4,348(s0)
     ca8:	86020160 	lh	v0,352(s0)
     cac:	10400002 	beqz	v0,cb8 <func_80B219A8+0xf0>
     cb0:	244dfff1 	addiu	t5,v0,-15
     cb4:	a60d0160 	sh	t5,352(s0)
     cb8:	0c000000 	jal	0 <func_80B20DE0>
     cbc:	c60c0168 	lwc1	$f12,360(s0)
     cc0:	44808000 	mtc1	zero,$f16
     cc4:	00000000 	nop
     cc8:	46100032 	c.eq.s	$f0,$f16
     ccc:	00000000 	nop
     cd0:	45000008 	bc1f	cf4 <func_80B219A8+0x12c>
     cd4:	00000000 	nop
     cd8:	0c000000 	jal	0 <func_80B20DE0>
     cdc:	00000000 	nop
     ce0:	3c014080 	lui	at,0x4080
     ce4:	44819000 	mtc1	at,$f18
     ce8:	00000000 	nop
     cec:	46120102 	mul.s	$f4,$f0,$f18
     cf0:	e6040170 	swc1	$f4,368(s0)
     cf4:	0c000000 	jal	0 <func_80B20DE0>
     cf8:	c60c0168 	lwc1	$f12,360(s0)
     cfc:	3c013e80 	lui	at,0x3e80
     d00:	44814000 	mtc1	at,$f8
     d04:	c6060068 	lwc1	$f6,104(s0)
     d08:	c6100170 	lwc1	$f16,368(s0)
     d0c:	860e0032 	lh	t6,50(s0)
     d10:	46083282 	mul.s	$f10,$f6,$f8
     d14:	c6060028 	lwc1	$f6,40(s0)
     d18:	860f0164 	lh	t7,356(s0)
     d1c:	3c010000 	lui	at,0x0
     d20:	8602015a 	lh	v0,346(s0)
     d24:	01cfc021 	addu	t8,t6,t7
     d28:	a6180032 	sh	t8,50(s0)
     d2c:	46105480 	add.s	$f18,$f10,$f16
     d30:	c60a0168 	lwc1	$f10,360(s0)
     d34:	26040024 	addiu	a0,s0,36
     d38:	2459ffff 	addiu	t9,v0,-1
     d3c:	46120102 	mul.s	$f4,$f0,$f18
     d40:	46043200 	add.s	$f8,$f6,$f4
     d44:	e6080028 	swc1	$f8,40(s0)
     d48:	c4300000 	lwc1	$f16,0(at)
     d4c:	46105480 	add.s	$f18,$f10,$f16
     d50:	10400002 	beqz	v0,d5c <func_80B219A8+0x194>
     d54:	e6120168 	swc1	$f18,360(s0)
     d58:	a619015a 	sh	t9,346(s0)
     d5c:	0c000000 	jal	0 <func_80B20DE0>
     d60:	26050008 	addiu	a1,s0,8
     d64:	00022c00 	sll	a1,v0,0x10
     d68:	00052c03 	sra	a1,a1,0x10
     d6c:	26040032 	addiu	a0,s0,50
     d70:	24060001 	li	a2,1
     d74:	240702ee 	li	a3,750
     d78:	0c000000 	jal	0 <func_80B20DE0>
     d7c:	afa00010 	sw	zero,16(sp)
     d80:	8608015a 	lh	t0,346(s0)
     d84:	55000004 	bnezl	t0,d98 <func_80B219A8+0x1d0>
     d88:	86090032 	lh	t1,50(s0)
     d8c:	0c000000 	jal	0 <func_80B20DE0>
     d90:	02002025 	move	a0,s0
     d94:	86090032 	lh	t1,50(s0)
     d98:	a60900b6 	sh	t1,182(s0)
     d9c:	8fbf0024 	lw	ra,36(sp)
     da0:	8fb00020 	lw	s0,32(sp)
     da4:	27bd0030 	addiu	sp,sp,48
     da8:	03e00008 	jr	ra
     dac:	00000000 	nop

00000db0 <func_80B21B90>:
     db0:	27bdffe8 	addiu	sp,sp,-24
     db4:	afbf0014 	sw	ra,20(sp)
     db8:	44802000 	mtc1	zero,$f4
     dbc:	240e0004 	li	t6,4
     dc0:	240fc000 	li	t7,-16384
     dc4:	2418003c 	li	t8,60
     dc8:	3c050000 	lui	a1,0x0
     dcc:	ac8e014c 	sw	t6,332(a0)
     dd0:	ac800150 	sw	zero,336(a0)
     dd4:	a48f00b4 	sh	t7,180(a0)
     dd8:	a498015a 	sh	t8,346(a0)
     ddc:	a480015c 	sh	zero,348(a0)
     de0:	24a50000 	addiu	a1,a1,0
     de4:	0c000000 	jal	0 <func_80B20DE0>
     de8:	e4840068 	swc1	$f4,104(a0)
     dec:	8fbf0014 	lw	ra,20(sp)
     df0:	27bd0018 	addiu	sp,sp,24
     df4:	03e00008 	jr	ra
     df8:	00000000 	nop

00000dfc <func_80B21BDC>:
     dfc:	27bdffc8 	addiu	sp,sp,-56
     e00:	afbf002c 	sw	ra,44(sp)
     e04:	afb00028 	sw	s0,40(sp)
     e08:	f7b40020 	sdc1	$f20,32(sp)
     e0c:	8cae1c44 	lw	t6,7236(a1)
     e10:	3c014348 	lui	at,0x4348
     e14:	44813000 	mtc1	at,$f6
     e18:	afae0034 	sw	t6,52(sp)
     e1c:	c4840090 	lwc1	$f4,144(a0)
     e20:	848f015c 	lh	t7,348(a0)
     e24:	00808025 	move	s0,a0
     e28:	4606203c 	c.lt.s	$f4,$f6
     e2c:	25f8ffff 	addiu	t8,t7,-1
     e30:	a498015c 	sh	t8,348(a0)
     e34:	2405c000 	li	a1,-16384
     e38:	4500005d 	bc1f	fb0 <func_80B21BDC+0x1b4>
     e3c:	24060001 	li	a2,1
     e40:	90820184 	lbu	v0,388(a0)
     e44:	00002825 	move	a1,zero
     e48:	240d0001 	li	t5,1
     e4c:	30590002 	andi	t9,v0,0x2
     e50:	13200007 	beqz	t9,e70 <func_80B21BDC+0x74>
     e54:	3048fffd 	andi	t0,v0,0xfffd
     e58:	a0880184 	sb	t0,388(a0)
     e5c:	8fa90034 	lw	t1,52(sp)
     e60:	8c8a0178 	lw	t2,376(a0)
     e64:	552a0003 	bnel	t1,t2,e74 <func_80B21BDC+0x78>
     e68:	8602015a 	lh	v0,346(s0)
     e6c:	a480015a 	sh	zero,346(a0)
     e70:	8602015a 	lh	v0,346(s0)
     e74:	24060001 	li	a2,1
     e78:	02002025 	move	a0,s0
     e7c:	10400047 	beqz	v0,f9c <func_80B21BDC+0x1a0>
     e80:	244bffff 	addiu	t3,v0,-1
     e84:	a60b015a 	sh	t3,346(s0)
     e88:	afa00010 	sw	zero,16(sp)
     e8c:	260400b4 	addiu	a0,s0,180
     e90:	0c000000 	jal	0 <func_80B20DE0>
     e94:	240701f4 	li	a3,500
     e98:	8605008a 	lh	a1,138(s0)
     e9c:	afa00010 	sw	zero,16(sp)
     ea0:	26040032 	addiu	a0,s0,50
     ea4:	24060001 	li	a2,1
     ea8:	0c000000 	jal	0 <func_80B20DE0>
     eac:	240705dc 	li	a3,1500
     eb0:	8fa50034 	lw	a1,52(sp)
     eb4:	26040008 	addiu	a0,s0,8
     eb8:	0c000000 	jal	0 <func_80B20DE0>
     ebc:	24a50024 	addiu	a1,a1,36
     ec0:	3c010000 	lui	at,0x0
     ec4:	c4200000 	lwc1	$f0,0(at)
     ec8:	244c4000 	addiu	t4,v0,16384
     ecc:	a7ac0032 	sh	t4,50(sp)
     ed0:	3c0141f0 	lui	at,0x41f0
     ed4:	44815000 	mtc1	at,$f10
     ed8:	c608000c 	lwc1	$f8,12(s0)
     edc:	44060000 	mfc1	a2,$f0
     ee0:	26040028 	addiu	a0,s0,40
     ee4:	460a4400 	add.s	$f16,$f8,$f10
     ee8:	3c073f80 	lui	a3,0x3f80
     eec:	e7a00010 	swc1	$f0,16(sp)
     ef0:	44058000 	mfc1	a1,$f16
     ef4:	0c000000 	jal	0 <func_80B20DE0>
     ef8:	00000000 	nop
     efc:	8604015c 	lh	a0,348(s0)
     f00:	00800821 	move	at,a0
     f04:	00042140 	sll	a0,a0,0x5
     f08:	00812023 	subu	a0,a0,at
     f0c:	00042080 	sll	a0,a0,0x2
     f10:	00812021 	addu	a0,a0,at
     f14:	00042100 	sll	a0,a0,0x4
     f18:	00042400 	sll	a0,a0,0x10
     f1c:	0c000000 	jal	0 <func_80B20DE0>
     f20:	00042403 	sra	a0,a0,0x10
     f24:	46000506 	mov.s	$f20,$f0
     f28:	0c000000 	jal	0 <func_80B20DE0>
     f2c:	87a40032 	lh	a0,50(sp)
     f30:	c612016c 	lwc1	$f18,364(s0)
     f34:	8604015c 	lh	a0,348(s0)
     f38:	c6080008 	lwc1	$f8,8(s0)
     f3c:	46120102 	mul.s	$f4,$f0,$f18
     f40:	00800821 	move	at,a0
     f44:	00042140 	sll	a0,a0,0x5
     f48:	00812023 	subu	a0,a0,at
     f4c:	00042080 	sll	a0,a0,0x2
     f50:	00812021 	addu	a0,a0,at
     f54:	00042100 	sll	a0,a0,0x4
     f58:	46142182 	mul.s	$f6,$f4,$f20
     f5c:	00042400 	sll	a0,a0,0x10
     f60:	00042403 	sra	a0,a0,0x10
     f64:	46083280 	add.s	$f10,$f6,$f8
     f68:	0c000000 	jal	0 <func_80B20DE0>
     f6c:	e60a0024 	swc1	$f10,36(s0)
     f70:	46000506 	mov.s	$f20,$f0
     f74:	0c000000 	jal	0 <func_80B20DE0>
     f78:	87a40032 	lh	a0,50(sp)
     f7c:	c610016c 	lwc1	$f16,364(s0)
     f80:	c6060010 	lwc1	$f6,16(s0)
     f84:	46100482 	mul.s	$f18,$f0,$f16
     f88:	00000000 	nop
     f8c:	46149102 	mul.s	$f4,$f18,$f20
     f90:	46062200 	add.s	$f8,$f4,$f6
     f94:	10000047 	b	10b4 <func_80B21BDC+0x2b8>
     f98:	e608002c 	swc1	$f8,44(s0)
     f9c:	a60000b4 	sh	zero,180(s0)
     fa0:	0c000000 	jal	0 <func_80B20DE0>
     fa4:	ae0d0150 	sw	t5,336(s0)
     fa8:	10000043 	b	10b8 <func_80B21BDC+0x2bc>
     fac:	c608000c 	lwc1	$f8,12(s0)
     fb0:	260400b4 	addiu	a0,s0,180
     fb4:	240701f4 	li	a3,500
     fb8:	0c000000 	jal	0 <func_80B20DE0>
     fbc:	afa00010 	sw	zero,16(sp)
     fc0:	3c010000 	lui	at,0x0
     fc4:	c4200000 	lwc1	$f0,0(at)
     fc8:	8e05000c 	lw	a1,12(s0)
     fcc:	26040028 	addiu	a0,s0,40
     fd0:	44060000 	mfc1	a2,$f0
     fd4:	3c073fc0 	lui	a3,0x3fc0
     fd8:	0c000000 	jal	0 <func_80B20DE0>
     fdc:	e7a00010 	swc1	$f0,16(sp)
     fe0:	44805000 	mtc1	zero,$f10
     fe4:	8fa50034 	lw	a1,52(sp)
     fe8:	240e003c 	li	t6,60
     fec:	460a0032 	c.eq.s	$f0,$f10
     ff0:	24a50024 	addiu	a1,a1,36
     ff4:	45000003 	bc1f	1004 <func_80B21BDC+0x208>
     ff8:	00000000 	nop
     ffc:	1000002d 	b	10b4 <func_80B21BDC+0x2b8>
    1000:	a60e015a 	sh	t6,346(s0)
    1004:	0c000000 	jal	0 <func_80B20DE0>
    1008:	26040008 	addiu	a0,s0,8
    100c:	a7a20032 	sh	v0,50(sp)
    1010:	8604015c 	lh	a0,348(s0)
    1014:	00800821 	move	at,a0
    1018:	00042140 	sll	a0,a0,0x5
    101c:	00812023 	subu	a0,a0,at
    1020:	00042080 	sll	a0,a0,0x2
    1024:	00812021 	addu	a0,a0,at
    1028:	00042100 	sll	a0,a0,0x4
    102c:	00042400 	sll	a0,a0,0x10
    1030:	0c000000 	jal	0 <func_80B20DE0>
    1034:	00042403 	sra	a0,a0,0x10
    1038:	46000506 	mov.s	$f20,$f0
    103c:	0c000000 	jal	0 <func_80B20DE0>
    1040:	87a40032 	lh	a0,50(sp)
    1044:	3c0140c0 	lui	at,0x40c0
    1048:	44818000 	mtc1	at,$f16
    104c:	8604015c 	lh	a0,348(s0)
    1050:	c6060008 	lwc1	$f6,8(s0)
    1054:	46100482 	mul.s	$f18,$f0,$f16
    1058:	00800821 	move	at,a0
    105c:	00042140 	sll	a0,a0,0x5
    1060:	00812023 	subu	a0,a0,at
    1064:	00042080 	sll	a0,a0,0x2
    1068:	00812021 	addu	a0,a0,at
    106c:	00042100 	sll	a0,a0,0x4
    1070:	46149102 	mul.s	$f4,$f18,$f20
    1074:	00042400 	sll	a0,a0,0x10
    1078:	00042403 	sra	a0,a0,0x10
    107c:	46062200 	add.s	$f8,$f4,$f6
    1080:	0c000000 	jal	0 <func_80B20DE0>
    1084:	e6080024 	swc1	$f8,36(s0)
    1088:	46000506 	mov.s	$f20,$f0
    108c:	0c000000 	jal	0 <func_80B20DE0>
    1090:	87a40032 	lh	a0,50(sp)
    1094:	3c0140c0 	lui	at,0x40c0
    1098:	44815000 	mtc1	at,$f10
    109c:	c6040010 	lwc1	$f4,16(s0)
    10a0:	460a0402 	mul.s	$f16,$f0,$f10
    10a4:	00000000 	nop
    10a8:	46148482 	mul.s	$f18,$f16,$f20
    10ac:	46049180 	add.s	$f6,$f18,$f4
    10b0:	e606002c 	swc1	$f6,44(s0)
    10b4:	c608000c 	lwc1	$f8,12(s0)
    10b8:	c60a0028 	lwc1	$f10,40(s0)
    10bc:	860f0032 	lh	t7,50(s0)
    10c0:	3c070000 	lui	a3,0x0
    10c4:	460a4032 	c.eq.s	$f8,$f10
    10c8:	24e70000 	addiu	a3,a3,0
    10cc:	24043064 	li	a0,12388
    10d0:	260500e4 	addiu	a1,s0,228
    10d4:	45010007 	bc1t	10f4 <func_80B21BDC+0x2f8>
    10d8:	a60f00b6 	sh	t7,182(s0)
    10dc:	3c180000 	lui	t8,0x0
    10e0:	27180000 	addiu	t8,t8,0
    10e4:	afb80014 	sw	t8,20(sp)
    10e8:	24060004 	li	a2,4
    10ec:	0c000000 	jal	0 <func_80B20DE0>
    10f0:	afa70010 	sw	a3,16(sp)
    10f4:	8fbf002c 	lw	ra,44(sp)
    10f8:	d7b40020 	ldc1	$f20,32(sp)
    10fc:	8fb00028 	lw	s0,40(sp)
    1100:	03e00008 	jr	ra
    1104:	27bd0038 	addiu	sp,sp,56

00001108 <func_80B21EE8>:
    1108:	27bdffe8 	addiu	sp,sp,-24
    110c:	afbf0014 	sw	ra,20(sp)
    1110:	240e0009 	li	t6,9
    1114:	3c050000 	lui	a1,0x0
    1118:	ac8e014c 	sw	t6,332(a0)
    111c:	a480015a 	sh	zero,346(a0)
    1120:	0c000000 	jal	0 <func_80B20DE0>
    1124:	24a50000 	addiu	a1,a1,0
    1128:	8fbf0014 	lw	ra,20(sp)
    112c:	27bd0018 	addiu	sp,sp,24
    1130:	03e00008 	jr	ra
    1134:	00000000 	nop

00001138 <func_80B21F18>:
    1138:	27bdffa0 	addiu	sp,sp,-96
    113c:	afbf0034 	sw	ra,52(sp)
    1140:	afb00030 	sw	s0,48(sp)
    1144:	afa50064 	sw	a1,100(sp)
    1148:	afa00044 	sw	zero,68(sp)
    114c:	848e015c 	lh	t6,348(a0)
    1150:	8482015a 	lh	v0,346(a0)
    1154:	00808025 	move	s0,a0
    1158:	25cfffff 	addiu	t7,t6,-1
    115c:	14400009 	bnez	v0,1184 <func_80B21F18+0x4c>
    1160:	a48f015c 	sh	t7,348(a0)
    1164:	c486000c 	lwc1	$f6,12(a0)
    1168:	c4880028 	lwc1	$f8,40(a0)
    116c:	3c014270 	lui	at,0x4270
    1170:	44812000 	mtc1	at,$f4
    1174:	46083281 	sub.s	$f10,$f6,$f8
    1178:	460a203c 	c.lt.s	$f4,$f10
    117c:	00000000 	nop
    1180:	4500003d 	bc1f	1278 <func_80B21F18+0x140>
    1184:	2458ffff 	addiu	t8,v0,-1
    1188:	a618015a 	sh	t8,346(s0)
    118c:	8602015a 	lh	v0,346(s0)
    1190:	5440000e 	bnezl	v0,11cc <func_80B21F18+0x94>
    1194:	860800b4 	lh	t0,180(s0)
    1198:	0c000000 	jal	0 <func_80B20DE0>
    119c:	02002025 	move	a0,s0
    11a0:	8e02011c 	lw	v0,284(s0)
    11a4:	50400094 	beqzl	v0,13f8 <func_80B21F18+0x2c0>
    11a8:	8fbf0034 	lw	ra,52(sp)
    11ac:	8459015a 	lh	t9,346(v0)
    11b0:	a459015c 	sh	t9,348(v0)
    11b4:	8c42011c 	lw	v0,284(v0)
    11b8:	5440fffd 	bnezl	v0,11b0 <func_80B21F18+0x78>
    11bc:	8459015a 	lh	t9,346(v0)
    11c0:	1000008d 	b	13f8 <func_80B21F18+0x2c0>
    11c4:	8fbf0034 	lw	ra,52(sp)
    11c8:	860800b4 	lh	t0,180(s0)
    11cc:	2404c000 	li	a0,-16384
    11d0:	24090050 	li	t1,80
    11d4:	50880021 	beql	a0,t0,125c <func_80B21F18+0x124>
    11d8:	860e015a 	lh	t6,346(s0)
    11dc:	44800000 	mtc1	zero,$f0
    11e0:	a609015a 	sh	t1,346(s0)
    11e4:	26030008 	addiu	v1,s0,8
    11e8:	e6000060 	swc1	$f0,96(s0)
    11ec:	e6000068 	swc1	$f0,104(s0)
    11f0:	8c6b0000 	lw	t3,0(v1)
    11f4:	8e02011c 	lw	v0,284(s0)
    11f8:	3c0142a0 	lui	at,0x42a0
    11fc:	ae0b0024 	sw	t3,36(s0)
    1200:	8c6a0004 	lw	t2,4(v1)
    1204:	ae0a0028 	sw	t2,40(s0)
    1208:	8c6b0008 	lw	t3,8(v1)
    120c:	a60400b4 	sh	a0,180(s0)
    1210:	10400011 	beqz	v0,1258 <func_80B21F18+0x120>
    1214:	ae0b002c 	sw	t3,44(s0)
    1218:	44811000 	mtc1	at,$f2
    121c:	00000000 	nop
    1220:	e4400060 	swc1	$f0,96(v0)
    1224:	e4400068 	swc1	$f0,104(v0)
    1228:	8c6d0000 	lw	t5,0(v1)
    122c:	ac4d0024 	sw	t5,36(v0)
    1230:	8c6c0004 	lw	t4,4(v1)
    1234:	ac4c0028 	sw	t4,40(v0)
    1238:	8c6d0008 	lw	t5,8(v1)
    123c:	ac4d002c 	sw	t5,44(v0)
    1240:	c610000c 	lwc1	$f16,12(s0)
    1244:	46028481 	sub.s	$f18,$f16,$f2
    1248:	e4520028 	swc1	$f18,40(v0)
    124c:	8c42011c 	lw	v0,284(v0)
    1250:	5440fff4 	bnezl	v0,1224 <func_80B21F18+0xec>
    1254:	e4400060 	swc1	$f0,96(v0)
    1258:	860e015a 	lh	t6,346(s0)
    125c:	c606000c 	lwc1	$f6,12(s0)
    1260:	448e4000 	mtc1	t6,$f8
    1264:	00000000 	nop
    1268:	46804120 	cvt.s.w	$f4,$f8
    126c:	46043281 	sub.s	$f10,$f6,$f4
    1270:	10000060 	b	13f4 <func_80B21F18+0x2bc>
    1274:	e60a0028 	swc1	$f10,40(s0)
    1278:	860200b4 	lh	v0,180(s0)
    127c:	24014000 	li	at,16384
    1280:	10410002 	beq	v0,at,128c <func_80B21F18+0x154>
    1284:	244ffc00 	addiu	t7,v0,-1024
    1288:	a60f00b4 	sh	t7,180(s0)
    128c:	86020160 	lh	v0,352(s0)
    1290:	10400002 	beqz	v0,129c <func_80B21F18+0x164>
    1294:	2458fff1 	addiu	t8,v0,-15
    1298:	a6180160 	sh	t8,352(s0)
    129c:	0c000000 	jal	0 <func_80B20DE0>
    12a0:	860400b4 	lh	a0,180(s0)
    12a4:	46000400 	add.s	$f16,$f0,$f0
    12a8:	860400b4 	lh	a0,180(s0)
    12ac:	0c000000 	jal	0 <func_80B20DE0>
    12b0:	e6100068 	swc1	$f16,104(s0)
    12b4:	c6020028 	lwc1	$f2,40(s0)
    12b8:	c6060080 	lwc1	$f6,128(s0)
    12bc:	3c01c000 	lui	at,0xc000
    12c0:	44819000 	mtc1	at,$f18
    12c4:	46061101 	sub.s	$f4,$f2,$f6
    12c8:	3c0141a0 	lui	at,0x41a0
    12cc:	44815000 	mtc1	at,$f10
    12d0:	46120202 	mul.s	$f8,$f0,$f18
    12d4:	3c070000 	lui	a3,0x0
    12d8:	460a203c 	c.lt.s	$f4,$f10
    12dc:	24190001 	li	t9,1
    12e0:	24e70000 	addiu	a3,a3,0
    12e4:	24043064 	li	a0,12388
    12e8:	45000002 	bc1f	12f4 <func_80B21F18+0x1bc>
    12ec:	e6080060 	swc1	$f8,96(s0)
    12f0:	afb90044 	sw	t9,68(sp)
    12f4:	c610000c 	lwc1	$f16,12(s0)
    12f8:	3c080000 	lui	t0,0x0
    12fc:	25080000 	addiu	t0,t0,0
    1300:	46028032 	c.eq.s	$f16,$f2
    1304:	260500e4 	addiu	a1,s0,228
    1308:	24060004 	li	a2,4
    130c:	45030005 	bc1tl	1324 <func_80B21F18+0x1ec>
    1310:	8fa90044 	lw	t1,68(sp)
    1314:	afa70010 	sw	a3,16(sp)
    1318:	0c000000 	jal	0 <func_80B20DE0>
    131c:	afa80014 	sw	t0,20(sp)
    1320:	8fa90044 	lw	t1,68(sp)
    1324:	8faa0064 	lw	t2,100(sp)
    1328:	3c0b0001 	lui	t3,0x1
    132c:	11200031 	beqz	t1,13f4 <func_80B21F18+0x2bc>
    1330:	016a5821 	addu	t3,t3,t2
    1334:	8d6b1de4 	lw	t3,7652(t3)
    1338:	316c0001 	andi	t4,t3,0x1
    133c:	5180002e 	beqzl	t4,13f8 <func_80B21F18+0x2c0>
    1340:	8fbf0034 	lw	ra,52(sp)
    1344:	8e0f0024 	lw	t7,36(s0)
    1348:	27ad0048 	addiu	t5,sp,72
    134c:	3c0140a0 	lui	at,0x40a0
    1350:	adaf0000 	sw	t7,0(t5)
    1354:	8e0e0028 	lw	t6,40(s0)
    1358:	44816000 	mtc1	at,$f12
    135c:	adae0004 	sw	t6,4(t5)
    1360:	8e0f002c 	lw	t7,44(s0)
    1364:	adaf0008 	sw	t7,8(t5)
    1368:	c6120080 	lwc1	$f18,128(s0)
    136c:	0c000000 	jal	0 <func_80B20DE0>
    1370:	e7b2004c 	swc1	$f18,76(sp)
    1374:	0c000000 	jal	0 <func_80B20DE0>
    1378:	e7a00054 	swc1	$f0,84(sp)
    137c:	3c014060 	lui	at,0x4060
    1380:	44814000 	mtc1	at,$f8
    1384:	3c013fc0 	lui	at,0x3fc0
    1388:	44812000 	mtc1	at,$f4
    138c:	46080182 	mul.s	$f6,$f0,$f8
    1390:	3c0140a0 	lui	at,0x40a0
    1394:	44816000 	mtc1	at,$f12
    1398:	46043280 	add.s	$f10,$f6,$f4
    139c:	0c000000 	jal	0 <func_80B20DE0>
    13a0:	e7aa0058 	swc1	$f10,88(sp)
    13a4:	e7a0005c 	swc1	$f0,92(sp)
    13a8:	24040064 	li	a0,100
    13ac:	0c000000 	jal	0 <func_80B20DE0>
    13b0:	24050032 	li	a1,50
    13b4:	3c180000 	lui	t8,0x0
    13b8:	3c190000 	lui	t9,0x0
    13bc:	27390000 	addiu	t9,t9,0
    13c0:	27180000 	addiu	t8,t8,0
    13c4:	3c070000 	lui	a3,0x0
    13c8:	24080014 	li	t0,20
    13cc:	afa8001c 	sw	t0,28(sp)
    13d0:	24e70000 	addiu	a3,a3,0
    13d4:	afb80010 	sw	t8,16(sp)
    13d8:	afb90014 	sw	t9,20(sp)
    13dc:	8fa40064 	lw	a0,100(sp)
    13e0:	27a50048 	addiu	a1,sp,72
    13e4:	27a60054 	addiu	a2,sp,84
    13e8:	afa20018 	sw	v0,24(sp)
    13ec:	0c000000 	jal	0 <func_80B20DE0>
    13f0:	afa00020 	sw	zero,32(sp)
    13f4:	8fbf0034 	lw	ra,52(sp)
    13f8:	8fb00030 	lw	s0,48(sp)
    13fc:	27bd0060 	addiu	sp,sp,96
    1400:	03e00008 	jr	ra
    1404:	00000000 	nop

00001408 <func_80B221E8>:
    1408:	27bdffc8 	addiu	sp,sp,-56
    140c:	afbf0034 	sw	ra,52(sp)
    1410:	afb50030 	sw	s5,48(sp)
    1414:	afb4002c 	sw	s4,44(sp)
    1418:	afb30028 	sw	s3,40(sp)
    141c:	afb20024 	sw	s2,36(sp)
    1420:	afb10020 	sw	s1,32(sp)
    1424:	afb0001c 	sw	s0,28(sp)
    1428:	afa5003c 	sw	a1,60(sp)
    142c:	90820185 	lbu	v0,389(a0)
    1430:	00808825 	move	s1,a0
    1434:	304e0002 	andi	t6,v0,0x2
    1438:	51c00081 	beqzl	t6,1640 <func_80B221E8+0x238>
    143c:	8fbf0034 	lw	ra,52(sp)
    1440:	8c8f014c 	lw	t7,332(a0)
    1444:	2415fffd 	li	s5,-3
    1448:	3059fffd 	andi	t9,v0,0xfffd
    144c:	29e10002 	slti	at,t7,2
    1450:	1420007a 	bnez	at,163c <func_80B221E8+0x234>
    1454:	26250174 	addiu	a1,s1,372
    1458:	8498001c 	lh	t8,28(a0)
    145c:	00009025 	move	s2,zero
    1460:	0000a025 	move	s4,zero
    1464:	07010002 	bgez	t8,1470 <func_80B221E8+0x68>
    1468:	02202025 	move	a0,s1
    146c:	24120001 	li	s2,1
    1470:	a2390185 	sb	t9,389(s1)
    1474:	0c000000 	jal	0 <func_80B20DE0>
    1478:	24060001 	li	a2,1
    147c:	922200b1 	lbu	v0,177(s1)
    1480:	24010001 	li	at,1
    1484:	1040006d 	beqz	v0,163c <func_80B221E8+0x234>
    1488:	a2220158 	sb	v0,344(s1)
    148c:	14410002 	bne	v0,at,1498 <func_80B221E8+0x90>
    1490:	00000000 	nop
    1494:	24140001 	li	s4,1
    1498:	56400004 	bnezl	s2,14ac <func_80B221E8+0xa4>
    149c:	922800af 	lbu	t0,175(s1)
    14a0:	0c000000 	jal	0 <func_80B20DE0>
    14a4:	02202025 	move	a0,s1
    14a8:	922800af 	lbu	t0,175(s1)
    14ac:	15000010 	bnez	t0,14f0 <func_80B221E8+0xe8>
    14b0:	00000000 	nop
    14b4:	8e290004 	lw	t1,4(s1)
    14b8:	8e3001d4 	lw	s0,468(s1)
    14bc:	2401fffe 	li	at,-2
    14c0:	01215024 	and	t2,t1,at
    14c4:	ae2a0004 	sw	t2,4(s1)
    14c8:	860b001c 	lh	t3,28(s0)
    14cc:	0563005c 	bgezl	t3,1640 <func_80B221E8+0x238>
    14d0:	8fbf0034 	lw	ra,52(sp)
    14d4:	0c000000 	jal	0 <func_80B20DE0>
    14d8:	02002025 	move	a0,s0
    14dc:	922c00b1 	lbu	t4,177(s1)
    14e0:	240d000c 	li	t5,12
    14e4:	a60d001c 	sh	t5,28(s0)
    14e8:	10000054 	b	163c <func_80B221E8+0x234>
    14ec:	a20c0158 	sb	t4,344(s0)
    14f0:	12800016 	beqz	s4,154c <func_80B221E8+0x144>
    14f4:	24130050 	li	s3,80
    14f8:	a6330110 	sh	s3,272(s1)
    14fc:	02202025 	move	a0,s1
    1500:	0c000000 	jal	0 <func_80B20DE0>
    1504:	2405389e 	li	a1,14494
    1508:	1240000a 	beqz	s2,1534 <func_80B221E8+0x12c>
    150c:	02202025 	move	a0,s1
    1510:	240e0050 	li	t6,80
    1514:	afae0010 	sw	t6,16(sp)
    1518:	02202025 	move	a0,s1
    151c:	00002825 	move	a1,zero
    1520:	240600ff 	li	a2,255
    1524:	0c000000 	jal	0 <func_80B20DE0>
    1528:	00003825 	move	a3,zero
    152c:	10000008 	b	1550 <func_80B221E8+0x148>
    1530:	8e300118 	lw	s0,280(s1)
    1534:	240f0050 	li	t7,80
    1538:	afaf0010 	sw	t7,16(sp)
    153c:	00002825 	move	a1,zero
    1540:	240600ff 	li	a2,255
    1544:	0c000000 	jal	0 <func_80B20DE0>
    1548:	24072000 	li	a3,8192
    154c:	8e300118 	lw	s0,280(s1)
    1550:	24130050 	li	s3,80
    1554:	5200001e 	beqzl	s0,15d0 <func_80B221E8+0x1c8>
    1558:	8e30011c 	lw	s0,284(s1)
    155c:	92180185 	lbu	t8,389(s0)
    1560:	02202025 	move	a0,s1
    1564:	2405389e 	li	a1,14494
    1568:	0315c824 	and	t9,t8,s5
    156c:	12800014 	beqz	s4,15c0 <func_80B221E8+0x1b8>
    1570:	a2190185 	sb	t9,389(s0)
    1574:	0c000000 	jal	0 <func_80B20DE0>
    1578:	a6130110 	sh	s3,272(s0)
    157c:	1240000a 	beqz	s2,15a8 <func_80B221E8+0x1a0>
    1580:	02002025 	move	a0,s0
    1584:	24080050 	li	t0,80
    1588:	afa80010 	sw	t0,16(sp)
    158c:	02002025 	move	a0,s0
    1590:	00002825 	move	a1,zero
    1594:	240600ff 	li	a2,255
    1598:	0c000000 	jal	0 <func_80B20DE0>
    159c:	00003825 	move	a3,zero
    15a0:	10000008 	b	15c4 <func_80B221E8+0x1bc>
    15a4:	8e100118 	lw	s0,280(s0)
    15a8:	24090050 	li	t1,80
    15ac:	afa90010 	sw	t1,16(sp)
    15b0:	00002825 	move	a1,zero
    15b4:	240600ff 	li	a2,255
    15b8:	0c000000 	jal	0 <func_80B20DE0>
    15bc:	24072000 	li	a3,8192
    15c0:	8e100118 	lw	s0,280(s0)
    15c4:	5600ffe6 	bnezl	s0,1560 <func_80B221E8+0x158>
    15c8:	92180185 	lbu	t8,389(s0)
    15cc:	8e30011c 	lw	s0,284(s1)
    15d0:	5200001b 	beqzl	s0,1640 <func_80B221E8+0x238>
    15d4:	8fbf0034 	lw	ra,52(sp)
    15d8:	920a0185 	lbu	t2,389(s0)
    15dc:	01555824 	and	t3,t2,s5
    15e0:	12800013 	beqz	s4,1630 <func_80B221E8+0x228>
    15e4:	a20b0185 	sb	t3,389(s0)
    15e8:	1240000a 	beqz	s2,1614 <func_80B221E8+0x20c>
    15ec:	a6130110 	sh	s3,272(s0)
    15f0:	240c0050 	li	t4,80
    15f4:	afac0010 	sw	t4,16(sp)
    15f8:	02002025 	move	a0,s0
    15fc:	00002825 	move	a1,zero
    1600:	240600ff 	li	a2,255
    1604:	0c000000 	jal	0 <func_80B20DE0>
    1608:	00003825 	move	a3,zero
    160c:	10000009 	b	1634 <func_80B221E8+0x22c>
    1610:	8e10011c 	lw	s0,284(s0)
    1614:	240d0050 	li	t5,80
    1618:	afad0010 	sw	t5,16(sp)
    161c:	02002025 	move	a0,s0
    1620:	00002825 	move	a1,zero
    1624:	240600ff 	li	a2,255
    1628:	0c000000 	jal	0 <func_80B20DE0>
    162c:	24072000 	li	a3,8192
    1630:	8e10011c 	lw	s0,284(s0)
    1634:	5600ffe9 	bnezl	s0,15dc <func_80B221E8+0x1d4>
    1638:	920a0185 	lbu	t2,389(s0)
    163c:	8fbf0034 	lw	ra,52(sp)
    1640:	8fb0001c 	lw	s0,28(sp)
    1644:	8fb10020 	lw	s1,32(sp)
    1648:	8fb20024 	lw	s2,36(sp)
    164c:	8fb30028 	lw	s3,40(sp)
    1650:	8fb4002c 	lw	s4,44(sp)
    1654:	8fb50030 	lw	s5,48(sp)
    1658:	03e00008 	jr	ra
    165c:	27bd0038 	addiu	sp,sp,56

00001660 <EnTp_Update>:
    1660:	27bdff90 	addiu	sp,sp,-112
    1664:	3c0f0000 	lui	t7,0x0
    1668:	afbf0024 	sw	ra,36(sp)
    166c:	afb00020 	sw	s0,32(sp)
    1670:	afa50074 	sw	a1,116(sp)
    1674:	25ef0000 	addiu	t7,t7,0
    1678:	8df90000 	lw	t9,0(t7)
    167c:	27ae005c 	addiu	t6,sp,92
    1680:	8df80004 	lw	t8,4(t7)
    1684:	add90000 	sw	t9,0(t6)
    1688:	8df90008 	lw	t9,8(t7)
    168c:	3c090000 	lui	t1,0x0
    1690:	25290000 	addiu	t1,t1,0
    1694:	add80004 	sw	t8,4(t6)
    1698:	add90008 	sw	t9,8(t6)
    169c:	8d2b0000 	lw	t3,0(t1)
    16a0:	27a80050 	addiu	t0,sp,80
    16a4:	8d2a0004 	lw	t2,4(t1)
    16a8:	ad0b0000 	sw	t3,0(t0)
    16ac:	8d2b0008 	lw	t3,8(t1)
    16b0:	ad0a0004 	sw	t2,4(t0)
    16b4:	3c0c0000 	lui	t4,0x0
    16b8:	ad0b0008 	sw	t3,8(t0)
    16bc:	3c0d0000 	lui	t5,0x0
    16c0:	8d8c0000 	lw	t4,0(t4)
    16c4:	8dad0000 	lw	t5,0(t5)
    16c8:	8fae0074 	lw	t6,116(sp)
    16cc:	afac0040 	sw	t4,64(sp)
    16d0:	afad003c 	sw	t5,60(sp)
    16d4:	8dc21c44 	lw	v0,7236(t6)
    16d8:	00808025 	move	s0,a0
    16dc:	8c4f067c 	lw	t7,1660(v0)
    16e0:	000fc140 	sll	t8,t7,0x5
    16e4:	07030003 	bgezl	t8,16f4 <EnTp_Update+0x94>
    16e8:	921900af 	lbu	t9,175(s0)
    16ec:	a0800158 	sb	zero,344(a0)
    16f0:	921900af 	lbu	t9,175(s0)
    16f4:	02002025 	move	a0,s0
    16f8:	53200004 	beqzl	t9,170c <EnTp_Update+0xac>
    16fc:	8e190154 	lw	t9,340(s0)
    1700:	0c000000 	jal	0 <func_80B20DE0>
    1704:	8fa50074 	lw	a1,116(sp)
    1708:	8e190154 	lw	t9,340(s0)
    170c:	02002025 	move	a0,s0
    1710:	8fa50074 	lw	a1,116(sp)
    1714:	0320f809 	jalr	t9
    1718:	00000000 	nop
    171c:	8608001c 	lh	t0,28(s0)
    1720:	05030046 	bgezl	t0,183c <EnTp_Update+0x1dc>
    1724:	860c001c 	lh	t4,28(s0)
    1728:	0c000000 	jal	0 <func_80B20DE0>
    172c:	02002025 	move	a0,s0
    1730:	8e09014c 	lw	t1,332(s0)
    1734:	24010009 	li	at,9
    1738:	8fa40074 	lw	a0,116(sp)
    173c:	11210009 	beq	t1,at,1764 <EnTp_Update+0x104>
    1740:	02002825 	move	a1,s0
    1744:	3c014120 	lui	at,0x4120
    1748:	44812000 	mtc1	at,$f4
    174c:	240a0005 	li	t2,5
    1750:	afaa0014 	sw	t2,20(sp)
    1754:	24060000 	li	a2,0
    1758:	3c074170 	lui	a3,0x4170
    175c:	0c000000 	jal	0 <func_80B20DE0>
    1760:	e7a40010 	swc1	$f4,16(sp)
    1764:	44803000 	mtc1	zero,$f6
    1768:	c6080068 	lwc1	$f8,104(s0)
    176c:	3c070000 	lui	a3,0x0
    1770:	3c0a0000 	lui	t2,0x0
    1774:	46083032 	c.eq.s	$f6,$f8
    1778:	24e70000 	addiu	a3,a3,0
    177c:	254a0000 	addiu	t2,t2,0
    1780:	260500e4 	addiu	a1,s0,228
    1784:	45010019 	bc1t	17ec <EnTp_Update+0x18c>
    1788:	24060004 	li	a2,4
    178c:	960b0088 	lhu	t3,136(s0)
    1790:	316c0008 	andi	t4,t3,0x8
    1794:	51800016 	beqzl	t4,17f0 <EnTp_Update+0x190>
    1798:	861900b8 	lh	t9,184(s0)
    179c:	86040032 	lh	a0,50(s0)
    17a0:	860d007e 	lh	t5,126(s0)
    17a4:	01a41023 	subu	v0,t5,a0
    17a8:	00021400 	sll	v0,v0,0x10
    17ac:	00021403 	sra	v0,v0,0x10
    17b0:	04400003 	bltz	v0,17c0 <EnTp_Update+0x160>
    17b4:	00021823 	negu	v1,v0
    17b8:	10000001 	b	17c0 <EnTp_Update+0x160>
    17bc:	00401825 	move	v1,v0
    17c0:	28614001 	slti	at,v1,16385
    17c4:	5420000a 	bnezl	at,17f0 <EnTp_Update+0x190>
    17c8:	861900b8 	lh	t9,184(s0)
    17cc:	04400004 	bltz	v0,17e0 <EnTp_Update+0x180>
    17d0:	248f01f4 	addiu	t7,a0,500
    17d4:	248efe0c 	addiu	t6,a0,-500
    17d8:	10000002 	b	17e4 <EnTp_Update+0x184>
    17dc:	a60e0032 	sh	t6,50(s0)
    17e0:	a60f0032 	sh	t7,50(s0)
    17e4:	86180032 	lh	t8,50(s0)
    17e8:	a61800b6 	sh	t8,182(s0)
    17ec:	861900b8 	lh	t9,184(s0)
    17f0:	24043865 	li	a0,14437
    17f4:	27280800 	addiu	t0,t9,2048
    17f8:	a60800b8 	sh	t0,184(s0)
    17fc:	860900b8 	lh	t1,184(s0)
    1800:	55200005 	bnezl	t1,1818 <EnTp_Update+0x1b8>
    1804:	8e0b014c 	lw	t3,332(s0)
    1808:	afa70010 	sw	a3,16(sp)
    180c:	0c000000 	jal	0 <func_80B20DE0>
    1810:	afaa0014 	sw	t2,20(sp)
    1814:	8e0b014c 	lw	t3,332(s0)
    1818:	8fa40074 	lw	a0,116(sp)
    181c:	26060174 	addiu	a2,s0,372
    1820:	29610002 	slti	at,t3,2
    1824:	14200004 	bnez	at,1838 <EnTp_Update+0x1d8>
    1828:	3c010001 	lui	at,0x1
    182c:	34211e60 	ori	at,at,0x1e60
    1830:	0c000000 	jal	0 <func_80B20DE0>
    1834:	00812821 	addu	a1,a0,at
    1838:	860c001c 	lh	t4,28(s0)
    183c:	2401000b 	li	at,11
    1840:	26060174 	addiu	a2,s0,372
    1844:	51810008 	beql	t4,at,1868 <EnTp_Update+0x208>
    1848:	8e080024 	lw	t0,36(s0)
    184c:	860d0162 	lh	t5,354(s0)
    1850:	25aeffff 	addiu	t6,t5,-1
    1854:	a60e0162 	sh	t6,354(s0)
    1858:	860f0162 	lh	t7,354(s0)
    185c:	31f80007 	andi	t8,t7,0x7
    1860:	a6180162 	sh	t8,354(s0)
    1864:	8e080024 	lw	t0,36(s0)
    1868:	92090158 	lbu	t1,344(s0)
    186c:	8e190028 	lw	t9,40(s0)
    1870:	ae080038 	sw	t0,56(s0)
    1874:	8e08002c 	lw	t0,44(s0)
    1878:	2401000e 	li	at,14
    187c:	ae19003c 	sw	t9,60(s0)
    1880:	15210006 	bne	t1,at,189c <EnTp_Update+0x23c>
    1884:	ae080040 	sw	t0,64(s0)
    1888:	8fa40074 	lw	a0,116(sp)
    188c:	3c010001 	lui	at,0x1
    1890:	34211e60 	ori	at,at,0x1e60
    1894:	0c000000 	jal	0 <func_80B20DE0>
    1898:	00812821 	addu	a1,a0,at
    189c:	860a0162 	lh	t2,354(s0)
    18a0:	314b0007 	andi	t3,t2,0x7
    18a4:	55600039 	bnezl	t3,198c <EnTp_Update+0x32c>
    18a8:	8e0f014c 	lw	t7,332(s0)
    18ac:	860c0160 	lh	t4,352(s0)
    18b0:	3c013e80 	lui	at,0x3e80
    18b4:	44810000 	mtc1	at,$f0
    18b8:	a3ac0040 	sb	t4,64(sp)
    18bc:	c60a005c 	lwc1	$f10,92(s0)
    18c0:	46005407 	neg.s	$f16,$f10
    18c4:	46008482 	mul.s	$f18,$f16,$f0
    18c8:	e7b20050 	swc1	$f18,80(sp)
    18cc:	c6040060 	lwc1	$f4,96(s0)
    18d0:	46002187 	neg.s	$f6,$f4
    18d4:	46003202 	mul.s	$f8,$f6,$f0
    18d8:	e7a80054 	swc1	$f8,84(sp)
    18dc:	c60a0064 	lwc1	$f10,100(s0)
    18e0:	46005407 	neg.s	$f16,$f10
    18e4:	46008482 	mul.s	$f18,$f16,$f0
    18e8:	0c000000 	jal	0 <func_80B20DE0>
    18ec:	e7b20058 	swc1	$f18,88(sp)
    18f0:	3c013f00 	lui	at,0x3f00
    18f4:	44812000 	mtc1	at,$f4
    18f8:	3c0141c8 	lui	at,0x41c8
    18fc:	44814000 	mtc1	at,$f8
    1900:	46040181 	sub.s	$f6,$f0,$f4
    1904:	c6100024 	lwc1	$f16,36(s0)
    1908:	46083282 	mul.s	$f10,$f6,$f8
    190c:	46105480 	add.s	$f18,$f10,$f16
    1910:	0c000000 	jal	0 <func_80B20DE0>
    1914:	e7b20044 	swc1	$f18,68(sp)
    1918:	3c013f00 	lui	at,0x3f00
    191c:	44812000 	mtc1	at,$f4
    1920:	3c0141a0 	lui	at,0x41a0
    1924:	44814000 	mtc1	at,$f8
    1928:	46040181 	sub.s	$f6,$f0,$f4
    192c:	c6100028 	lwc1	$f16,40(s0)
    1930:	46083282 	mul.s	$f10,$f6,$f8
    1934:	46105480 	add.s	$f18,$f10,$f16
    1938:	0c000000 	jal	0 <func_80B20DE0>
    193c:	e7b20048 	swc1	$f18,72(sp)
    1940:	3c013f00 	lui	at,0x3f00
    1944:	44812000 	mtc1	at,$f4
    1948:	3c0141c8 	lui	at,0x41c8
    194c:	44814000 	mtc1	at,$f8
    1950:	46040181 	sub.s	$f6,$f0,$f4
    1954:	c610002c 	lwc1	$f16,44(s0)
    1958:	27ad0040 	addiu	t5,sp,64
    195c:	27ae003c 	addiu	t6,sp,60
    1960:	46083282 	mul.s	$f10,$f6,$f8
    1964:	afae0014 	sw	t6,20(sp)
    1968:	afad0010 	sw	t5,16(sp)
    196c:	8fa40074 	lw	a0,116(sp)
    1970:	27a50044 	addiu	a1,sp,68
    1974:	27a6005c 	addiu	a2,sp,92
    1978:	27a70050 	addiu	a3,sp,80
    197c:	46105480 	add.s	$f18,$f10,$f16
    1980:	0c000000 	jal	0 <func_80B20DE0>
    1984:	e7b2004c 	swc1	$f18,76(sp)
    1988:	8e0f014c 	lw	t7,332(s0)
    198c:	29e10002 	slti	at,t7,2
    1990:	5420000a 	bnezl	at,19bc <EnTp_Update+0x35c>
    1994:	8fbf0024 	lw	ra,36(sp)
    1998:	921800af 	lbu	t8,175(s0)
    199c:	3c010001 	lui	at,0x1
    19a0:	34211e60 	ori	at,at,0x1e60
    19a4:	13000004 	beqz	t8,19b8 <EnTp_Update+0x358>
    19a8:	8fa40074 	lw	a0,116(sp)
    19ac:	00812821 	addu	a1,a0,at
    19b0:	0c000000 	jal	0 <func_80B20DE0>
    19b4:	26060174 	addiu	a2,s0,372
    19b8:	8fbf0024 	lw	ra,36(sp)
    19bc:	8fb00020 	lw	s0,32(sp)
    19c0:	27bd0070 	addiu	sp,sp,112
    19c4:	03e00008 	jr	ra
    19c8:	00000000 	nop

000019cc <EnTp_Draw>:
    19cc:	27bdffa0 	addiu	sp,sp,-96
    19d0:	afbf0014 	sw	ra,20(sp)
    19d4:	afa40060 	sw	a0,96(sp)
    19d8:	afa50064 	sw	a1,100(sp)
    19dc:	8ca50000 	lw	a1,0(a1)
    19e0:	3c060000 	lui	a2,0x0
    19e4:	24c60000 	addiu	a2,a2,0
    19e8:	27a40044 	addiu	a0,sp,68
    19ec:	240705ab 	li	a3,1451
    19f0:	0c000000 	jal	0 <func_80B20DE0>
    19f4:	afa50054 	sw	a1,84(sp)
    19f8:	8faf0060 	lw	t7,96(sp)
    19fc:	24010002 	li	at,2
    1a00:	8fa80054 	lw	t0,84(sp)
    1a04:	8df80150 	lw	t8,336(t7)
    1a08:	5301008a 	beql	t8,at,1c34 <EnTp_Draw+0x268>
    1a0c:	8fac0064 	lw	t4,100(sp)
    1a10:	85e2001c 	lh	v0,28(t7)
    1a14:	2401000c 	li	at,12
    1a18:	8fb90064 	lw	t9,100(sp)
    1a1c:	04420004 	bltzl	v0,1a30 <EnTp_Draw+0x64>
    1a20:	8f240000 	lw	a0,0(t9)
    1a24:	14410025 	bne	v0,at,1abc <EnTp_Draw+0xf0>
    1a28:	8fb80064 	lw	t8,100(sp)
    1a2c:	8f240000 	lw	a0,0(t9)
    1a30:	0c000000 	jal	0 <func_80B20DE0>
    1a34:	afa80054 	sw	t0,84(sp)
    1a38:	8fa80054 	lw	t0,84(sp)
    1a3c:	3c0ada38 	lui	t2,0xda38
    1a40:	354a0003 	ori	t2,t2,0x3
    1a44:	8d0202c0 	lw	v0,704(t0)
    1a48:	3c050000 	lui	a1,0x0
    1a4c:	24a50000 	addiu	a1,a1,0
    1a50:	24490008 	addiu	t1,v0,8
    1a54:	ad0902c0 	sw	t1,704(t0)
    1a58:	ac4a0000 	sw	t2,0(v0)
    1a5c:	8fab0064 	lw	t3,100(sp)
    1a60:	240605b3 	li	a2,1459
    1a64:	8d640000 	lw	a0,0(t3)
    1a68:	afa80054 	sw	t0,84(sp)
    1a6c:	0c000000 	jal	0 <func_80B20DE0>
    1a70:	afa20040 	sw	v0,64(sp)
    1a74:	8fa30040 	lw	v1,64(sp)
    1a78:	8fa80054 	lw	t0,84(sp)
    1a7c:	44806000 	mtc1	zero,$f12
    1a80:	ac620004 	sw	v0,4(v1)
    1a84:	8d0202c0 	lw	v0,704(t0)
    1a88:	3c0e0600 	lui	t6,0x600
    1a8c:	25ce08d0 	addiu	t6,t6,2256
    1a90:	244c0008 	addiu	t4,v0,8
    1a94:	3c0dde00 	lui	t5,0xde00
    1a98:	ad0c02c0 	sw	t4,704(t0)
    1a9c:	3c064100 	lui	a2,0x4100
    1aa0:	24070001 	li	a3,1
    1aa4:	46006386 	mov.s	$f14,$f12
    1aa8:	ac4e0004 	sw	t6,4(v0)
    1aac:	0c000000 	jal	0 <func_80B20DE0>
    1ab0:	ac4d0000 	sw	t5,0(v0)
    1ab4:	1000005f 	b	1c34 <EnTp_Draw+0x268>
    1ab8:	8fac0064 	lw	t4,100(sp)
    1abc:	8f040000 	lw	a0,0(t8)
    1ac0:	0c000000 	jal	0 <func_80B20DE0>
    1ac4:	afa80054 	sw	t0,84(sp)
    1ac8:	8fa40064 	lw	a0,100(sp)
    1acc:	3c010001 	lui	at,0x1
    1ad0:	34211da0 	ori	at,at,0x1da0
    1ad4:	0c000000 	jal	0 <func_80B20DE0>
    1ad8:	00812021 	addu	a0,a0,at
    1adc:	8fa80054 	lw	t0,84(sp)
    1ae0:	3c19fa00 	lui	t9,0xfa00
    1ae4:	3c05e700 	lui	a1,0xe700
    1ae8:	8d0202d0 	lw	v0,720(t0)
    1aec:	3c040600 	lui	a0,0x600
    1af0:	24840c68 	addiu	a0,a0,3176
    1af4:	244f0008 	addiu	t7,v0,8
    1af8:	ad0f02d0 	sw	t7,720(t0)
    1afc:	ac590000 	sw	t9,0(v0)
    1b00:	8fa90060 	lw	t1,96(sp)
    1b04:	3c0100ff 	lui	at,0xff
    1b08:	3421ffff 	ori	at,at,0xffff
    1b0c:	852b0160 	lh	t3,352(t1)
    1b10:	852e015e 	lh	t6,350(t1)
    1b14:	240605c8 	li	a2,1480
    1b18:	000b6600 	sll	t4,t3,0x18
    1b1c:	358dff00 	ori	t5,t4,0xff00
    1b20:	31d800ff 	andi	t8,t6,0xff
    1b24:	01b87825 	or	t7,t5,t8
    1b28:	ac4f0004 	sw	t7,4(v0)
    1b2c:	8d0202d0 	lw	v0,720(t0)
    1b30:	3c0c5566 	lui	t4,0x5566
    1b34:	3c0bfc30 	lui	t3,0xfc30
    1b38:	24590008 	addiu	t9,v0,8
    1b3c:	ad1902d0 	sw	t9,720(t0)
    1b40:	ac450000 	sw	a1,0(v0)
    1b44:	ac400004 	sw	zero,4(v0)
    1b48:	8d0202d0 	lw	v0,720(t0)
    1b4c:	356bb261 	ori	t3,t3,0xb261
    1b50:	358cdb6d 	ori	t4,t4,0xdb6d
    1b54:	244a0008 	addiu	t2,v0,8
    1b58:	ad0a02d0 	sw	t2,720(t0)
    1b5c:	ac4b0000 	sw	t3,0(v0)
    1b60:	ac4c0004 	sw	t4,4(v0)
    1b64:	8d0202d0 	lw	v0,720(t0)
    1b68:	0004c100 	sll	t8,a0,0x4
    1b6c:	00187f02 	srl	t7,t8,0x1c
    1b70:	24490008 	addiu	t1,v0,8
    1b74:	ad0902d0 	sw	t1,720(t0)
    1b78:	ac450000 	sw	a1,0(v0)
    1b7c:	ac400004 	sw	zero,4(v0)
    1b80:	8d0202d0 	lw	v0,720(t0)
    1b84:	3c0ddb06 	lui	t5,0xdb06
    1b88:	35ad0020 	ori	t5,t5,0x20
    1b8c:	244e0008 	addiu	t6,v0,8
    1b90:	000fc880 	sll	t9,t7,0x2
    1b94:	3c0a0000 	lui	t2,0x0
    1b98:	ad0e02d0 	sw	t6,720(t0)
    1b9c:	01595021 	addu	t2,t2,t9
    1ba0:	ac4d0000 	sw	t5,0(v0)
    1ba4:	8d4a0000 	lw	t2,0(t2)
    1ba8:	00815824 	and	t3,a0,at
    1bac:	3c018000 	lui	at,0x8000
    1bb0:	014b6021 	addu	t4,t2,t3
    1bb4:	01814821 	addu	t1,t4,at
    1bb8:	ac490004 	sw	t1,4(v0)
    1bbc:	8d0202d0 	lw	v0,720(t0)
    1bc0:	3c18da38 	lui	t8,0xda38
    1bc4:	37180003 	ori	t8,t8,0x3
    1bc8:	244e0008 	addiu	t6,v0,8
    1bcc:	ad0e02d0 	sw	t6,720(t0)
    1bd0:	ac450000 	sw	a1,0(v0)
    1bd4:	ac400004 	sw	zero,4(v0)
    1bd8:	8d0202d0 	lw	v0,720(t0)
    1bdc:	3c050000 	lui	a1,0x0
    1be0:	24a50000 	addiu	a1,a1,0
    1be4:	244d0008 	addiu	t5,v0,8
    1be8:	ad0d02d0 	sw	t5,720(t0)
    1bec:	ac580000 	sw	t8,0(v0)
    1bf0:	8faf0064 	lw	t7,100(sp)
    1bf4:	8de40000 	lw	a0,0(t7)
    1bf8:	afa80054 	sw	t0,84(sp)
    1bfc:	0c000000 	jal	0 <func_80B20DE0>
    1c00:	afa20020 	sw	v0,32(sp)
    1c04:	8fa30020 	lw	v1,32(sp)
    1c08:	8fa80054 	lw	t0,84(sp)
    1c0c:	3c0b0600 	lui	t3,0x600
    1c10:	ac620004 	sw	v0,4(v1)
    1c14:	8d0202d0 	lw	v0,720(t0)
    1c18:	256b0000 	addiu	t3,t3,0
    1c1c:	3c0ade00 	lui	t2,0xde00
    1c20:	24590008 	addiu	t9,v0,8
    1c24:	ad1902d0 	sw	t9,720(t0)
    1c28:	ac4b0004 	sw	t3,4(v0)
    1c2c:	ac4a0000 	sw	t2,0(v0)
    1c30:	8fac0064 	lw	t4,100(sp)
    1c34:	3c060000 	lui	a2,0x0
    1c38:	24c60000 	addiu	a2,a2,0
    1c3c:	27a40044 	addiu	a0,sp,68
    1c40:	240705d7 	li	a3,1495
    1c44:	0c000000 	jal	0 <func_80B20DE0>
    1c48:	8d850000 	lw	a1,0(t4)
    1c4c:	8fa30060 	lw	v1,96(sp)
    1c50:	2401000b 	li	at,11
    1c54:	00002025 	move	a0,zero
    1c58:	8462001c 	lh	v0,28(v1)
    1c5c:	18400003 	blez	v0,1c6c <EnTp_Draw+0x2a0>
    1c60:	00000000 	nop
    1c64:	54410004 	bnel	v0,at,1c78 <EnTp_Draw+0x2ac>
    1c68:	8fbf0014 	lw	ra,20(sp)
    1c6c:	0c000000 	jal	0 <func_80B20DE0>
    1c70:	24650174 	addiu	a1,v1,372
    1c74:	8fbf0014 	lw	ra,20(sp)
    1c78:	27bd0060 	addiu	sp,sp,96
    1c7c:	03e00008 	jr	ra
    1c80:	00000000 	nop
	...
