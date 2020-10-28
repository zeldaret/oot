
build/src/overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsKakera_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb10018 	sw	s1,24(sp)
   c:	afb00014 	sw	s0,20(sp)
  10:	afa40020 	sw	a0,32(sp)
  14:	afa50024 	sw	a1,36(sp)
  18:	8cef0000 	lw	t7,0(a3)
  1c:	24090065 	li	t1,101
  20:	00802825 	move	a1,a0
  24:	accf0000 	sw	t7,0(a2)
  28:	8cee0004 	lw	t6,4(a3)
  2c:	00c08025 	move	s0,a2
  30:	00e08825 	move	s1,a3
  34:	acce0004 	sw	t6,4(a2)
  38:	8cef0008 	lw	t7,8(a3)
  3c:	3c040000 	lui	a0,0x0
  40:	accf0008 	sw	t7,8(a2)
  44:	8cf9000c 	lw	t9,12(a3)
  48:	acd9000c 	sw	t9,12(a2)
  4c:	8cf80010 	lw	t8,16(a3)
  50:	acd80010 	sw	t8,16(a2)
  54:	8cf90014 	lw	t9,20(a3)
  58:	acd90014 	sw	t9,20(a2)
  5c:	8ce80034 	lw	t0,52(a3)
  60:	a0c9005e 	sb	t1,94(a2)
  64:	a4c8005c 	sh	t0,92(a2)
  68:	8ce3003c 	lw	v1,60(a3)
  6c:	10600011 	beqz	v1,b4 <EffectSsKakera_Init+0xb4>
  70:	00000000 	nop
  74:	acc30038 	sw	v1,56(a2)
  78:	84e6003a 	lh	a2,58(a3)
  7c:	24010001 	li	at,1
  80:	240affff 	li	t2,-1
  84:	10c10005 	beq	a2,at,9c <EffectSsKakera_Init+0x9c>
  88:	24010002 	li	at,2
  8c:	10c10003 	beq	a2,at,9c <EffectSsKakera_Init+0x9c>
  90:	24010003 	li	at,3
  94:	14c10003 	bne	a2,at,a4 <EffectSsKakera_Init+0xa4>
  98:	02002025 	move	a0,s0
  9c:	1000000b 	b	cc <EffectSsKakera_Init+0xcc>
  a0:	a60a0054 	sh	t2,84(s0)
  a4:	0c000000 	jal	0 <EffectSsKakera_Init>
  a8:	a6060054 	sh	a2,84(s0)
  ac:	10000007 	b	cc <EffectSsKakera_Init+0xcc>
  b0:	00000000 	nop
  b4:	0c000000 	jal	0 <EffectSsKakera_Init>
  b8:	24840000 	addiu	a0,a0,0
  bc:	3c040000 	lui	a0,0x0
  c0:	24840014 	addiu	a0,a0,20
  c4:	0c000000 	jal	0 <EffectSsKakera_Init>
  c8:	240500b2 	li	a1,178
  cc:	3c0b0000 	lui	t3,0x0
  d0:	3c0c0000 	lui	t4,0x0
  d4:	256b0000 	addiu	t3,t3,0
  d8:	258c0000 	addiu	t4,t4,0
  dc:	ae0b0028 	sw	t3,40(s0)
  e0:	ae0c0024 	sw	t4,36(s0)
  e4:	8e2e0018 	lw	t6,24(s1)
  e8:	ae0e002c 	sw	t6,44(s0)
  ec:	8e2d001c 	lw	t5,28(s1)
  f0:	ae0d0030 	sw	t5,48(s0)
  f4:	8e2e0020 	lw	t6,32(s1)
  f8:	ae0e0034 	sw	t6,52(s0)
  fc:	862f002c 	lh	t7,44(s1)
 100:	a60f0040 	sh	t7,64(s0)
 104:	86380024 	lh	t8,36(s1)
 108:	0c000000 	jal	0 <EffectSsKakera_Init>
 10c:	a6180042 	sh	t8,66(s0)
 110:	3c010000 	lui	at,0x0
 114:	c42400a8 	lwc1	$f4,168(at)
 118:	46040182 	mul.s	$f6,$f0,$f4
 11c:	4600320d 	trunc.w.s	$f8,$f6
 120:	44084000 	mfc1	t0,$f8
 124:	0c000000 	jal	0 <EffectSsKakera_Init>
 128:	a6080044 	sh	t0,68(s0)
 12c:	3c010000 	lui	at,0x0
 130:	c42a00ac 	lwc1	$f10,172(at)
 134:	24020001 	li	v0,1
 138:	460a0402 	mul.s	$f16,$f0,$f10
 13c:	4600848d 	trunc.w.s	$f18,$f16
 140:	440a9000 	mfc1	t2,$f18
 144:	00000000 	nop
 148:	a60a0046 	sh	t2,70(s0)
 14c:	862b0026 	lh	t3,38(s1)
 150:	a60b0048 	sh	t3,72(s0)
 154:	862c0028 	lh	t4,40(s1)
 158:	a60c004a 	sh	t4,74(s0)
 15c:	862d002a 	lh	t5,42(s1)
 160:	a60d004c 	sh	t5,76(s0)
 164:	862e002e 	lh	t6,46(s1)
 168:	a60e004e 	sh	t6,78(s0)
 16c:	862f0030 	lh	t7,48(s1)
 170:	a60f0050 	sh	t7,80(s0)
 174:	86380032 	lh	t8,50(s1)
 178:	a6180052 	sh	t8,82(s0)
 17c:	86390038 	lh	t9,56(s1)
 180:	a6190058 	sh	t9,88(s0)
 184:	8fbf001c 	lw	ra,28(sp)
 188:	8fb10018 	lw	s1,24(sp)
 18c:	8fb00014 	lw	s0,20(sp)
 190:	03e00008 	jr	ra
 194:	27bd0020 	addiu	sp,sp,32

00000198 <func_809A9818>:
 198:	44802000 	mtc1	zero,$f4
 19c:	27bdffe8 	addiu	sp,sp,-24
 1a0:	3c040000 	lui	a0,0x0
 1a4:	4604703c 	c.lt.s	$f14,$f4
 1a8:	afbf0014 	sw	ra,20(sp)
 1ac:	e7ac0018 	swc1	$f12,24(sp)
 1b0:	24840028 	addiu	a0,a0,40
 1b4:	45000004 	bc1f	1c8 <func_809A9818+0x30>
 1b8:	00000000 	nop
 1bc:	0c000000 	jal	0 <EffectSsKakera_Init>
 1c0:	e7ae001c 	swc1	$f14,28(sp)
 1c4:	c7ae001c 	lwc1	$f14,28(sp)
 1c8:	0c000000 	jal	0 <EffectSsKakera_Init>
 1cc:	e7ae001c 	swc1	$f14,28(sp)
 1d0:	c7ae001c 	lwc1	$f14,28(sp)
 1d4:	8fbf0014 	lw	ra,20(sp)
 1d8:	c7aa0018 	lwc1	$f10,24(sp)
 1dc:	460e0082 	mul.s	$f2,$f0,$f14
 1e0:	27bd0018 	addiu	sp,sp,24
 1e4:	46021180 	add.s	$f6,$f2,$f2
 1e8:	460e3201 	sub.s	$f8,$f6,$f14
 1ec:	03e00008 	jr	ra
 1f0:	460a4000 	add.s	$f0,$f8,$f10

