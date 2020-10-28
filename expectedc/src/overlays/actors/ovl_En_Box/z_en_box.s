
build/src/overlays/actors/ovl_En_Box/z_en_box.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBox_SetupAction>:
       0:	03e00008 	jr	ra
       4:	ac8501b4 	sw	a1,436(a0)

00000008 <EnBox_ClipToGround>:
       8:	27bdffc8 	addiu	sp,sp,-56
       c:	afbf001c 	sw	ra,28(sp)
      10:	afa5003c 	sw	a1,60(sp)
      14:	8c8f0024 	lw	t7,36(a0)
      18:	27a20020 	addiu	v0,sp,32
      1c:	3c013f80 	lui	at,0x3f80
      20:	ac4f0000 	sw	t7,0(v0)
      24:	8c8e0028 	lw	t6,40(a0)
      28:	44813000 	mtc1	at,$f6
      2c:	00803825 	move	a3,a0
      30:	ac4e0004 	sw	t6,4(v0)
      34:	8c8f002c 	lw	t7,44(a0)
      38:	27a50030 	addiu	a1,sp,48
      3c:	27a6002c 	addiu	a2,sp,44
      40:	ac4f0008 	sw	t7,8(v0)
      44:	c7a40024 	lwc1	$f4,36(sp)
      48:	8fa4003c 	lw	a0,60(sp)
      4c:	afa70038 	sw	a3,56(sp)
      50:	46062200 	add.s	$f8,$f4,$f6
      54:	afa20010 	sw	v0,16(sp)
      58:	248407c0 	addiu	a0,a0,1984
      5c:	0c000000 	jal	0 <EnBox_SetupAction>
      60:	e7a80024 	swc1	$f8,36(sp)
      64:	3c01c6fa 	lui	at,0xc6fa
      68:	44815000 	mtc1	at,$f10
      6c:	8fa70038 	lw	a3,56(sp)
      70:	460a0032 	c.eq.s	$f0,$f10
      74:	00000000 	nop
      78:	45030003 	bc1tl	88 <EnBox_ClipToGround+0x80>
      7c:	8fbf001c 	lw	ra,28(sp)
      80:	e4e00028 	swc1	$f0,40(a3)
      84:	8fbf001c 	lw	ra,28(sp)
      88:	27bd0038 	addiu	sp,sp,56
      8c:	03e00008 	jr	ra
      90:	00000000 	nop

00000094 <EnBox_Init>:
      94:	3c020000 	lui	v0,0x0
      98:	8c420004 	lw	v0,4(v0)
      9c:	27bdffa8 	addiu	sp,sp,-88
      a0:	afb00024 	sw	s0,36(sp)
      a4:	00808025 	move	s0,a0
      a8:	3c040000 	lui	a0,0x0
      ac:	00027080 	sll	t6,v0,0x2
      b0:	008e2021 	addu	a0,a0,t6
      b4:	44802000 	mtc1	zero,$f4
      b8:	8c840020 	lw	a0,32(a0)
      bc:	afbf002c 	sw	ra,44(sp)
      c0:	afb10028 	sw	s1,40(sp)
      c4:	00a08825 	move	s1,a1
      c8:	afa00048 	sw	zero,72(sp)
      cc:	e7a40044 	swc1	$f4,68(sp)
      d0:	0c000000 	jal	0 <EnBox_SetupAction>
      d4:	afa4004c 	sw	a0,76(sp)
      d8:	44823000 	mtc1	v0,$f6
      dc:	3c050000 	lui	a1,0x0
      e0:	24a50030 	addiu	a1,a1,48
      e4:	46803220 	cvt.s.w	$f8,$f6
      e8:	02002025 	move	a0,s0
      ec:	0c000000 	jal	0 <EnBox_SetupAction>
      f0:	e7a80040 	swc1	$f8,64(sp)
      f4:	02002025 	move	a0,s0
      f8:	0c000000 	jal	0 <EnBox_SetupAction>
      fc:	00002825 	move	a1,zero
     100:	3c040000 	lui	a0,0x0
     104:	24840000 	addiu	a0,a0,0
     108:	0c000000 	jal	0 <EnBox_SetupAction>
     10c:	27a50048 	addiu	a1,sp,72
     110:	26250810 	addiu	a1,s1,2064
     114:	afa50030 	sw	a1,48(sp)
     118:	02202025 	move	a0,s1
     11c:	02003025 	move	a2,s0
     120:	0c000000 	jal	0 <EnBox_SetupAction>
     124:	8fa70048 	lw	a3,72(sp)
     128:	ae02014c 	sw	v0,332(s0)
     12c:	8fa50030 	lw	a1,48(sp)
     130:	02202025 	move	a0,s1
     134:	0c000000 	jal	0 <EnBox_SetupAction>
     138:	00403025 	move	a2,v0
     13c:	860f001c 	lh	t7,28(s0)
     140:	3c01c0b0 	lui	at,0xc0b0
     144:	44815000 	mtc1	at,$f10
     148:	3c01c248 	lui	at,0xc248
     14c:	86080034 	lh	t0,52(s0)
     150:	44818000 	mtc1	at,$f16
     154:	8605001c 	lh	a1,28(s0)
     158:	000fc303 	sra	t8,t7,0xc
     15c:	3319000f 	andi	t9,t8,0xf
     160:	a20001f6 	sb	zero,502(s0)
     164:	a21901f9 	sb	t9,505(s0)
     168:	a20001fa 	sb	zero,506(s0)
     16c:	a20001fb 	sb	zero,507(s0)
     170:	02202025 	move	a0,s1
     174:	e60a006c 	swc1	$f10,108(s0)
     178:	a20801f8 	sb	t0,504(s0)
     17c:	e6100070 	swc1	$f16,112(s0)
     180:	0c000000 	jal	0 <EnBox_SetupAction>
     184:	30a5001f 	andi	a1,a1,0x1f
     188:	1040000e 	beqz	v0,1c4 <EnBox_Init+0x130>
     18c:	240900ff 	li	t1,255
     190:	240a0064 	li	t2,100
     194:	3c050000 	lui	a1,0x0
     198:	a20901f7 	sb	t1,503(s0)
     19c:	a20a01fa 	sb	t2,506(s0)
     1a0:	24a50000 	addiu	a1,a1,0
     1a4:	0c000000 	jal	0 <EnBox_SetupAction>
     1a8:	02002025 	move	a0,s0
     1ac:	920b01f6 	lbu	t3,502(s0)
     1b0:	356c0010 	ori	t4,t3,0x10
     1b4:	a20c01f6 	sb	t4,502(s0)
     1b8:	c7b20040 	lwc1	$f18,64(sp)
     1bc:	10000092 	b	408 <EnBox_Init+0x374>
     1c0:	e7b20044 	swc1	$f18,68(sp)
     1c4:	920201f9 	lbu	v0,505(s0)
     1c8:	24010003 	li	at,3
     1cc:	02202025 	move	a0,s1
     1d0:	10410003 	beq	v0,at,1e0 <EnBox_Init+0x14c>
     1d4:	24010008 	li	at,8
     1d8:	54410021 	bnel	v0,at,260 <EnBox_Init+0x1cc>
     1dc:	920201f9 	lbu	v0,505(s0)
     1e0:	0c000000 	jal	0 <EnBox_SetupAction>
     1e4:	920501f8 	lbu	a1,504(s0)
     1e8:	1440001c 	bnez	v0,25c <EnBox_Init+0x1c8>
     1ec:	02202025 	move	a0,s1
     1f0:	8fa50030 	lw	a1,48(sp)
     1f4:	0c000000 	jal	0 <EnBox_SetupAction>
     1f8:	8e06014c 	lw	a2,332(s0)
     1fc:	0c000000 	jal	0 <EnBox_SetupAction>
     200:	00000000 	nop
     204:	3c013f00 	lui	at,0x3f00
     208:	44812000 	mtc1	at,$f4
     20c:	3c050000 	lui	a1,0x0
     210:	240ffff4 	li	t7,-12
     214:	4604003c 	c.lt.s	$f0,$f4
     218:	24a50000 	addiu	a1,a1,0
     21c:	02002025 	move	a0,s0
     220:	45000004 	bc1f	234 <EnBox_Init+0x1a0>
     224:	00000000 	nop
     228:	920d01f6 	lbu	t5,502(s0)
     22c:	35ae0004 	ori	t6,t5,0x4
     230:	a20e01f6 	sb	t6,502(s0)
     234:	0c000000 	jal	0 <EnBox_SetupAction>
     238:	ae0f01a8 	sw	t7,424(s0)
     23c:	921801f6 	lbu	t8,502(s0)
     240:	8e080004 	lw	t0,4(s0)
     244:	a20001f7 	sb	zero,503(s0)
     248:	37190001 	ori	t9,t8,0x1
     24c:	35090010 	ori	t1,t0,0x10
     250:	a21901f6 	sb	t9,502(s0)
     254:	1000006c 	b	408 <EnBox_Init+0x374>
     258:	ae090004 	sw	t1,4(s0)
     25c:	920201f9 	lbu	v0,505(s0)
     260:	24010001 	li	at,1
     264:	02202025 	move	a0,s1
     268:	10410003 	beq	v0,at,278 <EnBox_Init+0x1e4>
     26c:	24010007 	li	at,7
     270:	5441001a 	bnel	v0,at,2dc <EnBox_Init+0x248>
     274:	920201f9 	lbu	v0,505(s0)
     278:	0c000000 	jal	0 <EnBox_SetupAction>
     27c:	82050003 	lb	a1,3(s0)
     280:	14400015 	bnez	v0,2d8 <EnBox_Init+0x244>
     284:	02002025 	move	a0,s0
     288:	3c050000 	lui	a1,0x0
     28c:	0c000000 	jal	0 <EnBox_SetupAction>
     290:	24a50000 	addiu	a1,a1,0
     294:	02202025 	move	a0,s1
     298:	8fa50030 	lw	a1,48(sp)
     29c:	0c000000 	jal	0 <EnBox_SetupAction>
     2a0:	8e06014c 	lw	a2,332(s0)
     2a4:	3c014248 	lui	at,0x4248
     2a8:	44814000 	mtc1	at,$f8
     2ac:	c606000c 	lwc1	$f6,12(s0)
     2b0:	920a01f6 	lbu	t2,502(s0)
     2b4:	8e0c0004 	lw	t4,4(s0)
     2b8:	46083281 	sub.s	$f10,$f6,$f8
     2bc:	354b0001 	ori	t3,t2,0x1
     2c0:	358d0010 	ori	t5,t4,0x10
     2c4:	a20b01f6 	sb	t3,502(s0)
     2c8:	e60a0028 	swc1	$f10,40(s0)
     2cc:	a20001f7 	sb	zero,503(s0)
     2d0:	1000004d 	b	408 <EnBox_Init+0x374>
     2d4:	ae0d0004 	sw	t5,4(s0)
     2d8:	920201f9 	lbu	v0,505(s0)
     2dc:	24010009 	li	at,9
     2e0:	02002025 	move	a0,s0
     2e4:	10410004 	beq	v0,at,2f8 <EnBox_Init+0x264>
     2e8:	3c050000 	lui	a1,0x0
     2ec:	2401000a 	li	at,10
     2f0:	54410019 	bnel	v0,at,358 <EnBox_Init+0x2c4>
     2f4:	2401000b 	li	at,11
     2f8:	0c000000 	jal	0 <EnBox_SetupAction>
     2fc:	24a50000 	addiu	a1,a1,0
     300:	8e0e0004 	lw	t6,4(s0)
     304:	3c010200 	lui	at,0x200
     308:	02202025 	move	a0,s1
     30c:	01c17825 	or	t7,t6,at
     310:	ae0f0004 	sw	t7,4(s0)
     314:	8fa50030 	lw	a1,48(sp)
     318:	0c000000 	jal	0 <EnBox_SetupAction>
     31c:	8e06014c 	lw	a2,332(s0)
     320:	3c014248 	lui	at,0x4248
     324:	44819000 	mtc1	at,$f18
     328:	c610000c 	lwc1	$f16,12(s0)
     32c:	921801f6 	lbu	t8,502(s0)
     330:	8e080004 	lw	t0,4(s0)
     334:	46128101 	sub.s	$f4,$f16,$f18
     338:	37190001 	ori	t9,t8,0x1
     33c:	35090010 	ori	t1,t0,0x10
     340:	a21901f6 	sb	t9,502(s0)
     344:	e6040028 	swc1	$f4,40(s0)
     348:	a20001f7 	sb	zero,503(s0)
     34c:	1000002e 	b	408 <EnBox_Init+0x374>
     350:	ae090004 	sw	t1,4(s0)
     354:	2401000b 	li	at,11
     358:	14410019 	bne	v0,at,3c0 <EnBox_Init+0x32c>
     35c:	02202025 	move	a0,s1
     360:	0c000000 	jal	0 <EnBox_SetupAction>
     364:	920501f8 	lbu	a1,504(s0)
     368:	14400015 	bnez	v0,3c0 <EnBox_Init+0x32c>
     36c:	02002025 	move	a0,s0
     370:	3c050000 	lui	a1,0x0
     374:	0c000000 	jal	0 <EnBox_SetupAction>
     378:	24a50000 	addiu	a1,a1,0
     37c:	02202025 	move	a0,s1
     380:	8fa50030 	lw	a1,48(sp)
     384:	0c000000 	jal	0 <EnBox_SetupAction>
     388:	8e06014c 	lw	a2,332(s0)
     38c:	3c014248 	lui	at,0x4248
     390:	44814000 	mtc1	at,$f8
     394:	c606000c 	lwc1	$f6,12(s0)
     398:	920a01f6 	lbu	t2,502(s0)
     39c:	8e0c0004 	lw	t4,4(s0)
     3a0:	46083281 	sub.s	$f10,$f6,$f8
     3a4:	354b0001 	ori	t3,t2,0x1
     3a8:	358d0010 	ori	t5,t4,0x10
     3ac:	a20b01f6 	sb	t3,502(s0)
     3b0:	e60a0028 	swc1	$f10,40(s0)
     3b4:	a20001f7 	sb	zero,503(s0)
     3b8:	10000013 	b	408 <EnBox_Init+0x374>
     3bc:	ae0d0004 	sw	t5,4(s0)
     3c0:	920201f9 	lbu	v0,505(s0)
     3c4:	24010004 	li	at,4
     3c8:	02002025 	move	a0,s0
     3cc:	10410004 	beq	v0,at,3e0 <EnBox_Init+0x34c>
     3d0:	3c050000 	lui	a1,0x0
     3d4:	24010006 	li	at,6
     3d8:	14410004 	bne	v0,at,3ec <EnBox_Init+0x358>
     3dc:	00000000 	nop
     3e0:	8e0e0004 	lw	t6,4(s0)
     3e4:	35cf0080 	ori	t7,t6,0x80
     3e8:	ae0f0004 	sw	t7,4(s0)
     3ec:	0c000000 	jal	0 <EnBox_SetupAction>
     3f0:	24a50000 	addiu	a1,a1,0
     3f4:	921801f6 	lbu	t8,502(s0)
     3f8:	37080001 	ori	t0,t8,0x1
     3fc:	a20801f6 	sb	t0,502(s0)
     400:	35090010 	ori	t1,t0,0x10
     404:	a20901f6 	sb	t1,502(s0)
     408:	a60000b8 	sh	zero,184(s0)
     40c:	860a0032 	lh	t2,50(s0)
     410:	860200b8 	lh	v0,184(s0)
     414:	34018000 	li	at,0x8000
     418:	01415821 	addu	t3,t2,at
     41c:	a60b0032 	sh	t3,50(s0)
     420:	a6020034 	sh	v0,52(s0)
     424:	a6020018 	sh	v0,24(s0)
     428:	26050164 	addiu	a1,s0,356
     42c:	3c060000 	lui	a2,0x0
     430:	260c01b8 	addiu	t4,s0,440
     434:	260d01d6 	addiu	t5,s0,470
     438:	240e0005 	li	t6,5
     43c:	afae0018 	sw	t6,24(sp)
     440:	afad0014 	sw	t5,20(sp)
     444:	afac0010 	sw	t4,16(sp)
     448:	24c60000 	addiu	a2,a2,0
     44c:	afa50034 	sw	a1,52(sp)
     450:	8fa7004c 	lw	a3,76(sp)
     454:	0c000000 	jal	0 <EnBox_SetupAction>
     458:	02202025 	move	a0,s1
     45c:	c7b00040 	lwc1	$f16,64(sp)
     460:	44809000 	mtc1	zero,$f18
     464:	240f0002 	li	t7,2
     468:	afaf0014 	sw	t7,20(sp)
     46c:	8fa40034 	lw	a0,52(sp)
     470:	8fa5004c 	lw	a1,76(sp)
     474:	3c063fc0 	lui	a2,0x3fc0
     478:	8fa70044 	lw	a3,68(sp)
     47c:	e7b00010 	swc1	$f16,16(sp)
     480:	0c000000 	jal	0 <EnBox_SetupAction>
     484:	e7b20018 	swc1	$f18,24(sp)
     488:	920201f9 	lbu	v0,505(s0)
     48c:	24010005 	li	at,5
     490:	02002025 	move	a0,s0
     494:	10410008 	beq	v0,at,4b8 <EnBox_Init+0x424>
     498:	3c053ba3 	lui	a1,0x3ba3
     49c:	24010006 	li	at,6
     4a0:	10410005 	beq	v0,at,4b8 <EnBox_Init+0x424>
     4a4:	24010007 	li	at,7
     4a8:	10410003 	beq	v0,at,4b8 <EnBox_Init+0x424>
     4ac:	24010008 	li	at,8
     4b0:	54410009 	bnel	v0,at,4d8 <EnBox_Init+0x444>
     4b4:	3c053c23 	lui	a1,0x3c23
     4b8:	0c000000 	jal	0 <EnBox_SetupAction>
     4bc:	34a5d70a 	ori	a1,a1,0xd70a
     4c0:	02002025 	move	a0,s0
     4c4:	0c000000 	jal	0 <EnBox_SetupAction>
     4c8:	3c0541a0 	lui	a1,0x41a0
     4cc:	10000009 	b	4f4 <EnBox_Init+0x460>
     4d0:	8fbf002c 	lw	ra,44(sp)
     4d4:	3c053c23 	lui	a1,0x3c23
     4d8:	34a5d70a 	ori	a1,a1,0xd70a
     4dc:	0c000000 	jal	0 <EnBox_SetupAction>
     4e0:	02002025 	move	a0,s0
     4e4:	02002025 	move	a0,s0
     4e8:	0c000000 	jal	0 <EnBox_SetupAction>
     4ec:	3c054220 	lui	a1,0x4220
     4f0:	8fbf002c 	lw	ra,44(sp)
     4f4:	8fb00024 	lw	s0,36(sp)
     4f8:	8fb10028 	lw	s1,40(sp)
     4fc:	03e00008 	jr	ra
     500:	27bd0058 	addiu	sp,sp,88

