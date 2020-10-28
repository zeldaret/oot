
build/src/overlays/effects/ovl_Effect_Ss_Fcircle/z_eff_ss_fcircle.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsFcircle_Init>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	8cef0004 	lw	t7,4(a3)
   c:	3c0a0000 	lui	t2,0x0
  10:	3c0c0000 	lui	t4,0x0
  14:	accf0000 	sw	t7,0(a2)
  18:	8cee0008 	lw	t6,8(a3)
  1c:	3c0d0000 	lui	t5,0x0
  20:	254a0000 	addiu	t2,t2,0
  24:	acce0004 	sw	t6,4(a2)
  28:	8cef000c 	lw	t7,12(a3)
  2c:	240b0014 	li	t3,20
  30:	258c0000 	addiu	t4,t4,0
  34:	accf0008 	sw	t7,8(a2)
  38:	8cf80000 	lw	t8,0(a3)
  3c:	25ad0000 	addiu	t5,t5,0
  40:	240e00ff 	li	t6,255
  44:	acd8003c 	sw	t8,60(a2)
  48:	8cf90000 	lw	t9,0(a3)
  4c:	c4e40004 	lwc1	$f4,4(a3)
  50:	24020001 	li	v0,1
  54:	c7260024 	lwc1	$f6,36(t9)
  58:	46062201 	sub.s	$f8,$f4,$f6
  5c:	e4c8002c 	swc1	$f8,44(a2)
  60:	8ce80000 	lw	t0,0(a3)
  64:	c4ea0008 	lwc1	$f10,8(a3)
  68:	c5100028 	lwc1	$f16,40(t0)
  6c:	46105481 	sub.s	$f18,$f10,$f16
  70:	e4d20030 	swc1	$f18,48(a2)
  74:	8ce90000 	lw	t1,0(a3)
  78:	c4e4000c 	lwc1	$f4,12(a3)
  7c:	c526002c 	lwc1	$f6,44(t1)
  80:	acca0038 	sw	t2,56(a2)
  84:	a4cb005c 	sh	t3,92(a2)
  88:	46062201 	sub.s	$f8,$f4,$f6
  8c:	accc0028 	sw	t4,40(a2)
  90:	accd0024 	sw	t5,36(a2)
  94:	a4ce0046 	sh	t6,70(a2)
  98:	e4c80034 	swc1	$f8,52(a2)
  9c:	84ef0010 	lh	t7,16(a3)
  a0:	a4cf0050 	sh	t7,80(a2)
  a4:	84f80012 	lh	t8,18(a3)
  a8:	a4d80052 	sh	t8,82(a2)
  ac:	8cf90000 	lw	t9,0(a3)
  b0:	872800b6 	lh	t0,182(t9)
  b4:	03e00008 	jr	ra
  b8:	a4c80054 	sh	t0,84(a2)

