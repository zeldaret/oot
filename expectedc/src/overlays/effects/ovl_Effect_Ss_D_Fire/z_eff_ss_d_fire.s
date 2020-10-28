
build/src/overlays/effects/ovl_Effect_Ss_D_Fire/z_eff_ss_d_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsDFire_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	3c010001 	lui	at,0x1
   8:	afbf0014 	sw	ra,20(sp)
   c:	afa40018 	sw	a0,24(sp)
  10:	afa5001c 	sw	a1,28(sp)
  14:	342117a4 	ori	at,at,0x17a4
  18:	00812021 	addu	a0,a0,at
  1c:	2405000c 	li	a1,12
  20:	afa60020 	sw	a2,32(sp)
  24:	0c000000 	jal	0 <EffectSsDFire_Init>
  28:	afa70024 	sw	a3,36(sp)
  2c:	8fa60020 	lw	a2,32(sp)
  30:	04400040 	bltz	v0,134 <EffectSsDFire_Init+0x134>
  34:	8fa70024 	lw	a3,36(sp)
  38:	8cef0000 	lw	t7,0(a3)
  3c:	3c030000 	lui	v1,0x0
  40:	24630000 	addiu	v1,v1,0
  44:	accf0000 	sw	t7,0(a2)
  48:	8cee0004 	lw	t6,4(a3)
  4c:	00035100 	sll	t2,v1,0x4
  50:	000a5f02 	srl	t3,t2,0x1c
  54:	acce0004 	sw	t6,4(a2)
  58:	8cef0008 	lw	t7,8(a3)
  5c:	000b6080 	sll	t4,t3,0x2
  60:	3c0d0000 	lui	t5,0x0
  64:	accf0008 	sw	t7,8(a2)
  68:	8cf9000c 	lw	t9,12(a3)
  6c:	01ac6821 	addu	t5,t5,t4
  70:	3c0100ff 	lui	at,0xff
  74:	acd9000c 	sw	t9,12(a2)
  78:	8cf80010 	lw	t8,16(a3)
  7c:	3421ffff 	ori	at,at,0xffff
  80:	00617024 	and	t6,v1,at
  84:	acd80010 	sw	t8,16(a2)
  88:	8cf90014 	lw	t9,20(a3)
  8c:	3c018000 	lui	at,0x8000
  90:	3c0a0000 	lui	t2,0x0
  94:	acd90014 	sw	t9,20(a2)
  98:	8ce90018 	lw	t1,24(a3)
  9c:	3c0b0000 	lui	t3,0x0
  a0:	254a0000 	addiu	t2,t2,0
  a4:	acc90018 	sw	t1,24(a2)
  a8:	8ce8001c 	lw	t0,28(a3)
  ac:	256b0000 	addiu	t3,t3,0
  b0:	240300ff 	li	v1,255
  b4:	acc8001c 	sw	t0,28(a2)
  b8:	8ce90020 	lw	t1,32(a3)
  bc:	acc90020 	sw	t1,32(a2)
  c0:	8dad0000 	lw	t5,0(t5)
  c4:	01ae7821 	addu	t7,t5,t6
  c8:	01e1c021 	addu	t8,t7,at
  cc:	acd80038 	sw	t8,56(a2)
  d0:	8cf9002c 	lw	t9,44(a3)
  d4:	a4d9005c 	sh	t9,92(a2)
  d8:	84e80024 	lh	t0,36(a3)
  dc:	a4c80040 	sh	t0,64(a2)
  e0:	84e90026 	lh	t1,38(a3)
  e4:	a4c00056 	sh	zero,86(a2)
  e8:	a4c20054 	sh	v0,84(a2)
  ec:	acca0028 	sw	t2,40(a2)
  f0:	accb0024 	sw	t3,36(a2)
  f4:	a4c90052 	sh	t1,82(a2)
  f8:	8fac0018 	lw	t4,24(sp)
  fc:	24080032 	li	t0,50
 100:	24020001 	li	v0,1
 104:	8d8d009c 	lw	t5,156(t4)
 108:	a4c30044 	sh	v1,68(a2)
 10c:	a4c30046 	sh	v1,70(a2)
 110:	31b80003 	andi	t8,t5,0x3
 114:	3b190003 	xori	t9,t8,0x3
 118:	a4d90042 	sh	t9,66(a2)
 11c:	a4c80048 	sh	t0,72(a2)
 120:	84e90028 	lh	t1,40(a3)
 124:	a4c9004a 	sh	t1,74(a2)
 128:	84ea002a 	lh	t2,42(a3)
 12c:	10000002 	b	138 <EffectSsDFire_Init+0x138>
 130:	a4ca004c 	sh	t2,76(a2)
 134:	00001025 	move	v0,zero
 138:	8fbf0014 	lw	ra,20(sp)
 13c:	27bd0018 	addiu	sp,sp,24
 140:	03e00008 	jr	ra
 144:	00000000 	nop

