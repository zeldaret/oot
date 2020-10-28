
build/src/overlays/effects/ovl_Effect_Ss_KiraKira/z_eff_ss_kirakira.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsKiraKira_Init>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	8cef0000 	lw	t7,0(a3)
   c:	3c0100ff 	lui	at,0xff
  10:	3421ffff 	ori	at,at,0xffff
  14:	accf0000 	sw	t7,0(a2)
  18:	8cee0004 	lw	t6,4(a3)
  1c:	acce0004 	sw	t6,4(a2)
  20:	8cef0008 	lw	t7,8(a3)
  24:	3c0e0000 	lui	t6,0x0
  28:	accf0008 	sw	t7,8(a2)
  2c:	8cf9000c 	lw	t9,12(a3)
  30:	3c0f0000 	lui	t7,0x0
  34:	acd9000c 	sw	t9,12(a2)
  38:	8cf80010 	lw	t8,16(a3)
  3c:	acd80010 	sw	t8,16(a2)
  40:	8cf90014 	lw	t9,20(a3)
  44:	acd90014 	sw	t9,20(a2)
  48:	8ce90018 	lw	t1,24(a3)
  4c:	acc90018 	sw	t1,24(a2)
  50:	8ce8001c 	lw	t0,28(a3)
  54:	acc8001c 	sw	t0,28(a2)
  58:	8ce90020 	lw	t1,32(a3)
  5c:	acc90020 	sw	t1,32(a2)
  60:	84e20032 	lh	v0,50(a3)
  64:	3c090000 	lui	t1,0x0
  68:	25290000 	addiu	t1,t1,0
  6c:	04410017 	bgez	v0,cc <EffectSsKiraKira_Init+0xcc>
  70:	a4c2005c 	sh	v0,92(a2)
  74:	3c020000 	lui	v0,0x0
  78:	84ca005c 	lh	t2,92(a2)
  7c:	24420000 	addiu	v0,v0,0
  80:	00026100 	sll	t4,v0,0x4
  84:	000c6f02 	srl	t5,t4,0x1c
  88:	000d7080 	sll	t6,t5,0x2
  8c:	000a5823 	negu	t3,t2
  90:	a4cb005c 	sh	t3,92(a2)
  94:	01ee7821 	addu	t7,t7,t6
  98:	3c0100ff 	lui	at,0xff
  9c:	8def0000 	lw	t7,0(t7)
  a0:	3421ffff 	ori	at,at,0xffff
  a4:	0041c024 	and	t8,v0,at
  a8:	3c018000 	lui	at,0x8000
  ac:	01f8c821 	addu	t9,t7,t8
  b0:	03214021 	addu	t0,t9,at
  b4:	acc80038 	sw	t0,56(a2)
  b8:	acc90024 	sw	t1,36(a2)
  bc:	84ea002e 	lh	t2,46(a3)
  c0:	a4c00056 	sh	zero,86(a2)
  c4:	1000001a 	b	130 <EffectSsKiraKira_Init+0x130>
  c8:	a4ca0052 	sh	t2,82(a2)
  cc:	3c020000 	lui	v0,0x0
  d0:	24420000 	addiu	v0,v0,0
  d4:	00025900 	sll	t3,v0,0x4
  d8:	000b6702 	srl	t4,t3,0x1c
  dc:	000c6880 	sll	t5,t4,0x2
  e0:	01cd7021 	addu	t6,t6,t5
  e4:	8dce0000 	lw	t6,0(t6)
  e8:	00417824 	and	t7,v0,at
  ec:	3c018000 	lui	at,0x8000
  f0:	01cfc021 	addu	t8,t6,t7
  f4:	0301c821 	addu	t9,t8,at
  f8:	acd90038 	sw	t9,56(a2)
  fc:	90e80038 	lbu	t0,56(a3)
 100:	3c0a0000 	lui	t2,0x0
 104:	3c090000 	lui	t1,0x0
 108:	15000004 	bnez	t0,11c <EffectSsKiraKira_Init+0x11c>
 10c:	254a0000 	addiu	t2,t2,0
 110:	25290000 	addiu	t1,t1,0
 114:	10000002 	b	120 <EffectSsKiraKira_Init+0x120>
 118:	acc90024 	sw	t1,36(a2)
 11c:	acca0024 	sw	t2,36(a2)
 120:	90eb002b 	lbu	t3,43(a3)
 124:	a4cb0052 	sh	t3,82(a2)
 128:	84ec002e 	lh	t4,46(a3)
 12c:	a4cc0056 	sh	t4,86(a2)
 130:	3c0d0000 	lui	t5,0x0
 134:	25ad0000 	addiu	t5,t5,0
 138:	accd0028 	sw	t5,40(a2)
 13c:	84ee0034 	lh	t6,52(a3)
 140:	24020001 	li	v0,1
 144:	a4ce0040 	sh	t6,64(a2)
 148:	84ef0036 	lh	t7,54(a3)
 14c:	a4cf0042 	sh	t7,66(a2)
 150:	90f80024 	lbu	t8,36(a3)
 154:	a4d80044 	sh	t8,68(a2)
 158:	90f90025 	lbu	t9,37(a3)
 15c:	a4d90046 	sh	t9,70(a2)
 160:	90e80026 	lbu	t0,38(a3)
 164:	a4c80048 	sh	t0,72(a2)
 168:	90e90027 	lbu	t1,39(a3)
 16c:	a4c9004a 	sh	t1,74(a2)
 170:	90ea0028 	lbu	t2,40(a3)
 174:	a4ca004c 	sh	t2,76(a2)
 178:	90eb0029 	lbu	t3,41(a3)
 17c:	a4cb004e 	sh	t3,78(a2)
 180:	90ec002a 	lbu	t4,42(a3)
 184:	a4cc0050 	sh	t4,80(a2)
 188:	84ed002c 	lh	t5,44(a3)
 18c:	a4cd0054 	sh	t5,84(a2)
 190:	8cee0030 	lw	t6,48(a3)
 194:	03e00008 	jr	ra
 198:	a4ce0058 	sh	t6,88(a2)

