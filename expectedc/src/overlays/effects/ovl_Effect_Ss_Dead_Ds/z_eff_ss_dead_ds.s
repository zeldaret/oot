
build/src/overlays/effects/ovl_Effect_Ss_Dead_Ds/z_eff_ss_dead_ds.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsDeadDs_Init>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	8cef0000 	lw	t7,0(a3)
   c:	24020001 	li	v0,1
  10:	accf0000 	sw	t7,0(a2)
  14:	8cee0004 	lw	t6,4(a3)
  18:	acce0004 	sw	t6,4(a2)
  1c:	8cef0008 	lw	t7,8(a3)
  20:	accf0008 	sw	t7,8(a2)
  24:	8cf9000c 	lw	t9,12(a3)
  28:	acd9000c 	sw	t9,12(a2)
  2c:	8cf80010 	lw	t8,16(a3)
  30:	acd80010 	sw	t8,16(a2)
  34:	8cf90014 	lw	t9,20(a3)
  38:	acd90014 	sw	t9,20(a2)
  3c:	8ce90018 	lw	t1,24(a3)
  40:	3c190000 	lui	t9,0x0
  44:	27390000 	addiu	t9,t9,0
  48:	acc90018 	sw	t1,24(a2)
  4c:	8ce8001c 	lw	t0,28(a3)
  50:	acc8001c 	sw	t0,28(a2)
  54:	8ce90020 	lw	t1,32(a3)
  58:	3c080000 	lui	t0,0x0
  5c:	25080000 	addiu	t0,t0,0
  60:	acc90020 	sw	t1,32(a2)
  64:	8cea002c 	lw	t2,44(a3)
  68:	a4ca005c 	sh	t2,92(a2)
  6c:	84eb0026 	lh	t3,38(a3)
  70:	a4cb0052 	sh	t3,82(a2)
  74:	8cec002c 	lw	t4,44(a3)
  78:	05810003 	bgez	t4,88 <EffectSsDeadDs_Init+0x88>
  7c:	000c6843 	sra	t5,t4,0x1
  80:	25810001 	addiu	at,t4,1
  84:	00016843 	sra	t5,at,0x1
  88:	a4cd0056 	sh	t5,86(a2)
  8c:	84ee0028 	lh	t6,40(a3)
  90:	84cf0056 	lh	t7,86(a2)
  94:	acd90028 	sw	t9,40(a2)
  98:	acc80024 	sw	t0,36(a2)
  9c:	01cf001a 	div	zero,t6,t7
  a0:	0000c012 	mflo	t8
  a4:	a4d80054 	sh	t8,84(a2)
  a8:	84e90024 	lh	t1,36(a3)
  ac:	15e00002 	bnez	t7,b8 <EffectSsDeadDs_Init+0xb8>
  b0:	00000000 	nop
  b4:	0007000d 	break	0x7
  b8:	2401ffff 	li	at,-1
  bc:	15e10004 	bne	t7,at,d0 <EffectSsDeadDs_Init+0xd0>
  c0:	3c018000 	lui	at,0x8000
  c4:	15c10002 	bne	t6,at,d0 <EffectSsDeadDs_Init+0xd0>
  c8:	00000000 	nop
  cc:	0006000d 	break	0x6
  d0:	a4c90040 	sh	t1,64(a2)
  d4:	84ea0028 	lh	t2,40(a3)
  d8:	a4c00042 	sh	zero,66(a2)
  dc:	03e00008 	jr	ra
  e0:	a4ca004a 	sh	t2,74(a2)

