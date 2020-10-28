
build/src/overlays/effects/ovl_Effect_Ss_Hahen/z_eff_ss_hahen.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsHahen_CheckForObject>:
   0:	3c010001 	lui	at,0x1
   4:	27bdffe0 	addiu	sp,sp,-32
   8:	00803025 	move	a2,a0
   c:	342117a4 	ori	at,at,0x17a4
  10:	afbf0014 	sw	ra,20(sp)
  14:	00a12021 	addu	a0,a1,at
  18:	84c50048 	lh	a1,72(a2)
  1c:	afa60020 	sw	a2,32(sp)
  20:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
  24:	afa40018 	sw	a0,24(sp)
  28:	8fa60020 	lw	a2,32(sp)
  2c:	00027400 	sll	t6,v0,0x10
  30:	000e7c03 	sra	t7,t6,0x10
  34:	8fa40018 	lw	a0,24(sp)
  38:	05e00006 	bltz	t7,54 <EffectSsHahen_CheckForObject+0x54>
  3c:	a4c2004a 	sh	v0,74(a2)
  40:	84c5004a 	lh	a1,74(a2)
  44:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
  48:	afa60020 	sw	a2,32(sp)
  4c:	14400004 	bnez	v0,60 <EffectSsHahen_CheckForObject+0x60>
  50:	8fa60020 	lw	a2,32(sp)
  54:	2418ffff 	li	t8,-1
  58:	a4d8005c 	sh	t8,92(a2)
  5c:	acc00028 	sw	zero,40(a2)
  60:	8fbf0014 	lw	ra,20(sp)
  64:	27bd0020 	addiu	sp,sp,32
  68:	03e00008 	jr	ra
  6c:	00000000 	nop

