
build/src/overlays/effects/ovl_Effect_Ss_K_Fire/z_eff_ss_k_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsKFire_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	8cef0000 	lw	t7,0(a3)
  14:	240a0064 	li	t2,100
  18:	240c00ff 	li	t4,255
  1c:	accf0000 	sw	t7,0(a2)
  20:	8cee0004 	lw	t6,4(a3)
  24:	3c0140a0 	lui	at,0x40a0
  28:	44816000 	mtc1	at,$f12
  2c:	acce0004 	sw	t6,4(a2)
  30:	8cef0008 	lw	t7,8(a3)
  34:	accf0008 	sw	t7,8(a2)
  38:	8cf9000c 	lw	t9,12(a3)
  3c:	acd9000c 	sw	t9,12(a2)
  40:	8cf80010 	lw	t8,16(a3)
  44:	acd80010 	sw	t8,16(a2)
  48:	8cf90014 	lw	t9,20(a3)
  4c:	acd90014 	sw	t9,20(a2)
  50:	8ce90018 	lw	t1,24(a3)
  54:	acc90018 	sw	t1,24(a2)
  58:	8ce8001c 	lw	t0,28(a3)
  5c:	acc8001c 	sw	t0,28(a2)
  60:	8ce90020 	lw	t1,32(a3)
  64:	a4ca005c 	sh	t2,92(a2)
  68:	acc90020 	sw	t1,32(a2)
  6c:	84eb0024 	lh	t3,36(a3)
  70:	a4cc0040 	sh	t4,64(a2)
  74:	a4cb004c 	sh	t3,76(a2)
  78:	afa70024 	sw	a3,36(sp)
  7c:	0c000000 	jal	0 <EffectSsKFire_Init>
  80:	afa60020 	sw	a2,32(sp)
  84:	4600010d 	trunc.w.s	$f4,$f0
  88:	8fa60020 	lw	a2,32(sp)
  8c:	8fa70024 	lw	a3,36(sp)
  90:	3c090000 	lui	t1,0x0
  94:	44182000 	mfc1	t8,$f4
  98:	3c0a0000 	lui	t2,0x0
  9c:	25290000 	addiu	t1,t1,0
  a0:	2719ffe7 	addiu	t9,t8,-25
  a4:	a4d90044 	sh	t9,68(a2)
  a8:	90e80026 	lbu	t0,38(a3)
  ac:	254a0000 	addiu	t2,t2,0
  b0:	acc90028 	sw	t1,40(a2)
  b4:	acca0024 	sw	t2,36(a2)
  b8:	a4c80046 	sh	t0,70(a2)
  bc:	8fbf0014 	lw	ra,20(sp)
  c0:	27bd0018 	addiu	sp,sp,24
  c4:	24020001 	li	v0,1
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

