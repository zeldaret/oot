
build/src/overlays/effects/ovl_Effect_Ss_Bubble/z_eff_ss_bubble.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsBubble_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb10020 	sw	s1,32(sp)
   c:	afb0001c 	sw	s0,28(sp)
  10:	00c08025 	move	s0,a2
  14:	00e08825 	move	s1,a3
  18:	f7b40010 	sdc1	$f20,16(sp)
  1c:	afa40038 	sw	a0,56(sp)
  20:	0c000000 	jal	0 <EffectSsBubble_Init>
  24:	afa5003c 	sw	a1,60(sp)
  28:	3c013f00 	lui	at,0x3f00
  2c:	4481a000 	mtc1	at,$f20
  30:	3c030000 	lui	v1,0x0
  34:	24630000 	addiu	v1,v1,0
  38:	4614003c 	c.lt.s	$f0,$f20
  3c:	00000000 	nop
  40:	45000004 	bc1f	54 <EffectSsBubble_Init+0x54>
  44:	00000000 	nop
  48:	3c030000 	lui	v1,0x0
  4c:	10000001 	b	54 <EffectSsBubble_Init+0x54>
  50:	24630000 	addiu	v1,v1,0
  54:	0c000000 	jal	0 <EffectSsBubble_Init>
  58:	afa3002c 	sw	v1,44(sp)
  5c:	4614003c 	c.lt.s	$f0,$f20
  60:	8fa3002c 	lw	v1,44(sp)
  64:	3c0100ff 	lui	at,0xff
  68:	3421ffff 	ori	at,at,0xffff
  6c:	45000004 	bc1f	80 <EffectSsBubble_Init+0x80>
  70:	00037900 	sll	t7,v1,0x4
  74:	3c020000 	lui	v0,0x0
  78:	10000003 	b	88 <EffectSsBubble_Init+0x88>
  7c:	24420000 	addiu	v0,v0,0
  80:	3c020000 	lui	v0,0x0
  84:	24420000 	addiu	v0,v0,0
  88:	000fc702 	srl	t8,t7,0x1c
  8c:	0018c880 	sll	t9,t8,0x2
  90:	3c080000 	lui	t0,0x0
  94:	01194021 	addu	t0,t0,t9
  98:	8d080000 	lw	t0,0(t0)
  9c:	00417024 	and	t6,v0,at
  a0:	3c018000 	lui	at,0x8000
  a4:	01c84821 	addu	t1,t6,t0
  a8:	01215021 	addu	t2,t1,at
  ac:	0c000000 	jal	0 <EffectSsBubble_Init>
  b0:	ae0a0038 	sw	t2,56(s0)
  b4:	46140101 	sub.s	$f4,$f0,$f20
  b8:	c6260014 	lwc1	$f6,20(s1)
  bc:	c62a0000 	lwc1	$f10,0(s1)
  c0:	46062202 	mul.s	$f8,$f4,$f6
  c4:	460a4400 	add.s	$f16,$f8,$f10
  c8:	0c000000 	jal	0 <EffectSsBubble_Init>
  cc:	e6100000 	swc1	$f16,0(s0)
  d0:	46140481 	sub.s	$f18,$f0,$f20
  d4:	c6240010 	lwc1	$f4,16(s1)
  d8:	c628000c 	lwc1	$f8,12(s1)
  dc:	c6300004 	lwc1	$f16,4(s1)
  e0:	46049182 	mul.s	$f6,$f18,$f4
  e4:	46083280 	add.s	$f10,$f6,$f8
  e8:	46105480 	add.s	$f18,$f10,$f16
  ec:	0c000000 	jal	0 <EffectSsBubble_Init>
  f0:	e6120004 	swc1	$f18,4(s0)
  f4:	46140101 	sub.s	$f4,$f0,$f20
  f8:	c6260014 	lwc1	$f6,20(s1)
  fc:	c62a0008 	lwc1	$f10,8(s1)
 100:	2604002c 	addiu	a0,s0,44
 104:	46062202 	mul.s	$f8,$f4,$f6
 108:	02002825 	move	a1,s0
 10c:	460a4400 	add.s	$f16,$f8,$f10
 110:	0c000000 	jal	0 <EffectSsBubble_Init>
 114:	e6100008 	swc1	$f16,8(s0)
 118:	240b0001 	li	t3,1
 11c:	0c000000 	jal	0 <EffectSsBubble_Init>
 120:	a60b005c 	sh	t3,92(s0)
 124:	46140482 	mul.s	$f18,$f0,$f20
 128:	3c013f80 	lui	at,0x3f80
 12c:	44812000 	mtc1	at,$f4
 130:	c6280018 	lwc1	$f8,24(s1)
 134:	3c0142c8 	lui	at,0x42c8
 138:	44818000 	mtc1	at,$f16
 13c:	3c0f0000 	lui	t7,0x0
 140:	46049180 	add.s	$f6,$f18,$f4
 144:	3c180000 	lui	t8,0x0
 148:	25ef0000 	addiu	t7,t7,0
 14c:	27180000 	addiu	t8,t8,0
 150:	46083282 	mul.s	$f10,$f6,$f8
 154:	ae0f0028 	sw	t7,40(s0)
 158:	ae180024 	sw	t8,36(s0)
 15c:	24020001 	li	v0,1
 160:	46105482 	mul.s	$f18,$f10,$f16
 164:	4600910d 	trunc.w.s	$f4,$f18
 168:	440d2000 	mfc1	t5,$f4
 16c:	00000000 	nop
 170:	a60d0040 	sh	t5,64(s0)
 174:	8fbf0024 	lw	ra,36(sp)
 178:	8fb10020 	lw	s1,32(sp)
 17c:	8fb0001c 	lw	s0,28(sp)
 180:	d7b40010 	ldc1	$f20,16(sp)
 184:	03e00008 	jr	ra
 188:	27bd0038 	addiu	sp,sp,56