000000e4 <EffectSsDeadDs_Draw>:
  e4:	27bdff28 	addiu	sp,sp,-216
  e8:	afb00024 	sw	s0,36(sp)
  ec:	afbf002c 	sw	ra,44(sp)
  f0:	afb10028 	sw	s1,40(sp)
  f4:	afa400d8 	sw	a0,216(sp)
  f8:	afa500dc 	sw	a1,220(sp)
  fc:	8c850000 	lw	a1,0(a0)
 100:	00c08025 	move	s0,a2
 104:	3c060000 	lui	a2,0x0
 108:	24c60000 	addiu	a2,a2,0
 10c:	27a40060 	addiu	a0,sp,96
 110:	2407009d 	li	a3,157
 114:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 118:	00a08825 	move	s1,a1
 11c:	860f0040 	lh	t7,64(s0)
 120:	3c010000 	lui	at,0x0
 124:	c4280048 	lwc1	$f8,72(at)
 128:	448f2000 	mtc1	t7,$f4
 12c:	8fb800d8 	lw	t8,216(sp)
 130:	468021a0 	cvt.s.w	$f6,$f4
 134:	46083282 	mul.s	$f10,$f6,$f8
 138:	e7aa00d0 	swc1	$f10,208(sp)
 13c:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 140:	8f040000 	lw	a0,0(t8)
 144:	8e2202d0 	lw	v0,720(s1)
 148:	3c08fa00 	lui	t0,0xfa00
 14c:	3c0cfb00 	lui	t4,0xfb00
 150:	24590008 	addiu	t9,v0,8
 154:	ae3902d0 	sw	t9,720(s1)
 158:	ac480000 	sw	t0,0(v0)
 15c:	8609004a 	lh	t1,74(s0)
 160:	27a60078 	addiu	a2,sp,120
 164:	02002825 	move	a1,s0
 168:	312a00ff 	andi	t2,t1,0xff
 16c:	ac4a0004 	sw	t2,4(v0)
 170:	8e2202d0 	lw	v0,720(s1)
 174:	244b0008 	addiu	t3,v0,8
 178:	ae2b02d0 	sw	t3,720(s1)
 17c:	ac400004 	sw	zero,4(v0)
 180:	ac4c0000 	sw	t4,0(v0)
 184:	8e0e0000 	lw	t6,0(s0)
 188:	acce0000 	sw	t6,0(a2)
 18c:	8e0d0004 	lw	t5,4(s0)
 190:	accd0004 	sw	t5,4(a2)
 194:	8e0e0008 	lw	t6,8(s0)
 198:	acce0008 	sw	t6,8(a2)
 19c:	860f0042 	lh	t7,66(s0)
 1a0:	c7b00078 	lwc1	$f16,120(sp)
 1a4:	55e00057 	bnezl	t7,304 <EffectSsDeadDs_Draw+0x220>
 1a8:	c60c0000 	lwc1	$f12,0(s0)
 1ac:	c612000c 	lwc1	$f18,12(s0)
 1b0:	c7a6007c 	lwc1	$f6,124(sp)
 1b4:	3c013fc0 	lui	at,0x3fc0
 1b8:	46128101 	sub.s	$f4,$f16,$f18
 1bc:	c7b00080 	lwc1	$f16,128(sp)
 1c0:	8fa400d8 	lw	a0,216(sp)
 1c4:	27b80074 	addiu	t8,sp,116
 1c8:	e7a40044 	swc1	$f4,68(sp)
 1cc:	c6080010 	lwc1	$f8,16(s0)
 1d0:	248407c0 	addiu	a0,a0,1984
 1d4:	27a70044 	addiu	a3,sp,68
 1d8:	46083281 	sub.s	$f10,$f6,$f8
 1dc:	44813000 	mtc1	at,$f6
 1e0:	3c013f80 	lui	at,0x3f80
 1e4:	44814000 	mtc1	at,$f8
 1e8:	e7aa0048 	swc1	$f10,72(sp)
 1ec:	c6120014 	lwc1	$f18,20(s0)
 1f0:	afa40034 	sw	a0,52(sp)
 1f4:	afb80014 	sw	t8,20(sp)
 1f8:	46128101 	sub.s	$f4,$f16,$f18
 1fc:	e7a60010 	swc1	$f6,16(sp)
 200:	e7a80018 	swc1	$f8,24(sp)
 204:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 208:	e7a4004c 	swc1	$f4,76(sp)
 20c:	1040000c 	beqz	v0,240 <EffectSsDeadDs_Draw+0x15c>
 210:	8fa40034 	lw	a0,52(sp)
 214:	8e050000 	lw	a1,0(s0)
 218:	8e060004 	lw	a2,4(s0)
 21c:	8e070008 	lw	a3,8(s0)
 220:	27b90088 	addiu	t9,sp,136
 224:	afb90010 	sw	t9,16(sp)
 228:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 22c:	8fa40074 	lw	a0,116(sp)
 230:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 234:	27a40088 	addiu	a0,sp,136
 238:	10000023 	b	2c8 <EffectSsDeadDs_Draw+0x1e4>
 23c:	27a40088 	addiu	a0,sp,136
 240:	3c013f80 	lui	at,0x3f80
 244:	44818000 	mtc1	at,$f16
 248:	c7aa007c 	lwc1	$f10,124(sp)
 24c:	27a50074 	addiu	a1,sp,116
 250:	27a60078 	addiu	a2,sp,120
 254:	46105480 	add.s	$f18,$f10,$f16
 258:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 25c:	e7b2007c 	swc1	$f18,124(sp)
 260:	8fa80074 	lw	t0,116(sp)
 264:	3c013fc0 	lui	at,0x3fc0
 268:	00003825 	move	a3,zero
 26c:	51000010 	beqzl	t0,2b0 <EffectSsDeadDs_Draw+0x1cc>
 270:	c60c0000 	lwc1	$f12,0(s0)
 274:	44812000 	mtc1	at,$f4
 278:	8e050000 	lw	a1,0(s0)
 27c:	8e070008 	lw	a3,8(s0)
 280:	46040180 	add.s	$f6,$f0,$f4
 284:	27a90088 	addiu	t1,sp,136
 288:	afa90010 	sw	t1,16(sp)
 28c:	01002025 	move	a0,t0
 290:	44063000 	mfc1	a2,$f6
 294:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 298:	00000000 	nop
 29c:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 2a0:	27a40088 	addiu	a0,sp,136
 2a4:	10000008 	b	2c8 <EffectSsDeadDs_Draw+0x1e4>
 2a8:	27a40088 	addiu	a0,sp,136
 2ac:	c60c0000 	lwc1	$f12,0(s0)
 2b0:	c60e0004 	lwc1	$f14,4(s0)
 2b4:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 2b8:	8e060008 	lw	a2,8(s0)
 2bc:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 2c0:	27a40088 	addiu	a0,sp,136
 2c4:	27a40088 	addiu	a0,sp,136
 2c8:	27a50050 	addiu	a1,sp,80
 2cc:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 2d0:	00003025 	move	a2,zero
 2d4:	87aa0050 	lh	t2,80(sp)
 2d8:	860d0042 	lh	t5,66(s0)
 2dc:	a60a0044 	sh	t2,68(s0)
 2e0:	87ab0052 	lh	t3,82(sp)
 2e4:	25ae0001 	addiu	t6,t5,1
 2e8:	a60b0046 	sh	t3,70(s0)
 2ec:	87ac0054 	lh	t4,84(sp)
 2f0:	a60c0048 	sh	t4,72(s0)
 2f4:	c7a800bc 	lwc1	$f8,188(sp)
 2f8:	a60e0042 	sh	t6,66(s0)
 2fc:	e6080004 	swc1	$f8,4(s0)
 300:	c60c0000 	lwc1	$f12,0(s0)
 304:	c60e0004 	lwc1	$f14,4(s0)
 308:	8e060008 	lw	a2,8(s0)
 30c:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 310:	00003825 	move	a3,zero
 314:	86040044 	lh	a0,68(s0)
 318:	86050046 	lh	a1,70(s0)
 31c:	86060048 	lh	a2,72(s0)
 320:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 324:	24070001 	li	a3,1
 328:	3c010000 	lui	at,0x0
 32c:	c42c004c 	lwc1	$f12,76(at)
 330:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 334:	24050001 	li	a1,1
 338:	c7ac00d0 	lwc1	$f12,208(sp)
 33c:	24070001 	li	a3,1
 340:	44066000 	mfc1	a2,$f12
 344:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 348:	46006386 	mov.s	$f14,$f12
 34c:	8e2202d0 	lw	v0,720(s1)
 350:	3c18da38 	lui	t8,0xda38
 354:	37180003 	ori	t8,t8,0x3
 358:	244f0008 	addiu	t7,v0,8
 35c:	ae2f02d0 	sw	t7,720(s1)
 360:	ac580000 	sw	t8,0(v0)
 364:	8fb900d8 	lw	t9,216(sp)
 368:	3c050000 	lui	a1,0x0
 36c:	24a50018 	addiu	a1,a1,24
 370:	240600f6 	li	a2,246
 374:	00408025 	move	s0,v0
 378:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 37c:	8f240000 	lw	a0,0(t9)
 380:	ae020004 	sw	v0,4(s0)
 384:	8e2202d0 	lw	v0,720(s1)
 388:	3c09fcff 	lui	t1,0xfcff
 38c:	3c0aff2d 	lui	t2,0xff2d
 390:	24480008 	addiu	t0,v0,8
 394:	ae2802d0 	sw	t0,720(s1)
 398:	354afeff 	ori	t2,t2,0xfeff
 39c:	352997ff 	ori	t1,t1,0x97ff
 3a0:	ac490000 	sw	t1,0(v0)
 3a4:	ac4a0004 	sw	t2,4(v0)
 3a8:	8e2202d0 	lw	v0,720(s1)
 3ac:	3c0d0000 	lui	t5,0x0
 3b0:	25ad0000 	addiu	t5,t5,0
 3b4:	244b0008 	addiu	t3,v0,8
 3b8:	ae2b02d0 	sw	t3,720(s1)
 3bc:	3c0cde00 	lui	t4,0xde00
 3c0:	ac4c0000 	sw	t4,0(v0)
 3c4:	ac4d0004 	sw	t5,4(v0)
 3c8:	8fae00d8 	lw	t6,216(sp)
 3cc:	3c060000 	lui	a2,0x0
 3d0:	24c60030 	addiu	a2,a2,48
 3d4:	27a40060 	addiu	a0,sp,96
 3d8:	240700ff 	li	a3,255
 3dc:	0c000000 	jal	0 <EffectSsDeadDs_Init>
 3e0:	8dc50000 	lw	a1,0(t6)
 3e4:	8fbf002c 	lw	ra,44(sp)
 3e8:	8fb00024 	lw	s0,36(sp)
 3ec:	8fb10028 	lw	s1,40(sp)
 3f0:	03e00008 	jr	ra
 3f4:	27bd00d8 	addiu	sp,sp,216

