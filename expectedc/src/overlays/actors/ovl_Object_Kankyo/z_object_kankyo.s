
build/src/overlays/actors/ovl_Object_Kankyo/z_object_kankyo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjectKankyo_SetupAction>:
       0:	03e00008 	jr	ra
       4:	ac85165c 	sw	a1,5724(a0)

00000008 <ObjectKankyo_Init>:
       8:	27bdffe8 	addiu	sp,sp,-24
       c:	afbf0014 	sw	ra,20(sp)
      10:	afa5001c 	sw	a1,28(sp)
      14:	00803025 	move	a2,a0
      18:	00001025 	move	v0,zero
      1c:	24030054 	li	v1,84
      20:	00430019 	multu	v0,v1
      24:	24420001 	addiu	v0,v0,1
      28:	00021400 	sll	v0,v0,0x10
      2c:	00021403 	sra	v0,v0,0x10
      30:	28410040 	slti	at,v0,64
      34:	00007012 	mflo	t6
      38:	00ce7821 	addu	t7,a2,t6
      3c:	1420fff8 	bnez	at,20 <ObjectKankyo_Init+0x18>
      40:	a1e0014c 	sb	zero,332(t7)
      44:	94d9001c 	lhu	t9,28(a2)
      48:	2418ffff 	li	t8,-1
      4c:	a0d80003 	sb	t8,3(a2)
      50:	2f210006 	sltiu	at,t9,6
      54:	102000a8 	beqz	at,2f8 <L80BA2D98>
      58:	0019c880 	sll	t9,t9,0x2
      5c:	3c010000 	lui	at,0x0
      60:	00390821 	addu	at,at,t9
      64:	8c390000 	lw	t9,0(at)
      68:	03200008 	jr	t9
      6c:	00000000 	nop

00000070 <L80BA2B10>:
      70:	3c080000 	lui	t0,0x0
      74:	91080000 	lbu	t0,0(t0)
      78:	00c02025 	move	a0,a2
      7c:	3c050000 	lui	a1,0x0
      80:	15000007 	bnez	t0,a0 <L80BA2B10+0x30>
      84:	00000000 	nop
      88:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
      8c:	24a50000 	addiu	a1,a1,0
      90:	24090001 	li	t1,1
      94:	3c010000 	lui	at,0x0
      98:	10000097 	b	2f8 <L80BA2D98>
      9c:	a0290000 	sb	t1,0(at)
      a0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
      a4:	00c02025 	move	a0,a2
      a8:	10000094 	b	2fc <L80BA2D98+0x4>
      ac:	8fbf0014 	lw	ra,20(sp)

000000b0 <L80BA2B50>:
      b0:	3c0a0000 	lui	t2,0x0
      b4:	914a0000 	lbu	t2,0(t2)
      b8:	00c02025 	move	a0,a2
      bc:	3c050000 	lui	a1,0x0
      c0:	15400007 	bnez	t2,e0 <L80BA2B50+0x30>
      c4:	00000000 	nop
      c8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
      cc:	24a50000 	addiu	a1,a1,0
      d0:	240b0001 	li	t3,1
      d4:	3c010000 	lui	at,0x0
      d8:	10000087 	b	2f8 <L80BA2D98>
      dc:	a02b0000 	sb	t3,0(at)
      e0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
      e4:	00c02025 	move	a0,a2
      e8:	10000084 	b	2fc <L80BA2D98+0x4>
      ec:	8fbf0014 	lw	ra,20(sp)

000000f0 <L80BA2B90>:
      f0:	3c050000 	lui	a1,0x0
      f4:	24a50000 	addiu	a1,a1,0
      f8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
      fc:	00c02025 	move	a0,a2
     100:	1000007e 	b	2fc <L80BA2D98+0x4>
     104:	8fbf0014 	lw	ra,20(sp)

00000108 <L80BA2BA8>:
     108:	44802000 	mtc1	zero,$f4
     10c:	a0c0018c 	sb	zero,396(a2)
     110:	24070007 	li	a3,7
     114:	e4c40198 	swc1	$f4,408(a2)
     118:	8fa4001c 	lw	a0,28(sp)
     11c:	afa60018 	sw	a2,24(sp)
     120:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     124:	24851c24 	addiu	a1,a0,7204
     128:	8fa40018 	lw	a0,24(sp)
     12c:	3c050000 	lui	a1,0x0
     130:	24a50000 	addiu	a1,a1,0
     134:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     138:	a0801659 	sb	zero,5721(a0)
     13c:	1000006f 	b	2fc <L80BA2D98+0x4>
     140:	8fbf0014 	lw	ra,20(sp)

00000144 <L80BA2BE4>:
     144:	44803000 	mtc1	zero,$f6
     148:	a0c0018c 	sb	zero,396(a2)
     14c:	3c010000 	lui	at,0x0
     150:	e4c60198 	swc1	$f6,408(a2)
     154:	c4200000 	lwc1	$f0,0(at)
     158:	00001025 	move	v0,zero
     15c:	00430019 	multu	v0,v1
     160:	24420001 	addiu	v0,v0,1
     164:	00021400 	sll	v0,v0,0x10
     168:	00021403 	sra	v0,v0,0x10
     16c:	28410006 	slti	at,v0,6
     170:	00006812 	mflo	t5
     174:	00cd7021 	addu	t6,a2,t5
     178:	1420fff8 	bnez	at,15c <L80BA2BE4+0x18>
     17c:	e5c00190 	swc1	$f0,400(t6)
     180:	240400bb 	li	a0,187
     184:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     188:	afa60018 	sw	a2,24(sp)
     18c:	10400004 	beqz	v0,1a0 <L80BA2BE4+0x5c>
     190:	8fa60018 	lw	a2,24(sp)
     194:	44804000 	mtc1	zero,$f8
     198:	00000000 	nop
     19c:	e4c80190 	swc1	$f8,400(a2)
     1a0:	240400bc 	li	a0,188
     1a4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     1a8:	afa60018 	sw	a2,24(sp)
     1ac:	10400004 	beqz	v0,1c0 <L80BA2BE4+0x7c>
     1b0:	8fa60018 	lw	a2,24(sp)
     1b4:	44805000 	mtc1	zero,$f10
     1b8:	00000000 	nop
     1bc:	e4ca01e4 	swc1	$f10,484(a2)
     1c0:	240400bd 	li	a0,189
     1c4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     1c8:	afa60018 	sw	a2,24(sp)
     1cc:	10400004 	beqz	v0,1e0 <L80BA2BE4+0x9c>
     1d0:	8fa60018 	lw	a2,24(sp)
     1d4:	44808000 	mtc1	zero,$f16
     1d8:	00000000 	nop
     1dc:	e4d00238 	swc1	$f16,568(a2)
     1e0:	240400be 	li	a0,190
     1e4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     1e8:	afa60018 	sw	a2,24(sp)
     1ec:	10400004 	beqz	v0,200 <L80BA2BE4+0xbc>
     1f0:	8fa60018 	lw	a2,24(sp)
     1f4:	44809000 	mtc1	zero,$f18
     1f8:	00000000 	nop
     1fc:	e4d2028c 	swc1	$f18,652(a2)
     200:	240400bf 	li	a0,191
     204:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     208:	afa60018 	sw	a2,24(sp)
     20c:	10400004 	beqz	v0,220 <L80BA2BE4+0xdc>
     210:	8fa60018 	lw	a2,24(sp)
     214:	44802000 	mtc1	zero,$f4
     218:	00000000 	nop
     21c:	e4c402e0 	swc1	$f4,736(a2)
     220:	240400ad 	li	a0,173
     224:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     228:	afa60018 	sw	a2,24(sp)
     22c:	3c010000 	lui	at,0x0
     230:	c4200000 	lwc1	$f0,0(at)
     234:	10400004 	beqz	v0,248 <L80BA2BE4+0x104>
     238:	8fa60018 	lw	a2,24(sp)
     23c:	44803000 	mtc1	zero,$f6
     240:	00000000 	nop
     244:	e4c60334 	swc1	$f6,820(a2)
     248:	3c030000 	lui	v1,0x0
     24c:	24630000 	addiu	v1,v1,0
     250:	906f1414 	lbu	t7,5140(v1)
     254:	3c050000 	lui	a1,0x0
     258:	24a50000 	addiu	a1,a1,0
     25c:	11e00024 	beqz	t7,2f0 <L80BA2BE4+0x1ac>
     260:	00c02025 	move	a0,a2
     264:	8c620000 	lw	v0,0(v1)
     268:	24010538 	li	at,1336
     26c:	54410005 	bnel	v0,at,284 <L80BA2BE4+0x140>
     270:	2401053c 	li	at,1340
     274:	e4c00190 	swc1	$f0,400(a2)
     278:	3c020000 	lui	v0,0x0
     27c:	8c420000 	lw	v0,0(v0)
     280:	2401053c 	li	at,1340
     284:	54410005 	bnel	v0,at,29c <L80BA2BE4+0x158>
     288:	24010540 	li	at,1344
     28c:	e4c001e4 	swc1	$f0,484(a2)
     290:	3c020000 	lui	v0,0x0
     294:	8c420000 	lw	v0,0(v0)
     298:	24010540 	li	at,1344
     29c:	54410005 	bnel	v0,at,2b4 <L80BA2BE4+0x170>
     2a0:	24010544 	li	at,1348
     2a4:	e4c00238 	swc1	$f0,568(a2)
     2a8:	3c020000 	lui	v0,0x0
     2ac:	8c420000 	lw	v0,0(v0)
     2b0:	24010544 	li	at,1348
     2b4:	54410005 	bnel	v0,at,2cc <L80BA2BE4+0x188>
     2b8:	24010548 	li	at,1352
     2bc:	e4c0028c 	swc1	$f0,652(a2)
     2c0:	3c020000 	lui	v0,0x0
     2c4:	8c420000 	lw	v0,0(v0)
     2c8:	24010548 	li	at,1352
     2cc:	54410005 	bnel	v0,at,2e4 <L80BA2BE4+0x1a0>
     2d0:	2401054c 	li	at,1356
     2d4:	e4c002e0 	swc1	$f0,736(a2)
     2d8:	3c020000 	lui	v0,0x0
     2dc:	8c420000 	lw	v0,0(v0)
     2e0:	2401054c 	li	at,1356
     2e4:	14410002 	bne	v0,at,2f0 <L80BA2BE4+0x1ac>
     2e8:	00000000 	nop
     2ec:	e4c00334 	swc1	$f0,820(a2)
     2f0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     2f4:	a0c01659 	sb	zero,5721(a2)

000002f8 <L80BA2D98>:
     2f8:	8fbf0014 	lw	ra,20(sp)
     2fc:	27bd0018 	addiu	sp,sp,24
     300:	03e00008 	jr	ra
     304:	00000000 	nop

00000308 <ObjectKankyo_Destroy>:
     308:	27bdffe8 	addiu	sp,sp,-24
     30c:	afbf0014 	sw	ra,20(sp)
     310:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     314:	afa5001c 	sw	a1,28(sp)
     318:	8fbf0014 	lw	ra,20(sp)
     31c:	27bd0018 	addiu	sp,sp,24
     320:	03e00008 	jr	ra
     324:	00000000 	nop

00000328 <func_80BA2DC8>:
     328:	afa40000 	sw	a0,0(sp)
     32c:	03e00008 	jr	ra
     330:	afa50004 	sw	a1,4(sp)