00000070 <EffectSsHahen_Init>:
  70:	27bdffe0 	addiu	sp,sp,-32
  74:	afbf001c 	sw	ra,28(sp)
  78:	afb10018 	sw	s1,24(sp)
  7c:	afb00014 	sw	s0,20(sp)
  80:	afa40020 	sw	a0,32(sp)
  84:	afa50024 	sw	a1,36(sp)
  88:	8cef0000 	lw	t7,0(a3)
  8c:	240a00c8 	li	t2,200
  90:	3c0100ff 	lui	at,0xff
  94:	accf0000 	sw	t7,0(a2)
  98:	8cee0004 	lw	t6,4(a3)
  9c:	00802825 	move	a1,a0
  a0:	00c08025 	move	s0,a2
  a4:	acce0004 	sw	t6,4(a2)
  a8:	8cef0008 	lw	t7,8(a3)
  ac:	00e08825 	move	s1,a3
  b0:	3421ffff 	ori	at,at,0xffff
  b4:	accf0008 	sw	t7,8(a2)
  b8:	8cf9000c 	lw	t9,12(a3)
  bc:	3c0f0000 	lui	t7,0x0
  c0:	acd9000c 	sw	t9,12(a2)
  c4:	8cf80010 	lw	t8,16(a3)
  c8:	acd80010 	sw	t8,16(a2)
  cc:	8cf90014 	lw	t9,20(a3)
  d0:	acd90014 	sw	t9,20(a2)
  d4:	8ce90018 	lw	t1,24(a3)
  d8:	acc90018 	sw	t1,24(a2)
  dc:	8ce8001c 	lw	t0,28(a3)
  e0:	acc8001c 	sw	t0,28(a2)
  e4:	8ce90020 	lw	t1,32(a3)
  e8:	a4ca005c 	sh	t2,92(a2)
  ec:	acc90020 	sw	t1,32(a2)
  f0:	8ce20024 	lw	v0,36(a3)
  f4:	2409ffff 	li	t1,-1
  f8:	10400008 	beqz	v0,11c <EffectSsHahen_Init+0xac>
  fc:	00000000 	nop
 100:	acc20038 	sw	v0,56(a2)
 104:	84eb002c 	lh	t3,44(a3)
 108:	00c02025 	move	a0,a2
 10c:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 110:	a4cb0048 	sh	t3,72(a2)
 114:	1000000f 	b	154 <EffectSsHahen_Init+0xe4>
 118:	860a0048 	lh	t2,72(s0)
 11c:	3c020000 	lui	v0,0x0
 120:	24420000 	addiu	v0,v0,0
 124:	00026100 	sll	t4,v0,0x4
 128:	000c6f02 	srl	t5,t4,0x1c
 12c:	000d7080 	sll	t6,t5,0x2
 130:	01ee7821 	addu	t7,t7,t6
 134:	8def0000 	lw	t7,0(t7)
 138:	0041c024 	and	t8,v0,at
 13c:	3c018000 	lui	at,0x8000
 140:	01f8c821 	addu	t9,t7,t8
 144:	03214021 	addu	t0,t9,at
 148:	ae080038 	sw	t0,56(s0)
 14c:	a6090048 	sh	t1,72(s0)
 150:	860a0048 	lh	t2,72(s0)
 154:	24010069 	li	at,105
 158:	3c0f0000 	lui	t7,0x0
 15c:	15410009 	bne	t2,at,184 <EffectSsHahen_Init+0x114>
 160:	25ef0000 	addiu	t7,t7,0
 164:	8e0c0038 	lw	t4,56(s0)
 168:	3c0b0000 	lui	t3,0x0
 16c:	256b0000 	addiu	t3,t3,0
 170:	156c0004 	bne	t3,t4,184 <EffectSsHahen_Init+0x114>
 174:	3c0d0000 	lui	t5,0x0
 178:	25ad0000 	addiu	t5,t5,0
 17c:	10000004 	b	190 <EffectSsHahen_Init+0x120>
 180:	ae0d0028 	sw	t5,40(s0)
 184:	3c0e0000 	lui	t6,0x0
 188:	25ce0000 	addiu	t6,t6,0
 18c:	ae0e0028 	sw	t6,40(s0)
 190:	ae0f0024 	sw	t7,36(s0)
 194:	86380028 	lh	t8,40(s1)
 198:	a6180044 	sh	t8,68(s0)
 19c:	8639002a 	lh	t9,42(s1)
 1a0:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 1a4:	a6190046 	sh	t9,70(s0)
 1a8:	3c01439d 	lui	at,0x439d
 1ac:	44812000 	mtc1	at,$f4
 1b0:	00000000 	nop
 1b4:	46040182 	mul.s	$f6,$f0,$f4
 1b8:	4600320d 	trunc.w.s	$f8,$f6
 1bc:	44094000 	mfc1	t1,$f8
 1c0:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 1c4:	a6090040 	sh	t1,64(s0)
 1c8:	3c01439d 	lui	at,0x439d
 1cc:	44815000 	mtc1	at,$f10
 1d0:	240d00c8 	li	t5,200
 1d4:	24020001 	li	v0,1
 1d8:	460a0402 	mul.s	$f16,$f0,$f10
 1dc:	4600848d 	trunc.w.s	$f18,$f16
 1e0:	440b9000 	mfc1	t3,$f18
 1e4:	00000000 	nop
 1e8:	a60b0042 	sh	t3,66(s0)
 1ec:	862c002e 	lh	t4,46(s1)
 1f0:	01ac7023 	subu	t6,t5,t4
 1f4:	a60e004c 	sh	t6,76(s0)
 1f8:	8fbf001c 	lw	ra,28(sp)
 1fc:	8fb10018 	lw	s1,24(sp)
 200:	8fb00014 	lw	s0,20(sp)
 204:	03e00008 	jr	ra
 208:	27bd0020 	addiu	sp,sp,32

