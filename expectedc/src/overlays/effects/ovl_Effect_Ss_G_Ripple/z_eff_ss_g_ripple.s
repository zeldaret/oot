
build/src/overlays/effects/ovl_Effect_Ss_G_Ripple/z_eff_ss_g_ripple.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsGRipple_Init>:
   0:	27bdffb0 	addiu	sp,sp,-80
   4:	3c0e0000 	lui	t6,0x0
   8:	afbf0024 	sw	ra,36(sp)
   c:	afb10020 	sw	s1,32(sp)
  10:	afb0001c 	sw	s0,28(sp)
  14:	afa50054 	sw	a1,84(sp)
  18:	25ce0008 	addiu	t6,t6,8
  1c:	8dd80000 	lw	t8,0(t6)
  20:	27a80040 	addiu	t0,sp,64
  24:	27a5002c 	addiu	a1,sp,44
  28:	ad180000 	sw	t8,0(t0)
  2c:	8dcf0004 	lw	t7,4(t6)
  30:	3c030000 	lui	v1,0x0
  34:	24630000 	addiu	v1,v1,0
  38:	ad0f0004 	sw	t7,4(t0)
  3c:	8dd80008 	lw	t8,8(t6)
  40:	3c0100ff 	lui	at,0xff
  44:	3421ffff 	ori	at,at,0xffff
  48:	ad180008 	sw	t8,8(t0)
  4c:	afa0003c 	sw	zero,60(sp)
  50:	8d090000 	lw	t1,0(t0)
  54:	8d190004 	lw	t9,4(t0)
  58:	0003c100 	sll	t8,v1,0x4
  5c:	aca90000 	sw	t1,0(a1)
  60:	8d090008 	lw	t1,8(t0)
  64:	8cab0000 	lw	t3,0(a1)
  68:	acb90004 	sw	t9,4(a1)
  6c:	aca90008 	sw	t1,8(a1)
  70:	accb0018 	sw	t3,24(a2)
  74:	8caa0004 	lw	t2,4(a1)
  78:	0018cf02 	srl	t9,t8,0x1c
  7c:	00194880 	sll	t1,t9,0x2
  80:	acca001c 	sw	t2,28(a2)
  84:	8cab0008 	lw	t3,8(a1)
  88:	3c0a0000 	lui	t2,0x0
  8c:	01495021 	addu	t2,t2,t1
  90:	accb0020 	sw	t3,32(a2)
  94:	8cad0000 	lw	t5,0(a1)
  98:	00615824 	and	t3,v1,at
  9c:	3c018000 	lui	at,0x8000
  a0:	accd000c 	sw	t5,12(a2)
  a4:	8cac0004 	lw	t4,4(a1)
  a8:	3c180000 	lui	t8,0x0
  ac:	3c190000 	lui	t9,0x0
  b0:	accc0010 	sw	t4,16(a2)
  b4:	8cad0008 	lw	t5,8(a1)
  b8:	27180000 	addiu	t8,t8,0
  bc:	27390000 	addiu	t9,t9,0
  c0:	accd0014 	sw	t5,20(a2)
  c4:	8cef0000 	lw	t7,0(a3)
  c8:	240200ff 	li	v0,255
  cc:	00c08025 	move	s0,a2
  d0:	accf0000 	sw	t7,0(a2)
  d4:	8cee0004 	lw	t6,4(a3)
  d8:	248507c0 	addiu	a1,a0,1984
  dc:	acce0004 	sw	t6,4(a2)
  e0:	8cef0008 	lw	t7,8(a3)
  e4:	accf0008 	sw	t7,8(a2)
  e8:	8d4a0000 	lw	t2,0(t2)
  ec:	014b6021 	addu	t4,t2,t3
  f0:	01816821 	addu	t5,t4,at
  f4:	accd0038 	sw	t5,56(a2)
  f8:	84ee0010 	lh	t6,16(a3)
  fc:	a4c0005a 	sh	zero,90(a2)
 100:	acd80028 	sw	t8,40(a2)
 104:	25cf0014 	addiu	t7,t6,20
 108:	a4cf005c 	sh	t7,92(a2)
 10c:	acd90024 	sw	t9,36(a2)
 110:	84e9000c 	lh	t1,12(a3)
 114:	27ac003c 	addiu	t4,sp,60
 118:	a4c90042 	sh	t1,66(a2)
 11c:	84ea000e 	lh	t2,14(a3)
 120:	a4ca0044 	sh	t2,68(a2)
 124:	84eb0010 	lh	t3,16(a3)
 128:	a4c20046 	sh	v0,70(a2)
 12c:	a4c20048 	sh	v0,72(a2)
 130:	a4c2004a 	sh	v0,74(a2)
 134:	a4c2004c 	sh	v0,76(a2)
 138:	a4c2004e 	sh	v0,78(a2)
 13c:	a4c20050 	sh	v0,80(a2)
 140:	a4c20052 	sh	v0,82(a2)
 144:	a4c20054 	sh	v0,84(a2)
 148:	a4cb0056 	sh	t3,86(a2)
 14c:	00e03025 	move	a2,a3
 150:	3c074040 	lui	a3,0x4040
 154:	0c000000 	jal	0 <EffectSsGRipple_Init>
 158:	afac0010 	sw	t4,16(sp)
 15c:	a6020040 	sh	v0,64(s0)
 160:	8fbf0024 	lw	ra,36(sp)
 164:	8fb10020 	lw	s1,32(sp)
 168:	8fb0001c 	lw	s0,28(sp)
 16c:	27bd0050 	addiu	sp,sp,80
 170:	03e00008 	jr	ra
 174:	24020001 	li	v0,1