000000bc <EffectSsFcircle_Draw>:
  bc:	27bdff80 	addiu	sp,sp,-128
  c0:	afb10038 	sw	s1,56(sp)
  c4:	afbf003c 	sw	ra,60(sp)
  c8:	afb00034 	sw	s0,52(sp)
  cc:	afa40080 	sw	a0,128(sp)
  d0:	afa50084 	sw	a1,132(sp)
  d4:	8c900000 	lw	s0,0(a0)
  d8:	00c08825 	move	s1,a2
  dc:	3c060000 	lui	a2,0x0
  e0:	24c60000 	addiu	a2,a2,0
  e4:	27a40058 	addiu	a0,sp,88
  e8:	24070095 	li	a3,149
  ec:	0c000000 	jal	0 <EffectSsFcircle_Init>
  f0:	02002825 	move	a1,s0
  f4:	862f005c 	lh	t7,92(s1)
  f8:	3c010000 	lui	at,0x0
  fc:	c422003c 	lwc1	$f2,60(at)
 100:	448f2000 	mtc1	t7,$f4
 104:	3c010000 	lui	at,0x0
 108:	c4280040 	lwc1	$f8,64(at)
 10c:	468021a0 	cvt.s.w	$f6,$f4
 110:	86380056 	lh	t8,86(s1)
 114:	3c013f00 	lui	at,0x3f00
 118:	44818000 	mtc1	at,$f16
 11c:	44982000 	mtc1	t8,$f4
 120:	86390052 	lh	t9,82(s1)
 124:	46083282 	mul.s	$f10,$f6,$f8
 128:	3c010000 	lui	at,0x0
 12c:	00003825 	move	a3,zero
 130:	468021a0 	cvt.s.w	$f6,$f4
 134:	460a8480 	add.s	$f18,$f16,$f10
 138:	44995000 	mtc1	t9,$f10
 13c:	c4300044 	lwc1	$f16,68(at)
 140:	46123202 	mul.s	$f8,$f6,$f18
 144:	46805120 	cvt.s.w	$f4,$f10
 148:	46104002 	mul.s	$f0,$f8,$f16
 14c:	00000000 	nop
 150:	46022182 	mul.s	$f6,$f4,$f2
 154:	00000000 	nop
 158:	46003482 	mul.s	$f18,$f6,$f0
 15c:	e7b20074 	swc1	$f18,116(sp)
 160:	86290050 	lh	t1,80(s1)
 164:	44894000 	mtc1	t1,$f8
 168:	00000000 	nop
 16c:	46804420 	cvt.s.w	$f16,$f8
 170:	46028282 	mul.s	$f10,$f16,$f2
 174:	00000000 	nop
 178:	46005102 	mul.s	$f4,$f10,$f0
 17c:	e7a40070 	swc1	$f4,112(sp)
 180:	8e260008 	lw	a2,8(s1)
 184:	c62e0004 	lwc1	$f14,4(s1)
 188:	0c000000 	jal	0 <EffectSsFcircle_Init>
 18c:	c62c0000 	lwc1	$f12,0(s1)
 190:	c7ac0070 	lwc1	$f12,112(sp)
 194:	c7ae0074 	lwc1	$f14,116(sp)
 198:	24070001 	li	a3,1
 19c:	44066000 	mfc1	a2,$f12
 1a0:	0c000000 	jal	0 <EffectSsFcircle_Init>
 1a4:	00000000 	nop
 1a8:	862a0054 	lh	t2,84(s1)
 1ac:	3c010000 	lui	at,0x0
 1b0:	c4280048 	lwc1	$f8,72(at)
 1b4:	448a3000 	mtc1	t2,$f6
 1b8:	24050001 	li	a1,1
 1bc:	468034a0 	cvt.s.w	$f18,$f6
 1c0:	46089302 	mul.s	$f12,$f18,$f8
 1c4:	0c000000 	jal	0 <EffectSsFcircle_Init>
 1c8:	00000000 	nop
 1cc:	8e0202d0 	lw	v0,720(s0)
 1d0:	3c0cda38 	lui	t4,0xda38
 1d4:	358c0003 	ori	t4,t4,0x3
 1d8:	244b0008 	addiu	t3,v0,8
 1dc:	ae0b02d0 	sw	t3,720(s0)
 1e0:	3c050000 	lui	a1,0x0
 1e4:	ac4c0000 	sw	t4,0(v0)
 1e8:	24a50014 	addiu	a1,a1,20
 1ec:	02002025 	move	a0,s0
 1f0:	240600a3 	li	a2,163
 1f4:	0c000000 	jal	0 <EffectSsFcircle_Init>
 1f8:	afa20054 	sw	v0,84(sp)
 1fc:	8fa30054 	lw	v1,84(sp)
 200:	ac620004 	sw	v0,4(v1)
 204:	8fad0080 	lw	t5,128(sp)
 208:	0c000000 	jal	0 <EffectSsFcircle_Init>
 20c:	8da40000 	lw	a0,0(t5)
 210:	8e0202d0 	lw	v0,720(s0)
 214:	3c0fdb06 	lui	t7,0xdb06
 218:	35ef0020 	ori	t7,t7,0x20
 21c:	244e0008 	addiu	t6,v0,8
 220:	ae0e02d0 	sw	t6,720(s0)
 224:	ac4f0000 	sw	t7,0(v0)
 228:	8fb80080 	lw	t8,128(sp)
 22c:	3c030001 	lui	v1,0x1
 230:	240e0040 	li	t6,64
 234:	00781821 	addu	v1,v1,t8
 238:	8c631de4 	lw	v1,7652(v1)
 23c:	8f040000 	lw	a0,0(t8)
 240:	24190020 	li	t9,32
 244:	00030823 	negu	at,v1
 248:	00015900 	sll	t3,at,0x4
 24c:	01615823 	subu	t3,t3,at
 250:	316c00ff 	andi	t4,t3,0xff
 254:	24090040 	li	t1,64
 258:	240a0001 	li	t2,1
 25c:	240d0020 	li	t5,32
 260:	afad0024 	sw	t5,36(sp)
 264:	afaa0018 	sw	t2,24(sp)
 268:	afa90014 	sw	t1,20(sp)
 26c:	afac0020 	sw	t4,32(sp)
 270:	afb90010 	sw	t9,16(sp)
 274:	afae0028 	sw	t6,40(sp)
 278:	afa0001c 	sw	zero,28(sp)
 27c:	00002825 	move	a1,zero
 280:	00003825 	move	a3,zero
 284:	afa20050 	sw	v0,80(sp)
 288:	0c000000 	jal	0 <EffectSsFcircle_Init>
 28c:	3066007f 	andi	a2,v1,0x7f
 290:	8fa80050 	lw	t0,80(sp)
 294:	3c18fa00 	lui	t8,0xfa00
 298:	37188080 	ori	t8,t8,0x8080
 29c:	ad020004 	sw	v0,4(t0)
 2a0:	8e0302d0 	lw	v1,720(s0)
 2a4:	3c01414c 	lui	at,0x414c
 2a8:	44812000 	mtc1	at,$f4
 2ac:	246f0008 	addiu	t7,v1,8
 2b0:	ae0f02d0 	sw	t7,720(s0)
 2b4:	ac780000 	sw	t8,0(v1)
 2b8:	8639005c 	lh	t9,92(s1)
 2bc:	240a0001 	li	t2,1
 2c0:	3c014f00 	lui	at,0x4f00
 2c4:	44998000 	mtc1	t9,$f16
 2c8:	3c0fff00 	lui	t7,0xff00
 2cc:	3c0efb00 	lui	t6,0xfb00
 2d0:	468082a0 	cvt.s.w	$f10,$f16
 2d4:	3c19de00 	lui	t9,0xde00
 2d8:	27a40058 	addiu	a0,sp,88
 2dc:	46045182 	mul.s	$f6,$f10,$f4
 2e0:	4449f800 	cfc1	t1,$31
 2e4:	44caf800 	ctc1	t2,$31
 2e8:	00000000 	nop
 2ec:	460034a4 	cvt.w.s	$f18,$f6
 2f0:	444af800 	cfc1	t2,$31
 2f4:	00000000 	nop
 2f8:	314a0078 	andi	t2,t2,0x78
 2fc:	51400013 	beqzl	t2,34c <EffectSsFcircle_Draw+0x290>
 300:	440a9000 	mfc1	t2,$f18
 304:	44819000 	mtc1	at,$f18
 308:	240a0001 	li	t2,1
 30c:	46123481 	sub.s	$f18,$f6,$f18
 310:	44caf800 	ctc1	t2,$31
 314:	00000000 	nop
 318:	460094a4 	cvt.w.s	$f18,$f18
 31c:	444af800 	cfc1	t2,$31
 320:	00000000 	nop
 324:	314a0078 	andi	t2,t2,0x78
 328:	15400005 	bnez	t2,340 <EffectSsFcircle_Draw+0x284>
 32c:	00000000 	nop
 330:	440a9000 	mfc1	t2,$f18
 334:	3c018000 	lui	at,0x8000
 338:	10000007 	b	358 <EffectSsFcircle_Draw+0x29c>
 33c:	01415025 	or	t2,t2,at
 340:	10000005 	b	358 <EffectSsFcircle_Draw+0x29c>
 344:	240affff 	li	t2,-1
 348:	440a9000 	mfc1	t2,$f18
 34c:	00000000 	nop
 350:	0540fffb 	bltz	t2,340 <EffectSsFcircle_Draw+0x284>
 354:	00000000 	nop
 358:	314b00ff 	andi	t3,t2,0xff
 35c:	3c01ffdc 	lui	at,0xffdc
 360:	01616025 	or	t4,t3,at
 364:	ac6c0004 	sw	t4,4(v1)
 368:	8e0202d0 	lw	v0,720(s0)
 36c:	44c9f800 	ctc1	t1,$31
 370:	3c060000 	lui	a2,0x0
 374:	244d0008 	addiu	t5,v0,8
 378:	ae0d02d0 	sw	t5,720(s0)
 37c:	ac4f0004 	sw	t7,4(v0)
 380:	ac4e0000 	sw	t6,0(v0)
 384:	8e0202d0 	lw	v0,720(s0)
 388:	24c60028 	addiu	a2,a2,40
 38c:	02002825 	move	a1,s0
 390:	24580008 	addiu	t8,v0,8
 394:	ae1802d0 	sw	t8,720(s0)
 398:	ac590000 	sw	t9,0(v0)
 39c:	8e290038 	lw	t1,56(s1)
 3a0:	240700ba 	li	a3,186
 3a4:	0c000000 	jal	0 <EffectSsFcircle_Init>
 3a8:	ac490004 	sw	t1,4(v0)
 3ac:	8fbf003c 	lw	ra,60(sp)
 3b0:	8fb00034 	lw	s0,52(sp)
 3b4:	8fb10038 	lw	s1,56(sp)
 3b8:	03e00008 	jr	ra
 3bc:	27bd0080 	addiu	sp,sp,128