000001f4 <EffectSsKakera_Draw>:
 1f4:	27bdff98 	addiu	sp,sp,-104
 1f8:	afbf001c 	sw	ra,28(sp)
 1fc:	afb10018 	sw	s1,24(sp)
 200:	afb00014 	sw	s0,20(sp)
 204:	afa40068 	sw	a0,104(sp)
 208:	afa5006c 	sw	a1,108(sp)
 20c:	84cf004e 	lh	t7,78(a2)
 210:	3c013b80 	lui	at,0x3b80
 214:	44814000 	mtc1	at,$f8
 218:	448f2000 	mtc1	t7,$f4
 21c:	8c900000 	lw	s0,0(a0)
 220:	00c08825 	move	s1,a2
 224:	468021a0 	cvt.s.w	$f6,$f4
 228:	27a40044 	addiu	a0,sp,68
 22c:	240700f1 	li	a3,241
 230:	02002825 	move	a1,s0
 234:	46083282 	mul.s	$f10,$f6,$f8
 238:	e7aa005c 	swc1	$f10,92(sp)
 23c:	84d80058 	lh	t8,88(a2)
 240:	3c060000 	lui	a2,0x0
 244:	24c60058 	addiu	a2,a2,88
 248:	0c000000 	jal	0 <EffectSsKakera_Init>
 24c:	afb80058 	sw	t8,88(sp)
 250:	86390054 	lh	t9,84(s1)
 254:	2401ffff 	li	at,-1
 258:	00003825 	move	a3,zero
 25c:	5321002a 	beql	t9,at,308 <EffectSsKakera_Draw+0x114>
 260:	c62c0000 	lwc1	$f12,0(s1)
 264:	86280048 	lh	t0,72(s1)
 268:	24010080 	li	at,128
 26c:	000849c3 	sra	t1,t0,0x7
 270:	312a0001 	andi	t2,t1,0x1
 274:	000a59c0 	sll	t3,t2,0x7
 278:	55610013 	bnel	t3,at,2c8 <EffectSsKakera_Draw+0xd4>
 27c:	8e0202c0 	lw	v0,704(s0)
 280:	8e0202d0 	lw	v0,720(s0)
 284:	3c0ddb06 	lui	t5,0xdb06
 288:	35ad0018 	ori	t5,t5,0x18
 28c:	244c0008 	addiu	t4,v0,8
 290:	ae0c02d0 	sw	t4,720(s0)
 294:	ac4d0000 	sw	t5,0(v0)
 298:	862f0056 	lh	t7,86(s1)
 29c:	8fae0068 	lw	t6,104(sp)
 2a0:	3c080001 	lui	t0,0x1
 2a4:	000fc100 	sll	t8,t7,0x4
 2a8:	030fc021 	addu	t8,t8,t7
 2ac:	0018c080 	sll	t8,t8,0x2
 2b0:	01d8c821 	addu	t9,t6,t8
 2b4:	01194021 	addu	t0,t0,t9
 2b8:	8d0817b4 	lw	t0,6068(t0)
 2bc:	10000011 	b	304 <EffectSsKakera_Draw+0x110>
 2c0:	ac480004 	sw	t0,4(v0)
 2c4:	8e0202c0 	lw	v0,704(s0)
 2c8:	3c0adb06 	lui	t2,0xdb06
 2cc:	354a0018 	ori	t2,t2,0x18
 2d0:	24490008 	addiu	t1,v0,8
 2d4:	ae0902c0 	sw	t1,704(s0)
 2d8:	ac4a0000 	sw	t2,0(v0)
 2dc:	862c0056 	lh	t4,86(s1)
 2e0:	8fab0068 	lw	t3,104(sp)
 2e4:	3c0e0001 	lui	t6,0x1
 2e8:	000c6900 	sll	t5,t4,0x4
 2ec:	01ac6821 	addu	t5,t5,t4
 2f0:	000d6880 	sll	t5,t5,0x2
 2f4:	016d7821 	addu	t7,t3,t5
 2f8:	01cf7021 	addu	t6,t6,t7
 2fc:	8dce17b4 	lw	t6,6068(t6)
 300:	ac4e0004 	sw	t6,4(v0)
 304:	c62c0000 	lwc1	$f12,0(s1)
 308:	c62e0004 	lwc1	$f14,4(s1)
 30c:	0c000000 	jal	0 <EffectSsKakera_Init>
 310:	8e260008 	lw	a2,8(s1)
 314:	86380046 	lh	t8,70(s1)
 318:	3c010000 	lui	at,0x0
 31c:	c42400b0 	lwc1	$f4,176(at)
 320:	44988000 	mtc1	t8,$f16
 324:	24050001 	li	a1,1
 328:	468084a0 	cvt.s.w	$f18,$f16
 32c:	46049302 	mul.s	$f12,$f18,$f4
 330:	0c000000 	jal	0 <EffectSsKakera_Init>
 334:	00000000 	nop
 338:	86390044 	lh	t9,68(s1)
 33c:	3c010000 	lui	at,0x0
 340:	c42a00b4 	lwc1	$f10,180(at)
 344:	44993000 	mtc1	t9,$f6
 348:	24050001 	li	a1,1
 34c:	46803220 	cvt.s.w	$f8,$f6
 350:	460a4302 	mul.s	$f12,$f8,$f10
 354:	0c000000 	jal	0 <EffectSsKakera_Init>
 358:	00000000 	nop
 35c:	c7ac005c 	lwc1	$f12,92(sp)
 360:	24070001 	li	a3,1
 364:	44066000 	mfc1	a2,$f12
 368:	0c000000 	jal	0 <EffectSsKakera_Init>
 36c:	46006386 	mov.s	$f14,$f12
 370:	86280048 	lh	t0,72(s1)
 374:	24010080 	li	at,128
 378:	3c18da38 	lui	t8,0xda38
 37c:	000849c3 	sra	t1,t0,0x7
 380:	312a0001 	andi	t2,t1,0x1
 384:	000a61c0 	sll	t4,t2,0x7
 388:	15810030 	bne	t4,at,44c <EffectSsKakera_Draw+0x258>
 38c:	37180003 	ori	t8,t8,0x3
 390:	8e0202d0 	lw	v0,720(s0)
 394:	3c0dda38 	lui	t5,0xda38
 398:	35ad0003 	ori	t5,t5,0x3
 39c:	244b0008 	addiu	t3,v0,8
 3a0:	ae0b02d0 	sw	t3,720(s0)
 3a4:	3c050000 	lui	a1,0x0
 3a8:	ac4d0000 	sw	t5,0(v0)
 3ac:	24a5006c 	addiu	a1,a1,108
 3b0:	02002025 	move	a0,s0
 3b4:	2406010c 	li	a2,268
 3b8:	0c000000 	jal	0 <EffectSsKakera_Init>
 3bc:	afa20038 	sw	v0,56(sp)
 3c0:	8fa30038 	lw	v1,56(sp)
 3c4:	ac620004 	sw	v0,4(v1)
 3c8:	8faf0068 	lw	t7,104(sp)
 3cc:	0c000000 	jal	0 <EffectSsKakera_Init>
 3d0:	8de40000 	lw	a0,0(t7)
 3d4:	8fa50058 	lw	a1,88(sp)
 3d8:	3c18fa00 	lui	t8,0xfa00
 3dc:	3c080000 	lui	t0,0x0
 3e0:	04a00012 	bltz	a1,42c <EffectSsKakera_Draw+0x238>
 3e4:	0005c880 	sll	t9,a1,0x2
 3e8:	8e0202d0 	lw	v0,720(s0)
 3ec:	0325c823 	subu	t9,t9,a1
 3f0:	25080008 	addiu	t0,t0,8
 3f4:	244e0008 	addiu	t6,v0,8
 3f8:	ae0e02d0 	sw	t6,720(s0)
 3fc:	03281821 	addu	v1,t9,t0
 400:	ac580000 	sw	t8,0(v0)
 404:	906d0000 	lbu	t5,0(v1)
 408:	906a0002 	lbu	t2,2(v1)
 40c:	90790001 	lbu	t9,1(v1)
 410:	000d7e00 	sll	t7,t5,0x18
 414:	000a6200 	sll	t4,t2,0x8
 418:	018f7025 	or	t6,t4,t7
 41c:	00194400 	sll	t0,t9,0x10
 420:	01c84825 	or	t1,t6,t0
 424:	352a00ff 	ori	t2,t1,0xff
 428:	ac4a0004 	sw	t2,4(v0)
 42c:	8e0202d0 	lw	v0,720(s0)
 430:	3c0dde00 	lui	t5,0xde00
 434:	244b0008 	addiu	t3,v0,8
 438:	ae0b02d0 	sw	t3,720(s0)
 43c:	ac4d0000 	sw	t5,0(v0)
 440:	8e2c0038 	lw	t4,56(s1)
 444:	1000002d 	b	4fc <EffectSsKakera_Draw+0x308>
 448:	ac4c0004 	sw	t4,4(v0)
 44c:	8e0202c0 	lw	v0,704(s0)
 450:	3c050000 	lui	a1,0x0
 454:	24a50080 	addiu	a1,a1,128
 458:	244f0008 	addiu	t7,v0,8
 45c:	ae0f02c0 	sw	t7,704(s0)
 460:	ac580000 	sw	t8,0(v0)
 464:	02002025 	move	a0,s0
 468:	2406011e 	li	a2,286
 46c:	0c000000 	jal	0 <EffectSsKakera_Init>
 470:	afa2002c 	sw	v0,44(sp)
 474:	8fa3002c 	lw	v1,44(sp)
 478:	ac620004 	sw	v0,4(v1)
 47c:	8fb90068 	lw	t9,104(sp)
 480:	0c000000 	jal	0 <EffectSsKakera_Init>
 484:	8f240000 	lw	a0,0(t9)
 488:	8fa50058 	lw	a1,88(sp)
 48c:	3c08fa00 	lui	t0,0xfa00
 490:	3c0a0000 	lui	t2,0x0
 494:	04a00012 	bltz	a1,4e0 <EffectSsKakera_Draw+0x2ec>
 498:	00054880 	sll	t1,a1,0x2
 49c:	8e0202c0 	lw	v0,704(s0)
 4a0:	01254823 	subu	t1,t1,a1
 4a4:	254a0008 	addiu	t2,t2,8
 4a8:	244e0008 	addiu	t6,v0,8
 4ac:	ae0e02c0 	sw	t6,704(s0)
 4b0:	012a1821 	addu	v1,t1,t2
 4b4:	ac480000 	sw	t0,0(v0)
 4b8:	90780000 	lbu	t8,0(v1)
 4bc:	906d0002 	lbu	t5,2(v1)
 4c0:	90690001 	lbu	t1,1(v1)
 4c4:	0018ce00 	sll	t9,t8,0x18
 4c8:	000d6200 	sll	t4,t5,0x8
 4cc:	01997025 	or	t6,t4,t9
 4d0:	00095400 	sll	t2,t1,0x10
 4d4:	01ca5825 	or	t3,t6,t2
 4d8:	356d00ff 	ori	t5,t3,0xff
 4dc:	ac4d0004 	sw	t5,4(v0)
 4e0:	8e0202c0 	lw	v0,704(s0)
 4e4:	3c18de00 	lui	t8,0xde00
 4e8:	244f0008 	addiu	t7,v0,8
 4ec:	ae0f02c0 	sw	t7,704(s0)
 4f0:	ac580000 	sw	t8,0(v0)
 4f4:	8e2c0038 	lw	t4,56(s1)
 4f8:	ac4c0004 	sw	t4,4(v0)
 4fc:	3c060000 	lui	a2,0x0
 500:	24c60094 	addiu	a2,a2,148
 504:	27a40044 	addiu	a0,sp,68
 508:	02002825 	move	a1,s0
 50c:	0c000000 	jal	0 <EffectSsKakera_Init>
 510:	2407012e 	li	a3,302
 514:	8fbf001c 	lw	ra,28(sp)
 518:	8fb00014 	lw	s0,20(sp)
 51c:	8fb10018 	lw	s1,24(sp)
 520:	03e00008 	jr	ra
 524:	27bd0068 	addiu	sp,sp,104