00000178 <EffectSsGRipple_DrawRipple>:
 178:	27bdfed8 	addiu	sp,sp,-296
 17c:	afbf001c 	sw	ra,28(sp)
 180:	afb10018 	sw	s1,24(sp)
 184:	afb00014 	sw	s0,20(sp)
 188:	afa40128 	sw	a0,296(sp)
 18c:	afa60130 	sw	a2,304(sp)
 190:	8c900000 	lw	s0,0(a0)
 194:	00a08825 	move	s1,a1
 198:	3c060000 	lui	a2,0x0
 19c:	24c60000 	addiu	a2,a2,0
 1a0:	27a40040 	addiu	a0,sp,64
 1a4:	240700c7 	li	a3,199
 1a8:	0c000000 	jal	0 <EffectSsGRipple_Init>
 1ac:	02002825 	move	a1,s0
 1b0:	862f0042 	lh	t7,66(s1)
 1b4:	3c010000 	lui	at,0x0
 1b8:	c4280030 	lwc1	$f8,48(at)
 1bc:	448f2000 	mtc1	t7,$f4
 1c0:	86220040 	lh	v0,64(s1)
 1c4:	2401ffff 	li	at,-1
 1c8:	468021a0 	cvt.s.w	$f6,$f4
 1cc:	8fa40128 	lw	a0,296(sp)
 1d0:	46083082 	mul.s	$f2,$f6,$f8
 1d4:	5041000e 	beql	v0,at,210 <EffectSsGRipple_DrawRipple+0x98>
 1d8:	c6200004 	lwc1	$f0,4(s1)
 1dc:	8c8307c0 	lw	v1,1984(a0)
 1e0:	94780024 	lhu	t8,36(v1)
 1e4:	0058082a 	slt	at,v0,t8
 1e8:	50200009 	beqzl	at,210 <EffectSsGRipple_DrawRipple+0x98>
 1ec:	c6200004 	lwc1	$f0,4(s1)
 1f0:	8c680028 	lw	t0,40(v1)
 1f4:	0002c900 	sll	t9,v0,0x4
 1f8:	03284821 	addu	t1,t9,t0
 1fc:	852a0002 	lh	t2,2(t1)
 200:	448a5000 	mtc1	t2,$f10
 204:	10000002 	b	210 <EffectSsGRipple_DrawRipple+0x98>
 208:	46805020 	cvt.s.w	$f0,$f10
 20c:	c6200004 	lwc1	$f0,4(s1)
 210:	8e250000 	lw	a1,0(s1)
 214:	44060000 	mfc1	a2,$f0
 218:	8e270008 	lw	a3,8(s1)
 21c:	e7a20120 	swc1	$f2,288(sp)
 220:	0c000000 	jal	0 <EffectSsGRipple_Init>
 224:	27a400dc 	addiu	a0,sp,220
 228:	c7a20120 	lwc1	$f2,288(sp)
 22c:	27a4009c 	addiu	a0,sp,156
 230:	44051000 	mfc1	a1,$f2
 234:	44061000 	mfc1	a2,$f2
 238:	44071000 	mfc1	a3,$f2
 23c:	0c000000 	jal	0 <EffectSsGRipple_Init>
 240:	00000000 	nop
 244:	27a400dc 	addiu	a0,sp,220
 248:	27a5009c 	addiu	a1,sp,156
 24c:	0c000000 	jal	0 <EffectSsGRipple_Init>
 250:	27a6005c 	addiu	a2,sp,92
 254:	02002025 	move	a0,s0
 258:	0c000000 	jal	0 <EffectSsGRipple_Init>
 25c:	27a5005c 	addiu	a1,sp,92
 260:	10400046 	beqz	v0,37c <EffectSsGRipple_DrawRipple+0x204>
 264:	3c0cda38 	lui	t4,0xda38
 268:	8e0302d0 	lw	v1,720(s0)
 26c:	358c0003 	ori	t4,t4,0x3
 270:	02002025 	move	a0,s0
 274:	246b0008 	addiu	t3,v1,8
 278:	ae0b02d0 	sw	t3,720(s0)
 27c:	ac620004 	sw	v0,4(v1)
 280:	0c000000 	jal	0 <EffectSsGRipple_Init>
 284:	ac6c0000 	sw	t4,0(v1)
 288:	8e0302d0 	lw	v1,720(s0)
 28c:	3c0efa00 	lui	t6,0xfa00
 290:	246d0008 	addiu	t5,v1,8
 294:	ae0d02d0 	sw	t5,720(s0)
 298:	ac6e0000 	sw	t6,0(v1)
 29c:	862f004c 	lh	t7,76(s1)
 2a0:	862b0048 	lh	t3,72(s1)
 2a4:	86280046 	lh	t0,70(s1)
 2a8:	31f800ff 	andi	t8,t7,0xff
 2ac:	862f004a 	lh	t7,74(s1)
 2b0:	316c00ff 	andi	t4,t3,0xff
 2b4:	00084e00 	sll	t1,t0,0x18
 2b8:	03095025 	or	t2,t8,t1
 2bc:	000c6c00 	sll	t5,t4,0x10
 2c0:	31f900ff 	andi	t9,t7,0xff
 2c4:	00194200 	sll	t0,t9,0x8
 2c8:	014d7025 	or	t6,t2,t5
 2cc:	01c8c025 	or	t8,t6,t0
 2d0:	ac780004 	sw	t8,4(v1)
 2d4:	8e0302d0 	lw	v1,720(s0)
 2d8:	3c0bfb00 	lui	t3,0xfb00
 2dc:	24690008 	addiu	t1,v1,8
 2e0:	ae0902d0 	sw	t1,720(s0)
 2e4:	ac6b0000 	sw	t3,0(v1)
 2e8:	862c0054 	lh	t4,84(s1)
 2ec:	86280050 	lh	t0,80(s1)
 2f0:	862f004e 	lh	t7,78(s1)
 2f4:	318a00ff 	andi	t2,t4,0xff
 2f8:	862c0052 	lh	t4,82(s1)
 2fc:	311800ff 	andi	t8,t0,0xff
 300:	000fce00 	sll	t9,t7,0x18
 304:	01597025 	or	t6,t2,t9
 308:	00184c00 	sll	t1,t8,0x10
 30c:	318d00ff 	andi	t5,t4,0xff
 310:	000d7a00 	sll	t7,t5,0x8
 314:	01c95825 	or	t3,t6,t1
 318:	016f5025 	or	t2,t3,t7
 31c:	ac6a0004 	sw	t2,4(v1)
 320:	8e0302d0 	lw	v1,720(s0)
 324:	3c08e300 	lui	t0,0xe300
 328:	35081a01 	ori	t0,t0,0x1a01
 32c:	24790008 	addiu	t9,v1,8
 330:	ae1902d0 	sw	t9,720(s0)
 334:	24180020 	li	t8,32
 338:	ac780004 	sw	t8,4(v1)
 33c:	ac680000 	sw	t0,0(v1)
 340:	8e0302d0 	lw	v1,720(s0)
 344:	3c09e300 	lui	t1,0xe300
 348:	35291801 	ori	t1,t1,0x1801
 34c:	246e0008 	addiu	t6,v1,8
 350:	ae0e02d0 	sw	t6,720(s0)
 354:	240c0080 	li	t4,128
 358:	ac6c0004 	sw	t4,4(v1)
 35c:	ac690000 	sw	t1,0(v1)
 360:	8e0302d0 	lw	v1,720(s0)
 364:	3c0bde00 	lui	t3,0xde00
 368:	246d0008 	addiu	t5,v1,8
 36c:	ae0d02d0 	sw	t5,720(s0)
 370:	ac6b0000 	sw	t3,0(v1)
 374:	8e2f0038 	lw	t7,56(s1)
 378:	ac6f0004 	sw	t7,4(v1)
 37c:	3c060000 	lui	a2,0x0
 380:	24c60018 	addiu	a2,a2,24
 384:	27a40040 	addiu	a0,sp,64
 388:	02002825 	move	a1,s0
 38c:	0c000000 	jal	0 <EffectSsGRipple_Init>
 390:	240700f7 	li	a3,247
 394:	8fbf001c 	lw	ra,28(sp)
 398:	8fb00014 	lw	s0,20(sp)
 39c:	8fb10018 	lw	s1,24(sp)
 3a0:	03e00008 	jr	ra
 3a4:	27bd0128 	addiu	sp,sp,296

