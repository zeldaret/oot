
build/src/overlays/actors/ovl_En_Fr/z_en_fr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A1A9A0>:
       0:	44801000 	mtc1	zero,$f2
       4:	27bdffc8 	addiu	sp,sp,-56
       8:	afbf0014 	sw	ra,20(sp)
       c:	e7a20030 	swc1	$f2,48(sp)
      10:	e7a2002c 	swc1	$f2,44(sp)
      14:	848e001c 	lh	t6,28(a0)
      18:	2403000c 	li	v1,12
      1c:	3c020000 	lui	v0,0x0
      20:	01c30019 	multu	t6,v1
      24:	24420000 	addiu	v0,v0,0
      28:	00002825 	move	a1,zero
      2c:	00007812 	mflo	t7
      30:	004fc021 	addu	t8,v0,t7
      34:	c7000000 	lwc1	$f0,0(t8)
      38:	e4800398 	swc1	$f0,920(a0)
      3c:	e7a00034 	swc1	$f0,52(sp)
      40:	8499001c 	lh	t9,28(a0)
      44:	03230019 	multu	t9,v1
      48:	00004012 	mflo	t0
      4c:	00484821 	addu	t1,v0,t0
      50:	c52c0004 	lwc1	$f12,4(t1)
      54:	0c000000 	jal	0 <func_80A1A9A0>
      58:	afa40038 	sw	a0,56(sp)
      5c:	27a4002c 	addiu	a0,sp,44
      60:	0c000000 	jal	0 <func_80A1A9A0>
      64:	27a50020 	addiu	a1,sp,32
      68:	8fa60038 	lw	a2,56(sp)
      6c:	c7a60020 	lwc1	$f6,32(sp)
      70:	3c0c0000 	lui	t4,0x0
      74:	c4c4038c 	lwc1	$f4,908(a2)
      78:	c4ca0394 	lwc1	$f10,916(a2)
      7c:	84ca001c 	lh	t2,28(a2)
      80:	46062200 	add.s	$f8,$f4,$f6
      84:	258c0000 	addiu	t4,t4,0
      88:	000a5880 	sll	t3,t2,0x2
      8c:	016a5823 	subu	t3,t3,t2
      90:	e4c80024 	swc1	$f8,36(a2)
      94:	c7b00028 	lwc1	$f16,40(sp)
      98:	000b5880 	sll	t3,t3,0x2
      9c:	016c1021 	addu	v0,t3,t4
      a0:	46105480 	add.s	$f18,$f10,$f16
      a4:	c4c60390 	lwc1	$f6,912(a2)
      a8:	3c010000 	lui	at,0x0
      ac:	44801000 	mtc1	zero,$f2
      b0:	e4d2002c 	swc1	$f18,44(a2)
      b4:	c4440008 	lwc1	$f4,8(v0)
      b8:	46062200 	add.s	$f8,$f4,$f6
      bc:	e4c80028 	swc1	$f8,40(a2)
      c0:	c4300000 	lwc1	$f16,0(at)
      c4:	c44a0004 	lwc1	$f10,4(v0)
      c8:	34018000 	li	at,0x8000
      cc:	e4c20068 	swc1	$f2,104(a2)
      d0:	46105482 	mul.s	$f18,$f10,$f16
      d4:	e4c20060 	swc1	$f2,96(a2)
      d8:	e4c2006c 	swc1	$f2,108(a2)
      dc:	4600910d 	trunc.w.s	$f4,$f18
      e0:	44032000 	mfc1	v1,$f4
      e4:	00000000 	nop
      e8:	00031c00 	sll	v1,v1,0x10
      ec:	00031c03 	sra	v1,v1,0x10
      f0:	00611821 	addu	v1,v1,at
      f4:	00031c00 	sll	v1,v1,0x10
      f8:	00031c03 	sra	v1,v1,0x10
      fc:	a4c300b6 	sh	v1,182(a2)
     100:	a4c30032 	sh	v1,50(a2)
     104:	8fbf0014 	lw	ra,20(sp)
     108:	27bd0038 	addiu	sp,sp,56
     10c:	03e00008 	jr	ra
     110:	00000000 	nop

00000114 <EnFr_Init>:
     114:	27bdffe0 	addiu	sp,sp,-32
     118:	afbf001c 	sw	ra,28(sp)
     11c:	afb00018 	sw	s0,24(sp)
     120:	afa50024 	sw	a1,36(sp)
     124:	8482001c 	lh	v0,28(a0)
     128:	00808025 	move	s0,a0
     12c:	3c0e0000 	lui	t6,0x0
     130:	14400015 	bnez	v0,188 <EnFr_Init+0x74>
     134:	28410006 	slti	at,v0,6
     138:	8c8f0004 	lw	t7,4(a0)
     13c:	2401ffee 	li	at,-18
     140:	25ce0000 	addiu	t6,t6,0
     144:	01e1c024 	and	t8,t7,at
     148:	ac980004 	sw	t8,4(a0)
     14c:	ac80012c 	sw	zero,300(a0)
     150:	ac800134 	sw	zero,308(a0)
     154:	ac8e0130 	sw	t6,304(a0)
     158:	ac980004 	sw	t8,4(a0)
     15c:	8fa40024 	lw	a0,36(sp)
     160:	02003025 	move	a2,s0
     164:	24070006 	li	a3,6
     168:	0c000000 	jal	0 <func_80A1A9A0>
     16c:	24851c24 	addiu	a1,a0,7204
     170:	3c0a0000 	lui	t2,0x0
     174:	240940ac 	li	t1,16556
     178:	254a0000 	addiu	t2,t2,0
     17c:	a609010e 	sh	t1,270(s0)
     180:	10000035 	b	258 <EnFr_Init+0x144>
     184:	ae0a0354 	sw	t2,852(s0)
     188:	10200003 	beqz	at,198 <EnFr_Init+0x84>
     18c:	3c040000 	lui	a0,0x0
     190:	04430014 	bgezl	v0,1e4 <EnFr_Init+0xd0>
     194:	8fa40024 	lw	a0,36(sp)
     198:	0c000000 	jal	0 <func_80A1A9A0>
     19c:	24840000 	addiu	a0,a0,0
     1a0:	3c040000 	lui	a0,0x0
     1a4:	3c050000 	lui	a1,0x0
     1a8:	24a50000 	addiu	a1,a1,0
     1ac:	24840000 	addiu	a0,a0,0
     1b0:	24060172 	li	a2,370
     1b4:	0c000000 	jal	0 <func_80A1A9A0>
     1b8:	8607001c 	lh	a3,28(s0)
     1bc:	3c040000 	lui	a0,0x0
     1c0:	0c000000 	jal	0 <func_80A1A9A0>
     1c4:	24840000 	addiu	a0,a0,0
     1c8:	3c040000 	lui	a0,0x0
     1cc:	3c050000 	lui	a1,0x0
     1d0:	24a50000 	addiu	a1,a1,0
     1d4:	24840000 	addiu	a0,a0,0
     1d8:	0c000000 	jal	0 <func_80A1A9A0>
     1dc:	24060174 	li	a2,372
     1e0:	8fa40024 	lw	a0,36(sp)
     1e4:	3c010001 	lui	at,0x1
     1e8:	342117a4 	ori	at,at,0x17a4
     1ec:	24050002 	li	a1,2
     1f0:	0c000000 	jal	0 <func_80A1A9A0>
     1f4:	00812021 	addu	a0,a0,at
     1f8:	a202036a 	sb	v0,874(s0)
     1fc:	820b036a 	lb	t3,874(s0)
     200:	05630016 	bgezl	t3,25c <EnFr_Init+0x148>
     204:	8fbf001c 	lw	ra,28(sp)
     208:	0c000000 	jal	0 <func_80A1A9A0>
     20c:	02002025 	move	a0,s0
     210:	3c040000 	lui	a0,0x0
     214:	0c000000 	jal	0 <func_80A1A9A0>
     218:	24840000 	addiu	a0,a0,0
     21c:	3c040000 	lui	a0,0x0
     220:	3c050000 	lui	a1,0x0
     224:	24a50000 	addiu	a1,a1,0
     228:	24840000 	addiu	a0,a0,0
     22c:	0c000000 	jal	0 <func_80A1A9A0>
     230:	2406017c 	li	a2,380
     234:	3c040000 	lui	a0,0x0
     238:	0c000000 	jal	0 <func_80A1A9A0>
     23c:	24840000 	addiu	a0,a0,0
     240:	3c040000 	lui	a0,0x0
     244:	3c050000 	lui	a1,0x0
     248:	24a50000 	addiu	a1,a1,0
     24c:	24840000 	addiu	a0,a0,0
     250:	0c000000 	jal	0 <func_80A1A9A0>
     254:	2406017e 	li	a2,382
     258:	8fbf001c 	lw	ra,28(sp)
     25c:	8fb00018 	lw	s0,24(sp)
     260:	27bd0020 	addiu	sp,sp,32
     264:	03e00008 	jr	ra
     268:	00000000 	nop

0000026c <func_80A1AC0C>:
     26c:	848e001c 	lh	t6,28(a0)
     270:	24010004 	li	at,4
     274:	3c0f0000 	lui	t7,0x0
     278:	11c10003 	beq	t6,at,288 <func_80A1AC0C+0x1c>
     27c:	25ef0000 	addiu	t7,t7,0
     280:	03e00008 	jr	ra
     284:	ac800134 	sw	zero,308(a0)
     288:	ac8f0134 	sw	t7,308(a0)
     28c:	03e00008 	jr	ra
     290:	00000000 	nop

00000294 <func_80A1AC34>:
     294:	3c0e0000 	lui	t6,0x0
     298:	25ce0000 	addiu	t6,t6,0
     29c:	03e00008 	jr	ra
     2a0:	ac8e0134 	sw	t6,308(a0)

000002a4 <EnFr_Update>:
     2a4:	27bdffb8 	addiu	sp,sp,-72
     2a8:	afb00024 	sw	s0,36(sp)
     2ac:	3c010001 	lui	at,0x1
     2b0:	00808025 	move	s0,a0
     2b4:	afb10028 	sw	s1,40(sp)
     2b8:	342117a4 	ori	at,at,0x17a4
     2bc:	00a08825 	move	s1,a1
     2c0:	afbf002c 	sw	ra,44(sp)
     2c4:	00a12021 	addu	a0,a1,at
     2c8:	0c000000 	jal	0 <func_80A1A9A0>
     2cc:	8205036a 	lb	a1,874(s0)
     2d0:	104000ad 	beqz	v0,588 <EnFr_Update+0x2e4>
     2d4:	2401ffef 	li	at,-17
     2d8:	8e0e0004 	lw	t6,4(s0)
     2dc:	8602001c 	lh	v0,28(s0)
     2e0:	3c050000 	lui	a1,0x0
     2e4:	01c17824 	and	t7,t6,at
     2e8:	2442ffff 	addiu	v0,v0,-1
     2ec:	0002c080 	sll	t8,v0,0x2
     2f0:	3c010000 	lui	at,0x0
     2f4:	ae0f0004 	sw	t7,4(s0)
     2f8:	00380821 	addu	at,at,t8
     2fc:	ac300000 	sw	s0,0(at)
     300:	afa2003c 	sw	v0,60(sp)
     304:	24a50000 	addiu	a1,a1,0
     308:	0c000000 	jal	0 <func_80A1A9A0>
     30c:	02002025 	move	a0,s0
     310:	3c060601 	lui	a2,0x601
     314:	3c070600 	lui	a3,0x600
     318:	26190190 	addiu	t9,s0,400
     31c:	26080220 	addiu	t0,s0,544
     320:	24090018 	li	t1,24
     324:	afa90018 	sw	t1,24(sp)
     328:	afa80014 	sw	t0,20(sp)
     32c:	afb90010 	sw	t9,16(sp)
     330:	24e71534 	addiu	a3,a3,5428
     334:	24c6b498 	addiu	a2,a2,-19304
     338:	02202025 	move	a0,s1
     33c:	0c000000 	jal	0 <func_80A1A9A0>
     340:	2605014c 	addiu	a1,s0,332
     344:	3c060500 	lui	a2,0x500
     348:	3c070500 	lui	a3,0x500
     34c:	260a02f4 	addiu	t2,s0,756
     350:	260b0324 	addiu	t3,s0,804
     354:	240c0008 	li	t4,8
     358:	afac0018 	sw	t4,24(sp)
     35c:	afab0014 	sw	t3,20(sp)
     360:	afaa0010 	sw	t2,16(sp)
     364:	24e72470 	addiu	a3,a3,9328
     368:	24c636f0 	addiu	a2,a2,14064
     36c:	02202025 	move	a0,s1
     370:	0c000000 	jal	0 <func_80A1A9A0>
     374:	260502b0 	addiu	a1,s0,688
     378:	2606035c 	addiu	a2,s0,860
     37c:	afa60030 	sw	a2,48(sp)
     380:	02202025 	move	a0,s1
     384:	0c000000 	jal	0 <func_80A1A9A0>
     388:	262507a8 	addiu	a1,s1,1960
     38c:	c6040008 	lwc1	$f4,8(s0)
     390:	c608000c 	lwc1	$f8,12(s0)
     394:	c6100010 	lwc1	$f16,16(s0)
     398:	4600218d 	trunc.w.s	$f6,$f4
     39c:	ae020358 	sw	v0,856(s0)
     3a0:	241800ff 	li	t8,255
     3a4:	4600428d 	trunc.w.s	$f10,$f8
     3a8:	44053000 	mfc1	a1,$f6
     3ac:	241900ff 	li	t9,255
     3b0:	4600848d 	trunc.w.s	$f18,$f16
     3b4:	44065000 	mfc1	a2,$f10
     3b8:	240800ff 	li	t0,255
     3bc:	2409ffff 	li	t1,-1
     3c0:	44079000 	mfc1	a3,$f18
     3c4:	00052c00 	sll	a1,a1,0x10
     3c8:	00063400 	sll	a2,a2,0x10
     3cc:	00073c00 	sll	a3,a3,0x10
     3d0:	00073c03 	sra	a3,a3,0x10
     3d4:	00063403 	sra	a2,a2,0x10
     3d8:	00052c03 	sra	a1,a1,0x10
     3dc:	afa9001c 	sw	t1,28(sp)
     3e0:	afa80018 	sw	t0,24(sp)
     3e4:	afb90014 	sw	t9,20(sp)
     3e8:	afb80010 	sw	t8,16(sp)
     3ec:	0c000000 	jal	0 <func_80A1A9A0>
     3f0:	8fa40030 	lw	a0,48(sp)
     3f4:	8faa003c 	lw	t2,60(sp)
     3f8:	3c0b0000 	lui	t3,0x0
     3fc:	3c0d0000 	lui	t5,0x0
     400:	016a5821 	addu	t3,t3,t2
     404:	916b0000 	lbu	t3,0(t3)
     408:	3c0e0000 	lui	t6,0x0
     40c:	95ce0eee 	lhu	t6,3822(t6)
     410:	000b6040 	sll	t4,t3,0x1
     414:	01ac6821 	addu	t5,t5,t4
     418:	95ad0000 	lhu	t5,0(t5)
     41c:	3c014316 	lui	at,0x4316
     420:	01ae7824 	and	t7,t5,t6
     424:	51e00006 	beqzl	t7,440 <EnFr_Update+0x19c>
     428:	44813000 	mtc1	at,$f6
     42c:	3c014387 	lui	at,0x4387
     430:	44812000 	mtc1	at,$f4
     434:	10000004 	b	448 <EnFr_Update+0x1a4>
     438:	e60403a0 	swc1	$f4,928(s0)
     43c:	44813000 	mtc1	at,$f6
     440:	00000000 	nop
     444:	e60603a0 	swc1	$f6,928(s0)
     448:	3c010000 	lui	at,0x0
     44c:	c42a0000 	lwc1	$f10,0(at)
     450:	c60803a0 	lwc1	$f8,928(s0)
     454:	02002025 	move	a0,s0
     458:	460a4402 	mul.s	$f16,$f8,$f10
     45c:	44058000 	mfc1	a1,$f16
     460:	0c000000 	jal	0 <func_80A1A9A0>
     464:	00000000 	nop
     468:	3c010000 	lui	at,0x0
     46c:	c4320000 	lwc1	$f18,0(at)
     470:	02002025 	move	a0,s0
     474:	3c054120 	lui	a1,0x4120
     478:	0c000000 	jal	0 <func_80A1A9A0>
     47c:	e6120070 	swc1	$f18,112(s0)
     480:	3c014270 	lui	at,0x4270
     484:	24180001 	li	t8,1
     488:	44816000 	mtc1	at,$f12
     48c:	0c000000 	jal	0 <func_80A1A9A0>
     490:	a2180378 	sb	t8,888(s0)
     494:	3c0141a0 	lui	at,0x41a0
     498:	44812000 	mtc1	at,$f4
     49c:	8e0e0024 	lw	t6,36(s0)
     4a0:	8e0d0028 	lw	t5,40(s0)
     4a4:	46040180 	add.s	$f6,$f0,$f4
     4a8:	ae0e038c 	sw	t6,908(s0)
     4ac:	8e0e002c 	lw	t6,44(s0)
     4b0:	3c0b0000 	lui	t3,0x0
     4b4:	4600320d 	trunc.w.s	$f8,$f6
     4b8:	3c0f0000 	lui	t7,0x0
     4bc:	256b0000 	addiu	t3,t3,0
     4c0:	25ef0000 	addiu	t7,t7,0
     4c4:	44084000 	mfc1	t0,$f8
     4c8:	24180007 	li	t8,7
     4cc:	ae0b0374 	sw	t3,884(s0)
     4d0:	00084c00 	sll	t1,t0,0x10
     4d4:	00095403 	sra	t2,t1,0x10
     4d8:	ae0a0370 	sw	t2,880(s0)
     4dc:	a200037a 	sb	zero,890(s0)
     4e0:	a200037b 	sb	zero,891(s0)
     4e4:	a2000379 	sb	zero,889(s0)
     4e8:	ae0f0354 	sw	t7,852(s0)
     4ec:	a200037c 	sb	zero,892(s0)
     4f0:	a200037e 	sb	zero,894(s0)
     4f4:	a200037d 	sb	zero,893(s0)
     4f8:	a2000383 	sb	zero,899(s0)
     4fc:	a2180382 	sb	t8,898(s0)
     500:	ae0003a4 	sw	zero,932(s0)
     504:	02002025 	move	a0,s0
     508:	ae0d0390 	sw	t5,912(s0)
     50c:	0c000000 	jal	0 <func_80A1A9A0>
     510:	ae0e0394 	sw	t6,916(s0)
     514:	0c000000 	jal	0 <func_80A1A9A0>
     518:	02002025 	move	a0,s0
     51c:	3c190000 	lui	t9,0x0
     520:	3c01437f 	lui	at,0x437f
     524:	27390000 	addiu	t9,t9,0
     528:	44816000 	mtc1	at,$f12
     52c:	ae190130 	sw	t9,304(s0)
     530:	0c000000 	jal	0 <func_80A1A9A0>
     534:	a20003a8 	sb	zero,936(s0)
     538:	c602038c 	lwc1	$f2,908(s0)
     53c:	3c014248 	lui	at,0x4248
     540:	44819000 	mtc1	at,$f18
     544:	c6100390 	lwc1	$f16,912(s0)
     548:	e60203ac 	swc1	$f2,940(s0)
     54c:	e60203b8 	swc1	$f2,952(s0)
     550:	46128080 	add.s	$f2,$f16,$f18
     554:	8e0d0004 	lw	t5,4(s0)
     558:	2401fffe 	li	at,-2
     55c:	4600028d 	trunc.w.s	$f10,$f0
     560:	e60203b0 	swc1	$f2,944(s0)
     564:	e60203bc 	swc1	$f2,956(s0)
     568:	c6020394 	lwc1	$f2,916(s0)
     56c:	440b5000 	mfc1	t3,$f10
     570:	01a17024 	and	t6,t5,at
     574:	ae0e0004 	sw	t6,4(s0)
     578:	000b6300 	sll	t4,t3,0xc
     57c:	a60c03aa 	sh	t4,938(s0)
     580:	e60203b4 	swc1	$f2,948(s0)
     584:	e60203c0 	swc1	$f2,960(s0)
     588:	8fbf002c 	lw	ra,44(sp)
     58c:	8fb00024 	lw	s0,36(sp)
     590:	8fb10028 	lw	s1,40(sp)
     594:	03e00008 	jr	ra
     598:	27bd0048 	addiu	sp,sp,72