00000334 <func_80BA2DD4>:
     334:	27bdff08 	addiu	sp,sp,-248
     338:	3c0f0000 	lui	t7,0x0
     33c:	afbf006c 	sw	ra,108(sp)
     340:	afb60068 	sw	s6,104(sp)
     344:	afb50064 	sw	s5,100(sp)
     348:	afb40060 	sw	s4,96(sp)
     34c:	afb3005c 	sw	s3,92(sp)
     350:	afb20058 	sw	s2,88(sp)
     354:	afb10054 	sw	s1,84(sp)
     358:	afb00050 	sw	s0,80(sp)
     35c:	f7be0048 	sdc1	$f30,72(sp)
     360:	f7bc0040 	sdc1	$f28,64(sp)
     364:	f7ba0038 	sdc1	$f26,56(sp)
     368:	f7b80030 	sdc1	$f24,48(sp)
     36c:	f7b60028 	sdc1	$f22,40(sp)
     370:	f7b40020 	sdc1	$f20,32(sp)
     374:	afa400f8 	sw	a0,248(sp)
     378:	25ef0000 	addiu	t7,t7,0
     37c:	8df90000 	lw	t9,0(t7)
     380:	27ae00b8 	addiu	t6,sp,184
     384:	8df80004 	lw	t8,4(t7)
     388:	add90000 	sw	t9,0(t6)
     38c:	8df90008 	lw	t9,8(t7)
     390:	3c090000 	lui	t1,0x0
     394:	25290000 	addiu	t1,t1,0
     398:	add80004 	sw	t8,4(t6)
     39c:	add90008 	sw	t9,8(t6)
     3a0:	8d2b0000 	lw	t3,0(t1)
     3a4:	27a800ac 	addiu	t0,sp,172
     3a8:	8d2a0004 	lw	t2,4(t1)
     3ac:	ad0b0000 	sw	t3,0(t0)
     3b0:	8d2b0008 	lw	t3,8(t1)
     3b4:	ad0a0004 	sw	t2,4(t0)
     3b8:	24010055 	li	at,85
     3bc:	ad0b0008 	sw	t3,8(t0)
     3c0:	84ac00a4 	lh	t4,164(a1)
     3c4:	00a08825 	move	s1,a1
     3c8:	8cb41c44 	lw	s4,7236(a1)
     3cc:	15810047 	bne	t4,at,4ec <func_80BA2DD4+0x1b8>
     3d0:	3c100000 	lui	s0,0x0
     3d4:	26100000 	addiu	s0,s0,0
     3d8:	8e0d1360 	lw	t5,4960(s0)
     3dc:	8fa400f8 	lw	a0,248(sp)
     3e0:	24010007 	li	at,7
     3e4:	15a10041 	bne	t5,at,4ec <func_80BA2DD4+0x1b8>
     3e8:	2484164c 	addiu	a0,a0,5708
     3ec:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     3f0:	24a500e0 	addiu	a1,a1,224
     3f4:	3c0141f0 	lui	at,0x41f0
     3f8:	44815000 	mtc1	at,$f10
     3fc:	c62400e0 	lwc1	$f4,224(s1)
     400:	8fae00f8 	lw	t6,248(sp)
     404:	460a0303 	div.s	$f12,$f0,$f10
     408:	3c013f80 	lui	at,0x3f80
     40c:	e5c4164c 	swc1	$f4,5708(t6)
     410:	8faf00f8 	lw	t7,248(sp)
     414:	c62600e4 	lwc1	$f6,228(s1)
     418:	44812000 	mtc1	at,$f4
     41c:	3c013f80 	lui	at,0x3f80
     420:	e5e61650 	swc1	$f6,5712(t7)
     424:	8fb800f8 	lw	t8,248(sp)
     428:	c62800e8 	lwc1	$f8,232(s1)
     42c:	e7081654 	swc1	$f8,5716(t8)
     430:	460c203c 	c.lt.s	$f4,$f12
     434:	00000000 	nop
     438:	45000003 	bc1f	448 <func_80BA2DD4+0x114>
     43c:	00000000 	nop
     440:	44816000 	mtc1	at,$f12
     444:	00000000 	nop
     448:	3c010000 	lui	at,0x0
     44c:	c4260000 	lwc1	$f6,0(at)
     450:	3c010000 	lui	at,0x0
     454:	c42a0000 	lwc1	$f10,0(at)
     458:	460c3202 	mul.s	$f8,$f6,$f12
     45c:	3c040000 	lui	a0,0x0
     460:	24840000 	addiu	a0,a0,0
     464:	24052071 	li	a1,8305
     468:	460a4100 	add.s	$f4,$f8,$f10
     46c:	44062000 	mfc1	a2,$f4
     470:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     474:	00000000 	nop
     478:	96221d74 	lhu	v0,7540(s1)
     47c:	240101d9 	li	at,473
     480:	1041000a 	beq	v0,at,4ac <func_80BA2DD4+0x178>
     484:	24010247 	li	at,583
     488:	1041000c 	beq	v0,at,4bc <func_80BA2DD4+0x188>
     48c:	3c040000 	lui	a0,0x0
     490:	240102fb 	li	at,763
     494:	1041000f 	beq	v0,at,4d4 <func_80BA2DD4+0x1a0>
     498:	24010303 	li	at,771
     49c:	10410011 	beq	v0,at,4e4 <func_80BA2DD4+0x1b0>
     4a0:	00000000 	nop
     4a4:	10000012 	b	4f0 <func_80BA2DD4+0x1bc>
     4a8:	3c010001 	lui	at,0x1
     4ac:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     4b0:	24046844 	li	a0,26692
     4b4:	1000000e 	b	4f0 <func_80BA2DD4+0x1bc>
     4b8:	3c010001 	lui	at,0x1
     4bc:	24840000 	addiu	a0,a0,0
     4c0:	2405685f 	li	a1,26719
     4c4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     4c8:	24060020 	li	a2,32
     4cc:	10000008 	b	4f0 <func_80BA2DD4+0x1bc>
     4d0:	3c010001 	lui	at,0x1
     4d4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     4d8:	24042072 	li	a0,8306
     4dc:	10000004 	b	4f0 <func_80BA2DD4+0x1bc>
     4e0:	3c010001 	lui	at,0x1
     4e4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     4e8:	24046865 	li	a0,26725
     4ec:	3c010001 	lui	at,0x1
     4f0:	0221c821 	addu	t9,s1,at
     4f4:	afb90088 	sw	t9,136(sp)
     4f8:	93220b15 	lbu	v0,2837(t9)
     4fc:	3c100000 	lui	s0,0x0
     500:	26100000 	addiu	s0,s0,0
     504:	28410040 	slti	at,v0,64
     508:	1020000f 	beqz	at,548 <func_80BA2DD4+0x214>
     50c:	00401825 	move	v1,v0
     510:	8e090000 	lw	t1,0(s0)
     514:	240100ee 	li	at,238
     518:	8fac0088 	lw	t4,136(sp)
     51c:	55210007 	bnel	t1,at,53c <func_80BA2DD4+0x208>
     520:	246b0010 	addiu	t3,v1,16
     524:	8e0a1360 	lw	t2,4960(s0)
     528:	24010004 	li	at,4
     52c:	55410003 	bnel	t2,at,53c <func_80BA2DD4+0x208>
     530:	246b0010 	addiu	t3,v1,16
     534:	10400004 	beqz	v0,548 <func_80BA2DD4+0x214>
     538:	246b0010 	addiu	t3,v1,16
     53c:	a18b0b15 	sb	t3,2837(t4)
     540:	8fad0088 	lw	t5,136(sp)
     544:	91a30b15 	lbu	v1,2837(t5)
     548:	186002f0 	blez	v1,110c <func_80BA2DD4+0xdd8>
     54c:	00009025 	move	s2,zero
     550:	3c014302 	lui	at,0x4302
     554:	4481c000 	mtc1	at,$f24
     558:	3c010000 	lui	at,0x0
     55c:	c4360000 	lwc1	$f22,0(at)
     560:	3c013f00 	lui	at,0x3f00
     564:	3c130000 	lui	s3,0x0
     568:	4481a000 	mtc1	at,$f20
     56c:	4480d000 	mtc1	zero,$f26
     570:	26730000 	addiu	s3,s3,0
     574:	24160002 	li	s6,2
     578:	24150001 	li	s5,1
     57c:	c63000e0 	lwc1	$f16,224(s1)
     580:	c62600ec 	lwc1	$f6,236(s1)
     584:	c62800f0 	lwc1	$f8,240(s1)
     588:	c62a00e4 	lwc1	$f10,228(s1)
     58c:	46103081 	sub.s	$f2,$f6,$f16
     590:	c62600e8 	lwc1	$f6,232(s1)
     594:	c62400f4 	lwc1	$f4,244(s1)
     598:	460a4301 	sub.s	$f12,$f8,$f10
     59c:	46021202 	mul.s	$f8,$f2,$f2
     5a0:	00127880 	sll	t7,s2,0x2
     5a4:	46062381 	sub.s	$f14,$f4,$f6
     5a8:	460c6282 	mul.s	$f10,$f12,$f12
     5ac:	01f27821 	addu	t7,t7,s2
     5b0:	8fae00f8 	lw	t6,248(sp)
     5b4:	460e7182 	mul.s	$f6,$f14,$f14
     5b8:	000f7880 	sll	t7,t7,0x2
     5bc:	01f27821 	addu	t7,t7,s2
     5c0:	000f7880 	sll	t7,t7,0x2
     5c4:	01cf8021 	addu	s0,t6,t7
     5c8:	460a4100 	add.s	$f4,$f8,$f10
     5cc:	3c0142a0 	lui	at,0x42a0
     5d0:	46062000 	add.s	$f0,$f4,$f6
     5d4:	46000004 	sqrt.s	$f0,$f0
     5d8:	46006203 	div.s	$f8,$f12,$f0
     5dc:	46007103 	div.s	$f4,$f14,$f0
     5e0:	e7a8007c 	swc1	$f8,124(sp)
     5e4:	c7aa007c 	lwc1	$f10,124(sp)
     5e8:	e7aa00d8 	swc1	$f10,216(sp)
     5ec:	46001483 	div.s	$f18,$f2,$f0
     5f0:	e7a40078 	swc1	$f4,120(sp)
     5f4:	c7a60078 	lwc1	$f6,120(sp)
     5f8:	e7a600d4 	swc1	$f6,212(sp)
     5fc:	e7b200dc 	swc1	$f18,220(sp)
     600:	9202014c 	lbu	v0,332(s0)
     604:	c7a800dc 	lwc1	$f8,220(sp)
     608:	5040000b 	beqzl	v0,638 <func_80BA2DD4+0x304>
     60c:	4481e000 	mtc1	at,$f28
     610:	1055006f 	beq	v0,s5,7d0 <func_80BA2DD4+0x49c>
     614:	3c0142a0 	lui	at,0x42a0
     618:	5056006e 	beql	v0,s6,7d4 <func_80BA2DD4+0x4a0>
     61c:	44810000 	mtc1	at,$f0
     620:	24010003 	li	at,3
     624:	504102b1 	beql	v0,at,10ec <func_80BA2DD4+0xdb8>
     628:	a200014c 	sb	zero,332(s0)
     62c:	100002b2 	b	10f8 <func_80BA2DD4+0xdc4>
     630:	26520001 	addiu	s2,s2,1
     634:	4481e000 	mtc1	at,$f28
     638:	00000000 	nop
     63c:	461c4282 	mul.s	$f10,$f8,$f28
     640:	460a8100 	add.s	$f4,$f16,$f10
     644:	e6040168 	swc1	$f4,360(s0)
     648:	c7a800d8 	lwc1	$f8,216(sp)
     64c:	c62600e4 	lwc1	$f6,228(s1)
     650:	461c4282 	mul.s	$f10,$f8,$f28
     654:	460a3100 	add.s	$f4,$f6,$f10
     658:	e604016c 	swc1	$f4,364(s0)
     65c:	c7a600d4 	lwc1	$f6,212(sp)
     660:	c62800e8 	lwc1	$f8,232(s1)
     664:	461c3282 	mul.s	$f10,$f6,$f28
     668:	460a4100 	add.s	$f4,$f8,$f10
     66c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     670:	e6040170 	swc1	$f4,368(s0)
     674:	46140181 	sub.s	$f6,$f0,$f20
     678:	3c014320 	lui	at,0x4320
     67c:	44814000 	mtc1	at,$f8
     680:	3c0141f0 	lui	at,0x41f0
     684:	44812000 	mtc1	at,$f4
     688:	46083282 	mul.s	$f10,$f6,$f8
     68c:	e6040154 	swc1	$f4,340(s0)
     690:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     694:	e60a0150 	swc1	$f10,336(s0)
     698:	46140181 	sub.s	$f6,$f0,$f20
     69c:	3c014320 	lui	at,0x4320
     6a0:	44814000 	mtc1	at,$f8
     6a4:	00000000 	nop
     6a8:	46083282 	mul.s	$f10,$f6,$f8
     6ac:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     6b0:	e60a0158 	swc1	$f10,344(s0)
     6b4:	3c010000 	lui	at,0x0
     6b8:	c4240000 	lwc1	$f4,0(at)
     6bc:	a200018c 	sb	zero,396(s0)
     6c0:	46040182 	mul.s	$f6,$f0,$f4
     6c4:	46143200 	add.s	$f8,$f6,$f20
     6c8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     6cc:	e6080184 	swc1	$f8,388(s0)
     6d0:	3c010000 	lui	at,0x0
     6d4:	c42a0000 	lwc1	$f10,0(at)
     6d8:	24190001 	li	t9,1
     6dc:	3c014f00 	lui	at,0x4f00
     6e0:	460a0102 	mul.s	$f4,$f0,$f10
     6e4:	4458f800 	cfc1	t8,$31
     6e8:	44d9f800 	ctc1	t9,$31
     6ec:	00000000 	nop
     6f0:	460021a4 	cvt.w.s	$f6,$f4
     6f4:	4459f800 	cfc1	t9,$31
     6f8:	00000000 	nop
     6fc:	33390078 	andi	t9,t9,0x78
     700:	53200013 	beqzl	t9,750 <func_80BA2DD4+0x41c>
     704:	44193000 	mfc1	t9,$f6
     708:	44813000 	mtc1	at,$f6
     70c:	24190001 	li	t9,1
     710:	46062181 	sub.s	$f6,$f4,$f6
     714:	44d9f800 	ctc1	t9,$31
     718:	00000000 	nop
     71c:	460031a4 	cvt.w.s	$f6,$f6
     720:	4459f800 	cfc1	t9,$31
     724:	00000000 	nop
     728:	33390078 	andi	t9,t9,0x78
     72c:	17200005 	bnez	t9,744 <func_80BA2DD4+0x410>
     730:	00000000 	nop
     734:	44193000 	mfc1	t9,$f6
     738:	3c018000 	lui	at,0x8000
     73c:	10000007 	b	75c <func_80BA2DD4+0x428>
     740:	0321c825 	or	t9,t9,at
     744:	10000005 	b	75c <func_80BA2DD4+0x428>
     748:	2419ffff 	li	t9,-1
     74c:	44193000 	mfc1	t9,$f6
     750:	00000000 	nop
     754:	0720fffb 	bltz	t9,744 <func_80BA2DD4+0x410>
     758:	00000000 	nop
     75c:	a6190188 	sh	t9,392(s0)
     760:	3c010000 	lui	at,0x0
     764:	c4280000 	lwc1	$f8,0(at)
     768:	44d8f800 	ctc1	t8,$31
     76c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     770:	e6080190 	swc1	$f8,400(s0)
     774:	3c0143b4 	lui	at,0x43b4
     778:	44815000 	mtc1	at,$f10
     77c:	00000000 	nop
     780:	460a0102 	mul.s	$f4,$f0,$f10
     784:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     788:	e6040174 	swc1	$f4,372(s0)
     78c:	3c0143b4 	lui	at,0x43b4
     790:	44813000 	mtc1	at,$f6
     794:	00000000 	nop
     798:	46060202 	mul.s	$f8,$f0,$f6
     79c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     7a0:	e6080178 	swc1	$f8,376(s0)
     7a4:	3c0143b4 	lui	at,0x43b4
     7a8:	44815000 	mtc1	at,$f10
     7ac:	9208014c 	lbu	t0,332(s0)
     7b0:	a600019c 	sh	zero,412(s0)
     7b4:	460a0102 	mul.s	$f4,$f0,$f10
     7b8:	25090001 	addiu	t1,t0,1
     7bc:	a209014c 	sb	t1,332(s0)
     7c0:	e604017c 	swc1	$f4,380(s0)
     7c4:	8faa0088 	lw	t2,136(sp)
     7c8:	1000024a 	b	10f4 <func_80BA2DD4+0xdc0>
     7cc:	91430b15 	lbu	v1,2837(t2)
     7d0:	44810000 	mtc1	at,$f0
     7d4:	960b0188 	lhu	t3,392(s0)
     7d8:	3c01c080 	lui	at,0xc080
     7dc:	46009202 	mul.s	$f8,$f18,$f0
     7e0:	256c0001 	addiu	t4,t3,1
     7e4:	a60c0188 	sh	t4,392(s0)
     7e8:	c62600e0 	lwc1	$f6,224(s1)
     7ec:	24030001 	li	v1,1
     7f0:	46083280 	add.s	$f10,$f6,$f8
     7f4:	c7a6007c 	lwc1	$f6,124(sp)
     7f8:	46003202 	mul.s	$f8,$f6,$f0
     7fc:	e7aa00cc 	swc1	$f10,204(sp)
     800:	c62400e4 	lwc1	$f4,228(s1)
     804:	c7a60078 	lwc1	$f6,120(sp)
     808:	c62a00e8 	lwc1	$f10,232(s1)
     80c:	46082700 	add.s	$f28,$f4,$f8
     810:	46003102 	mul.s	$f4,$f6,$f0
     814:	c6080150 	lwc1	$f8,336(s0)
     818:	c6060154 	lwc1	$f6,340(s0)
     81c:	e608015c 	swc1	$f8,348(s0)
     820:	e6060160 	swc1	$f6,352(s0)
     824:	46045780 	add.s	$f30,$f10,$f4
     828:	c60a0158 	lwc1	$f10,344(s0)
     82c:	44812000 	mtc1	at,$f4
     830:	2a410020 	slti	at,s2,32
     834:	e60a0164 	swc1	$f10,356(s0)
     838:	c6860060 	lwc1	$f6,96(s4)
     83c:	c688005c 	lwc1	$f8,92(s4)
     840:	46064280 	add.s	$f10,$f8,$f6
     844:	c6880064 	lwc1	$f8,100(s4)
     848:	46085180 	add.s	$f6,$f10,$f8
     84c:	46062032 	c.eq.s	$f4,$f6
     850:	00000000 	nop
     854:	45020007 	bc1fl	874 <func_80BA2DD4+0x540>
     858:	a600019c 	sh	zero,412(s0)
     85c:	960d019c 	lhu	t5,412(s0)
     860:	00001825 	move	v1,zero
     864:	25ae0001 	addiu	t6,t5,1
     868:	10000002 	b	874 <func_80BA2DD4+0x540>
     86c:	a60e019c 	sh	t6,412(s0)
     870:	a600019c 	sh	zero,412(s0)
     874:	9202014c 	lbu	v0,332(s0)
     878:	16a200e6 	bne	s5,v0,c14 <func_80BA2DD4+0x8e0>
     87c:	00000000 	nop
     880:	10200057 	beqz	at,9e0 <func_80BA2DD4+0x6ac>
     884:	00000000 	nop
     888:	14600055 	bnez	v1,9e0 <func_80BA2DD4+0x6ac>
     88c:	00000000 	nop
     890:	960f019c 	lhu	t7,412(s0)
     894:	29e10101 	slti	at,t7,257
     898:	14200051 	bnez	at,9e0 <func_80BA2DD4+0x6ac>
     89c:	00000000 	nop
     8a0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     8a4:	a600019c 	sh	zero,412(s0)
     8a8:	4614003c 	c.lt.s	$f0,$f20
     8ac:	00000000 	nop
     8b0:	4500000d 	bc1f	8e8 <func_80BA2DD4+0x5b4>
     8b4:	00000000 	nop
     8b8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     8bc:	00000000 	nop
     8c0:	3c014348 	lui	at,0x4348
     8c4:	44815000 	mtc1	at,$f10
     8c8:	00000000 	nop
     8cc:	460a0202 	mul.s	$f8,$f0,$f10
     8d0:	4600410d 	trunc.w.s	$f4,$f8
     8d4:	44092000 	mfc1	t1,$f4
     8d8:	00000000 	nop
     8dc:	252a00c8 	addiu	t2,t1,200
     8e0:	1000000c 	b	914 <func_80BA2DD4+0x5e0>
     8e4:	a60a0194 	sh	t2,404(s0)
     8e8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     8ec:	00000000 	nop
     8f0:	3c014348 	lui	at,0x4348
     8f4:	44813000 	mtc1	at,$f6
     8f8:	240fff38 	li	t7,-200
     8fc:	46060282 	mul.s	$f10,$f0,$f6
     900:	4600520d 	trunc.w.s	$f8,$f10
     904:	440e4000 	mfc1	t6,$f8
     908:	00000000 	nop
     90c:	01eec023 	subu	t8,t7,t6
     910:	a6180194 	sh	t8,404(s0)
     914:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     918:	00000000 	nop
     91c:	3c014248 	lui	at,0x4248
     920:	44812000 	mtc1	at,$f4
     924:	00000000 	nop
     928:	46040182 	mul.s	$f6,$f0,$f4
     92c:	4600328d 	trunc.w.s	$f10,$f6
     930:	440a5000 	mfc1	t2,$f10
     934:	00000000 	nop
     938:	254b000f 	addiu	t3,t2,15
     93c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     940:	a60b0196 	sh	t3,406(s0)
     944:	3c014120 	lui	at,0x4120
     948:	44811000 	mtc1	at,$f2
     94c:	3c010000 	lui	at,0x0
     950:	c4260000 	lwc1	$f6,0(at)
     954:	46020202 	mul.s	$f8,$f0,$f2
     958:	46024100 	add.s	$f4,$f8,$f2
     95c:	46062282 	mul.s	$f10,$f4,$f6
     960:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     964:	e60a0198 	swc1	$f10,408(s0)
     968:	4616003c 	c.lt.s	$f0,$f22
     96c:	24190002 	li	t9,2
     970:	45020004 	bc1fl	984 <func_80BA2DD4+0x650>
     974:	4616003c 	c.lt.s	$f0,$f22
     978:	10000012 	b	9c4 <func_80BA2DD4+0x690>
     97c:	a6750000 	sh	s5,0(s3)
     980:	4616003c 	c.lt.s	$f0,$f22
     984:	240c0003 	li	t4,3
     988:	3c010000 	lui	at,0x0
     98c:	45000003 	bc1f	99c <func_80BA2DD4+0x668>
     990:	00000000 	nop
     994:	1000000b 	b	9c4 <func_80BA2DD4+0x690>
     998:	a66c0000 	sh	t4,0(s3)
     99c:	c4280000 	lwc1	$f8,0(at)
     9a0:	240d0007 	li	t5,7
     9a4:	240f000f 	li	t7,15
     9a8:	4608003c 	c.lt.s	$f0,$f8
     9ac:	00000000 	nop
     9b0:	45020004 	bc1fl	9c4 <func_80BA2DD4+0x690>
     9b4:	a66f0000 	sh	t7,0(s3)
     9b8:	10000002 	b	9c4 <func_80BA2DD4+0x690>
     9bc:	a66d0000 	sh	t5,0(s3)
     9c0:	a66f0000 	sh	t7,0(s3)
     9c4:	866e0000 	lh	t6,0(s3)
     9c8:	024ec024 	and	t8,s2,t6
     9cc:	57000003 	bnezl	t8,9dc <func_80BA2DD4+0x6a8>
     9d0:	a219014c 	sb	t9,332(s0)
     9d4:	e61a0154 	swc1	$f26,340(s0)
     9d8:	a219014c 	sb	t9,332(s0)
     9dc:	e61a0184 	swc1	$f26,388(s0)
     9e0:	3c010000 	lui	at,0x0
     9e4:	c4240000 	lwc1	$f4,0(at)
     9e8:	3c053dcc 	lui	a1,0x3dcc
     9ec:	34a5cccd 	ori	a1,a1,0xcccd
     9f0:	3c073a83 	lui	a3,0x3a83
     9f4:	34e7126f 	ori	a3,a3,0x126f
     9f8:	00a03021 	move	a2,a1
     9fc:	26040190 	addiu	a0,s0,400
     a00:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     a04:	e7a40010 	swc1	$f4,16(sp)
     a08:	3c010000 	lui	at,0x0
     a0c:	c4260000 	lwc1	$f6,0(at)
     a10:	8e050184 	lw	a1,388(s0)
     a14:	4406a000 	mfc1	a2,$f20
     a18:	4407b000 	mfc1	a3,$f22
     a1c:	26040180 	addiu	a0,s0,384
     a20:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     a24:	e7a60010 	swc1	$f6,16(sp)
     a28:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     a2c:	c60c0174 	lwc1	$f12,372(s0)
     a30:	c6080180 	lwc1	$f8,384(s0)
     a34:	c60a0150 	lwc1	$f10,336(s0)
     a38:	c60c0178 	lwc1	$f12,376(s0)
     a3c:	46080102 	mul.s	$f4,$f0,$f8
     a40:	46045180 	add.s	$f6,$f10,$f4
     a44:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     a48:	e6060150 	swc1	$f6,336(s0)
     a4c:	c60a0180 	lwc1	$f10,384(s0)
     a50:	c6080154 	lwc1	$f8,340(s0)
     a54:	c60c017c 	lwc1	$f12,380(s0)
     a58:	460a0102 	mul.s	$f4,$f0,$f10
     a5c:	46044180 	add.s	$f6,$f8,$f4
     a60:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     a64:	e6060154 	swc1	$f6,340(s0)
     a68:	c6080180 	lwc1	$f8,384(s0)
     a6c:	c60a0158 	lwc1	$f10,344(s0)
     a70:	00121043 	sra	v0,s2,0x1
     a74:	46080102 	mul.s	$f4,$f0,$f8
     a78:	30420003 	andi	v0,v0,0x3
     a7c:	3c010000 	lui	at,0x0
     a80:	46045180 	add.s	$f6,$f10,$f4
     a84:	10400009 	beqz	v0,aac <func_80BA2DD4+0x778>
     a88:	e6060158 	swc1	$f6,344(s0)
     a8c:	10550018 	beq	v0,s5,af0 <func_80BA2DD4+0x7bc>
     a90:	00000000 	nop
     a94:	1056002d 	beq	v0,s6,b4c <func_80BA2DD4+0x818>
     a98:	24010003 	li	at,3
     a9c:	10410042 	beq	v0,at,ba8 <func_80BA2DD4+0x874>
     aa0:	00000000 	nop
     aa4:	10000059 	b	c0c <func_80BA2DD4+0x8d8>
     aa8:	00000000 	nop
     aac:	c6080174 	lwc1	$f8,372(s0)
     ab0:	c42a0000 	lwc1	$f10,0(at)
     ab4:	460a4100 	add.s	$f4,$f8,$f10
     ab8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     abc:	e6040174 	swc1	$f4,372(s0)
     ac0:	3c010000 	lui	at,0x0
     ac4:	c4280000 	lwc1	$f8,0(at)
     ac8:	c6060178 	lwc1	$f6,376(s0)
     acc:	3c010000 	lui	at,0x0
     ad0:	46004282 	mul.s	$f10,$f8,$f0
     ad4:	c608017c 	lwc1	$f8,380(s0)
     ad8:	460a3100 	add.s	$f4,$f6,$f10
     adc:	e6040178 	swc1	$f4,376(s0)
     ae0:	c4260000 	lwc1	$f6,0(at)
     ae4:	46064280 	add.s	$f10,$f8,$f6
     ae8:	10000048 	b	c0c <func_80BA2DD4+0x8d8>
     aec:	e60a017c 	swc1	$f10,380(s0)
     af0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     af4:	00000000 	nop
     af8:	3c010000 	lui	at,0x0
     afc:	c4280000 	lwc1	$f8,0(at)
     b00:	c6040174 	lwc1	$f4,372(s0)
     b04:	46004182 	mul.s	$f6,$f8,$f0
     b08:	46062280 	add.s	$f10,$f4,$f6
     b0c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     b10:	e60a0174 	swc1	$f10,372(s0)
     b14:	3c010000 	lui	at,0x0
     b18:	c4240000 	lwc1	$f4,0(at)
     b1c:	c6080178 	lwc1	$f8,376(s0)
     b20:	46002182 	mul.s	$f6,$f4,$f0
     b24:	46064280 	add.s	$f10,$f8,$f6
     b28:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     b2c:	e60a0178 	swc1	$f10,376(s0)
     b30:	3c010000 	lui	at,0x0
     b34:	c4280000 	lwc1	$f8,0(at)
     b38:	c604017c 	lwc1	$f4,380(s0)
     b3c:	46004182 	mul.s	$f6,$f8,$f0
     b40:	46062280 	add.s	$f10,$f4,$f6
     b44:	10000031 	b	c0c <func_80BA2DD4+0x8d8>
     b48:	e60a017c 	swc1	$f10,380(s0)
     b4c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     b50:	00000000 	nop
     b54:	3c010000 	lui	at,0x0
     b58:	c4240000 	lwc1	$f4,0(at)
     b5c:	c6080174 	lwc1	$f8,372(s0)
     b60:	46002182 	mul.s	$f6,$f4,$f0
     b64:	46064280 	add.s	$f10,$f8,$f6
     b68:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     b6c:	e60a0174 	swc1	$f10,372(s0)
     b70:	3c010000 	lui	at,0x0
     b74:	c4280000 	lwc1	$f8,0(at)
     b78:	c6040178 	lwc1	$f4,376(s0)
     b7c:	46004182 	mul.s	$f6,$f8,$f0
     b80:	46062280 	add.s	$f10,$f4,$f6
     b84:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     b88:	e60a0178 	swc1	$f10,376(s0)
     b8c:	3c010000 	lui	at,0x0
     b90:	c4240000 	lwc1	$f4,0(at)
     b94:	c608017c 	lwc1	$f8,380(s0)
     b98:	46002182 	mul.s	$f6,$f4,$f0
     b9c:	46064280 	add.s	$f10,$f8,$f6
     ba0:	1000001a 	b	c0c <func_80BA2DD4+0x8d8>
     ba4:	e60a017c 	swc1	$f10,380(s0)
     ba8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     bac:	00000000 	nop
     bb0:	3c010000 	lui	at,0x0
     bb4:	d4240000 	ldc1	$f4,0(at)
     bb8:	46000221 	cvt.d.s	$f8,$f0
     bbc:	c60a0174 	lwc1	$f10,372(s0)
     bc0:	46282182 	mul.d	$f6,$f4,$f8
     bc4:	46005121 	cvt.d.s	$f4,$f10
     bc8:	46262200 	add.d	$f8,$f4,$f6
     bcc:	462042a0 	cvt.s.d	$f10,$f8
     bd0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     bd4:	e60a0174 	swc1	$f10,372(s0)
     bd8:	3c010000 	lui	at,0x0
     bdc:	c4260000 	lwc1	$f6,0(at)
     be0:	c6040178 	lwc1	$f4,376(s0)
     be4:	46003202 	mul.s	$f8,$f6,$f0
     be8:	46082280 	add.s	$f10,$f4,$f8
     bec:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     bf0:	e60a0178 	swc1	$f10,376(s0)
     bf4:	3c010000 	lui	at,0x0
     bf8:	c4240000 	lwc1	$f4,0(at)
     bfc:	c606017c 	lwc1	$f6,380(s0)
     c00:	46002202 	mul.s	$f8,$f4,$f0
     c04:	46083280 	add.s	$f10,$f6,$f8
     c08:	e60a017c 	swc1	$f10,380(s0)
     c0c:	100000c4 	b	f20 <func_80BA2DD4+0xbec>
     c10:	9202014c 	lbu	v0,332(s0)
     c14:	16c200c2 	bne	s6,v0,f20 <func_80BA2DD4+0xbec>
     c18:	00000000 	nop
     c1c:	14600004 	bnez	v1,c30 <func_80BA2DD4+0x8fc>
     c20:	24090001 	li	t1,1
     c24:	9608019c 	lhu	t0,412(s0)
     c28:	29010501 	slti	at,t0,1281
     c2c:	1420000b 	bnez	at,c5c <func_80BA2DD4+0x928>
     c30:	3c013fc0 	lui	at,0x3fc0
     c34:	44812000 	mtc1	at,$f4
     c38:	a600019c 	sh	zero,412(s0)
     c3c:	a209014c 	sb	t1,332(s0)
     c40:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     c44:	e6040180 	swc1	$f4,384(s0)
     c48:	3c010000 	lui	at,0x0
     c4c:	c4260000 	lwc1	$f6,0(at)
     c50:	46060202 	mul.s	$f8,$f0,$f6
     c54:	46144280 	add.s	$f10,$f8,$f20
     c58:	e60a0184 	swc1	$f10,388(s0)
     c5c:	866a0000 	lh	t2,0(s3)
     c60:	3c053dcc 	lui	a1,0x3dcc
     c64:	34a5cccd 	ori	a1,a1,0xcccd
     c68:	024a5824 	and	t3,s2,t2
     c6c:	15600089 	bnez	t3,e94 <func_80BA2DD4+0xb60>
     c70:	26040190 	addiu	a0,s0,400
     c74:	3c010000 	lui	at,0x0
     c78:	c4240000 	lwc1	$f4,0(at)
     c7c:	3c063dcc 	lui	a2,0x3dcc
     c80:	3c073a83 	lui	a3,0x3a83
     c84:	34e7126f 	ori	a3,a3,0x126f
     c88:	34c6cccd 	ori	a2,a2,0xcccd
     c8c:	26040190 	addiu	a0,s0,400
     c90:	3c053e80 	lui	a1,0x3e80
     c94:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     c98:	e7a40010 	swc1	$f4,16(sp)
     c9c:	8e850024 	lw	a1,36(s4)
     ca0:	4406a000 	mfc1	a2,$f20
     ca4:	e7b60010 	swc1	$f22,16(sp)
     ca8:	26040168 	addiu	a0,s0,360
     cac:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     cb0:	3c073f80 	lui	a3,0x3f80
     cb4:	3c014248 	lui	at,0x4248
     cb8:	44814000 	mtc1	at,$f8
     cbc:	c6860028 	lwc1	$f6,40(s4)
     cc0:	4406a000 	mfc1	a2,$f20
     cc4:	e7b60010 	swc1	$f22,16(sp)
     cc8:	46083280 	add.s	$f10,$f6,$f8
     ccc:	2604016c 	addiu	a0,s0,364
     cd0:	3c073f80 	lui	a3,0x3f80
     cd4:	44055000 	mfc1	a1,$f10
     cd8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     cdc:	00000000 	nop
     ce0:	8e85002c 	lw	a1,44(s4)
     ce4:	4406a000 	mfc1	a2,$f20
     ce8:	e7b60010 	swc1	$f22,16(sp)
     cec:	26040170 	addiu	a0,s0,368
     cf0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     cf4:	3c073f80 	lui	a3,0x3f80
     cf8:	9604018a 	lhu	a0,394(s0)
     cfc:	24018000 	li	at,-32768
     d00:	00812021 	addu	a0,a0,at
     d04:	00042400 	sll	a0,a0,0x10
     d08:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     d0c:	00042403 	sra	a0,a0,0x10
     d10:	960c0196 	lhu	t4,406(s0)
     d14:	26040150 	addiu	a0,s0,336
     d18:	3c014f80 	lui	at,0x4f80
     d1c:	448c2000 	mtc1	t4,$f4
     d20:	05810004 	bgez	t4,d34 <func_80BA2DD4+0xa00>
     d24:	468021a0 	cvt.s.w	$f6,$f4
     d28:	44814000 	mtc1	at,$f8
     d2c:	00000000 	nop
     d30:	46083180 	add.s	$f6,$f6,$f8
     d34:	46003282 	mul.s	$f10,$f6,$f0
     d38:	4406a000 	mfc1	a2,$f20
     d3c:	3c074000 	lui	a3,0x4000
     d40:	e7b60010 	swc1	$f22,16(sp)
     d44:	44055000 	mfc1	a1,$f10
     d48:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     d4c:	00000000 	nop
     d50:	9604018a 	lhu	a0,394(s0)
     d54:	24018000 	li	at,-32768
     d58:	00812021 	addu	a0,a0,at
     d5c:	00042400 	sll	a0,a0,0x10
     d60:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     d64:	00042403 	sra	a0,a0,0x10
     d68:	960d0196 	lhu	t5,406(s0)
     d6c:	26040158 	addiu	a0,s0,344
     d70:	3c014f80 	lui	at,0x4f80
     d74:	448d2000 	mtc1	t5,$f4
     d78:	05a10004 	bgez	t5,d8c <func_80BA2DD4+0xa58>
     d7c:	46802220 	cvt.s.w	$f8,$f4
     d80:	44813000 	mtc1	at,$f6
     d84:	00000000 	nop
     d88:	46064200 	add.s	$f8,$f8,$f6
     d8c:	46004282 	mul.s	$f10,$f8,$f0
     d90:	4406a000 	mfc1	a2,$f20
     d94:	3c074000 	lui	a3,0x4000
     d98:	e7b60010 	swc1	$f22,16(sp)
     d9c:	44055000 	mfc1	a1,$f10
     da0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     da4:	00000000 	nop
     da8:	960f018a 	lhu	t7,394(s0)
     dac:	960e0194 	lhu	t6,404(s0)
     db0:	c60c0178 	lwc1	$f12,376(s0)
     db4:	01eec021 	addu	t8,t7,t6
     db8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     dbc:	a618018a 	sh	t8,394(s0)
     dc0:	c6040154 	lwc1	$f4,340(s0)
     dc4:	46002180 	add.s	$f6,$f4,$f0
     dc8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     dcc:	e6060154 	swc1	$f6,340(s0)
     dd0:	4600b282 	mul.s	$f10,$f22,$f0
     dd4:	c6080174 	lwc1	$f8,372(s0)
     dd8:	c6060178 	lwc1	$f6,376(s0)
     ddc:	460a4100 	add.s	$f4,$f8,$f10
     de0:	c6080198 	lwc1	$f8,408(s0)
     de4:	46083280 	add.s	$f10,$f6,$f8
     de8:	e6040174 	swc1	$f4,372(s0)
     dec:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     df0:	e60a0178 	swc1	$f10,376(s0)
     df4:	3c010000 	lui	at,0x0
     df8:	c4260000 	lwc1	$f6,0(at)
     dfc:	c604017c 	lwc1	$f4,380(s0)
     e00:	9604018a 	lhu	a0,394(s0)
     e04:	46003202 	mul.s	$f8,$f6,$f0
     e08:	24018000 	li	at,-32768
     e0c:	00812021 	addu	a0,a0,at
     e10:	00042400 	sll	a0,a0,0x10
     e14:	00042403 	sra	a0,a0,0x10
     e18:	46082280 	add.s	$f10,$f4,$f8
     e1c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     e20:	e60a017c 	swc1	$f10,380(s0)
     e24:	96190196 	lhu	t9,406(s0)
     e28:	3c014f80 	lui	at,0x4f80
     e2c:	44993000 	mtc1	t9,$f6
     e30:	07210004 	bgez	t9,e44 <func_80BA2DD4+0xb10>
     e34:	46803120 	cvt.s.w	$f4,$f6
     e38:	44814000 	mtc1	at,$f8
     e3c:	00000000 	nop
     e40:	46082100 	add.s	$f4,$f4,$f8
     e44:	46002282 	mul.s	$f10,$f4,$f0
     e48:	9604018a 	lhu	a0,394(s0)
     e4c:	24018000 	li	at,-32768
     e50:	00812021 	addu	a0,a0,at
     e54:	00042400 	sll	a0,a0,0x10
     e58:	00042403 	sra	a0,a0,0x10
     e5c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     e60:	e60a0150 	swc1	$f10,336(s0)
     e64:	96080196 	lhu	t0,406(s0)
     e68:	3c014f80 	lui	at,0x4f80
     e6c:	44883000 	mtc1	t0,$f6
     e70:	05010004 	bgez	t0,e84 <func_80BA2DD4+0xb50>
     e74:	46803220 	cvt.s.w	$f8,$f6
     e78:	44812000 	mtc1	at,$f4
     e7c:	00000000 	nop
     e80:	46044200 	add.s	$f8,$f8,$f4
     e84:	46004282 	mul.s	$f10,$f8,$f0
     e88:	9202014c 	lbu	v0,332(s0)
     e8c:	10000024 	b	f20 <func_80BA2DD4+0xbec>
     e90:	e60a0158 	swc1	$f10,344(s0)
     e94:	3c010000 	lui	at,0x0
     e98:	c4260000 	lwc1	$f6,0(at)
     e9c:	3c073a83 	lui	a3,0x3a83
     ea0:	34e7126f 	ori	a3,a3,0x126f
     ea4:	00a03021 	move	a2,a1
     ea8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     eac:	e7a60010 	swc1	$f6,16(sp)
     eb0:	3c010000 	lui	at,0x0
     eb4:	c4240000 	lwc1	$f4,0(at)
     eb8:	4406a000 	mfc1	a2,$f20
     ebc:	3c073dcc 	lui	a3,0x3dcc
     ec0:	34e7cccd 	ori	a3,a3,0xcccd
     ec4:	26040180 	addiu	a0,s0,384
     ec8:	3c053fc0 	lui	a1,0x3fc0
     ecc:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
     ed0:	e7a40010 	swc1	$f4,16(sp)
     ed4:	c6080114 	lwc1	$f8,276(s0)
     ed8:	c60a0168 	lwc1	$f10,360(s0)
     edc:	c6040108 	lwc1	$f4,264(s0)
     ee0:	9202014c 	lbu	v0,332(s0)
     ee4:	460a4181 	sub.s	$f6,$f8,$f10
     ee8:	c60a0118 	lwc1	$f10,280(s0)
     eec:	46043200 	add.s	$f8,$f6,$f4
     ef0:	c606016c 	lwc1	$f6,364(s0)
     ef4:	46065101 	sub.s	$f4,$f10,$f6
     ef8:	e6080150 	swc1	$f8,336(s0)
     efc:	c608010c 	lwc1	$f8,268(s0)
     f00:	c606011c 	lwc1	$f6,284(s0)
     f04:	46082280 	add.s	$f10,$f4,$f8
     f08:	c6040170 	lwc1	$f4,368(s0)
     f0c:	46043201 	sub.s	$f8,$f6,$f4
     f10:	e60a0154 	swc1	$f10,340(s0)
     f14:	c60a0110 	lwc1	$f10,272(s0)
     f18:	460a4180 	add.s	$f6,$f8,$f10
     f1c:	e6060158 	swc1	$f6,344(s0)
     f20:	52c2006f 	beql	s6,v0,10e0 <func_80BA2DD4+0xdac>
     f24:	8fa90088 	lw	t1,136(sp)
     f28:	c6040150 	lwc1	$f4,336(s0)
     f2c:	c6080168 	lwc1	$f8,360(s0)
     f30:	c7a600cc 	lwc1	$f6,204(sp)
     f34:	4600c307 	neg.s	$f12,$f24
     f38:	46082280 	add.s	$f10,$f4,$f8
     f3c:	46065081 	sub.s	$f2,$f10,$f6
     f40:	4602c03c 	c.lt.s	$f24,$f2
     f44:	00000000 	nop
     f48:	4503001e 	bc1tl	fc4 <func_80BA2DD4+0xc90>
     f4c:	4602c03c 	c.lt.s	$f24,$f2
     f50:	460c103c 	c.lt.s	$f2,$f12
     f54:	00000000 	nop
     f58:	4503001a 	bc1tl	fc4 <func_80BA2DD4+0xc90>
     f5c:	4602c03c 	c.lt.s	$f24,$f2
     f60:	c6040154 	lwc1	$f4,340(s0)
     f64:	c608016c 	lwc1	$f8,364(s0)
     f68:	46082280 	add.s	$f10,$f4,$f8
     f6c:	461c5001 	sub.s	$f0,$f10,$f28
     f70:	4600c03c 	c.lt.s	$f24,$f0
     f74:	00000000 	nop
     f78:	45030012 	bc1tl	fc4 <func_80BA2DD4+0xc90>
     f7c:	4602c03c 	c.lt.s	$f24,$f2
     f80:	460c003c 	c.lt.s	$f0,$f12
     f84:	00000000 	nop
     f88:	4503000e 	bc1tl	fc4 <func_80BA2DD4+0xc90>
     f8c:	4602c03c 	c.lt.s	$f24,$f2
     f90:	c6060158 	lwc1	$f6,344(s0)
     f94:	c6040170 	lwc1	$f4,368(s0)
     f98:	46043200 	add.s	$f8,$f6,$f4
     f9c:	461e4001 	sub.s	$f0,$f8,$f30
     fa0:	4600c03c 	c.lt.s	$f24,$f0
     fa4:	00000000 	nop
     fa8:	45030006 	bc1tl	fc4 <func_80BA2DD4+0xc90>
     fac:	4602c03c 	c.lt.s	$f24,$f2
     fb0:	460c003c 	c.lt.s	$f0,$f12
     fb4:	00000000 	nop
     fb8:	45020049 	bc1fl	10e0 <func_80BA2DD4+0xdac>
     fbc:	8fa90088 	lw	t1,136(sp)
     fc0:	4602c03c 	c.lt.s	$f24,$f2
     fc4:	c7aa00cc 	lwc1	$f10,204(sp)
     fc8:	4502000a 	bc1fl	ff4 <func_80BA2DD4+0xcc0>
     fcc:	460c103c 	c.lt.s	$f2,$f12
     fd0:	46185181 	sub.s	$f6,$f10,$f24
     fd4:	e61a0150 	swc1	$f26,336(s0)
     fd8:	c6040150 	lwc1	$f4,336(s0)
     fdc:	e6060168 	swc1	$f6,360(s0)
     fe0:	c6080168 	lwc1	$f8,360(s0)
     fe4:	c7a600cc 	lwc1	$f6,204(sp)
     fe8:	46082280 	add.s	$f10,$f4,$f8
     fec:	46065081 	sub.s	$f2,$f10,$f6
     ff0:	460c103c 	c.lt.s	$f2,$f12
     ff4:	c7a400cc 	lwc1	$f4,204(sp)
     ff8:	45020005 	bc1fl	1010 <func_80BA2DD4+0xcdc>
     ffc:	c60a0154 	lwc1	$f10,340(s0)
    1000:	46182200 	add.s	$f8,$f4,$f24
    1004:	e61a0150 	swc1	$f26,336(s0)
    1008:	e6080168 	swc1	$f8,360(s0)
    100c:	c60a0154 	lwc1	$f10,340(s0)
    1010:	c606016c 	lwc1	$f6,364(s0)
    1014:	3c014248 	lui	at,0x4248
    1018:	44814000 	mtc1	at,$f8
    101c:	46065100 	add.s	$f4,$f10,$f6
    1020:	3c014248 	lui	at,0x4248
    1024:	461c2001 	sub.s	$f0,$f4,$f28
    1028:	4600403c 	c.lt.s	$f8,$f0
    102c:	00000000 	nop
    1030:	4502000a 	bc1fl	105c <func_80BA2DD4+0xd28>
    1034:	3c01c248 	lui	at,0xc248
    1038:	44815000 	mtc1	at,$f10
    103c:	e61a0154 	swc1	$f26,340(s0)
    1040:	c6040154 	lwc1	$f4,340(s0)
    1044:	460ae181 	sub.s	$f6,$f28,$f10
    1048:	e606016c 	swc1	$f6,364(s0)
    104c:	c608016c 	lwc1	$f8,364(s0)
    1050:	46082280 	add.s	$f10,$f4,$f8
    1054:	461c5001 	sub.s	$f0,$f10,$f28
    1058:	3c01c248 	lui	at,0xc248
    105c:	44813000 	mtc1	at,$f6
    1060:	3c014248 	lui	at,0x4248
    1064:	4606003c 	c.lt.s	$f0,$f6
    1068:	00000000 	nop
    106c:	45020006 	bc1fl	1088 <func_80BA2DD4+0xd54>
    1070:	c60a0158 	lwc1	$f10,344(s0)
    1074:	44812000 	mtc1	at,$f4
    1078:	e61a0154 	swc1	$f26,340(s0)
    107c:	4604e200 	add.s	$f8,$f28,$f4
    1080:	e608016c 	swc1	$f8,364(s0)
    1084:	c60a0158 	lwc1	$f10,344(s0)
    1088:	c6060170 	lwc1	$f6,368(s0)
    108c:	46065100 	add.s	$f4,$f10,$f6
    1090:	461e2001 	sub.s	$f0,$f4,$f30
    1094:	4600c03c 	c.lt.s	$f24,$f0
    1098:	00000000 	nop
    109c:	45020009 	bc1fl	10c4 <func_80BA2DD4+0xd90>
    10a0:	460c003c 	c.lt.s	$f0,$f12
    10a4:	4618f201 	sub.s	$f8,$f30,$f24
    10a8:	e61a0158 	swc1	$f26,344(s0)
    10ac:	c60a0158 	lwc1	$f10,344(s0)
    10b0:	e6080170 	swc1	$f8,368(s0)
    10b4:	c6060170 	lwc1	$f6,368(s0)
    10b8:	46065100 	add.s	$f4,$f10,$f6
    10bc:	461e2001 	sub.s	$f0,$f4,$f30
    10c0:	460c003c 	c.lt.s	$f0,$f12
    10c4:	00000000 	nop
    10c8:	45020005 	bc1fl	10e0 <func_80BA2DD4+0xdac>
    10cc:	8fa90088 	lw	t1,136(sp)
    10d0:	4618f200 	add.s	$f8,$f30,$f24
    10d4:	e61a0158 	swc1	$f26,344(s0)
    10d8:	e6080170 	swc1	$f8,368(s0)
    10dc:	8fa90088 	lw	t1,136(sp)
    10e0:	10000004 	b	10f4 <func_80BA2DD4+0xdc0>
    10e4:	91230b15 	lbu	v1,2837(t1)
    10e8:	a200014c 	sb	zero,332(s0)
    10ec:	8faa0088 	lw	t2,136(sp)
    10f0:	91430b15 	lbu	v1,2837(t2)
    10f4:	26520001 	addiu	s2,s2,1
    10f8:	00129400 	sll	s2,s2,0x10
    10fc:	00129403 	sra	s2,s2,0x10
    1100:	0243082a 	slt	at,s2,v1
    1104:	5420fd1e 	bnezl	at,580 <func_80BA2DD4+0x24c>
    1108:	c63000e0 	lwc1	$f16,224(s1)
    110c:	8fbf006c 	lw	ra,108(sp)
    1110:	d7b40020 	ldc1	$f20,32(sp)
    1114:	d7b60028 	ldc1	$f22,40(sp)
    1118:	d7b80030 	ldc1	$f24,48(sp)
    111c:	d7ba0038 	ldc1	$f26,56(sp)
    1120:	d7bc0040 	ldc1	$f28,64(sp)
    1124:	d7be0048 	ldc1	$f30,72(sp)
    1128:	8fb00050 	lw	s0,80(sp)
    112c:	8fb10054 	lw	s1,84(sp)
    1130:	8fb20058 	lw	s2,88(sp)
    1134:	8fb3005c 	lw	s3,92(sp)
    1138:	8fb40060 	lw	s4,96(sp)
    113c:	8fb50064 	lw	s5,100(sp)
    1140:	8fb60068 	lw	s6,104(sp)
    1144:	03e00008 	jr	ra
    1148:	27bd00f8 	addiu	sp,sp,248