000000d0 <EffectSsKFire_Draw>:
  d0:	27bdff78 	addiu	sp,sp,-136
  d4:	afbf003c 	sw	ra,60(sp)
  d8:	afb10038 	sw	s1,56(sp)
  dc:	afb00034 	sw	s0,52(sp)
  e0:	afa40088 	sw	a0,136(sp)
  e4:	afa5008c 	sw	a1,140(sp)
  e8:	84cf004a 	lh	t7,74(a2)
  ec:	3c010000 	lui	at,0x0
  f0:	c420003c 	lwc1	$f0,60(at)
  f4:	448f2000 	mtc1	t7,$f4
  f8:	8c910000 	lw	s1,0(a0)
  fc:	00c08025 	move	s0,a2
 100:	468021a0 	cvt.s.w	$f6,$f4
 104:	27a40064 	addiu	a0,sp,100
 108:	24070098 	li	a3,152
 10c:	02202825 	move	a1,s1
 110:	46003203 	div.s	$f8,$f6,$f0
 114:	e7a8007c 	swc1	$f8,124(sp)
 118:	84d80048 	lh	t8,72(a2)
 11c:	3c060000 	lui	a2,0x0
 120:	24c60000 	addiu	a2,a2,0
 124:	44985000 	mtc1	t8,$f10
 128:	00000000 	nop
 12c:	46805420 	cvt.s.w	$f16,$f10
 130:	46008483 	div.s	$f18,$f16,$f0
 134:	0c000000 	jal	0 <EffectSsKFire_Init>
 138:	e7b20078 	swc1	$f18,120(sp)
 13c:	c60c0000 	lwc1	$f12,0(s0)
 140:	c60e0004 	lwc1	$f14,4(s0)
 144:	8e060008 	lw	a2,8(s0)
 148:	0c000000 	jal	0 <EffectSsKFire_Init>
 14c:	00003825 	move	a3,zero
 150:	c7ac007c 	lwc1	$f12,124(sp)
 154:	c7ae0078 	lwc1	$f14,120(sp)
 158:	24070001 	li	a3,1
 15c:	44066000 	mfc1	a2,$f12
 160:	0c000000 	jal	0 <EffectSsKFire_Init>
 164:	00000000 	nop
 168:	8fb90088 	lw	t9,136(sp)
 16c:	0c000000 	jal	0 <EffectSsKFire_Init>
 170:	8f240000 	lw	a0,0(t9)
 174:	8e2202d0 	lw	v0,720(s1)
 178:	8fa80088 	lw	t0,136(sp)
 17c:	3c0adb06 	lui	t2,0xdb06
 180:	24490008 	addiu	t1,v0,8
 184:	ae2902d0 	sw	t1,720(s1)
 188:	354a0020 	ori	t2,t2,0x20
 18c:	ac4a0000 	sw	t2,0(v0)
 190:	8d040000 	lw	a0,0(t0)
 194:	240b0020 	li	t3,32
 198:	240c0040 	li	t4,64
 19c:	240d0001 	li	t5,1
 1a0:	afad0018 	sw	t5,24(sp)
 1a4:	afac0014 	sw	t4,20(sp)
 1a8:	afab0010 	sw	t3,16(sp)
 1ac:	afa0001c 	sw	zero,28(sp)
 1b0:	860e0044 	lh	t6,68(s0)
 1b4:	8d0f009c 	lw	t7,156(t0)
 1b8:	24090080 	li	t1,128
 1bc:	24190020 	li	t9,32
 1c0:	01cf0019 	multu	t6,t7
 1c4:	afb90024 	sw	t9,36(sp)
 1c8:	afa90028 	sw	t1,40(sp)
 1cc:	00002825 	move	a1,zero
 1d0:	00003025 	move	a2,zero
 1d4:	00003825 	move	a3,zero
 1d8:	afa20060 	sw	v0,96(sp)
 1dc:	0000c012 	mflo	t8
 1e0:	afb80020 	sw	t8,32(sp)
 1e4:	0c000000 	jal	0 <EffectSsKFire_Init>
 1e8:	00000000 	nop
 1ec:	8fa30060 	lw	v1,96(sp)
 1f0:	ac620004 	sw	v0,4(v1)
 1f4:	860a0046 	lh	t2,70(s0)
 1f8:	29410064 	slti	at,t2,100
 1fc:	54200015 	bnezl	at,254 <EffectSsKFire_Draw+0x184>
 200:	8e2202d0 	lw	v0,720(s1)
 204:	8e2202d0 	lw	v0,720(s1)
 208:	3c0cfa00 	lui	t4,0xfa00
 20c:	358c8080 	ori	t4,t4,0x8080
 210:	244b0008 	addiu	t3,v0,8
 214:	ae2b02d0 	sw	t3,720(s1)
 218:	ac4c0000 	sw	t4,0(v0)
 21c:	860d0040 	lh	t5,64(s0)
 220:	3c01ffff 	lui	at,0xffff
 224:	3c19fb00 	lui	t9,0xfb00
 228:	31ae00ff 	andi	t6,t5,0xff
 22c:	01c17825 	or	t7,t6,at
 230:	ac4f0004 	sw	t7,4(v0)
 234:	8e2202d0 	lw	v0,720(s1)
 238:	3c09ff0a 	lui	t1,0xff0a
 23c:	24580008 	addiu	t8,v0,8
 240:	ae3802d0 	sw	t8,720(s1)
 244:	ac490004 	sw	t1,4(v0)
 248:	10000014 	b	29c <EffectSsKFire_Draw+0x1cc>
 24c:	ac590000 	sw	t9,0(v0)
 250:	8e2202d0 	lw	v0,720(s1)
 254:	3c0bfa00 	lui	t3,0xfa00
 258:	356b8080 	ori	t3,t3,0x8080
 25c:	244a0008 	addiu	t2,v0,8
 260:	ae2a02d0 	sw	t2,720(s1)
 264:	ac4b0000 	sw	t3,0(v0)
 268:	860c0040 	lh	t4,64(s0)
 26c:	2401ff00 	li	at,-256
 270:	3c1900ff 	lui	t9,0xff
 274:	318d00ff 	andi	t5,t4,0xff
 278:	01a17025 	or	t6,t5,at
 27c:	ac4e0004 	sw	t6,4(v0)
 280:	8e2202d0 	lw	v0,720(s1)
 284:	3739ff00 	ori	t9,t9,0xff00
 288:	3c18fb00 	lui	t8,0xfb00
 28c:	244f0008 	addiu	t7,v0,8
 290:	ae2f02d0 	sw	t7,720(s1)
 294:	ac590004 	sw	t9,4(v0)
 298:	ac580000 	sw	t8,0(v0)
 29c:	8e2202d0 	lw	v0,720(s1)
 2a0:	3c0ae700 	lui	t2,0xe700
 2a4:	3c010001 	lui	at,0x1
 2a8:	24490008 	addiu	t1,v0,8
 2ac:	ae2902d0 	sw	t1,720(s1)
 2b0:	ac400004 	sw	zero,4(v0)
 2b4:	ac4a0000 	sw	t2,0(v0)
 2b8:	8fa40088 	lw	a0,136(sp)
 2bc:	34211da0 	ori	at,at,0x1da0
 2c0:	0c000000 	jal	0 <EffectSsKFire_Init>
 2c4:	00812021 	addu	a0,a0,at
 2c8:	8fab008c 	lw	t3,140(sp)
 2cc:	3c010000 	lui	at,0x0
 2d0:	24050001 	li	a1,1
 2d4:	316c0001 	andi	t4,t3,0x1
 2d8:	51800004 	beqzl	t4,2ec <EffectSsKFire_Draw+0x21c>
 2dc:	8e2202d0 	lw	v0,720(s1)
 2e0:	0c000000 	jal	0 <EffectSsKFire_Init>
 2e4:	c42c0040 	lwc1	$f12,64(at)
 2e8:	8e2202d0 	lw	v0,720(s1)
 2ec:	3c0eda38 	lui	t6,0xda38
 2f0:	35ce0003 	ori	t6,t6,0x3
 2f4:	244d0008 	addiu	t5,v0,8
 2f8:	ae2d02d0 	sw	t5,720(s1)
 2fc:	ac4e0000 	sw	t6,0(v0)
 300:	8faf0088 	lw	t7,136(sp)
 304:	3c050000 	lui	a1,0x0
 308:	24a50014 	addiu	a1,a1,20
 30c:	240600d7 	li	a2,215
 310:	00408025 	move	s0,v0
 314:	0c000000 	jal	0 <EffectSsKFire_Init>
 318:	8de40000 	lw	a0,0(t7)
 31c:	ae020004 	sw	v0,4(s0)
 320:	8e2202d0 	lw	v0,720(s1)
 324:	3c090000 	lui	t1,0x0
 328:	25290000 	addiu	t1,t1,0
 32c:	24580008 	addiu	t8,v0,8
 330:	ae3802d0 	sw	t8,720(s1)
 334:	3c19de00 	lui	t9,0xde00
 338:	3c060000 	lui	a2,0x0
 33c:	24c60028 	addiu	a2,a2,40
 340:	27a40064 	addiu	a0,sp,100
 344:	02202825 	move	a1,s1
 348:	240700dc 	li	a3,220
 34c:	ac590000 	sw	t9,0(v0)
 350:	0c000000 	jal	0 <EffectSsKFire_Init>
 354:	ac490004 	sw	t1,4(v0)
 358:	8fbf003c 	lw	ra,60(sp)
 35c:	8fb00034 	lw	s0,52(sp)
 360:	8fb10038 	lw	s1,56(sp)
 364:	03e00008 	jr	ra
 368:	27bd0088 	addiu	sp,sp,136