00000504 <EnBox_Destroy>:
     504:	27bdffe8 	addiu	sp,sp,-24
     508:	afa40018 	sw	a0,24(sp)
     50c:	8fae0018 	lw	t6,24(sp)
     510:	afbf0014 	sw	ra,20(sp)
     514:	00a02025 	move	a0,a1
     518:	24a50810 	addiu	a1,a1,2064
     51c:	0c000000 	jal	0 <EnBox_SetupAction>
     520:	8dc6014c 	lw	a2,332(t6)
     524:	8fbf0014 	lw	ra,20(sp)
     528:	27bd0018 	addiu	sp,sp,24
     52c:	03e00008 	jr	ra
     530:	00000000 	nop

00000534 <EnBox_RandomDustKinematic>:
     534:	27bdffd8 	addiu	sp,sp,-40
     538:	afbf001c 	sw	ra,28(sp)
     53c:	afb00018 	sw	s0,24(sp)
     540:	00a08025 	move	s0,a1
     544:	afa40028 	sw	a0,40(sp)
     548:	afa60030 	sw	a2,48(sp)
     54c:	0c000000 	jal	0 <EnBox_SetupAction>
     550:	afa70034 	sw	a3,52(sp)
     554:	3c0141c8 	lui	at,0x41c8
     558:	44812000 	mtc1	at,$f4
     55c:	00000000 	nop
     560:	46040182 	mul.s	$f6,$f0,$f4
     564:	0c000000 	jal	0 <EnBox_SetupAction>
     568:	e7a60024 	swc1	$f6,36(sp)
     56c:	3c014780 	lui	at,0x4780
     570:	44814000 	mtc1	at,$f8
     574:	8faf0028 	lw	t7,40(sp)
     578:	46080282 	mul.s	$f10,$f0,$f8
     57c:	4600540d 	trunc.w.s	$f16,$f10
     580:	44028000 	mfc1	v0,$f16
     584:	00000000 	nop
     588:	a7a20022 	sh	v0,34(sp)
     58c:	8df90024 	lw	t9,36(t7)
     590:	00022400 	sll	a0,v0,0x10
     594:	00042403 	sra	a0,a0,0x10
     598:	ae190000 	sw	t9,0(s0)
     59c:	8df80028 	lw	t8,40(t7)
     5a0:	ae180004 	sw	t8,4(s0)
     5a4:	8df9002c 	lw	t9,44(t7)
     5a8:	0c000000 	jal	0 <EnBox_SetupAction>
     5ac:	ae190008 	sw	t9,8(s0)
     5b0:	c7a40024 	lwc1	$f4,36(sp)
     5b4:	c6120000 	lwc1	$f18,0(s0)
     5b8:	46040182 	mul.s	$f6,$f0,$f4
     5bc:	46069200 	add.s	$f8,$f18,$f6
     5c0:	e6080000 	swc1	$f8,0(s0)
     5c4:	0c000000 	jal	0 <EnBox_SetupAction>
     5c8:	87a40022 	lh	a0,34(sp)
     5cc:	c7b00024 	lwc1	$f16,36(sp)
     5d0:	c60a0008 	lwc1	$f10,8(s0)
     5d4:	3c013f80 	lui	at,0x3f80
     5d8:	46100102 	mul.s	$f4,$f0,$f16
     5dc:	44813000 	mtc1	at,$f6
     5e0:	46045480 	add.s	$f18,$f10,$f4
     5e4:	e6120008 	swc1	$f18,8(s0)
     5e8:	8fa80030 	lw	t0,48(sp)
     5ec:	e5060004 	swc1	$f6,4(t0)
     5f0:	0c000000 	jal	0 <EnBox_SetupAction>
     5f4:	87a40022 	lh	a0,34(sp)
     5f8:	8fa90030 	lw	t1,48(sp)
     5fc:	e5200000 	swc1	$f0,0(t1)
     600:	0c000000 	jal	0 <EnBox_SetupAction>
     604:	87a40022 	lh	a0,34(sp)
     608:	8fa20034 	lw	v0,52(sp)
     60c:	8faa0030 	lw	t2,48(sp)
     610:	44801000 	mtc1	zero,$f2
     614:	e5400008 	swc1	$f0,8(t2)
     618:	e4420000 	swc1	$f2,0(v0)
     61c:	e4420004 	swc1	$f2,4(v0)
     620:	e4420008 	swc1	$f2,8(v0)
     624:	8fbf001c 	lw	ra,28(sp)
     628:	8fb00018 	lw	s0,24(sp)
     62c:	27bd0028 	addiu	sp,sp,40
     630:	03e00008 	jr	ra
     634:	00000000 	nop

00000638 <EnBox_SpawnDust>:
     638:	27bdff90 	addiu	sp,sp,-112
     63c:	afb60040 	sw	s6,64(sp)
     640:	afb5003c 	sw	s5,60(sp)
     644:	afb40038 	sw	s4,56(sp)
     648:	afb30034 	sw	s3,52(sp)
     64c:	afb20030 	sw	s2,48(sp)
     650:	afb1002c 	sw	s1,44(sp)
     654:	afb00028 	sw	s0,40(sp)
     658:	0080a025 	move	s4,a0
     65c:	00a0a825 	move	s5,a1
     660:	afbf0044 	sw	ra,68(sp)
     664:	00008025 	move	s0,zero
     668:	27b10060 	addiu	s1,sp,96
     66c:	27b20054 	addiu	s2,sp,84
     670:	27b30048 	addiu	s3,sp,72
     674:	24160014 	li	s6,20
     678:	02802025 	move	a0,s4
     67c:	02202825 	move	a1,s1
     680:	02403025 	move	a2,s2
     684:	0c000000 	jal	0 <EnBox_SetupAction>
     688:	02603825 	move	a3,s3
     68c:	240e0064 	li	t6,100
     690:	240f001e 	li	t7,30
     694:	2418000f 	li	t8,15
     698:	afb80018 	sw	t8,24(sp)
     69c:	afaf0014 	sw	t7,20(sp)
     6a0:	afae0010 	sw	t6,16(sp)
     6a4:	02a02025 	move	a0,s5
     6a8:	02202825 	move	a1,s1
     6ac:	02403025 	move	a2,s2
     6b0:	0c000000 	jal	0 <EnBox_SetupAction>
     6b4:	02603825 	move	a3,s3
     6b8:	26100001 	addiu	s0,s0,1
     6bc:	5616ffef 	bnel	s0,s6,67c <EnBox_SpawnDust+0x44>
     6c0:	02802025 	move	a0,s4
     6c4:	8fbf0044 	lw	ra,68(sp)
     6c8:	8fb00028 	lw	s0,40(sp)
     6cc:	8fb1002c 	lw	s1,44(sp)
     6d0:	8fb20030 	lw	s2,48(sp)
     6d4:	8fb30034 	lw	s3,52(sp)
     6d8:	8fb40038 	lw	s4,56(sp)
     6dc:	8fb5003c 	lw	s5,60(sp)
     6e0:	8fb60040 	lw	s6,64(sp)
     6e4:	03e00008 	jr	ra
     6e8:	27bd0070 	addiu	sp,sp,112