0000114c <ObjectKankyo_Update>:
    114c:	27bdffe8 	addiu	sp,sp,-24
    1150:	afbf0014 	sw	ra,20(sp)
    1154:	8c99165c 	lw	t9,5724(a0)
    1158:	0320f809 	jalr	t9
    115c:	00000000 	nop
    1160:	8fbf0014 	lw	ra,20(sp)
    1164:	27bd0018 	addiu	sp,sp,24
    1168:	03e00008 	jr	ra
    116c:	00000000 	nop

00001170 <ObjectKankyo_Draw>:
    1170:	27bdffe8 	addiu	sp,sp,-24
    1174:	afbf0014 	sw	ra,20(sp)
    1178:	948e001c 	lhu	t6,28(a0)
    117c:	2dc10006 	sltiu	at,t6,6
    1180:	10200018 	beqz	at,11e4 <L80BA3C84>
    1184:	000e7080 	sll	t6,t6,0x2
    1188:	3c010000 	lui	at,0x0
    118c:	002e0821 	addu	at,at,t6
    1190:	8c2e0000 	lw	t6,0(at)
    1194:	01c00008 	jr	t6
    1198:	00000000 	nop

0000119c <L80BA3C3C>:
    119c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    11a0:	00000000 	nop
    11a4:	10000010 	b	11e8 <L80BA3C84+0x4>
    11a8:	8fbf0014 	lw	ra,20(sp)