0000059c <EnFr_Destroy>:
     59c:	27bdffe8 	addiu	sp,sp,-24
     5a0:	afa40018 	sw	a0,24(sp)
     5a4:	8fae0018 	lw	t6,24(sp)
     5a8:	afbf0014 	sw	ra,20(sp)
     5ac:	00a02025 	move	a0,a1
     5b0:	24a507a8 	addiu	a1,a1,1960
     5b4:	0c000000 	jal	0 <func_80A1A9A0>
     5b8:	8dc60358 	lw	a2,856(t6)
     5bc:	8fbf0014 	lw	ra,20(sp)
     5c0:	27bd0018 	addiu	sp,sp,24
     5c4:	03e00008 	jr	ra
     5c8:	00000000 	nop

000005cc <func_80A1AF6C>:
     5cc:	27bdffd0 	addiu	sp,sp,-48
     5d0:	afb00020 	sw	s0,32(sp)
     5d4:	00808025 	move	s0,a0
     5d8:	afbf0024 	sw	ra,36(sp)
     5dc:	afa50034 	sw	a1,52(sp)
     5e0:	8e07002c 	lw	a3,44(s0)
     5e4:	8e060024 	lw	a2,36(s0)
     5e8:	00a02025 	move	a0,a1
     5ec:	27af0028 	addiu	t7,sp,40
     5f0:	27b8002c 	addiu	t8,sp,44
     5f4:	afb80014 	sw	t8,20(sp)
     5f8:	afaf0010 	sw	t7,16(sp)
     5fc:	0c000000 	jal	0 <func_80A1A9A0>
     600:	24a507c0 	addiu	a1,a1,1984
     604:	5040000e 	beqzl	v0,640 <func_80A1AF6C+0x74>
     608:	8fbf0024 	lw	ra,36(sp)
     60c:	9219037a 	lbu	t9,890(s0)
     610:	c6060028 	lwc1	$f6,40(s0)
     614:	24080001 	li	t0,1
     618:	a219037b 	sb	t9,891(s0)
     61c:	c7a40028 	lwc1	$f4,40(sp)
     620:	4604303e 	c.le.s	$f6,$f4
     624:	00000000 	nop
     628:	45020004 	bc1fl	63c <func_80A1AF6C+0x70>
     62c:	a200037a 	sb	zero,890(s0)
     630:	10000002 	b	63c <func_80A1AF6C+0x70>
     634:	a208037a 	sb	t0,890(s0)
     638:	a200037a 	sb	zero,890(s0)
     63c:	8fbf0024 	lw	ra,36(sp)
     640:	8fb00020 	lw	s0,32(sp)
     644:	27bd0030 	addiu	sp,sp,48
     648:	03e00008 	jr	ra
     64c:	00000000 	nop

00000650 <func_80A1AFF0>:
     650:	27bdffc8 	addiu	sp,sp,-56
     654:	afbf0024 	sw	ra,36(sp)
     658:	afb00020 	sw	s0,32(sp)
     65c:	afa5003c 	sw	a1,60(sp)
     660:	908f037a 	lbu	t7,890(a0)
     664:	908e037b 	lbu	t6,891(a0)
     668:	00808025 	move	s0,a0
     66c:	51cf001f 	beql	t6,t7,6ec <func_80A1AFF0+0x9c>
     670:	8fbf0024 	lw	ra,36(sp)
     674:	c4840024 	lwc1	$f4,36(a0)
     678:	3c014120 	lui	at,0x4120
     67c:	44814000 	mtc1	at,$f8
     680:	e7a4002c 	swc1	$f4,44(sp)
     684:	c4860028 	lwc1	$f6,40(a0)
     688:	24180001 	li	t8,1
     68c:	24190001 	li	t9,1
     690:	46083281 	sub.s	$f10,$f6,$f8
     694:	00003025 	move	a2,zero
     698:	00003825 	move	a3,zero
     69c:	e7aa0030 	swc1	$f10,48(sp)
     6a0:	c490002c 	lwc1	$f16,44(a0)
     6a4:	00a02025 	move	a0,a1
     6a8:	27a5002c 	addiu	a1,sp,44
     6ac:	afb90014 	sw	t9,20(sp)
     6b0:	afb80010 	sw	t8,16(sp)
     6b4:	0c000000 	jal	0 <func_80A1A9A0>
     6b8:	e7b00034 	swc1	$f16,52(sp)
     6bc:	9208037a 	lbu	t0,890(s0)
     6c0:	240528c5 	li	a1,10437
     6c4:	02002025 	move	a0,s0
     6c8:	15000005 	bnez	t0,6e0 <func_80A1AFF0+0x90>
     6cc:	00000000 	nop
     6d0:	0c000000 	jal	0 <func_80A1A9A0>
     6d4:	02002025 	move	a0,s0
     6d8:	10000004 	b	6ec <func_80A1AFF0+0x9c>
     6dc:	8fbf0024 	lw	ra,36(sp)
     6e0:	0c000000 	jal	0 <func_80A1A9A0>
     6e4:	24052817 	li	a1,10263
     6e8:	8fbf0024 	lw	ra,36(sp)
     6ec:	8fb00020 	lw	s0,32(sp)
     6f0:	27bd0038 	addiu	sp,sp,56
     6f4:	03e00008 	jr	ra
     6f8:	00000000 	nop

000006fc <func_80A1B09C>:
     6fc:	c4840028 	lwc1	$f4,40(a0)
     700:	c4860390 	lwc1	$f6,912(a0)
     704:	44800000 	mtc1	zero,$f0
     708:	00001025 	move	v0,zero
     70c:	46062201 	sub.s	$f8,$f4,$f6
     710:	e4a80000 	swc1	$f8,0(a1)
     714:	c48a0060 	lwc1	$f10,96(a0)
     718:	4600503c 	c.lt.s	$f10,$f0
     71c:	00000000 	nop
     720:	4500000b 	bc1f	750 <func_80A1B09C+0x54>
     724:	00000000 	nop
     728:	c4b00000 	lwc1	$f16,0(a1)
     72c:	4600803e 	c.le.s	$f16,$f0
     730:	00000000 	nop
     734:	45000006 	bc1f	750 <func_80A1B09C+0x54>
     738:	00000000 	nop
     73c:	c4920390 	lwc1	$f18,912(a0)
     740:	e4800060 	swc1	$f0,96(a0)
     744:	24020001 	li	v0,1
     748:	03e00008 	jr	ra
     74c:	e4920028 	swc1	$f18,40(a0)
     750:	03e00008 	jr	ra
     754:	00000000 	nop

00000758 <func_80A1B0F8>:
     758:	c4840024 	lwc1	$f4,36(a0)
     75c:	c4a60024 	lwc1	$f6,36(a1)
     760:	c488002c 	lwc1	$f8,44(a0)
     764:	c4aa002c 	lwc1	$f10,44(a1)
     768:	46062001 	sub.s	$f0,$f4,$f6
     76c:	3c014461 	lui	at,0x4461
     770:	c4900028 	lwc1	$f16,40(a0)
     774:	460a4081 	sub.s	$f2,$f8,$f10
     778:	46000102 	mul.s	$f4,$f0,$f0
     77c:	44815000 	mtc1	at,$f10
     780:	c4b20028 	lwc1	$f18,40(a1)
     784:	46021182 	mul.s	$f6,$f2,$f2
     788:	00001025 	move	v0,zero
     78c:	46128301 	sub.s	$f12,$f16,$f18
     790:	46062200 	add.s	$f8,$f4,$f6
     794:	460a403e 	c.le.s	$f8,$f10
     798:	00000000 	nop
     79c:	45000002 	bc1f	7a8 <func_80A1B0F8+0x50>
     7a0:	00000000 	nop
     7a4:	24020001 	li	v0,1
     7a8:	10400008 	beqz	v0,7cc <func_80A1B0F8+0x74>
     7ac:	00000000 	nop
     7b0:	44808000 	mtc1	zero,$f16
     7b4:	00001025 	move	v0,zero
     7b8:	460c803e 	c.le.s	$f16,$f12
     7bc:	00000000 	nop
     7c0:	45000002 	bc1f	7cc <func_80A1B0F8+0x74>
     7c4:	00000000 	nop
     7c8:	24020001 	li	v0,1
     7cc:	03e00008 	jr	ra
     7d0:	00000000 	nop

000007d4 <func_80A1B174>:
     7d4:	8c820370 	lw	v0,880(a0)
     7d8:	3c0f0000 	lui	t7,0x0
     7dc:	25ef0000 	addiu	t7,t7,0
     7e0:	10400003 	beqz	v0,7f0 <func_80A1B174+0x1c>
     7e4:	244effff 	addiu	t6,v0,-1
     7e8:	03e00008 	jr	ra
     7ec:	ac8e0370 	sw	t6,880(a0)
     7f0:	ac8f0374 	sw	t7,884(a0)
     7f4:	03e00008 	jr	ra
     7f8:	00000000 	nop

000007fc <func_80A1B19C>:
     7fc:	27bdffe8 	addiu	sp,sp,-24
     800:	afbf0014 	sw	ra,20(sp)
     804:	8c820370 	lw	v0,880(a0)
     808:	10400003 	beqz	v0,818 <func_80A1B19C+0x1c>
     80c:	244effff 	addiu	t6,v0,-1
     810:	1000001a 	b	87c <func_80A1B19C+0x80>
     814:	ac8e0370 	sw	t6,880(a0)
     818:	908f0378 	lbu	t7,888(a0)
     81c:	3c014270 	lui	at,0x4270
     820:	240b0001 	li	t3,1
     824:	11e00013 	beqz	t7,874 <func_80A1B19C+0x78>
     828:	240c0001 	li	t4,1
     82c:	a0800378 	sb	zero,888(a0)
     830:	44816000 	mtc1	at,$f12
     834:	0c000000 	jal	0 <func_80A1A9A0>
     838:	afa40018 	sw	a0,24(sp)
     83c:	3c0141a0 	lui	at,0x41a0
     840:	44812000 	mtc1	at,$f4
     844:	8fa40018 	lw	a0,24(sp)
     848:	3c0a0000 	lui	t2,0x0
     84c:	46040180 	add.s	$f6,$f0,$f4
     850:	254a0000 	addiu	t2,t2,0
     854:	ac8a0374 	sw	t2,884(a0)
     858:	4600320d 	trunc.w.s	$f8,$f6
     85c:	44194000 	mfc1	t9,$f8
     860:	00000000 	nop
     864:	00194400 	sll	t0,t9,0x10
     868:	00084c03 	sra	t1,t0,0x10
     86c:	10000003 	b	87c <func_80A1B19C+0x80>
     870:	ac890370 	sw	t1,880(a0)
     874:	a08b0378 	sb	t3,888(a0)
     878:	ac8c0370 	sw	t4,880(a0)
     87c:	8fbf0014 	lw	ra,20(sp)
     880:	27bd0018 	addiu	sp,sp,24
     884:	03e00008 	jr	ra
     888:	00000000 	nop

0000088c <func_80A1B22C>:
     88c:	27bdffd8 	addiu	sp,sp,-40
     890:	afbf0024 	sw	ra,36(sp)
     894:	afa40028 	sw	a0,40(sp)
     898:	afa5002c 	sw	a1,44(sp)
     89c:	8498001c 	lh	t8,28(a0)
     8a0:	3c190000 	lui	t9,0x0
     8a4:	3c0e0000 	lui	t6,0x0
     8a8:	0338c821 	addu	t9,t9,t8
     8ac:	93390000 	lbu	t9,0(t9)
     8b0:	91ce0000 	lbu	t6,0(t6)
     8b4:	3c040600 	lui	a0,0x600
     8b8:	55d90018 	bnel	t6,t9,91c <func_80A1B22C+0x90>
     8bc:	8fbf0024 	lw	ra,36(sp)
     8c0:	0c000000 	jal	0 <func_80A1A9A0>
     8c4:	248407bc 	addiu	a0,a0,1980
     8c8:	44822000 	mtc1	v0,$f4
     8cc:	44800000 	mtc1	zero,$f0
     8d0:	8fa40028 	lw	a0,40(sp)
     8d4:	468021a0 	cvt.s.w	$f6,$f4
     8d8:	3c050600 	lui	a1,0x600
     8dc:	24080002 	li	t0,2
     8e0:	44070000 	mfc1	a3,$f0
     8e4:	afa80014 	sw	t0,20(sp)
     8e8:	24a507bc 	addiu	a1,a1,1980
     8ec:	e7a60010 	swc1	$f6,16(sp)
     8f0:	3c063f80 	lui	a2,0x3f80
     8f4:	2484014c 	addiu	a0,a0,332
     8f8:	0c000000 	jal	0 <func_80A1A9A0>
     8fc:	e7a00018 	swc1	$f0,24(sp)
     900:	0c000000 	jal	0 <func_80A1A9A0>
     904:	8fa40028 	lw	a0,40(sp)
     908:	8faa0028 	lw	t2,40(sp)
     90c:	3c090000 	lui	t1,0x0
     910:	25290000 	addiu	t1,t1,0
     914:	ad490354 	sw	t1,852(t2)
     918:	8fbf0024 	lw	ra,36(sp)
     91c:	27bd0028 	addiu	sp,sp,40
     920:	03e00008 	jr	ra
     924:	00000000 	nop