000006ec <EnBox_Fall>:
     6ec:	27bdffd8 	addiu	sp,sp,-40
     6f0:	afbf0024 	sw	ra,36(sp)
     6f4:	afb00020 	sw	s0,32(sp)
     6f8:	afa5002c 	sw	a1,44(sp)
     6fc:	908f01f6 	lbu	t7,502(a0)
     700:	94990088 	lhu	t9,136(a0)
     704:	2401fffe 	li	at,-2
     708:	240e00ff 	li	t6,255
     70c:	01e1c024 	and	t8,t7,at
     710:	33280001 	andi	t0,t9,0x1
     714:	00808025 	move	s0,a0
     718:	a08e01f7 	sb	t6,503(a0)
     71c:	11000039 	beqz	t0,804 <EnBox_Fall+0x118>
     720:	a09801f6 	sb	t8,502(a0)
     724:	370a0002 	ori	t2,t8,0x2
     728:	314200ff 	andi	v0,t2,0xff
     72c:	304b0004 	andi	t3,v0,0x4
     730:	11600004 	beqz	t3,744 <EnBox_Fall+0x58>
     734:	a08a01f6 	sb	t2,502(a0)
     738:	304cfffb 	andi	t4,v0,0xfffb
     73c:	10000003 	b	74c <EnBox_Fall+0x60>
     740:	a08c01f6 	sb	t4,502(a0)
     744:	344d0004 	ori	t5,v0,0x4
     748:	a20d01f6 	sb	t5,502(s0)
     74c:	920e01f9 	lbu	t6,505(s0)
     750:	24010003 	li	at,3
     754:	02002025 	move	a0,s0
     758:	15c10008 	bne	t6,at,77c <EnBox_Fall+0x90>
     75c:	3c050000 	lui	a1,0x0
     760:	c6040060 	lwc1	$f4,96(s0)
     764:	3c010000 	lui	at,0x0
     768:	c42800c0 	lwc1	$f8,192(at)
     76c:	46002187 	neg.s	$f6,$f4
     770:	46083282 	mul.s	$f10,$f6,$f8
     774:	10000007 	b	794 <EnBox_Fall+0xa8>
     778:	e60a0060 	swc1	$f10,96(s0)
     77c:	c6100060 	lwc1	$f16,96(s0)
     780:	3c010000 	lui	at,0x0
     784:	c42400c4 	lwc1	$f4,196(at)
     788:	46008487 	neg.s	$f18,$f16
     78c:	46049182 	mul.s	$f6,$f18,$f4
     790:	e6060060 	swc1	$f6,96(s0)
     794:	3c0140b0 	lui	at,0x40b0
     798:	44815000 	mtc1	at,$f10
     79c:	c6080060 	lwc1	$f8,96(s0)
     7a0:	24a50000 	addiu	a1,a1,0
     7a4:	460a403c 	c.lt.s	$f8,$f10
     7a8:	00000000 	nop
     7ac:	45000008 	bc1f	7d0 <EnBox_Fall+0xe4>
     7b0:	00000000 	nop
     7b4:	c6100080 	lwc1	$f16,128(s0)
     7b8:	a60000b8 	sh	zero,184(s0)
     7bc:	0c000000 	jal	0 <EnBox_SetupAction>
     7c0:	e6100028 	swc1	$f16,40(s0)
     7c4:	8fa4002c 	lw	a0,44(sp)
     7c8:	0c000000 	jal	0 <EnBox_SetupAction>
     7cc:	860501ae 	lh	a1,430(s0)
     7d0:	3c070000 	lui	a3,0x0
     7d4:	3c0f0000 	lui	t7,0x0
     7d8:	24e70000 	addiu	a3,a3,0
     7dc:	25ef0000 	addiu	t7,t7,0
     7e0:	afaf0014 	sw	t7,20(sp)
     7e4:	afa70010 	sw	a3,16(sp)
     7e8:	24042856 	li	a0,10326
     7ec:	260500e4 	addiu	a1,s0,228
     7f0:	0c000000 	jal	0 <EnBox_SetupAction>
     7f4:	24060004 	li	a2,4
     7f8:	02002025 	move	a0,s0
     7fc:	0c000000 	jal	0 <EnBox_SetupAction>
     800:	8fa5002c 	lw	a1,44(sp)
     804:	921801f6 	lbu	t8,502(s0)
     808:	c6120028 	lwc1	$f18,40(s0)
     80c:	c6040080 	lwc1	$f4,128(s0)
     810:	33190004 	andi	t9,t8,0x4
     814:	13200009 	beqz	t9,83c <EnBox_Fall+0x150>
     818:	46049001 	sub.s	$f0,$f18,$f4
     81c:	3c014248 	lui	at,0x4248
     820:	44813000 	mtc1	at,$f6
     824:	00000000 	nop
     828:	46060202 	mul.s	$f8,$f0,$f6
     82c:	4600428d 	trunc.w.s	$f10,$f8
     830:	44095000 	mfc1	t1,$f10
     834:	10000009 	b	85c <EnBox_Fall+0x170>
     838:	a60900b8 	sh	t1,184(s0)
     83c:	3c014248 	lui	at,0x4248
     840:	44819000 	mtc1	at,$f18
     844:	46000407 	neg.s	$f16,$f0
     848:	46128102 	mul.s	$f4,$f16,$f18
     84c:	4600218d 	trunc.w.s	$f6,$f4
     850:	440b3000 	mfc1	t3,$f6
     854:	00000000 	nop
     858:	a60b00b8 	sh	t3,184(s0)
     85c:	8fbf0024 	lw	ra,36(sp)
     860:	8fb00020 	lw	s0,32(sp)
     864:	27bd0028 	addiu	sp,sp,40
     868:	03e00008 	jr	ra
     86c:	00000000 	nop

00000870 <EnBox_FallOnSwitchFlag>:
     870:	27bdffd8 	addiu	sp,sp,-40
     874:	afbf0024 	sw	ra,36(sp)
     878:	afb10020 	sw	s1,32(sp)
     87c:	afb0001c 	sw	s0,28(sp)
     880:	8482001c 	lh	v0,28(a0)
     884:	00808025 	move	s0,a0
     888:	00a08825 	move	s1,a1
     88c:	3042001f 	andi	v0,v0,0x1f
     890:	28410014 	slti	at,v0,20
     894:	14200005 	bnez	at,8ac <EnBox_FallOnSwitchFlag+0x3c>
     898:	28410020 	slti	at,v0,32
     89c:	50200004 	beqzl	at,8b0 <EnBox_FallOnSwitchFlag+0x40>
     8a0:	8e0201a8 	lw	v0,424(s0)
     8a4:	0c000000 	jal	0 <EnBox_SetupAction>
     8a8:	00000000 	nop
     8ac:	8e0201a8 	lw	v0,424(s0)
     8b0:	02002025 	move	a0,s0
     8b4:	3c050000 	lui	a1,0x0
     8b8:	04400010 	bltz	v0,8fc <EnBox_FallOnSwitchFlag+0x8c>
     8bc:	2841fff5 	slti	at,v0,-11
     8c0:	0c000000 	jal	0 <EnBox_SetupAction>
     8c4:	24a50000 	addiu	a1,a1,0
     8c8:	02202025 	move	a0,s1
     8cc:	24051194 	li	a1,4500
     8d0:	2406270f 	li	a2,9999
     8d4:	02003825 	move	a3,s0
     8d8:	0c000000 	jal	0 <EnBox_SetupAction>
     8dc:	afa00010 	sw	zero,16(sp)
     8e0:	ae0201ac 	sw	v0,428(s0)
     8e4:	02202025 	move	a0,s1
     8e8:	26250810 	addiu	a1,s1,2064
     8ec:	0c000000 	jal	0 <EnBox_SetupAction>
     8f0:	8e06014c 	lw	a2,332(s0)
     8f4:	1000000e 	b	930 <EnBox_FallOnSwitchFlag+0xc0>
     8f8:	8fbf0024 	lw	ra,36(sp)
     8fc:	14200004 	bnez	at,910 <EnBox_FallOnSwitchFlag+0xa0>
     900:	02202025 	move	a0,s1
     904:	244e0001 	addiu	t6,v0,1
     908:	10000008 	b	92c <EnBox_FallOnSwitchFlag+0xbc>
     90c:	ae0e01a8 	sw	t6,424(s0)
     910:	0c000000 	jal	0 <EnBox_SetupAction>
     914:	920501f8 	lbu	a1,504(s0)
     918:	50400005 	beqzl	v0,930 <EnBox_FallOnSwitchFlag+0xc0>
     91c:	8fbf0024 	lw	ra,36(sp)
     920:	8e0f01a8 	lw	t7,424(s0)
     924:	25f80001 	addiu	t8,t7,1
     928:	ae1801a8 	sw	t8,424(s0)
     92c:	8fbf0024 	lw	ra,36(sp)
     930:	8fb0001c 	lw	s0,28(sp)
     934:	8fb10020 	lw	s1,32(sp)
     938:	03e00008 	jr	ra
     93c:	27bd0028 	addiu	sp,sp,40

00000940 <func_809C9700>:
     940:	27bdffd8 	addiu	sp,sp,-40
     944:	afbf001c 	sw	ra,28(sp)
     948:	afb00018 	sw	s0,24(sp)
     94c:	8482001c 	lh	v0,28(a0)
     950:	00808025 	move	s0,a0
     954:	00a03025 	move	a2,a1
     958:	3042001f 	andi	v0,v0,0x1f
     95c:	28410014 	slti	at,v0,20
     960:	14200009 	bnez	at,988 <func_809C9700+0x48>
     964:	8ca31c44 	lw	v1,7236(a1)
     968:	28410020 	slti	at,v0,32
     96c:	50200007 	beqzl	at,98c <func_809C9700+0x4c>
     970:	26040024 	addiu	a0,s0,36
     974:	afa30020 	sw	v1,32(sp)
     978:	0c000000 	jal	0 <EnBox_SetupAction>
     97c:	afa6002c 	sw	a2,44(sp)
     980:	8fa30020 	lw	v1,32(sp)
     984:	8fa6002c 	lw	a2,44(sp)
     988:	26040024 	addiu	a0,s0,36
     98c:	24650024 	addiu	a1,v1,36
     990:	afa30020 	sw	v1,32(sp)
     994:	0c000000 	jal	0 <EnBox_SetupAction>
     998:	afa6002c 	sw	a2,44(sp)
     99c:	3c010000 	lui	at,0x0
     9a0:	c42400c8 	lwc1	$f4,200(at)
     9a4:	8fa30020 	lw	v1,32(sp)
     9a8:	8fa6002c 	lw	a2,44(sp)
     9ac:	4600203c 	c.lt.s	$f4,$f0
     9b0:	00000000 	nop
     9b4:	45020004 	bc1fl	9c8 <func_809C9700+0x88>
     9b8:	920201fb 	lbu	v0,507(s0)
     9bc:	1000003e 	b	ab8 <func_809C9700+0x178>
     9c0:	a20001fb 	sb	zero,507(s0)
     9c4:	920201fb 	lbu	v0,507(s0)
     9c8:	24010001 	li	at,1
     9cc:	1440000c 	bnez	v0,a00 <func_809C9700+0xc0>
     9d0:	00000000 	nop
     9d4:	8c620680 	lw	v0,1664(v1)
     9d8:	24180001 	li	t8,1
     9dc:	000271c0 	sll	t6,v0,0x7
     9e0:	05c20006 	bltzl	t6,9fc <func_809C9700+0xbc>
     9e4:	a21801fb 	sb	t8,507(s0)
     9e8:	3c010080 	lui	at,0x80
     9ec:	00417825 	or	t7,v0,at
     9f0:	10000031 	b	ab8 <func_809C9700+0x178>
     9f4:	ac6f0680 	sw	t7,1664(v1)
     9f8:	a21801fb 	sb	t8,507(s0)
     9fc:	330200ff 	andi	v0,t8,0xff
     a00:	14410006 	bne	v0,at,a1c <func_809C9700+0xdc>
     a04:	00c02025 	move	a0,a2
     a08:	0c000000 	jal	0 <EnBox_SetupAction>
     a0c:	24050001 	li	a1,1
     a10:	24190002 	li	t9,2
     a14:	10000028 	b	ab8 <func_809C9700+0x178>
     a18:	a21901fb 	sb	t9,507(s0)
     a1c:	24010002 	li	at,2
     a20:	14410025 	bne	v0,at,ab8 <func_809C9700+0x178>
     a24:	3c010001 	lui	at,0x1
     a28:	00c11021 	addu	v0,a2,at
     a2c:	944804c6 	lhu	t0,1222(v0)
     a30:	24010004 	li	at,4
     a34:	55010021 	bnel	t0,at,abc <func_809C9700+0x17c>
     a38:	8fbf001c 	lw	ra,28(sp)
     a3c:	944304c4 	lhu	v1,1220(v0)
     a40:	24010008 	li	at,8
     a44:	54610005 	bnel	v1,at,a5c <func_809C9700+0x11c>
     a48:	24010009 	li	at,9
     a4c:	920901f9 	lbu	t1,505(s0)
     a50:	24010009 	li	at,9
     a54:	11210007 	beq	t1,at,a74 <func_809C9700+0x134>
     a58:	24010009 	li	at,9
     a5c:	54610016 	bnel	v1,at,ab8 <func_809C9700+0x178>
     a60:	a20001fb 	sb	zero,507(s0)
     a64:	920a01f9 	lbu	t2,505(s0)
     a68:	2401000a 	li	at,10
     a6c:	55410012 	bnel	t2,at,ab8 <func_809C9700+0x178>
     a70:	a20001fb 	sb	zero,507(s0)
     a74:	8e0b0004 	lw	t3,4(s0)
     a78:	3c01fdff 	lui	at,0xfdff
     a7c:	3421ffff 	ori	at,at,0xffff
     a80:	01616024 	and	t4,t3,at
     a84:	ae0c0004 	sw	t4,4(s0)
     a88:	3c050000 	lui	a1,0x0
     a8c:	24a50000 	addiu	a1,a1,0
     a90:	afa6002c 	sw	a2,44(sp)
     a94:	0c000000 	jal	0 <EnBox_SetupAction>
     a98:	02002025 	move	a0,s0
     a9c:	8fa4002c 	lw	a0,44(sp)
     aa0:	0c000000 	jal	0 <EnBox_SetupAction>
     aa4:	02002825 	move	a1,s0
     aa8:	ae0001a8 	sw	zero,424(s0)
     aac:	10000002 	b	ab8 <func_809C9700+0x178>
     ab0:	a20001fb 	sb	zero,507(s0)
     ab4:	a20001fb 	sb	zero,507(s0)
     ab8:	8fbf001c 	lw	ra,28(sp)
     abc:	8fb00018 	lw	s0,24(sp)
     ac0:	27bd0028 	addiu	sp,sp,40
     ac4:	03e00008 	jr	ra
     ac8:	00000000 	nop

