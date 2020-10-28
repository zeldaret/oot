
build/src/overlays/effects/ovl_Effect_Ss_Dt_Bubble/z_eff_ss_dt_bubble.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsDtBubble_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afa5002c 	sw	a1,44(sp)
  10:	afa60030 	sw	a2,48(sp)
  14:	0c000000 	jal	0 <EffectSsDtBubble_Init>
  18:	afa70034 	sw	a3,52(sp)
  1c:	3c013f00 	lui	at,0x3f00
  20:	44812000 	mtc1	at,$f4
  24:	3c030000 	lui	v1,0x0
  28:	24630000 	addiu	v1,v1,0
  2c:	4604003c 	c.lt.s	$f0,$f4
  30:	8fa60030 	lw	a2,48(sp)
  34:	8fa70034 	lw	a3,52(sp)
  38:	45000004 	bc1f	4c <EffectSsDtBubble_Init+0x4c>
  3c:	00000000 	nop
  40:	3c030000 	lui	v1,0x0
  44:	10000001 	b	4c <EffectSsDtBubble_Init+0x4c>
  48:	24630000 	addiu	v1,v1,0
  4c:	afa3001c 	sw	v1,28(sp)
  50:	afa60030 	sw	a2,48(sp)
  54:	0c000000 	jal	0 <EffectSsDtBubble_Init>
  58:	afa70034 	sw	a3,52(sp)
  5c:	3c013f00 	lui	at,0x3f00
  60:	44813000 	mtc1	at,$f6
  64:	8fa3001c 	lw	v1,28(sp)
  68:	3c0100ff 	lui	at,0xff
  6c:	4606003c 	c.lt.s	$f0,$f6
  70:	3421ffff 	ori	at,at,0xffff
  74:	8fa60030 	lw	a2,48(sp)
  78:	8fa70034 	lw	a3,52(sp)
  7c:	45000004 	bc1f	90 <EffectSsDtBubble_Init+0x90>
  80:	00037900 	sll	t7,v1,0x4
  84:	3c020000 	lui	v0,0x0
  88:	10000003 	b	98 <EffectSsDtBubble_Init+0x98>
  8c:	24420000 	addiu	v0,v0,0
  90:	3c020000 	lui	v0,0x0
  94:	24420000 	addiu	v0,v0,0
  98:	000fc702 	srl	t8,t7,0x1c
  9c:	0018c880 	sll	t9,t8,0x2
  a0:	3c080000 	lui	t0,0x0
  a4:	01194021 	addu	t0,t0,t9
  a8:	8d080000 	lw	t0,0(t0)
  ac:	00417024 	and	t6,v0,at
  b0:	3c018000 	lui	at,0x8000
  b4:	01c84821 	addu	t1,t6,t0
  b8:	01215021 	addu	t2,t1,at
  bc:	acca0038 	sw	t2,56(a2)
  c0:	8cec0000 	lw	t4,0(a3)
  c4:	accc0000 	sw	t4,0(a2)
  c8:	8ceb0004 	lw	t3,4(a3)
  cc:	accb0004 	sw	t3,4(a2)
  d0:	8cec0008 	lw	t4,8(a3)
  d4:	accc0008 	sw	t4,8(a2)
  d8:	8cef000c 	lw	t7,12(a3)
  dc:	accf000c 	sw	t7,12(a2)
  e0:	8ced0010 	lw	t5,16(a3)
  e4:	accd0010 	sw	t5,16(a2)
  e8:	8cef0014 	lw	t7,20(a3)
  ec:	accf0014 	sw	t7,20(a2)
  f0:	8cf90018 	lw	t9,24(a3)
  f4:	acd90018 	sw	t9,24(a2)
  f8:	8cf8001c 	lw	t8,28(a3)
  fc:	acd8001c 	sw	t8,28(a2)
 100:	8cf90020 	lw	t9,32(a3)
 104:	acd90020 	sw	t9,32(a2)
 108:	84ee002e 	lh	t6,46(a3)
 10c:	a4ce005c 	sh	t6,92(a2)
 110:	90e80034 	lbu	t0,52(a3)
 114:	5500002f 	bnezl	t0,1d4 <EffectSsDtBubble_Init+0x1d4>
 118:	90eb0024 	lbu	t3,36(a3)
 11c:	84e90030 	lh	t1,48(a3)
 120:	3c020000 	lui	v0,0x0
 124:	24420000 	addiu	v0,v0,0
 128:	00095080 	sll	t2,t1,0x2
 12c:	004a5821 	addu	t3,v0,t2
 130:	916c0000 	lbu	t4,0(t3)
 134:	3c030000 	lui	v1,0x0
 138:	2463000c 	addiu	v1,v1,12
 13c:	a4cc0040 	sh	t4,64(a2)
 140:	84ed0030 	lh	t5,48(a3)
 144:	000d7880 	sll	t7,t5,0x2
 148:	004fc021 	addu	t8,v0,t7
 14c:	93190001 	lbu	t9,1(t8)
 150:	a4d90042 	sh	t9,66(a2)
 154:	84ee0030 	lh	t6,48(a3)
 158:	000e4080 	sll	t0,t6,0x2
 15c:	00484821 	addu	t1,v0,t0
 160:	912a0002 	lbu	t2,2(t1)
 164:	a4ca0044 	sh	t2,68(a2)
 168:	84eb0030 	lh	t3,48(a3)
 16c:	000b6080 	sll	t4,t3,0x2
 170:	004c6821 	addu	t5,v0,t4
 174:	91af0003 	lbu	t7,3(t5)
 178:	a4cf0046 	sh	t7,70(a2)
 17c:	84f80030 	lh	t8,48(a3)
 180:	0018c880 	sll	t9,t8,0x2
 184:	00797021 	addu	t6,v1,t9
 188:	91c80000 	lbu	t0,0(t6)
 18c:	a4c80048 	sh	t0,72(a2)
 190:	84e90030 	lh	t1,48(a3)
 194:	00095080 	sll	t2,t1,0x2
 198:	006a5821 	addu	t3,v1,t2
 19c:	916c0001 	lbu	t4,1(t3)
 1a0:	a4cc004a 	sh	t4,74(a2)
 1a4:	84ed0030 	lh	t5,48(a3)
 1a8:	000d7880 	sll	t7,t5,0x2
 1ac:	006fc021 	addu	t8,v1,t7
 1b0:	93190002 	lbu	t9,2(t8)
 1b4:	a4d9004c 	sh	t9,76(a2)
 1b8:	84ee0030 	lh	t6,48(a3)
 1bc:	000e4080 	sll	t0,t6,0x2
 1c0:	00684821 	addu	t1,v1,t0
 1c4:	912a0003 	lbu	t2,3(t1)
 1c8:	10000011 	b	210 <EffectSsDtBubble_Init+0x210>
 1cc:	a4ca004e 	sh	t2,78(a2)
 1d0:	90eb0024 	lbu	t3,36(a3)
 1d4:	a4cb0040 	sh	t3,64(a2)
 1d8:	90ec0025 	lbu	t4,37(a3)
 1dc:	a4cc0042 	sh	t4,66(a2)
 1e0:	90ed0026 	lbu	t5,38(a3)
 1e4:	a4cd0044 	sh	t5,68(a2)
 1e8:	90ef0027 	lbu	t7,39(a3)
 1ec:	a4cf0046 	sh	t7,70(a2)
 1f0:	90f80028 	lbu	t8,40(a3)
 1f4:	a4d80048 	sh	t8,72(a2)
 1f8:	90f90029 	lbu	t9,41(a3)
 1fc:	a4d9004a 	sh	t9,74(a2)
 200:	90ee002a 	lbu	t6,42(a3)
 204:	a4ce004c 	sh	t6,76(a2)
 208:	90e8002b 	lbu	t0,43(a3)
 20c:	a4c8004e 	sh	t0,78(a2)
 210:	84e90032 	lh	t1,50(a3)
 214:	3c0c0000 	lui	t4,0x0
 218:	3c0d0000 	lui	t5,0x0
 21c:	a4c90050 	sh	t1,80(a2)
 220:	84ea002c 	lh	t2,44(a3)
 224:	258c0000 	addiu	t4,t4,0
 228:	25ad0000 	addiu	t5,t5,0
 22c:	a4ca0052 	sh	t2,82(a2)
 230:	84eb002e 	lh	t3,46(a3)
 234:	accc0028 	sw	t4,40(a2)
 238:	accd0024 	sw	t5,36(a2)
 23c:	a4cb0054 	sh	t3,84(a2)
 240:	8fbf0014 	lw	ra,20(sp)
 244:	27bd0028 	addiu	sp,sp,40
 248:	24020001 	li	v0,1
 24c:	03e00008 	jr	ra
 250:	00000000 	nop