0000019c <EffectSsKiraKira_Draw>:
 19c:	27bdfe20 	addiu	sp,sp,-480
 1a0:	afbf001c 	sw	ra,28(sp)
 1a4:	afb10018 	sw	s1,24(sp)
 1a8:	afb00014 	sw	s0,20(sp)
 1ac:	afa401e0 	sw	a0,480(sp)
 1b0:	afa501e4 	sw	a1,484(sp)
 1b4:	84ce0056 	lh	t6,86(a2)
 1b8:	3c010000 	lui	at,0x0
 1bc:	c4280030 	lwc1	$f8,48(at)
 1c0:	448e2000 	mtc1	t6,$f4
 1c4:	00c08025 	move	s0,a2
 1c8:	3c060000 	lui	a2,0x0
 1cc:	468021a0 	cvt.s.w	$f6,$f4
 1d0:	24c60000 	addiu	a2,a2,0
 1d4:	24070101 	li	a3,257
 1d8:	46083283 	div.s	$f10,$f6,$f8
 1dc:	e7aa01d8 	swc1	$f10,472(sp)
 1e0:	8c910000 	lw	s1,0(a0)
 1e4:	27a4003c 	addiu	a0,sp,60
 1e8:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 1ec:	02202825 	move	a1,s1
 1f0:	27a40194 	addiu	a0,sp,404
 1f4:	8e050000 	lw	a1,0(s0)
 1f8:	8e060004 	lw	a2,4(s0)
 1fc:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 200:	8e070008 	lw	a3,8(s0)
 204:	27a40154 	addiu	a0,sp,340
 208:	00002825 	move	a1,zero
 20c:	00003025 	move	a2,zero
 210:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 214:	86070042 	lh	a3,66(s0)
 218:	c7a001d8 	lwc1	$f0,472(sp)
 21c:	27a40114 	addiu	a0,sp,276
 220:	3c073f80 	lui	a3,0x3f80
 224:	44050000 	mfc1	a1,$f0
 228:	44060000 	mfc1	a2,$f0
 22c:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 230:	00000000 	nop
 234:	8fa501e0 	lw	a1,480(sp)
 238:	3c010001 	lui	at,0x1
 23c:	34211da0 	ori	at,at,0x1da0
 240:	27a40194 	addiu	a0,sp,404
 244:	27a600d4 	addiu	a2,sp,212
 248:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 24c:	00a12821 	addu	a1,a1,at
 250:	27a400d4 	addiu	a0,sp,212
 254:	27a50154 	addiu	a1,sp,340
 258:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 25c:	27a60094 	addiu	a2,sp,148
 260:	27a40094 	addiu	a0,sp,148
 264:	27a50114 	addiu	a1,sp,276
 268:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 26c:	27a60054 	addiu	a2,sp,84
 270:	8e2302d0 	lw	v1,720(s1)
 274:	3c19da38 	lui	t9,0xda38
 278:	3c080000 	lui	t0,0x0
 27c:	24780008 	addiu	t8,v1,8
 280:	ae3802d0 	sw	t8,720(s1)
 284:	25080000 	addiu	t0,t0,0
 288:	37390003 	ori	t9,t9,0x3
 28c:	02202025 	move	a0,s1
 290:	27a50054 	addiu	a1,sp,84
 294:	ac790000 	sw	t9,0(v1)
 298:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 29c:	ac680004 	sw	t0,4(v1)
 2a0:	10400044 	beqz	v0,3b4 <EffectSsKiraKira_Draw+0x218>
 2a4:	3c0ada38 	lui	t2,0xda38
 2a8:	8e2302d0 	lw	v1,720(s1)
 2ac:	354a0003 	ori	t2,t2,0x3
 2b0:	02202025 	move	a0,s1
 2b4:	24690008 	addiu	t1,v1,8
 2b8:	ae2902d0 	sw	t1,720(s1)
 2bc:	ac620004 	sw	v0,4(v1)
 2c0:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 2c4:	ac6a0000 	sw	t2,0(v1)
 2c8:	8e2302d0 	lw	v1,720(s1)
 2cc:	3c0cfa00 	lui	t4,0xfa00
 2d0:	358c8080 	ori	t4,t4,0x8080
 2d4:	246b0008 	addiu	t3,v1,8
 2d8:	ae2b02d0 	sw	t3,720(s1)
 2dc:	ac6c0000 	sw	t4,0(v1)
 2e0:	860d0058 	lh	t5,88(s0)
 2e4:	3c01425c 	lui	at,0x425c
 2e8:	44818000 	mtc1	at,$f16
 2ec:	448d9000 	mtc1	t5,$f18
 2f0:	860e005c 	lh	t6,92(s0)
 2f4:	860f0046 	lh	t7,70(s0)
 2f8:	46809120 	cvt.s.w	$f4,$f18
 2fc:	448e4000 	mtc1	t6,$f8
 300:	860c0044 	lh	t4,68(s0)
 304:	31f800ff 	andi	t8,t7,0xff
 308:	0018cc00 	sll	t9,t8,0x10
 30c:	468042a0 	cvt.s.w	$f10,$f8
 310:	000c6e00 	sll	t5,t4,0x18
 314:	3c0ffb00 	lui	t7,0xfb00
 318:	46048183 	div.s	$f6,$f16,$f4
 31c:	460a3482 	mul.s	$f18,$f6,$f10
 320:	4600940d 	trunc.w.s	$f16,$f18
 324:	44088000 	mfc1	t0,$f16
 328:	00000000 	nop
 32c:	250900c8 	addiu	t1,t0,200
 330:	312a00ff 	andi	t2,t1,0xff
 334:	86090048 	lh	t1,72(s0)
 338:	014d7025 	or	t6,t2,t5
 33c:	01d94025 	or	t0,t6,t9
 340:	312b00ff 	andi	t3,t1,0xff
 344:	000b6200 	sll	t4,t3,0x8
 348:	010c5025 	or	t2,t0,t4
 34c:	ac6a0004 	sw	t2,4(v1)
 350:	8e2302d0 	lw	v1,720(s1)
 354:	246d0008 	addiu	t5,v1,8
 358:	ae2d02d0 	sw	t5,720(s1)
 35c:	ac6f0000 	sw	t7,0(v1)
 360:	86180052 	lh	t8,82(s0)
 364:	860c004e 	lh	t4,78(s0)
 368:	8609004c 	lh	t1,76(s0)
 36c:	330e00ff 	andi	t6,t8,0xff
 370:	86180050 	lh	t8,80(s0)
 374:	318a00ff 	andi	t2,t4,0xff
 378:	00095e00 	sll	t3,t1,0x18
 37c:	01cb4025 	or	t0,t6,t3
 380:	000a6c00 	sll	t5,t2,0x10
 384:	331900ff 	andi	t9,t8,0xff
 388:	00194a00 	sll	t1,t9,0x8
 38c:	010d7825 	or	t7,t0,t5
 390:	01e97025 	or	t6,t7,t1
 394:	ac6e0004 	sw	t6,4(v1)
 398:	8e2302d0 	lw	v1,720(s1)
 39c:	3c0cde00 	lui	t4,0xde00
 3a0:	246b0008 	addiu	t3,v1,8
 3a4:	ae2b02d0 	sw	t3,720(s1)
 3a8:	ac6c0000 	sw	t4,0(v1)
 3ac:	8e0a0038 	lw	t2,56(s0)
 3b0:	ac6a0004 	sw	t2,4(v1)
 3b4:	3c060000 	lui	a2,0x0
 3b8:	24c60018 	addiu	a2,a2,24
 3bc:	27a4003c 	addiu	a0,sp,60
 3c0:	02202825 	move	a1,s1
 3c4:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 3c8:	2407012d 	li	a3,301
 3cc:	8fbf001c 	lw	ra,28(sp)
 3d0:	8fb00014 	lw	s0,20(sp)
 3d4:	8fb10018 	lw	s1,24(sp)
 3d8:	03e00008 	jr	ra
 3dc:	27bd01e0 	addiu	sp,sp,480