00000528 <func_809A9BA8>:
 528:	3c010001 	lui	at,0x1
 52c:	27bdffe0 	addiu	sp,sp,-32
 530:	00803025 	move	a2,a0
 534:	342117a4 	ori	at,at,0x17a4
 538:	afbf0014 	sw	ra,20(sp)
 53c:	00a12021 	addu	a0,a1,at
 540:	84c50054 	lh	a1,84(a2)
 544:	afa60020 	sw	a2,32(sp)
 548:	0c000000 	jal	0 <EffectSsKakera_Init>
 54c:	afa4001c 	sw	a0,28(sp)
 550:	8fa60020 	lw	a2,32(sp)
 554:	8fa4001c 	lw	a0,28(sp)
 558:	a4c20056 	sh	v0,86(a2)
 55c:	84c50056 	lh	a1,86(a2)
 560:	04a20006 	bltzl	a1,57c <func_809A9BA8+0x54>
 564:	a4c0005c 	sh	zero,92(a2)
 568:	0c000000 	jal	0 <EffectSsKakera_Init>
 56c:	afa60020 	sw	a2,32(sp)
 570:	14400003 	bnez	v0,580 <func_809A9BA8+0x58>
 574:	8fa60020 	lw	a2,32(sp)
 578:	a4c0005c 	sh	zero,92(a2)
 57c:	acc00028 	sw	zero,40(a2)
 580:	8fbf0014 	lw	ra,20(sp)
 584:	27bd0020 	addiu	sp,sp,32
 588:	03e00008 	jr	ra
 58c:	00000000 	nop