0000018c <EffectSsBubble_Draw>:
 18c:	27bdffa8 	addiu	sp,sp,-88
 190:	afbf001c 	sw	ra,28(sp)
 194:	afb10018 	sw	s1,24(sp)
 198:	afb00014 	sw	s0,20(sp)
 19c:	afa40058 	sw	a0,88(sp)
 1a0:	afa5005c 	sw	a1,92(sp)
 1a4:	84cf0040 	lh	t7,64(a2)
 1a8:	3c0142c8 	lui	at,0x42c8
 1ac:	44814000 	mtc1	at,$f8
 1b0:	448f2000 	mtc1	t7,$f4
 1b4:	8c900000 	lw	s0,0(a0)
 1b8:	00c08825 	move	s1,a2
 1bc:	468021a0 	cvt.s.w	$f6,$f4
 1c0:	3c060000 	lui	a2,0x0
 1c4:	24c60000 	addiu	a2,a2,0
 1c8:	27a4003c 	addiu	a0,sp,60
 1cc:	2407009a 	li	a3,154
 1d0:	02002825 	move	a1,s0
 1d4:	46083283 	div.s	$f10,$f6,$f8
 1d8:	0c000000 	jal	0 <EffectSsBubble_Init>
 1dc:	e7aa0050 	swc1	$f10,80(sp)
 1e0:	c62c0000 	lwc1	$f12,0(s1)
 1e4:	c62e0004 	lwc1	$f14,4(s1)
 1e8:	8e260008 	lw	a2,8(s1)
 1ec:	0c000000 	jal	0 <EffectSsBubble_Init>
 1f0:	00003825 	move	a3,zero
 1f4:	c7ac0050 	lwc1	$f12,80(sp)
 1f8:	24070001 	li	a3,1
 1fc:	44066000 	mfc1	a2,$f12
 200:	0c000000 	jal	0 <EffectSsBubble_Init>
 204:	46006386 	mov.s	$f14,$f12
 208:	8e0202c0 	lw	v0,704(s0)
 20c:	3c19da38 	lui	t9,0xda38
 210:	37390003 	ori	t9,t9,0x3
 214:	24580008 	addiu	t8,v0,8
 218:	ae1802c0 	sw	t8,704(s0)
 21c:	3c050000 	lui	a1,0x0
 220:	ac590000 	sw	t9,0(v0)
 224:	24a50018 	addiu	a1,a1,24
 228:	02002025 	move	a0,s0
 22c:	240600a7 	li	a2,167
 230:	0c000000 	jal	0 <EffectSsBubble_Init>
 234:	afa20038 	sw	v0,56(sp)
 238:	8fa30038 	lw	v1,56(sp)
 23c:	02002025 	move	a0,s0
 240:	0c000000 	jal	0 <EffectSsBubble_Init>
 244:	ac620004 	sw	v0,4(v1)
 248:	8e0202c0 	lw	v0,704(s0)
 24c:	3c09fa00 	lui	t1,0xfa00
 250:	240affff 	li	t2,-1
 254:	24480008 	addiu	t0,v0,8
 258:	ae0802c0 	sw	t0,704(s0)
 25c:	ac4a0004 	sw	t2,4(v0)
 260:	ac490000 	sw	t1,0(v0)
 264:	8e0202c0 	lw	v0,704(s0)
 268:	3c0d9696 	lui	t5,0x9696
 26c:	35ad9600 	ori	t5,t5,0x9600
 270:	244b0008 	addiu	t3,v0,8
 274:	ae0b02c0 	sw	t3,704(s0)
 278:	3c0cfb00 	lui	t4,0xfb00
 27c:	ac4c0000 	sw	t4,0(v0)
 280:	ac4d0004 	sw	t5,4(v0)
 284:	8e0202c0 	lw	v0,704(s0)
 288:	3c0fdb06 	lui	t7,0xdb06
 28c:	35ef0020 	ori	t7,t7,0x20
 290:	244e0008 	addiu	t6,v0,8
 294:	ae0e02c0 	sw	t6,704(s0)
 298:	ac4f0000 	sw	t7,0(v0)
 29c:	8e380038 	lw	t8,56(s1)
 2a0:	3c040000 	lui	a0,0x0
 2a4:	24840000 	addiu	a0,a0,0
 2a8:	ac580004 	sw	t8,4(v0)
 2ac:	8e0202c0 	lw	v0,704(s0)
 2b0:	00044900 	sll	t1,a0,0x4
 2b4:	00095702 	srl	t2,t1,0x1c
 2b8:	24590008 	addiu	t9,v0,8
 2bc:	ae1902c0 	sw	t9,704(s0)
 2c0:	000a5880 	sll	t3,t2,0x2
 2c4:	3c0c0000 	lui	t4,0x0
 2c8:	3c08de00 	lui	t0,0xde00
 2cc:	018b6021 	addu	t4,t4,t3
 2d0:	3c0100ff 	lui	at,0xff
 2d4:	ac480000 	sw	t0,0(v0)
 2d8:	8d8c0000 	lw	t4,0(t4)
 2dc:	3421ffff 	ori	at,at,0xffff
 2e0:	00816824 	and	t5,a0,at
 2e4:	3c018000 	lui	at,0x8000
 2e8:	018d7021 	addu	t6,t4,t5
 2ec:	01c17821 	addu	t7,t6,at
 2f0:	3c060000 	lui	a2,0x0
 2f4:	24c60030 	addiu	a2,a2,48
 2f8:	27a4003c 	addiu	a0,sp,60
 2fc:	02002825 	move	a1,s0
 300:	240700b3 	li	a3,179
 304:	0c000000 	jal	0 <EffectSsBubble_Init>
 308:	ac4f0004 	sw	t7,4(v0)
 30c:	8fbf001c 	lw	ra,28(sp)
 310:	8fb00014 	lw	s0,20(sp)
 314:	8fb10018 	lw	s1,24(sp)
 318:	03e00008 	jr	ra
 31c:	27bd0058 	addiu	sp,sp,88