000003e0 <func_809AABF0>:
 3e0:	27bdffe8 	addiu	sp,sp,-24
 3e4:	afbf0014 	sw	ra,20(sp)
 3e8:	afa40018 	sw	a0,24(sp)
 3ec:	afa5001c 	sw	a1,28(sp)
 3f0:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 3f4:	afa60020 	sw	a2,32(sp)
 3f8:	3c010000 	lui	at,0x0
 3fc:	c4240034 	lwc1	$f4,52(at)
 400:	3c010000 	lui	at,0x0
 404:	c4280038 	lwc1	$f8,56(at)
 408:	46040182 	mul.s	$f6,$f0,$f4
 40c:	8fa60020 	lw	a2,32(sp)
 410:	46083281 	sub.s	$f10,$f6,$f8
 414:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 418:	e4ca0018 	swc1	$f10,24(a2)
 41c:	3c010000 	lui	at,0x0
 420:	c430003c 	lwc1	$f16,60(at)
 424:	8fa60020 	lw	a2,32(sp)
 428:	3c010000 	lui	at,0x0
 42c:	46100482 	mul.s	$f18,$f0,$f16
 430:	84c20054 	lh	v0,84(a2)
 434:	84ce0052 	lh	t6,82(a2)
 438:	c4240040 	lwc1	$f4,64(at)
 43c:	0002c023 	negu	t8,v0
 440:	01c27821 	addu	t7,t6,v0
 444:	a4cf0052 	sh	t7,82(a2)
 448:	46049181 	sub.s	$f6,$f18,$f4
 44c:	84c30052 	lh	v1,82(a2)
 450:	04610004 	bgez	v1,464 <func_809AABF0+0x84>
 454:	e4c60020 	swc1	$f6,32(a2)
 458:	a4c00052 	sh	zero,82(a2)
 45c:	10000007 	b	47c <func_809AABF0+0x9c>
 460:	a4d80054 	sh	t8,84(a2)
 464:	28610100 	slti	at,v1,256
 468:	14200004 	bnez	at,47c <func_809AABF0+0x9c>
 46c:	241900ff 	li	t9,255
 470:	00024023 	negu	t0,v0
 474:	a4d90052 	sh	t9,82(a2)
 478:	a4c80054 	sh	t0,84(a2)
 47c:	84c90042 	lh	t1,66(a2)
 480:	84ca0040 	lh	t2,64(a2)
 484:	012a5821 	addu	t3,t1,t2
 488:	a4cb0042 	sh	t3,66(a2)
 48c:	8fbf0014 	lw	ra,20(sp)
 490:	27bd0018 	addiu	sp,sp,24
 494:	03e00008 	jr	ra
 498:	00000000 	nop