000003c0 <EffectSsFcircle_Update>:
 3c0:	27bdffe8 	addiu	sp,sp,-24
 3c4:	afbf0014 	sw	ra,20(sp)
 3c8:	afa40018 	sw	a0,24(sp)
 3cc:	afa5001c 	sw	a1,28(sp)
 3d0:	8cc2003c 	lw	v0,60(a2)
 3d4:	00c03825 	move	a3,a2
 3d8:	50400022 	beqzl	v0,464 <EffectSsFcircle_Update+0xa4>
 3dc:	8fbf0014 	lw	ra,20(sp)
 3e0:	8c4e0130 	lw	t6,304(v0)
 3e4:	24e40056 	addiu	a0,a3,86
 3e8:	24050064 	li	a1,100
 3ec:	51c0001c 	beqzl	t6,460 <EffectSsFcircle_Update+0xa0>
 3f0:	ace0003c 	sw	zero,60(a3)
 3f4:	c4440024 	lwc1	$f4,36(v0)
 3f8:	c4c6002c 	lwc1	$f6,44(a2)
 3fc:	c4d00030 	lwc1	$f16,48(a2)
 400:	24180014 	li	t8,20
 404:	46062200 	add.s	$f8,$f4,$f6
 408:	c4c60034 	lwc1	$f6,52(a2)
 40c:	e4c80000 	swc1	$f8,0(a2)
 410:	c44a0028 	lwc1	$f10,40(v0)
 414:	46105480 	add.s	$f18,$f10,$f16
 418:	e4d20004 	swc1	$f18,4(a2)
 41c:	c444002c 	lwc1	$f4,44(v0)
 420:	46062200 	add.s	$f8,$f4,$f6
 424:	e4c80008 	swc1	$f8,8(a2)
 428:	844f00b6 	lh	t7,182(v0)
 42c:	a4cf0054 	sh	t7,84(a2)
 430:	90430114 	lbu	v1,276(v0)
 434:	28610015 	slti	at,v1,21
 438:	54200004 	bnezl	at,44c <EffectSsFcircle_Update+0x8c>
 43c:	a4e3005c 	sh	v1,92(a3)
 440:	10000002 	b	44c <EffectSsFcircle_Update+0x8c>
 444:	a4d8005c 	sh	t8,92(a2)
 448:	a4e3005c 	sh	v1,92(a3)
 44c:	0c000000 	jal	0 <EffectSsFcircle_Init>
 450:	24060014 	li	a2,20
 454:	10000003 	b	464 <EffectSsFcircle_Update+0xa4>
 458:	8fbf0014 	lw	ra,20(sp)
 45c:	ace0003c 	sw	zero,60(a3)
 460:	8fbf0014 	lw	ra,20(sp)
 464:	27bd0018 	addiu	sp,sp,24
 468:	03e00008 	jr	ra
 46c:	00000000 	nop