000011ac <L80BA3C4C>:
    11ac:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    11b0:	00000000 	nop
    11b4:	1000000c 	b	11e8 <L80BA3C84+0x4>
    11b8:	8fbf0014 	lw	ra,20(sp)

000011bc <L80BA3C5C>:
    11bc:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    11c0:	00000000 	nop
    11c4:	10000008 	b	11e8 <L80BA3C84+0x4>
    11c8:	8fbf0014 	lw	ra,20(sp)

000011cc <L80BA3C6C>:
    11cc:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    11d0:	00000000 	nop
    11d4:	10000004 	b	11e8 <L80BA3C84+0x4>
    11d8:	8fbf0014 	lw	ra,20(sp)

000011dc <L80BA3C7C>:
    11dc:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    11e0:	00000000 	nop

000011e4 <L80BA3C84>:
    11e4:	8fbf0014 	lw	ra,20(sp)
    11e8:	27bd0018 	addiu	sp,sp,24
    11ec:	03e00008 	jr	ra
    11f0:	00000000 	nop

000011f4 <func_80BA3C94>:
    11f4:	27bdff48 	addiu	sp,sp,-184
    11f8:	3c0f0000 	lui	t7,0x0
    11fc:	afbf003c 	sw	ra,60(sp)
    1200:	afb70038 	sw	s7,56(sp)
    1204:	afb60034 	sw	s6,52(sp)
    1208:	afb50030 	sw	s5,48(sp)
    120c:	afb4002c 	sw	s4,44(sp)
    1210:	afb30028 	sw	s3,40(sp)
    1214:	afb20024 	sw	s2,36(sp)
    1218:	afb10020 	sw	s1,32(sp)
    121c:	afb0001c 	sw	s0,28(sp)
    1220:	f7b40010 	sdc1	$f20,16(sp)
    1224:	25ef0000 	addiu	t7,t7,0
    1228:	8df90000 	lw	t9,0(t7)
    122c:	27ae00a0 	addiu	t6,sp,160
    1230:	8df80004 	lw	t8,4(t7)
    1234:	add90000 	sw	t9,0(t6)
    1238:	8df90008 	lw	t9,8(t7)
    123c:	3c090000 	lui	t1,0x0
    1240:	25290000 	addiu	t1,t1,0
    1244:	add80004 	sw	t8,4(t6)
    1248:	add90008 	sw	t9,8(t6)
    124c:	8d2b0000 	lw	t3,0(t1)
    1250:	27a80094 	addiu	t0,sp,148
    1254:	8d2a0004 	lw	t2,4(t1)
    1258:	ad0b0000 	sw	t3,0(t0)
    125c:	8d2b0008 	lw	t3,8(t1)
    1260:	ad0a0004 	sw	t2,4(t0)
    1264:	00808825 	move	s1,a0
    1268:	ad0b0008 	sw	t3,8(t0)
    126c:	8cac0790 	lw	t4,1936(a1)
    1270:	3c060000 	lui	a2,0x0
    1274:	00a0a025 	move	s4,a1
    1278:	858d014c 	lh	t5,332(t4)
    127c:	00a08025 	move	s0,a1
    1280:	24c60000 	addiu	a2,a2,0
    1284:	31ae0100 	andi	t6,t5,0x100
    1288:	15c000fc 	bnez	t6,167c <func_80BA3C94+0x488>
    128c:	27a4007c 	addiu	a0,sp,124
    1290:	8ca50000 	lw	a1,0(a1)
    1294:	24070327 	li	a3,807
    1298:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    129c:	00a09025 	move	s2,a1
    12a0:	8e4402d0 	lw	a0,720(s2)
    12a4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    12a8:	24050014 	li	a1,20
    12ac:	3c040405 	lui	a0,0x405
    12b0:	2484c160 	addiu	a0,a0,-16032
    12b4:	0004c900 	sll	t9,a0,0x4
    12b8:	ae4202d0 	sw	v0,720(s2)
    12bc:	00194702 	srl	t0,t9,0x1c
    12c0:	244f0008 	addiu	t7,v0,8
    12c4:	3c18db06 	lui	t8,0xdb06
    12c8:	37180020 	ori	t8,t8,0x20
    12cc:	ae4f02d0 	sw	t7,720(s2)
    12d0:	00084880 	sll	t1,t0,0x2
    12d4:	3c0a0000 	lui	t2,0x0
    12d8:	01495021 	addu	t2,t2,t1
    12dc:	ac580000 	sw	t8,0(v0)
    12e0:	3c0100ff 	lui	at,0xff
    12e4:	8d4a0000 	lw	t2,0(t2)
    12e8:	3421ffff 	ori	at,at,0xffff
    12ec:	00815824 	and	t3,a0,at
    12f0:	3c018000 	lui	at,0x8000
    12f4:	014b6021 	addu	t4,t2,t3
    12f8:	01816821 	addu	t5,t4,at
    12fc:	ac4d0004 	sw	t5,4(v0)
    1300:	8e4202d0 	lw	v0,720(s2)
    1304:	3c180405 	lui	t8,0x405
    1308:	2718d160 	addiu	t8,t8,-11936
    130c:	244e0008 	addiu	t6,v0,8
    1310:	ae4e02d0 	sw	t6,720(s2)
    1314:	3c0fde00 	lui	t7,0xde00
    1318:	3c190001 	lui	t9,0x1
    131c:	0334c821 	addu	t9,t9,s4
    1320:	ac4f0000 	sw	t7,0(v0)
    1324:	ac580004 	sw	t8,4(v0)
    1328:	93390b15 	lbu	t9,2837(t9)
    132c:	3c010001 	lui	at,0x1
    1330:	02014021 	addu	t0,s0,at
    1334:	1b2000cb 	blez	t9,1664 <func_80BA3C94+0x470>
    1338:	00009825 	move	s3,zero
    133c:	34211da0 	ori	at,at,0x1da0
    1340:	02815021 	addu	t2,s4,at
    1344:	3c013f80 	lui	at,0x3f80
    1348:	3c090405 	lui	t1,0x405
    134c:	2529d1a8 	addiu	t1,t1,-11864
    1350:	4481a000 	mtc1	at,$f20
    1354:	afa90048 	sw	t1,72(sp)
    1358:	afaa0040 	sw	t2,64(sp)
    135c:	afa80050 	sw	t0,80(sp)
    1360:	3c17fb00 	lui	s7,0xfb00
    1364:	3c16fa00 	lui	s6,0xfa00
    1368:	24150002 	li	s5,2
    136c:	00135880 	sll	t3,s3,0x2
    1370:	01735821 	addu	t3,t3,s3
    1374:	000b5880 	sll	t3,t3,0x2
    1378:	01735821 	addu	t3,t3,s3
    137c:	000b5880 	sll	t3,t3,0x2
    1380:	022b8021 	addu	s0,s1,t3
    1384:	c6040150 	lwc1	$f4,336(s0)
    1388:	c6060168 	lwc1	$f6,360(s0)
    138c:	c6100158 	lwc1	$f16,344(s0)
    1390:	c6120170 	lwc1	$f18,368(s0)
    1394:	46062300 	add.s	$f12,$f4,$f6
    1398:	c6080154 	lwc1	$f8,340(s0)
    139c:	c60a016c 	lwc1	$f10,364(s0)
    13a0:	46128100 	add.s	$f4,$f16,$f18
    13a4:	00003825 	move	a3,zero
    13a8:	460a4380 	add.s	$f14,$f8,$f10
    13ac:	44062000 	mfc1	a2,$f4
    13b0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    13b4:	00000000 	nop
    13b8:	920c018c 	lbu	t4,396(s0)
    13bc:	3c014f80 	lui	at,0x4f80
    13c0:	448c3000 	mtc1	t4,$f6
    13c4:	05810004 	bgez	t4,13d8 <func_80BA3C94+0x1e4>
    13c8:	46803220 	cvt.s.w	$f8,$f6
    13cc:	44815000 	mtc1	at,$f10
    13d0:	00000000 	nop
    13d4:	460a4200 	add.s	$f8,$f8,$f10
    13d8:	3c014248 	lui	at,0x4248
    13dc:	44818000 	mtc1	at,$f16
    13e0:	00000000 	nop
    13e4:	46104003 	div.s	$f0,$f8,$f16
    13e8:	4600a03c 	c.lt.s	$f20,$f0
    13ec:	00000000 	nop
    13f0:	45020003 	bc1fl	1400 <func_80BA3C94+0x20c>
    13f4:	c6120190 	lwc1	$f18,400(s0)
    13f8:	4600a006 	mov.s	$f0,$f20
    13fc:	c6120190 	lwc1	$f18,400(s0)
    1400:	24070001 	li	a3,1
    1404:	46009302 	mul.s	$f12,$f18,$f0
    1408:	44066000 	mfc1	a2,$f12
    140c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1410:	46006386 	mov.s	$f14,$f12
    1414:	2a610020 	slti	at,s3,32
    1418:	1020000f 	beqz	at,1458 <func_80BA3C94+0x264>
    141c:	24050001 	li	a1,1
    1420:	920d014c 	lbu	t5,332(s0)
    1424:	52ad0007 	beql	s5,t5,1444 <func_80BA3C94+0x250>
    1428:	9202018c 	lbu	v0,396(s0)
    142c:	9202018c 	lbu	v0,396(s0)
    1430:	1840002d 	blez	v0,14e8 <func_80BA3C94+0x2f4>
    1434:	244effff 	addiu	t6,v0,-1
    1438:	1000002b 	b	14e8 <func_80BA3C94+0x2f4>
    143c:	a20e018c 	sb	t6,396(s0)
    1440:	9202018c 	lbu	v0,396(s0)
    1444:	28410064 	slti	at,v0,100
    1448:	10200027 	beqz	at,14e8 <func_80BA3C94+0x2f4>
    144c:	244f0001 	addiu	t7,v0,1
    1450:	10000025 	b	14e8 <func_80BA3C94+0x2f4>
    1454:	a20f018c 	sb	t7,396(s0)
    1458:	9218014c 	lbu	t8,332(s0)
    145c:	52b80013 	beql	s5,t8,14ac <func_80BA3C94+0x2b8>
    1460:	960b0188 	lhu	t3,392(s0)
    1464:	96190188 	lhu	t9,392(s0)
    1468:	3328001f 	andi	t0,t9,0x1f
    146c:	29010010 	slti	at,t0,16
    1470:	50200008 	beqzl	at,1494 <func_80BA3C94+0x2a0>
    1474:	9202018c 	lbu	v0,396(s0)
    1478:	9202018c 	lbu	v0,396(s0)
    147c:	284100eb 	slti	at,v0,235
    1480:	10200019 	beqz	at,14e8 <func_80BA3C94+0x2f4>
    1484:	24490014 	addiu	t1,v0,20
    1488:	10000017 	b	14e8 <func_80BA3C94+0x2f4>
    148c:	a209018c 	sb	t1,396(s0)
    1490:	9202018c 	lbu	v0,396(s0)
    1494:	28410015 	slti	at,v0,21
    1498:	14200013 	bnez	at,14e8 <func_80BA3C94+0x2f4>
    149c:	244affec 	addiu	t2,v0,-20
    14a0:	10000011 	b	14e8 <func_80BA3C94+0x2f4>
    14a4:	a20a018c 	sb	t2,396(s0)
    14a8:	960b0188 	lhu	t3,392(s0)
    14ac:	316c000f 	andi	t4,t3,0xf
    14b0:	29810008 	slti	at,t4,8
    14b4:	50200008 	beqzl	at,14d8 <func_80BA3C94+0x2e4>
    14b8:	9202018c 	lbu	v0,396(s0)
    14bc:	9202018c 	lbu	v0,396(s0)
    14c0:	284100ff 	slti	at,v0,255
    14c4:	10200008 	beqz	at,14e8 <func_80BA3C94+0x2f4>
    14c8:	244d0064 	addiu	t5,v0,100
    14cc:	10000006 	b	14e8 <func_80BA3C94+0x2f4>
    14d0:	a20d018c 	sb	t5,396(s0)
    14d4:	9202018c 	lbu	v0,396(s0)
    14d8:	2841000b 	slti	at,v0,11
    14dc:	14200002 	bnez	at,14e8 <func_80BA3C94+0x2f4>
    14e0:	244efff6 	addiu	t6,v0,-10
    14e4:	a20e018c 	sb	t6,396(s0)
    14e8:	8e4202d0 	lw	v0,720(s2)
    14ec:	3c18e700 	lui	t8,0xe700
    14f0:	24010001 	li	at,1
    14f4:	244f0008 	addiu	t7,v0,8
    14f8:	ae4f02d0 	sw	t7,720(s2)
    14fc:	ac400004 	sw	zero,4(v0)
    1500:	ac580000 	sw	t8,0(v0)
    1504:	32620001 	andi	v0,s3,0x1
    1508:	50400006 	beqzl	v0,1524 <func_80BA3C94+0x330>
    150c:	8e4202d0 	lw	v0,720(s2)
    1510:	50410015 	beql	v0,at,1568 <func_80BA3C94+0x374>
    1514:	8e4202d0 	lw	v0,720(s2)
    1518:	10000023 	b	15a8 <func_80BA3C94+0x3b4>
    151c:	00000000 	nop
    1520:	8e4202d0 	lw	v0,720(s2)
    1524:	24019b00 	li	at,-25856
    1528:	24590008 	addiu	t9,v0,8
    152c:	ae5902d0 	sw	t9,720(s2)
    1530:	ac560000 	sw	s6,0(v0)
    1534:	9209018c 	lbu	t1,396(s0)
    1538:	01215025 	or	t2,t1,at
    153c:	ac4a0004 	sw	t2,4(v0)
    1540:	8e4202d0 	lw	v0,720(s2)
    1544:	3c01fab4 	lui	at,0xfab4
    1548:	244b0008 	addiu	t3,v0,8
    154c:	ae4b02d0 	sw	t3,720(s2)
    1550:	ac570000 	sw	s7,0(v0)
    1554:	920d018c 	lbu	t5,396(s0)
    1558:	01a17025 	or	t6,t5,at
    155c:	10000012 	b	15a8 <func_80BA3C94+0x3b4>
    1560:	ac4e0004 	sw	t6,4(v0)
    1564:	8e4202d0 	lw	v0,720(s2)
    1568:	2401ff00 	li	at,-256
    156c:	244f0008 	addiu	t7,v0,8
    1570:	ae4f02d0 	sw	t7,720(s2)
    1574:	ac560000 	sw	s6,0(v0)
    1578:	9219018c 	lbu	t9,396(s0)
    157c:	03214025 	or	t0,t9,at
    1580:	ac480004 	sw	t0,4(v0)
    1584:	8e4202d0 	lw	v0,720(s2)
    1588:	3c010064 	lui	at,0x64
    158c:	3421ff00 	ori	at,at,0xff00
    1590:	24490008 	addiu	t1,v0,8
    1594:	ae4902d0 	sw	t1,720(s2)
    1598:	ac570000 	sw	s7,0(v0)
    159c:	920b018c 	lbu	t3,396(s0)
    15a0:	01616025 	or	t4,t3,at
    15a4:	ac4c0004 	sw	t4,4(v0)
    15a8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    15ac:	8fa40040 	lw	a0,64(sp)
    15b0:	8e8d009c 	lw	t5,156(s4)
    15b4:	3c014f80 	lui	at,0x4f80
    15b8:	448d2000 	mtc1	t5,$f4
    15bc:	05a10004 	bgez	t5,15d0 <func_80BA3C94+0x3dc>
    15c0:	468021a0 	cvt.s.w	$f6,$f4
    15c4:	44815000 	mtc1	at,$f10
    15c8:	00000000 	nop
    15cc:	460a3180 	add.s	$f6,$f6,$f10
    15d0:	3c0141a0 	lui	at,0x41a0
    15d4:	44814000 	mtc1	at,$f8
    15d8:	3c010000 	lui	at,0x0
    15dc:	c4320000 	lwc1	$f18,0(at)
    15e0:	46083402 	mul.s	$f16,$f6,$f8
    15e4:	24050001 	li	a1,1
    15e8:	46128302 	mul.s	$f12,$f16,$f18
    15ec:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    15f0:	00000000 	nop
    15f4:	8e4202d0 	lw	v0,720(s2)
    15f8:	3c0fda38 	lui	t7,0xda38
    15fc:	35ef0003 	ori	t7,t7,0x3
    1600:	244e0008 	addiu	t6,v0,8
    1604:	ae4e02d0 	sw	t6,720(s2)
    1608:	3c050000 	lui	a1,0x0
    160c:	ac4f0000 	sw	t7,0(v0)
    1610:	8e840000 	lw	a0,0(s4)
    1614:	24a50000 	addiu	a1,a1,0
    1618:	24060391 	li	a2,913
    161c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1620:	00408025 	move	s0,v0
    1624:	ae020004 	sw	v0,4(s0)
    1628:	8e4202d0 	lw	v0,720(s2)
    162c:	3c19de00 	lui	t9,0xde00
    1630:	26730001 	addiu	s3,s3,1
    1634:	24580008 	addiu	t8,v0,8
    1638:	ae5802d0 	sw	t8,720(s2)
    163c:	ac590000 	sw	t9,0(v0)
    1640:	8fa80048 	lw	t0,72(sp)
    1644:	00139c00 	sll	s3,s3,0x10
    1648:	00139c03 	sra	s3,s3,0x10
    164c:	ac480004 	sw	t0,4(v0)
    1650:	8fa90050 	lw	t1,80(sp)
    1654:	912a0b15 	lbu	t2,2837(t1)
    1658:	026a082a 	slt	at,s3,t2
    165c:	5420ff44 	bnezl	at,1370 <func_80BA3C94+0x17c>
    1660:	00135880 	sll	t3,s3,0x2
    1664:	3c060000 	lui	a2,0x0
    1668:	24c60000 	addiu	a2,a2,0
    166c:	27a4007c 	addiu	a0,sp,124
    1670:	8e850000 	lw	a1,0(s4)
    1674:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1678:	2407039a 	li	a3,922
    167c:	8fbf003c 	lw	ra,60(sp)
    1680:	d7b40010 	ldc1	$f20,16(sp)
    1684:	8fb0001c 	lw	s0,28(sp)
    1688:	8fb10020 	lw	s1,32(sp)
    168c:	8fb20024 	lw	s2,36(sp)
    1690:	8fb30028 	lw	s3,40(sp)
    1694:	8fb4002c 	lw	s4,44(sp)
    1698:	8fb50030 	lw	s5,48(sp)
    169c:	8fb60034 	lw	s6,52(sp)
    16a0:	8fb70038 	lw	s7,56(sp)
    16a4:	03e00008 	jr	ra
    16a8:	27bd00b8 	addiu	sp,sp,184

