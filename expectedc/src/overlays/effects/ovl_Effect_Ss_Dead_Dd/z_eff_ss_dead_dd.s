
build/src/overlays/effects/ovl_Effect_Ss_Dead_Dd/z_eff_ss_dead_dd.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsDeadDd_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afbf003c 	sw	ra,60(sp)
   8:	afb20038 	sw	s2,56(sp)
   c:	afb10034 	sw	s1,52(sp)
  10:	afb00030 	sw	s0,48(sp)
  14:	f7b80028 	sdc1	$f24,40(sp)
  18:	f7b60020 	sdc1	$f22,32(sp)
  1c:	f7b40018 	sdc1	$f20,24(sp)
  20:	afa40040 	sw	a0,64(sp)
  24:	afa50044 	sw	a1,68(sp)
  28:	90e20040 	lbu	v0,64(a3)
  2c:	00c08025 	move	s0,a2
  30:	00e08825 	move	s1,a3
  34:	54400044 	bnezl	v0,148 <EffectSsDeadDd_Init+0x148>
  38:	24010001 	li	at,1
  3c:	8e2f0000 	lw	t7,0(s1)
  40:	ae0f0000 	sw	t7,0(s0)
  44:	8e2e0004 	lw	t6,4(s1)
  48:	ae0e0004 	sw	t6,4(s0)
  4c:	8e2f0008 	lw	t7,8(s1)
  50:	ae0f0008 	sw	t7,8(s0)
  54:	8e39000c 	lw	t9,12(s1)
  58:	ae19000c 	sw	t9,12(s0)
  5c:	8e380010 	lw	t8,16(s1)
  60:	ae180010 	sw	t8,16(s0)
  64:	8e390014 	lw	t9,20(s1)
  68:	3c180000 	lui	t8,0x0
  6c:	27180000 	addiu	t8,t8,0
  70:	ae190014 	sw	t9,20(s0)
  74:	8e290018 	lw	t1,24(s1)
  78:	3c190000 	lui	t9,0x0
  7c:	27390000 	addiu	t9,t9,0
  80:	ae090018 	sw	t1,24(s0)
  84:	8e28001c 	lw	t0,28(s1)
  88:	ae08001c 	sw	t0,28(s0)
  8c:	8e290020 	lw	t1,32(s1)
  90:	ae090020 	sw	t1,32(s0)
  94:	8e2a0034 	lw	t2,52(s1)
  98:	a60a005c 	sh	t2,92(s0)
  9c:	862b0026 	lh	t3,38(s1)
  a0:	a60b0052 	sh	t3,82(s0)
  a4:	862c0030 	lh	t4,48(s1)
  a8:	a60c0056 	sh	t4,86(s0)
  ac:	86220030 	lh	v0,48(s1)
  b0:	50400004 	beqzl	v0,c4 <EffectSsDeadDd_Init+0xc4>
  b4:	922d002b 	lbu	t5,43(s1)
  b8:	1000000f 	b	f8 <EffectSsDeadDd_Init+0xf8>
  bc:	a6020054 	sh	v0,84(s0)
  c0:	922d002b 	lbu	t5,43(s1)
  c4:	8e2e0034 	lw	t6,52(s1)
  c8:	01ae001a 	div	zero,t5,t6
  cc:	00007812 	mflo	t7
  d0:	a60f0054 	sh	t7,84(s0)
  d4:	15c00002 	bnez	t6,e0 <EffectSsDeadDd_Init+0xe0>
  d8:	00000000 	nop
  dc:	0007000d 	break	0x7
  e0:	2401ffff 	li	at,-1
  e4:	15c10004 	bne	t6,at,f8 <EffectSsDeadDd_Init+0xf8>
  e8:	3c018000 	lui	at,0x8000
  ec:	15a10002 	bne	t5,at,f8 <EffectSsDeadDd_Init+0xf8>
  f0:	00000000 	nop
  f4:	0006000d 	break	0x6
  f8:	ae180028 	sw	t8,40(s0)
  fc:	ae190024 	sw	t9,36(s0)
 100:	86280024 	lh	t0,36(s1)
 104:	a6080040 	sh	t0,64(s0)
 108:	92290028 	lbu	t1,40(s1)
 10c:	a6090044 	sh	t1,68(s0)
 110:	922a0029 	lbu	t2,41(s1)
 114:	a60a0046 	sh	t2,70(s0)
 118:	922b002a 	lbu	t3,42(s1)
 11c:	a60b0048 	sh	t3,72(s0)
 120:	922c002b 	lbu	t4,43(s1)
 124:	a60c004a 	sh	t4,74(s0)
 128:	922d002c 	lbu	t5,44(s1)
 12c:	a60d004c 	sh	t5,76(s0)
 130:	922e002d 	lbu	t6,45(s1)
 134:	a60e004e 	sh	t6,78(s0)
 138:	922f002e 	lbu	t7,46(s1)
 13c:	1000005b 	b	2ac <EffectSsDeadDd_Init+0x2ac>
 140:	a60f0050 	sh	t7,80(s0)
 144:	24010001 	li	at,1
 148:	14410053 	bne	v0,at,298 <EffectSsDeadDd_Init+0x298>
 14c:	240300ff 	li	v1,255
 150:	8e380034 	lw	t8,52(s1)
 154:	2402009b 	li	v0,155
 158:	3c0d0000 	lui	t5,0x0
 15c:	a618005c 	sh	t8,92(s0)
 160:	86390026 	lh	t9,38(s1)
 164:	a6000056 	sh	zero,86(s0)
 168:	3c0e0000 	lui	t6,0x0
 16c:	a6190052 	sh	t9,82(s0)
 170:	8e280034 	lw	t0,52(s1)
 174:	240b00fa 	li	t3,250
 178:	240c00b4 	li	t4,180
 17c:	0048001a 	div	zero,v0,t0
 180:	00004812 	mflo	t1
 184:	a6090054 	sh	t1,84(s0)
 188:	862a0024 	lh	t2,36(s1)
 18c:	25ad0000 	addiu	t5,t5,0
 190:	25ce0000 	addiu	t6,t6,0
 194:	a6030044 	sh	v1,68(s0)
 198:	a6030046 	sh	v1,70(s0)
 19c:	a6020048 	sh	v0,72(s0)
 1a0:	a602004a 	sh	v0,74(s0)
 1a4:	a60b004c 	sh	t3,76(s0)
 1a8:	a60c004e 	sh	t4,78(s0)
 1ac:	a6000050 	sh	zero,80(s0)
 1b0:	ae0d0028 	sw	t5,40(s0)
 1b4:	ae0e0024 	sw	t6,36(s0)
 1b8:	a60a0040 	sh	t2,64(s0)
 1bc:	8e32003c 	lw	s2,60(s1)
 1c0:	15000002 	bnez	t0,1cc <EffectSsDeadDd_Init+0x1cc>
 1c4:	00000000 	nop
 1c8:	0007000d 	break	0x7
 1cc:	2401ffff 	li	at,-1
 1d0:	15010004 	bne	t0,at,1e4 <EffectSsDeadDd_Init+0x1e4>
 1d4:	3c018000 	lui	at,0x8000
 1d8:	14410002 	bne	v0,at,1e4 <EffectSsDeadDd_Init+0x1e4>
 1dc:	00000000 	nop
 1e0:	0006000d 	break	0x6
 1e4:	1a400031 	blez	s2,2ac <EffectSsDeadDd_Init+0x2ac>
 1e8:	3c013f00 	lui	at,0x3f00
 1ec:	4481c000 	mtc1	at,$f24
 1f0:	00000000 	nop
 1f4:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 1f8:	00000000 	nop
 1fc:	46180101 	sub.s	$f4,$f0,$f24
 200:	c6260038 	lwc1	$f6,56(s1)
 204:	c62a0000 	lwc1	$f10,0(s1)
 208:	46062202 	mul.s	$f8,$f4,$f6
 20c:	460a4400 	add.s	$f16,$f8,$f10
 210:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 214:	e6100000 	swc1	$f16,0(s0)
 218:	46180481 	sub.s	$f18,$f0,$f24
 21c:	c6240038 	lwc1	$f4,56(s1)
 220:	c6280004 	lwc1	$f8,4(s1)
 224:	46049182 	mul.s	$f6,$f18,$f4
 228:	46083280 	add.s	$f10,$f6,$f8
 22c:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 230:	e60a0004 	swc1	$f10,4(s0)
 234:	46180401 	sub.s	$f16,$f0,$f24
 238:	c6320038 	lwc1	$f18,56(s1)
 23c:	c6260008 	lwc1	$f6,8(s1)
 240:	46128102 	mul.s	$f4,$f16,$f18
 244:	46062200 	add.s	$f8,$f4,$f6
 248:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 24c:	e6080008 	swc1	$f8,8(s0)
 250:	46180501 	sub.s	$f20,$f0,$f24
 254:	4614a580 	add.s	$f22,$f20,$f20
 258:	e616000c 	swc1	$f22,12(s0)
 25c:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 260:	e6160018 	swc1	$f22,24(s0)
 264:	46180501 	sub.s	$f20,$f0,$f24
 268:	4614a580 	add.s	$f22,$f20,$f20
 26c:	e6160010 	swc1	$f22,16(s0)
 270:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 274:	e616001c 	swc1	$f22,28(s0)
 278:	46180501 	sub.s	$f20,$f0,$f24
 27c:	2652ffff 	addiu	s2,s2,-1
 280:	4614a580 	add.s	$f22,$f20,$f20
 284:	e6160014 	swc1	$f22,20(s0)
 288:	1e40ffda 	bgtz	s2,1f4 <EffectSsDeadDd_Init+0x1f4>
 28c:	e6160020 	swc1	$f22,32(s0)
 290:	10000007 	b	2b0 <EffectSsDeadDd_Init+0x2b0>
 294:	24020001 	li	v0,1
 298:	3c040000 	lui	a0,0x0
 29c:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 2a0:	24840000 	addiu	a0,a0,0
 2a4:	10000002 	b	2b0 <EffectSsDeadDd_Init+0x2b0>
 2a8:	00001025 	move	v0,zero
 2ac:	24020001 	li	v0,1
 2b0:	8fbf003c 	lw	ra,60(sp)
 2b4:	d7b40018 	ldc1	$f20,24(sp)
 2b8:	d7b60020 	ldc1	$f22,32(sp)
 2bc:	d7b80028 	ldc1	$f24,40(sp)
 2c0:	8fb00030 	lw	s0,48(sp)
 2c4:	8fb10034 	lw	s1,52(sp)
 2c8:	8fb20038 	lw	s2,56(sp)
 2cc:	03e00008 	jr	ra
 2d0:	27bd0040 	addiu	sp,sp,64