00000928 <func_80A1B2C8>:
     928:	27bdffb8 	addiu	sp,sp,-72
     92c:	afbf0024 	sw	ra,36(sp)
     930:	afb00020 	sw	s0,32(sp)
     934:	f7b40018 	sdc1	$f20,24(sp)
     938:	afa5004c 	sw	a1,76(sp)
     93c:	3c0140c0 	lui	at,0x40c0
     940:	44812000 	mtc1	at,$f4
     944:	c4800164 	lwc1	$f0,356(a0)
     948:	3c020000 	lui	v0,0x0
     94c:	00808025 	move	s0,a0
     950:	46002032 	c.eq.s	$f4,$f0
     954:	24420000 	addiu	v0,v0,0
     958:	45020008 	bc1fl	97c <func_80A1B2C8+0x54>
     95c:	3c014040 	lui	at,0x4040
     960:	904e0000 	lbu	t6,0(v0)
     964:	4480a000 	mtc1	zero,$f20
     968:	25cf0001 	addiu	t7,t6,1
     96c:	a04f0000 	sb	t7,0(v0)
     970:	1000000f 	b	9b0 <func_80A1B2C8+0x88>
     974:	e4940168 	swc1	$f20,360(a0)
     978:	3c014040 	lui	at,0x4040
     97c:	44813000 	mtc1	at,$f6
     980:	00000000 	nop
     984:	46003032 	c.eq.s	$f6,$f0
     988:	00000000 	nop
     98c:	45000008 	bc1f	9b0 <func_80A1B2C8+0x88>
     990:	3c01c120 	lui	at,0xc120
     994:	44814000 	mtc1	at,$f8
     998:	3c01423c 	lui	at,0x423c
     99c:	4480a000 	mtc1	zero,$f20
     9a0:	44815000 	mtc1	at,$f10
     9a4:	e608006c 	swc1	$f8,108(s0)
     9a8:	e6140068 	swc1	$f20,104(s0)
     9ac:	e60a0060 	swc1	$f10,96(s0)
     9b0:	4480a000 	mtc1	zero,$f20
     9b4:	34018000 	li	at,0x8000
     9b8:	00002825 	move	a1,zero
     9bc:	e7b40040 	swc1	$f20,64(sp)
     9c0:	e7b4003c 	swc1	$f20,60(sp)
     9c4:	c6100398 	lwc1	$f16,920(s0)
     9c8:	e7b00044 	swc1	$f16,68(sp)
     9cc:	86180032 	lh	t8,50(s0)
     9d0:	0301c821 	addu	t9,t8,at
     9d4:	44999000 	mtc1	t9,$f18
     9d8:	3c014700 	lui	at,0x4700
     9dc:	44813000 	mtc1	at,$f6
     9e0:	46809120 	cvt.s.w	$f4,$f18
     9e4:	3c010000 	lui	at,0x0
     9e8:	c42a0000 	lwc1	$f10,0(at)
     9ec:	46062203 	div.s	$f8,$f4,$f6
     9f0:	460a4302 	mul.s	$f12,$f8,$f10
     9f4:	0c000000 	jal	0 <func_80A1A9A0>
     9f8:	00000000 	nop
     9fc:	27a4003c 	addiu	a0,sp,60
     a00:	0c000000 	jal	0 <func_80A1A9A0>
     a04:	27a50030 	addiu	a1,sp,48
     a08:	c610038c 	lwc1	$f16,908(s0)
     a0c:	c7b20030 	lwc1	$f18,48(sp)
     a10:	3c014040 	lui	at,0x4040
     a14:	c6060394 	lwc1	$f6,916(s0)
     a18:	46128100 	add.s	$f4,$f16,$f18
     a1c:	44819000 	mtc1	at,$f18
     a20:	c6100164 	lwc1	$f16,356(s0)
     a24:	e6040024 	swc1	$f4,36(s0)
     a28:	c7a80038 	lwc1	$f8,56(sp)
     a2c:	4610903e 	c.le.s	$f18,$f16
     a30:	46083280 	add.s	$f10,$f6,$f8
     a34:	45000006 	bc1f	a50 <func_80A1B2C8+0x128>
     a38:	e60a002c 	swc1	$f10,44(s0)
     a3c:	4405a000 	mfc1	a1,$f20
     a40:	26040398 	addiu	a0,s0,920
     a44:	3c063f80 	lui	a2,0x3f80
     a48:	0c000000 	jal	0 <func_80A1A9A0>
     a4c:	3c074120 	lui	a3,0x4120
     a50:	02002025 	move	a0,s0
     a54:	0c000000 	jal	0 <func_80A1A9A0>
     a58:	27a50034 	addiu	a1,sp,52
     a5c:	10400005 	beqz	v0,a74 <func_80A1B2C8+0x14c>
     a60:	3c080000 	lui	t0,0x0
     a64:	25080000 	addiu	t0,t0,0
     a68:	e614006c 	swc1	$f20,108(s0)
     a6c:	ae080354 	sw	t0,852(s0)
     a70:	e614039c 	swc1	$f20,924(s0)
     a74:	c6040060 	lwc1	$f4,96(s0)
     a78:	4614203e 	c.le.s	$f4,$f20
     a7c:	00000000 	nop
     a80:	4500000b 	bc1f	ab0 <func_80A1B2C8+0x188>
     a84:	3c014220 	lui	at,0x4220
     a88:	44814000 	mtc1	at,$f8
     a8c:	c7a60034 	lwc1	$f6,52(sp)
     a90:	3c013f80 	lui	at,0x3f80
     a94:	4608303c 	c.lt.s	$f6,$f8
     a98:	00000000 	nop
     a9c:	45020005 	bc1fl	ab4 <func_80A1B2C8+0x18c>
     aa0:	8fbf0024 	lw	ra,36(sp)
     aa4:	44815000 	mtc1	at,$f10
     aa8:	00000000 	nop
     aac:	e60a0168 	swc1	$f10,360(s0)
     ab0:	8fbf0024 	lw	ra,36(sp)
     ab4:	d7b40018 	ldc1	$f20,24(sp)
     ab8:	8fb00020 	lw	s0,32(sp)
     abc:	03e00008 	jr	ra
     ac0:	27bd0048 	addiu	sp,sp,72

00000ac4 <func_80A1B464>:
     ac4:	27bdffd0 	addiu	sp,sp,-48
     ac8:	afb00028 	sw	s0,40(sp)
     acc:	00808025 	move	s0,a0
     ad0:	afbf002c 	sw	ra,44(sp)
     ad4:	afa50034 	sw	a1,52(sp)
     ad8:	8605008a 	lh	a1,138(s0)
     adc:	240e0064 	li	t6,100
     ae0:	afae0010 	sw	t6,16(sp)
     ae4:	248400b6 	addiu	a0,a0,182
     ae8:	24060002 	li	a2,2
     aec:	0c000000 	jal	0 <func_80A1A9A0>
     af0:	24072710 	li	a3,10000
     af4:	860f00b6 	lh	t7,182(s0)
     af8:	1440001d 	bnez	v0,b70 <func_80A1B464+0xac>
     afc:	a60f0032 	sh	t7,50(s0)
     b00:	c604015c 	lwc1	$f4,348(s0)
     b04:	c6060164 	lwc1	$f6,356(s0)
     b08:	3c020000 	lui	v0,0x0
     b0c:	3c080000 	lui	t0,0x0
     b10:	46062032 	c.eq.s	$f4,$f6
     b14:	24420000 	addiu	v0,v0,0
     b18:	25080000 	addiu	t0,t0,0
     b1c:	45020015 	bc1fl	b74 <func_80A1B464+0xb0>
     b20:	8fbf002c 	lw	ra,44(sp)
     b24:	90580000 	lbu	t8,0(v0)
     b28:	3c040600 	lui	a0,0x600
     b2c:	24841534 	addiu	a0,a0,5428
     b30:	27190001 	addiu	t9,t8,1
     b34:	a0590000 	sb	t9,0(v0)
     b38:	0c000000 	jal	0 <func_80A1A9A0>
     b3c:	ae080354 	sw	t0,852(s0)
     b40:	44824000 	mtc1	v0,$f8
     b44:	44800000 	mtc1	zero,$f0
     b48:	3c050600 	lui	a1,0x600
     b4c:	468042a0 	cvt.s.w	$f10,$f8
     b50:	44070000 	mfc1	a3,$f0
     b54:	24a51534 	addiu	a1,a1,5428
     b58:	2604014c 	addiu	a0,s0,332
     b5c:	3c063f80 	lui	a2,0x3f80
     b60:	afa00014 	sw	zero,20(sp)
     b64:	e7aa0010 	swc1	$f10,16(sp)
     b68:	0c000000 	jal	0 <func_80A1A9A0>
     b6c:	e7a00018 	swc1	$f0,24(sp)
     b70:	8fbf002c 	lw	ra,44(sp)
     b74:	8fb00028 	lw	s0,40(sp)
     b78:	27bd0030 	addiu	sp,sp,48
     b7c:	03e00008 	jr	ra
     b80:	00000000 	nop

00000b84 <func_80A1B524>:
     b84:	3c0e0000 	lui	t6,0x0
     b88:	91ce0000 	lbu	t6,0(t6)
     b8c:	27bdffd0 	addiu	sp,sp,-48
     b90:	afb00028 	sw	s0,40(sp)
     b94:	2402000c 	li	v0,12
     b98:	00808025 	move	s0,a0
     b9c:	afbf002c 	sw	ra,44(sp)
     ba0:	144e0022 	bne	v0,t6,c2c <func_80A1B524+0xa8>
     ba4:	afa50034 	sw	a1,52(sp)
     ba8:	848f001c 	lh	t7,28(a0)
     bac:	3c010000 	lui	at,0x0
     bb0:	01e20019 	multu	t7,v0
     bb4:	0000c012 	mflo	t8
     bb8:	00380821 	addu	at,at,t8
     bbc:	c4240000 	lwc1	$f4,0(at)
     bc0:	3c010000 	lui	at,0x0
     bc4:	c4260000 	lwc1	$f6,0(at)
     bc8:	46062202 	mul.s	$f8,$f4,$f6
     bcc:	4600428d 	trunc.w.s	$f10,$f8
     bd0:	44085000 	mfc1	t0,$f10
     bd4:	00000000 	nop
     bd8:	a4880032 	sh	t0,50(a0)
     bdc:	3c040600 	lui	a0,0x600
     be0:	0c000000 	jal	0 <func_80A1A9A0>
     be4:	248407bc 	addiu	a0,a0,1980
     be8:	44828000 	mtc1	v0,$f16
     bec:	44800000 	mtc1	zero,$f0
     bf0:	3c050600 	lui	a1,0x600
     bf4:	468084a0 	cvt.s.w	$f18,$f16
     bf8:	24090002 	li	t1,2
     bfc:	44070000 	mfc1	a3,$f0
     c00:	afa90014 	sw	t1,20(sp)
     c04:	24a507bc 	addiu	a1,a1,1980
     c08:	2604014c 	addiu	a0,s0,332
     c0c:	e7b20010 	swc1	$f18,16(sp)
     c10:	3c063f80 	lui	a2,0x3f80
     c14:	0c000000 	jal	0 <func_80A1A9A0>
     c18:	e7a00018 	swc1	$f0,24(sp)
     c1c:	3c0a0000 	lui	t2,0x0
     c20:	254a0000 	addiu	t2,t2,0
     c24:	10000017 	b	c84 <func_80A1B524+0x100>
     c28:	ae0a0354 	sw	t2,852(s0)
     c2c:	920b0379 	lbu	t3,889(s0)
     c30:	3c040600 	lui	a0,0x600
     c34:	51600014 	beqzl	t3,c88 <func_80A1B524+0x104>
     c38:	8fbf002c 	lw	ra,44(sp)
     c3c:	0c000000 	jal	0 <func_80A1A9A0>
     c40:	248407bc 	addiu	a0,a0,1980
     c44:	44822000 	mtc1	v0,$f4
     c48:	44800000 	mtc1	zero,$f0
     c4c:	3c050600 	lui	a1,0x600
     c50:	468021a0 	cvt.s.w	$f6,$f4
     c54:	240c0002 	li	t4,2
     c58:	44070000 	mfc1	a3,$f0
     c5c:	afac0014 	sw	t4,20(sp)
     c60:	24a507bc 	addiu	a1,a1,1980
     c64:	2604014c 	addiu	a0,s0,332
     c68:	e7a60010 	swc1	$f6,16(sp)
     c6c:	3c063f80 	lui	a2,0x3f80
     c70:	0c000000 	jal	0 <func_80A1A9A0>
     c74:	e7a00018 	swc1	$f0,24(sp)
     c78:	3c0d0000 	lui	t5,0x0
     c7c:	25ad0000 	addiu	t5,t5,0
     c80:	ae0d0354 	sw	t5,852(s0)
     c84:	8fbf002c 	lw	ra,44(sp)
     c88:	8fb00028 	lw	s0,40(sp)
     c8c:	27bd0030 	addiu	sp,sp,48
     c90:	03e00008 	jr	ra
     c94:	00000000 	nop

00000c98 <func_80A1B638>:
     c98:	27bdffc0 	addiu	sp,sp,-64
     c9c:	afbf002c 	sw	ra,44(sp)
     ca0:	afb00028 	sw	s0,40(sp)
     ca4:	afa50044 	sw	a1,68(sp)
     ca8:	3c0140c0 	lui	at,0x40c0
     cac:	44812000 	mtc1	at,$f4
     cb0:	c4800164 	lwc1	$f0,356(a0)
     cb4:	00808025 	move	s0,a0
     cb8:	3c014040 	lui	at,0x4040
     cbc:	46002032 	c.eq.s	$f4,$f0
     cc0:	00000000 	nop
     cc4:	45020005 	bc1fl	cdc <func_80A1B638+0x44>
     cc8:	44814000 	mtc1	at,$f8
     ccc:	44803000 	mtc1	zero,$f6
     cd0:	10000012 	b	d1c <func_80A1B638+0x84>
     cd4:	e4860168 	swc1	$f6,360(a0)
     cd8:	44814000 	mtc1	at,$f8
     cdc:	3c01c120 	lui	at,0xc120
     ce0:	46004032 	c.eq.s	$f8,$f0
     ce4:	00000000 	nop
     ce8:	4502000d 	bc1fl	d20 <func_80A1B638+0x88>
     cec:	02002025 	move	a0,s0
     cf0:	44815000 	mtc1	at,$f10
     cf4:	920e0383 	lbu	t6,899(s0)
     cf8:	3c0141c8 	lui	at,0x41c8
     cfc:	44818000 	mtc1	at,$f16
     d00:	e60a006c 	swc1	$f10,108(s0)
     d04:	11c00005 	beqz	t6,d1c <func_80A1B638+0x84>
     d08:	e6100060 	swc1	$f16,96(s0)
     d0c:	a2000383 	sb	zero,899(s0)
     d10:	02002025 	move	a0,s0
     d14:	0c000000 	jal	0 <func_80A1A9A0>
     d18:	24053826 	li	a1,14374
     d1c:	02002025 	move	a0,s0
     d20:	0c000000 	jal	0 <func_80A1A9A0>
     d24:	27a5003c 	addiu	a1,sp,60
     d28:	44800000 	mtc1	zero,$f0
     d2c:	10400015 	beqz	v0,d84 <func_80A1B638+0xec>
     d30:	3c040600 	lui	a0,0x600
     d34:	a2000379 	sb	zero,889(s0)
     d38:	e600006c 	swc1	$f0,108(s0)
     d3c:	0c000000 	jal	0 <func_80A1A9A0>
     d40:	248411c0 	addiu	a0,a0,4544
     d44:	44829000 	mtc1	v0,$f18
     d48:	44800000 	mtc1	zero,$f0
     d4c:	3c050600 	lui	a1,0x600
     d50:	46809120 	cvt.s.w	$f4,$f18
     d54:	44070000 	mfc1	a3,$f0
     d58:	24a511c0 	addiu	a1,a1,4544
     d5c:	2604014c 	addiu	a0,s0,332
     d60:	3c063f80 	lui	a2,0x3f80
     d64:	afa00014 	sw	zero,20(sp)
     d68:	e7a40010 	swc1	$f4,16(sp)
     d6c:	0c000000 	jal	0 <func_80A1A9A0>
     d70:	e7a00018 	swc1	$f0,24(sp)
     d74:	3c0f0000 	lui	t7,0x0
     d78:	25ef0000 	addiu	t7,t7,0
     d7c:	10000011 	b	dc4 <func_80A1B638+0x12c>
     d80:	ae0f0354 	sw	t7,852(s0)
     d84:	c6060060 	lwc1	$f6,96(s0)
     d88:	c7a8003c 	lwc1	$f8,60(sp)
     d8c:	3c014220 	lui	at,0x4220
     d90:	4600303e 	c.le.s	$f6,$f0
     d94:	00000000 	nop
     d98:	4502000b 	bc1fl	dc8 <func_80A1B638+0x130>
     d9c:	8fbf002c 	lw	ra,44(sp)
     da0:	44815000 	mtc1	at,$f10
     da4:	3c013f80 	lui	at,0x3f80
     da8:	460a403c 	c.lt.s	$f8,$f10
     dac:	00000000 	nop
     db0:	45020005 	bc1fl	dc8 <func_80A1B638+0x130>
     db4:	8fbf002c 	lw	ra,44(sp)
     db8:	44818000 	mtc1	at,$f16
     dbc:	00000000 	nop
     dc0:	e6100168 	swc1	$f16,360(s0)
     dc4:	8fbf002c 	lw	ra,44(sp)
     dc8:	8fb00028 	lw	s0,40(sp)
     dcc:	27bd0040 	addiu	sp,sp,64
     dd0:	03e00008 	jr	ra
     dd4:	00000000 	nop

00000dd8 <func_80A1B778>:
     dd8:	27bdffc8 	addiu	sp,sp,-56
     ddc:	afbf002c 	sw	ra,44(sp)
     de0:	afb00028 	sw	s0,40(sp)
     de4:	afa5003c 	sw	a1,60(sp)
     de8:	848e001c 	lh	t6,28(a0)
     dec:	3c010000 	lui	at,0x0
     df0:	c4860390 	lwc1	$f6,912(a0)
     df4:	000e7880 	sll	t7,t6,0x2
     df8:	01ee7823 	subu	t7,t7,t6
     dfc:	000f7880 	sll	t7,t7,0x2
     e00:	002f0821 	addu	at,at,t7
     e04:	c4240000 	lwc1	$f4,0(at)
     e08:	00808025 	move	s0,a0
     e0c:	24180064 	li	t8,100
     e10:	46062200 	add.s	$f8,$f4,$f6
     e14:	248400b6 	addiu	a0,a0,182
     e18:	24060002 	li	a2,2
     e1c:	24072710 	li	a3,10000
     e20:	e7a80034 	swc1	$f8,52(sp)
     e24:	86050032 	lh	a1,50(s0)
     e28:	0c000000 	jal	0 <func_80A1A9A0>
     e2c:	afb80010 	sw	t8,16(sp)
     e30:	3c0140c0 	lui	at,0x40c0
     e34:	44811000 	mtc1	at,$f2
     e38:	c6000164 	lwc1	$f0,356(s0)
     e3c:	3c014040 	lui	at,0x4040
     e40:	46001032 	c.eq.s	$f2,$f0
     e44:	00000000 	nop
     e48:	45020005 	bc1fl	e60 <func_80A1B778+0x88>
     e4c:	44815000 	mtc1	at,$f10
     e50:	44800000 	mtc1	zero,$f0
     e54:	1000000d 	b	e8c <func_80A1B778+0xb4>
     e58:	e6000168 	swc1	$f0,360(s0)
     e5c:	44815000 	mtc1	at,$f10
     e60:	3c01c120 	lui	at,0xc120
     e64:	46005032 	c.eq.s	$f10,$f0
     e68:	00000000 	nop
     e6c:	45020008 	bc1fl	e90 <func_80A1B778+0xb8>
     e70:	44800000 	mtc1	zero,$f0
     e74:	44818000 	mtc1	at,$f16
     e78:	3c0141c8 	lui	at,0x41c8
     e7c:	44819000 	mtc1	at,$f18
     e80:	e6020068 	swc1	$f2,104(s0)
     e84:	e610006c 	swc1	$f16,108(s0)
     e88:	e6120060 	swc1	$f18,96(s0)
     e8c:	44800000 	mtc1	zero,$f0
     e90:	c6040060 	lwc1	$f4,96(s0)
     e94:	c7a80034 	lwc1	$f8,52(sp)
     e98:	4600203c 	c.lt.s	$f4,$f0
     e9c:	00000000 	nop
     ea0:	4502001f 	bc1fl	f20 <func_80A1B778+0x148>
     ea4:	8fbf002c 	lw	ra,44(sp)
     ea8:	c6060028 	lwc1	$f6,40(s0)
     eac:	3c040600 	lui	a0,0x600
     eb0:	4608303c 	c.lt.s	$f6,$f8
     eb4:	00000000 	nop
     eb8:	45020019 	bc1fl	f20 <func_80A1B778+0x148>
     ebc:	8fbf002c 	lw	ra,44(sp)
     ec0:	0c000000 	jal	0 <func_80A1A9A0>
     ec4:	24841534 	addiu	a0,a0,5428
     ec8:	44825000 	mtc1	v0,$f10
     ecc:	44800000 	mtc1	zero,$f0
     ed0:	3c050600 	lui	a1,0x600
     ed4:	46805420 	cvt.s.w	$f16,$f10
     ed8:	44070000 	mfc1	a3,$f0
     edc:	24a51534 	addiu	a1,a1,5428
     ee0:	2604014c 	addiu	a0,s0,332
     ee4:	3c063f80 	lui	a2,0x3f80
     ee8:	afa00014 	sw	zero,20(sp)
     eec:	e7b00010 	swc1	$f16,16(sp)
     ef0:	0c000000 	jal	0 <func_80A1A9A0>
     ef4:	e7a00018 	swc1	$f0,24(sp)
     ef8:	3c190000 	lui	t9,0x0
     efc:	27390000 	addiu	t9,t9,0
     f00:	ae190354 	sw	t9,852(s0)
     f04:	0c000000 	jal	0 <func_80A1A9A0>
     f08:	02002025 	move	a0,s0
     f0c:	24080001 	li	t0,1
     f10:	a208037c 	sb	t0,892(s0)
     f14:	0c000000 	jal	0 <func_80A1A9A0>
     f18:	02002025 	move	a0,s0
     f1c:	8fbf002c 	lw	ra,44(sp)
     f20:	8fb00028 	lw	s0,40(sp)
     f24:	27bd0038 	addiu	sp,sp,56
     f28:	03e00008 	jr	ra
     f2c:	00000000 	nop