0000020c <EffectSsHahen_Draw>:
 20c:	27bdffb0 	addiu	sp,sp,-80
 210:	afbf001c 	sw	ra,28(sp)
 214:	afb10018 	sw	s1,24(sp)
 218:	afb00014 	sw	s0,20(sp)
 21c:	afa40050 	sw	a0,80(sp)
 220:	afa50054 	sw	a1,84(sp)
 224:	84cf0046 	lh	t7,70(a2)
 228:	3c010000 	lui	at,0x0
 22c:	c4280078 	lwc1	$f8,120(at)
 230:	448f2000 	mtc1	t7,$f4
 234:	8c900000 	lw	s0,0(a0)
 238:	00c08825 	move	s1,a2
 23c:	468021a0 	cvt.s.w	$f6,$f4
 240:	3c060000 	lui	a2,0x0
 244:	24c60000 	addiu	a2,a2,0
 248:	27a40030 	addiu	a0,sp,48
 24c:	240700d0 	li	a3,208
 250:	02002825 	move	a1,s0
 254:	46083282 	mul.s	$f10,$f6,$f8
 258:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 25c:	e7aa0044 	swc1	$f10,68(sp)
 260:	86380048 	lh	t8,72(s1)
 264:	2401ffff 	li	at,-1
 268:	00003825 	move	a3,zero
 26c:	53010012 	beql	t8,at,2b8 <EffectSsHahen_Draw+0xac>
 270:	c62c0000 	lwc1	$f12,0(s1)
 274:	8e0202c0 	lw	v0,704(s0)
 278:	3c08db06 	lui	t0,0xdb06
 27c:	35080018 	ori	t0,t0,0x18
 280:	24590008 	addiu	t9,v0,8
 284:	ae1902c0 	sw	t9,704(s0)
 288:	ac480000 	sw	t0,0(v0)
 28c:	862a004a 	lh	t2,74(s1)
 290:	8fa90050 	lw	t1,80(sp)
 294:	3c0d0001 	lui	t5,0x1
 298:	000a5900 	sll	t3,t2,0x4
 29c:	016a5821 	addu	t3,t3,t2
 2a0:	000b5880 	sll	t3,t3,0x2
 2a4:	012b6021 	addu	t4,t1,t3
 2a8:	01ac6821 	addu	t5,t5,t4
 2ac:	8dad17b4 	lw	t5,6068(t5)
 2b0:	ac4d0004 	sw	t5,4(v0)
 2b4:	c62c0000 	lwc1	$f12,0(s1)
 2b8:	c62e0004 	lwc1	$f14,4(s1)
 2bc:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 2c0:	8e260008 	lw	a2,8(s1)
 2c4:	862e0042 	lh	t6,66(s1)
 2c8:	3c010000 	lui	at,0x0
 2cc:	c424007c 	lwc1	$f4,124(at)
 2d0:	448e8000 	mtc1	t6,$f16
 2d4:	24050001 	li	a1,1
 2d8:	468084a0 	cvt.s.w	$f18,$f16
 2dc:	46049302 	mul.s	$f12,$f18,$f4
 2e0:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 2e4:	00000000 	nop
 2e8:	862f0040 	lh	t7,64(s1)
 2ec:	3c010000 	lui	at,0x0
 2f0:	c42a0080 	lwc1	$f10,128(at)
 2f4:	448f3000 	mtc1	t7,$f6
 2f8:	24050001 	li	a1,1
 2fc:	46803220 	cvt.s.w	$f8,$f6
 300:	460a4302 	mul.s	$f12,$f8,$f10
 304:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 308:	00000000 	nop
 30c:	c7ac0044 	lwc1	$f12,68(sp)
 310:	24070001 	li	a3,1
 314:	44066000 	mfc1	a2,$f12
 318:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 31c:	46006386 	mov.s	$f14,$f12
 320:	8e0202c0 	lw	v0,704(s0)
 324:	3c19da38 	lui	t9,0xda38
 328:	37390003 	ori	t9,t9,0x3
 32c:	24580008 	addiu	t8,v0,8
 330:	ae1802c0 	sw	t8,704(s0)
 334:	3c050000 	lui	a1,0x0
 338:	ac590000 	sw	t9,0(v0)
 33c:	24a50014 	addiu	a1,a1,20
 340:	02002025 	move	a0,s0
 344:	240600e4 	li	a2,228
 348:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 34c:	afa20028 	sw	v0,40(sp)
 350:	8fa30028 	lw	v1,40(sp)
 354:	ac620004 	sw	v0,4(v1)
 358:	8fa80050 	lw	t0,80(sp)
 35c:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 360:	8d040000 	lw	a0,0(t0)
 364:	8e0202c0 	lw	v0,704(s0)
 368:	3c09de00 	lui	t1,0xde00
 36c:	3c060000 	lui	a2,0x0
 370:	244a0008 	addiu	t2,v0,8
 374:	ae0a02c0 	sw	t2,704(s0)
 378:	ac490000 	sw	t1,0(v0)
 37c:	8e2b0038 	lw	t3,56(s1)
 380:	24c60028 	addiu	a2,a2,40
 384:	27a40030 	addiu	a0,sp,48
 388:	02002825 	move	a1,s0
 38c:	240700ec 	li	a3,236
 390:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 394:	ac4b0004 	sw	t3,4(v0)
 398:	8fbf001c 	lw	ra,28(sp)
 39c:	8fb00014 	lw	s0,20(sp)
 3a0:	8fb10018 	lw	s1,24(sp)
 3a4:	03e00008 	jr	ra
 3a8:	27bd0050 	addiu	sp,sp,80