00000148 <EffectSsDFire_Draw>:
 148:	27bdfe98 	addiu	sp,sp,-360
 14c:	afbf001c 	sw	ra,28(sp)
 150:	afb10018 	sw	s1,24(sp)
 154:	afb00014 	sw	s0,20(sp)
 158:	afa40168 	sw	a0,360(sp)
 15c:	afa5016c 	sw	a1,364(sp)
 160:	84cf0054 	lh	t7,84(a2)
 164:	3c090001 	lui	t1,0x1
 168:	8c900000 	lw	s0,0(a0)
 16c:	000fc100 	sll	t8,t7,0x4
 170:	030fc021 	addu	t8,t8,t7
 174:	0018c080 	sll	t8,t8,0x2
 178:	0098c821 	addu	t9,a0,t8
 17c:	01394821 	addu	t1,t1,t9
 180:	8d2917b4 	lw	t1,6068(t1)
 184:	00c08825 	move	s1,a2
 188:	3c060000 	lui	a2,0x0
 18c:	24c60000 	addiu	a2,a2,0
 190:	27a40040 	addiu	a0,sp,64
 194:	24070114 	li	a3,276
 198:	02002825 	move	a1,s0
 19c:	0c000000 	jal	0 <EffectSsDFire_Init>
 1a0:	afa9005c 	sw	t1,92(sp)
 1a4:	8fa40168 	lw	a0,360(sp)
 1a8:	3c010001 	lui	at,0x1
 1ac:	342117a4 	ori	at,at,0x17a4
 1b0:	2405000c 	li	a1,12
 1b4:	0c000000 	jal	0 <EffectSsDFire_Init>
 1b8:	00812021 	addu	a0,a0,at
 1bc:	04400074 	bltz	v0,390 <EffectSsDFire_Draw+0x248>
 1c0:	8fa4005c 	lw	a0,92(sp)
 1c4:	3c018000 	lui	at,0x8000
 1c8:	00814021 	addu	t0,a0,at
 1cc:	3c010000 	lui	at,0x0
 1d0:	ac280018 	sw	t0,24(at)
 1d4:	8e0302d0 	lw	v1,720(s0)
 1d8:	3c0bdb06 	lui	t3,0xdb06
 1dc:	356b0018 	ori	t3,t3,0x18
 1e0:	246a0008 	addiu	t2,v1,8
 1e4:	ae0a02d0 	sw	t2,720(s0)
 1e8:	ac640004 	sw	a0,4(v1)
 1ec:	ac6b0000 	sw	t3,0(v1)
 1f0:	862c0040 	lh	t4,64(s1)
 1f4:	3c0142c8 	lui	at,0x42c8
 1f8:	44814000 	mtc1	at,$f8
 1fc:	448c2000 	mtc1	t4,$f4
 200:	8e270008 	lw	a3,8(s1)
 204:	8e260004 	lw	a2,4(s1)
 208:	468021a0 	cvt.s.w	$f6,$f4
 20c:	8e250000 	lw	a1,0(s1)
 210:	afa80024 	sw	t0,36(sp)
 214:	27a40124 	addiu	a0,sp,292
 218:	46083003 	div.s	$f0,$f6,$f8
 21c:	0c000000 	jal	0 <EffectSsDFire_Init>
 220:	e7a00054 	swc1	$f0,84(sp)
 224:	c7a00054 	lwc1	$f0,84(sp)
 228:	27a400e4 	addiu	a0,sp,228
 22c:	3c073f80 	lui	a3,0x3f80
 230:	44050000 	mfc1	a1,$f0
 234:	44060000 	mfc1	a2,$f0
 238:	0c000000 	jal	0 <EffectSsDFire_Init>
 23c:	00000000 	nop
 240:	8fa50168 	lw	a1,360(sp)
 244:	3c010001 	lui	at,0x1
 248:	34211da0 	ori	at,at,0x1da0
 24c:	27a40124 	addiu	a0,sp,292
 250:	27a60064 	addiu	a2,sp,100
 254:	0c000000 	jal	0 <EffectSsDFire_Init>
 258:	00a12821 	addu	a1,a1,at
 25c:	27a40064 	addiu	a0,sp,100
 260:	27a500e4 	addiu	a1,sp,228
 264:	0c000000 	jal	0 <EffectSsDFire_Init>
 268:	27a600a4 	addiu	a2,sp,164
 26c:	02002025 	move	a0,s0
 270:	0c000000 	jal	0 <EffectSsDFire_Init>
 274:	27a500a4 	addiu	a1,sp,164
 278:	10400045 	beqz	v0,390 <EffectSsDFire_Draw+0x248>
 27c:	3c0fda38 	lui	t7,0xda38
 280:	8e0302d0 	lw	v1,720(s0)
 284:	35ef0003 	ori	t7,t7,0x3
 288:	02002025 	move	a0,s0
 28c:	246d0008 	addiu	t5,v1,8
 290:	ae0d02d0 	sw	t5,720(s0)
 294:	ac620004 	sw	v0,4(v1)
 298:	0c000000 	jal	0 <EffectSsDFire_Init>
 29c:	ac6f0000 	sw	t7,0(v1)
 2a0:	8e0302d0 	lw	v1,720(s0)
 2a4:	3c18fb00 	lui	t8,0xfb00
 2a8:	3c19ff00 	lui	t9,0xff00
 2ac:	246e0008 	addiu	t6,v1,8
 2b0:	ae0e02d0 	sw	t6,720(s0)
 2b4:	ac790004 	sw	t9,4(v1)
 2b8:	ac780000 	sw	t8,0(v1)
 2bc:	8e0302d0 	lw	v1,720(s0)
 2c0:	3c0afa00 	lui	t2,0xfa00
 2c4:	3c050000 	lui	a1,0x0
 2c8:	24690008 	addiu	t1,v1,8
 2cc:	ae0902d0 	sw	t1,720(s0)
 2d0:	ac6a0000 	sw	t2,0(v1)
 2d4:	862f0044 	lh	t7,68(s1)
 2d8:	862b004a 	lh	t3,74(s1)
 2dc:	86390046 	lh	t9,70(s1)
 2e0:	862d0048 	lh	t5,72(s1)
 2e4:	000f7600 	sll	t6,t7,0x18
 2e8:	316c00ff 	andi	t4,t3,0xff
 2ec:	018ec025 	or	t8,t4,t6
 2f0:	332900ff 	andi	t1,t9,0xff
 2f4:	00095400 	sll	t2,t1,0x10
 2f8:	31af00ff 	andi	t7,t5,0xff
 2fc:	000f6200 	sll	t4,t7,0x8
 300:	030a5825 	or	t3,t8,t2
 304:	016c7025 	or	t6,t3,t4
 308:	ac6e0004 	sw	t6,4(v1)
 30c:	8fb90024 	lw	t9,36(sp)
 310:	24a50000 	addiu	a1,a1,0
 314:	3c18db06 	lui	t8,0xdb06
 318:	acb90018 	sw	t9,24(a1)
 31c:	8e0302d0 	lw	v1,720(s0)
 320:	37180020 	ori	t8,t8,0x20
 324:	3c040000 	lui	a0,0x0
 328:	24690008 	addiu	t1,v1,8
 32c:	ae0902d0 	sw	t1,720(s0)
 330:	ac780000 	sw	t8,0(v1)
 334:	862a0042 	lh	t2,66(s1)
 338:	3c0100ff 	lui	at,0xff
 33c:	3421ffff 	ori	at,at,0xffff
 340:	000a6880 	sll	t5,t2,0x2
 344:	008d2021 	addu	a0,a0,t5
 348:	8c840008 	lw	a0,8(a0)
 34c:	00045900 	sll	t3,a0,0x4
 350:	000b6702 	srl	t4,t3,0x1c
 354:	000c7080 	sll	t6,t4,0x2
 358:	00aec821 	addu	t9,a1,t6
 35c:	8f290000 	lw	t1,0(t9)
 360:	00817824 	and	t7,a0,at
 364:	3c018000 	lui	at,0x8000
 368:	01e9c021 	addu	t8,t7,t1
 36c:	03015021 	addu	t2,t8,at
 370:	ac6a0004 	sw	t2,4(v1)
 374:	8e0302d0 	lw	v1,720(s0)
 378:	3c0bde00 	lui	t3,0xde00
 37c:	246d0008 	addiu	t5,v1,8
 380:	ae0d02d0 	sw	t5,720(s0)
 384:	ac6b0000 	sw	t3,0(v1)
 388:	8e2c0038 	lw	t4,56(s1)
 38c:	ac6c0004 	sw	t4,4(v1)
 390:	3c060000 	lui	a2,0x0
 394:	24c60018 	addiu	a2,a2,24
 398:	27a40040 	addiu	a0,sp,64
 39c:	02002825 	move	a1,s0
 3a0:	0c000000 	jal	0 <EffectSsDFire_Init>
 3a4:	2407014a 	li	a3,330
 3a8:	8fbf001c 	lw	ra,28(sp)
 3ac:	8fb00014 	lw	s0,20(sp)
 3b0:	8fb10018 	lw	s1,24(sp)
 3b4:	03e00008 	jr	ra
 3b8:	27bd0168 	addiu	sp,sp,360