00000f30 <func_80A1B8D0>:
     f30:	27bdffe0 	addiu	sp,sp,-32
     f34:	afbf001c 	sw	ra,28(sp)
     f38:	afb00018 	sw	s0,24(sp)
     f3c:	afa50024 	sw	a1,36(sp)
     f40:	9082037f 	lbu	v0,895(a0)
     f44:	00808025 	move	s0,a0
     f48:	260403a0 	addiu	a0,s0,928
     f4c:	10400006 	beqz	v0,f68 <func_80A1B8D0+0x38>
     f50:	3c050000 	lui	a1,0x0
     f54:	24010001 	li	at,1
     f58:	1041001d 	beq	v0,at,fd0 <func_80A1B8D0+0xa0>
     f5c:	260403a0 	addiu	a0,s0,928
     f60:	10000031 	b	1028 <func_80A1B8D0+0xf8>
     f64:	8fbf001c 	lw	ra,28(sp)
     f68:	920e037e 	lbu	t6,894(s0)
     f6c:	3c064000 	lui	a2,0x4000
     f70:	3c0741c8 	lui	a3,0x41c8
     f74:	000e7880 	sll	t7,t6,0x2
     f78:	00af2821 	addu	a1,a1,t7
     f7c:	0c000000 	jal	0 <func_80A1A9A0>
     f80:	8ca50000 	lw	a1,0(a1)
     f84:	9202037e 	lbu	v0,894(s0)
     f88:	3c010000 	lui	at,0x0
     f8c:	c60403a0 	lwc1	$f4,928(s0)
     f90:	0002c080 	sll	t8,v0,0x2
     f94:	00380821 	addu	at,at,t8
     f98:	c4200000 	lwc1	$f0,0(at)
     f9c:	28410003 	slti	at,v0,3
     fa0:	4604003e 	c.le.s	$f0,$f4
     fa4:	00000000 	nop
     fa8:	4502001f 	bc1fl	1028 <func_80A1B8D0+0xf8>
     fac:	8fbf001c 	lw	ra,28(sp)
     fb0:	10200004 	beqz	at,fc4 <func_80A1B8D0+0x94>
     fb4:	e60003a0 	swc1	$f0,928(s0)
     fb8:	24190001 	li	t9,1
     fbc:	10000019 	b	1024 <func_80A1B8D0+0xf4>
     fc0:	a219037f 	sb	t9,895(s0)
     fc4:	a2000379 	sb	zero,889(s0)
     fc8:	10000016 	b	1024 <func_80A1B8D0+0xf4>
     fcc:	a200037d 	sb	zero,893(s0)
     fd0:	3c054316 	lui	a1,0x4316
     fd4:	3c064000 	lui	a2,0x4000
     fd8:	0c000000 	jal	0 <func_80A1A9A0>
     fdc:	3c0741c8 	lui	a3,0x41c8
     fe0:	3c014316 	lui	at,0x4316
     fe4:	44810000 	mtc1	at,$f0
     fe8:	c60603a0 	lwc1	$f6,928(s0)
     fec:	4600303e 	c.le.s	$f6,$f0
     ff0:	00000000 	nop
     ff4:	4502000c 	bc1fl	1028 <func_80A1B8D0+0xf8>
     ff8:	8fbf001c 	lw	ra,28(sp)
     ffc:	9208037e 	lbu	t0,894(s0)
    1000:	e60003a0 	swc1	$f0,928(s0)
    1004:	240b0003 	li	t3,3
    1008:	25090001 	addiu	t1,t0,1
    100c:	312a00ff 	andi	t2,t1,0xff
    1010:	29410004 	slti	at,t2,4
    1014:	14200002 	bnez	at,1020 <func_80A1B8D0+0xf0>
    1018:	a209037e 	sb	t1,894(s0)
    101c:	a20b037e 	sb	t3,894(s0)
    1020:	a200037f 	sb	zero,895(s0)
    1024:	8fbf001c 	lw	ra,28(sp)
    1028:	8fb00018 	lw	s0,24(sp)
    102c:	27bd0020 	addiu	sp,sp,32
    1030:	03e00008 	jr	ra
    1034:	00000000 	nop

00001038 <func_80A1B9D8>:
    1038:	27bdffc0 	addiu	sp,sp,-64
    103c:	afbf001c 	sw	ra,28(sp)
    1040:	afb00018 	sw	s0,24(sp)
    1044:	afa50044 	sw	a1,68(sp)
    1048:	848e00b6 	lh	t6,182(a0)
    104c:	00808025 	move	s0,a0
    1050:	00003825 	move	a3,zero
    1054:	a7ae003e 	sh	t6,62(sp)
    1058:	848f03aa 	lh	t7,938(a0)
    105c:	8c86002c 	lw	a2,44(a0)
    1060:	c48e0028 	lwc1	$f14,40(a0)
    1064:	25f81000 	addiu	t8,t7,4096
    1068:	a49803aa 	sh	t8,938(a0)
    106c:	0c000000 	jal	0 <func_80A1A9A0>
    1070:	c48c0024 	lwc1	$f12,36(a0)
    1074:	86040030 	lh	a0,48(s0)
    1078:	86050032 	lh	a1,50(s0)
    107c:	86060034 	lh	a2,52(s0)
    1080:	0c000000 	jal	0 <func_80A1A9A0>
    1084:	24070001 	li	a3,1
    1088:	44800000 	mtc1	zero,$f0
    108c:	3c0141c8 	lui	at,0x41c8
    1090:	44812000 	mtc1	at,$f4
    1094:	27a4002c 	addiu	a0,sp,44
    1098:	27a50020 	addiu	a1,sp,32
    109c:	e7a00030 	swc1	$f0,48(sp)
    10a0:	e7a0002c 	swc1	$f0,44(sp)
    10a4:	0c000000 	jal	0 <func_80A1A9A0>
    10a8:	e7a40034 	swc1	$f4,52(sp)
    10ac:	860403aa 	lh	a0,938(s0)
    10b0:	00042040 	sll	a0,a0,0x1
    10b4:	00042400 	sll	a0,a0,0x10
    10b8:	0c000000 	jal	0 <func_80A1A9A0>
    10bc:	00042403 	sra	a0,a0,0x10
    10c0:	3c0140a0 	lui	at,0x40a0
    10c4:	44813000 	mtc1	at,$f6
    10c8:	87a4003e 	lh	a0,62(sp)
    10cc:	46060202 	mul.s	$f8,$f0,$f6
    10d0:	0c000000 	jal	0 <func_80A1A9A0>
    10d4:	e7a80038 	swc1	$f8,56(sp)
    10d8:	c7aa0038 	lwc1	$f10,56(sp)
    10dc:	c7b20020 	lwc1	$f18,32(sp)
    10e0:	860403aa 	lh	a0,938(s0)
    10e4:	460a0402 	mul.s	$f16,$f0,$f10
    10e8:	46128100 	add.s	$f4,$f16,$f18
    10ec:	0c000000 	jal	0 <func_80A1A9A0>
    10f0:	e60403ac 	swc1	$f4,940(s0)
    10f4:	3c014248 	lui	at,0x4248
    10f8:	44814000 	mtc1	at,$f8
    10fc:	c6060390 	lwc1	$f6,912(s0)
    1100:	46000400 	add.s	$f16,$f0,$f0
    1104:	46083280 	add.s	$f10,$f6,$f8
    1108:	460a8480 	add.s	$f18,$f16,$f10
    110c:	e61203b0 	swc1	$f18,944(s0)
    1110:	0c000000 	jal	0 <func_80A1A9A0>
    1114:	87a4003e 	lh	a0,62(sp)
    1118:	c7a40038 	lwc1	$f4,56(sp)
    111c:	c7a80028 	lwc1	$f8,40(sp)
    1120:	c60c03ac 	lwc1	$f12,940(s0)
    1124:	46040182 	mul.s	$f6,$f0,$f4
    1128:	c60e03b0 	lwc1	$f14,944(s0)
    112c:	00003825 	move	a3,zero
    1130:	46083400 	add.s	$f16,$f6,$f8
    1134:	e61003b4 	swc1	$f16,948(s0)
    1138:	0c000000 	jal	0 <func_80A1A9A0>
    113c:	8e0603b4 	lw	a2,948(s0)
    1140:	86040030 	lh	a0,48(s0)
    1144:	86050032 	lh	a1,50(s0)
    1148:	86060034 	lh	a2,52(s0)
    114c:	0c000000 	jal	0 <func_80A1A9A0>
    1150:	24070001 	li	a3,1
    1154:	3c01c170 	lui	at,0xc170
    1158:	44819000 	mtc1	at,$f18
    115c:	3c0141a0 	lui	at,0x41a0
    1160:	44805000 	mtc1	zero,$f10
    1164:	44812000 	mtc1	at,$f4
    1168:	27a4002c 	addiu	a0,sp,44
    116c:	260503b8 	addiu	a1,s0,952
    1170:	e7b20030 	swc1	$f18,48(sp)
    1174:	e7aa002c 	swc1	$f10,44(sp)
    1178:	0c000000 	jal	0 <func_80A1A9A0>
    117c:	e7a40034 	swc1	$f4,52(sp)
    1180:	8fbf001c 	lw	ra,28(sp)
    1184:	8fb00018 	lw	s0,24(sp)
    1188:	27bd0040 	addiu	sp,sp,64
    118c:	03e00008 	jr	ra
    1190:	00000000 	nop

00001194 <func_80A1BB34>:
    1194:	27bdffe0 	addiu	sp,sp,-32
    1198:	afbf001c 	sw	ra,28(sp)
    119c:	afb10018 	sw	s1,24(sp)
    11a0:	afb00014 	sw	s0,20(sp)
    11a4:	8c8e036c 	lw	t6,876(a0)
    11a8:	00808025 	move	s0,a0
    11ac:	3c010000 	lui	at,0x0
    11b0:	25cf0001 	addiu	t7,t6,1
    11b4:	ac8f036c 	sw	t7,876(a0)
    11b8:	c4260000 	lwc1	$f6,0(at)
    11bc:	c60403a0 	lwc1	$f4,928(s0)
    11c0:	00a08825 	move	s1,a1
    11c4:	46062202 	mul.s	$f8,$f4,$f6
    11c8:	44054000 	mfc1	a1,$f8
    11cc:	0c000000 	jal	0 <func_80A1A9A0>
    11d0:	00000000 	nop
    11d4:	9218037d 	lbu	t8,893(s0)
    11d8:	02202825 	move	a1,s1
    11dc:	02002025 	move	a0,s0
    11e0:	13000005 	beqz	t8,11f8 <func_80A1BB34+0x64>
    11e4:	00000000 	nop
    11e8:	0c000000 	jal	0 <func_80A1A9A0>
    11ec:	02002025 	move	a0,s0
    11f0:	1000001c 	b	1264 <func_80A1BB34+0xd0>
    11f4:	8fbf001c 	lw	ra,28(sp)
    11f8:	0c000000 	jal	0 <func_80A1A9A0>
    11fc:	3c054120 	lui	a1,0x4120
    1200:	8e190374 	lw	t9,884(s0)
    1204:	02002025 	move	a0,s0
    1208:	0320f809 	jalr	t9
    120c:	00000000 	nop
    1210:	8e190354 	lw	t9,852(s0)
    1214:	02002025 	move	a0,s0
    1218:	02202825 	move	a1,s1
    121c:	0320f809 	jalr	t9
    1220:	00000000 	nop
    1224:	02002025 	move	a0,s0
    1228:	0c000000 	jal	0 <func_80A1A9A0>
    122c:	02202825 	move	a1,s1
    1230:	02002025 	move	a0,s0
    1234:	0c000000 	jal	0 <func_80A1A9A0>
    1238:	02202825 	move	a1,s1
    123c:	0c000000 	jal	0 <func_80A1A9A0>
    1240:	2604014c 	addiu	a0,s0,332
    1244:	0c000000 	jal	0 <func_80A1A9A0>
    1248:	260402b0 	addiu	a0,s0,688
    124c:	02002025 	move	a0,s0
    1250:	0c000000 	jal	0 <func_80A1A9A0>
    1254:	02202825 	move	a1,s1
    1258:	0c000000 	jal	0 <func_80A1A9A0>
    125c:	02002025 	move	a0,s0
    1260:	8fbf001c 	lw	ra,28(sp)
    1264:	8fb00014 	lw	s0,20(sp)
    1268:	8fb10018 	lw	s1,24(sp)
    126c:	03e00008 	jr	ra
    1270:	27bd0020 	addiu	sp,sp,32

00001274 <func_80A1BC14>:
    1274:	00057080 	sll	t6,a1,0x2
    1278:	3c020000 	lui	v0,0x0
    127c:	004e1021 	addu	v0,v0,t6
    1280:	8c420000 	lw	v0,0(v0)
    1284:	27bdffe8 	addiu	sp,sp,-24
    1288:	afbf0014 	sw	ra,20(sp)
    128c:	5040001d 	beqzl	v0,1304 <func_80A1BC14+0x90>
    1290:	00001025 	move	v0,zero
    1294:	904f0379 	lbu	t7,889(v0)
    1298:	24090001 	li	t1,1
    129c:	55e00019 	bnezl	t7,1304 <func_80A1BC14+0x90>
    12a0:	00001025 	move	v0,zero
    12a4:	9058037e 	lbu	t8,894(v0)
    12a8:	24010003 	li	at,3
    12ac:	3c030000 	lui	v1,0x0
    12b0:	17010005 	bne	t8,at,12c8 <func_80A1BC14+0x54>
    12b4:	00651821 	addu	v1,v1,a1
    12b8:	3c030000 	lui	v1,0x0
    12bc:	00651821 	addu	v1,v1,a1
    12c0:	10000002 	b	12cc <func_80A1BC14+0x58>
    12c4:	90630000 	lbu	v1,0(v1)
    12c8:	90630000 	lbu	v1,0(v1)
    12cc:	90990382 	lbu	t9,898(a0)
    12d0:	24010006 	li	at,6
    12d4:	244400e4 	addiu	a0,v0,228
    12d8:	17210003 	bne	t9,at,12e8 <func_80A1BC14+0x74>
    12dc:	240528b1 	li	a1,10417
    12e0:	24080001 	li	t0,1
    12e4:	a0480383 	sb	t0,899(v0)
    12e8:	00033600 	sll	a2,v1,0x18
    12ec:	a0490379 	sb	t1,889(v0)
    12f0:	0c000000 	jal	0 <func_80A1A9A0>
    12f4:	00063603 	sra	a2,a2,0x18
    12f8:	10000002 	b	1304 <func_80A1BC14+0x90>
    12fc:	24020001 	li	v0,1
    1300:	00001025 	move	v0,zero
    1304:	8fbf0014 	lw	ra,20(sp)
    1308:	27bd0018 	addiu	sp,sp,24
    130c:	03e00008 	jr	ra
    1310:	00000000 	nop

00001314 <func_80A1BCB4>:
    1314:	27bdffd8 	addiu	sp,sp,-40
    1318:	afbf0024 	sw	ra,36(sp)
    131c:	afb10020 	sw	s1,32(sp)
    1320:	afb0001c 	sw	s0,28(sp)
    1324:	8cb01c44 	lw	s0,7236(a1)
    1328:	00803825 	move	a3,a0
    132c:	3c180001 	lui	t8,0x1
    1330:	8e0e0680 	lw	t6,1664(s0)
    1334:	00a08825 	move	s1,a1
    1338:	0305c021 	addu	t8,t8,a1
    133c:	000e7980 	sll	t7,t6,0x6
    1340:	05e10021 	bgez	t7,13c8 <func_80A1BCB4+0xb4>
    1344:	02002025 	move	a0,s0
    1348:	971804c6 	lhu	t8,1222(t8)
    134c:	24010004 	li	at,4
    1350:	02202025 	move	a0,s1
    1354:	17010004 	bne	t8,at,1368 <func_80A1BCB4+0x54>
    1358:	2406ff9d 	li	a2,-99
    135c:	3c010001 	lui	at,0x1
    1360:	00250821 	addu	at,at,a1
    1364:	a42004c6 	sh	zero,1222(at)
    1368:	2405100e 	li	a1,4110
    136c:	afa00010 	sw	zero,16(sp)
    1370:	0c000000 	jal	0 <func_80A1A9A0>
    1374:	afa70028 	sw	a3,40(sp)
    1378:	8fa70028 	lw	a3,40(sp)
    137c:	3c010001 	lui	at,0x1
    1380:	00310821 	addu	at,at,s1
    1384:	24190037 	li	t9,55
    1388:	a03903dc 	sb	t9,988(at)
    138c:	c4e40024 	lwc1	$f4,36(a3)
    1390:	3c080000 	lui	t0,0x0
    1394:	25080000 	addiu	t0,t0,0
    1398:	e6040024 	swc1	$f4,36(s0)
    139c:	c4e60028 	lwc1	$f6,40(a3)
    13a0:	e6060028 	swc1	$f6,40(s0)
    13a4:	c4e8002c 	lwc1	$f8,44(a3)
    13a8:	e608002c 	swc1	$f8,44(s0)
    13ac:	84e30032 	lh	v1,50(a3)
    13b0:	a60300b6 	sh	v1,182(s0)
    13b4:	a6030032 	sh	v1,50(s0)
    13b8:	a603083c 	sh	v1,2108(s0)
    13bc:	ace00388 	sw	zero,904(a3)
    13c0:	10000007 	b	13e0 <func_80A1BCB4+0xcc>
    13c4:	ace80354 	sw	t0,852(a3)
    13c8:	00e02825 	move	a1,a3
    13cc:	0c000000 	jal	0 <func_80A1A9A0>
    13d0:	afa70028 	sw	a3,40(sp)
    13d4:	10400002 	beqz	v0,13e0 <func_80A1BCB4+0xcc>
    13d8:	8fa70028 	lw	a3,40(sp)
    13dc:	ae0706a8 	sw	a3,1704(s0)
    13e0:	8fbf0024 	lw	ra,36(sp)
    13e4:	8fb0001c 	lw	s0,28(sp)
    13e8:	8fb10020 	lw	s1,32(sp)
    13ec:	03e00008 	jr	ra
    13f0:	27bd0028 	addiu	sp,sp,40