000003ac <EffectSsHahen_DrawGray>:
 3ac:	27bdffa8 	addiu	sp,sp,-88
 3b0:	afbf001c 	sw	ra,28(sp)
 3b4:	afb10018 	sw	s1,24(sp)
 3b8:	afb00014 	sw	s0,20(sp)
 3bc:	afa40058 	sw	a0,88(sp)
 3c0:	afa5005c 	sw	a1,92(sp)
 3c4:	84cf0046 	lh	t7,70(a2)
 3c8:	3c010000 	lui	at,0x0
 3cc:	c4280084 	lwc1	$f8,132(at)
 3d0:	448f2000 	mtc1	t7,$f4
 3d4:	8c900000 	lw	s0,0(a0)
 3d8:	00c08825 	move	s1,a2
 3dc:	468021a0 	cvt.s.w	$f6,$f4
 3e0:	3c060000 	lui	a2,0x0
 3e4:	24c6003c 	addiu	a2,a2,60
 3e8:	27a40038 	addiu	a0,sp,56
 3ec:	240700fd 	li	a3,253
 3f0:	02002825 	move	a1,s0
 3f4:	46083282 	mul.s	$f10,$f6,$f8
 3f8:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 3fc:	e7aa004c 	swc1	$f10,76(sp)
 400:	86380048 	lh	t8,72(s1)
 404:	2401ffff 	li	at,-1
 408:	00003825 	move	a3,zero
 40c:	53010012 	beql	t8,at,458 <EffectSsHahen_DrawGray+0xac>
 410:	c62c0000 	lwc1	$f12,0(s1)
 414:	8e0202c0 	lw	v0,704(s0)
 418:	3c08db06 	lui	t0,0xdb06
 41c:	35080018 	ori	t0,t0,0x18
 420:	24590008 	addiu	t9,v0,8
 424:	ae1902c0 	sw	t9,704(s0)
 428:	ac480000 	sw	t0,0(v0)
 42c:	862a004a 	lh	t2,74(s1)
 430:	8fa90058 	lw	t1,88(sp)
 434:	3c0d0001 	lui	t5,0x1
 438:	000a5900 	sll	t3,t2,0x4
 43c:	016a5821 	addu	t3,t3,t2
 440:	000b5880 	sll	t3,t3,0x2
 444:	012b6021 	addu	t4,t1,t3
 448:	01ac6821 	addu	t5,t5,t4
 44c:	8dad17b4 	lw	t5,6068(t5)
 450:	ac4d0004 	sw	t5,4(v0)
 454:	c62c0000 	lwc1	$f12,0(s1)
 458:	c62e0004 	lwc1	$f14,4(s1)
 45c:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 460:	8e260008 	lw	a2,8(s1)
 464:	862e0042 	lh	t6,66(s1)
 468:	3c010000 	lui	at,0x0
 46c:	c4240088 	lwc1	$f4,136(at)
 470:	448e8000 	mtc1	t6,$f16
 474:	24050001 	li	a1,1
 478:	468084a0 	cvt.s.w	$f18,$f16
 47c:	46049302 	mul.s	$f12,$f18,$f4
 480:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 484:	00000000 	nop
 488:	862f0040 	lh	t7,64(s1)
 48c:	3c010000 	lui	at,0x0
 490:	c42a008c 	lwc1	$f10,140(at)
 494:	448f3000 	mtc1	t7,$f6
 498:	24050001 	li	a1,1
 49c:	46803220 	cvt.s.w	$f8,$f6
 4a0:	460a4302 	mul.s	$f12,$f8,$f10
 4a4:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 4a8:	00000000 	nop
 4ac:	c7ac004c 	lwc1	$f12,76(sp)
 4b0:	24070001 	li	a3,1
 4b4:	44066000 	mfc1	a2,$f12
 4b8:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 4bc:	46006386 	mov.s	$f14,$f12
 4c0:	8e0202c0 	lw	v0,704(s0)
 4c4:	3c19da38 	lui	t9,0xda38
 4c8:	37390003 	ori	t9,t9,0x3
 4cc:	24580008 	addiu	t8,v0,8
 4d0:	ae1802c0 	sw	t8,704(s0)
 4d4:	3c050000 	lui	a1,0x0
 4d8:	ac590000 	sw	t9,0(v0)
 4dc:	24a50050 	addiu	a1,a1,80
 4e0:	02002025 	move	a0,s0
 4e4:	2406010f 	li	a2,271
 4e8:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 4ec:	afa20030 	sw	v0,48(sp)
 4f0:	8fa30030 	lw	v1,48(sp)
 4f4:	ac620004 	sw	v0,4(v1)
 4f8:	8fa80058 	lw	t0,88(sp)
 4fc:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 500:	8d040000 	lw	a0,0(t0)
 504:	8e0202c0 	lw	v0,704(s0)
 508:	3c09fc41 	lui	t1,0xfc41
 50c:	3c0bff8f 	lui	t3,0xff8f
 510:	244a0008 	addiu	t2,v0,8
 514:	ae0a02c0 	sw	t2,704(s0)
 518:	356bffff 	ori	t3,t3,0xffff
 51c:	3529c683 	ori	t1,t1,0xc683
 520:	ac490000 	sw	t1,0(v0)
 524:	ac4b0004 	sw	t3,4(v0)
 528:	8e0202c0 	lw	v0,704(s0)
 52c:	3c0dfa00 	lui	t5,0xfa00
 530:	3c0e6464 	lui	t6,0x6464
 534:	244c0008 	addiu	t4,v0,8
 538:	ae0c02c0 	sw	t4,704(s0)
 53c:	35ce78ff 	ori	t6,t6,0x78ff
 540:	35ad0001 	ori	t5,t5,0x1
 544:	ac4d0000 	sw	t5,0(v0)
 548:	ac4e0004 	sw	t6,4(v0)
 54c:	8e0202c0 	lw	v0,704(s0)
 550:	3c18de00 	lui	t8,0xde00
 554:	3c060000 	lui	a2,0x0
 558:	244f0008 	addiu	t7,v0,8
 55c:	ae0f02c0 	sw	t7,704(s0)
 560:	ac580000 	sw	t8,0(v0)
 564:	8e390038 	lw	t9,56(s1)
 568:	24c60064 	addiu	a2,a2,100
 56c:	27a40038 	addiu	a0,sp,56
 570:	02002825 	move	a1,s0
 574:	24070120 	li	a3,288
 578:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 57c:	ac590004 	sw	t9,4(v0)
 580:	8fbf001c 	lw	ra,28(sp)
 584:	8fb00014 	lw	s0,20(sp)
 588:	8fb10018 	lw	s1,24(sp)
 58c:	03e00008 	jr	ra
 590:	27bd0058 	addiu	sp,sp,88