00000590 <func_809A9C10>:
 590:	27bdffb8 	addiu	sp,sp,-72
 594:	afbf002c 	sw	ra,44(sp)
 598:	afb00028 	sw	s0,40(sp)
 59c:	f7b60020 	sdc1	$f22,32(sp)
 5a0:	f7b40018 	sdc1	$f20,24(sp)
 5a4:	848e004a 	lh	t6,74(a0)
 5a8:	848f004c 	lh	t7,76(a0)
 5ac:	84980052 	lh	t8,82(a0)
 5b0:	448e2000 	mtc1	t6,$f4
 5b4:	448f4000 	mtc1	t7,$f8
 5b8:	3c013a80 	lui	at,0x3a80
 5bc:	468021a0 	cvt.s.w	$f6,$f4
 5c0:	44810000 	mtc1	at,$f0
 5c4:	44982000 	mtc1	t8,$f4
 5c8:	3c014080 	lui	at,0x4080
 5cc:	4480b000 	mtc1	zero,$f22
 5d0:	468042a0 	cvt.s.w	$f10,$f8
 5d4:	46003482 	mul.s	$f18,$f6,$f0
 5d8:	00808025 	move	s0,a0
 5dc:	4600b306 	mov.s	$f12,$f22
 5e0:	46005502 	mul.s	$f20,$f10,$f0
 5e4:	44815000 	mtc1	at,$f10
 5e8:	e7b20034 	swc1	$f18,52(sp)
 5ec:	468021a0 	cvt.s.w	$f6,$f4
 5f0:	46003202 	mul.s	$f8,$f6,$f0
 5f4:	00000000 	nop
 5f8:	460a4382 	mul.s	$f14,$f8,$f10
 5fc:	0c000000 	jal	0 <EffectSsKakera_Init>
 600:	e7ae0044 	swc1	$f14,68(sp)
 604:	c604000c 	lwc1	$f4,12(s0)
 608:	4600b306 	mov.s	$f12,$f22
 60c:	c7ae0044 	lwc1	$f14,68(sp)
 610:	46002081 	sub.s	$f2,$f4,$f0
 614:	0c000000 	jal	0 <EffectSsKakera_Init>
 618:	e7a20038 	swc1	$f2,56(sp)
 61c:	c6060010 	lwc1	$f6,16(s0)
 620:	4600b306 	mov.s	$f12,$f22
 624:	c7ae0044 	lwc1	$f14,68(sp)
 628:	46003401 	sub.s	$f16,$f6,$f0
 62c:	0c000000 	jal	0 <EffectSsKakera_Init>
 630:	e7b0003c 	swc1	$f16,60(sp)
 634:	c7a20038 	lwc1	$f2,56(sp)
 638:	c6080014 	lwc1	$f8,20(s0)
 63c:	c7b0003c 	lwc1	$f16,60(sp)
 640:	4602b03c 	c.lt.s	$f22,$f2
 644:	c7b20034 	lwc1	$f18,52(sp)
 648:	46004301 	sub.s	$f12,$f8,$f0
 64c:	4500000b 	bc1f	67c <func_809A9C10+0xec>
 650:	00000000 	nop
 654:	46121282 	mul.s	$f10,$f2,$f18
 658:	00000000 	nop
 65c:	46021102 	mul.s	$f4,$f2,$f2
 660:	00000000 	nop
 664:	46142182 	mul.s	$f6,$f4,$f20
 668:	c604000c 	lwc1	$f4,12(s0)
 66c:	46065200 	add.s	$f8,$f10,$f6
 670:	46082281 	sub.s	$f10,$f4,$f8
 674:	1000000a 	b	6a0 <func_809A9C10+0x110>
 678:	e60a000c 	swc1	$f10,12(s0)
 67c:	46121182 	mul.s	$f6,$f2,$f18
 680:	00000000 	nop
 684:	46021102 	mul.s	$f4,$f2,$f2
 688:	00000000 	nop
 68c:	46142202 	mul.s	$f8,$f4,$f20
 690:	c604000c 	lwc1	$f4,12(s0)
 694:	46083281 	sub.s	$f10,$f6,$f8
 698:	460a2181 	sub.s	$f6,$f4,$f10
 69c:	e606000c 	swc1	$f6,12(s0)
 6a0:	4610b03c 	c.lt.s	$f22,$f16
 6a4:	00000000 	nop
 6a8:	4500000a 	bc1f	6d4 <func_809A9C10+0x144>
 6ac:	00000000 	nop
 6b0:	46128002 	mul.s	$f0,$f16,$f18
 6b4:	c6040010 	lwc1	$f4,16(s0)
 6b8:	46108202 	mul.s	$f8,$f16,$f16
 6bc:	00000000 	nop
 6c0:	46144082 	mul.s	$f2,$f8,$f20
 6c4:	46020280 	add.s	$f10,$f0,$f2
 6c8:	460a2181 	sub.s	$f6,$f4,$f10
 6cc:	10000009 	b	6f4 <func_809A9C10+0x164>
 6d0:	e6060010 	swc1	$f6,16(s0)
 6d4:	46128002 	mul.s	$f0,$f16,$f18
 6d8:	c6040010 	lwc1	$f4,16(s0)
 6dc:	46108202 	mul.s	$f8,$f16,$f16
 6e0:	00000000 	nop
 6e4:	46144082 	mul.s	$f2,$f8,$f20
 6e8:	46020281 	sub.s	$f10,$f0,$f2
 6ec:	460a2181 	sub.s	$f6,$f4,$f10
 6f0:	e6060010 	swc1	$f6,16(s0)
 6f4:	460cb03c 	c.lt.s	$f22,$f12
 6f8:	00000000 	nop
 6fc:	45020007 	bc1fl	71c <func_809A9C10+0x18c>
 700:	46020201 	sub.s	$f8,$f0,$f2
 704:	46020100 	add.s	$f4,$f0,$f2
 708:	c6080014 	lwc1	$f8,20(s0)
 70c:	46044281 	sub.s	$f10,$f8,$f4
 710:	10000005 	b	728 <func_809A9C10+0x198>
 714:	e60a0014 	swc1	$f10,20(s0)
 718:	46020201 	sub.s	$f8,$f0,$f2
 71c:	c6060014 	lwc1	$f6,20(s0)
 720:	46083101 	sub.s	$f4,$f6,$f8
 724:	e6040014 	swc1	$f4,20(s0)
 728:	8fbf002c 	lw	ra,44(sp)
 72c:	d7b40018 	ldc1	$f20,24(sp)
 730:	d7b60020 	ldc1	$f22,32(sp)
 734:	8fb00028 	lw	s0,40(sp)
 738:	03e00008 	jr	ra
 73c:	27bd0048 	addiu	sp,sp,72

00000740 <func_809A9DC0>:
 740:	44800000 	mtc1	zero,$f0
 744:	00000000 	nop
 748:	e4800020 	swc1	$f0,32(a0)
 74c:	e480001c 	swc1	$f0,28(a0)
 750:	03e00008 	jr	ra
 754:	e4800018 	swc1	$f0,24(a0)

00000758 <func_809A9DD8>:
 758:	3c013f80 	lui	at,0x3f80
 75c:	44810000 	mtc1	at,$f0
 760:	e7ac0000 	swc1	$f12,0(sp)
 764:	03e00008 	jr	ra
 768:	afa50004 	sw	a1,4(sp)