00000254 <EffectSsDtBubble_Draw>:
 254:	27bdffa8 	addiu	sp,sp,-88
 258:	afb00014 	sw	s0,20(sp)
 25c:	afbf001c 	sw	ra,28(sp)
 260:	afb10018 	sw	s1,24(sp)
 264:	afa40058 	sw	a0,88(sp)
 268:	afa5005c 	sw	a1,92(sp)
 26c:	8c910000 	lw	s1,0(a0)
 270:	00c08025 	move	s0,a2
 274:	3c060000 	lui	a2,0x0
 278:	24c60000 	addiu	a2,a2,0
 27c:	27a4003c 	addiu	a0,sp,60
 280:	240700c9 	li	a3,201
 284:	0c000000 	jal	0 <EffectSsDtBubble_Init>
 288:	02202825 	move	a1,s1
 28c:	860f0052 	lh	t7,82(s0)
 290:	3c010000 	lui	at,0x0
 294:	c4280048 	lwc1	$f8,72(at)
 298:	448f2000 	mtc1	t7,$f4
 29c:	00003825 	move	a3,zero
 2a0:	468021a0 	cvt.s.w	$f6,$f4
 2a4:	46083282 	mul.s	$f10,$f6,$f8
 2a8:	e7aa0050 	swc1	$f10,80(sp)
 2ac:	8e060008 	lw	a2,8(s0)
 2b0:	c60e0004 	lwc1	$f14,4(s0)
 2b4:	0c000000 	jal	0 <EffectSsDtBubble_Init>
 2b8:	c60c0000 	lwc1	$f12,0(s0)
 2bc:	c7ac0050 	lwc1	$f12,80(sp)
 2c0:	24070001 	li	a3,1
 2c4:	44066000 	mfc1	a2,$f12
 2c8:	0c000000 	jal	0 <EffectSsDtBubble_Init>
 2cc:	46006386 	mov.s	$f14,$f12
 2d0:	8e2202d0 	lw	v0,720(s1)
 2d4:	3c19da38 	lui	t9,0xda38
 2d8:	37390003 	ori	t9,t9,0x3
 2dc:	24580008 	addiu	t8,v0,8
 2e0:	ae3802d0 	sw	t8,720(s1)
 2e4:	3c050000 	lui	a1,0x0
 2e8:	ac590000 	sw	t9,0(v0)
 2ec:	24a50018 	addiu	a1,a1,24
 2f0:	02202025 	move	a0,s1
 2f4:	240600d5 	li	a2,213
 2f8:	0c000000 	jal	0 <EffectSsDtBubble_Init>
 2fc:	afa20038 	sw	v0,56(sp)
 300:	8fa30038 	lw	v1,56(sp)
 304:	02202025 	move	a0,s1
 308:	0c000000 	jal	0 <EffectSsDtBubble_Init>
 30c:	ac620004 	sw	v0,4(v1)
 310:	8e2202d0 	lw	v0,720(s1)
 314:	3c09fa00 	lui	t1,0xfa00
 318:	3c040000 	lui	a0,0x0
 31c:	24480008 	addiu	t0,v0,8
 320:	ae2802d0 	sw	t0,720(s1)
 324:	ac490000 	sw	t1,0(v0)
 328:	860b005c 	lh	t3,92(s0)
 32c:	860a0046 	lh	t2,70(s0)
 330:	860d0054 	lh	t5,84(s0)
 334:	86190040 	lh	t9,64(s0)
 338:	014b0019 	multu	t2,t3
 33c:	860a0042 	lh	t2,66(s0)
 340:	00194600 	sll	t0,t9,0x18
 344:	00401825 	move	v1,v0
 348:	314b00ff 	andi	t3,t2,0xff
 34c:	3c0afb00 	lui	t2,0xfb00
 350:	24840000 	addiu	a0,a0,0
 354:	3c060000 	lui	a2,0x0
 358:	24c60030 	addiu	a2,a2,48
 35c:	02202825 	move	a1,s1
 360:	00006012 	mflo	t4
 364:	240700ec 	li	a3,236
 368:	00000000 	nop
 36c:	018d001a 	div	zero,t4,t5
 370:	00007012 	mflo	t6
 374:	31cf00ff 	andi	t7,t6,0xff
 378:	860e0044 	lh	t6,68(s0)
 37c:	15a00002 	bnez	t5,388 <EffectSsDtBubble_Draw+0x134>
 380:	00000000 	nop
 384:	0007000d 	break	0x7
 388:	2401ffff 	li	at,-1
 38c:	15a10004 	bne	t5,at,3a0 <EffectSsDtBubble_Draw+0x14c>
 390:	3c018000 	lui	at,0x8000
 394:	15810002 	bne	t4,at,3a0 <EffectSsDtBubble_Draw+0x14c>
 398:	00000000 	nop
 39c:	0006000d 	break	0x6
 3a0:	000b6400 	sll	t4,t3,0x10
 3a4:	01e84825 	or	t1,t7,t0
 3a8:	31d800ff 	andi	t8,t6,0xff
 3ac:	0018ca00 	sll	t9,t8,0x8
 3b0:	012c6825 	or	t5,t1,t4
 3b4:	01b97825 	or	t7,t5,t9
 3b8:	ac6f0004 	sw	t7,4(v1)
 3bc:	8e2202d0 	lw	v0,720(s1)
 3c0:	24480008 	addiu	t0,v0,8
 3c4:	ae2802d0 	sw	t0,720(s1)
 3c8:	ac4a0000 	sw	t2,0(v0)
 3cc:	8609005c 	lh	t1,92(s0)
 3d0:	860b004e 	lh	t3,78(s0)
 3d4:	860e0054 	lh	t6,84(s0)
 3d8:	860f0048 	lh	t7,72(s0)
 3dc:	01690019 	multu	t3,t1
 3e0:	860b004a 	lh	t3,74(s0)
 3e4:	000f4600 	sll	t0,t7,0x18
 3e8:	00401825 	move	v1,v0
 3ec:	316900ff 	andi	t1,t3,0xff
 3f0:	3c0bdb06 	lui	t3,0xdb06
 3f4:	356b0020 	ori	t3,t3,0x20
 3f8:	00006012 	mflo	t4
	...
 404:	018e001a 	div	zero,t4,t6
 408:	0000c012 	mflo	t8
 40c:	330d00ff 	andi	t5,t8,0xff
 410:	8618004c 	lh	t8,76(s0)
 414:	15c00002 	bnez	t6,420 <EffectSsDtBubble_Draw+0x1cc>
 418:	00000000 	nop
 41c:	0007000d 	break	0x7
 420:	2401ffff 	li	at,-1
 424:	15c10004 	bne	t6,at,438 <EffectSsDtBubble_Draw+0x1e4>
 428:	3c018000 	lui	at,0x8000
 42c:	15810002 	bne	t4,at,438 <EffectSsDtBubble_Draw+0x1e4>
 430:	00000000 	nop
 434:	0006000d 	break	0x6
 438:	00096400 	sll	t4,t1,0x10
 43c:	01a85025 	or	t2,t5,t0
 440:	331900ff 	andi	t9,t8,0xff
 444:	00197a00 	sll	t7,t9,0x8
 448:	014c7025 	or	t6,t2,t4
 44c:	01cf6825 	or	t5,t6,t7
 450:	ac6d0004 	sw	t5,4(v1)
 454:	8e2202d0 	lw	v0,720(s1)
 458:	0004c100 	sll	t8,a0,0x4
 45c:	0018cf02 	srl	t9,t8,0x1c
 460:	24480008 	addiu	t0,v0,8
 464:	ae2802d0 	sw	t0,720(s1)
 468:	ac4b0000 	sw	t3,0(v0)
 46c:	8e090038 	lw	t1,56(s0)
 470:	00197080 	sll	t6,t9,0x2
 474:	3c0f0000 	lui	t7,0x0
 478:	ac490004 	sw	t1,4(v0)
 47c:	8e2202d0 	lw	v0,720(s1)
 480:	3c0cde00 	lui	t4,0xde00
 484:	01ee7821 	addu	t7,t7,t6
 488:	244a0008 	addiu	t2,v0,8
 48c:	ae2a02d0 	sw	t2,720(s1)
 490:	3c0100ff 	lui	at,0xff
 494:	ac4c0000 	sw	t4,0(v0)
 498:	8def0000 	lw	t7,0(t7)
 49c:	3421ffff 	ori	at,at,0xffff
 4a0:	00816824 	and	t5,a0,at
 4a4:	3c018000 	lui	at,0x8000
 4a8:	01ed4021 	addu	t0,t7,t5
 4ac:	01015821 	addu	t3,t0,at
 4b0:	27a4003c 	addiu	a0,sp,60
 4b4:	0c000000 	jal	0 <EffectSsDtBubble_Init>
 4b8:	ac4b0004 	sw	t3,4(v0)
 4bc:	8fbf001c 	lw	ra,28(sp)
 4c0:	8fb00014 	lw	s0,20(sp)
 4c4:	8fb10018 	lw	s1,24(sp)
 4c8:	03e00008 	jr	ra
 4cc:	27bd0058 	addiu	sp,sp,88