000016ac <func_80BA414C>:
    16ac:	27bdfee8 	addiu	sp,sp,-280
    16b0:	3c0f0000 	lui	t7,0x0
    16b4:	afbf005c 	sw	ra,92(sp)
    16b8:	afb50058 	sw	s5,88(sp)
    16bc:	afb40054 	sw	s4,84(sp)
    16c0:	afb30050 	sw	s3,80(sp)
    16c4:	afb2004c 	sw	s2,76(sp)
    16c8:	afb10048 	sw	s1,72(sp)
    16cc:	afb00044 	sw	s0,68(sp)
    16d0:	f7be0038 	sdc1	$f30,56(sp)
    16d4:	f7bc0030 	sdc1	$f28,48(sp)
    16d8:	f7ba0028 	sdc1	$f26,40(sp)
    16dc:	f7b80020 	sdc1	$f24,32(sp)
    16e0:	f7b60018 	sdc1	$f22,24(sp)
    16e4:	f7b40010 	sdc1	$f20,16(sp)
    16e8:	25ef0000 	addiu	t7,t7,0
    16ec:	8df90000 	lw	t9,0(t7)
    16f0:	27ae00e0 	addiu	t6,sp,224
    16f4:	8df80004 	lw	t8,4(t7)
    16f8:	add90000 	sw	t9,0(t6)
    16fc:	8df90008 	lw	t9,8(t7)
    1700:	3c090000 	lui	t1,0x0
    1704:	25290000 	addiu	t1,t1,0
    1708:	add80004 	sw	t8,4(t6)
    170c:	add90008 	sw	t9,8(t6)
    1710:	8d2b0000 	lw	t3,0(t1)
    1714:	27a800d4 	addiu	t0,sp,212
    1718:	8d2a0004 	lw	t2,4(t1)
    171c:	ad0b0000 	sw	t3,0(t0)
    1720:	8d2b0008 	lw	t3,8(t1)
    1724:	ad0a0004 	sw	t2,4(t0)
    1728:	00808825 	move	s1,a0
    172c:	ad0b0008 	sw	t3,8(t0)
    1730:	8cac0790 	lw	t4,1936(a1)
    1734:	3c060000 	lui	a2,0x0
    1738:	00a09825 	move	s3,a1
    173c:	858d014c 	lh	t5,332(t4)
    1740:	00a08025 	move	s0,a1
    1744:	24c60000 	addiu	a2,a2,0
    1748:	31ae0100 	andi	t6,t5,0x100
    174c:	15c001ba 	bnez	t6,1e38 <func_80BA414C+0x78c>
    1750:	27a400b4 	addiu	a0,sp,180
    1754:	8ca50000 	lw	a1,0(a1)
    1758:	240703be 	li	a3,958
    175c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1760:	00a09025 	move	s2,a1
    1764:	3c010001 	lui	at,0x1
    1768:	02611821 	addu	v1,s3,at
    176c:	90620b14 	lbu	v0,2836(v1)
    1770:	90640b15 	lbu	a0,2837(v1)
    1774:	3c15e700 	lui	s5,0xe700
    1778:	0044082a 	slt	at,v0,a0
    177c:	5020000a 	beqzl	at,17a8 <func_80BA414C+0xfc>
    1780:	0082082a 	slt	at,a0,v0
    1784:	8e6f009c 	lw	t7,156(s3)
    1788:	24590002 	addiu	t9,v0,2
    178c:	31f8000f 	andi	t8,t7,0xf
    1790:	1700000e 	bnez	t8,17cc <func_80BA414C+0x120>
    1794:	00000000 	nop
    1798:	a0790b14 	sb	t9,2836(v1)
    179c:	1000000b 	b	17cc <func_80BA414C+0x120>
    17a0:	332200ff 	andi	v0,t9,0xff
    17a4:	0082082a 	slt	at,a0,v0
    17a8:	10200008 	beqz	at,17cc <func_80BA414C+0x120>
    17ac:	00000000 	nop
    17b0:	8e68009c 	lw	t0,156(s3)
    17b4:	244afffe 	addiu	t2,v0,-2
    17b8:	3109000f 	andi	t1,t0,0xf
    17bc:	15200003 	bnez	t1,17cc <func_80BA414C+0x120>
    17c0:	00000000 	nop
    17c4:	a06a0b14 	sb	t2,2836(v1)
    17c8:	314200ff 	andi	v0,t2,0xff
    17cc:	18400194 	blez	v0,1e20 <func_80BA414C+0x774>
    17d0:	0000a025 	move	s4,zero
    17d4:	3c010001 	lui	at,0x1
    17d8:	02015821 	addu	t3,s0,at
    17dc:	3c020405 	lui	v0,0x405
    17e0:	24422db0 	addiu	v0,v0,11696
    17e4:	3c0100ff 	lui	at,0xff
    17e8:	3421ffff 	ori	at,at,0xffff
    17ec:	0041c824 	and	t9,v0,at
    17f0:	00026100 	sll	t4,v0,0x4
    17f4:	000c6f02 	srl	t5,t4,0x1c
    17f8:	3c0142a0 	lui	at,0x42a0
    17fc:	3c0f0000 	lui	t7,0x0
    1800:	25ef0000 	addiu	t7,t7,0
    1804:	000d7080 	sll	t6,t5,0x2
    1808:	3c080100 	lui	t0,0x100
    180c:	3c090401 	lui	t1,0x401
    1810:	25290050 	addiu	t1,t1,80
    1814:	25080000 	addiu	t0,t0,0
    1818:	01cfc021 	addu	t8,t6,t7
    181c:	4481f000 	mtc1	at,$f30
    1820:	4481e000 	mtc1	at,$f28
    1824:	afb8007c 	sw	t8,124(sp)
    1828:	afa80074 	sw	t0,116(sp)
    182c:	afa90070 	sw	t1,112(sp)
    1830:	afb90078 	sw	t9,120(sp)
    1834:	afab0084 	sw	t3,132(sp)
    1838:	00145080 	sll	t2,s4,0x2
    183c:	01545021 	addu	t2,t2,s4
    1840:	000a5080 	sll	t2,t2,0x2
    1844:	01545021 	addu	t2,t2,s4
    1848:	000a5080 	sll	t2,t2,0x2
    184c:	022a8021 	addu	s0,s1,t2
    1850:	9202014c 	lbu	v0,332(s0)
    1854:	24010001 	li	at,1
    1858:	50400010 	beqzl	v0,189c <func_80BA414C+0x1f0>
    185c:	c67200e0 	lwc1	$f18,224(s3)
    1860:	10410061 	beq	v0,at,19e8 <func_80BA414C+0x33c>
    1864:	24010002 	li	at,2
    1868:	5041010b 	beql	v0,at,1c98 <func_80BA414C+0x5ec>
    186c:	c6040154 	lwc1	$f4,340(s0)
    1870:	c6040154 	lwc1	$f4,340(s0)
    1874:	c606016c 	lwc1	$f6,364(s0)
    1878:	c6080158 	lwc1	$f8,344(s0)
    187c:	c60a0170 	lwc1	$f10,368(s0)
    1880:	46062380 	add.s	$f14,$f4,$f6
    1884:	c6060168 	lwc1	$f6,360(s0)
    1888:	c6040150 	lwc1	$f4,336(s0)
    188c:	460a4080 	add.s	$f2,$f8,$f10
    1890:	1000010a 	b	1cbc <func_80BA414C+0x610>
    1894:	46062300 	add.s	$f12,$f4,$f6
    1898:	c67200e0 	lwc1	$f18,224(s3)
    189c:	c66800ec 	lwc1	$f8,236(s3)
    18a0:	c66a00f0 	lwc1	$f10,240(s3)
    18a4:	c66400e4 	lwc1	$f4,228(s3)
    18a8:	46124081 	sub.s	$f2,$f8,$f18
    18ac:	c66800e8 	lwc1	$f8,232(s3)
    18b0:	c66600f4 	lwc1	$f6,244(s3)
    18b4:	46045301 	sub.s	$f12,$f10,$f4
    18b8:	46021282 	mul.s	$f10,$f2,$f2
    18bc:	46083381 	sub.s	$f14,$f6,$f8
    18c0:	460c6102 	mul.s	$f4,$f12,$f12
    18c4:	46045180 	add.s	$f6,$f10,$f4
    18c8:	460e7202 	mul.s	$f8,$f14,$f14
    18cc:	46083000 	add.s	$f0,$f6,$f8
    18d0:	46000004 	sqrt.s	$f0,$f0
    18d4:	46001283 	div.s	$f10,$f2,$f0
    18d8:	46007403 	div.s	$f16,$f14,$f0
    18dc:	461e5102 	mul.s	$f4,$f10,$f30
    18e0:	46006283 	div.s	$f10,$f12,$f0
    18e4:	46049180 	add.s	$f6,$f18,$f4
    18e8:	e6060168 	swc1	$f6,360(s0)
    18ec:	c66800e4 	lwc1	$f8,228(s3)
    18f0:	461e5102 	mul.s	$f4,$f10,$f30
    18f4:	46044180 	add.s	$f6,$f8,$f4
    18f8:	461e8202 	mul.s	$f8,$f16,$f30
    18fc:	e606016c 	swc1	$f6,364(s0)
    1900:	c66a00e8 	lwc1	$f10,232(s3)
    1904:	46085100 	add.s	$f4,$f10,$f8
    1908:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    190c:	e6040170 	swc1	$f4,368(s0)
    1910:	3c013f00 	lui	at,0x3f00
    1914:	4481a000 	mtc1	at,$f20
    1918:	3c014320 	lui	at,0x4320
    191c:	4481c000 	mtc1	at,$f24
    1920:	46140181 	sub.s	$f6,$f0,$f20
    1924:	e61e0154 	swc1	$f30,340(s0)
    1928:	46183282 	mul.s	$f10,$f6,$f24
    192c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1930:	e60a0150 	swc1	$f10,336(s0)
    1934:	46140201 	sub.s	$f8,$f0,$f20
    1938:	c6060154 	lwc1	$f6,340(s0)
    193c:	c60a016c 	lwc1	$f10,364(s0)
    1940:	3c014248 	lui	at,0x4248
    1944:	46184102 	mul.s	$f4,$f8,$f24
    1948:	460a3200 	add.s	$f8,$f6,$f10
    194c:	4481b000 	mtc1	at,$f22
    1950:	00000000 	nop
    1954:	4616403c 	c.lt.s	$f8,$f22
    1958:	e6040158 	swc1	$f4,344(s0)
    195c:	45000002 	bc1f	1968 <func_80BA414C+0x2bc>
    1960:	00000000 	nop
    1964:	e616016c 	swc1	$f22,364(s0)
    1968:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    196c:	00000000 	nop
    1970:	3c0140a0 	lui	at,0x40a0
    1974:	44812000 	mtc1	at,$f4
    1978:	00000000 	nop
    197c:	46040182 	mul.s	$f6,$f0,$f4
    1980:	46143280 	add.s	$f10,$f6,$f20
    1984:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1988:	e60a0180 	swc1	$f10,384(s0)
    198c:	3c0143b4 	lui	at,0x43b4
    1990:	44814000 	mtc1	at,$f8
    1994:	00000000 	nop
    1998:	46080102 	mul.s	$f4,$f0,$f8
    199c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    19a0:	e6040174 	swc1	$f4,372(s0)
    19a4:	3c0143b4 	lui	at,0x43b4
    19a8:	44813000 	mtc1	at,$f6
    19ac:	c6080154 	lwc1	$f8,340(s0)
    19b0:	c604016c 	lwc1	$f4,364(s0)
    19b4:	46060282 	mul.s	$f10,$f0,$f6
    19b8:	920b014c 	lbu	t3,332(s0)
    19bc:	46044380 	add.s	$f14,$f8,$f4
    19c0:	c6040168 	lwc1	$f4,360(s0)
    19c4:	c6080150 	lwc1	$f8,336(s0)
    19c8:	c6060158 	lwc1	$f6,344(s0)
    19cc:	256c0001 	addiu	t4,t3,1
    19d0:	e60a017c 	swc1	$f10,380(s0)
    19d4:	c60a0170 	lwc1	$f10,368(s0)
    19d8:	a20c014c 	sb	t4,332(s0)
    19dc:	46044300 	add.s	$f12,$f8,$f4
    19e0:	100000b6 	b	1cbc <func_80BA414C+0x610>
    19e4:	460a3080 	add.s	$f2,$f6,$f10
    19e8:	c67200e0 	lwc1	$f18,224(s3)
    19ec:	c66600ec 	lwc1	$f6,236(s3)
    19f0:	c67400e4 	lwc1	$f20,228(s3)
    19f4:	c66a00f0 	lwc1	$f10,240(s3)
    19f8:	46123081 	sub.s	$f2,$f6,$f18
    19fc:	c67000e8 	lwc1	$f16,232(s3)
    1a00:	c66800f4 	lwc1	$f8,244(s3)
    1a04:	46145301 	sub.s	$f12,$f10,$f20
    1a08:	46021102 	mul.s	$f4,$f2,$f2
    1a0c:	46104381 	sub.s	$f14,$f8,$f16
    1a10:	460c6182 	mul.s	$f6,$f12,$f12
    1a14:	4600e607 	neg.s	$f24,$f28
    1a18:	460e7202 	mul.s	$f8,$f14,$f14
    1a1c:	46062280 	add.s	$f10,$f4,$f6
    1a20:	46085000 	add.s	$f0,$f10,$f8
    1a24:	46000004 	sqrt.s	$f0,$f0
    1a28:	46001103 	div.s	$f4,$f2,$f0
    1a2c:	46006283 	div.s	$f10,$f12,$f0
    1a30:	461e2182 	mul.s	$f6,$f4,$f30
    1a34:	46069680 	add.s	$f26,$f18,$f6
    1a38:	461e5202 	mul.s	$f8,$f10,$f30
    1a3c:	46007183 	div.s	$f6,$f14,$f0
    1a40:	4608a100 	add.s	$f4,$f20,$f8
    1a44:	e7a400f0 	swc1	$f4,240(sp)
    1a48:	461e3282 	mul.s	$f10,$f6,$f30
    1a4c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1a50:	460a8580 	add.s	$f22,$f16,$f10
    1a54:	3c010000 	lui	at,0x0
    1a58:	c4340000 	lwc1	$f20,0(at)
    1a5c:	c6080174 	lwc1	$f8,372(s0)
    1a60:	4600a102 	mul.s	$f4,$f20,$f0
    1a64:	46044180 	add.s	$f6,$f8,$f4
    1a68:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1a6c:	e6060174 	swc1	$f6,372(s0)
    1a70:	4600a202 	mul.s	$f8,$f20,$f0
    1a74:	c60a017c 	lwc1	$f10,380(s0)
    1a78:	3c010000 	lui	at,0x0
    1a7c:	c6060174 	lwc1	$f6,372(s0)
    1a80:	46085100 	add.s	$f4,$f10,$f8
    1a84:	e604017c 	swc1	$f4,380(s0)
    1a88:	c42a0000 	lwc1	$f10,0(at)
    1a8c:	460a3302 	mul.s	$f12,$f6,$f10
    1a90:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1a94:	00000000 	nop
    1a98:	c6080150 	lwc1	$f8,336(s0)
    1a9c:	3c010000 	lui	at,0x0
    1aa0:	c606017c 	lwc1	$f6,380(s0)
    1aa4:	46004100 	add.s	$f4,$f8,$f0
    1aa8:	e6040150 	swc1	$f4,336(s0)
    1aac:	c42a0000 	lwc1	$f10,0(at)
    1ab0:	460a3302 	mul.s	$f12,$f6,$f10
    1ab4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1ab8:	00000000 	nop
    1abc:	c6080158 	lwc1	$f8,344(s0)
    1ac0:	c6060154 	lwc1	$f6,340(s0)
    1ac4:	c60a0180 	lwc1	$f10,384(s0)
    1ac8:	46004100 	add.s	$f4,$f8,$f0
    1acc:	3c014316 	lui	at,0x4316
    1ad0:	460a3201 	sub.s	$f8,$f6,$f10
    1ad4:	e6040158 	swc1	$f4,344(s0)
    1ad8:	c606016c 	lwc1	$f6,364(s0)
    1adc:	e6080154 	swc1	$f8,340(s0)
    1ae0:	c6040154 	lwc1	$f4,340(s0)
    1ae4:	c62a0028 	lwc1	$f10,40(s1)
    1ae8:	46062380 	add.s	$f14,$f4,$f6
    1aec:	460a703c 	c.lt.s	$f14,$f10
    1af0:	00000000 	nop
    1af4:	4503000a 	bc1tl	1b20 <func_80BA414C+0x474>
    1af8:	920d014c 	lbu	t5,332(s0)
    1afc:	c66800e4 	lwc1	$f8,228(s3)
    1b00:	44812000 	mtc1	at,$f4
    1b04:	00000000 	nop
    1b08:	46044181 	sub.s	$f6,$f8,$f4
    1b0c:	4606703c 	c.lt.s	$f14,$f6
    1b10:	00000000 	nop
    1b14:	45020005 	bc1fl	1b2c <func_80BA414C+0x480>
    1b18:	c60a0150 	lwc1	$f10,336(s0)
    1b1c:	920d014c 	lbu	t5,332(s0)
    1b20:	25ae0001 	addiu	t6,t5,1
    1b24:	a20e014c 	sb	t6,332(s0)
    1b28:	c60a0150 	lwc1	$f10,336(s0)
    1b2c:	c6080168 	lwc1	$f8,360(s0)
    1b30:	46085100 	add.s	$f4,$f10,$f8
    1b34:	461a2301 	sub.s	$f12,$f4,$f26
    1b38:	460ce03c 	c.lt.s	$f28,$f12
    1b3c:	00000000 	nop
    1b40:	4503001f 	bc1tl	1bc0 <func_80BA414C+0x514>
    1b44:	460ce03c 	c.lt.s	$f28,$f12
    1b48:	4618603c 	c.lt.s	$f12,$f24
    1b4c:	00000000 	nop
    1b50:	4503001b 	bc1tl	1bc0 <func_80BA414C+0x514>
    1b54:	460ce03c 	c.lt.s	$f28,$f12
    1b58:	c6060154 	lwc1	$f6,340(s0)
    1b5c:	c60a016c 	lwc1	$f10,364(s0)
    1b60:	c7a400f0 	lwc1	$f4,240(sp)
    1b64:	460a3200 	add.s	$f8,$f6,$f10
    1b68:	46044001 	sub.s	$f0,$f8,$f4
    1b6c:	4600e03c 	c.lt.s	$f28,$f0
    1b70:	00000000 	nop
    1b74:	45030012 	bc1tl	1bc0 <func_80BA414C+0x514>
    1b78:	460ce03c 	c.lt.s	$f28,$f12
    1b7c:	4618003c 	c.lt.s	$f0,$f24
    1b80:	00000000 	nop
    1b84:	4503000e 	bc1tl	1bc0 <func_80BA414C+0x514>
    1b88:	460ce03c 	c.lt.s	$f28,$f12
    1b8c:	c6060158 	lwc1	$f6,344(s0)
    1b90:	c60a0170 	lwc1	$f10,368(s0)
    1b94:	460a3080 	add.s	$f2,$f6,$f10
    1b98:	46161001 	sub.s	$f0,$f2,$f22
    1b9c:	4600e03c 	c.lt.s	$f28,$f0
    1ba0:	00000000 	nop
    1ba4:	45030006 	bc1tl	1bc0 <func_80BA414C+0x514>
    1ba8:	460ce03c 	c.lt.s	$f28,$f12
    1bac:	4618003c 	c.lt.s	$f0,$f24
    1bb0:	00000000 	nop
    1bb4:	45020031 	bc1fl	1c7c <func_80BA414C+0x5d0>
    1bb8:	c6040154 	lwc1	$f4,340(s0)
    1bbc:	460ce03c 	c.lt.s	$f28,$f12
    1bc0:	00000000 	nop
    1bc4:	4502000a 	bc1fl	1bf0 <func_80BA414C+0x544>
    1bc8:	4618603c 	c.lt.s	$f12,$f24
    1bcc:	461cd201 	sub.s	$f8,$f26,$f28
    1bd0:	44802000 	mtc1	zero,$f4
    1bd4:	e6080168 	swc1	$f8,360(s0)
    1bd8:	e6040150 	swc1	$f4,336(s0)
    1bdc:	c6060150 	lwc1	$f6,336(s0)
    1be0:	c60a0168 	lwc1	$f10,360(s0)
    1be4:	460a3200 	add.s	$f8,$f6,$f10
    1be8:	461a4301 	sub.s	$f12,$f8,$f26
    1bec:	4618603c 	c.lt.s	$f12,$f24
    1bf0:	00000000 	nop
    1bf4:	45020006 	bc1fl	1c10 <func_80BA414C+0x564>
    1bf8:	c60a0158 	lwc1	$f10,344(s0)
    1bfc:	461cd100 	add.s	$f4,$f26,$f28
    1c00:	44803000 	mtc1	zero,$f6
    1c04:	e6040168 	swc1	$f4,360(s0)
    1c08:	e6060150 	swc1	$f6,336(s0)
    1c0c:	c60a0158 	lwc1	$f10,344(s0)
    1c10:	c6080170 	lwc1	$f8,368(s0)
    1c14:	46085080 	add.s	$f2,$f10,$f8
    1c18:	46161001 	sub.s	$f0,$f2,$f22
    1c1c:	4600e03c 	c.lt.s	$f28,$f0
    1c20:	00000000 	nop
    1c24:	4502000a 	bc1fl	1c50 <func_80BA414C+0x5a4>
    1c28:	4618003c 	c.lt.s	$f0,$f24
    1c2c:	461cb101 	sub.s	$f4,$f22,$f28
    1c30:	44803000 	mtc1	zero,$f6
    1c34:	e6040170 	swc1	$f4,368(s0)
    1c38:	e6060158 	swc1	$f6,344(s0)
    1c3c:	c60a0158 	lwc1	$f10,344(s0)
    1c40:	c6080170 	lwc1	$f8,368(s0)
    1c44:	46085080 	add.s	$f2,$f10,$f8
    1c48:	46161001 	sub.s	$f0,$f2,$f22
    1c4c:	4618003c 	c.lt.s	$f0,$f24
    1c50:	00000000 	nop
    1c54:	45020009 	bc1fl	1c7c <func_80BA414C+0x5d0>
    1c58:	c6040154 	lwc1	$f4,340(s0)
    1c5c:	461cb100 	add.s	$f4,$f22,$f28
    1c60:	44803000 	mtc1	zero,$f6
    1c64:	e6040170 	swc1	$f4,368(s0)
    1c68:	e6060158 	swc1	$f6,344(s0)
    1c6c:	c60a0158 	lwc1	$f10,344(s0)
    1c70:	c6080170 	lwc1	$f8,368(s0)
    1c74:	46085080 	add.s	$f2,$f10,$f8
    1c78:	c6040154 	lwc1	$f4,340(s0)
    1c7c:	c606016c 	lwc1	$f6,364(s0)
    1c80:	c60a0150 	lwc1	$f10,336(s0)
    1c84:	c6080168 	lwc1	$f8,360(s0)
    1c88:	46062380 	add.s	$f14,$f4,$f6
    1c8c:	1000000b 	b	1cbc <func_80BA414C+0x610>
    1c90:	46085300 	add.s	$f12,$f10,$f8
    1c94:	c6040154 	lwc1	$f4,340(s0)
    1c98:	c606016c 	lwc1	$f6,364(s0)
    1c9c:	c60a0158 	lwc1	$f10,344(s0)
    1ca0:	c6080170 	lwc1	$f8,368(s0)
    1ca4:	46062380 	add.s	$f14,$f4,$f6
    1ca8:	c6060168 	lwc1	$f6,360(s0)
    1cac:	c6040150 	lwc1	$f4,336(s0)
    1cb0:	a200014c 	sb	zero,332(s0)
    1cb4:	46085080 	add.s	$f2,$f10,$f8
    1cb8:	46062300 	add.s	$f12,$f4,$f6
    1cbc:	44061000 	mfc1	a2,$f2
    1cc0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1cc4:	00003825 	move	a3,zero
    1cc8:	3c010000 	lui	at,0x0
    1ccc:	c42e0000 	lwc1	$f14,0(at)
    1cd0:	24070001 	li	a3,1
    1cd4:	44067000 	mfc1	a2,$f14
    1cd8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1cdc:	46007306 	mov.s	$f12,$f14
    1ce0:	8e4202d0 	lw	v0,720(s2)
    1ce4:	3c04c8c8 	lui	a0,0xc8c8
    1ce8:	3484c8b4 	ori	a0,a0,0xc8b4
    1cec:	244f0008 	addiu	t7,v0,8
    1cf0:	ae4f02d0 	sw	t7,720(s2)
    1cf4:	ac550000 	sw	s5,0(v0)
    1cf8:	ac400004 	sw	zero,4(v0)
    1cfc:	8e4202d0 	lw	v0,720(s2)
    1d00:	3c19fa00 	lui	t9,0xfa00
    1d04:	3c09fb00 	lui	t1,0xfb00
    1d08:	24580008 	addiu	t8,v0,8
    1d0c:	ae5802d0 	sw	t8,720(s2)
    1d10:	ac590000 	sw	t9,0(v0)
    1d14:	ac440004 	sw	a0,4(v0)
    1d18:	8e4202d0 	lw	v0,720(s2)
    1d1c:	3c0bda38 	lui	t3,0xda38
    1d20:	356b0003 	ori	t3,t3,0x3
    1d24:	24480008 	addiu	t0,v0,8
    1d28:	ae4802d0 	sw	t0,720(s2)
    1d2c:	ac490000 	sw	t1,0(v0)
    1d30:	ac440004 	sw	a0,4(v0)
    1d34:	8e4202d0 	lw	v0,720(s2)
    1d38:	3c050000 	lui	a1,0x0
    1d3c:	24a50000 	addiu	a1,a1,0
    1d40:	244a0008 	addiu	t2,v0,8
    1d44:	ae4a02d0 	sw	t2,720(s2)
    1d48:	ac4b0000 	sw	t3,0(v0)
    1d4c:	8e640000 	lw	a0,0(s3)
    1d50:	24060453 	li	a2,1107
    1d54:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1d58:	00408025 	move	s0,v0
    1d5c:	ae020004 	sw	v0,4(s0)
    1d60:	8e4202d0 	lw	v0,720(s2)
    1d64:	3c0ddb06 	lui	t5,0xdb06
    1d68:	35ad0020 	ori	t5,t5,0x20
    1d6c:	244c0008 	addiu	t4,v0,8
    1d70:	ae4c02d0 	sw	t4,720(s2)
    1d74:	ac4d0000 	sw	t5,0(v0)
    1d78:	8fae007c 	lw	t6,124(sp)
    1d7c:	8fb80078 	lw	t8,120(sp)
    1d80:	3c018000 	lui	at,0x8000
    1d84:	8dcf0000 	lw	t7,0(t6)
    1d88:	01f8c821 	addu	t9,t7,t8
    1d8c:	03214021 	addu	t0,t9,at
    1d90:	ac480004 	sw	t0,4(v0)
    1d94:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1d98:	8e640000 	lw	a0,0(s3)
    1d9c:	8e4202d0 	lw	v0,720(s2)
    1da0:	3c0ada38 	lui	t2,0xda38
    1da4:	354a0001 	ori	t2,t2,0x1
    1da8:	24490008 	addiu	t1,v0,8
    1dac:	ae4902d0 	sw	t1,720(s2)
    1db0:	ac4a0000 	sw	t2,0(v0)
    1db4:	8fab0074 	lw	t3,116(sp)
    1db8:	3c0ede00 	lui	t6,0xde00
    1dbc:	26940001 	addiu	s4,s4,1
    1dc0:	ac4b0004 	sw	t3,4(v0)
    1dc4:	8e4202d0 	lw	v0,720(s2)
    1dc8:	0014a400 	sll	s4,s4,0x10
    1dcc:	0014a403 	sra	s4,s4,0x10
    1dd0:	244c0008 	addiu	t4,v0,8
    1dd4:	ae4c02d0 	sw	t4,720(s2)
    1dd8:	ac400004 	sw	zero,4(v0)
    1ddc:	ac550000 	sw	s5,0(v0)
    1de0:	8e4202d0 	lw	v0,720(s2)
    1de4:	244d0008 	addiu	t5,v0,8
    1de8:	ae4d02d0 	sw	t5,720(s2)
    1dec:	ac4e0000 	sw	t6,0(v0)
    1df0:	8faf0070 	lw	t7,112(sp)
    1df4:	ac4f0004 	sw	t7,4(v0)
    1df8:	8e4202d0 	lw	v0,720(s2)
    1dfc:	24580008 	addiu	t8,v0,8
    1e00:	ae5802d0 	sw	t8,720(s2)
    1e04:	ac400004 	sw	zero,4(v0)
    1e08:	ac550000 	sw	s5,0(v0)
    1e0c:	8fb90084 	lw	t9,132(sp)
    1e10:	93280b14 	lbu	t0,2836(t9)
    1e14:	0288082a 	slt	at,s4,t0
    1e18:	5420fe88 	bnezl	at,183c <func_80BA414C+0x190>
    1e1c:	00145080 	sll	t2,s4,0x2
    1e20:	3c060000 	lui	a2,0x0
    1e24:	24c60000 	addiu	a2,a2,0
    1e28:	27a400b4 	addiu	a0,sp,180
    1e2c:	8e650000 	lw	a1,0(s3)
    1e30:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1e34:	24070467 	li	a3,1127
    1e38:	8fbf005c 	lw	ra,92(sp)
    1e3c:	d7b40010 	ldc1	$f20,16(sp)
    1e40:	d7b60018 	ldc1	$f22,24(sp)
    1e44:	d7b80020 	ldc1	$f24,32(sp)
    1e48:	d7ba0028 	ldc1	$f26,40(sp)
    1e4c:	d7bc0030 	ldc1	$f28,48(sp)
    1e50:	d7be0038 	ldc1	$f30,56(sp)
    1e54:	8fb00044 	lw	s0,68(sp)
    1e58:	8fb10048 	lw	s1,72(sp)
    1e5c:	8fb2004c 	lw	s2,76(sp)
    1e60:	8fb30050 	lw	s3,80(sp)
    1e64:	8fb40054 	lw	s4,84(sp)
    1e68:	8fb50058 	lw	s5,88(sp)
    1e6c:	03e00008 	jr	ra
    1e70:	27bd0118 	addiu	sp,sp,280