0000076c <func_809A9DEC>:
 76c:	00057080 	sll	t6,a1,0x2
 770:	3c010000 	lui	at,0x0
 774:	002e0821 	addu	at,at,t6
 778:	c4220010 	lwc1	$f2,16(at)
 77c:	3c013f80 	lui	at,0x3f80
 780:	460c103c 	c.lt.s	$f2,$f12
 784:	00000000 	nop
 788:	45020004 	bc1fl	79c <func_809A9DEC+0x30>
 78c:	44810000 	mtc1	at,$f0
 790:	03e00008 	jr	ra
 794:	460c1003 	div.s	$f0,$f2,$f12
 798:	44810000 	mtc1	at,$f0
 79c:	00000000 	nop
 7a0:	03e00008 	jr	ra
 7a4:	00000000 	nop

000007a8 <func_809A9E28>:
 7a8:	460c6082 	mul.s	$f2,$f12,$f12
 7ac:	00057080 	sll	t6,a1,0x2
 7b0:	3c010000 	lui	at,0x0
 7b4:	002e0821 	addu	at,at,t6
 7b8:	c42e0010 	lwc1	$f14,16(at)
 7bc:	3c013f80 	lui	at,0x3f80
 7c0:	4602703c 	c.lt.s	$f14,$f2
 7c4:	00000000 	nop
 7c8:	45020004 	bc1fl	7dc <func_809A9E28+0x34>
 7cc:	44810000 	mtc1	at,$f0
 7d0:	03e00008 	jr	ra
 7d4:	46027003 	div.s	$f0,$f14,$f2
 7d8:	44810000 	mtc1	at,$f0
 7dc:	00000000 	nop
 7e0:	03e00008 	jr	ra
 7e4:	00000000 	nop

000007e8 <func_809A9E68>:
 7e8:	27bdffe8 	addiu	sp,sp,-24
 7ec:	afbf0014 	sw	ra,20(sp)
 7f0:	0c000000 	jal	0 <EffectSsKakera_Init>
 7f4:	00000000 	nop
 7f8:	8fbf0014 	lw	ra,20(sp)
 7fc:	27bd0018 	addiu	sp,sp,24
 800:	03e00008 	jr	ra
 804:	00000000 	nop

00000808 <func_809A9E88>:
 808:	84820040 	lh	v0,64(a0)
 80c:	44866000 	mtc1	a2,$f12
 810:	3c013f80 	lui	at,0x3f80
 814:	30420003 	andi	v0,v0,0x3
 818:	1040001b 	beqz	v0,888 <func_809A9E88+0x80>
 81c:	00027080 	sll	t6,v0,0x2
 820:	44811000 	mtc1	at,$f2
 824:	3c0f0000 	lui	t7,0x0
 828:	25ef0038 	addiu	t7,t7,56
 82c:	460c103c 	c.lt.s	$f2,$f12
 830:	01cf1821 	addu	v1,t6,t7
 834:	45020004 	bc1fl	848 <func_809A9E88+0x40>
 838:	46001006 	mov.s	$f0,$f2
 83c:	10000002 	b	848 <func_809A9E88+0x40>
 840:	460c1003 	div.s	$f0,$f2,$f12
 844:	46001006 	mov.s	$f0,$f2
 848:	c464fffc 	lwc1	$f4,-4(v1)
 84c:	c4a60008 	lwc1	$f6,8(a1)
 850:	c4900018 	lwc1	$f16,24(a0)
 854:	46062202 	mul.s	$f8,$f4,$f6
 858:	00000000 	nop
 85c:	46004282 	mul.s	$f10,$f8,$f0
 860:	460a8480 	add.s	$f18,$f16,$f10
 864:	c48a0020 	lwc1	$f10,32(a0)
 868:	e4920018 	swc1	$f18,24(a0)
 86c:	c4a60000 	lwc1	$f6,0(a1)
 870:	c464fffc 	lwc1	$f4,-4(v1)
 874:	46062202 	mul.s	$f8,$f4,$f6
 878:	00000000 	nop
 87c:	46004402 	mul.s	$f16,$f8,$f0
 880:	46105481 	sub.s	$f18,$f10,$f16
 884:	e4920020 	swc1	$f18,32(a0)
 888:	03e00008 	jr	ra
 88c:	24020001 	li	v0,1

00000890 <func_809A9F10>:
 890:	afa50004 	sw	a1,4(sp)
 894:	afa60008 	sw	a2,8(sp)
 898:	84820040 	lh	v0,64(a0)
 89c:	3c010000 	lui	at,0x0
 8a0:	00021083 	sra	v0,v0,0x2
 8a4:	30420007 	andi	v0,v0,0x7
 8a8:	10400006 	beqz	v0,8c4 <func_809A9F10+0x34>
 8ac:	00027080 	sll	t6,v0,0x2
 8b0:	002e0821 	addu	at,at,t6
 8b4:	c4260040 	lwc1	$f6,64(at)
 8b8:	c484001c 	lwc1	$f4,28(a0)
 8bc:	46062200 	add.s	$f8,$f4,$f6
 8c0:	e488001c 	swc1	$f8,28(a0)
 8c4:	03e00008 	jr	ra
 8c8:	24020001 	li	v0,1

000008cc <func_809A9F4C>:
 8cc:	84820040 	lh	v0,64(a0)
 8d0:	44866000 	mtc1	a2,$f12
 8d4:	3c013f80 	lui	at,0x3f80
 8d8:	00021143 	sra	v0,v0,0x5
 8dc:	30420003 	andi	v0,v0,0x3
 8e0:	1040001b 	beqz	v0,950 <func_809A9F4C+0x84>
 8e4:	00027080 	sll	t6,v0,0x2
 8e8:	44811000 	mtc1	at,$f2
 8ec:	3c0f0000 	lui	t7,0x0
 8f0:	25ef005c 	addiu	t7,t7,92
 8f4:	460c103c 	c.lt.s	$f2,$f12
 8f8:	01cf1821 	addu	v1,t6,t7
 8fc:	45020004 	bc1fl	910 <func_809A9F4C+0x44>
 900:	46001006 	mov.s	$f0,$f2
 904:	10000002 	b	910 <func_809A9F4C+0x44>
 908:	460c1003 	div.s	$f0,$f2,$f12
 90c:	46001006 	mov.s	$f0,$f2
 910:	c4a40000 	lwc1	$f4,0(a1)
 914:	c466fffc 	lwc1	$f6,-4(v1)
 918:	c4900018 	lwc1	$f16,24(a0)
 91c:	46062202 	mul.s	$f8,$f4,$f6
 920:	00000000 	nop
 924:	46004282 	mul.s	$f10,$f8,$f0
 928:	460a8481 	sub.s	$f18,$f16,$f10
 92c:	c48a0020 	lwc1	$f10,32(a0)
 930:	e4920018 	swc1	$f18,24(a0)
 934:	c466fffc 	lwc1	$f6,-4(v1)
 938:	c4a40008 	lwc1	$f4,8(a1)
 93c:	46062202 	mul.s	$f8,$f4,$f6
 940:	00000000 	nop
 944:	46004402 	mul.s	$f16,$f8,$f0
 948:	46105481 	sub.s	$f18,$f10,$f16
 94c:	e4920020 	swc1	$f18,32(a0)
 950:	03e00008 	jr	ra
 954:	24020001 	li	v0,1