000003f8 <EffectSsDeadDs_Update>:
 3f8:	afa40000 	sw	a0,0(sp)
 3fc:	afa50004 	sw	a1,4(sp)
 400:	84cf0056 	lh	t7,86(a2)
 404:	84ce005c 	lh	t6,92(a2)
 408:	01cf082a 	slt	at,t6,t7
 40c:	10200011 	beqz	at,454 <EffectSsDeadDs_Update+0x5c>
 410:	00000000 	nop
 414:	84d80040 	lh	t8,64(a2)
 418:	84d90052 	lh	t9,82(a2)
 41c:	03194021 	addu	t0,t8,t9
 420:	a4c80040 	sh	t0,64(a2)
 424:	84c90040 	lh	t1,64(a2)
 428:	05230003 	bgezl	t1,438 <EffectSsDeadDs_Update+0x40>
 42c:	84ca004a 	lh	t2,74(a2)
 430:	a4c00040 	sh	zero,64(a2)
 434:	84ca004a 	lh	t2,74(a2)
 438:	84cb0054 	lh	t3,84(a2)
 43c:	014b6023 	subu	t4,t2,t3
 440:	a4cc004a 	sh	t4,74(a2)
 444:	84cd004a 	lh	t5,74(a2)
 448:	05a10002 	bgez	t5,454 <EffectSsDeadDs_Update+0x5c>
 44c:	00000000 	nop
 450:	a4c0004a 	sh	zero,74(a2)
 454:	03e00008 	jr	ra
 458:	00000000 	nop
 45c:	00000000 	nop