000004d0 <EffectSsDtBubble_Update>:
 4d0:	27bdffe8 	addiu	sp,sp,-24
 4d4:	afbf0014 	sw	ra,20(sp)
 4d8:	afa40018 	sw	a0,24(sp)
 4dc:	afa5001c 	sw	a1,28(sp)
 4e0:	84ce0050 	lh	t6,80(a2)
 4e4:	24010001 	li	at,1
 4e8:	55c10015 	bnel	t6,at,540 <EffectSsDtBubble_Update+0x70>
 4ec:	8fbf0014 	lw	ra,20(sp)
 4f0:	0c000000 	jal	0 <EffectSsDtBubble_Init>
 4f4:	afa60020 	sw	a2,32(sp)
 4f8:	46000100 	add.s	$f4,$f0,$f0
 4fc:	3c013f80 	lui	at,0x3f80
 500:	44813000 	mtc1	at,$f6
 504:	8fa60020 	lw	a2,32(sp)
 508:	46062201 	sub.s	$f8,$f4,$f6
 50c:	c4ca0000 	lwc1	$f10,0(a2)
 510:	46085400 	add.s	$f16,$f10,$f8
 514:	0c000000 	jal	0 <EffectSsDtBubble_Init>
 518:	e4d00000 	swc1	$f16,0(a2)
 51c:	46000480 	add.s	$f18,$f0,$f0
 520:	3c013f80 	lui	at,0x3f80
 524:	44812000 	mtc1	at,$f4
 528:	8fa60020 	lw	a2,32(sp)
 52c:	46049181 	sub.s	$f6,$f18,$f4
 530:	c4ca0008 	lwc1	$f10,8(a2)
 534:	46065200 	add.s	$f8,$f10,$f6
 538:	e4c80008 	swc1	$f8,8(a2)
 53c:	8fbf0014 	lw	ra,20(sp)
 540:	27bd0018 	addiu	sp,sp,24
 544:	03e00008 	jr	ra
 548:	00000000 	nop
 54c:	00000000 	nop