000013f4 <func_80A1BD94>:
    13f4:	3c020001 	lui	v0,0x1
    13f8:	00451021 	addu	v0,v0,a1
    13fc:	904203dc 	lbu	v0,988(v0)
    1400:	2401000c 	li	at,12
    1404:	240e0037 	li	t6,55
    1408:	1441000a 	bne	v0,at,1434 <func_80A1BD94+0x40>
    140c:	240f0001 	li	t7,1
    1410:	3c010001 	lui	at,0x1
    1414:	00250821 	addu	at,at,a1
    1418:	a02e03dc 	sb	t6,988(at)
    141c:	3c010000 	lui	at,0x0
    1420:	3c180000 	lui	t8,0x0
    1424:	a02f0000 	sb	t7,0(at)
    1428:	27180000 	addiu	t8,t8,0
    142c:	03e00008 	jr	ra
    1430:	ac980354 	sw	t8,852(a0)
    1434:	24010037 	li	at,55
    1438:	14410006 	bne	v0,at,1454 <func_80A1BD94+0x60>
    143c:	24190001 	li	t9,1
    1440:	3c010000 	lui	at,0x0
    1444:	3c080000 	lui	t0,0x0
    1448:	a0390000 	sb	t9,0(at)
    144c:	25080000 	addiu	t0,t0,0
    1450:	ac880354 	sw	t0,852(a0)
    1454:	03e00008 	jr	ra
    1458:	00000000 	nop

0000145c <func_80A1BDFC>:
    145c:	3c0e0000 	lui	t6,0x0
    1460:	91ce0000 	lbu	t6,0(t6)
    1464:	27bdffe8 	addiu	sp,sp,-24
    1468:	2401000b 	li	at,11
    146c:	afbf0014 	sw	ra,20(sp)
    1470:	15c1001d 	bne	t6,at,14e8 <func_80A1BDFC+0x8c>
    1474:	00803025 	move	a2,a0
    1478:	3c020000 	lui	v0,0x0
    147c:	94420eee 	lhu	v0,3822(v0)
    1480:	3c0d0000 	lui	t5,0x0
    1484:	25ad0000 	addiu	t5,t5,0
    1488:	304f0002 	andi	t7,v0,0x2
    148c:	11e00014 	beqz	t7,14e0 <func_80A1BDFC+0x84>
    1490:	30580004 	andi	t8,v0,0x4
    1494:	13000012 	beqz	t8,14e0 <func_80A1BDFC+0x84>
    1498:	30590010 	andi	t9,v0,0x10
    149c:	13200010 	beqz	t9,14e0 <func_80A1BDFC+0x84>
    14a0:	30480008 	andi	t0,v0,0x8
    14a4:	1100000e 	beqz	t0,14e0 <func_80A1BDFC+0x84>
    14a8:	30490020 	andi	t1,v0,0x20
    14ac:	1120000c 	beqz	t1,14e0 <func_80A1BDFC+0x84>
    14b0:	304a0040 	andi	t2,v0,0x40
    14b4:	1140000a 	beqz	t2,14e0 <func_80A1BDFC+0x84>
    14b8:	3c0b0000 	lui	t3,0x0
    14bc:	256b0000 	addiu	t3,t3,0
    14c0:	240c0006 	li	t4,6
    14c4:	ac8b0354 	sw	t3,852(a0)
    14c8:	a08c0382 	sb	t4,898(a0)
    14cc:	00a02025 	move	a0,a1
    14d0:	0c000000 	jal	0 <func_80A1A9A0>
    14d4:	240540ab 	li	a1,16555
    14d8:	10000004 	b	14ec <func_80A1BDFC+0x90>
    14dc:	8fbf0014 	lw	ra,20(sp)
    14e0:	a0c00382 	sb	zero,898(a2)
    14e4:	accd0354 	sw	t5,852(a2)
    14e8:	8fbf0014 	lw	ra,20(sp)
    14ec:	27bd0018 	addiu	sp,sp,24
    14f0:	03e00008 	jr	ra
    14f4:	00000000 	nop

000014f8 <func_80A1BE98>:
    14f8:	27bdffe8 	addiu	sp,sp,-24
    14fc:	afa40018 	sw	a0,24(sp)
    1500:	00a03025 	move	a2,a1
    1504:	3c050000 	lui	a1,0x0
    1508:	3c040000 	lui	a0,0x0
    150c:	3c020000 	lui	v0,0x0
    1510:	afbf0014 	sw	ra,20(sp)
    1514:	24420000 	addiu	v0,v0,0
    1518:	24840000 	addiu	a0,a0,0
    151c:	24a50000 	addiu	a1,a1,0
    1520:	8c430004 	lw	v1,4(v0)
    1524:	24420004 	addiu	v0,v0,4
    1528:	5060000e 	beqzl	v1,1564 <func_80A1BE98+0x6c>
    152c:	8fbf0014 	lw	ra,20(sp)
    1530:	8c6e0354 	lw	t6,852(v1)
    1534:	548e000b 	bnel	a0,t6,1564 <func_80A1BE98+0x6c>
    1538:	8fbf0014 	lw	ra,20(sp)
    153c:	5445fff9 	bnel	v0,a1,1524 <func_80A1BE98+0x2c>
    1540:	8c430004 	lw	v1,4(v0)
    1544:	00c02025 	move	a0,a2
    1548:	0c000000 	jal	0 <func_80A1A9A0>
    154c:	24050030 	li	a1,48
    1550:	8fb80018 	lw	t8,24(sp)
    1554:	3c0f0000 	lui	t7,0x0
    1558:	25ef0000 	addiu	t7,t7,0
    155c:	af0f0354 	sw	t7,852(t8)
    1560:	8fbf0014 	lw	ra,20(sp)
    1564:	27bd0018 	addiu	sp,sp,24
    1568:	03e00008 	jr	ra
    156c:	00000000 	nop

00001570 <func_80A1BF10>:
    1570:	27bdffe0 	addiu	sp,sp,-32
    1574:	afbf001c 	sw	ra,28(sp)
    1578:	afb00018 	sw	s0,24(sp)
    157c:	240e0007 	li	t6,7
    1580:	3c010001 	lui	at,0x1
    1584:	a08e0382 	sb	t6,898(a0)
    1588:	00a11021 	addu	v0,a1,at
    158c:	944f04c6 	lhu	t7,1222(v0)
    1590:	00808025 	move	s0,a0
    1594:	25f8ffff 	addiu	t8,t7,-1
    1598:	2f01000a 	sltiu	at,t8,10
    159c:	1020003b 	beqz	at,168c <L80A1C02C>
    15a0:	0018c080 	sll	t8,t8,0x2
    15a4:	3c010000 	lui	at,0x0
    15a8:	00380821 	addu	at,at,t8
    15ac:	8c380000 	lw	t8,0(at)
    15b0:	03000008 	jr	t8
    15b4:	00000000 	nop

000015b8 <L80A1BF58>:
    15b8:	10000034 	b	168c <L80A1C02C>
    15bc:	a2000382 	sb	zero,898(s0)

000015c0 <L80A1BF60>:
    15c0:	24190001 	li	t9,1
    15c4:	10000031 	b	168c <L80A1C02C>
    15c8:	a2190382 	sb	t9,898(s0)

000015cc <L80A1BF6C>:
    15cc:	24080002 	li	t0,2
    15d0:	1000002e 	b	168c <L80A1C02C>
    15d4:	a2080382 	sb	t0,898(s0)

000015d8 <L80A1BF78>:
    15d8:	24090003 	li	t1,3
    15dc:	1000002b 	b	168c <L80A1C02C>
    15e0:	a2090382 	sb	t1,898(s0)

000015e4 <L80A1BF84>:
    15e4:	240a0004 	li	t2,4
    15e8:	10000028 	b	168c <L80A1C02C>
    15ec:	a20a0382 	sb	t2,898(s0)

000015f0 <L80A1BF90>:
    15f0:	240b0005 	li	t3,5
    15f4:	10000025 	b	168c <L80A1C02C>
    15f8:	a20b0382 	sb	t3,898(s0)

000015fc <L80A1BF9C>:
    15fc:	0c000000 	jal	0 <func_80A1A9A0>
    1600:	02002025 	move	a0,s0
    1604:	10000022 	b	1690 <L80A1C02C+0x4>
    1608:	920d0382 	lbu	t5,898(s0)

0000160c <L80A1BFAC>:
    160c:	904c04e8 	lbu	t4,1256(v0)
    1610:	2d810005 	sltiu	at,t4,5
    1614:	1020001d 	beqz	at,168c <L80A1C02C>
    1618:	000c6080 	sll	t4,t4,0x2
    161c:	3c010000 	lui	at,0x0
    1620:	002c0821 	addu	at,at,t4
    1624:	8c2c0000 	lw	t4,0(at)
    1628:	01800008 	jr	t4
    162c:	00000000 	nop

00001630 <L80A1BFD0>:
    1630:	02002025 	move	a0,s0
    1634:	0c000000 	jal	0 <func_80A1A9A0>
    1638:	24050001 	li	a1,1
    163c:	10000014 	b	1690 <L80A1C02C+0x4>
    1640:	920d0382 	lbu	t5,898(s0)

00001644 <L80A1BFE4>:
    1644:	02002025 	move	a0,s0
    1648:	0c000000 	jal	0 <func_80A1A9A0>
    164c:	00002825 	move	a1,zero
    1650:	1000000f 	b	1690 <L80A1C02C+0x4>
    1654:	920d0382 	lbu	t5,898(s0)

00001658 <L80A1BFF8>:
    1658:	02002025 	move	a0,s0
    165c:	0c000000 	jal	0 <func_80A1A9A0>
    1660:	24050002 	li	a1,2
    1664:	1000000a 	b	1690 <L80A1C02C+0x4>
    1668:	920d0382 	lbu	t5,898(s0)

0000166c <L80A1C00C>:
    166c:	02002025 	move	a0,s0
    1670:	0c000000 	jal	0 <func_80A1A9A0>
    1674:	24050003 	li	a1,3
    1678:	10000005 	b	1690 <L80A1C02C+0x4>
    167c:	920d0382 	lbu	t5,898(s0)

00001680 <L80A1C020>:
    1680:	02002025 	move	a0,s0
    1684:	0c000000 	jal	0 <func_80A1A9A0>
    1688:	24050004 	li	a1,4

0000168c <L80A1C02C>:
    168c:	920d0382 	lbu	t5,898(s0)
    1690:	24010007 	li	at,7
    1694:	3c0e0000 	lui	t6,0x0
    1698:	11a10003 	beq	t5,at,16a8 <L80A1C02C+0x1c>
    169c:	25ce0000 	addiu	t6,t6,0
    16a0:	ae00036c 	sw	zero,876(s0)
    16a4:	ae0e0354 	sw	t6,852(s0)
    16a8:	8fbf001c 	lw	ra,28(sp)
    16ac:	8fb00018 	lw	s0,24(sp)
    16b0:	27bd0020 	addiu	sp,sp,32
    16b4:	03e00008 	jr	ra
    16b8:	00000000 	nop

000016bc <func_80A1C05C>:
    16bc:	27bdffe0 	addiu	sp,sp,-32
    16c0:	afbf0014 	sw	ra,20(sp)
    16c4:	8c82036c 	lw	v0,876(a0)
    16c8:	00803825 	move	a3,a0
    16cc:	28410030 	slti	at,v0,48
    16d0:	1020000a 	beqz	at,16fc <func_80A1C05C+0x40>
    16d4:	304e0003 	andi	t6,v0,0x3
    16d8:	15c00040 	bnez	t6,17dc <func_80A1C05C+0x120>
    16dc:	00027883 	sra	t7,v0,0x2
    16e0:	31f80007 	andi	t8,t7,0x7
    16e4:	3c050000 	lui	a1,0x0
    16e8:	00b82821 	addu	a1,a1,t8
    16ec:	0c000000 	jal	0 <func_80A1A9A0>
    16f0:	90a50000 	lbu	a1,0(a1)
    16f4:	1000003a 	b	17e0 <func_80A1C05C+0x124>
    16f8:	8fbf0014 	lw	ra,20(sp)
    16fc:	90e20382 	lbu	v0,898(a3)
    1700:	24010005 	li	at,5
    1704:	3c090000 	lui	t1,0x0
    1708:	14410008 	bne	v0,at,172c <func_80A1C05C+0x70>
    170c:	00024040 	sll	t0,v0,0x1
    1710:	241940aa 	li	t9,16554
    1714:	a4f9010e 	sh	t9,270(a3)
    1718:	00e02025 	move	a0,a3
    171c:	0c000000 	jal	0 <func_80A1A9A0>
    1720:	00003025 	move	a2,zero
    1724:	1000002e 	b	17e0 <func_80A1C05C+0x124>
    1728:	8fbf0014 	lw	ra,20(sp)
    172c:	01284821 	addu	t1,t1,t0
    1730:	3c0a0000 	lui	t2,0x0
    1734:	954a0eee 	lhu	t2,3822(t2)
    1738:	95290000 	lhu	t1,0(t1)
    173c:	00e02025 	move	a0,a3
    1740:	24060001 	li	a2,1
    1744:	012a5824 	and	t3,t1,t2
    1748:	15600022 	bnez	t3,17d4 <func_80A1C05C+0x118>
    174c:	240940a9 	li	t1,16553
    1750:	00026080 	sll	t4,v0,0x2
    1754:	3c0d0000 	lui	t5,0x0
    1758:	01ac6821 	addu	t5,t5,t4
    175c:	8dad0000 	lw	t5,0(t5)
    1760:	3c060000 	lui	a2,0x0
    1764:	24044802 	li	a0,18434
    1768:	000d7080 	sll	t6,t5,0x2
    176c:	00ce3021 	addu	a2,a2,t6
    1770:	8cc60000 	lw	a2,0(a2)
    1774:	afa70020 	sw	a3,32(sp)
    1778:	0c000000 	jal	0 <func_80A1A9A0>
    177c:	afa6001c 	sw	a2,28(sp)
    1780:	8fa6001c 	lw	a2,28(sp)
    1784:	3c0f0000 	lui	t7,0x0
    1788:	25ef0000 	addiu	t7,t7,0
    178c:	8cd80354 	lw	t8,852(a2)
    1790:	8fa70020 	lw	a3,32(sp)
    1794:	24020001 	li	v0,1
    1798:	15f8000c 	bne	t7,t8,17cc <func_80A1C05C+0x110>
    179c:	24080030 	li	t0,48
    17a0:	a0c20379 	sb	v0,889(a2)
    17a4:	a0c2037d 	sb	v0,893(a2)
    17a8:	afa70020 	sw	a3,32(sp)
    17ac:	00c02025 	move	a0,a2
    17b0:	0c000000 	jal	0 <func_80A1A9A0>
    17b4:	240528cc 	li	a1,10444
    17b8:	8fa70020 	lw	a3,32(sp)
    17bc:	3c190000 	lui	t9,0x0
    17c0:	27390000 	addiu	t9,t9,0
    17c4:	10000005 	b	17dc <func_80A1C05C+0x120>
    17c8:	acf90354 	sw	t9,852(a3)
    17cc:	10000003 	b	17dc <func_80A1C05C+0x120>
    17d0:	ace8036c 	sw	t0,876(a3)
    17d4:	0c000000 	jal	0 <func_80A1A9A0>
    17d8:	a4e9010e 	sh	t1,270(a3)
    17dc:	8fbf0014 	lw	ra,20(sp)
    17e0:	27bd0020 	addiu	sp,sp,32
    17e4:	03e00008 	jr	ra
    17e8:	00000000 	nop

000017ec <func_80A1C18C>:
    17ec:	27bdffe8 	addiu	sp,sp,-24
    17f0:	afbf0014 	sw	ra,20(sp)
    17f4:	908e0382 	lbu	t6,898(a0)
    17f8:	3c180000 	lui	t8,0x0
    17fc:	3c020000 	lui	v0,0x0
    1800:	000e7880 	sll	t7,t6,0x2
    1804:	030fc021 	addu	t8,t8,t7
    1808:	8f180000 	lw	t8,0(t8)
    180c:	240940a9 	li	t1,16553
    1810:	24060001 	li	a2,1
    1814:	0018c880 	sll	t9,t8,0x2
    1818:	00591021 	addu	v0,v0,t9
    181c:	8c420000 	lw	v0,0(v0)
    1820:	9048037d 	lbu	t0,893(v0)
    1824:	55000004 	bnezl	t0,1838 <func_80A1C18C+0x4c>
    1828:	8fbf0014 	lw	ra,20(sp)
    182c:	0c000000 	jal	0 <func_80A1A9A0>
    1830:	a489010e 	sh	t1,270(a0)
    1834:	8fbf0014 	lw	ra,20(sp)
    1838:	27bd0018 	addiu	sp,sp,24
    183c:	03e00008 	jr	ra
    1840:	00000000 	nop