00000acc <EnBox_AppearOnSwitchFlag>:
     acc:	27bdffe0 	addiu	sp,sp,-32
     ad0:	afbf001c 	sw	ra,28(sp)
     ad4:	afb00018 	sw	s0,24(sp)
     ad8:	afa50024 	sw	a1,36(sp)
     adc:	8482001c 	lh	v0,28(a0)
     ae0:	00808025 	move	s0,a0
     ae4:	3042001f 	andi	v0,v0,0x1f
     ae8:	28410014 	slti	at,v0,20
     aec:	14200005 	bnez	at,b04 <EnBox_AppearOnSwitchFlag+0x38>
     af0:	28410020 	slti	at,v0,32
     af4:	50200004 	beqzl	at,b08 <EnBox_AppearOnSwitchFlag+0x3c>
     af8:	8fa40024 	lw	a0,36(sp)
     afc:	0c000000 	jal	0 <EnBox_SetupAction>
     b00:	00000000 	nop
     b04:	8fa40024 	lw	a0,36(sp)
     b08:	0c000000 	jal	0 <EnBox_SetupAction>
     b0c:	920501f8 	lbu	a1,504(s0)
     b10:	10400009 	beqz	v0,b38 <EnBox_AppearOnSwitchFlag+0x6c>
     b14:	8fa40024 	lw	a0,36(sp)
     b18:	0c000000 	jal	0 <EnBox_SetupAction>
     b1c:	02002825 	move	a1,s0
     b20:	3c050000 	lui	a1,0x0
     b24:	24a50000 	addiu	a1,a1,0
     b28:	0c000000 	jal	0 <EnBox_SetupAction>
     b2c:	02002025 	move	a0,s0
     b30:	240effe2 	li	t6,-30
     b34:	ae0e01a8 	sw	t6,424(s0)
     b38:	8fbf001c 	lw	ra,28(sp)
     b3c:	8fb00018 	lw	s0,24(sp)
     b40:	27bd0020 	addiu	sp,sp,32
     b44:	03e00008 	jr	ra
     b48:	00000000 	nop

00000b4c <EnBox_AppearOnRoomClear>:
     b4c:	27bdffe0 	addiu	sp,sp,-32
     b50:	afbf001c 	sw	ra,28(sp)
     b54:	afb10018 	sw	s1,24(sp)
     b58:	afb00014 	sw	s0,20(sp)
     b5c:	8482001c 	lh	v0,28(a0)
     b60:	00808025 	move	s0,a0
     b64:	00a08825 	move	s1,a1
     b68:	3042001f 	andi	v0,v0,0x1f
     b6c:	28410014 	slti	at,v0,20
     b70:	14200005 	bnez	at,b88 <EnBox_AppearOnRoomClear+0x3c>
     b74:	28410020 	slti	at,v0,32
     b78:	50200004 	beqzl	at,b8c <EnBox_AppearOnRoomClear+0x40>
     b7c:	02202025 	move	a0,s1
     b80:	0c000000 	jal	0 <EnBox_SetupAction>
     b84:	00000000 	nop
     b88:	02202025 	move	a0,s1
     b8c:	0c000000 	jal	0 <EnBox_SetupAction>
     b90:	82050003 	lb	a1,3(s0)
     b94:	50400017 	beqzl	v0,bf4 <EnBox_AppearOnRoomClear+0xa8>
     b98:	8fbf001c 	lw	ra,28(sp)
     b9c:	0c000000 	jal	0 <EnBox_SetupAction>
     ba0:	02202025 	move	a0,s1
     ba4:	14400012 	bnez	v0,bf0 <EnBox_AppearOnRoomClear+0xa4>
     ba8:	02202025 	move	a0,s1
     bac:	0c000000 	jal	0 <EnBox_SetupAction>
     bb0:	82050003 	lb	a1,3(s0)
     bb4:	3c050000 	lui	a1,0x0
     bb8:	24a50000 	addiu	a1,a1,0
     bbc:	0c000000 	jal	0 <EnBox_SetupAction>
     bc0:	02002025 	move	a0,s0
     bc4:	02202025 	move	a0,s1
     bc8:	0c000000 	jal	0 <EnBox_SetupAction>
     bcc:	02002825 	move	a1,s0
     bd0:	02202025 	move	a0,s1
     bd4:	0c000000 	jal	0 <EnBox_SetupAction>
     bd8:	92050002 	lbu	a1,2(s0)
     bdc:	10400003 	beqz	v0,bec <EnBox_AppearOnRoomClear+0xa0>
     be0:	240effe2 	li	t6,-30
     be4:	10000002 	b	bf0 <EnBox_AppearOnRoomClear+0xa4>
     be8:	ae0001a8 	sw	zero,424(s0)
     bec:	ae0e01a8 	sw	t6,424(s0)
     bf0:	8fbf001c 	lw	ra,28(sp)
     bf4:	8fb00014 	lw	s0,20(sp)
     bf8:	8fb10018 	lw	s1,24(sp)
     bfc:	03e00008 	jr	ra
     c00:	27bd0020 	addiu	sp,sp,32

00000c04 <EnBox_AppearInit>:
     c04:	27bdffc8 	addiu	sp,sp,-56
     c08:	afbf0034 	sw	ra,52(sp)
     c0c:	afb00030 	sw	s0,48(sp)
     c10:	00808025 	move	s0,a0
     c14:	0c000000 	jal	0 <EnBox_SetupAction>
     c18:	afa5003c 	sw	a1,60(sp)
     c1c:	920e0002 	lbu	t6,2(s0)
     c20:	02002025 	move	a0,s0
     c24:	3c050000 	lui	a1,0x0
     c28:	104e0004 	beq	v0,t6,c3c <EnBox_AppearInit+0x38>
     c2c:	00000000 	nop
     c30:	8e0f01a8 	lw	t7,424(s0)
     c34:	51e0001d 	beqzl	t7,cac <EnBox_AppearInit+0xa8>
     c38:	8fbf0034 	lw	ra,52(sp)
     c3c:	0c000000 	jal	0 <EnBox_SetupAction>
     c40:	24a50000 	addiu	a1,a1,0
     c44:	c604000c 	lwc1	$f4,12(s0)
     c48:	8fa5003c 	lw	a1,60(sp)
     c4c:	ae0001a8 	sw	zero,424(s0)
     c50:	8e070008 	lw	a3,8(s0)
     c54:	e7a40010 	swc1	$f4,16(sp)
     c58:	c6060010 	lwc1	$f6,16(s0)
     c5c:	24180011 	li	t8,17
     c60:	afb80024 	sw	t8,36(sp)
     c64:	afa00020 	sw	zero,32(sp)
     c68:	afa0001c 	sw	zero,28(sp)
     c6c:	afa00018 	sw	zero,24(sp)
     c70:	2406008c 	li	a2,140
     c74:	24a41c24 	addiu	a0,a1,7204
     c78:	0c000000 	jal	0 <EnBox_SetupAction>
     c7c:	e7a60014 	swc1	$f6,20(sp)
     c80:	3c070000 	lui	a3,0x0
     c84:	3c190000 	lui	t9,0x0
     c88:	24e70000 	addiu	a3,a3,0
     c8c:	27390000 	addiu	t9,t9,0
     c90:	afb90014 	sw	t9,20(sp)
     c94:	afa70010 	sw	a3,16(sp)
     c98:	2404287b 	li	a0,10363
     c9c:	260500e4 	addiu	a1,s0,228
     ca0:	0c000000 	jal	0 <EnBox_SetupAction>
     ca4:	24060004 	li	a2,4
     ca8:	8fbf0034 	lw	ra,52(sp)
     cac:	8fb00030 	lw	s0,48(sp)
     cb0:	27bd0038 	addiu	sp,sp,56
     cb4:	03e00008 	jr	ra
     cb8:	00000000 	nop

00000cbc <EnBox_AppearAnimation>:
     cbc:	27bdffe8 	addiu	sp,sp,-24
     cc0:	00803825 	move	a3,a0
     cc4:	afbf0014 	sw	ra,20(sp)
     cc8:	afa5001c 	sw	a1,28(sp)
     ccc:	8ce6014c 	lw	a2,332(a3)
     cd0:	00a02025 	move	a0,a1
     cd4:	24a50810 	addiu	a1,a1,2064
     cd8:	0c000000 	jal	0 <EnBox_SetupAction>
     cdc:	afa70018 	sw	a3,24(sp)
     ce0:	8fa70018 	lw	a3,24(sp)
     ce4:	8ce201a8 	lw	v0,424(a3)
     ce8:	04410004 	bgez	v0,cfc <EnBox_AppearAnimation+0x40>
     cec:	28410028 	slti	at,v0,40
     cf0:	244f0001 	addiu	t7,v0,1
     cf4:	10000018 	b	d58 <EnBox_AppearAnimation+0x9c>
     cf8:	acef01a8 	sw	t7,424(a3)
     cfc:	10200008 	beqz	at,d20 <EnBox_AppearAnimation+0x64>
     d00:	3c013fa0 	lui	at,0x3fa0
     d04:	44813000 	mtc1	at,$f6
     d08:	c4e40028 	lwc1	$f4,40(a3)
     d0c:	24580001 	addiu	t8,v0,1
     d10:	acf801a8 	sw	t8,424(a3)
     d14:	46062200 	add.s	$f8,$f4,$f6
     d18:	1000000f 	b	d58 <EnBox_AppearAnimation+0x9c>
     d1c:	e4e80028 	swc1	$f8,40(a3)
     d20:	2841003c 	slti	at,v0,60
     d24:	10200009 	beqz	at,d4c <EnBox_AppearAnimation+0x90>
     d28:	00e02025 	move	a0,a3
     d2c:	90f901f7 	lbu	t9,503(a3)
     d30:	c4ea000c 	lwc1	$f10,12(a3)
     d34:	24490001 	addiu	t1,v0,1
     d38:	2728000c 	addiu	t0,t9,12
     d3c:	a0e801f7 	sb	t0,503(a3)
     d40:	ace901a8 	sw	t1,424(a3)
     d44:	10000004 	b	d58 <EnBox_AppearAnimation+0x9c>
     d48:	e4ea0028 	swc1	$f10,40(a3)
     d4c:	3c050000 	lui	a1,0x0
     d50:	0c000000 	jal	0 <EnBox_SetupAction>
     d54:	24a50000 	addiu	a1,a1,0
     d58:	8fbf0014 	lw	ra,20(sp)
     d5c:	27bd0018 	addiu	sp,sp,24
     d60:	03e00008 	jr	ra
     d64:	00000000 	nop