00001e74 <func_80BA4914>:
    1e74:	90ae1d6c 	lbu	t6,7532(a1)
    1e78:	11c00026 	beqz	t6,1f14 <func_80BA4914+0xa0>
    1e7c:	00000000 	nop
    1e80:	8ca21d8c 	lw	v0,7564(a1)
    1e84:	10400023 	beqz	v0,1f14 <func_80BA4914+0xa0>
    1e88:	00000000 	nop
    1e8c:	9083014c 	lbu	v1,332(a0)
    1e90:	50600009 	beqzl	v1,1eb8 <func_80BA4914+0x44>
    1e94:	a480019c 	sh	zero,412(a0)
    1e98:	24050001 	li	a1,1
    1e9c:	1065000f 	beq	v1,a1,1edc <func_80BA4914+0x68>
    1ea0:	24010002 	li	at,2
    1ea4:	50610018 	beql	v1,at,1f08 <func_80BA4914+0x94>
    1ea8:	944e0000 	lhu	t6,0(v0)
    1eac:	03e00008 	jr	ra
    1eb0:	00000000 	nop
    1eb4:	a480019c 	sh	zero,412(a0)
    1eb8:	8caf1d8c 	lw	t7,7564(a1)
    1ebc:	24010002 	li	at,2
    1ec0:	95f80000 	lhu	t8,0(t7)
    1ec4:	17010013 	bne	t8,at,1f14 <func_80BA4914+0xa0>
    1ec8:	00000000 	nop
    1ecc:	9099014c 	lbu	t9,332(a0)
    1ed0:	27280001 	addiu	t0,t9,1
    1ed4:	03e00008 	jr	ra
    1ed8:	a088014c 	sb	t0,332(a0)
    1edc:	9489019c 	lhu	t1,412(a0)
    1ee0:	252a0001 	addiu	t2,t1,1
    1ee4:	314bffff 	andi	t3,t2,0xffff
    1ee8:	29610007 	slti	at,t3,7
    1eec:	14200009 	bnez	at,1f14 <func_80BA4914+0xa0>
    1ef0:	a48a019c 	sh	t2,412(a0)
    1ef4:	908c014c 	lbu	t4,332(a0)
    1ef8:	258d0001 	addiu	t5,t4,1
    1efc:	03e00008 	jr	ra
    1f00:	a08d014c 	sb	t5,332(a0)
    1f04:	944e0000 	lhu	t6,0(v0)
    1f08:	14ae0002 	bne	a1,t6,1f14 <func_80BA4914+0xa0>
    1f0c:	00000000 	nop
    1f10:	a080014c 	sb	zero,332(a0)
    1f14:	03e00008 	jr	ra
    1f18:	00000000 	nop

00001f1c <func_80BA49BC>:
    1f1c:	27bdffa0 	addiu	sp,sp,-96
    1f20:	afbf001c 	sw	ra,28(sp)
    1f24:	afb00018 	sw	s0,24(sp)
    1f28:	afa40060 	sw	a0,96(sp)
    1f2c:	afa50064 	sw	a1,100(sp)
    1f30:	8ca50000 	lw	a1,0(a1)
    1f34:	3c060000 	lui	a2,0x0
    1f38:	24c60000 	addiu	a2,a2,0
    1f3c:	27a40044 	addiu	a0,sp,68
    1f40:	2407049e 	li	a3,1182
    1f44:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1f48:	00a08025 	move	s0,a1
    1f4c:	8faf0060 	lw	t7,96(sp)
    1f50:	24010001 	li	at,1
    1f54:	8fb90064 	lw	t9,100(sp)
    1f58:	91f8014c 	lbu	t8,332(t7)
    1f5c:	57010074 	bnel	t8,at,2130 <func_80BA49BC+0x214>
    1f60:	8fab0064 	lw	t3,100(sp)
    1f64:	8f221d8c 	lw	v0,7564(t9)
    1f68:	00003825 	move	a3,zero
    1f6c:	8c4a0014 	lw	t2,20(v0)
    1f70:	8c48000c 	lw	t0,12(v0)
    1f74:	8c490010 	lw	t1,16(v0)
    1f78:	448a4000 	mtc1	t2,$f8
    1f7c:	44882000 	mtc1	t0,$f4
    1f80:	44893000 	mtc1	t1,$f6
    1f84:	46804220 	cvt.s.w	$f8,$f8
    1f88:	46802320 	cvt.s.w	$f12,$f4
    1f8c:	44064000 	mfc1	a2,$f8
    1f90:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1f94:	468033a0 	cvt.s.w	$f14,$f6
    1f98:	3c010000 	lui	at,0x0
    1f9c:	c42c0000 	lwc1	$f12,0(at)
    1fa0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1fa4:	24050001 	li	a1,1
    1fa8:	3c010000 	lui	at,0x0
    1fac:	c42c0000 	lwc1	$f12,0(at)
    1fb0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1fb4:	24050001 	li	a1,1
    1fb8:	3c014000 	lui	at,0x4000
    1fbc:	44816000 	mtc1	at,$f12
    1fc0:	3c0140a0 	lui	at,0x40a0
    1fc4:	44817000 	mtc1	at,$f14
    1fc8:	44066000 	mfc1	a2,$f12
    1fcc:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    1fd0:	24070001 	li	a3,1
    1fd4:	8e0202d0 	lw	v0,720(s0)
    1fd8:	3c0cfa00 	lui	t4,0xfa00
    1fdc:	240dff80 	li	t5,-128
    1fe0:	244b0008 	addiu	t3,v0,8
    1fe4:	ae0b02d0 	sw	t3,720(s0)
    1fe8:	ac4c0000 	sw	t4,0(v0)
    1fec:	ac4d0004 	sw	t5,4(v0)
    1ff0:	8e0202d0 	lw	v0,720(s0)
    1ff4:	3c1800ff 	lui	t8,0xff
    1ff8:	3718ff80 	ori	t8,t8,0xff80
    1ffc:	244e0008 	addiu	t6,v0,8
    2000:	ae0e02d0 	sw	t6,720(s0)
    2004:	3c0ffb00 	lui	t7,0xfb00
    2008:	ac4f0000 	sw	t7,0(v0)
    200c:	ac580004 	sw	t8,4(v0)
    2010:	8e0202d0 	lw	v0,720(s0)
    2014:	3c08da38 	lui	t0,0xda38
    2018:	35080003 	ori	t0,t0,0x3
    201c:	24590008 	addiu	t9,v0,8
    2020:	ae1902d0 	sw	t9,720(s0)
    2024:	ac480000 	sw	t0,0(v0)
    2028:	8fa90064 	lw	t1,100(sp)
    202c:	3c050000 	lui	a1,0x0
    2030:	24a50000 	addiu	a1,a1,0
    2034:	8d240000 	lw	a0,0(t1)
    2038:	240604bd 	li	a2,1213
    203c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2040:	afa20038 	sw	v0,56(sp)
    2044:	8fa30038 	lw	v1,56(sp)
    2048:	3c0bdb06 	lui	t3,0xdb06
    204c:	356b0020 	ori	t3,t3,0x20
    2050:	ac620004 	sw	v0,4(v1)
    2054:	8e0202d0 	lw	v0,720(s0)
    2058:	3c040000 	lui	a0,0x0
    205c:	3c090000 	lui	t1,0x0
    2060:	244a0008 	addiu	t2,v0,8
    2064:	ae0a02d0 	sw	t2,720(s0)
    2068:	ac4b0000 	sw	t3,0(v0)
    206c:	8fac0060 	lw	t4,96(sp)
    2070:	3c0100ff 	lui	at,0xff
    2074:	3421ffff 	ori	at,at,0xffff
    2078:	958d019c 	lhu	t5,412(t4)
    207c:	000d7080 	sll	t6,t5,0x2
    2080:	008e2021 	addu	a0,a0,t6
    2084:	8c840000 	lw	a0,0(a0)
    2088:	0004c100 	sll	t8,a0,0x4
    208c:	0018cf02 	srl	t9,t8,0x1c
    2090:	00194080 	sll	t0,t9,0x2
    2094:	01284821 	addu	t1,t1,t0
    2098:	8d290000 	lw	t1,0(t1)
    209c:	00817824 	and	t7,a0,at
    20a0:	3c018000 	lui	at,0x8000
    20a4:	01e95021 	addu	t2,t7,t1
    20a8:	01415821 	addu	t3,t2,at
    20ac:	ac4b0004 	sw	t3,4(v0)
    20b0:	8fac0064 	lw	t4,100(sp)
    20b4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    20b8:	8d840000 	lw	a0,0(t4)
    20bc:	8e0202d0 	lw	v0,720(s0)
    20c0:	3c0eda38 	lui	t6,0xda38
    20c4:	3c180100 	lui	t8,0x100
    20c8:	244d0008 	addiu	t5,v0,8
    20cc:	ae0d02d0 	sw	t5,720(s0)
    20d0:	27180000 	addiu	t8,t8,0
    20d4:	35ce0001 	ori	t6,t6,0x1
    20d8:	ac4e0000 	sw	t6,0(v0)
    20dc:	ac580004 	sw	t8,4(v0)
    20e0:	8e0202d0 	lw	v0,720(s0)
    20e4:	3c04e700 	lui	a0,0xe700
    20e8:	3c090403 	lui	t1,0x403
    20ec:	24590008 	addiu	t9,v0,8
    20f0:	ae1902d0 	sw	t9,720(s0)
    20f4:	ac400004 	sw	zero,4(v0)
    20f8:	ac440000 	sw	a0,0(v0)
    20fc:	8e0202d0 	lw	v0,720(s0)
    2100:	2529cf30 	addiu	t1,t1,-12496
    2104:	3c0fde00 	lui	t7,0xde00
    2108:	24480008 	addiu	t0,v0,8
    210c:	ae0802d0 	sw	t0,720(s0)
    2110:	ac490004 	sw	t1,4(v0)
    2114:	ac4f0000 	sw	t7,0(v0)
    2118:	8e0202d0 	lw	v0,720(s0)
    211c:	244a0008 	addiu	t2,v0,8
    2120:	ae0a02d0 	sw	t2,720(s0)
    2124:	ac400004 	sw	zero,4(v0)
    2128:	ac440000 	sw	a0,0(v0)
    212c:	8fab0064 	lw	t3,100(sp)
    2130:	3c060000 	lui	a2,0x0
    2134:	24c60000 	addiu	a2,a2,0
    2138:	27a40044 	addiu	a0,sp,68
    213c:	240704d1 	li	a3,1233
    2140:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2144:	8d650000 	lw	a1,0(t3)
    2148:	8fbf001c 	lw	ra,28(sp)
    214c:	8fb00018 	lw	s0,24(sp)
    2150:	27bd0060 	addiu	sp,sp,96
    2154:	03e00008 	jr	ra
    2158:	00000000 	nop

0000215c <func_80BA4BFC>:
    215c:	27bdffe8 	addiu	sp,sp,-24
    2160:	3c010001 	lui	at,0x1
    2164:	afa40018 	sw	a0,24(sp)
    2168:	342117a4 	ori	at,at,0x17a4
    216c:	afbf0014 	sw	ra,20(sp)
    2170:	00a12021 	addu	a0,a1,at
    2174:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2178:	240500a1 	li	a1,161
    217c:	04410009 	bgez	v0,21a4 <func_80BA4BFC+0x48>
    2180:	8fae0018 	lw	t6,24(sp)
    2184:	3c040000 	lui	a0,0x0
    2188:	3c050000 	lui	a1,0x0
    218c:	24a50000 	addiu	a1,a1,0
    2190:	24840000 	addiu	a0,a0,0
    2194:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2198:	240604e3 	li	a2,1251
    219c:	10000002 	b	21a8 <func_80BA4BFC+0x4c>
    21a0:	00000000 	nop
    21a4:	a1c21658 	sb	v0,5720(t6)
    21a8:	3c050000 	lui	a1,0x0
    21ac:	24a50000 	addiu	a1,a1,0
    21b0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    21b4:	8fa40018 	lw	a0,24(sp)
    21b8:	8fbf0014 	lw	ra,20(sp)
    21bc:	27bd0018 	addiu	sp,sp,24
    21c0:	03e00008 	jr	ra
    21c4:	00000000 	nop

000021c8 <func_80BA4C68>:
    21c8:	3c010001 	lui	at,0x1
    21cc:	27bdffe8 	addiu	sp,sp,-24
    21d0:	00803025 	move	a2,a0
    21d4:	342117a4 	ori	at,at,0x17a4
    21d8:	afbf0014 	sw	ra,20(sp)
    21dc:	00a12021 	addu	a0,a1,at
    21e0:	90c51658 	lbu	a1,5720(a2)
    21e4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    21e8:	afa60018 	sw	a2,24(sp)
    21ec:	1040000d 	beqz	v0,2224 <func_80BA4C68+0x5c>
    21f0:	8fa60018 	lw	a2,24(sp)
    21f4:	3c0140e0 	lui	at,0x40e0
    21f8:	90cf1658 	lbu	t7,5720(a2)
    21fc:	44812000 	mtc1	at,$f4
    2200:	240e0001 	li	t6,1
    2204:	3c050000 	lui	a1,0x0
    2208:	a0ce1659 	sb	t6,5721(a2)
    220c:	a0c0018c 	sb	zero,396(a2)
    2210:	24a50000 	addiu	a1,a1,0
    2214:	00c02025 	move	a0,a2
    2218:	a0cf001e 	sb	t7,30(a2)
    221c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2220:	e4c40190 	swc1	$f4,400(a2)
    2224:	8fbf0014 	lw	ra,20(sp)
    2228:	27bd0018 	addiu	sp,sp,24
    222c:	03e00008 	jr	ra
    2230:	00000000 	nop

00002234 <func_80BA4CD4>:
    2234:	27bdffd8 	addiu	sp,sp,-40
    2238:	afbf0024 	sw	ra,36(sp)
    223c:	afb00020 	sw	s0,32(sp)
    2240:	90ae1d6c 	lbu	t6,7532(a1)
    2244:	00808025 	move	s0,a0
    2248:	51c00020 	beqzl	t6,22cc <func_80BA4CD4+0x98>
    224c:	8fbf0024 	lw	ra,36(sp)
    2250:	8ca21d90 	lw	v0,7568(a1)
    2254:	5040001d 	beqzl	v0,22cc <func_80BA4CD4+0x98>
    2258:	8fbf0024 	lw	ra,36(sp)
    225c:	944f0000 	lhu	t7,0(v0)
    2260:	24010002 	li	at,2
    2264:	55e10019 	bnel	t7,at,22cc <func_80BA4CD4+0x98>
    2268:	8fbf0024 	lw	ra,36(sp)
    226c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2270:	2405309a 	li	a1,12442
    2274:	9202018c 	lbu	v0,396(s0)
    2278:	3c053fe6 	lui	a1,0x3fe6
    227c:	34a56666 	ori	a1,a1,0x6666
    2280:	0002c400 	sll	t8,v0,0x10
    2284:	0018cc03 	sra	t9,t8,0x10
    2288:	27280014 	addiu	t0,t9,20
    228c:	29010100 	slti	at,t0,256
    2290:	14200004 	bnez	at,22a4 <func_80BA4CD4+0x70>
    2294:	26040190 	addiu	a0,s0,400
    2298:	240900ff 	li	t1,255
    229c:	10000003 	b	22ac <func_80BA4CD4+0x78>
    22a0:	a209018c 	sb	t1,396(s0)
    22a4:	244a0014 	addiu	t2,v0,20
    22a8:	a20a018c 	sb	t2,396(s0)
    22ac:	3c010000 	lui	at,0x0
    22b0:	c4240000 	lwc1	$f4,0(at)
    22b4:	3c073e8f 	lui	a3,0x3e8f
    22b8:	34e75c29 	ori	a3,a3,0x5c29
    22bc:	3c063f00 	lui	a2,0x3f00
    22c0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    22c4:	e7a40010 	swc1	$f4,16(sp)
    22c8:	8fbf0024 	lw	ra,36(sp)
    22cc:	8fb00020 	lw	s0,32(sp)
    22d0:	27bd0028 	addiu	sp,sp,40
    22d4:	03e00008 	jr	ra
    22d8:	00000000 	nop