00000594 <EffectSsHahen_Update>:
 594:	27bdffe8 	addiu	sp,sp,-24
 598:	afbf0014 	sw	ra,20(sp)
 59c:	afa40018 	sw	a0,24(sp)
 5a0:	afa5001c 	sw	a1,28(sp)
 5a4:	84ce0040 	lh	t6,64(a2)
 5a8:	84d80042 	lh	t8,66(a2)
 5ac:	8c821c44 	lw	v0,7236(a0)
 5b0:	25cf0037 	addiu	t7,t6,55
 5b4:	2719000a 	addiu	t9,t8,10
 5b8:	a4cf0040 	sh	t7,64(a2)
 5bc:	a4d90042 	sh	t9,66(a2)
 5c0:	c4c60004 	lwc1	$f6,4(a2)
 5c4:	c4440080 	lwc1	$f4,128(v0)
 5c8:	00802825 	move	a1,a0
 5cc:	4604303e 	c.le.s	$f6,$f4
 5d0:	00000000 	nop
 5d4:	45020008 	bc1fl	5f8 <EffectSsHahen_Update+0x64>
 5d8:	84ca0048 	lh	t2,72(a2)
 5dc:	84c8005c 	lh	t0,92(a2)
 5e0:	84c9004c 	lh	t1,76(a2)
 5e4:	0109082a 	slt	at,t0,t1
 5e8:	50200003 	beqzl	at,5f8 <EffectSsHahen_Update+0x64>
 5ec:	84ca0048 	lh	t2,72(a2)
 5f0:	a4c0005c 	sh	zero,92(a2)
 5f4:	84ca0048 	lh	t2,72(a2)
 5f8:	2401ffff 	li	at,-1
 5fc:	51410004 	beql	t2,at,610 <EffectSsHahen_Update+0x7c>
 600:	8fbf0014 	lw	ra,20(sp)
 604:	0c000000 	jal	0 <EffectSsHahen_CheckForObject>
 608:	00c02025 	move	a0,a2
 60c:	8fbf0014 	lw	ra,20(sp)
 610:	27bd0018 	addiu	sp,sp,24
 614:	03e00008 	jr	ra
 618:	00000000 	nop
 61c:	00000000 	nop