00000d68 <EnBox_WaitOpen>:
     d68:	27bdff98 	addiu	sp,sp,-104
     d6c:	afbf003c 	sw	ra,60(sp)
     d70:	afb00038 	sw	s0,56(sp)
     d74:	afa5006c 	sw	a1,108(sp)
     d78:	908f01f6 	lbu	t7,502(a0)
     d7c:	848201f4 	lh	v0,500(a0)
     d80:	240e00ff 	li	t6,255
     d84:	35f80001 	ori	t8,t7,0x1
     d88:	00808025 	move	s0,a0
     d8c:	a08e01f7 	sb	t6,503(a0)
     d90:	1040004c 	beqz	v0,ec4 <EnBox_WaitOpen+0x15c>
     d94:	a09801f6 	sb	t8,502(a0)
     d98:	3c030000 	lui	v1,0x0
     d9c:	04410003 	bgez	v0,dac <EnBox_WaitOpen+0x44>
     da0:	8c630004 	lw	v1,4(v1)
     da4:	10000002 	b	db0 <EnBox_WaitOpen+0x48>
     da8:	24020002 	li	v0,2
     dac:	00001025 	move	v0,zero
     db0:	0002c880 	sll	t9,v0,0x2
     db4:	00034080 	sll	t0,v1,0x2
     db8:	03284821 	addu	t1,t9,t0
     dbc:	3c050000 	lui	a1,0x0
     dc0:	00a92821 	addu	a1,a1,t1
     dc4:	8ca40020 	lw	a0,32(a1)
     dc8:	0c000000 	jal	0 <EnBox_SetupAction>
     dcc:	afa40060 	sw	a0,96(sp)
     dd0:	44822000 	mtc1	v0,$f4
     dd4:	44804000 	mtc1	zero,$f8
     dd8:	240a0002 	li	t2,2
     ddc:	468021a0 	cvt.s.w	$f6,$f4
     de0:	8fa50060 	lw	a1,96(sp)
     de4:	afaa0014 	sw	t2,20(sp)
     de8:	26040164 	addiu	a0,s0,356
     dec:	3c063fc0 	lui	a2,0x3fc0
     df0:	24070000 	li	a3,0
     df4:	e7a60010 	swc1	$f6,16(sp)
     df8:	0c000000 	jal	0 <EnBox_SetupAction>
     dfc:	e7a80018 	swc1	$f8,24(sp)
     e00:	3c050000 	lui	a1,0x0
     e04:	24a50000 	addiu	a1,a1,0
     e08:	0c000000 	jal	0 <EnBox_SetupAction>
     e0c:	02002025 	move	a0,s0
     e10:	860b01f4 	lh	t3,500(s0)
     e14:	59600021 	blezl	t3,e9c <EnBox_WaitOpen+0x134>
     e18:	8605001c 	lh	a1,28(s0)
     e1c:	920201f9 	lbu	v0,505(s0)
     e20:	24010005 	li	at,5
     e24:	1041001c 	beq	v0,at,e98 <EnBox_WaitOpen+0x130>
     e28:	24010006 	li	at,6
     e2c:	1041001a 	beq	v0,at,e98 <EnBox_WaitOpen+0x130>
     e30:	24010007 	li	at,7
     e34:	10410018 	beq	v0,at,e98 <EnBox_WaitOpen+0x130>
     e38:	24010008 	li	at,8
     e3c:	50410017 	beql	v0,at,e9c <EnBox_WaitOpen+0x134>
     e40:	8605001c 	lh	a1,28(s0)
     e44:	c60a0024 	lwc1	$f10,36(s0)
     e48:	8fa6006c 	lw	a2,108(sp)
     e4c:	240fffff 	li	t7,-1
     e50:	e7aa0010 	swc1	$f10,16(sp)
     e54:	c6100028 	lwc1	$f16,40(s0)
     e58:	02002825 	move	a1,s0
     e5c:	240700aa 	li	a3,170
     e60:	e7b00014 	swc1	$f16,20(sp)
     e64:	c612002c 	lwc1	$f18,44(s0)
     e68:	24c41c24 	addiu	a0,a2,7204
     e6c:	e7b20018 	swc1	$f18,24(sp)
     e70:	860c00b4 	lh	t4,180(s0)
     e74:	afac001c 	sw	t4,28(sp)
     e78:	860d00b6 	lh	t5,182(s0)
     e7c:	afad0020 	sw	t5,32(sp)
     e80:	860e00b8 	lh	t6,184(s0)
     e84:	afaf0028 	sw	t7,40(sp)
     e88:	0c000000 	jal	0 <EnBox_SetupAction>
     e8c:	afae0024 	sw	t6,36(sp)
     e90:	0c000000 	jal	0 <EnBox_SetupAction>
     e94:	2404092b 	li	a0,2347
     e98:	8605001c 	lh	a1,28(s0)
     e9c:	3c040000 	lui	a0,0x0
     ea0:	24840000 	addiu	a0,a0,0
     ea4:	0c000000 	jal	0 <EnBox_SetupAction>
     ea8:	30a5001f 	andi	a1,a1,0x1f
     eac:	8605001c 	lh	a1,28(s0)
     eb0:	8fa4006c 	lw	a0,108(sp)
     eb4:	0c000000 	jal	0 <EnBox_SetupAction>
     eb8:	30a5001f 	andi	a1,a1,0x1f
     ebc:	10000038 	b	fa0 <EnBox_WaitOpen+0x238>
     ec0:	8fbf003c 	lw	ra,60(sp)
     ec4:	8fb8006c 	lw	t8,108(sp)
     ec8:	02002025 	move	a0,s0
     ecc:	27a5004c 	addiu	a1,sp,76
     ed0:	8f021c44 	lw	v0,7236(t8)
     ed4:	0c000000 	jal	0 <EnBox_SetupAction>
     ed8:	24460024 	addiu	a2,v0,36
     edc:	3c01c248 	lui	at,0xc248
     ee0:	c7a00054 	lwc1	$f0,84(sp)
     ee4:	44812000 	mtc1	at,$f4
     ee8:	00000000 	nop
     eec:	4600203c 	c.lt.s	$f4,$f0
     ef0:	00000000 	nop
     ef4:	45020021 	bc1fl	f7c <EnBox_WaitOpen+0x214>
     ef8:	8605001c 	lh	a1,28(s0)
     efc:	44803000 	mtc1	zero,$f6
     f00:	3c014120 	lui	at,0x4120
     f04:	4606003c 	c.lt.s	$f0,$f6
     f08:	c7a00050 	lwc1	$f0,80(sp)
     f0c:	4502001b 	bc1fl	f7c <EnBox_WaitOpen+0x214>
     f10:	8605001c 	lh	a1,28(s0)
     f14:	44814000 	mtc1	at,$f8
     f18:	46000005 	abs.s	$f0,$f0
     f1c:	3c0141a0 	lui	at,0x41a0
     f20:	4608003c 	c.lt.s	$f0,$f8
     f24:	c7a0004c 	lwc1	$f0,76(sp)
     f28:	45020014 	bc1fl	f7c <EnBox_WaitOpen+0x214>
     f2c:	8605001c 	lh	a1,28(s0)
     f30:	44815000 	mtc1	at,$f10
     f34:	46000005 	abs.s	$f0,$f0
     f38:	02002025 	move	a0,s0
     f3c:	460a003c 	c.lt.s	$f0,$f10
     f40:	24053000 	li	a1,12288
     f44:	4502000d 	bc1fl	f7c <EnBox_WaitOpen+0x214>
     f48:	8605001c 	lh	a1,28(s0)
     f4c:	0c000000 	jal	0 <EnBox_SetupAction>
     f50:	8fa6006c 	lw	a2,108(sp)
     f54:	50400009 	beqzl	v0,f7c <EnBox_WaitOpen+0x214>
     f58:	8605001c 	lh	a1,28(s0)
     f5c:	8606001c 	lh	a2,28(s0)
     f60:	02002025 	move	a0,s0
     f64:	8fa5006c 	lw	a1,108(sp)
     f68:	00063143 	sra	a2,a2,0x5
     f6c:	30c6007f 	andi	a2,a2,0x7f
     f70:	0c000000 	jal	0 <EnBox_SetupAction>
     f74:	00063023 	negu	a2,a2
     f78:	8605001c 	lh	a1,28(s0)
     f7c:	8fa4006c 	lw	a0,108(sp)
     f80:	0c000000 	jal	0 <EnBox_SetupAction>
     f84:	30a5001f 	andi	a1,a1,0x1f
     f88:	10400004 	beqz	v0,f9c <EnBox_WaitOpen+0x234>
     f8c:	02002025 	move	a0,s0
     f90:	3c050000 	lui	a1,0x0
     f94:	0c000000 	jal	0 <EnBox_SetupAction>
     f98:	24a50000 	addiu	a1,a1,0
     f9c:	8fbf003c 	lw	ra,60(sp)
     fa0:	8fb00038 	lw	s0,56(sp)
     fa4:	27bd0068 	addiu	sp,sp,104
     fa8:	03e00008 	jr	ra
     fac:	00000000 	nop