0000049c <func_809AACAC>:
 49c:	27bdffe8 	addiu	sp,sp,-24
 4a0:	afbf0014 	sw	ra,20(sp)
 4a4:	afa40018 	sw	a0,24(sp)
 4a8:	afa5001c 	sw	a1,28(sp)
 4ac:	3c010000 	lui	at,0x0
 4b0:	c4200044 	lwc1	$f0,68(at)
 4b4:	c4c4000c 	lwc1	$f4,12(a2)
 4b8:	c4c80014 	lwc1	$f8,20(a2)
 4bc:	3c010000 	lui	at,0x0
 4c0:	46002182 	mul.s	$f6,$f4,$f0
 4c4:	00000000 	nop
 4c8:	46004282 	mul.s	$f10,$f8,$f0
 4cc:	e4c6000c 	swc1	$f6,12(a2)
 4d0:	e4ca0014 	swc1	$f10,20(a2)
 4d4:	afa60020 	sw	a2,32(sp)
 4d8:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 4dc:	c42c0048 	lwc1	$f12,72(at)
 4e0:	8fa60020 	lw	a2,32(sp)
 4e4:	3c010000 	lui	at,0x0
 4e8:	e4c00018 	swc1	$f0,24(a2)
 4ec:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 4f0:	c42c004c 	lwc1	$f12,76(at)
 4f4:	8fa60020 	lw	a2,32(sp)
 4f8:	84c20054 	lh	v0,84(a2)
 4fc:	84ce0052 	lh	t6,82(a2)
 500:	e4c00020 	swc1	$f0,32(a2)
 504:	0002c023 	negu	t8,v0
 508:	01c27821 	addu	t7,t6,v0
 50c:	a4cf0052 	sh	t7,82(a2)
 510:	84c30052 	lh	v1,82(a2)
 514:	04610004 	bgez	v1,528 <func_809AACAC+0x8c>
 518:	28610100 	slti	at,v1,256
 51c:	a4c00052 	sh	zero,82(a2)
 520:	10000006 	b	53c <func_809AACAC+0xa0>
 524:	a4d80054 	sh	t8,84(a2)
 528:	14200004 	bnez	at,53c <func_809AACAC+0xa0>
 52c:	241900ff 	li	t9,255
 530:	00024023 	negu	t0,v0
 534:	a4d90052 	sh	t9,82(a2)
 538:	a4c80054 	sh	t0,84(a2)
 53c:	84c90042 	lh	t1,66(a2)
 540:	84ca0040 	lh	t2,64(a2)
 544:	012a5821 	addu	t3,t1,t2
 548:	a4cb0042 	sh	t3,66(a2)
 54c:	8fbf0014 	lw	ra,20(sp)
 550:	27bd0018 	addiu	sp,sp,24
 554:	03e00008 	jr	ra
 558:	00000000 	nop