00001844 <func_80A1C1E4>:
    1844:	27bdffe8 	addiu	sp,sp,-24
    1848:	afbf0014 	sw	ra,20(sp)
    184c:	afa40018 	sw	a0,24(sp)
    1850:	afa5001c 	sw	a1,28(sp)
    1854:	0c000000 	jal	0 <func_80A1A9A0>
    1858:	24a420d8 	addiu	a0,a1,8408
    185c:	24010005 	li	at,5
    1860:	5441000e 	bnel	v0,at,189c <func_80A1C1E4+0x58>
    1864:	8fbf0014 	lw	ra,20(sp)
    1868:	0c000000 	jal	0 <func_80A1A9A0>
    186c:	8fa4001c 	lw	a0,28(sp)
    1870:	5040000a 	beqzl	v0,189c <func_80A1C1E4+0x58>
    1874:	8fbf0014 	lw	ra,20(sp)
    1878:	0c000000 	jal	0 <func_80A1A9A0>
    187c:	8fa4001c 	lw	a0,28(sp)
    1880:	8fa20018 	lw	v0,24(sp)
    1884:	3c0f0000 	lui	t7,0x0
    1888:	240e0002 	li	t6,2
    188c:	25ef0000 	addiu	t7,t7,0
    1890:	a44e0386 	sh	t6,902(v0)
    1894:	ac4f0354 	sw	t7,852(v0)
    1898:	8fbf0014 	lw	ra,20(sp)
    189c:	27bd0018 	addiu	sp,sp,24
    18a0:	03e00008 	jr	ra
    18a4:	00000000 	nop

000018a8 <func_80A1C248>:
    18a8:	27bdfff8 	addiu	sp,sp,-8
    18ac:	afa40008 	sw	a0,8(sp)
    18b0:	308400ff 	andi	a0,a0,0xff
    18b4:	2c810005 	sltiu	at,a0,5
    18b8:	10200013 	beqz	at,1908 <L80A1C2A0+0x8>
    18bc:	00047080 	sll	t6,a0,0x2
    18c0:	3c010000 	lui	at,0x0
    18c4:	002e0821 	addu	at,at,t6
    18c8:	8c2e0000 	lw	t6,0(at)
    18cc:	01c00008 	jr	t6
    18d0:	00000000 	nop

000018d4 <L80A1C274>:
    18d4:	24020001 	li	v0,1
    18d8:	1000000b 	b	1908 <L80A1C2A0+0x8>
    18dc:	afa20000 	sw	v0,0(sp)

000018e0 <L80A1C280>:
    18e0:	10000009 	b	1908 <L80A1C2A0+0x8>
    18e4:	afa00000 	sw	zero,0(sp)

000018e8 <L80A1C288>:
    18e8:	24020002 	li	v0,2
    18ec:	10000006 	b	1908 <L80A1C2A0+0x8>
    18f0:	afa20000 	sw	v0,0(sp)

000018f4 <L80A1C294>:
    18f4:	24020003 	li	v0,3
    18f8:	10000003 	b	1908 <L80A1C2A0+0x8>
    18fc:	afa20000 	sw	v0,0(sp)

00001900 <L80A1C2A0>:
    1900:	24020004 	li	v0,4
    1904:	afa20000 	sw	v0,0(sp)
    1908:	8fa20000 	lw	v0,0(sp)
    190c:	3c040000 	lui	a0,0x0
    1910:	8c840000 	lw	a0,0(a0)
    1914:	14400004 	bnez	v0,1928 <L80A1C2A0+0x28>
    1918:	24030001 	li	v1,1
    191c:	24060001 	li	a2,1
    1920:	10000003 	b	1930 <L80A1C2A0+0x30>
    1924:	a08603a8 	sb	a2,936(a0)
    1928:	a08003a8 	sb	zero,936(a0)
    192c:	24060001 	li	a2,1
    1930:	3c180000 	lui	t8,0x0
    1934:	27180000 	addiu	t8,t8,0
    1938:	00037880 	sll	t7,v1,0x2
    193c:	01f82821 	addu	a1,t7,t8
    1940:	14620003 	bne	v1,v0,1950 <L80A1C2A0+0x50>
    1944:	8ca40004 	lw	a0,4(a1)
    1948:	10000002 	b	1954 <L80A1C2A0+0x54>
    194c:	a08603a8 	sb	a2,936(a0)
    1950:	a08003a8 	sb	zero,936(a0)
    1954:	24790001 	addiu	t9,v1,1
    1958:	17220003 	bne	t9,v0,1968 <L80A1C2A0+0x68>
    195c:	8ca40008 	lw	a0,8(a1)
    1960:	10000002 	b	196c <L80A1C2A0+0x6c>
    1964:	a08603a8 	sb	a2,936(a0)
    1968:	a08003a8 	sb	zero,936(a0)
    196c:	24680002 	addiu	t0,v1,2
    1970:	15020003 	bne	t0,v0,1980 <L80A1C2A0+0x80>
    1974:	8ca4000c 	lw	a0,12(a1)
    1978:	10000002 	b	1984 <L80A1C2A0+0x84>
    197c:	a08603a8 	sb	a2,936(a0)
    1980:	a08003a8 	sb	zero,936(a0)
    1984:	24690003 	addiu	t1,v1,3
    1988:	15220003 	bne	t1,v0,1998 <L80A1C2A0+0x98>
    198c:	8ca40010 	lw	a0,16(a1)
    1990:	10000002 	b	199c <L80A1C2A0+0x9c>
    1994:	a08603a8 	sb	a2,936(a0)
    1998:	a08003a8 	sb	zero,936(a0)
    199c:	03e00008 	jr	ra
    19a0:	27bd0008 	addiu	sp,sp,8

000019a4 <func_80A1C344>:
    19a4:	3c030000 	lui	v1,0x0
    19a8:	8c630000 	lw	v1,0(v1)
    19ac:	24020001 	li	v0,1
    19b0:	3c0f0000 	lui	t7,0x0
    19b4:	25ef0000 	addiu	t7,t7,0
    19b8:	00027080 	sll	t6,v0,0x2
    19bc:	01cf2021 	addu	a0,t6,t7
    19c0:	a06003a8 	sb	zero,936(v1)
    19c4:	8c830004 	lw	v1,4(a0)
    19c8:	a06003a8 	sb	zero,936(v1)
    19cc:	8c830008 	lw	v1,8(a0)
    19d0:	a06003a8 	sb	zero,936(v1)
    19d4:	8c83000c 	lw	v1,12(a0)
    19d8:	a06003a8 	sb	zero,936(v1)
    19dc:	8c830010 	lw	v1,16(a0)
    19e0:	03e00008 	jr	ra
    19e4:	a06003a8 	sb	zero,936(v1)

000019e8 <func_80A1C388>:
    19e8:	3c0e0000 	lui	t6,0x0
    19ec:	95ce0eee 	lhu	t6,3822(t6)
    19f0:	27bdffe8 	addiu	sp,sp,-24
    19f4:	afa40018 	sw	a0,24(sp)
    19f8:	31cf0001 	andi	t7,t6,0x1
    19fc:	308400ff 	andi	a0,a0,0xff
    1a00:	15e00006 	bnez	t7,1a1c <func_80A1C388+0x34>
    1a04:	afbf0014 	sw	ra,20(sp)
    1a08:	3c180000 	lui	t8,0x0
    1a0c:	8f180000 	lw	t8,0(t8)
    1a10:	0098c821 	addu	t9,a0,t8
    1a14:	1000000e 	b	1a50 <func_80A1C388+0x68>
    1a18:	93220000 	lbu	v0,0(t9)
    1a1c:	3c014270 	lui	at,0x4270
    1a20:	44816000 	mtc1	at,$f12
    1a24:	0c000000 	jal	0 <func_80A1A9A0>
    1a28:	00000000 	nop
    1a2c:	4600010d 	trunc.w.s	$f4,$f0
    1a30:	24010005 	li	at,5
    1a34:	3c020000 	lui	v0,0x0
    1a38:	44092000 	mfc1	t1,$f4
    1a3c:	00000000 	nop
    1a40:	0121001a 	div	zero,t1,at
    1a44:	00005010 	mfhi	t2
    1a48:	004a1021 	addu	v0,v0,t2
    1a4c:	90420000 	lbu	v0,0(v0)
    1a50:	8fbf0014 	lw	ra,20(sp)
    1a54:	27bd0018 	addiu	sp,sp,24
    1a58:	03e00008 	jr	ra
    1a5c:	00000000 	nop

00001a60 <func_80A1C400>:
    1a60:	27bdffe0 	addiu	sp,sp,-32
    1a64:	afbf001c 	sw	ra,28(sp)
    1a68:	afb00018 	sw	s0,24(sp)
    1a6c:	84820386 	lh	v0,902(a0)
    1a70:	00808025 	move	s0,a0
    1a74:	00a03025 	move	a2,a1
    1a78:	10400004 	beqz	v0,1a8c <func_80A1C400+0x2c>
    1a7c:	240f0028 	li	t7,40
    1a80:	244effff 	addiu	t6,v0,-1
    1a84:	1000000e 	b	1ac0 <func_80A1C400+0x60>
    1a88:	a48e0386 	sh	t6,902(a0)
    1a8c:	a60f0386 	sh	t7,902(s0)
    1a90:	a2000380 	sb	zero,896(s0)
    1a94:	00c02025 	move	a0,a2
    1a98:	0c000000 	jal	0 <func_80A1A9A0>
    1a9c:	2405002f 	li	a1,47
    1aa0:	0c000000 	jal	0 <func_80A1A9A0>
    1aa4:	92040380 	lbu	a0,896(s0)
    1aa8:	a2020381 	sb	v0,897(s0)
    1aac:	0c000000 	jal	0 <func_80A1A9A0>
    1ab0:	304400ff 	andi	a0,v0,0xff
    1ab4:	3c180000 	lui	t8,0x0
    1ab8:	27180000 	addiu	t8,t8,0
    1abc:	ae180354 	sw	t8,852(s0)
    1ac0:	8fbf001c 	lw	ra,28(sp)
    1ac4:	8fb00018 	lw	s0,24(sp)
    1ac8:	27bd0020 	addiu	sp,sp,32
    1acc:	03e00008 	jr	ra
    1ad0:	00000000 	nop

00001ad4 <func_80A1C474>:
    1ad4:	27bdffe0 	addiu	sp,sp,-32
    1ad8:	afbf0014 	sw	ra,20(sp)
    1adc:	3c0f0001 	lui	t7,0x1
    1ae0:	01e57821 	addu	t7,t7,a1
    1ae4:	91ef04e8 	lbu	t7,1256(t7)
    1ae8:	908e0381 	lbu	t6,897(a0)
    1aec:	00803025 	move	a2,a0
    1af0:	55cf0020 	bnel	t6,t7,1b74 <func_80A1C474+0xa0>
    1af4:	00001025 	move	v0,zero
    1af8:	90980380 	lbu	t8,896(a0)
    1afc:	2408000d 	li	t0,13
    1b00:	27190001 	addiu	t9,t8,1
    1b04:	a0990380 	sb	t9,896(a0)
    1b08:	332400ff 	andi	a0,t9,0xff
    1b0c:	2881000e 	slti	at,a0,14
    1b10:	14200004 	bnez	at,1b24 <func_80A1C474+0x50>
    1b14:	00801025 	move	v0,a0
    1b18:	a0c80380 	sb	t0,896(a2)
    1b1c:	10000015 	b	1b74 <func_80A1C474+0xa0>
    1b20:	24020001 	li	v0,1
    1b24:	28410004 	slti	at,v0,4
    1b28:	10200003 	beqz	at,1b38 <func_80A1C474+0x64>
    1b2c:	24030004 	li	v1,4
    1b30:	10000001 	b	1b38 <func_80A1C474+0x64>
    1b34:	304300ff 	andi	v1,v0,0xff
    1b38:	a3a3001f 	sb	v1,31(sp)
    1b3c:	0c000000 	jal	0 <func_80A1A9A0>
    1b40:	afa60020 	sw	a2,32(sp)
    1b44:	8fa60020 	lw	a2,32(sp)
    1b48:	304400ff 	andi	a0,v0,0xff
    1b4c:	0c000000 	jal	0 <func_80A1A9A0>
    1b50:	a0c20381 	sb	v0,897(a2)
    1b54:	93a3001f 	lbu	v1,31(sp)
    1b58:	3c0a0000 	lui	t2,0x0
    1b5c:	8fa60020 	lw	a2,32(sp)
    1b60:	00034840 	sll	t1,v1,0x1
    1b64:	01495021 	addu	t2,t2,t1
    1b68:	854a0000 	lh	t2,0(t2)
    1b6c:	a4ca0386 	sh	t2,902(a2)
    1b70:	00001025 	move	v0,zero
    1b74:	8fbf0014 	lw	ra,20(sp)
    1b78:	27bd0020 	addiu	sp,sp,32
    1b7c:	03e00008 	jr	ra
    1b80:	00000000 	nop

00001b84 <func_80A1C524>:
    1b84:	27bdffe8 	addiu	sp,sp,-24
    1b88:	afbf0014 	sw	ra,20(sp)
    1b8c:	afa40018 	sw	a0,24(sp)
    1b90:	0c000000 	jal	0 <func_80A1A9A0>
    1b94:	00a02025 	move	a0,a1
    1b98:	8fae0018 	lw	t6,24(sp)
    1b9c:	24044827 	li	a0,18471
    1ba0:	0c000000 	jal	0 <func_80A1A9A0>
    1ba4:	adc00388 	sw	zero,904(t6)
    1ba8:	0c000000 	jal	0 <func_80A1A9A0>
    1bac:	00002025 	move	a0,zero
    1bb0:	240f000c 	li	t7,12
    1bb4:	3c010000 	lui	at,0x0
    1bb8:	0c000000 	jal	0 <func_80A1A9A0>
    1bbc:	a02f0000 	sb	t7,0(at)
    1bc0:	8fb90018 	lw	t9,24(sp)
    1bc4:	3c180000 	lui	t8,0x0
    1bc8:	27180000 	addiu	t8,t8,0
    1bcc:	af380354 	sw	t8,852(t9)
    1bd0:	8fbf0014 	lw	ra,20(sp)
    1bd4:	27bd0018 	addiu	sp,sp,24
    1bd8:	03e00008 	jr	ra
    1bdc:	00000000 	nop

00001be0 <func_80A1C580>:
    1be0:	27bdffe0 	addiu	sp,sp,-32
    1be4:	afbf001c 	sw	ra,28(sp)
    1be8:	afb00018 	sw	s0,24(sp)
    1bec:	afa50024 	sw	a1,36(sp)
    1bf0:	84820386 	lh	v0,902(a0)
    1bf4:	00808025 	move	s0,a0
    1bf8:	3c030000 	lui	v1,0x0
    1bfc:	14400005 	bnez	v0,1c14 <func_80A1C580+0x34>
    1c00:	244effff 	addiu	t6,v0,-1
    1c04:	0c000000 	jal	0 <func_80A1A9A0>
    1c08:	02002025 	move	a0,s0
    1c0c:	10000056 	b	1d68 <L80A1C6D0+0x38>
    1c10:	8fbf001c 	lw	ra,28(sp)
    1c14:	a60e0386 	sh	t6,902(s0)
    1c18:	8fa70024 	lw	a3,36(sp)
    1c1c:	3c010001 	lui	at,0x1
    1c20:	3c060000 	lui	a2,0x0
    1c24:	00e13821 	addu	a3,a3,at
    1c28:	90e803dc 	lbu	t0,988(a3)
    1c2c:	24010032 	li	at,50
    1c30:	24c60000 	addiu	a2,a2,0
    1c34:	1501001a 	bne	t0,at,1ca0 <func_80A1C580+0xc0>
    1c38:	24630000 	addiu	v1,v1,0
    1c3c:	3c050000 	lui	a1,0x0
    1c40:	00002025 	move	a0,zero
    1c44:	24a50000 	addiu	a1,a1,0
    1c48:	8c620004 	lw	v0,4(v1)
    1c4c:	24630004 	addiu	v1,v1,4
    1c50:	50400005 	beqzl	v0,1c68 <func_80A1C580+0x88>
    1c54:	24840001 	addiu	a0,a0,1
    1c58:	8c4f0354 	lw	t7,852(v0)
    1c5c:	10af0002 	beq	a1,t7,1c68 <func_80A1C580+0x88>
    1c60:	00000000 	nop
    1c64:	24840001 	addiu	a0,a0,1
    1c68:	5466fff8 	bnel	v1,a2,1c4c <func_80A1C580+0x6c>
    1c6c:	8c620004 	lw	v0,4(v1)
    1c70:	1480000b 	bnez	a0,1ca0 <func_80A1C580+0xc0>
    1c74:	8fb80024 	lw	t8,36(sp)
    1c78:	97190020 	lhu	t9,32(t8)
    1c7c:	2401bfff 	li	at,-16385
    1c80:	03214827 	nor	t1,t9,at
    1c84:	55200007 	bnezl	t1,1ca4 <func_80A1C580+0xc4>
    1c88:	24010033 	li	at,51
    1c8c:	02002025 	move	a0,s0
    1c90:	0c000000 	jal	0 <func_80A1A9A0>
    1c94:	03002825 	move	a1,t8
    1c98:	10000033 	b	1d68 <L80A1C6D0+0x38>
    1c9c:	8fbf001c 	lw	ra,28(sp)
    1ca0:	24010033 	li	at,51
    1ca4:	1501002f 	bne	t0,at,1d64 <L80A1C6D0+0x34>
    1ca8:	8fab0024 	lw	t3,36(sp)
    1cac:	3c010001 	lui	at,0x1
    1cb0:	002b0821 	addu	at,at,t3
    1cb4:	240a0031 	li	t2,49
    1cb8:	a02a03dc 	sb	t2,988(at)
    1cbc:	90ec04e8 	lbu	t4,1256(a3)
    1cc0:	2d810005 	sltiu	at,t4,5
    1cc4:	1020001d 	beqz	at,1d3c <L80A1C6D0+0xc>
    1cc8:	000c6080 	sll	t4,t4,0x2
    1ccc:	3c010000 	lui	at,0x0
    1cd0:	002c0821 	addu	at,at,t4
    1cd4:	8c2c0000 	lw	t4,0(at)
    1cd8:	01800008 	jr	t4
    1cdc:	00000000 	nop