000002d4 <EffectSsDeadDd_Draw>:
 2d4:	27bdfee0 	addiu	sp,sp,-288
 2d8:	afb00014 	sw	s0,20(sp)
 2dc:	afbf001c 	sw	ra,28(sp)
 2e0:	afb10018 	sw	s1,24(sp)
 2e4:	afa40120 	sw	a0,288(sp)
 2e8:	afa50124 	sw	a1,292(sp)
 2ec:	8c910000 	lw	s1,0(a0)
 2f0:	00c08025 	move	s0,a2
 2f4:	3c060000 	lui	a2,0x0
 2f8:	24c6002c 	addiu	a2,a2,44
 2fc:	27a40040 	addiu	a0,sp,64
 300:	240700d6 	li	a3,214
 304:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 308:	02202825 	move	a1,s1
 30c:	860f0040 	lh	t7,64(s0)
 310:	3c010000 	lui	at,0x0
 314:	c428005c 	lwc1	$f8,92(at)
 318:	448f2000 	mtc1	t7,$f4
 31c:	8e050000 	lw	a1,0(s0)
 320:	8e060004 	lw	a2,4(s0)
 324:	468021a0 	cvt.s.w	$f6,$f4
 328:	8e070008 	lw	a3,8(s0)
 32c:	27a400dc 	addiu	a0,sp,220
 330:	46083002 	mul.s	$f0,$f6,$f8
 334:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 338:	e7a00054 	swc1	$f0,84(sp)
 33c:	c7a00054 	lwc1	$f0,84(sp)
 340:	27a4009c 	addiu	a0,sp,156
 344:	44050000 	mfc1	a1,$f0
 348:	44060000 	mfc1	a2,$f0
 34c:	44070000 	mfc1	a3,$f0
 350:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 354:	00000000 	nop
 358:	27a400dc 	addiu	a0,sp,220
 35c:	27a5009c 	addiu	a1,sp,156
 360:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 364:	27a6005c 	addiu	a2,sp,92
 368:	02202025 	move	a0,s1
 36c:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 370:	27a5005c 	addiu	a1,sp,92
 374:	1040004b 	beqz	v0,4a4 <EffectSsDeadDd_Draw+0x1d0>
 378:	02202025 	move	a0,s1
 37c:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 380:	afa20058 	sw	v0,88(sp)
 384:	8e2202d0 	lw	v0,720(s1)
 388:	8fa50058 	lw	a1,88(sp)
 38c:	3c19fa00 	lui	t9,0xfa00
 390:	24580008 	addiu	t8,v0,8
 394:	ae3802d0 	sw	t8,720(s1)
 398:	ac590000 	sw	t9,0(v0)
 39c:	8608004a 	lh	t0,74(s0)
 3a0:	860e0046 	lh	t6,70(s0)
 3a4:	860b0044 	lh	t3,68(s0)
 3a8:	310900ff 	andi	t1,t0,0xff
 3ac:	86080048 	lh	t0,72(s0)
 3b0:	31cf00ff 	andi	t7,t6,0xff
 3b4:	000b6600 	sll	t4,t3,0x18
 3b8:	012c6825 	or	t5,t1,t4
 3bc:	000fc400 	sll	t8,t7,0x10
 3c0:	310a00ff 	andi	t2,t0,0xff
 3c4:	000a5a00 	sll	t3,t2,0x8
 3c8:	01b8c825 	or	t9,t5,t8
 3cc:	032b4825 	or	t1,t9,t3
 3d0:	ac490004 	sw	t1,4(v0)
 3d4:	8e2202d0 	lw	v0,720(s1)
 3d8:	3c0efb00 	lui	t6,0xfb00
 3dc:	244c0008 	addiu	t4,v0,8
 3e0:	ae2c02d0 	sw	t4,720(s1)
 3e4:	ac4e0000 	sw	t6,0(v0)
 3e8:	860f004a 	lh	t7,74(s0)
 3ec:	860b004e 	lh	t3,78(s0)
 3f0:	8608004c 	lh	t0,76(s0)
 3f4:	31ed00ff 	andi	t5,t7,0xff
 3f8:	860f0050 	lh	t7,80(s0)
 3fc:	316900ff 	andi	t1,t3,0xff
 400:	00085600 	sll	t2,t0,0x18
 404:	01aac825 	or	t9,t5,t2
 408:	00096400 	sll	t4,t1,0x10
 40c:	31f800ff 	andi	t8,t7,0xff
 410:	00184200 	sll	t0,t8,0x8
 414:	032c7025 	or	t6,t9,t4
 418:	01c86825 	or	t5,t6,t0
 41c:	ac4d0004 	sw	t5,4(v0)
 420:	8e2202d0 	lw	v0,720(s1)
 424:	3c0bda38 	lui	t3,0xda38
 428:	356b0003 	ori	t3,t3,0x3
 42c:	244a0008 	addiu	t2,v0,8
 430:	ae2a02d0 	sw	t2,720(s1)
 434:	ac450004 	sw	a1,4(v0)
 438:	ac4b0000 	sw	t3,0(v0)
 43c:	8e2202d0 	lw	v0,720(s1)
 440:	3c0c0000 	lui	t4,0x0
 444:	3c19da38 	lui	t9,0xda38
 448:	24490008 	addiu	t1,v0,8
 44c:	ae2902d0 	sw	t1,720(s1)
 450:	37390001 	ori	t9,t9,0x1
 454:	258c0000 	addiu	t4,t4,0
 458:	ac4c0004 	sw	t4,4(v0)
 45c:	ac590000 	sw	t9,0(v0)
 460:	8e2202d0 	lw	v0,720(s1)
 464:	3c0eff2d 	lui	t6,0xff2d
 468:	3c18fcff 	lui	t8,0xfcff
 46c:	244f0008 	addiu	t7,v0,8
 470:	ae2f02d0 	sw	t7,720(s1)
 474:	371897ff 	ori	t8,t8,0x97ff
 478:	35cefeff 	ori	t6,t6,0xfeff
 47c:	ac4e0004 	sw	t6,4(v0)
 480:	ac580000 	sw	t8,0(v0)
 484:	8e2202d0 	lw	v0,720(s1)
 488:	3c0a0000 	lui	t2,0x0
 48c:	254a0000 	addiu	t2,t2,0
 490:	24480008 	addiu	t0,v0,8
 494:	ae2802d0 	sw	t0,720(s1)
 498:	3c0dde00 	lui	t5,0xde00
 49c:	ac4d0000 	sw	t5,0(v0)
 4a0:	ac4a0004 	sw	t2,4(v0)
 4a4:	3c060000 	lui	a2,0x0
 4a8:	24c60044 	addiu	a2,a2,68
 4ac:	27a40040 	addiu	a0,sp,64
 4b0:	02202825 	move	a1,s1
 4b4:	0c000000 	jal	0 <EffectSsDeadDd_Init>
 4b8:	24070103 	li	a3,259
 4bc:	8fbf001c 	lw	ra,28(sp)
 4c0:	8fb00014 	lw	s0,20(sp)
 4c4:	8fb10018 	lw	s1,24(sp)
 4c8:	03e00008 	jr	ra
 4cc:	27bd0120 	addiu	sp,sp,288