00000958 <func_809A9FD8>:
 958:	27bdffe8 	addiu	sp,sp,-24
 95c:	afbf0014 	sw	ra,20(sp)
 960:	afa5001c 	sw	a1,28(sp)
 964:	84850040 	lh	a1,64(a0)
 968:	3c190000 	lui	t9,0x0
 96c:	44866000 	mtc1	a2,$f12
 970:	000529c3 	sra	a1,a1,0x7
 974:	30a5000f 	andi	a1,a1,0xf
 978:	00057080 	sll	t6,a1,0x2
 97c:	032ec821 	addu	t9,t9,t6
 980:	8f390068 	lw	t9,104(t9)
 984:	afa40018 	sw	a0,24(sp)
 988:	0320f809 	jalr	t9
 98c:	00000000 	nop
 990:	8fa40018 	lw	a0,24(sp)
 994:	3c013a80 	lui	at,0x3a80
 998:	44815000 	mtc1	at,$f10
 99c:	848f0052 	lh	t7,82(a0)
 9a0:	46000306 	mov.s	$f12,$f0
 9a4:	448f2000 	mtc1	t7,$f4
 9a8:	00000000 	nop
 9ac:	468021a0 	cvt.s.w	$f6,$f4
 9b0:	46003202 	mul.s	$f8,$f6,$f0
 9b4:	00000000 	nop
 9b8:	460a4382 	mul.s	$f14,$f8,$f10
 9bc:	0c000000 	jal	0 <EffectSsKakera_Init>
 9c0:	00000000 	nop
 9c4:	8fa40018 	lw	a0,24(sp)
 9c8:	3c010000 	lui	at,0x0
 9cc:	24020001 	li	v0,1
 9d0:	c4900018 	lwc1	$f16,24(a0)
 9d4:	c484001c 	lwc1	$f4,28(a0)
 9d8:	c4880020 	lwc1	$f8,32(a0)
 9dc:	46008482 	mul.s	$f18,$f16,$f0
 9e0:	00000000 	nop
 9e4:	46002182 	mul.s	$f6,$f4,$f0
 9e8:	00000000 	nop
 9ec:	46004282 	mul.s	$f10,$f8,$f0
 9f0:	e4920018 	swc1	$f18,24(a0)
 9f4:	c4920018 	lwc1	$f18,24(a0)
 9f8:	e486001c 	swc1	$f6,28(a0)
 9fc:	c486001c 	lwc1	$f6,28(a0)
 a00:	e48a0020 	swc1	$f10,32(a0)
 a04:	c43000b8 	lwc1	$f16,184(at)
 a08:	c48a0020 	lwc1	$f10,32(a0)
 a0c:	46100082 	mul.s	$f2,$f0,$f16
 a10:	46029100 	add.s	$f4,$f18,$f2
 a14:	46023200 	add.s	$f8,$f6,$f2
 a18:	e4840018 	swc1	$f4,24(a0)
 a1c:	46025400 	add.s	$f16,$f10,$f2
 a20:	e488001c 	swc1	$f8,28(a0)
 a24:	e4900020 	swc1	$f16,32(a0)
 a28:	8fbf0014 	lw	ra,20(sp)
 a2c:	27bd0018 	addiu	sp,sp,24
 a30:	03e00008 	jr	ra
 a34:	00000000 	nop

00000a38 <func_809AA0B8>:
 a38:	afa50004 	sw	a1,4(sp)
 a3c:	afa60008 	sw	a2,8(sp)
 a40:	848e0042 	lh	t6,66(a0)
 a44:	3c013b80 	lui	at,0x3b80
 a48:	44814000 	mtc1	at,$f8
 a4c:	448e2000 	mtc1	t6,$f4
 a50:	c490001c 	lwc1	$f16,28(a0)
 a54:	24020001 	li	v0,1
 a58:	468021a0 	cvt.s.w	$f6,$f4
 a5c:	46083282 	mul.s	$f10,$f6,$f8
 a60:	460a8480 	add.s	$f18,$f16,$f10
 a64:	03e00008 	jr	ra
 a68:	e492001c 	swc1	$f18,28(a0)

00000a6c <func_809AA0EC>:
 a6c:	27bdffc8 	addiu	sp,sp,-56
 a70:	afbf0024 	sw	ra,36(sp)
 a74:	afb00020 	sw	s0,32(sp)
 a78:	00808025 	move	s0,a0
 a7c:	0c000000 	jal	0 <EffectSsKakera_Init>
 a80:	f7b40018 	sdc1	$f20,24(sp)
 a84:	c6040000 	lwc1	$f4,0(s0)
 a88:	c606002c 	lwc1	$f6,44(s0)
 a8c:	3c01447a 	lui	at,0x447a
 a90:	46062201 	sub.s	$f8,$f4,$f6
 a94:	e7a8002c 	swc1	$f8,44(sp)
 a98:	c6100030 	lwc1	$f16,48(s0)
 a9c:	c60a0004 	lwc1	$f10,4(s0)
 aa0:	46105481 	sub.s	$f18,$f10,$f16
 aa4:	c7aa002c 	lwc1	$f10,44(sp)
 aa8:	e7b20030 	swc1	$f18,48(sp)
 aac:	c6060034 	lwc1	$f6,52(s0)
 ab0:	c6040008 	lwc1	$f4,8(s0)
 ab4:	460a5402 	mul.s	$f16,$f10,$f10
 ab8:	c7b20030 	lwc1	$f18,48(sp)
 abc:	46062201 	sub.s	$f8,$f4,$f6
 ac0:	46129102 	mul.s	$f4,$f18,$f18
 ac4:	44819000 	mtc1	at,$f18
 ac8:	e7a80034 	swc1	$f8,52(sp)
 acc:	c7a80034 	lwc1	$f8,52(sp)
 ad0:	46084282 	mul.s	$f10,$f8,$f8
 ad4:	46048180 	add.s	$f6,$f16,$f4
 ad8:	460a3000 	add.s	$f0,$f6,$f10
 adc:	46000504 	sqrt.s	$f20,$f0
 ae0:	4614903c 	c.lt.s	$f18,$f20
 ae4:	00000000 	nop
 ae8:	45020004 	bc1fl	afc <func_809AA0EC+0x90>
 aec:	860e0040 	lh	t6,64(s0)
 af0:	1000002a 	b	b9c <func_809AA0EC+0x130>
 af4:	00001025 	move	v0,zero
 af8:	860e0040 	lh	t6,64(s0)
 afc:	02002025 	move	a0,s0
 b00:	51c0001e 	beqzl	t6,b7c <func_809AA0EC+0x110>
 b04:	4406a000 	mfc1	a2,$f20
 b08:	4406a000 	mfc1	a2,$f20
 b0c:	0c000000 	jal	0 <EffectSsKakera_Init>
 b10:	27a5002c 	addiu	a1,sp,44
 b14:	14400003 	bnez	v0,b24 <func_809AA0EC+0xb8>
 b18:	02002025 	move	a0,s0
 b1c:	1000001f 	b	b9c <func_809AA0EC+0x130>
 b20:	00001025 	move	v0,zero
 b24:	4406a000 	mfc1	a2,$f20
 b28:	0c000000 	jal	0 <EffectSsKakera_Init>
 b2c:	27a5002c 	addiu	a1,sp,44
 b30:	14400003 	bnez	v0,b40 <func_809AA0EC+0xd4>
 b34:	02002025 	move	a0,s0
 b38:	10000018 	b	b9c <func_809AA0EC+0x130>
 b3c:	00001025 	move	v0,zero
 b40:	4406a000 	mfc1	a2,$f20
 b44:	0c000000 	jal	0 <EffectSsKakera_Init>
 b48:	27a5002c 	addiu	a1,sp,44
 b4c:	14400003 	bnez	v0,b5c <func_809AA0EC+0xf0>
 b50:	02002025 	move	a0,s0
 b54:	10000011 	b	b9c <func_809AA0EC+0x130>
 b58:	00001025 	move	v0,zero
 b5c:	4406a000 	mfc1	a2,$f20
 b60:	0c000000 	jal	0 <EffectSsKakera_Init>
 b64:	27a5002c 	addiu	a1,sp,44
 b68:	54400004 	bnezl	v0,b7c <func_809AA0EC+0x110>
 b6c:	4406a000 	mfc1	a2,$f20
 b70:	1000000a 	b	b9c <func_809AA0EC+0x130>
 b74:	00001025 	move	v0,zero
 b78:	4406a000 	mfc1	a2,$f20
 b7c:	02002025 	move	a0,s0
 b80:	0c000000 	jal	0 <EffectSsKakera_Init>
 b84:	27a5002c 	addiu	a1,sp,44
 b88:	54400004 	bnezl	v0,b9c <func_809AA0EC+0x130>
 b8c:	24020001 	li	v0,1
 b90:	10000002 	b	b9c <func_809AA0EC+0x130>
 b94:	00001025 	move	v0,zero
 b98:	24020001 	li	v0,1
 b9c:	8fbf0024 	lw	ra,36(sp)
 ba0:	d7b40018 	ldc1	$f20,24(sp)
 ba4:	8fb00020 	lw	s0,32(sp)
 ba8:	03e00008 	jr	ra
 bac:	27bd0038 	addiu	sp,sp,56