00000fb0 <EnBox_Open>:
     fb0:	27bdffd0 	addiu	sp,sp,-48
     fb4:	afbf0024 	sw	ra,36(sp)
     fb8:	afb00020 	sw	s0,32(sp)
     fbc:	afa50034 	sw	a1,52(sp)
     fc0:	8c8e0004 	lw	t6,4(a0)
     fc4:	2401ff7f 	li	at,-129
     fc8:	00808025 	move	s0,a0
     fcc:	01c17824 	and	t7,t6,at
     fd0:	ac8f0004 	sw	t7,4(a0)
     fd4:	24840164 	addiu	a0,a0,356
     fd8:	0c000000 	jal	0 <EnBox_SetupAction>
     fdc:	afa40028 	sw	a0,40(sp)
     fe0:	1040001d 	beqz	v0,1058 <EnBox_Open+0xa8>
     fe4:	3c0541f0 	lui	a1,0x41f0
     fe8:	860201f4 	lh	v0,500(s0)
     fec:	1840000e 	blez	v0,1028 <EnBox_Open+0x78>
     ff0:	2841ff89 	slti	at,v0,-119
     ff4:	28410078 	slti	at,v0,120
     ff8:	10200003 	beqz	at,1008 <EnBox_Open+0x58>
     ffc:	24580001 	addiu	t8,v0,1
    1000:	10000048 	b	1124 <EnBox_Open+0x174>
    1004:	a61801f4 	sh	t8,500(s0)
    1008:	44801000 	mtc1	zero,$f2
    100c:	3c063d4c 	lui	a2,0x3d4c
    1010:	34c6cccd 	ori	a2,a2,0xcccd
    1014:	44051000 	mfc1	a1,$f2
    1018:	0c000000 	jal	0 <EnBox_SetupAction>
    101c:	260401b0 	addiu	a0,s0,432
    1020:	10000041 	b	1128 <EnBox_Open+0x178>
    1024:	8fbf0024 	lw	ra,36(sp)
    1028:	14200003 	bnez	at,1038 <EnBox_Open+0x88>
    102c:	2459ffff 	addiu	t9,v0,-1
    1030:	1000003c 	b	1124 <EnBox_Open+0x174>
    1034:	a61901f4 	sh	t9,500(s0)
    1038:	44801000 	mtc1	zero,$f2
    103c:	3c063d4c 	lui	a2,0x3d4c
    1040:	34c6cccd 	ori	a2,a2,0xcccd
    1044:	44051000 	mfc1	a1,$f2
    1048:	0c000000 	jal	0 <EnBox_SetupAction>
    104c:	260401b0 	addiu	a0,s0,432
    1050:	10000035 	b	1128 <EnBox_Open+0x178>
    1054:	8fbf0024 	lw	ra,36(sp)
    1058:	a7a0002e 	sh	zero,46(sp)
    105c:	0c000000 	jal	0 <EnBox_SetupAction>
    1060:	8fa40028 	lw	a0,40(sp)
    1064:	10400004 	beqz	v0,1078 <EnBox_Open+0xc8>
    1068:	8fa40028 	lw	a0,40(sp)
    106c:	2404281f 	li	a0,10271
    1070:	10000006 	b	108c <EnBox_Open+0xdc>
    1074:	a7a4002e 	sh	a0,46(sp)
    1078:	0c000000 	jal	0 <EnBox_SetupAction>
    107c:	3c0542b4 	lui	a1,0x42b4
    1080:	10400002 	beqz	v0,108c <EnBox_Open+0xdc>
    1084:	24082820 	li	t0,10272
    1088:	a7a8002e 	sh	t0,46(sp)
    108c:	97a4002e 	lhu	a0,46(sp)
    1090:	3c070000 	lui	a3,0x0
    1094:	24e70000 	addiu	a3,a3,0
    1098:	10800007 	beqz	a0,10b8 <EnBox_Open+0x108>
    109c:	260500e4 	addiu	a1,s0,228
    10a0:	3c090000 	lui	t1,0x0
    10a4:	25290000 	addiu	t1,t1,0
    10a8:	afa90014 	sw	t1,20(sp)
    10ac:	24060004 	li	a2,4
    10b0:	0c000000 	jal	0 <EnBox_SetupAction>
    10b4:	afa70010 	sw	a3,16(sp)
    10b8:	8e0a0184 	lw	t2,388(s0)
    10bc:	240b7d00 	li	t3,32000
    10c0:	85420016 	lh	v0,22(t2)
    10c4:	18400017 	blez	v0,1124 <EnBox_Open+0x174>
    10c8:	01626023 	subu	t4,t3,v0
    10cc:	448c2000 	mtc1	t4,$f4
    10d0:	3c010000 	lui	at,0x0
    10d4:	c42800cc 	lwc1	$f8,204(at)
    10d8:	468021a0 	cvt.s.w	$f6,$f4
    10dc:	44801000 	mtc1	zero,$f2
    10e0:	3c013f80 	lui	at,0x3f80
    10e4:	46083282 	mul.s	$f10,$f6,$f8
    10e8:	e60a01b0 	swc1	$f10,432(s0)
    10ec:	c60001b0 	lwc1	$f0,432(s0)
    10f0:	4602003c 	c.lt.s	$f0,$f2
    10f4:	00000000 	nop
    10f8:	45020004 	bc1fl	110c <EnBox_Open+0x15c>
    10fc:	44811000 	mtc1	at,$f2
    1100:	10000008 	b	1124 <EnBox_Open+0x174>
    1104:	e60201b0 	swc1	$f2,432(s0)
    1108:	44811000 	mtc1	at,$f2
    110c:	00000000 	nop
    1110:	4600103c 	c.lt.s	$f2,$f0
    1114:	00000000 	nop
    1118:	45020003 	bc1fl	1128 <EnBox_Open+0x178>
    111c:	8fbf0024 	lw	ra,36(sp)
    1120:	e60201b0 	swc1	$f2,432(s0)
    1124:	8fbf0024 	lw	ra,36(sp)
    1128:	8fb00020 	lw	s0,32(sp)
    112c:	27bd0030 	addiu	sp,sp,48
    1130:	03e00008 	jr	ra
    1134:	00000000 	nop

00001138 <EnBox_SpawnIceSmoke>:
    1138:	27bdffa8 	addiu	sp,sp,-88
    113c:	3c0f0000 	lui	t7,0x0
    1140:	afbf0024 	sw	ra,36(sp)
    1144:	afb00020 	sw	s0,32(sp)
    1148:	afa5005c 	sw	a1,92(sp)
    114c:	25ef0034 	addiu	t7,t7,52
    1150:	8df90000 	lw	t9,0(t7)
    1154:	27ae0040 	addiu	t6,sp,64
    1158:	8df80004 	lw	t8,4(t7)
    115c:	add90000 	sw	t9,0(t6)
    1160:	8df90008 	lw	t9,8(t7)
    1164:	3c090000 	lui	t1,0x0
    1168:	25290040 	addiu	t1,t1,64
    116c:	add80004 	sw	t8,4(t6)
    1170:	add90008 	sw	t9,8(t6)
    1174:	8d2b0000 	lw	t3,0(t1)
    1178:	27a80034 	addiu	t0,sp,52
    117c:	8d2a0004 	lw	t2,4(t1)
    1180:	ad0b0000 	sw	t3,0(t0)
    1184:	8d2b0008 	lw	t3,8(t1)
    1188:	ad0a0004 	sw	t2,4(t0)
    118c:	00808025 	move	s0,a0
    1190:	ad0b0008 	sw	t3,8(t0)
    1194:	908c01fa 	lbu	t4,506(a0)
    1198:	240531f1 	li	a1,12785
    119c:	258d0001 	addiu	t5,t4,1
    11a0:	0c000000 	jal	0 <EnBox_SetupAction>
    11a4:	a08d01fa 	sb	t5,506(a0)
    11a8:	0c000000 	jal	0 <EnBox_SetupAction>
    11ac:	00000000 	nop
    11b0:	3c010000 	lui	at,0x0
    11b4:	c42400d0 	lwc1	$f4,208(at)
    11b8:	4604003c 	c.lt.s	$f0,$f4
    11bc:	00000000 	nop
    11c0:	45020083 	bc1fl	13d0 <EnBox_SpawnIceSmoke+0x298>
    11c4:	8fbf0024 	lw	ra,36(sp)
    11c8:	0c000000 	jal	0 <EnBox_SetupAction>
    11cc:	00000000 	nop
    11d0:	8e180024 	lw	t8,36(s0)
    11d4:	27ae004c 	addiu	t6,sp,76
    11d8:	3c013f80 	lui	at,0x3f80
    11dc:	add80000 	sw	t8,0(t6)
    11e0:	8e0f0028 	lw	t7,40(s0)
    11e4:	46000180 	add.s	$f6,$f0,$f0
    11e8:	44814000 	mtc1	at,$f8
    11ec:	adcf0004 	sw	t7,4(t6)
    11f0:	8e18002c 	lw	t8,44(s0)
    11f4:	24010005 	li	at,5
    11f8:	46083081 	sub.s	$f2,$f6,$f8
    11fc:	add80008 	sw	t8,8(t6)
    1200:	920201f9 	lbu	v0,505(s0)
    1204:	10410007 	beq	v0,at,1224 <EnBox_SpawnIceSmoke+0xec>
    1208:	24010006 	li	at,6
    120c:	10410005 	beq	v0,at,1224 <EnBox_SpawnIceSmoke+0xec>
    1210:	24010007 	li	at,7
    1214:	10410003 	beq	v0,at,1224 <EnBox_SpawnIceSmoke+0xec>
    1218:	24010008 	li	at,8
    121c:	54410034 	bnel	v0,at,12f0 <EnBox_SpawnIceSmoke+0x1b8>
    1220:	86040032 	lh	a0,50(s0)
    1224:	86040032 	lh	a0,50(s0)
    1228:	e7a20030 	swc1	$f2,48(sp)
    122c:	24844000 	addiu	a0,a0,16384
    1230:	00042400 	sll	a0,a0,0x10
    1234:	0c000000 	jal	0 <EnBox_SetupAction>
    1238:	00042403 	sra	a0,a0,0x10
    123c:	3c014120 	lui	at,0x4120
    1240:	44815000 	mtc1	at,$f10
    1244:	c7a20030 	lwc1	$f2,48(sp)
    1248:	c7b0004c 	lwc1	$f16,76(sp)
    124c:	460a1302 	mul.s	$f12,$f2,$f10
    1250:	00000000 	nop
    1254:	46006482 	mul.s	$f18,$f12,$f0
    1258:	46128100 	add.s	$f4,$f16,$f18
    125c:	e7a4004c 	swc1	$f4,76(sp)
    1260:	86040032 	lh	a0,50(s0)
    1264:	e7ac0028 	swc1	$f12,40(sp)
    1268:	24844000 	addiu	a0,a0,16384
    126c:	00042400 	sll	a0,a0,0x10
    1270:	0c000000 	jal	0 <EnBox_SetupAction>
    1274:	00042403 	sra	a0,a0,0x10
    1278:	c7ac0028 	lwc1	$f12,40(sp)
    127c:	c7a60054 	lwc1	$f6,84(sp)
    1280:	46006202 	mul.s	$f8,$f12,$f0
    1284:	46083280 	add.s	$f10,$f6,$f8
    1288:	0c000000 	jal	0 <EnBox_SetupAction>
    128c:	e7aa0054 	swc1	$f10,84(sp)
    1290:	46000400 	add.s	$f16,$f0,$f0
    1294:	3c013f80 	lui	at,0x3f80
    1298:	44819000 	mtc1	at,$f18
    129c:	86040032 	lh	a0,50(s0)
    12a0:	46128081 	sub.s	$f2,$f16,$f18
    12a4:	0c000000 	jal	0 <EnBox_SetupAction>
    12a8:	e7a20030 	swc1	$f2,48(sp)
    12ac:	3c010000 	lui	at,0x0
    12b0:	c42400d4 	lwc1	$f4,212(at)
    12b4:	c7a20030 	lwc1	$f2,48(sp)
    12b8:	3c010000 	lui	at,0x0
    12bc:	c42800d8 	lwc1	$f8,216(at)
    12c0:	46041302 	mul.s	$f12,$f2,$f4
    12c4:	e7a80044 	swc1	$f8,68(sp)
    12c8:	460c0182 	mul.s	$f6,$f0,$f12
    12cc:	e7a60040 	swc1	$f6,64(sp)
    12d0:	86040032 	lh	a0,50(s0)
    12d4:	0c000000 	jal	0 <EnBox_SetupAction>
    12d8:	e7ac0028 	swc1	$f12,40(sp)
    12dc:	c7ac0028 	lwc1	$f12,40(sp)
    12e0:	460c0282 	mul.s	$f10,$f0,$f12
    12e4:	10000032 	b	13b0 <EnBox_SpawnIceSmoke+0x278>
    12e8:	e7aa0048 	swc1	$f10,72(sp)
    12ec:	86040032 	lh	a0,50(s0)
    12f0:	e7a20030 	swc1	$f2,48(sp)
    12f4:	24844000 	addiu	a0,a0,16384
    12f8:	00042400 	sll	a0,a0,0x10
    12fc:	0c000000 	jal	0 <EnBox_SetupAction>
    1300:	00042403 	sra	a0,a0,0x10
    1304:	3c0141a0 	lui	at,0x41a0
    1308:	44818000 	mtc1	at,$f16
    130c:	c7a20030 	lwc1	$f2,48(sp)
    1310:	c7b2004c 	lwc1	$f18,76(sp)
    1314:	46101302 	mul.s	$f12,$f2,$f16
    1318:	00000000 	nop
    131c:	46006102 	mul.s	$f4,$f12,$f0
    1320:	46049180 	add.s	$f6,$f18,$f4
    1324:	e7a6004c 	swc1	$f6,76(sp)
    1328:	86040032 	lh	a0,50(s0)
    132c:	e7ac0028 	swc1	$f12,40(sp)
    1330:	24844000 	addiu	a0,a0,16384
    1334:	00042400 	sll	a0,a0,0x10
    1338:	0c000000 	jal	0 <EnBox_SetupAction>
    133c:	00042403 	sra	a0,a0,0x10
    1340:	c7ac0028 	lwc1	$f12,40(sp)
    1344:	c7a80054 	lwc1	$f8,84(sp)
    1348:	46006282 	mul.s	$f10,$f12,$f0
    134c:	460a4400 	add.s	$f16,$f8,$f10
    1350:	0c000000 	jal	0 <EnBox_SetupAction>
    1354:	e7b00054 	swc1	$f16,84(sp)
    1358:	46000480 	add.s	$f18,$f0,$f0
    135c:	3c013f80 	lui	at,0x3f80
    1360:	44812000 	mtc1	at,$f4
    1364:	86040032 	lh	a0,50(s0)
    1368:	46049081 	sub.s	$f2,$f18,$f4
    136c:	0c000000 	jal	0 <EnBox_SetupAction>
    1370:	e7a20030 	swc1	$f2,48(sp)
    1374:	3c010000 	lui	at,0x0
    1378:	c42600dc 	lwc1	$f6,220(at)
    137c:	c7a20030 	lwc1	$f2,48(sp)
    1380:	3c010000 	lui	at,0x0
    1384:	c42a00e0 	lwc1	$f10,224(at)
    1388:	46061302 	mul.s	$f12,$f2,$f6
    138c:	e7aa0044 	swc1	$f10,68(sp)
    1390:	460c0202 	mul.s	$f8,$f0,$f12
    1394:	e7a80040 	swc1	$f8,64(sp)
    1398:	86040032 	lh	a0,50(s0)
    139c:	0c000000 	jal	0 <EnBox_SetupAction>
    13a0:	e7ac0028 	swc1	$f12,40(sp)
    13a4:	c7ac0028 	lwc1	$f12,40(sp)
    13a8:	460c0402 	mul.s	$f16,$f0,$f12
    13ac:	e7b00048 	swc1	$f16,72(sp)
    13b0:	24190096 	li	t9,150
    13b4:	afb90010 	sw	t9,16(sp)
    13b8:	8fa4005c 	lw	a0,92(sp)
    13bc:	27a5004c 	addiu	a1,sp,76
    13c0:	27a60040 	addiu	a2,sp,64
    13c4:	0c000000 	jal	0 <EnBox_SetupAction>
    13c8:	27a70034 	addiu	a3,sp,52
    13cc:	8fbf0024 	lw	ra,36(sp)
    13d0:	8fb00020 	lw	s0,32(sp)
    13d4:	27bd0058 	addiu	sp,sp,88
    13d8:	03e00008 	jr	ra
    13dc:	00000000 	nop