000022dc <func_80BA4D7C>:
    22dc:	27bdff80 	addiu	sp,sp,-128
    22e0:	afb10018 	sw	s1,24(sp)
    22e4:	00a08825 	move	s1,a1
    22e8:	afbf001c 	sw	ra,28(sp)
    22ec:	afb00014 	sw	s0,20(sp)
    22f0:	8ca50000 	lw	a1,0(a1)
    22f4:	00808025 	move	s0,a0
    22f8:	3c060000 	lui	a2,0x0
    22fc:	24c60000 	addiu	a2,a2,0
    2300:	27a40048 	addiu	a0,sp,72
    2304:	2407052c 	li	a3,1324
    2308:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    230c:	afa50058 	sw	a1,88(sp)
    2310:	922e1d6c 	lbu	t6,7532(s1)
    2314:	8fa80058 	lw	t0,88(sp)
    2318:	11c00147 	beqz	t6,2838 <func_80BA4D7C+0x55c>
    231c:	00000000 	nop
    2320:	8e221d90 	lw	v0,7568(s1)
    2324:	10400144 	beqz	v0,2838 <func_80BA4D7C+0x55c>
    2328:	00000000 	nop
    232c:	944f0000 	lhu	t7,0(v0)
    2330:	24010002 	li	at,2
    2334:	15e10140 	bne	t7,at,2838 <func_80BA4D7C+0x55c>
    2338:	00000000 	nop
    233c:	92181659 	lbu	t8,5721(s0)
    2340:	1300013d 	beqz	t8,2838 <func_80BA4D7C+0x55c>
    2344:	00000000 	nop
    2348:	9219014c 	lbu	t9,332(s0)
    234c:	17200011 	bnez	t9,2394 <func_80BA4D7C+0xb8>
    2350:	3c013f80 	lui	at,0x3f80
    2354:	44810000 	mtc1	at,$f0
    2358:	3c010000 	lui	at,0x0
    235c:	c4260000 	lwc1	$f6,0(at)
    2360:	c6040198 	lwc1	$f4,408(s0)
    2364:	46062200 	add.s	$f8,$f4,$f6
    2368:	e6080198 	swc1	$f8,408(s0)
    236c:	c60a0198 	lwc1	$f10,408(s0)
    2370:	460a003e 	c.le.s	$f0,$f10
    2374:	00000000 	nop
    2378:	45020016 	bc1fl	23d4 <func_80BA4D7C+0xf8>
    237c:	960b019c 	lhu	t3,412(s0)
    2380:	9209014c 	lbu	t1,332(s0)
    2384:	e6000198 	swc1	$f0,408(s0)
    2388:	252a0001 	addiu	t2,t1,1
    238c:	10000010 	b	23d0 <func_80BA4D7C+0xf4>
    2390:	a20a014c 	sb	t2,332(s0)
    2394:	3c010000 	lui	at,0x0
    2398:	c4260000 	lwc1	$f6,0(at)
    239c:	c6040198 	lwc1	$f4,408(s0)
    23a0:	3c010000 	lui	at,0x0
    23a4:	46062201 	sub.s	$f8,$f4,$f6
    23a8:	e6080198 	swc1	$f8,408(s0)
    23ac:	c6040198 	lwc1	$f4,408(s0)
    23b0:	c42a0000 	lwc1	$f10,0(at)
    23b4:	460a203e 	c.le.s	$f4,$f10
    23b8:	00000000 	nop
    23bc:	45020005 	bc1fl	23d4 <func_80BA4D7C+0xf8>
    23c0:	960b019c 	lhu	t3,412(s0)
    23c4:	44803000 	mtc1	zero,$f6
    23c8:	a200014c 	sb	zero,332(s0)
    23cc:	e6060198 	swc1	$f6,408(s0)
    23d0:	960b019c 	lhu	t3,412(s0)
    23d4:	256c0001 	addiu	t4,t3,1
    23d8:	318dffff 	andi	t5,t4,0xffff
    23dc:	29a10008 	slti	at,t5,8
    23e0:	14200002 	bnez	at,23ec <func_80BA4D7C+0x110>
    23e4:	a60c019c 	sh	t4,412(s0)
    23e8:	a600019c 	sh	zero,412(s0)
    23ec:	8e221d90 	lw	v0,7568(s1)
    23f0:	8c4e000c 	lw	t6,12(v0)
    23f4:	8c590018 	lw	t9,24(v0)
    23f8:	8c4f0010 	lw	t7,16(v0)
    23fc:	448e4000 	mtc1	t6,$f8
    2400:	44993000 	mtc1	t9,$f6
    2404:	8c580014 	lw	t8,20(v0)
    2408:	468040a0 	cvt.s.w	$f2,$f8
    240c:	448f5000 	mtc1	t7,$f10
    2410:	44982000 	mtc1	t8,$f4
    2414:	46803220 	cvt.s.w	$f8,$f6
    2418:	46805420 	cvt.s.w	$f16,$f10
    241c:	e7a80060 	swc1	$f8,96(sp)
    2420:	8c49001c 	lw	t1,28(v0)
    2424:	44895000 	mtc1	t1,$f10
    2428:	468024a0 	cvt.s.w	$f18,$f4
    242c:	46805120 	cvt.s.w	$f4,$f10
    2430:	e7a40064 	swc1	$f4,100(sp)
    2434:	8c4a0020 	lw	t2,32(v0)
    2438:	448a3000 	mtc1	t2,$f6
    243c:	00000000 	nop
    2440:	46803220 	cvt.s.w	$f8,$f6
    2444:	e7a80068 	swc1	$f8,104(sp)
    2448:	96261d74 	lhu	a2,7540(s1)
    244c:	94450002 	lhu	a1,2(v0)
    2450:	94440004 	lhu	a0,4(v0)
    2454:	e7b20074 	swc1	$f18,116(sp)
    2458:	e7b00070 	swc1	$f16,112(sp)
    245c:	e7a2006c 	swc1	$f2,108(sp)
    2460:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2464:	afa80058 	sw	t0,88(sp)
    2468:	c7a2006c 	lwc1	$f2,108(sp)
    246c:	c7aa0060 	lwc1	$f10,96(sp)
    2470:	c7b00070 	lwc1	$f16,112(sp)
    2474:	c7a80064 	lwc1	$f8,100(sp)
    2478:	46025101 	sub.s	$f4,$f10,$f2
    247c:	c7b20074 	lwc1	$f18,116(sp)
    2480:	00003825 	move	a3,zero
    2484:	46104281 	sub.s	$f10,$f8,$f16
    2488:	46002182 	mul.s	$f6,$f4,$f0
    248c:	46023300 	add.s	$f12,$f6,$f2
    2490:	c7a60068 	lwc1	$f6,104(sp)
    2494:	46005102 	mul.s	$f4,$f10,$f0
    2498:	46123201 	sub.s	$f8,$f6,$f18
    249c:	46004282 	mul.s	$f10,$f8,$f0
    24a0:	46102380 	add.s	$f14,$f4,$f16
    24a4:	46125100 	add.s	$f4,$f10,$f18
    24a8:	44062000 	mfc1	a2,$f4
    24ac:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    24b0:	00000000 	nop
    24b4:	c60c0190 	lwc1	$f12,400(s0)
    24b8:	24070001 	li	a3,1
    24bc:	44066000 	mfc1	a2,$f12
    24c0:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    24c4:	46006386 	mov.s	$f14,$f12
    24c8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    24cc:	8e240000 	lw	a0,0(s1)
    24d0:	8fa80058 	lw	t0,88(sp)
    24d4:	3c0ce700 	lui	t4,0xe700
    24d8:	3c0efa00 	lui	t6,0xfa00
    24dc:	8d0202d0 	lw	v0,720(t0)
    24e0:	3c0142d2 	lui	at,0x42d2
    24e4:	44813000 	mtc1	at,$f6
    24e8:	244b0008 	addiu	t3,v0,8
    24ec:	ad0b02d0 	sw	t3,720(t0)
    24f0:	ac400004 	sw	zero,4(v0)
    24f4:	ac4c0000 	sw	t4,0(v0)
    24f8:	8d0302d0 	lw	v1,720(t0)
    24fc:	24040001 	li	a0,1
    2500:	3c014f00 	lui	at,0x4f00
    2504:	246d0008 	addiu	t5,v1,8
    2508:	ad0d02d0 	sw	t5,720(t0)
    250c:	ac6e0000 	sw	t6,0(v1)
    2510:	c6080198 	lwc1	$f8,408(s0)
    2514:	24050001 	li	a1,1
    2518:	46083282 	mul.s	$f10,$f6,$f8
    251c:	444ff800 	cfc1	t7,$31
    2520:	44c4f800 	ctc1	a0,$31
    2524:	00000000 	nop
    2528:	46005124 	cvt.w.s	$f4,$f10
    252c:	4444f800 	cfc1	a0,$31
    2530:	00000000 	nop
    2534:	30840078 	andi	a0,a0,0x78
    2538:	50800013 	beqzl	a0,2588 <func_80BA4D7C+0x2ac>
    253c:	44042000 	mfc1	a0,$f4
    2540:	44812000 	mtc1	at,$f4
    2544:	24040001 	li	a0,1
    2548:	46045101 	sub.s	$f4,$f10,$f4
    254c:	44c4f800 	ctc1	a0,$31
    2550:	00000000 	nop
    2554:	46002124 	cvt.w.s	$f4,$f4
    2558:	4444f800 	cfc1	a0,$31
    255c:	00000000 	nop
    2560:	30840078 	andi	a0,a0,0x78
    2564:	14800005 	bnez	a0,257c <func_80BA4D7C+0x2a0>
    2568:	00000000 	nop
    256c:	44042000 	mfc1	a0,$f4
    2570:	3c018000 	lui	at,0x8000
    2574:	10000007 	b	2594 <func_80BA4D7C+0x2b8>
    2578:	00812025 	or	a0,a0,at
    257c:	10000005 	b	2594 <func_80BA4D7C+0x2b8>
    2580:	2404ffff 	li	a0,-1
    2584:	44042000 	mfc1	a0,$f4
    2588:	00000000 	nop
    258c:	0480fffb 	bltz	a0,257c <func_80BA4D7C+0x2a0>
    2590:	00000000 	nop
    2594:	9219018c 	lbu	t9,396(s0)
    2598:	24840096 	addiu	a0,a0,150
    259c:	308400ff 	andi	a0,a0,0xff
    25a0:	00044e00 	sll	t1,a0,0x18
    25a4:	3c0100ff 	lui	at,0xff
    25a8:	03295025 	or	t2,t9,t1
    25ac:	01415825 	or	t3,t2,at
    25b0:	00046200 	sll	t4,a0,0x8
    25b4:	016c6825 	or	t5,t3,t4
    25b8:	ac6d0004 	sw	t5,4(v1)
    25bc:	8d0302d0 	lw	v1,720(t0)
    25c0:	44cff800 	ctc1	t7,$31
    25c4:	3c0ffb00 	lui	t7,0xfb00
    25c8:	246e0008 	addiu	t6,v1,8
    25cc:	ad0e02d0 	sw	t6,720(t0)
    25d0:	3c01437f 	lui	at,0x437f
    25d4:	ac6f0000 	sw	t7,0(v1)
    25d8:	c6000198 	lwc1	$f0,408(s0)
    25dc:	44813000 	mtc1	at,$f6
    25e0:	24040001 	li	a0,1
    25e4:	3c014f00 	lui	at,0x4f00
    25e8:	46003202 	mul.s	$f8,$f6,$f0
    25ec:	4458f800 	cfc1	t8,$31
    25f0:	44c4f800 	ctc1	a0,$31
    25f4:	00000000 	nop
    25f8:	460042a4 	cvt.w.s	$f10,$f8
    25fc:	4444f800 	cfc1	a0,$31
    2600:	00000000 	nop
    2604:	30840078 	andi	a0,a0,0x78
    2608:	50800013 	beqzl	a0,2658 <func_80BA4D7C+0x37c>
    260c:	44045000 	mfc1	a0,$f10
    2610:	44815000 	mtc1	at,$f10
    2614:	24040001 	li	a0,1
    2618:	460a4281 	sub.s	$f10,$f8,$f10
    261c:	44c4f800 	ctc1	a0,$31
    2620:	00000000 	nop
    2624:	460052a4 	cvt.w.s	$f10,$f10
    2628:	4444f800 	cfc1	a0,$31
    262c:	00000000 	nop
    2630:	30840078 	andi	a0,a0,0x78
    2634:	14800005 	bnez	a0,264c <func_80BA4D7C+0x370>
    2638:	00000000 	nop
    263c:	44045000 	mfc1	a0,$f10
    2640:	3c018000 	lui	at,0x8000
    2644:	10000007 	b	2664 <func_80BA4D7C+0x388>
    2648:	00812025 	or	a0,a0,at
    264c:	10000005 	b	2664 <func_80BA4D7C+0x388>
    2650:	2404ffff 	li	a0,-1
    2654:	44045000 	mfc1	a0,$f10
    2658:	00000000 	nop
    265c:	0480fffb 	bltz	a0,264c <func_80BA4D7C+0x370>
    2660:	00000000 	nop
    2664:	3c01431b 	lui	at,0x431b
    2668:	44d8f800 	ctc1	t8,$31
    266c:	44812000 	mtc1	at,$f4
    2670:	240b0001 	li	t3,1
    2674:	308400ff 	andi	a0,a0,0xff
    2678:	46002182 	mul.s	$f6,$f4,$f0
    267c:	309900ff 	andi	t9,a0,0xff
    2680:	3c014f00 	lui	at,0x4f00
    2684:	9209018c 	lbu	t1,396(s0)
    2688:	444af800 	cfc1	t2,$31
    268c:	44cbf800 	ctc1	t3,$31
    2690:	00000000 	nop
    2694:	46003224 	cvt.w.s	$f8,$f6
    2698:	444bf800 	cfc1	t3,$31
    269c:	00000000 	nop
    26a0:	316b0078 	andi	t3,t3,0x78
    26a4:	51600013 	beqzl	t3,26f4 <func_80BA4D7C+0x418>
    26a8:	440b4000 	mfc1	t3,$f8
    26ac:	44814000 	mtc1	at,$f8
    26b0:	240b0001 	li	t3,1
    26b4:	46083201 	sub.s	$f8,$f6,$f8
    26b8:	44cbf800 	ctc1	t3,$31
    26bc:	00000000 	nop
    26c0:	46004224 	cvt.w.s	$f8,$f8
    26c4:	444bf800 	cfc1	t3,$31
    26c8:	00000000 	nop
    26cc:	316b0078 	andi	t3,t3,0x78
    26d0:	15600005 	bnez	t3,26e8 <func_80BA4D7C+0x40c>
    26d4:	00000000 	nop
    26d8:	440b4000 	mfc1	t3,$f8
    26dc:	3c018000 	lui	at,0x8000
    26e0:	10000007 	b	2700 <func_80BA4D7C+0x424>
    26e4:	01615825 	or	t3,t3,at
    26e8:	10000005 	b	2700 <func_80BA4D7C+0x424>
    26ec:	240bffff 	li	t3,-1
    26f0:	440b4000 	mfc1	t3,$f8
    26f4:	00000000 	nop
    26f8:	0560fffb 	bltz	t3,26e8 <func_80BA4D7C+0x40c>
    26fc:	00000000 	nop
    2700:	01606025 	move	t4,t3
    2704:	258e0064 	addiu	t6,t4,100
    2708:	000e7e00 	sll	t7,t6,0x18
    270c:	240c00ff 	li	t4,255
    2710:	01846823 	subu	t5,t4,a0
    2714:	012fc025 	or	t8,t1,t7
    2718:	44caf800 	ctc1	t2,$31
    271c:	00195400 	sll	t2,t9,0x10
    2720:	31ae00ff 	andi	t6,t5,0xff
    2724:	000e4a00 	sll	t1,t6,0x8
    2728:	030a5825 	or	t3,t8,t2
    272c:	01697825 	or	t7,t3,t1
    2730:	3c010001 	lui	at,0x1
    2734:	ac6f0004 	sw	t7,4(v1)
    2738:	34211da0 	ori	at,at,0x1da0
    273c:	02212021 	addu	a0,s1,at
    2740:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2744:	afa80058 	sw	t0,88(sp)
    2748:	8fa80058 	lw	t0,88(sp)
    274c:	3c18da38 	lui	t8,0xda38
    2750:	37180003 	ori	t8,t8,0x3
    2754:	8d0202d0 	lw	v0,720(t0)
    2758:	3c050000 	lui	a1,0x0
    275c:	24a50000 	addiu	a1,a1,0
    2760:	24590008 	addiu	t9,v0,8
    2764:	ad1902d0 	sw	t9,720(t0)
    2768:	ac580000 	sw	t8,0(v0)
    276c:	8e240000 	lw	a0,0(s1)
    2770:	24060588 	li	a2,1416
    2774:	afa80058 	sw	t0,88(sp)
    2778:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    277c:	afa20038 	sw	v0,56(sp)
    2780:	8fa30038 	lw	v1,56(sp)
    2784:	8fa80058 	lw	t0,88(sp)
    2788:	3c0cdb06 	lui	t4,0xdb06
    278c:	ac620004 	sw	v0,4(v1)
    2790:	8d0202d0 	lw	v0,720(t0)
    2794:	358c0020 	ori	t4,t4,0x20
    2798:	3c040000 	lui	a0,0x0
    279c:	244a0008 	addiu	t2,v0,8
    27a0:	ad0a02d0 	sw	t2,720(t0)
    27a4:	ac4c0000 	sw	t4,0(v0)
    27a8:	960d019c 	lhu	t5,412(s0)
    27ac:	3c180000 	lui	t8,0x0
    27b0:	3c0100ff 	lui	at,0xff
    27b4:	000d7080 	sll	t6,t5,0x2
    27b8:	008e2021 	addu	a0,a0,t6
    27bc:	8c840000 	lw	a0,0(a0)
    27c0:	3421ffff 	ori	at,at,0xffff
    27c4:	00044900 	sll	t1,a0,0x4
    27c8:	00097f02 	srl	t7,t1,0x1c
    27cc:	000fc880 	sll	t9,t7,0x2
    27d0:	0319c021 	addu	t8,t8,t9
    27d4:	8f180000 	lw	t8,0(t8)
    27d8:	00815824 	and	t3,a0,at
    27dc:	3c018000 	lui	at,0x8000
    27e0:	01785021 	addu	t2,t3,t8
    27e4:	01416021 	addu	t4,t2,at
    27e8:	ac4c0004 	sw	t4,4(v0)
    27ec:	8d0202d0 	lw	v0,720(t0)
    27f0:	3c04e700 	lui	a0,0xe700
    27f4:	3c0f0601 	lui	t7,0x601
    27f8:	244d0008 	addiu	t5,v0,8
    27fc:	ad0d02d0 	sw	t5,720(t0)
    2800:	ac400004 	sw	zero,4(v0)
    2804:	ac440000 	sw	a0,0(v0)
    2808:	8d0202d0 	lw	v0,720(t0)
    280c:	25ef9620 	addiu	t7,t7,-27104
    2810:	3c09de00 	lui	t1,0xde00
    2814:	244e0008 	addiu	t6,v0,8
    2818:	ad0e02d0 	sw	t6,720(t0)
    281c:	ac4f0004 	sw	t7,4(v0)
    2820:	ac490000 	sw	t1,0(v0)
    2824:	8d0202d0 	lw	v0,720(t0)
    2828:	24590008 	addiu	t9,v0,8
    282c:	ad1902d0 	sw	t9,720(t0)
    2830:	ac400004 	sw	zero,4(v0)
    2834:	ac440000 	sw	a0,0(v0)
    2838:	3c060000 	lui	a2,0x0
    283c:	24c60000 	addiu	a2,a2,0
    2840:	27a40048 	addiu	a0,sp,72
    2844:	8e250000 	lw	a1,0(s1)
    2848:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    284c:	24070598 	li	a3,1432
    2850:	8fbf001c 	lw	ra,28(sp)
    2854:	8fb00014 	lw	s0,20(sp)
    2858:	8fb10018 	lw	s1,24(sp)
    285c:	03e00008 	jr	ra
    2860:	27bd0080 	addiu	sp,sp,128