000003a8 <EffectSsGRipple_Draw>:
 3a8:	27bdffe8 	addiu	sp,sp,-24
 3ac:	afbf0014 	sw	ra,20(sp)
 3b0:	afa5001c 	sw	a1,28(sp)
 3b4:	84ce0056 	lh	t6,86(a2)
 3b8:	00c02825 	move	a1,a2
 3bc:	3c060000 	lui	a2,0x0
 3c0:	55c00004 	bnezl	t6,3d4 <EffectSsGRipple_Draw+0x2c>
 3c4:	8fbf0014 	lw	ra,20(sp)
 3c8:	0c000000 	jal	0 <EffectSsGRipple_Init>
 3cc:	24c60000 	addiu	a2,a2,0
 3d0:	8fbf0014 	lw	ra,20(sp)
 3d4:	27bd0018 	addiu	sp,sp,24
 3d8:	03e00008 	jr	ra
 3dc:	00000000 	nop

000003e0 <EffectSsGRipple_Update>:
 3e0:	27bdffc0 	addiu	sp,sp,-64
 3e4:	afbf0024 	sw	ra,36(sp)
 3e8:	afb00020 	sw	s0,32(sp)
 3ec:	afa40040 	sw	a0,64(sp)
 3f0:	afa50044 	sw	a1,68(sp)
 3f4:	84c20056 	lh	v0,86(a2)
 3f8:	00c08025 	move	s0,a2
 3fc:	14400003 	bnez	v0,40c <EffectSsGRipple_Update+0x2c>
 400:	244effff 	addiu	t6,v0,-1
 404:	10000003 	b	414 <EffectSsGRipple_Update+0x34>
 408:	00001825 	move	v1,zero
 40c:	a60e0056 	sh	t6,86(s0)
 410:	86030056 	lh	v1,86(s0)
 414:	5460003d 	bnezl	v1,50c <EffectSsGRipple_Update+0x12c>
 418:	8fbf0024 	lw	ra,36(sp)
 41c:	860f0042 	lh	t7,66(s0)
 420:	3c013f80 	lui	at,0x3f80
 424:	44815000 	mtc1	at,$f10
 428:	448f2000 	mtc1	t7,$f4
 42c:	3c063e4c 	lui	a2,0x3e4c
 430:	34c6cccd 	ori	a2,a2,0xcccd
 434:	468021a0 	cvt.s.w	$f6,$f4
 438:	27a4003c 	addiu	a0,sp,60
 43c:	3c0741f0 	lui	a3,0x41f0
 440:	e7a6003c 	swc1	$f6,60(sp)
 444:	86180044 	lh	t8,68(s0)
 448:	e7aa0010 	swc1	$f10,16(sp)
 44c:	44984000 	mtc1	t8,$f8
 450:	00000000 	nop
 454:	46804220 	cvt.s.w	$f8,$f8
 458:	44054000 	mfc1	a1,$f8
 45c:	0c000000 	jal	0 <EffectSsGRipple_Init>
 460:	00000000 	nop
 464:	8609004c 	lh	t1,76(s0)
 468:	c7b0003c 	lwc1	$f16,60(sp)
 46c:	3c0140e0 	lui	at,0x40e0
 470:	44892000 	mtc1	t1,$f4
 474:	4600848d 	trunc.w.s	$f18,$f16
 478:	44818000 	mtc1	at,$f16
 47c:	3c063e4c 	lui	a2,0x3e4c
 480:	468021a0 	cvt.s.w	$f6,$f4
 484:	44089000 	mfc1	t0,$f18
 488:	34c6cccd 	ori	a2,a2,0xcccd
 48c:	27a40038 	addiu	a0,sp,56
 490:	a6080042 	sh	t0,66(s0)
 494:	24050000 	li	a1,0
 498:	e7a60038 	swc1	$f6,56(sp)
 49c:	860a0054 	lh	t2,84(s0)
 4a0:	3c074170 	lui	a3,0x4170
 4a4:	e7b00010 	swc1	$f16,16(sp)
 4a8:	448a4000 	mtc1	t2,$f8
 4ac:	00000000 	nop
 4b0:	468042a0 	cvt.s.w	$f10,$f8
 4b4:	0c000000 	jal	0 <EffectSsGRipple_Init>
 4b8:	e7aa0034 	swc1	$f10,52(sp)
 4bc:	3c0140e0 	lui	at,0x40e0
 4c0:	44819000 	mtc1	at,$f18
 4c4:	3c063e4c 	lui	a2,0x3e4c
 4c8:	34c6cccd 	ori	a2,a2,0xcccd
 4cc:	27a40034 	addiu	a0,sp,52
 4d0:	24050000 	li	a1,0
 4d4:	3c074170 	lui	a3,0x4170
 4d8:	0c000000 	jal	0 <EffectSsGRipple_Init>
 4dc:	e7b20010 	swc1	$f18,16(sp)
 4e0:	c7a40038 	lwc1	$f4,56(sp)
 4e4:	4600218d 	trunc.w.s	$f6,$f4
 4e8:	440c3000 	mfc1	t4,$f6
 4ec:	00000000 	nop
 4f0:	a60c004c 	sh	t4,76(s0)
 4f4:	c7a80034 	lwc1	$f8,52(sp)
 4f8:	4600428d 	trunc.w.s	$f10,$f8
 4fc:	440e5000 	mfc1	t6,$f10
 500:	00000000 	nop
 504:	a60e0054 	sh	t6,84(s0)
 508:	8fbf0024 	lw	ra,36(sp)
 50c:	8fb00020 	lw	s0,32(sp)
 510:	27bd0040 	addiu	sp,sp,64
 514:	03e00008 	jr	ra
 518:	00000000 	nop
 51c:	00000000 	nop