000013e0 <EnBox_Update>:
    13e0:	27bdffd8 	addiu	sp,sp,-40
    13e4:	afbf0024 	sw	ra,36(sp)
    13e8:	afb00020 	sw	s0,32(sp)
    13ec:	afa5002c 	sw	a1,44(sp)
    13f0:	908201f6 	lbu	v0,502(a0)
    13f4:	00808025 	move	s0,a0
    13f8:	304e0010 	andi	t6,v0,0x10
    13fc:	11c00004 	beqz	t6,1410 <EnBox_Update+0x30>
    1400:	304fffef 	andi	t7,v0,0xffef
    1404:	a08f01f6 	sb	t7,502(a0)
    1408:	0c000000 	jal	0 <EnBox_SetupAction>
    140c:	8fa5002c 	lw	a1,44(sp)
    1410:	8e1901b4 	lw	t9,436(s0)
    1414:	02002025 	move	a0,s0
    1418:	8fa5002c 	lw	a1,44(sp)
    141c:	0320f809 	jalr	t9
    1420:	00000000 	nop
    1424:	921801f6 	lbu	t8,502(s0)
    1428:	33080001 	andi	t0,t8,0x1
    142c:	5500000d 	bnezl	t0,1464 <EnBox_Update+0x84>
    1430:	920201f9 	lbu	v0,505(s0)
    1434:	0c000000 	jal	0 <EnBox_SetupAction>
    1438:	02002025 	move	a0,s0
    143c:	44800000 	mtc1	zero,$f0
    1440:	2409001c 	li	t1,28
    1444:	afa90014 	sw	t1,20(sp)
    1448:	44060000 	mfc1	a2,$f0
    144c:	44070000 	mfc1	a3,$f0
    1450:	8fa4002c 	lw	a0,44(sp)
    1454:	02002825 	move	a1,s0
    1458:	0c000000 	jal	0 <EnBox_SetupAction>
    145c:	e7a00010 	swc1	$f0,16(sp)
    1460:	920201f9 	lbu	v0,505(s0)
    1464:	24010005 	li	at,5
    1468:	02002025 	move	a0,s0
    146c:	10410007 	beq	v0,at,148c <EnBox_Update+0xac>
    1470:	24010006 	li	at,6
    1474:	10410005 	beq	v0,at,148c <EnBox_Update+0xac>
    1478:	24010007 	li	at,7
    147c:	10410003 	beq	v0,at,148c <EnBox_Update+0xac>
    1480:	24010008 	li	at,8
    1484:	14410005 	bne	v0,at,149c <EnBox_Update+0xbc>
    1488:	3c054220 	lui	a1,0x4220
    148c:	0c000000 	jal	0 <EnBox_SetupAction>
    1490:	3c0541a0 	lui	a1,0x41a0
    1494:	10000004 	b	14a8 <EnBox_Update+0xc8>
    1498:	860a001c 	lh	t2,28(s0)
    149c:	0c000000 	jal	0 <EnBox_SetupAction>
    14a0:	02002025 	move	a0,s0
    14a4:	860a001c 	lh	t2,28(s0)
    14a8:	2401007c 	li	at,124
    14ac:	000a5943 	sra	t3,t2,0x5
    14b0:	316c007f 	andi	t4,t3,0x7f
    14b4:	55810014 	bnel	t4,at,1508 <EnBox_Update+0x128>
    14b8:	8fbf0024 	lw	ra,36(sp)
    14bc:	8e0e01b4 	lw	t6,436(s0)
    14c0:	3c0d0000 	lui	t5,0x0
    14c4:	25ad0000 	addiu	t5,t5,0
    14c8:	15ae000e 	bne	t5,t6,1504 <EnBox_Update+0x124>
    14cc:	3c014234 	lui	at,0x4234
    14d0:	44812000 	mtc1	at,$f4
    14d4:	c606017c 	lwc1	$f6,380(s0)
    14d8:	4606203c 	c.lt.s	$f4,$f6
    14dc:	00000000 	nop
    14e0:	45020009 	bc1fl	1508 <EnBox_Update+0x128>
    14e4:	8fbf0024 	lw	ra,36(sp)
    14e8:	920f01fa 	lbu	t7,506(s0)
    14ec:	02002025 	move	a0,s0
    14f0:	29e10064 	slti	at,t7,100
    14f4:	50200004 	beqzl	at,1508 <EnBox_Update+0x128>
    14f8:	8fbf0024 	lw	ra,36(sp)
    14fc:	0c000000 	jal	0 <EnBox_SetupAction>
    1500:	8fa5002c 	lw	a1,44(sp)
    1504:	8fbf0024 	lw	ra,36(sp)
    1508:	8fb00020 	lw	s0,32(sp)
    150c:	27bd0028 	addiu	sp,sp,40
    1510:	03e00008 	jr	ra
    1514:	00000000 	nop

00001518 <EnBox_PostLimbDraw>:
    1518:	27bdffd0 	addiu	sp,sp,-48
    151c:	24010001 	li	at,1
    1520:	afbf0014 	sw	ra,20(sp)
    1524:	afa40030 	sw	a0,48(sp)
    1528:	afa60038 	sw	a2,56(sp)
    152c:	14a10029 	bne	a1,at,15d4 <EnBox_PostLimbDraw+0xbc>
    1530:	afa7003c 	sw	a3,60(sp)
    1534:	8fa70044 	lw	a3,68(sp)
    1538:	3c0fda38 	lui	t7,0xda38
    153c:	35ef0003 	ori	t7,t7,0x3
    1540:	8ce20000 	lw	v0,0(a3)
    1544:	3c050000 	lui	a1,0x0
    1548:	24a50020 	addiu	a1,a1,32
    154c:	244e0008 	addiu	t6,v0,8
    1550:	acee0000 	sw	t6,0(a3)
    1554:	ac4f0000 	sw	t7,0(v0)
    1558:	8fb80030 	lw	t8,48(sp)
    155c:	240605d4 	li	a2,1492
    1560:	8f040000 	lw	a0,0(t8)
    1564:	0c000000 	jal	0 <EnBox_SetupAction>
    1568:	afa20024 	sw	v0,36(sp)
    156c:	8fa30024 	lw	v1,36(sp)
    1570:	8fa70044 	lw	a3,68(sp)
    1574:	24010002 	li	at,2
    1578:	ac620004 	sw	v0,4(v1)
    157c:	8fb90040 	lw	t9,64(sp)
    1580:	3c0ade00 	lui	t2,0xde00
    1584:	3c0dde00 	lui	t5,0xde00
    1588:	932801f9 	lbu	t0,505(t9)
    158c:	5101000a 	beql	t0,at,15b8 <EnBox_PostLimbDraw+0xa0>
    1590:	8ce20000 	lw	v0,0(a3)
    1594:	8ce20000 	lw	v0,0(a3)
    1598:	3c0b0000 	lui	t3,0x0
    159c:	256b0000 	addiu	t3,t3,0
    15a0:	24490008 	addiu	t1,v0,8
    15a4:	ace90000 	sw	t1,0(a3)
    15a8:	ac4b0004 	sw	t3,4(v0)
    15ac:	10000032 	b	1678 <EnBox_PostLimbDraw+0x160>
    15b0:	ac4a0000 	sw	t2,0(v0)
    15b4:	8ce20000 	lw	v0,0(a3)
    15b8:	3c0e0000 	lui	t6,0x0
    15bc:	25ce0000 	addiu	t6,t6,0
    15c0:	244c0008 	addiu	t4,v0,8
    15c4:	acec0000 	sw	t4,0(a3)
    15c8:	ac4e0004 	sw	t6,4(v0)
    15cc:	1000002a 	b	1678 <EnBox_PostLimbDraw+0x160>
    15d0:	ac4d0000 	sw	t5,0(v0)
    15d4:	24010003 	li	at,3
    15d8:	14a10027 	bne	a1,at,1678 <EnBox_PostLimbDraw+0x160>
    15dc:	8fa70044 	lw	a3,68(sp)
    15e0:	8ce20000 	lw	v0,0(a3)
    15e4:	3c18da38 	lui	t8,0xda38
    15e8:	37180003 	ori	t8,t8,0x3
    15ec:	244f0008 	addiu	t7,v0,8
    15f0:	acef0000 	sw	t7,0(a3)
    15f4:	ac580000 	sw	t8,0(v0)
    15f8:	8fb90030 	lw	t9,48(sp)
    15fc:	3c050000 	lui	a1,0x0
    1600:	24a50030 	addiu	a1,a1,48
    1604:	8f240000 	lw	a0,0(t9)
    1608:	240605de 	li	a2,1502
    160c:	0c000000 	jal	0 <EnBox_SetupAction>
    1610:	afa20018 	sw	v0,24(sp)
    1614:	8fa30018 	lw	v1,24(sp)
    1618:	8fa70044 	lw	a3,68(sp)
    161c:	24010002 	li	at,2
    1620:	ac620004 	sw	v0,4(v1)
    1624:	8fa80040 	lw	t0,64(sp)
    1628:	3c0bde00 	lui	t3,0xde00
    162c:	3c0ede00 	lui	t6,0xde00
    1630:	910901f9 	lbu	t1,505(t0)
    1634:	5121000a 	beql	t1,at,1660 <EnBox_PostLimbDraw+0x148>
    1638:	8ce20000 	lw	v0,0(a3)
    163c:	8ce20000 	lw	v0,0(a3)
    1640:	3c0c0000 	lui	t4,0x0
    1644:	258c0000 	addiu	t4,t4,0
    1648:	244a0008 	addiu	t2,v0,8
    164c:	acea0000 	sw	t2,0(a3)
    1650:	ac4c0004 	sw	t4,4(v0)
    1654:	10000008 	b	1678 <EnBox_PostLimbDraw+0x160>
    1658:	ac4b0000 	sw	t3,0(v0)
    165c:	8ce20000 	lw	v0,0(a3)
    1660:	3c0f0000 	lui	t7,0x0
    1664:	25ef0000 	addiu	t7,t7,0
    1668:	244d0008 	addiu	t5,v0,8
    166c:	aced0000 	sw	t5,0(a3)
    1670:	ac4f0004 	sw	t7,4(v0)
    1674:	ac4e0000 	sw	t6,0(v0)
    1678:	8fbf0014 	lw	ra,20(sp)
    167c:	27bd0030 	addiu	sp,sp,48
    1680:	03e00008 	jr	ra
    1684:	00000000 	nop

00001688 <EnBox_EmptyDList>:
    1688:	27bdffe0 	addiu	sp,sp,-32
    168c:	afbf0014 	sw	ra,20(sp)
    1690:	0c000000 	jal	0 <EnBox_SetupAction>
    1694:	24050008 	li	a1,8
    1698:	14400009 	bnez	v0,16c0 <EnBox_EmptyDList+0x38>
    169c:	00401825 	move	v1,v0
    16a0:	3c040000 	lui	a0,0x0
    16a4:	3c050000 	lui	a1,0x0
    16a8:	24a50050 	addiu	a1,a1,80
    16ac:	24840040 	addiu	a0,a0,64
    16b0:	240605f8 	li	a2,1528
    16b4:	0c000000 	jal	0 <EnBox_SetupAction>
    16b8:	afa20018 	sw	v0,24(sp)
    16bc:	8fa30018 	lw	v1,24(sp)
    16c0:	3c0edf00 	lui	t6,0xdf00
    16c4:	ac6e0000 	sw	t6,0(v1)
    16c8:	ac600004 	sw	zero,4(v1)
    16cc:	8fbf0014 	lw	ra,20(sp)
    16d0:	00601025 	move	v0,v1
    16d4:	27bd0020 	addiu	sp,sp,32
    16d8:	03e00008 	jr	ra
    16dc:	00000000 	nop