000003bc <EffectSsDFire_Update>:
 3bc:	afa40000 	sw	a0,0(sp)
 3c0:	afa50004 	sw	a1,4(sp)
 3c4:	84ce0042 	lh	t6,66(a2)
 3c8:	84c80040 	lh	t0,64(a2)
 3cc:	84c90052 	lh	t1,82(a2)
 3d0:	25cf0001 	addiu	t7,t6,1
 3d4:	a4cf0042 	sh	t7,66(a2)
 3d8:	84d80042 	lh	t8,66(a2)
 3dc:	84cc005c 	lh	t4,92(a2)
 3e0:	84cb004c 	lh	t3,76(a2)
 3e4:	01095021 	addu	t2,t0,t1
 3e8:	33190003 	andi	t9,t8,0x3
 3ec:	016c082a 	slt	at,t3,t4
 3f0:	a4d90042 	sh	t9,66(a2)
 3f4:	14200009 	bnez	at,41c <EffectSsDFire_Update+0x60>
 3f8:	a4ca0040 	sh	t2,64(a2)
 3fc:	84cd004a 	lh	t5,74(a2)
 400:	25aefffb 	addiu	t6,t5,-5
 404:	a4ce004a 	sh	t6,74(a2)
 408:	84cf004a 	lh	t7,74(a2)
 40c:	05e3000d 	bgezl	t7,444 <EffectSsDFire_Update+0x88>
 410:	c4c0001c 	lwc1	$f0,28(a2)
 414:	1000000a 	b	440 <EffectSsDFire_Update+0x84>
 418:	a4c0004a 	sh	zero,74(a2)
 41c:	84d8004a 	lh	t8,74(a2)
 420:	240900ff 	li	t1,255
 424:	2719000f 	addiu	t9,t8,15
 428:	a4d9004a 	sh	t9,74(a2)
 42c:	84c8004a 	lh	t0,74(a2)
 430:	29010100 	slti	at,t0,256
 434:	54200003 	bnezl	at,444 <EffectSsDFire_Update+0x88>
 438:	c4c0001c 	lwc1	$f0,28(a2)
 43c:	a4c9004a 	sh	t1,74(a2)
 440:	c4c0001c 	lwc1	$f0,28(a2)
 444:	44802000 	mtc1	zero,$f4
 448:	00000000 	nop
 44c:	4604003c 	c.lt.s	$f0,$f4
 450:	00000000 	nop
 454:	4502000b 	bc1fl	484 <EffectSsDFire_Update+0xc8>
 458:	84cb005c 	lh	t3,92(a2)
 45c:	84ca0056 	lh	t2,86(a2)
 460:	3c010000 	lui	at,0x0
 464:	c42a0030 	lwc1	$f10,48(at)
 468:	448a3000 	mtc1	t2,$f6
 46c:	00000000 	nop
 470:	46803220 	cvt.s.w	$f8,$f6
 474:	460a4402 	mul.s	$f16,$f8,$f10
 478:	46100480 	add.s	$f18,$f0,$f16
 47c:	e4d2001c 	swc1	$f18,28(a2)
 480:	84cb005c 	lh	t3,92(a2)
 484:	1d600003 	bgtz	t3,494 <EffectSsDFire_Update+0xd8>
 488:	00000000 	nop
 48c:	84cc0056 	lh	t4,86(a2)
 490:	a4cc0056 	sh	t4,86(a2)
 494:	03e00008 	jr	ra
 498:	00000000 	nop
 49c:	00000000 	nop