00001ce0 <L80A1C680>:
    1ce0:	02002025 	move	a0,s0
    1ce4:	0c000000 	jal	0 <func_80A1A9A0>
    1ce8:	24050001 	li	a1,1
    1cec:	10000014 	b	1d40 <L80A1C6D0+0x10>
    1cf0:	02002025 	move	a0,s0

00001cf4 <L80A1C694>:
    1cf4:	02002025 	move	a0,s0
    1cf8:	0c000000 	jal	0 <func_80A1A9A0>
    1cfc:	00002825 	move	a1,zero
    1d00:	1000000f 	b	1d40 <L80A1C6D0+0x10>
    1d04:	02002025 	move	a0,s0

00001d08 <L80A1C6A8>:
    1d08:	02002025 	move	a0,s0
    1d0c:	0c000000 	jal	0 <func_80A1A9A0>
    1d10:	24050002 	li	a1,2
    1d14:	1000000a 	b	1d40 <L80A1C6D0+0x10>
    1d18:	02002025 	move	a0,s0

00001d1c <L80A1C6BC>:
    1d1c:	02002025 	move	a0,s0
    1d20:	0c000000 	jal	0 <func_80A1A9A0>
    1d24:	24050003 	li	a1,3
    1d28:	10000005 	b	1d40 <L80A1C6D0+0x10>
    1d2c:	02002025 	move	a0,s0

00001d30 <L80A1C6D0>:
    1d30:	02002025 	move	a0,s0
    1d34:	0c000000 	jal	0 <func_80A1A9A0>
    1d38:	24050004 	li	a1,4
    1d3c:	02002025 	move	a0,s0
    1d40:	0c000000 	jal	0 <func_80A1A9A0>
    1d44:	8fa50024 	lw	a1,36(sp)
    1d48:	10400006 	beqz	v0,1d64 <L80A1C6D0+0x34>
    1d4c:	240d40ac 	li	t5,16556
    1d50:	a60d010e 	sh	t5,270(s0)
    1d54:	8fa50024 	lw	a1,36(sp)
    1d58:	02002025 	move	a0,s0
    1d5c:	0c000000 	jal	0 <func_80A1A9A0>
    1d60:	00003025 	move	a2,zero
    1d64:	8fbf001c 	lw	ra,28(sp)
    1d68:	8fb00018 	lw	s0,24(sp)
    1d6c:	27bd0020 	addiu	sp,sp,32
    1d70:	03e00008 	jr	ra
    1d74:	00000000 	nop

00001d78 <func_80A1C718>:
    1d78:	27bdffe8 	addiu	sp,sp,-24
    1d7c:	afbf0014 	sw	ra,20(sp)
    1d80:	afa40018 	sw	a0,24(sp)
    1d84:	afa5001c 	sw	a1,28(sp)
    1d88:	0c000000 	jal	0 <func_80A1A9A0>
    1d8c:	afa60020 	sw	a2,32(sp)
    1d90:	93ae0023 	lbu	t6,35(sp)
    1d94:	11c00005 	beqz	t6,1dac <func_80A1C718+0x34>
    1d98:	00000000 	nop
    1d9c:	0c000000 	jal	0 <func_80A1A9A0>
    1da0:	24044807 	li	a0,18439
    1da4:	10000003 	b	1db4 <func_80A1C718+0x3c>
    1da8:	00000000 	nop
    1dac:	0c000000 	jal	0 <func_80A1A9A0>
    1db0:	24044802 	li	a0,18434
    1db4:	0c000000 	jal	0 <func_80A1A9A0>
    1db8:	00002025 	move	a0,zero
    1dbc:	8fb8001c 	lw	t8,28(sp)
    1dc0:	3c010001 	lui	at,0x1
    1dc4:	240f0037 	li	t7,55
    1dc8:	00380821 	addu	at,at,t8
    1dcc:	a02f03dc 	sb	t7,988(at)
    1dd0:	8fa80018 	lw	t0,24(sp)
    1dd4:	3c190000 	lui	t9,0x0
    1dd8:	27390000 	addiu	t9,t9,0
    1ddc:	ad190354 	sw	t9,852(t0)
    1de0:	8fbf0014 	lw	ra,20(sp)
    1de4:	27bd0018 	addiu	sp,sp,24
    1de8:	03e00008 	jr	ra
    1dec:	00000000 	nop

00001df0 <func_80A1C790>:
    1df0:	27bdffe8 	addiu	sp,sp,-24
    1df4:	00803025 	move	a2,a0
    1df8:	afbf0014 	sw	ra,20(sp)
    1dfc:	00a02025 	move	a0,a1
    1e00:	94c5010e 	lhu	a1,270(a2)
    1e04:	0c000000 	jal	0 <func_80A1A9A0>
    1e08:	afa60018 	sw	a2,24(sp)
    1e0c:	8fa60018 	lw	a2,24(sp)
    1e10:	3c0e0000 	lui	t6,0x0
    1e14:	25ce0000 	addiu	t6,t6,0
    1e18:	acce0354 	sw	t6,852(a2)
    1e1c:	8fbf0014 	lw	ra,20(sp)
    1e20:	27bd0018 	addiu	sp,sp,24
    1e24:	03e00008 	jr	ra
    1e28:	00000000 	nop

00001e2c <func_80A1C7CC>:
    1e2c:	27bdffe8 	addiu	sp,sp,-24
    1e30:	afbf0014 	sw	ra,20(sp)
    1e34:	afa40018 	sw	a0,24(sp)
    1e38:	afa5001c 	sw	a1,28(sp)
    1e3c:	0c000000 	jal	0 <func_80A1A9A0>
    1e40:	24a420d8 	addiu	a0,a1,8408
    1e44:	24010005 	li	at,5
    1e48:	5441000e 	bnel	v0,at,1e84 <func_80A1C7CC+0x58>
    1e4c:	8fbf0014 	lw	ra,20(sp)
    1e50:	0c000000 	jal	0 <func_80A1A9A0>
    1e54:	8fa4001c 	lw	a0,28(sp)
    1e58:	10400009 	beqz	v0,1e80 <func_80A1C7CC+0x54>
    1e5c:	8faf0018 	lw	t7,24(sp)
    1e60:	240e0064 	li	t6,100
    1e64:	a5ee0386 	sh	t6,902(t7)
    1e68:	0c000000 	jal	0 <func_80A1A9A0>
    1e6c:	8fa4001c 	lw	a0,28(sp)
    1e70:	8fb90018 	lw	t9,24(sp)
    1e74:	3c180000 	lui	t8,0x0
    1e78:	27180000 	addiu	t8,t8,0
    1e7c:	af380354 	sw	t8,852(t9)
    1e80:	8fbf0014 	lw	ra,20(sp)
    1e84:	27bd0018 	addiu	sp,sp,24
    1e88:	03e00008 	jr	ra
    1e8c:	00000000 	nop

00001e90 <func_80A1C830>:
    1e90:	240e000c 	li	t6,12
    1e94:	3c010000 	lui	at,0x0
    1e98:	afa50004 	sw	a1,4(sp)
    1e9c:	a02e0000 	sb	t6,0(at)
    1ea0:	90820382 	lbu	v0,898(a0)
    1ea4:	3c0f0000 	lui	t7,0x0
    1ea8:	25ef0000 	addiu	t7,t7,0
    1eac:	ac8f0354 	sw	t7,852(a0)
    1eb0:	ac800388 	sw	zero,904(a0)
    1eb4:	04400014 	bltz	v0,1f08 <func_80A1C830+0x78>
    1eb8:	00401825 	move	v1,v0
    1ebc:	28610005 	slti	at,v1,5
    1ec0:	10200011 	beqz	at,1f08 <func_80A1C830+0x78>
    1ec4:	3c060000 	lui	a2,0x0
    1ec8:	0002c040 	sll	t8,v0,0x1
    1ecc:	3c030000 	lui	v1,0x0
    1ed0:	24c60000 	addiu	a2,a2,0
    1ed4:	00781821 	addu	v1,v1,t8
    1ed8:	94630000 	lhu	v1,0(v1)
    1edc:	94c50eee 	lhu	a1,3822(a2)
    1ee0:	24090055 	li	t1,85
    1ee4:	0065c824 	and	t9,v1,a1
    1ee8:	17200004 	bnez	t9,1efc <func_80A1C830+0x6c>
    1eec:	00a34025 	or	t0,a1,v1
    1ef0:	a4c80eee 	sh	t0,3822(a2)
    1ef4:	03e00008 	jr	ra
    1ef8:	ac890388 	sw	t1,904(a0)
    1efc:	240a004d 	li	t2,77
    1f00:	03e00008 	jr	ra
    1f04:	ac8a0388 	sw	t2,904(a0)
    1f08:	24010005 	li	at,5
    1f0c:	14610011 	bne	v1,at,1f54 <func_80A1C830+0xc4>
    1f10:	3c060000 	lui	a2,0x0
    1f14:	00025840 	sll	t3,v0,0x1
    1f18:	3c030000 	lui	v1,0x0
    1f1c:	24c60000 	addiu	a2,a2,0
    1f20:	006b1821 	addu	v1,v1,t3
    1f24:	94630000 	lhu	v1,0(v1)
    1f28:	94c50eee 	lhu	a1,3822(a2)
    1f2c:	240e003e 	li	t6,62
    1f30:	00656024 	and	t4,v1,a1
    1f34:	15800004 	bnez	t4,1f48 <func_80A1C830+0xb8>
    1f38:	00a36825 	or	t5,a1,v1
    1f3c:	a4cd0eee 	sh	t5,3822(a2)
    1f40:	03e00008 	jr	ra
    1f44:	ac8e0388 	sw	t6,904(a0)
    1f48:	240f004d 	li	t7,77
    1f4c:	03e00008 	jr	ra
    1f50:	ac8f0388 	sw	t7,904(a0)
    1f54:	24010006 	li	at,6
    1f58:	14610010 	bne	v1,at,1f9c <func_80A1C830+0x10c>
    1f5c:	3c060000 	lui	a2,0x0
    1f60:	0002c040 	sll	t8,v0,0x1
    1f64:	3c030000 	lui	v1,0x0
    1f68:	24c60000 	addiu	a2,a2,0
    1f6c:	00781821 	addu	v1,v1,t8
    1f70:	94630000 	lhu	v1,0(v1)
    1f74:	94c50eee 	lhu	a1,3822(a2)
    1f78:	2409003e 	li	t1,62
    1f7c:	0065c824 	and	t9,v1,a1
    1f80:	17200004 	bnez	t9,1f94 <func_80A1C830+0x104>
    1f84:	00a34025 	or	t0,a1,v1
    1f88:	a4c80eee 	sh	t0,3822(a2)
    1f8c:	03e00008 	jr	ra
    1f90:	ac890388 	sw	t1,904(a0)
    1f94:	240a0055 	li	t2,85
    1f98:	ac8a0388 	sw	t2,904(a0)
    1f9c:	03e00008 	jr	ra
    1fa0:	00000000 	nop

00001fa4 <func_80A1C944>:
    1fa4:	27bdffe0 	addiu	sp,sp,-32
    1fa8:	afbf001c 	sw	ra,28(sp)
    1fac:	afa50024 	sw	a1,36(sp)
    1fb0:	8c8203a4 	lw	v0,932(a0)
    1fb4:	3c050000 	lui	a1,0x0
    1fb8:	00803025 	move	a2,a0
    1fbc:	10400003 	beqz	v0,1fcc <func_80A1C944+0x28>
    1fc0:	24a50000 	addiu	a1,a1,0
    1fc4:	240e000a 	li	t6,10
    1fc8:	a44e0110 	sh	t6,272(v0)
    1fcc:	3c020000 	lui	v0,0x0
    1fd0:	24420000 	addiu	v0,v0,0
    1fd4:	24040001 	li	a0,1
    1fd8:	8c430004 	lw	v1,4(v0)
    1fdc:	24420004 	addiu	v0,v0,4
    1fe0:	0045082b 	sltu	at,v0,a1
    1fe4:	54600010 	bnezl	v1,2028 <func_80A1C944+0x84>
    1fe8:	906f037c 	lbu	t7,892(v1)
    1fec:	3c040000 	lui	a0,0x0
    1ff0:	0c000000 	jal	0 <func_80A1A9A0>
    1ff4:	24840000 	addiu	a0,a0,0
    1ff8:	3c040000 	lui	a0,0x0
    1ffc:	3c050000 	lui	a1,0x0
    2000:	24a50000 	addiu	a1,a1,0
    2004:	24840000 	addiu	a0,a0,0
    2008:	0c000000 	jal	0 <func_80A1A9A0>
    200c:	24060644 	li	a2,1604
    2010:	3c040000 	lui	a0,0x0
    2014:	0c000000 	jal	0 <func_80A1A9A0>
    2018:	24840000 	addiu	a0,a0,0
    201c:	10000038 	b	2100 <func_80A1C944+0x15c>
    2020:	8fbf001c 	lw	ra,28(sp)
    2024:	906f037c 	lbu	t7,892(v1)
    2028:	548f0035 	bnel	a0,t7,2100 <func_80A1C944+0x15c>
    202c:	8fbf001c 	lw	ra,28(sp)
    2030:	5420ffea 	bnezl	at,1fdc <func_80A1C944+0x38>
    2034:	8c430004 	lw	v1,4(v0)
    2038:	3c020000 	lui	v0,0x0
    203c:	3c040000 	lui	a0,0x0
    2040:	24840000 	addiu	a0,a0,0
    2044:	24420000 	addiu	v0,v0,0
    2048:	8c430004 	lw	v1,4(v0)
    204c:	24420004 	addiu	v0,v0,4
    2050:	1460000f 	bnez	v1,2090 <func_80A1C944+0xec>
    2054:	00000000 	nop
    2058:	3c040000 	lui	a0,0x0
    205c:	0c000000 	jal	0 <func_80A1A9A0>
    2060:	24840000 	addiu	a0,a0,0
    2064:	3c040000 	lui	a0,0x0
    2068:	3c050000 	lui	a1,0x0
    206c:	24a50000 	addiu	a1,a1,0
    2070:	24840000 	addiu	a0,a0,0
    2074:	0c000000 	jal	0 <func_80A1A9A0>
    2078:	24060652 	li	a2,1618
    207c:	3c040000 	lui	a0,0x0
    2080:	0c000000 	jal	0 <func_80A1A9A0>
    2084:	24840000 	addiu	a0,a0,0
    2088:	1000001d 	b	2100 <func_80A1C944+0x15c>
    208c:	8fbf001c 	lw	ra,28(sp)
    2090:	1444ffed 	bne	v0,a0,2048 <func_80A1C944+0xa4>
    2094:	a060037c 	sb	zero,892(v1)
    2098:	8fb90024 	lw	t9,36(sp)
    209c:	3c010001 	lui	at,0x1
    20a0:	24180004 	li	t8,4
    20a4:	00390821 	addu	at,at,t9
    20a8:	a43804c6 	sh	t8,1222(at)
    20ac:	afa60020 	sw	a2,32(sp)
    20b0:	00c02025 	move	a0,a2
    20b4:	0c000000 	jal	0 <func_80A1A9A0>
    20b8:	240528e3 	li	a1,10467
    20bc:	8fa40020 	lw	a0,32(sp)
    20c0:	3c090000 	lui	t1,0x0
    20c4:	3c080000 	lui	t0,0x0
    20c8:	8c860388 	lw	a2,904(a0)
    20cc:	25290000 	addiu	t1,t1,0
    20d0:	3c0741f0 	lui	a3,0x41f0
    20d4:	14c00004 	bnez	a2,20e8 <func_80A1C944+0x144>
    20d8:	3c0142c8 	lui	at,0x42c8
    20dc:	25080000 	addiu	t0,t0,0
    20e0:	10000006 	b	20fc <func_80A1C944+0x158>
    20e4:	ac880354 	sw	t0,852(a0)
    20e8:	44812000 	mtc1	at,$f4
    20ec:	ac890354 	sw	t1,852(a0)
    20f0:	8fa50024 	lw	a1,36(sp)
    20f4:	0c000000 	jal	0 <func_80A1A9A0>
    20f8:	e7a40010 	swc1	$f4,16(sp)
    20fc:	8fbf001c 	lw	ra,28(sp)
    2100:	27bd0020 	addiu	sp,sp,32
    2104:	03e00008 	jr	ra
    2108:	00000000 	nop

0000210c <func_80A1CAAC>:
    210c:	27bdffe0 	addiu	sp,sp,-32
    2110:	afbf001c 	sw	ra,28(sp)
    2114:	afa50024 	sw	a1,36(sp)
    2118:	0c000000 	jal	0 <func_80A1A9A0>
    211c:	afa40020 	sw	a0,32(sp)
    2120:	10400006 	beqz	v0,213c <func_80A1CAAC+0x30>
    2124:	8fa40020 	lw	a0,32(sp)
    2128:	3c0e0000 	lui	t6,0x0
    212c:	25ce0000 	addiu	t6,t6,0
    2130:	ac800118 	sw	zero,280(a0)
    2134:	10000008 	b	2158 <func_80A1CAAC+0x4c>
    2138:	ac8e0354 	sw	t6,852(a0)
    213c:	3c0142c8 	lui	at,0x42c8
    2140:	44812000 	mtc1	at,$f4
    2144:	8c860388 	lw	a2,904(a0)
    2148:	8fa50024 	lw	a1,36(sp)
    214c:	3c0741f0 	lui	a3,0x41f0
    2150:	0c000000 	jal	0 <func_80A1A9A0>
    2154:	e7a40010 	swc1	$f4,16(sp)
    2158:	8fbf001c 	lw	ra,28(sp)
    215c:	27bd0020 	addiu	sp,sp,32
    2160:	03e00008 	jr	ra
    2164:	00000000 	nop