000016e0 <func_809CA4A0>:
    16e0:	27bdffe0 	addiu	sp,sp,-32
    16e4:	afbf0014 	sw	ra,20(sp)
    16e8:	0c000000 	jal	0 <EnBox_SetupAction>
    16ec:	24050010 	li	a1,16
    16f0:	14400009 	bnez	v0,1718 <func_809CA4A0+0x38>
    16f4:	00401825 	move	v1,v0
    16f8:	3c040000 	lui	a0,0x0
    16fc:	3c050000 	lui	a1,0x0
    1700:	24a50070 	addiu	a1,a1,112
    1704:	24840060 	addiu	a0,a0,96
    1708:	2406060a 	li	a2,1546
    170c:	0c000000 	jal	0 <EnBox_SetupAction>
    1710:	afa20018 	sw	v0,24(sp)
    1714:	8fa30018 	lw	v1,24(sp)
    1718:	00601025 	move	v0,v1
    171c:	3c0ee200 	lui	t6,0xe200
    1720:	3c0fc810 	lui	t7,0xc810
    1724:	35ef49f8 	ori	t7,t7,0x49f8
    1728:	35ce001c 	ori	t6,t6,0x1c
    172c:	ac4e0000 	sw	t6,0(v0)
    1730:	ac4f0004 	sw	t7,4(v0)
    1734:	3c18df00 	lui	t8,0xdf00
    1738:	ac780008 	sw	t8,8(v1)
    173c:	ac60000c 	sw	zero,12(v1)
    1740:	8fbf0014 	lw	ra,20(sp)
    1744:	00602025 	move	a0,v1
    1748:	24630008 	addiu	v1,v1,8
    174c:	00801025 	move	v0,a0
    1750:	03e00008 	jr	ra
    1754:	27bd0020 	addiu	sp,sp,32

00001758 <func_809CA518>:
    1758:	27bdffe0 	addiu	sp,sp,-32
    175c:	afbf0014 	sw	ra,20(sp)
    1760:	0c000000 	jal	0 <EnBox_SetupAction>
    1764:	24050010 	li	a1,16
    1768:	14400009 	bnez	v0,1790 <func_809CA518+0x38>
    176c:	00401825 	move	v1,v0
    1770:	3c040000 	lui	a0,0x0
    1774:	3c050000 	lui	a1,0x0
    1778:	24a50090 	addiu	a1,a1,144
    177c:	24840080 	addiu	a0,a0,128
    1780:	2406061c 	li	a2,1564
    1784:	0c000000 	jal	0 <EnBox_SetupAction>
    1788:	afa20018 	sw	v0,24(sp)
    178c:	8fa30018 	lw	v1,24(sp)
    1790:	00601025 	move	v0,v1
    1794:	3c0ee200 	lui	t6,0xe200
    1798:	3c0fc811 	lui	t7,0xc811
    179c:	35ef2078 	ori	t7,t7,0x2078
    17a0:	35ce001c 	ori	t6,t6,0x1c
    17a4:	ac4e0000 	sw	t6,0(v0)
    17a8:	ac4f0004 	sw	t7,4(v0)
    17ac:	3c18df00 	lui	t8,0xdf00
    17b0:	ac780008 	sw	t8,8(v1)
    17b4:	ac60000c 	sw	zero,12(v1)
    17b8:	8fbf0014 	lw	ra,20(sp)
    17bc:	00602025 	move	a0,v1
    17c0:	24630008 	addiu	v1,v1,8
    17c4:	00801025 	move	v0,a0
    17c8:	03e00008 	jr	ra
    17cc:	27bd0020 	addiu	sp,sp,32

000017d0 <EnBox_Draw>:
    17d0:	27bdff90 	addiu	sp,sp,-112
    17d4:	afbf002c 	sw	ra,44(sp)
    17d8:	afb10028 	sw	s1,40(sp)
    17dc:	afb00024 	sw	s0,36(sp)
    17e0:	afa50074 	sw	a1,116(sp)
    17e4:	8ca50000 	lw	a1,0(a1)
    17e8:	00808825 	move	s1,a0
    17ec:	3c060000 	lui	a2,0x0
    17f0:	24c600a0 	addiu	a2,a2,160
    17f4:	27a40058 	addiu	a0,sp,88
    17f8:	2407062d 	li	a3,1581
    17fc:	0c000000 	jal	0 <EnBox_SetupAction>
    1800:	00a08025 	move	s0,a1
    1804:	922301f7 	lbu	v1,503(s1)
    1808:	240100ff 	li	at,255
    180c:	54610008 	bnel	v1,at,1830 <EnBox_Draw+0x60>
    1810:	8e2f0004 	lw	t7,4(s1)
    1814:	922201f9 	lbu	v0,505(s1)
    1818:	24010004 	li	at,4
    181c:	10410003 	beq	v0,at,182c <EnBox_Draw+0x5c>
    1820:	24010006 	li	at,6
    1824:	5441000d 	bnel	v0,at,185c <EnBox_Draw+0x8c>
    1828:	8e0202c0 	lw	v0,704(s0)
    182c:	8e2f0004 	lw	t7,4(s1)
    1830:	24010080 	li	at,128
    1834:	31f80080 	andi	t8,t7,0x80
    1838:	13010030 	beq	t8,at,18fc <EnBox_Draw+0x12c>
    183c:	00000000 	nop
    1840:	922201f9 	lbu	v0,505(s1)
    1844:	24010004 	li	at,4
    1848:	10410003 	beq	v0,at,1858 <EnBox_Draw+0x88>
    184c:	24010006 	li	at,6
    1850:	1441002a 	bne	v0,at,18fc <EnBox_Draw+0x12c>
    1854:	00000000 	nop
    1858:	8e0202c0 	lw	v0,704(s0)
    185c:	3c08e700 	lui	t0,0xe700
    1860:	3c0afb00 	lui	t2,0xfb00
    1864:	24590008 	addiu	t9,v0,8
    1868:	ae1902c0 	sw	t9,704(s0)
    186c:	ac480000 	sw	t0,0(v0)
    1870:	ac400004 	sw	zero,4(v0)
    1874:	8e0202c0 	lw	v0,704(s0)
    1878:	240b00ff 	li	t3,255
    187c:	3c0ddb06 	lui	t5,0xdb06
    1880:	24490008 	addiu	t1,v0,8
    1884:	ae0902c0 	sw	t1,704(s0)
    1888:	ac4a0000 	sw	t2,0(v0)
    188c:	ac4b0004 	sw	t3,4(v0)
    1890:	8e0202c0 	lw	v0,704(s0)
    1894:	35ad0020 	ori	t5,t5,0x20
    1898:	244c0008 	addiu	t4,v0,8
    189c:	ae0c02c0 	sw	t4,704(s0)
    18a0:	ac4d0000 	sw	t5,0(v0)
    18a4:	8fae0074 	lw	t6,116(sp)
    18a8:	8dc40000 	lw	a0,0(t6)
    18ac:	0c000000 	jal	0 <EnBox_SetupAction>
    18b0:	afa2004c 	sw	v0,76(sp)
    18b4:	8fa3004c 	lw	v1,76(sp)
    18b8:	ac620004 	sw	v0,4(v1)
    18bc:	8faf0074 	lw	t7,116(sp)
    18c0:	0c000000 	jal	0 <EnBox_SetupAction>
    18c4:	8de40000 	lw	a0,0(t7)
    18c8:	8e250168 	lw	a1,360(s1)
    18cc:	8e260184 	lw	a2,388(s1)
    18d0:	3c180000 	lui	t8,0x0
    18d4:	27180000 	addiu	t8,t8,0
    18d8:	afb80010 	sw	t8,16(sp)
    18dc:	afb10014 	sw	s1,20(sp)
    18e0:	8e1902c0 	lw	t9,704(s0)
    18e4:	8fa40074 	lw	a0,116(sp)
    18e8:	00003825 	move	a3,zero
    18ec:	0c000000 	jal	0 <EnBox_SetupAction>
    18f0:	afb90018 	sw	t9,24(sp)
    18f4:	1000003e 	b	19f0 <EnBox_Draw+0x220>
    18f8:	ae0202c0 	sw	v0,704(s0)
    18fc:	5060003d 	beqzl	v1,19f4 <EnBox_Draw+0x224>
    1900:	8fad0074 	lw	t5,116(sp)
    1904:	8e0202d0 	lw	v0,720(s0)
    1908:	3c09e700 	lui	t1,0xe700
    190c:	24480008 	addiu	t0,v0,8
    1910:	ae0802d0 	sw	t0,720(s0)
    1914:	ac400004 	sw	zero,4(v0)
    1918:	ac490000 	sw	t1,0(v0)
    191c:	8faa0074 	lw	t2,116(sp)
    1920:	0c000000 	jal	0 <EnBox_SetupAction>
    1924:	8d440000 	lw	a0,0(t2)
    1928:	8e0202d0 	lw	v0,720(s0)
    192c:	3c0cfb00 	lui	t4,0xfb00
    1930:	24010004 	li	at,4
    1934:	244b0008 	addiu	t3,v0,8
    1938:	ae0b02d0 	sw	t3,720(s0)
    193c:	ac4c0000 	sw	t4,0(v0)
    1940:	922e01f7 	lbu	t6,503(s1)
    1944:	ac4e0004 	sw	t6,4(v0)
    1948:	922201f9 	lbu	v0,505(s1)
    194c:	10410003 	beq	v0,at,195c <EnBox_Draw+0x18c>
    1950:	24010006 	li	at,6
    1954:	5441000f 	bnel	v0,at,1994 <EnBox_Draw+0x1c4>
    1958:	8e0202d0 	lw	v0,720(s0)
    195c:	8e0202d0 	lw	v0,720(s0)
    1960:	3c18db06 	lui	t8,0xdb06
    1964:	37180020 	ori	t8,t8,0x20
    1968:	244f0008 	addiu	t7,v0,8
    196c:	ae0f02d0 	sw	t7,720(s0)
    1970:	ac580000 	sw	t8,0(v0)
    1974:	8fb90074 	lw	t9,116(sp)
    1978:	8f240000 	lw	a0,0(t9)
    197c:	0c000000 	jal	0 <EnBox_SetupAction>
    1980:	afa20040 	sw	v0,64(sp)
    1984:	8fa30040 	lw	v1,64(sp)
    1988:	1000000d 	b	19c0 <EnBox_Draw+0x1f0>
    198c:	ac620004 	sw	v0,4(v1)
    1990:	8e0202d0 	lw	v0,720(s0)
    1994:	3c09db06 	lui	t1,0xdb06
    1998:	35290020 	ori	t1,t1,0x20
    199c:	24480008 	addiu	t0,v0,8
    19a0:	ae0802d0 	sw	t0,720(s0)
    19a4:	ac490000 	sw	t1,0(v0)
    19a8:	8faa0074 	lw	t2,116(sp)
    19ac:	8d440000 	lw	a0,0(t2)
    19b0:	0c000000 	jal	0 <EnBox_SetupAction>
    19b4:	afa2003c 	sw	v0,60(sp)
    19b8:	8fa3003c 	lw	v1,60(sp)
    19bc:	ac620004 	sw	v0,4(v1)
    19c0:	8e250168 	lw	a1,360(s1)
    19c4:	8e260184 	lw	a2,388(s1)
    19c8:	3c0b0000 	lui	t3,0x0
    19cc:	256b0000 	addiu	t3,t3,0
    19d0:	afab0010 	sw	t3,16(sp)
    19d4:	afb10014 	sw	s1,20(sp)
    19d8:	8e0c02d0 	lw	t4,720(s0)
    19dc:	8fa40074 	lw	a0,116(sp)
    19e0:	00003825 	move	a3,zero
    19e4:	0c000000 	jal	0 <EnBox_SetupAction>
    19e8:	afac0018 	sw	t4,24(sp)
    19ec:	ae0202d0 	sw	v0,720(s0)
    19f0:	8fad0074 	lw	t5,116(sp)
    19f4:	3c060000 	lui	a2,0x0
    19f8:	24c600b0 	addiu	a2,a2,176
    19fc:	27a40058 	addiu	a0,sp,88
    1a00:	24070667 	li	a3,1639
    1a04:	0c000000 	jal	0 <EnBox_SetupAction>
    1a08:	8da50000 	lw	a1,0(t5)
    1a0c:	8fbf002c 	lw	ra,44(sp)
    1a10:	8fb00024 	lw	s0,36(sp)
    1a14:	8fb10028 	lw	s1,40(sp)
    1a18:	03e00008 	jr	ra
    1a1c:	27bd0070 	addiu	sp,sp,112