0000036c <EffectSsKFire_Update>:
 36c:	afa40000 	sw	a0,0(sp)
 370:	afa50004 	sw	a1,4(sp)
 374:	84c3004c 	lh	v1,76(a2)
 378:	84c2004a 	lh	v0,74(a2)
 37c:	0043082a 	slt	at,v0,v1
 380:	1020000f 	beqz	at,3c0 <EffectSsKFire_Update+0x54>
 384:	244e0004 	addiu	t6,v0,4
 388:	a4ce004a 	sh	t6,74(a2)
 38c:	84cf0048 	lh	t7,72(a2)
 390:	84d9004a 	lh	t9,74(a2)
 394:	25f80004 	addiu	t8,t7,4
 398:	0079082a 	slt	at,v1,t9
 39c:	10200011 	beqz	at,3e4 <EffectSsKFire_Update+0x78>
 3a0:	a4d80048 	sh	t8,72(a2)
 3a4:	84c80046 	lh	t0,70(a2)
 3a8:	24010003 	li	at,3
 3ac:	a4c3004a 	sh	v1,74(a2)
 3b0:	5101000d 	beql	t0,at,3e8 <EffectSsKFire_Update+0x7c>
 3b4:	84cb0046 	lh	t3,70(a2)
 3b8:	1000000a 	b	3e4 <EffectSsKFire_Update+0x78>
 3bc:	a4c30048 	sh	v1,72(a2)
 3c0:	84c20040 	lh	v0,64(a2)
 3c4:	18400007 	blez	v0,3e4 <EffectSsKFire_Update+0x78>
 3c8:	2449fff6 	addiu	t1,v0,-10
 3cc:	a4c90040 	sh	t1,64(a2)
 3d0:	84ca0040 	lh	t2,64(a2)
 3d4:	5d400004 	bgtzl	t2,3e8 <EffectSsKFire_Update+0x7c>
 3d8:	84cb0046 	lh	t3,70(a2)
 3dc:	a4c00040 	sh	zero,64(a2)
 3e0:	a4c0005c 	sh	zero,92(a2)
 3e4:	84cb0046 	lh	t3,70(a2)
 3e8:	24010003 	li	at,3
 3ec:	15610004 	bne	t3,at,400 <EffectSsKFire_Update+0x94>
 3f0:	00000000 	nop
 3f4:	84cc0048 	lh	t4,72(a2)
 3f8:	258d0001 	addiu	t5,t4,1
 3fc:	a4cd0048 	sh	t5,72(a2)
 400:	03e00008 	jr	ra
 404:	00000000 	nop
	...