00002168 <func_80A1CB08>:
    2168:	27bdffe8 	addiu	sp,sp,-24
    216c:	afbf0014 	sw	ra,20(sp)
    2170:	afa40018 	sw	a0,24(sp)
    2174:	afa5001c 	sw	a1,28(sp)
    2178:	0c000000 	jal	0 <func_80A1A9A0>
    217c:	24a420d8 	addiu	a0,a1,8408
    2180:	24010006 	li	at,6
    2184:	54410009 	bnel	v0,at,21ac <func_80A1CB08+0x44>
    2188:	8fbf0014 	lw	ra,20(sp)
    218c:	0c000000 	jal	0 <func_80A1A9A0>
    2190:	8fa4001c 	lw	a0,28(sp)
    2194:	10400004 	beqz	v0,21a8 <func_80A1CB08+0x40>
    2198:	8faf0018 	lw	t7,24(sp)
    219c:	3c0e0000 	lui	t6,0x0
    21a0:	25ce0000 	addiu	t6,t6,0
    21a4:	adee0354 	sw	t6,852(t7)
    21a8:	8fbf0014 	lw	ra,20(sp)
    21ac:	27bd0018 	addiu	sp,sp,24
    21b0:	03e00008 	jr	ra
    21b4:	00000000 	nop

000021b8 <func_80A1CB58>:
    21b8:	3c0e0000 	lui	t6,0x0
    21bc:	8dce0000 	lw	t6,0(t6)
    21c0:	27bdffb8 	addiu	sp,sp,-72
    21c4:	afbf0044 	sw	ra,68(sp)
    21c8:	afa5004c 	sw	a1,76(sp)
    21cc:	85cf12d4 	lh	t7,4820(t6)
    21d0:	3c013f80 	lui	at,0x3f80
    21d4:	240800ff 	li	t0,255
    21d8:	11e00018 	beqz	t7,223c <func_80A1CB58+0x84>
    21dc:	240900ff 	li	t1,255
    21e0:	84980032 	lh	t8,50(a0)
    21e4:	c48c0024 	lwc1	$f12,36(a0)
    21e8:	c48e0028 	lwc1	$f14,40(a0)
    21ec:	8c86002c 	lw	a2,44(a0)
    21f0:	84870030 	lh	a3,48(a0)
    21f4:	afb80010 	sw	t8,16(sp)
    21f8:	84990034 	lh	t9,52(a0)
    21fc:	44810000 	mtc1	at,$f0
    2200:	240a0004 	li	t2,4
    2204:	afaa0034 	sw	t2,52(sp)
    2208:	afa90030 	sw	t1,48(sp)
    220c:	afa0002c 	sw	zero,44(sp)
    2210:	afa00028 	sw	zero,40(sp)
    2214:	afa80024 	sw	t0,36(sp)
    2218:	afb90014 	sw	t9,20(sp)
    221c:	e7a00018 	swc1	$f0,24(sp)
    2220:	e7a0001c 	swc1	$f0,28(sp)
    2224:	e7a00020 	swc1	$f0,32(sp)
    2228:	8cac0000 	lw	t4,0(a1)
    222c:	afa40048 	sw	a0,72(sp)
    2230:	0c000000 	jal	0 <func_80A1A9A0>
    2234:	afac0038 	sw	t4,56(sp)
    2238:	8fa40048 	lw	a0,72(sp)
    223c:	8c8d036c 	lw	t5,876(a0)
    2240:	8c990354 	lw	t9,852(a0)
    2244:	25ae0001 	addiu	t6,t5,1
    2248:	ac8e036c 	sw	t6,876(a0)
    224c:	0320f809 	jalr	t9
    2250:	8fa5004c 	lw	a1,76(sp)
    2254:	8fbf0044 	lw	ra,68(sp)
    2258:	27bd0048 	addiu	sp,sp,72
    225c:	03e00008 	jr	ra
    2260:	00000000 	nop

00002264 <func_80A1CC04>:
    2264:	24010007 	li	at,7
    2268:	afa40000 	sw	a0,0(sp)
    226c:	10a10004 	beq	a1,at,2280 <func_80A1CC04+0x1c>
    2270:	afa7000c 	sw	a3,12(sp)
    2274:	24010008 	li	at,8
    2278:	14a10002 	bne	a1,at,2284 <func_80A1CC04+0x20>
    227c:	00000000 	nop
    2280:	acc00000 	sw	zero,0(a2)
    2284:	03e00008 	jr	ra
    2288:	00001025 	move	v0,zero

0000228c <func_80A1CC2C>:
    228c:	27bdffb8 	addiu	sp,sp,-72
    2290:	24010007 	li	at,7
    2294:	afbf001c 	sw	ra,28(sp)
    2298:	afb00018 	sw	s0,24(sp)
    229c:	afa40048 	sw	a0,72(sp)
    22a0:	afa60050 	sw	a2,80(sp)
    22a4:	10a10004 	beq	a1,at,22b8 <func_80A1CC2C+0x2c>
    22a8:	afa70054 	sw	a3,84(sp)
    22ac:	24010008 	li	at,8
    22b0:	54a10030 	bnel	a1,at,2374 <func_80A1CC2C+0xe8>
    22b4:	8fbf001c 	lw	ra,28(sp)
    22b8:	8fae0048 	lw	t6,72(sp)
    22bc:	3c060000 	lui	a2,0x0
    22c0:	24c60000 	addiu	a2,a2,0
    22c4:	8dc50000 	lw	a1,0(t6)
    22c8:	27a40030 	addiu	a0,sp,48
    22cc:	240706c7 	li	a3,1735
    22d0:	0c000000 	jal	0 <func_80A1A9A0>
    22d4:	00a08025 	move	s0,a1
    22d8:	0c000000 	jal	0 <func_80A1A9A0>
    22dc:	00000000 	nop
    22e0:	8fa40048 	lw	a0,72(sp)
    22e4:	3c010001 	lui	at,0x1
    22e8:	34211da0 	ori	at,at,0x1da0
    22ec:	0c000000 	jal	0 <func_80A1A9A0>
    22f0:	00812021 	addu	a0,a0,at
    22f4:	8e0202c0 	lw	v0,704(s0)
    22f8:	3c18da38 	lui	t8,0xda38
    22fc:	37180003 	ori	t8,t8,0x3
    2300:	244f0008 	addiu	t7,v0,8
    2304:	ae0f02c0 	sw	t7,704(s0)
    2308:	ac580000 	sw	t8,0(v0)
    230c:	8fb90048 	lw	t9,72(sp)
    2310:	3c050000 	lui	a1,0x0
    2314:	24a50000 	addiu	a1,a1,0
    2318:	8f240000 	lw	a0,0(t9)
    231c:	240606ca 	li	a2,1738
    2320:	0c000000 	jal	0 <func_80A1A9A0>
    2324:	afa2002c 	sw	v0,44(sp)
    2328:	8fa3002c 	lw	v1,44(sp)
    232c:	3c09de00 	lui	t1,0xde00
    2330:	ac620004 	sw	v0,4(v1)
    2334:	8e0202c0 	lw	v0,704(s0)
    2338:	24480008 	addiu	t0,v0,8
    233c:	ae0802c0 	sw	t0,704(s0)
    2340:	ac490000 	sw	t1,0(v0)
    2344:	8faa0050 	lw	t2,80(sp)
    2348:	8d4b0000 	lw	t3,0(t2)
    234c:	0c000000 	jal	0 <func_80A1A9A0>
    2350:	ac4b0004 	sw	t3,4(v0)
    2354:	8fac0048 	lw	t4,72(sp)
    2358:	3c060000 	lui	a2,0x0
    235c:	24c60000 	addiu	a2,a2,0
    2360:	27a40030 	addiu	a0,sp,48
    2364:	240706cd 	li	a3,1741
    2368:	0c000000 	jal	0 <func_80A1A9A0>
    236c:	8d850000 	lw	a1,0(t4)
    2370:	8fbf001c 	lw	ra,28(sp)
    2374:	8fb00018 	lw	s0,24(sp)
    2378:	27bd0048 	addiu	sp,sp,72
    237c:	03e00008 	jr	ra
    2380:	00000000 	nop

00002384 <func_80A1CD24>:
    2384:	27bdff98 	addiu	sp,sp,-104
    2388:	afbf002c 	sw	ra,44(sp)
    238c:	afb00028 	sw	s0,40(sp)
    2390:	afa5006c 	sw	a1,108(sp)
    2394:	848e001c 	lh	t6,28(a0)
    2398:	00808025 	move	s0,a0
    239c:	3c060000 	lui	a2,0x0
    23a0:	25cfffff 	addiu	t7,t6,-1
    23a4:	a7af005e 	sh	t7,94(sp)
    23a8:	8ca50000 	lw	a1,0(a1)
    23ac:	24c60000 	addiu	a2,a2,0
    23b0:	27a40048 	addiu	a0,sp,72
    23b4:	240706da 	li	a3,1754
    23b8:	0c000000 	jal	0 <func_80A1A9A0>
    23bc:	afa50058 	sw	a1,88(sp)
    23c0:	8fb9006c 	lw	t9,108(sp)
    23c4:	0c000000 	jal	0 <func_80A1A9A0>
    23c8:	8f240000 	lw	a0,0(t9)
    23cc:	920a03a8 	lbu	t2,936(s0)
    23d0:	8fa80058 	lw	t0,88(sp)
    23d4:	3c0ce700 	lui	t4,0xe700
    23d8:	11400003 	beqz	t2,23e8 <func_80A1CD24+0x64>
    23dc:	3c0efb00 	lui	t6,0xfb00
    23e0:	10000002 	b	23ec <func_80A1CD24+0x68>
    23e4:	2409005f 	li	t1,95
    23e8:	2409ffff 	li	t1,-1
    23ec:	8d0202c0 	lw	v0,704(t0)
    23f0:	240fffff 	li	t7,-1
    23f4:	2604035c 	addiu	a0,s0,860
    23f8:	244b0008 	addiu	t3,v0,8
    23fc:	ad0b02c0 	sw	t3,704(t0)
    2400:	ac400004 	sw	zero,4(v0)
    2404:	ac4c0000 	sw	t4,0(v0)
    2408:	8d0202c0 	lw	v0,704(t0)
    240c:	240c00ff 	li	t4,255
    2410:	240b00ff 	li	t3,255
    2414:	244d0008 	addiu	t5,v0,8
    2418:	ad0d02c0 	sw	t5,704(t0)
    241c:	ac4f0004 	sw	t7,4(v0)
    2420:	ac4e0000 	sw	t6,0(v0)
    2424:	c61003c0 	lwc1	$f16,960(s0)
    2428:	c60803bc 	lwc1	$f8,956(s0)
    242c:	c60403b8 	lwc1	$f4,952(s0)
    2430:	4600848d 	trunc.w.s	$f18,$f16
    2434:	240d00ff 	li	t5,255
    2438:	afad0018 	sw	t5,24(sp)
    243c:	4600428d 	trunc.w.s	$f10,$f8
    2440:	44079000 	mfc1	a3,$f18
    2444:	afa80058 	sw	t0,88(sp)
    2448:	4600218d 	trunc.w.s	$f6,$f4
    244c:	44065000 	mfc1	a2,$f10
    2450:	00073c00 	sll	a3,a3,0x10
    2454:	00073c03 	sra	a3,a3,0x10
    2458:	44053000 	mfc1	a1,$f6
    245c:	00063400 	sll	a2,a2,0x10
    2460:	00063403 	sra	a2,a2,0x10
    2464:	00052c00 	sll	a1,a1,0x10
    2468:	00052c03 	sra	a1,a1,0x10
    246c:	afa9001c 	sw	t1,28(sp)
    2470:	afac0014 	sw	t4,20(sp)
    2474:	0c000000 	jal	0 <func_80A1A9A0>
    2478:	afab0010 	sw	t3,16(sp)
    247c:	8fa80058 	lw	t0,88(sp)
    2480:	3c0ffb00 	lui	t7,0xfb00
    2484:	3c0a0000 	lui	t2,0x0
    2488:	8d0202c0 	lw	v0,704(t0)
    248c:	254a0000 	addiu	t2,t2,0
    2490:	3c050000 	lui	a1,0x0
    2494:	244e0008 	addiu	t6,v0,8
    2498:	ad0e02c0 	sw	t6,704(t0)
    249c:	ac4f0000 	sw	t7,0(v0)
    24a0:	87b8005e 	lh	t8,94(sp)
    24a4:	24a50000 	addiu	a1,a1,0
    24a8:	3c070000 	lui	a3,0x0
    24ac:	0018c880 	sll	t9,t8,0x2
    24b0:	032a1821 	addu	v1,t9,t2
    24b4:	906c0002 	lbu	t4,2(v1)
    24b8:	906f0000 	lbu	t7,0(v1)
    24bc:	906b0001 	lbu	t3,1(v1)
    24c0:	000c6a00 	sll	t5,t4,0x8
    24c4:	000fc600 	sll	t8,t7,0x18
    24c8:	01b8c825 	or	t9,t5,t8
    24cc:	000b6400 	sll	t4,t3,0x10
    24d0:	032c7025 	or	t6,t9,t4
    24d4:	35cf00ff 	ori	t7,t6,0xff
    24d8:	ac4f0004 	sw	t7,4(v0)
    24dc:	8d0202c0 	lw	v0,704(t0)
    24e0:	3c18db06 	lui	t8,0xdb06
    24e4:	37180020 	ori	t8,t8,0x20
    24e8:	244d0008 	addiu	t5,v0,8
    24ec:	ad0d02c0 	sw	t5,704(t0)
    24f0:	ac580000 	sw	t8,0(v0)
    24f4:	920a0378 	lbu	t2,888(s0)
    24f8:	24e70000 	addiu	a3,a3,0
    24fc:	3c0600ff 	lui	a2,0xff
    2500:	000a5880 	sll	t3,t2,0x2
    2504:	00abc821 	addu	t9,a1,t3
    2508:	8f240000 	lw	a0,0(t9)
    250c:	34c6ffff 	ori	a2,a2,0xffff
    2510:	3c098000 	lui	t1,0x8000
    2514:	00047100 	sll	t6,a0,0x4
    2518:	000e7f02 	srl	t7,t6,0x1c
    251c:	000f6880 	sll	t5,t7,0x2
    2520:	00edc021 	addu	t8,a3,t5
    2524:	8f0a0000 	lw	t2,0(t8)
    2528:	00866024 	and	t4,a0,a2
    252c:	3c0fdb06 	lui	t7,0xdb06
    2530:	018a5821 	addu	t3,t4,t2
    2534:	0169c821 	addu	t9,t3,t1
    2538:	ac590004 	sw	t9,4(v0)
    253c:	8d0202c0 	lw	v0,704(t0)
    2540:	35ef0024 	ori	t7,t7,0x24
    2544:	244e0008 	addiu	t6,v0,8
    2548:	ad0e02c0 	sw	t6,704(t0)
    254c:	ac4f0000 	sw	t7,0(v0)
    2550:	920d0378 	lbu	t5,888(s0)
    2554:	000dc080 	sll	t8,t5,0x2
    2558:	00b86021 	addu	t4,a1,t8
    255c:	8d840000 	lw	a0,0(t4)
    2560:	00045900 	sll	t3,a0,0x4
    2564:	000bcf02 	srl	t9,t3,0x1c
    2568:	00197080 	sll	t6,t9,0x2
    256c:	00ee7821 	addu	t7,a3,t6
    2570:	8ded0000 	lw	t5,0(t7)
    2574:	00865024 	and	t2,a0,a2
    2578:	3c190000 	lui	t9,0x0
    257c:	014dc021 	addu	t8,t2,t5
    2580:	03096021 	addu	t4,t8,t1
    2584:	ac4c0004 	sw	t4,4(v0)
    2588:	9207014e 	lbu	a3,334(s0)
    258c:	8e06016c 	lw	a2,364(s0)
    2590:	8e050150 	lw	a1,336(s0)
    2594:	3c0b0000 	lui	t3,0x0
    2598:	256b0000 	addiu	t3,t3,0
    259c:	27390000 	addiu	t9,t9,0
    25a0:	afb90014 	sw	t9,20(sp)
    25a4:	afab0010 	sw	t3,16(sp)
    25a8:	afb00018 	sw	s0,24(sp)
    25ac:	0c000000 	jal	0 <func_80A1A9A0>
    25b0:	8fa4006c 	lw	a0,108(sp)
    25b4:	920e03a8 	lbu	t6,936(s0)
    25b8:	00003825 	move	a3,zero
    25bc:	51c00018 	beqzl	t6,2620 <func_80A1CD24+0x29c>
    25c0:	8faf006c 	lw	t7,108(sp)
    25c4:	c60c03ac 	lwc1	$f12,940(s0)
    25c8:	c60e03b0 	lwc1	$f14,944(s0)
    25cc:	0c000000 	jal	0 <func_80A1A9A0>
    25d0:	8e0603b4 	lw	a2,948(s0)
    25d4:	3c010000 	lui	at,0x0
    25d8:	c42c0000 	lwc1	$f12,0(at)
    25dc:	24070001 	li	a3,1
    25e0:	44066000 	mfc1	a2,$f12
    25e4:	0c000000 	jal	0 <func_80A1A9A0>
    25e8:	46006386 	mov.s	$f14,$f12
    25ec:	860400b4 	lh	a0,180(s0)
    25f0:	860500b6 	lh	a1,182(s0)
    25f4:	860600b8 	lh	a2,184(s0)
    25f8:	0c000000 	jal	0 <func_80A1A9A0>
    25fc:	24070001 	li	a3,1
    2600:	8e0502b4 	lw	a1,692(s0)
    2604:	8e0602d0 	lw	a2,720(s0)
    2608:	afa00014 	sw	zero,20(sp)
    260c:	afa00010 	sw	zero,16(sp)
    2610:	8fa4006c 	lw	a0,108(sp)
    2614:	0c000000 	jal	0 <func_80A1A9A0>
    2618:	00003825 	move	a3,zero
    261c:	8faf006c 	lw	t7,108(sp)
    2620:	3c060000 	lui	a2,0x0
    2624:	24c60000 	addiu	a2,a2,0
    2628:	27a40048 	addiu	a0,sp,72
    262c:	24070718 	li	a3,1816
    2630:	0c000000 	jal	0 <func_80A1A9A0>
    2634:	8de50000 	lw	a1,0(t7)
    2638:	8fbf002c 	lw	ra,44(sp)
    263c:	8fb00028 	lw	s0,40(sp)
    2640:	27bd0068 	addiu	sp,sp,104
    2644:	03e00008 	jr	ra
    2648:	00000000 	nop
    264c:	00000000 	nop