00000bb0 <func_809AA230>:
 bb0:	27bdffe8 	addiu	sp,sp,-24
 bb4:	afbf0014 	sw	ra,20(sp)
 bb8:	afa5001c 	sw	a1,28(sp)
 bbc:	848f0050 	lh	t7,80(a0)
 bc0:	00803825 	move	a3,a0
 bc4:	8ca21c44 	lw	v0,7236(a1)
 bc8:	55e00032 	bnezl	t7,c94 <func_809AA230+0xe4>
 bcc:	84e30048 	lh	v1,72(a3)
 bd0:	84830048 	lh	v1,72(a0)
 bd4:	24010010 	li	at,16
 bd8:	0003c103 	sra	t8,v1,0x4
 bdc:	33190001 	andi	t9,t8,0x1
 be0:	00194100 	sll	t0,t9,0x4
 be4:	1501001b 	bne	t0,at,c54 <func_809AA230+0xa4>
 be8:	00036083 	sra	t4,v1,0x2
 bec:	00034883 	sra	t1,v1,0x2
 bf0:	312a0003 	andi	t2,t1,0x3
 bf4:	448a3000 	mtc1	t2,$f6
 bf8:	c4440080 	lwc1	$f4,128(v0)
 bfc:	c4900004 	lwc1	$f16,4(a0)
 c00:	46803220 	cvt.s.w	$f8,$f6
 c04:	306bff9f 	andi	t3,v1,0xff9f
 c08:	46082281 	sub.s	$f10,$f4,$f8
 c0c:	460a803e 	c.le.s	$f16,$f10
 c10:	00000000 	nop
 c14:	45020063 	bc1fl	da4 <func_809AA230+0x1f4>
 c18:	8fbf0014 	lw	ra,20(sp)
 c1c:	44800000 	mtc1	zero,$f0
 c20:	a4800052 	sh	zero,82(a0)
 c24:	84820052 	lh	v0,82(a0)
 c28:	a4800040 	sh	zero,64(a0)
 c2c:	a48b0048 	sh	t3,72(a0)
 c30:	e4800020 	swc1	$f0,32(a0)
 c34:	e480001c 	swc1	$f0,28(a0)
 c38:	e4800018 	swc1	$f0,24(a0)
 c3c:	e4800014 	swc1	$f0,20(a0)
 c40:	e4800010 	swc1	$f0,16(a0)
 c44:	e480000c 	swc1	$f0,12(a0)
 c48:	a482004a 	sh	v0,74(a0)
 c4c:	10000054 	b	da0 <func_809AA230+0x1f0>
 c50:	a4820042 	sh	v0,66(a0)
 c54:	318d0003 	andi	t5,t4,0x3
 c58:	448d3000 	mtc1	t5,$f6
 c5c:	c4520080 	lwc1	$f18,128(v0)
 c60:	3c014416 	lui	at,0x4416
 c64:	46803120 	cvt.s.w	$f4,$f6
 c68:	44815000 	mtc1	at,$f10
 c6c:	c4e60004 	lwc1	$f6,4(a3)
 c70:	46049201 	sub.s	$f8,$f18,$f4
 c74:	460a4401 	sub.s	$f16,$f8,$f10
 c78:	4610303e 	c.le.s	$f6,$f16
 c7c:	00000000 	nop
 c80:	45020048 	bc1fl	da4 <func_809AA230+0x1f4>
 c84:	8fbf0014 	lw	ra,20(sp)
 c88:	10000045 	b	da0 <func_809AA230+0x1f0>
 c8c:	a4e0005c 	sh	zero,92(a3)
 c90:	84e30048 	lh	v1,72(a3)
 c94:	24010001 	li	at,1
 c98:	30620003 	andi	v0,v1,0x3
 c9c:	10400007 	beqz	v0,cbc <func_809AA230+0x10c>
 ca0:	00000000 	nop
 ca4:	10410007 	beq	v0,at,cc4 <func_809AA230+0x114>
 ca8:	24010002 	li	at,2
 cac:	10410033 	beq	v0,at,d7c <func_809AA230+0x1cc>
 cb0:	8fa4001c 	lw	a0,28(sp)
 cb4:	1000003b 	b	da4 <func_809AA230+0x1f4>
 cb8:	8fbf0014 	lw	ra,20(sp)
 cbc:	10000038 	b	da0 <func_809AA230+0x1f0>
 cc0:	a4e00050 	sh	zero,80(a3)
 cc4:	44800000 	mtc1	zero,$f0
 cc8:	c4f20010 	lwc1	$f18,16(a3)
 ccc:	8fa4001c 	lw	a0,28(sp)
 cd0:	00037083 	sra	t6,v1,0x2
 cd4:	4600903c 	c.lt.s	$f18,$f0
 cd8:	31cf0003 	andi	t7,t6,0x3
 cdc:	000fc080 	sll	t8,t7,0x2
 ce0:	00e02825 	move	a1,a3
 ce4:	4500002e 	bc1f	da0 <func_809AA230+0x1f0>
 ce8:	248407c0 	addiu	a0,a0,1984
 cec:	3c060000 	lui	a2,0x0
 cf0:	00d83021 	addu	a2,a2,t8
 cf4:	8cc60090 	lw	a2,144(a2)
 cf8:	0c000000 	jal	0 <EffectSsKakera_Init>
 cfc:	afa70018 	sw	a3,24(sp)
 d00:	10400027 	beqz	v0,da0 <func_809AA230+0x1f0>
 d04:	8fa70018 	lw	a3,24(sp)
 d08:	3c010000 	lui	at,0x0
 d0c:	c42c00bc 	lwc1	$f12,188(at)
 d10:	3c010000 	lui	at,0x0
 d14:	c42e00c0 	lwc1	$f14,192(at)
 d18:	0c000000 	jal	0 <EffectSsKakera_Init>
 d1c:	afa70018 	sw	a3,24(sp)
 d20:	8fa70018 	lw	a3,24(sp)
 d24:	3c010000 	lui	at,0x0
 d28:	c4e4000c 	lwc1	$f4,12(a3)
 d2c:	c4ea0010 	lwc1	$f10,16(a3)
 d30:	46002202 	mul.s	$f8,$f4,$f0
 d34:	e4e8000c 	swc1	$f8,12(a3)
 d38:	c43000c4 	lwc1	$f16,196(at)
 d3c:	3c010000 	lui	at,0x0
 d40:	46105182 	mul.s	$f6,$f10,$f16
 d44:	e4e60010 	swc1	$f6,16(a3)
 d48:	c42c00c8 	lwc1	$f12,200(at)
 d4c:	3c010000 	lui	at,0x0
 d50:	0c000000 	jal	0 <EffectSsKakera_Init>
 d54:	c42e00cc 	lwc1	$f14,204(at)
 d58:	8fa70018 	lw	a3,24(sp)
 d5c:	c4f20014 	lwc1	$f18,20(a3)
 d60:	84e20050 	lh	v0,80(a3)
 d64:	46009102 	mul.s	$f4,$f18,$f0
 d68:	2459ffff 	addiu	t9,v0,-1
 d6c:	1840000c 	blez	v0,da0 <func_809AA230+0x1f0>
 d70:	e4e40014 	swc1	$f4,20(a3)
 d74:	1000000a 	b	da0 <func_809AA230+0x1f0>
 d78:	a4f90050 	sh	t9,80(a3)
 d7c:	00034083 	sra	t0,v1,0x2
 d80:	31090003 	andi	t1,t0,0x3
 d84:	00095080 	sll	t2,t1,0x2
 d88:	3c060000 	lui	a2,0x0
 d8c:	00ca3021 	addu	a2,a2,t2
 d90:	8cc60090 	lw	a2,144(a2)
 d94:	248407c0 	addiu	a0,a0,1984
 d98:	0c000000 	jal	0 <EffectSsKakera_Init>
 d9c:	00e02825 	move	a1,a3
 da0:	8fbf0014 	lw	ra,20(sp)
 da4:	27bd0018 	addiu	sp,sp,24
 da8:	03e00008 	jr	ra
 dac:	00000000 	nop