0000055c <func_809AAD6C>:
 55c:	27bdffe8 	addiu	sp,sp,-24
 560:	afbf0014 	sw	ra,20(sp)
 564:	afa40018 	sw	a0,24(sp)
 568:	afa5001c 	sw	a1,28(sp)
 56c:	84ce0058 	lh	t6,88(a2)
 570:	3c014700 	lui	at,0x4700
 574:	44812000 	mtc1	at,$f4
 578:	448e3000 	mtc1	t6,$f6
 57c:	84cf005c 	lh	t7,92(a2)
 580:	afa60020 	sw	a2,32(sp)
 584:	46803220 	cvt.s.w	$f8,$f6
 588:	448f8000 	mtc1	t7,$f16
 58c:	00000000 	nop
 590:	468084a0 	cvt.s.w	$f18,$f16
 594:	46082283 	div.s	$f10,$f4,$f8
 598:	46125182 	mul.s	$f6,$f10,$f18
 59c:	4600310d 	trunc.w.s	$f4,$f6
 5a0:	44042000 	mfc1	a0,$f4
 5a4:	00000000 	nop
 5a8:	00042400 	sll	a0,a0,0x10
 5ac:	0c000000 	jal	0 <EffectSsKiraKira_Init>
 5b0:	00042403 	sra	a0,a0,0x10
 5b4:	8fa60020 	lw	a2,32(sp)
 5b8:	84d90052 	lh	t9,82(a2)
 5bc:	44994000 	mtc1	t9,$f8
 5c0:	00000000 	nop
 5c4:	46804420 	cvt.s.w	$f16,$f8
 5c8:	46100282 	mul.s	$f10,$f0,$f16
 5cc:	4600548d 	trunc.w.s	$f18,$f10
 5d0:	44099000 	mfc1	t1,$f18
 5d4:	00000000 	nop
 5d8:	a4c90056 	sh	t1,86(a2)
 5dc:	8fbf0014 	lw	ra,20(sp)
 5e0:	27bd0018 	addiu	sp,sp,24
 5e4:	03e00008 	jr	ra
 5e8:	00000000 	nop
 5ec:	00000000 	nop