00000320 <EffectSsBubble_Update>:
 320:	27bdffc0 	addiu	sp,sp,-64
 324:	afbf0024 	sw	ra,36(sp)
 328:	afb00020 	sw	s0,32(sp)
 32c:	afa50044 	sw	a1,68(sp)
 330:	c4c40004 	lwc1	$f4,4(a2)
 334:	00c08025 	move	s0,a2
 338:	27ae0038 	addiu	t6,sp,56
 33c:	e7a40038 	swc1	$f4,56(sp)
 340:	8e070008 	lw	a3,8(s0)
 344:	8cc60000 	lw	a2,0(a2)
 348:	27af003c 	addiu	t7,sp,60
 34c:	afaf0014 	sw	t7,20(sp)
 350:	afa40040 	sw	a0,64(sp)
 354:	afae0010 	sw	t6,16(sp)
 358:	0c000000 	jal	0 <EffectSsBubble_Init>
 35c:	248507c0 	addiu	a1,a0,1984
 360:	14400004 	bnez	v0,374 <EffectSsBubble_Update+0x54>
 364:	8fa40040 	lw	a0,64(sp)
 368:	2418ffff 	li	t8,-1
 36c:	10000033 	b	43c <EffectSsBubble_Update+0x11c>
 370:	a618005c 	sh	t8,92(s0)
 374:	c7a60038 	lwc1	$f6,56(sp)
 378:	c6080004 	lwc1	$f8,4(s0)
 37c:	27a5002c 	addiu	a1,sp,44
 380:	00003025 	move	a2,zero
 384:	4608303c 	c.lt.s	$f6,$f8
 388:	00000000 	nop
 38c:	4502000d 	bc1fl	3c4 <EffectSsBubble_Update+0xa4>
 390:	8608005c 	lh	t0,92(s0)
 394:	c60a0000 	lwc1	$f10,0(s0)
 398:	e7a60030 	swc1	$f6,48(sp)
 39c:	24070050 	li	a3,80
 3a0:	e7aa002c 	swc1	$f10,44(sp)
 3a4:	c6100008 	lwc1	$f16,8(s0)
 3a8:	afa00010 	sw	zero,16(sp)
 3ac:	0c000000 	jal	0 <EffectSsBubble_Init>
 3b0:	e7b00034 	swc1	$f16,52(sp)
 3b4:	2419ffff 	li	t9,-1
 3b8:	10000020 	b	43c <EffectSsBubble_Update+0x11c>
 3bc:	a619005c 	sh	t9,92(s0)
 3c0:	8608005c 	lh	t0,92(s0)
 3c4:	25090001 	addiu	t1,t0,1
 3c8:	0c000000 	jal	0 <EffectSsBubble_Init>
 3cc:	a609005c 	sh	t1,92(s0)
 3d0:	3c013f00 	lui	at,0x3f00
 3d4:	44819000 	mtc1	at,$f18
 3d8:	3c013e80 	lui	at,0x3e80
 3dc:	44814000 	mtc1	at,$f8
 3e0:	46120102 	mul.s	$f4,$f0,$f18
 3e4:	c606002c 	lwc1	$f6,44(s0)
 3e8:	46082281 	sub.s	$f10,$f4,$f8
 3ec:	46065400 	add.s	$f16,$f10,$f6
 3f0:	0c000000 	jal	0 <EffectSsBubble_Init>
 3f4:	e6100000 	swc1	$f16,0(s0)
 3f8:	3c010000 	lui	at,0x0
 3fc:	c4320048 	lwc1	$f18,72(at)
 400:	3c010000 	lui	at,0x0
 404:	c428004c 	lwc1	$f8,76(at)
 408:	46120101 	sub.s	$f4,$f0,$f18
 40c:	46082282 	mul.s	$f10,$f4,$f8
 410:	0c000000 	jal	0 <EffectSsBubble_Init>
 414:	e60a001c 	swc1	$f10,28(s0)
 418:	3c013f00 	lui	at,0x3f00
 41c:	44813000 	mtc1	at,$f6
 420:	3c013e80 	lui	at,0x3e80
 424:	44819000 	mtc1	at,$f18
 428:	46060402 	mul.s	$f16,$f0,$f6
 42c:	c6080034 	lwc1	$f8,52(s0)
 430:	46128101 	sub.s	$f4,$f16,$f18
 434:	46082280 	add.s	$f10,$f4,$f8
 438:	e60a0008 	swc1	$f10,8(s0)
 43c:	8fbf0024 	lw	ra,36(sp)
 440:	8fb00020 	lw	s0,32(sp)
 444:	27bd0040 	addiu	sp,sp,64
 448:	03e00008 	jr	ra
 44c:	00000000 	nop