00000db0 <EffectSsKakera_Update>:
 db0:	27bdffe0 	addiu	sp,sp,-32
 db4:	afbf001c 	sw	ra,28(sp)
 db8:	afb00018 	sw	s0,24(sp)
 dbc:	afa40020 	sw	a0,32(sp)
 dc0:	afa50024 	sw	a1,36(sp)
 dc4:	84c20048 	lh	v0,72(a2)
 dc8:	24010020 	li	at,32
 dcc:	00c08025 	move	s0,a2
 dd0:	00021143 	sra	v0,v0,0x5
 dd4:	30420003 	andi	v0,v0,0x3
 dd8:	00021140 	sll	v0,v0,0x5
 ddc:	10410007 	beq	v0,at,dfc <EffectSsKakera_Update+0x4c>
 de0:	24010040 	li	at,64
 de4:	1041000c 	beq	v0,at,e18 <EffectSsKakera_Update+0x68>
 de8:	24010060 	li	at,96
 dec:	50410012 	beql	v0,at,e38 <EffectSsKakera_Update+0x88>
 df0:	860c0044 	lh	t4,68(s0)
 df4:	10000015 	b	e4c <EffectSsKakera_Update+0x9c>
 df8:	00000000 	nop
 dfc:	860e0044 	lh	t6,68(s0)
 e00:	86180046 	lh	t8,70(s0)
 e04:	25cf000b 	addiu	t7,t6,11
 e08:	27190003 	addiu	t9,t8,3
 e0c:	a60f0044 	sh	t7,68(s0)
 e10:	1000000e 	b	e4c <EffectSsKakera_Update+0x9c>
 e14:	a6190046 	sh	t9,70(s0)
 e18:	86080044 	lh	t0,68(s0)
 e1c:	860a0046 	lh	t2,70(s0)
 e20:	25090041 	addiu	t1,t0,65
 e24:	254b000b 	addiu	t3,t2,11
 e28:	a6090044 	sh	t1,68(s0)
 e2c:	10000007 	b	e4c <EffectSsKakera_Update+0x9c>
 e30:	a60b0046 	sh	t3,70(s0)
 e34:	860c0044 	lh	t4,68(s0)
 e38:	860e0046 	lh	t6,70(s0)
 e3c:	258d009b 	addiu	t5,t4,155
 e40:	25cf001f 	addiu	t7,t6,31
 e44:	a60d0044 	sh	t5,68(s0)
 e48:	a60f0046 	sh	t7,70(s0)
 e4c:	0c000000 	jal	0 <EffectSsKakera_Init>
 e50:	02002025 	move	a0,s0
 e54:	0c000000 	jal	0 <EffectSsKakera_Init>
 e58:	02002025 	move	a0,s0
 e5c:	14400002 	bnez	v0,e68 <EffectSsKakera_Update+0xb8>
 e60:	02002025 	move	a0,s0
 e64:	a600005c 	sh	zero,92(s0)
 e68:	0c000000 	jal	0 <EffectSsKakera_Init>
 e6c:	8fa50020 	lw	a1,32(sp)
 e70:	86180054 	lh	t8,84(s0)
 e74:	2401ffff 	li	at,-1
 e78:	02002025 	move	a0,s0
 e7c:	53010004 	beql	t8,at,e90 <EffectSsKakera_Update+0xe0>
 e80:	8fbf001c 	lw	ra,28(sp)
 e84:	0c000000 	jal	0 <EffectSsKakera_Init>
 e88:	8fa50020 	lw	a1,32(sp)
 e8c:	8fbf001c 	lw	ra,28(sp)
 e90:	8fb00018 	lw	s0,24(sp)
 e94:	27bd0020 	addiu	sp,sp,32
 e98:	03e00008 	jr	ra
 e9c:	00000000 	nop