00002864 <func_80BA5304>:
    2864:	27bdffe8 	addiu	sp,sp,-24
    2868:	3c010001 	lui	at,0x1
    286c:	afa40018 	sw	a0,24(sp)
    2870:	342117a4 	ori	at,at,0x17a4
    2874:	afbf0014 	sw	ra,20(sp)
    2878:	00a12021 	addu	a0,a1,at
    287c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2880:	24050179 	li	a1,377
    2884:	04410009 	bgez	v0,28ac <func_80BA5304+0x48>
    2888:	8fae0018 	lw	t6,24(sp)
    288c:	3c040000 	lui	a0,0x0
    2890:	3c050000 	lui	a1,0x0
    2894:	24a50000 	addiu	a1,a1,0
    2898:	24840000 	addiu	a0,a0,0
    289c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    28a0:	240605a9 	li	a2,1449
    28a4:	10000002 	b	28b0 <func_80BA5304+0x4c>
    28a8:	00000000 	nop
    28ac:	a1c21658 	sb	v0,5720(t6)
    28b0:	3c050000 	lui	a1,0x0
    28b4:	24a50000 	addiu	a1,a1,0
    28b8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    28bc:	8fa40018 	lw	a0,24(sp)
    28c0:	8fbf0014 	lw	ra,20(sp)
    28c4:	27bd0018 	addiu	sp,sp,24
    28c8:	03e00008 	jr	ra
    28cc:	00000000 	nop

000028d0 <func_80BA5370>:
    28d0:	3c010001 	lui	at,0x1
    28d4:	27bdffe8 	addiu	sp,sp,-24
    28d8:	00803025 	move	a2,a0
    28dc:	342117a4 	ori	at,at,0x17a4
    28e0:	afbf0014 	sw	ra,20(sp)
    28e4:	00a12021 	addu	a0,a1,at
    28e8:	90c51658 	lbu	a1,5720(a2)
    28ec:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    28f0:	afa60018 	sw	a2,24(sp)
    28f4:	10400009 	beqz	v0,291c <func_80BA5370+0x4c>
    28f8:	8fa60018 	lw	a2,24(sp)
    28fc:	90cf1658 	lbu	t7,5720(a2)
    2900:	240e0001 	li	t6,1
    2904:	3c050000 	lui	a1,0x0
    2908:	a0ce1659 	sb	t6,5721(a2)
    290c:	24a50000 	addiu	a1,a1,0
    2910:	00c02025 	move	a0,a2
    2914:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2918:	a0cf001e 	sb	t7,30(a2)
    291c:	8fbf0014 	lw	ra,20(sp)
    2920:	27bd0018 	addiu	sp,sp,24
    2924:	03e00008 	jr	ra
    2928:	00000000 	nop

0000292c <func_80BA53CC>:
    292c:	27bdffc8 	addiu	sp,sp,-56
    2930:	afbf0034 	sw	ra,52(sp)
    2934:	afb50030 	sw	s5,48(sp)
    2938:	afb4002c 	sw	s4,44(sp)
    293c:	afb30028 	sw	s3,40(sp)
    2940:	afb20024 	sw	s2,36(sp)
    2944:	afb10020 	sw	s1,32(sp)
    2948:	afb0001c 	sw	s0,28(sp)
    294c:	f7b40010 	sdc1	$f20,16(sp)
    2950:	90ae1d6c 	lbu	t6,7532(a1)
    2954:	00a0a025 	move	s4,a1
    2958:	0080a825 	move	s5,a0
    295c:	11c00021 	beqz	t6,29e4 <func_80BA53CC+0xb8>
    2960:	00008825 	move	s1,zero
    2964:	3c010000 	lui	at,0x0
    2968:	c4340000 	lwc1	$f20,0(at)
    296c:	00001025 	move	v0,zero
    2970:	24130054 	li	s3,84
    2974:	24120002 	li	s2,2
    2978:	00027880 	sll	t7,v0,0x2
    297c:	028fc021 	addu	t8,s4,t7
    2980:	8f031d90 	lw	v1,7568(t8)
    2984:	50600013 	beqzl	v1,29d4 <func_80BA53CC+0xa8>
    2988:	26310001 	addiu	s1,s1,1
    298c:	94790000 	lhu	t9,0(v1)
    2990:	56590010 	bnel	s2,t9,29d4 <func_80BA53CC+0xa8>
    2994:	26310001 	addiu	s1,s1,1
    2998:	02330019 	multu	s1,s3
    299c:	00004012 	mflo	t0
    29a0:	02a88021 	addu	s0,s5,t0
    29a4:	c6040190 	lwc1	$f4,400(s0)
    29a8:	4604a032 	c.eq.s	$f20,$f4
    29ac:	00000000 	nop
    29b0:	45020004 	bc1fl	29c4 <func_80BA53CC+0x98>
    29b4:	4405a000 	mfc1	a1,$f20
    29b8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    29bc:	2404000b 	li	a0,11
    29c0:	4405a000 	mfc1	a1,$f20
    29c4:	4406a000 	mfc1	a2,$f20
    29c8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    29cc:	26040190 	addiu	a0,s0,400
    29d0:	26310001 	addiu	s1,s1,1
    29d4:	323100ff 	andi	s1,s1,0xff
    29d8:	2a210006 	slti	at,s1,6
    29dc:	1420ffe6 	bnez	at,2978 <func_80BA53CC+0x4c>
    29e0:	02201025 	move	v0,s1
    29e4:	8fbf0034 	lw	ra,52(sp)
    29e8:	d7b40010 	ldc1	$f20,16(sp)
    29ec:	8fb0001c 	lw	s0,28(sp)
    29f0:	8fb10020 	lw	s1,32(sp)
    29f4:	8fb20024 	lw	s2,36(sp)
    29f8:	8fb30028 	lw	s3,40(sp)
    29fc:	8fb4002c 	lw	s4,44(sp)
    2a00:	8fb50030 	lw	s5,48(sp)
    2a04:	03e00008 	jr	ra
    2a08:	27bd0038 	addiu	sp,sp,56

00002a0c <func_80BA54AC>:
    2a0c:	27bdfec8 	addiu	sp,sp,-312
    2a10:	3c0f0000 	lui	t7,0x0
    2a14:	afbf0074 	sw	ra,116(sp)
    2a18:	afbe0070 	sw	s8,112(sp)
    2a1c:	afb7006c 	sw	s7,108(sp)
    2a20:	afb60068 	sw	s6,104(sp)
    2a24:	afb50064 	sw	s5,100(sp)
    2a28:	afb40060 	sw	s4,96(sp)
    2a2c:	afb3005c 	sw	s3,92(sp)
    2a30:	afb20058 	sw	s2,88(sp)
    2a34:	afb10054 	sw	s1,84(sp)
    2a38:	afb00050 	sw	s0,80(sp)
    2a3c:	f7b80048 	sdc1	$f24,72(sp)
    2a40:	f7b60040 	sdc1	$f22,64(sp)
    2a44:	f7b40038 	sdc1	$f20,56(sp)
    2a48:	25ef0000 	addiu	t7,t7,0
    2a4c:	8df90000 	lw	t9,0(t7)
    2a50:	8df80004 	lw	t8,4(t7)
    2a54:	27ae0114 	addiu	t6,sp,276
    2a58:	add90000 	sw	t9,0(t6)
    2a5c:	add80004 	sw	t8,4(t6)
    2a60:	8df8000c 	lw	t8,12(t7)
    2a64:	8df90008 	lw	t9,8(t7)
    2a68:	3c090000 	lui	t1,0x0
    2a6c:	add8000c 	sw	t8,12(t6)
    2a70:	add90008 	sw	t9,8(t6)
    2a74:	8df90010 	lw	t9,16(t7)
    2a78:	8df80014 	lw	t8,20(t7)
    2a7c:	25290000 	addiu	t1,t1,0
    2a80:	add90010 	sw	t9,16(t6)
    2a84:	add80014 	sw	t8,20(t6)
    2a88:	8d2a0004 	lw	t2,4(t1)
    2a8c:	8d2b0000 	lw	t3,0(t1)
    2a90:	27a800fc 	addiu	t0,sp,252
    2a94:	ad0a0004 	sw	t2,4(t0)
    2a98:	ad0b0000 	sw	t3,0(t0)
    2a9c:	8d2b0008 	lw	t3,8(t1)
    2aa0:	8d2a000c 	lw	t2,12(t1)
    2aa4:	3c0d0000 	lui	t5,0x0
    2aa8:	ad0b0008 	sw	t3,8(t0)
    2aac:	ad0a000c 	sw	t2,12(t0)
    2ab0:	8d2a0014 	lw	t2,20(t1)
    2ab4:	8d2b0010 	lw	t3,16(t1)
    2ab8:	25ad0000 	addiu	t5,t5,0
    2abc:	ad0a0014 	sw	t2,20(t0)
    2ac0:	ad0b0010 	sw	t3,16(t0)
    2ac4:	8dae0004 	lw	t6,4(t5)
    2ac8:	8daf0000 	lw	t7,0(t5)
    2acc:	27ac00e4 	addiu	t4,sp,228
    2ad0:	ad8e0004 	sw	t6,4(t4)
    2ad4:	ad8f0000 	sw	t7,0(t4)
    2ad8:	8daf0008 	lw	t7,8(t5)
    2adc:	8dae000c 	lw	t6,12(t5)
    2ae0:	3c190000 	lui	t9,0x0
    2ae4:	ad8f0008 	sw	t7,8(t4)
    2ae8:	ad8e000c 	sw	t6,12(t4)
    2aec:	8dae0014 	lw	t6,20(t5)
    2af0:	8daf0010 	lw	t7,16(t5)
    2af4:	27390000 	addiu	t9,t9,0
    2af8:	ad8e0014 	sw	t6,20(t4)
    2afc:	ad8f0010 	sw	t7,16(t4)
    2b00:	8f280004 	lw	t0,4(t9)
    2b04:	8f290000 	lw	t1,0(t9)
    2b08:	27b800cc 	addiu	t8,sp,204
    2b0c:	af080004 	sw	t0,4(t8)
    2b10:	af090000 	sw	t1,0(t8)
    2b14:	8f290008 	lw	t1,8(t9)
    2b18:	8f28000c 	lw	t0,12(t9)
    2b1c:	3c0b0000 	lui	t3,0x0
    2b20:	af090008 	sw	t1,8(t8)
    2b24:	af08000c 	sw	t0,12(t8)
    2b28:	8f280014 	lw	t0,20(t9)
    2b2c:	8f290010 	lw	t1,16(t9)
    2b30:	256b0000 	addiu	t3,t3,0
    2b34:	af080014 	sw	t0,20(t8)
    2b38:	af090010 	sw	t1,16(t8)
    2b3c:	8d6c0004 	lw	t4,4(t3)
    2b40:	8d6d0000 	lw	t5,0(t3)
    2b44:	27aa00b4 	addiu	t2,sp,180
    2b48:	ad4c0004 	sw	t4,4(t2)
    2b4c:	ad4d0000 	sw	t5,0(t2)
    2b50:	8d6d0008 	lw	t5,8(t3)
    2b54:	8d6c000c 	lw	t4,12(t3)
    2b58:	00a0a025 	move	s4,a1
    2b5c:	ad4d0008 	sw	t5,8(t2)
    2b60:	ad4c000c 	sw	t4,12(t2)
    2b64:	8d6c0014 	lw	t4,20(t3)
    2b68:	8d6d0010 	lw	t5,16(t3)
    2b6c:	0080b025 	move	s6,a0
    2b70:	ad4c0014 	sw	t4,20(t2)
    2b74:	ad4d0010 	sw	t5,16(t2)
    2b78:	8ca50000 	lw	a1,0(a1)
    2b7c:	3c060000 	lui	a2,0x0
    2b80:	24c60000 	addiu	a2,a2,0
    2b84:	27a400a0 	addiu	a0,sp,160
    2b88:	24070603 	li	a3,1539
    2b8c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2b90:	00a08825 	move	s1,a1
    2b94:	92ce1659 	lbu	t6,5721(s6)
    2b98:	00009825 	move	s3,zero
    2b9c:	3c010000 	lui	at,0x0
    2ba0:	11c00090 	beqz	t6,2de4 <func_80BA54AC+0x3d8>
    2ba4:	24170054 	li	s7,84
    2ba8:	c4380000 	lwc1	$f24,0(at)
    2bac:	3c010000 	lui	at,0x0
    2bb0:	c4360000 	lwc1	$f22,0(at)
    2bb4:	3c010000 	lui	at,0x0
    2bb8:	c4340000 	lwc1	$f20,0(at)
    2bbc:	3c1ee700 	lui	s8,0xe700
    2bc0:	02770019 	multu	s3,s7
    2bc4:	00138080 	sll	s0,s3,0x2
    2bc8:	3c150600 	lui	s5,0x600
    2bcc:	26b55ff0 	addiu	s5,s5,24560
    2bd0:	03b0c021 	addu	t8,sp,s0
    2bd4:	03b0c821 	addu	t9,sp,s0
    2bd8:	03b04021 	addu	t0,sp,s0
    2bdc:	00003825 	move	a3,zero
    2be0:	00007812 	mflo	t7
    2be4:	02cf9021 	addu	s2,s6,t7
    2be8:	c6440190 	lwc1	$f4,400(s2)
    2bec:	4604b03c 	c.lt.s	$f22,$f4
    2bf0:	00000000 	nop
    2bf4:	45020076 	bc1fl	2dd0 <func_80BA54AC+0x3c4>
    2bf8:	26730001 	addiu	s3,s3,1
    2bfc:	c70c0114 	lwc1	$f12,276(t8)
    2c00:	c72e00fc 	lwc1	$f14,252(t9)
    2c04:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2c08:	8d0600e4 	lw	a2,228(t0)
    2c0c:	03b04821 	addu	t1,sp,s0
    2c10:	c52600cc 	lwc1	$f6,204(t1)
    2c14:	24050001 	li	a1,1
    2c18:	46143302 	mul.s	$f12,$f6,$f20
    2c1c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2c20:	00000000 	nop
    2c24:	03b05021 	addu	t2,sp,s0
    2c28:	c54800b4 	lwc1	$f8,180(t2)
    2c2c:	24050001 	li	a1,1
    2c30:	46144302 	mul.s	$f12,$f8,$f20
    2c34:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2c38:	00000000 	nop
    2c3c:	c64c0190 	lwc1	$f12,400(s2)
    2c40:	4600c386 	mov.s	$f14,$f24
    2c44:	24070001 	li	a3,1
    2c48:	44066000 	mfc1	a2,$f12
    2c4c:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2c50:	00000000 	nop
    2c54:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2c58:	8e840000 	lw	a0,0(s4)
    2c5c:	8e2202d0 	lw	v0,720(s1)
    2c60:	3c0dfa00 	lui	t5,0xfa00
    2c64:	00132880 	sll	a1,s3,0x2
    2c68:	244b0008 	addiu	t3,v0,8
    2c6c:	ae2b02d0 	sw	t3,720(s1)
    2c70:	ac5e0000 	sw	s8,0(v0)
    2c74:	ac400004 	sw	zero,4(v0)
    2c78:	8e2202d0 	lw	v0,720(s1)
    2c7c:	3c0e0000 	lui	t6,0x0
    2c80:	25ce0000 	addiu	t6,t6,0
    2c84:	244c0008 	addiu	t4,v0,8
    2c88:	ae2c02d0 	sw	t4,720(s1)
    2c8c:	00b32823 	subu	a1,a1,s3
    2c90:	35ad0080 	ori	t5,t5,0x80
    2c94:	00ae1821 	addu	v1,a1,t6
    2c98:	ac4d0000 	sw	t5,0(v0)
    2c9c:	90690000 	lbu	t1,0(v1)
    2ca0:	90780002 	lbu	t8,2(v1)
    2ca4:	906d0001 	lbu	t5,1(v1)
    2ca8:	00095600 	sll	t2,t1,0x18
    2cac:	0018ca00 	sll	t9,t8,0x8
    2cb0:	032a5825 	or	t3,t9,t2
    2cb4:	000d7400 	sll	t6,t5,0x10
    2cb8:	016e7825 	or	t7,t3,t6
    2cbc:	35f80080 	ori	t8,t7,0x80
    2cc0:	ac580004 	sw	t8,4(v0)
    2cc4:	8e2202d0 	lw	v0,720(s1)
    2cc8:	3c190000 	lui	t9,0x0
    2ccc:	27390000 	addiu	t9,t9,0
    2cd0:	24480008 	addiu	t0,v0,8
    2cd4:	ae2802d0 	sw	t0,720(s1)
    2cd8:	3c09fb00 	lui	t1,0xfb00
    2cdc:	00b91821 	addu	v1,a1,t9
    2ce0:	ac490000 	sw	t1,0(v0)
    2ce4:	906e0000 	lbu	t6,0(v1)
    2ce8:	906c0002 	lbu	t4,2(v1)
    2cec:	90690001 	lbu	t1,1(v1)
    2cf0:	000e7e00 	sll	t7,t6,0x18
    2cf4:	000c6a00 	sll	t5,t4,0x8
    2cf8:	01afc025 	or	t8,t5,t7
    2cfc:	0009cc00 	sll	t9,t1,0x10
    2d00:	03195025 	or	t2,t8,t9
    2d04:	354c0080 	ori	t4,t2,0x80
    2d08:	ac4c0004 	sw	t4,4(v0)
    2d0c:	8e2202d0 	lw	v0,720(s1)
    2d10:	3c0eda38 	lui	t6,0xda38
    2d14:	35ce0003 	ori	t6,t6,0x3
    2d18:	244b0008 	addiu	t3,v0,8
    2d1c:	ae2b02d0 	sw	t3,720(s1)
    2d20:	3c050000 	lui	a1,0x0
    2d24:	ac4e0000 	sw	t6,0(v0)
    2d28:	8e840000 	lw	a0,0(s4)
    2d2c:	24a50000 	addiu	a1,a1,0
    2d30:	24060632 	li	a2,1586
    2d34:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2d38:	00408025 	move	s0,v0
    2d3c:	ae020004 	sw	v0,4(s0)
    2d40:	8e2202d0 	lw	v0,720(s1)
    2d44:	3c0fdb06 	lui	t7,0xdb06
    2d48:	35ef0020 	ori	t7,t7,0x20
    2d4c:	244d0008 	addiu	t5,v0,8
    2d50:	ae2d02d0 	sw	t5,720(s1)
    2d54:	ac4f0000 	sw	t7,0(v0)
    2d58:	8e83009c 	lw	v1,156(s4)
    2d5c:	8e840000 	lw	a0,0(s4)
    2d60:	24080020 	li	t0,32
    2d64:	00033880 	sll	a3,v1,0x2
    2d68:	00e33821 	addu	a3,a3,v1
    2d6c:	00033080 	sll	a2,v1,0x2
    2d70:	00073840 	sll	a3,a3,0x1
    2d74:	24090040 	li	t1,64
    2d78:	24180001 	li	t8,1
    2d7c:	24190020 	li	t9,32
    2d80:	240a0040 	li	t2,64
    2d84:	00c33021 	addu	a2,a2,v1
    2d88:	afa6001c 	sw	a2,28(sp)
    2d8c:	afaa0028 	sw	t2,40(sp)
    2d90:	afb90024 	sw	t9,36(sp)
    2d94:	afb80018 	sw	t8,24(sp)
    2d98:	afa90014 	sw	t1,20(sp)
    2d9c:	afa70020 	sw	a3,32(sp)
    2da0:	afa80010 	sw	t0,16(sp)
    2da4:	00002825 	move	a1,zero
    2da8:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2dac:	00408025 	move	s0,v0
    2db0:	ae020004 	sw	v0,4(s0)
    2db4:	8e2202d0 	lw	v0,720(s1)
    2db8:	3c0bde00 	lui	t3,0xde00
    2dbc:	244c0008 	addiu	t4,v0,8
    2dc0:	ae2c02d0 	sw	t4,720(s1)
    2dc4:	ac550004 	sw	s5,4(v0)
    2dc8:	ac4b0000 	sw	t3,0(v0)
    2dcc:	26730001 	addiu	s3,s3,1
    2dd0:	00139c00 	sll	s3,s3,0x10
    2dd4:	00139c03 	sra	s3,s3,0x10
    2dd8:	2a610006 	slti	at,s3,6
    2ddc:	1420ff78 	bnez	at,2bc0 <func_80BA54AC+0x1b4>
    2de0:	00000000 	nop
    2de4:	3c060000 	lui	a2,0x0
    2de8:	24c60000 	addiu	a2,a2,0
    2dec:	27a400a0 	addiu	a0,sp,160
    2df0:	8e850000 	lw	a1,0(s4)
    2df4:	0c000000 	jal	0 <ObjectKankyo_SetupAction>
    2df8:	24070647 	li	a3,1607
    2dfc:	8fbf0074 	lw	ra,116(sp)
    2e00:	d7b40038 	ldc1	$f20,56(sp)
    2e04:	d7b60040 	ldc1	$f22,64(sp)
    2e08:	d7b80048 	ldc1	$f24,72(sp)
    2e0c:	8fb00050 	lw	s0,80(sp)
    2e10:	8fb10054 	lw	s1,84(sp)
    2e14:	8fb20058 	lw	s2,88(sp)
    2e18:	8fb3005c 	lw	s3,92(sp)
    2e1c:	8fb40060 	lw	s4,96(sp)
    2e20:	8fb50064 	lw	s5,100(sp)
    2e24:	8fb60068 	lw	s6,104(sp)
    2e28:	8fb7006c 	lw	s7,108(sp)
    2e2c:	8fbe0070 	lw	s8,112(sp)
    2e30:	03e00008 	jr	ra
    2e34:	27bd0138 	addiu	sp,sp,312
	...