000004d0 <EffectSsDeadDd_Update>:
 4d0:	afa40000 	sw	a0,0(sp)
 4d4:	afa50004 	sw	a1,4(sp)
 4d8:	84ce0040 	lh	t6,64(a2)
 4dc:	84cf0052 	lh	t7,82(a2)
 4e0:	01cfc021 	addu	t8,t6,t7
 4e4:	a4d80040 	sh	t8,64(a2)
 4e8:	84d90040 	lh	t9,64(a2)
 4ec:	07230003 	bgezl	t9,4fc <EffectSsDeadDd_Update+0x2c>
 4f0:	84c80056 	lh	t0,86(a2)
 4f4:	a4c00040 	sh	zero,64(a2)
 4f8:	84c80056 	lh	t0,86(a2)
 4fc:	5100000d 	beqzl	t0,534 <EffectSsDeadDd_Update+0x64>
 500:	84c2004a 	lh	v0,74(a2)
 504:	84c9004a 	lh	t1,74(a2)
 508:	84ca0054 	lh	t2,84(a2)
 50c:	240d00ff 	li	t5,255
 510:	012a5821 	addu	t3,t1,t2
 514:	a4cb004a 	sh	t3,74(a2)
 518:	84cc004a 	lh	t4,74(a2)
 51c:	29810100 	slti	at,t4,256
 520:	1420000b 	bnez	at,550 <EffectSsDeadDd_Update+0x80>
 524:	00000000 	nop
 528:	03e00008 	jr	ra
 52c:	a4cd004a 	sh	t5,74(a2)
 530:	84c2004a 	lh	v0,74(a2)
 534:	84c30054 	lh	v1,84(a2)
 538:	0043082a 	slt	at,v0,v1
 53c:	10200003 	beqz	at,54c <EffectSsDeadDd_Update+0x7c>
 540:	00437023 	subu	t6,v0,v1
 544:	03e00008 	jr	ra
 548:	a4c0004a 	sh	zero,74(a2)
 54c:	a4ce004a 	sh	t6,74(a2)
 550:	03e00008 	jr	ra
 554:	00000000 	nop
	...
