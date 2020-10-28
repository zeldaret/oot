
build/src/overlays/effects/ovl_Effect_Ss_G_Magma2/z_eff_ss_g_magma2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsGMagma2_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	3c010001 	lui	at,0x1
   8:	afa40038 	sw	a0,56(sp)
   c:	342117a4 	ori	at,at,0x17a4
  10:	afbf0014 	sw	ra,20(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	00812021 	addu	a0,a0,at
  1c:	afa4001c 	sw	a0,28(sp)
  20:	24050019 	li	a1,25
  24:	afa60040 	sw	a2,64(sp)
  28:	0c000000 	jal	0 <EffectSsGMagma2_Init>
  2c:	afa70044 	sw	a3,68(sp)
  30:	8fa4001c 	lw	a0,28(sp)
  34:	8fa60040 	lw	a2,64(sp)
  38:	8fa70044 	lw	a3,68(sp)
  3c:	0440005d 	bltz	v0,1b4 <EffectSsGMagma2_Init+0x1b4>
  40:	00402825 	move	a1,v0
  44:	afa20034 	sw	v0,52(sp)
  48:	afa60040 	sw	a2,64(sp)
  4c:	0c000000 	jal	0 <EffectSsGMagma2_Init>
  50:	afa70044 	sw	a3,68(sp)
  54:	8fa50034 	lw	a1,52(sp)
  58:	8fa60040 	lw	a2,64(sp)
  5c:	10400055 	beqz	v0,1b4 <EffectSsGMagma2_Init+0x1b4>
  60:	8fa70044 	lw	a3,68(sp)
  64:	3c0e0000 	lui	t6,0x0
  68:	25ce003c 	addiu	t6,t6,60
  6c:	8dd80000 	lw	t8,0(t6)
  70:	27a30024 	addiu	v1,sp,36
  74:	00054100 	sll	t0,a1,0x4
  78:	ac780000 	sw	t8,0(v1)
  7c:	8dcf0004 	lw	t7,4(t6)
  80:	01054021 	addu	t0,t0,a1
  84:	00084080 	sll	t0,t0,0x2
  88:	ac6f0004 	sw	t7,4(v1)
  8c:	8dd80008 	lw	t8,8(t6)
  90:	3c0a0001 	lui	t2,0x1
  94:	3c040000 	lui	a0,0x0
  98:	ac780008 	sw	t8,8(v1)
  9c:	8fb90038 	lw	t9,56(sp)
  a0:	3c018000 	lui	at,0x8000
  a4:	24840000 	addiu	a0,a0,0
  a8:	03284821 	addu	t1,t9,t0
  ac:	01495021 	addu	t2,t2,t1
  b0:	8d4a17b4 	lw	t2,6068(t2)
  b4:	3c020000 	lui	v0,0x0
  b8:	24420000 	addiu	v0,v0,0
  bc:	01415821 	addu	t3,t2,at
  c0:	ac8b0018 	sw	t3,24(a0)
  c4:	a4c50054 	sh	a1,84(a2)
  c8:	8ced0000 	lw	t5,0(a3)
  cc:	00025900 	sll	t3,v0,0x4
  d0:	3c090000 	lui	t1,0x0
  d4:	accd0000 	sw	t5,0(a2)
  d8:	8cec0004 	lw	t4,4(a3)
  dc:	3c0a0000 	lui	t2,0x0
  e0:	24080064 	li	t0,100
  e4:	accc0004 	sw	t4,4(a2)
  e8:	8ced0008 	lw	t5,8(a3)
  ec:	000b6702 	srl	t4,t3,0x1c
  f0:	25290000 	addiu	t1,t1,0
  f4:	accd0008 	sw	t5,8(a2)
  f8:	8c6f0000 	lw	t7,0(v1)
  fc:	254a0000 	addiu	t2,t2,0
 100:	000c6880 	sll	t5,t4,0x2
 104:	accf000c 	sw	t7,12(a2)
 108:	8c6e0004 	lw	t6,4(v1)
 10c:	3c0100ff 	lui	at,0xff
 110:	3421ffff 	ori	at,at,0xffff
 114:	acce0010 	sw	t6,16(a2)
 118:	8c6f0008 	lw	t7,8(v1)
 11c:	008d7021 	addu	t6,a0,t5
 120:	accf0014 	sw	t7,20(a2)
 124:	8c790000 	lw	t9,0(v1)
 128:	acd90018 	sw	t9,24(a2)
 12c:	8c780004 	lw	t8,4(v1)
 130:	acd8001c 	sw	t8,28(a2)
 134:	8c790008 	lw	t9,8(v1)
 138:	a4c8005c 	sh	t0,92(a2)
 13c:	acc90028 	sw	t1,40(a2)
 140:	acca0024 	sw	t2,36(a2)
 144:	acd90020 	sw	t9,32(a2)
 148:	8dcf0000 	lw	t7,0(t6)
 14c:	0041c024 	and	t8,v0,at
 150:	3c018000 	lui	at,0x8000
 154:	01f8c821 	addu	t9,t7,t8
 158:	03214021 	addu	t0,t9,at
 15c:	acc80038 	sw	t0,56(a2)
 160:	a4c0004c 	sh	zero,76(a2)
 164:	84e90016 	lh	t1,22(a3)
 168:	24020001 	li	v0,1
 16c:	a4c90052 	sh	t1,82(a2)
 170:	84ea0014 	lh	t2,20(a3)
 174:	a4ca0050 	sh	t2,80(a2)
 178:	84eb0018 	lh	t3,24(a3)
 17c:	a4cb0056 	sh	t3,86(a2)
 180:	90ec000c 	lbu	t4,12(a3)
 184:	a4cc0040 	sh	t4,64(a2)
 188:	90ed000d 	lbu	t5,13(a3)
 18c:	a4cd0042 	sh	t5,66(a2)
 190:	90ee000f 	lbu	t6,15(a3)
 194:	a4ce0044 	sh	t6,68(a2)
 198:	90ef0010 	lbu	t7,16(a3)
 19c:	a4cf0046 	sh	t7,70(a2)
 1a0:	90f80011 	lbu	t8,17(a3)
 1a4:	a4d80048 	sh	t8,72(a2)
 1a8:	90f90013 	lbu	t9,19(a3)
 1ac:	10000002 	b	1b8 <EffectSsGMagma2_Init+0x1b8>
 1b0:	a4d9004a 	sh	t9,74(a2)
 1b4:	00001025 	move	v0,zero
 1b8:	8fbf0014 	lw	ra,20(sp)
 1bc:	27bd0038 	addiu	sp,sp,56
 1c0:	03e00008 	jr	ra
 1c4:	00000000 	nop

000001c8 <EffectSsGMagma2_Draw>:
 1c8:	27bdffa0 	addiu	sp,sp,-96
 1cc:	afbf001c 	sw	ra,28(sp)
 1d0:	afb10018 	sw	s1,24(sp)
 1d4:	afb00014 	sw	s0,20(sp)
 1d8:	afa40060 	sw	a0,96(sp)
 1dc:	afa50064 	sw	a1,100(sp)
 1e0:	84cf0056 	lh	t7,86(a2)
 1e4:	3c0142c8 	lui	at,0x42c8
 1e8:	44814000 	mtc1	at,$f8
 1ec:	448f2000 	mtc1	t7,$f4
 1f0:	8c900000 	lw	s0,0(a0)
 1f4:	3c090001 	lui	t1,0x1
 1f8:	468021a0 	cvt.s.w	$f6,$f4
 1fc:	00c08825 	move	s1,a2
 200:	24070105 	li	a3,261
 204:	02002825 	move	a1,s0
 208:	46083283 	div.s	$f10,$f6,$f8
 20c:	e7aa0054 	swc1	$f10,84(sp)
 210:	84d80054 	lh	t8,84(a2)
 214:	3c060000 	lui	a2,0x0
 218:	24c60000 	addiu	a2,a2,0
 21c:	0018c900 	sll	t9,t8,0x4
 220:	0338c821 	addu	t9,t9,t8
 224:	0019c880 	sll	t9,t9,0x2
 228:	00994021 	addu	t0,a0,t9
 22c:	01284821 	addu	t1,t1,t0
 230:	8d2917b4 	lw	t1,6068(t1)
 234:	27a4003c 	addiu	a0,sp,60
 238:	0c000000 	jal	0 <EffectSsGMagma2_Init>
 23c:	afa90050 	sw	t1,80(sp)
 240:	c62c0000 	lwc1	$f12,0(s1)
 244:	c62e0004 	lwc1	$f14,4(s1)
 248:	8e260008 	lw	a2,8(s1)
 24c:	0c000000 	jal	0 <EffectSsGMagma2_Init>
 250:	00003825 	move	a3,zero
 254:	c7ac0054 	lwc1	$f12,84(sp)
 258:	24070001 	li	a3,1
 25c:	44066000 	mfc1	a2,$f12
 260:	0c000000 	jal	0 <EffectSsGMagma2_Init>
 264:	46006386 	mov.s	$f14,$f12
 268:	8fa40050 	lw	a0,80(sp)
 26c:	3c018000 	lui	at,0x8000
 270:	3c0cdb06 	lui	t4,0xdb06
 274:	00815021 	addu	t2,a0,at
 278:	3c010000 	lui	at,0x0
 27c:	ac2a0018 	sw	t2,24(at)
 280:	8e0202d0 	lw	v0,720(s0)
 284:	358c0018 	ori	t4,t4,0x18
 288:	3c0fda38 	lui	t7,0xda38
 28c:	244b0008 	addiu	t3,v0,8
 290:	ae0b02d0 	sw	t3,720(s0)
 294:	ac4c0000 	sw	t4,0(v0)
 298:	ac440004 	sw	a0,4(v0)
 29c:	8e0202d0 	lw	v0,720(s0)
 2a0:	35ef0003 	ori	t7,t7,0x3
 2a4:	3c050000 	lui	a1,0x0
 2a8:	244d0008 	addiu	t5,v0,8
 2ac:	ae0d02d0 	sw	t5,720(s0)
 2b0:	ac4f0000 	sw	t7,0(v0)
 2b4:	24a50018 	addiu	a1,a1,24
 2b8:	02002025 	move	a0,s0
 2bc:	2406011a 	li	a2,282
 2c0:	0c000000 	jal	0 <EffectSsGMagma2_Init>
 2c4:	afa20034 	sw	v0,52(sp)
 2c8:	8fa30034 	lw	v1,52(sp)
 2cc:	00002825 	move	a1,zero
 2d0:	ac620004 	sw	v0,4(v1)
 2d4:	86380052 	lh	t8,82(s1)
 2d8:	17000006 	bnez	t8,2f4 <EffectSsGMagma2_Draw+0x12c>
 2dc:	00000000 	nop
 2e0:	8e0402d0 	lw	a0,720(s0)
 2e4:	0c000000 	jal	0 <EffectSsGMagma2_Init>
 2e8:	2405003d 	li	a1,61
 2ec:	10000004 	b	300 <EffectSsGMagma2_Draw+0x138>
 2f0:	ae0202d0 	sw	v0,720(s0)
 2f4:	0c000000 	jal	0 <EffectSsGMagma2_Init>
 2f8:	8e0402d0 	lw	a0,720(s0)
 2fc:	ae0202d0 	sw	v0,720(s0)
 300:	8e0202d0 	lw	v0,720(s0)
 304:	3c19fa00 	lui	t9,0xfa00
 308:	3c0afb00 	lui	t2,0xfb00
 30c:	244e0008 	addiu	t6,v0,8
 310:	ae0e02d0 	sw	t6,720(s0)
 314:	ac590000 	sw	t9,0(v0)
 318:	862f0042 	lh	t7,66(s1)
 31c:	862b0040 	lh	t3,64(s1)
 320:	86280044 	lh	t0,68(s1)
 324:	31f800ff 	andi	t8,t7,0xff
 328:	000b6600 	sll	t4,t3,0x18
 32c:	310900ff 	andi	t1,t0,0xff
 330:	012c6825 	or	t5,t1,t4
 334:	00187400 	sll	t6,t8,0x10
 338:	01aec825 	or	t9,t5,t6
 33c:	ac590004 	sw	t9,4(v0)
 340:	8e0202d0 	lw	v0,720(s0)
 344:	3c0cdb06 	lui	t4,0xdb06
 348:	358c0020 	ori	t4,t4,0x20
 34c:	24480008 	addiu	t0,v0,8
 350:	ae0802d0 	sw	t0,720(s0)
 354:	ac4a0000 	sw	t2,0(v0)
 358:	862e0048 	lh	t6,72(s1)
 35c:	862f0046 	lh	t7,70(s1)
 360:	862b004a 	lh	t3,74(s1)
 364:	31d900ff 	andi	t9,t6,0xff
 368:	000fc600 	sll	t8,t7,0x18
 36c:	316900ff 	andi	t1,t3,0xff
 370:	01386825 	or	t5,t1,t8
 374:	00194400 	sll	t0,t9,0x10
 378:	01a85025 	or	t2,t5,t0
 37c:	ac4a0004 	sw	t2,4(v0)
 380:	8e0202d0 	lw	v0,720(s0)
 384:	3c040000 	lui	a0,0x0
 388:	3c080000 	lui	t0,0x0
 38c:	244b0008 	addiu	t3,v0,8
 390:	ae0b02d0 	sw	t3,720(s0)
 394:	ac4c0000 	sw	t4,0(v0)
 398:	862f004c 	lh	t7,76(s1)
 39c:	3c0100ff 	lui	at,0xff
 3a0:	3421ffff 	ori	at,at,0xffff
 3a4:	000f4880 	sll	t1,t7,0x2
 3a8:	00892021 	addu	a0,a0,t1
 3ac:	8c840000 	lw	a0,0(a0)
 3b0:	3c0fde00 	lui	t7,0xde00
 3b4:	3c060000 	lui	a2,0x0
 3b8:	00047100 	sll	t6,a0,0x4
 3bc:	000ecf02 	srl	t9,t6,0x1c
 3c0:	00196880 	sll	t5,t9,0x2
 3c4:	010d4021 	addu	t0,t0,t5
 3c8:	8d080000 	lw	t0,0(t0)
 3cc:	0081c024 	and	t8,a0,at
 3d0:	3c018000 	lui	at,0x8000
 3d4:	03085021 	addu	t2,t8,t0
 3d8:	01415821 	addu	t3,t2,at
 3dc:	ac4b0004 	sw	t3,4(v0)
 3e0:	8e0202d0 	lw	v0,720(s0)
 3e4:	27a4003c 	addiu	a0,sp,60
 3e8:	24c60030 	addiu	a2,a2,48
 3ec:	244c0008 	addiu	t4,v0,8
 3f0:	ae0c02d0 	sw	t4,720(s0)
 3f4:	ac4f0000 	sw	t7,0(v0)
 3f8:	8e290038 	lw	t1,56(s1)
 3fc:	02002825 	move	a1,s0
 400:	24070137 	li	a3,311
 404:	0c000000 	jal	0 <EffectSsGMagma2_Init>
 408:	ac490004 	sw	t1,4(v0)
 40c:	8fbf001c 	lw	ra,28(sp)
 410:	8fb00014 	lw	s0,20(sp)
 414:	8fb10018 	lw	s1,24(sp)
 418:	03e00008 	jr	ra
 41c:	27bd0060 	addiu	sp,sp,96

00000420 <EffectSsGMagma2_Update>:
 420:	afa40000 	sw	a0,0(sp)
 424:	afa50004 	sw	a1,4(sp)
 428:	84ce004e 	lh	t6,78(a2)
 42c:	84cf0050 	lh	t7,80(a2)
 430:	01cfc021 	addu	t8,t6,t7
 434:	a4d8004e 	sh	t8,78(a2)
 438:	84c2004e 	lh	v0,78(a2)
 43c:	2841000a 	slti	at,v0,10
 440:	1420001c 	bnez	at,4b4 <EffectSsGMagma2_Update+0x94>
 444:	00000000 	nop
 448:	84c8004c 	lh	t0,76(a2)
 44c:	2459fff6 	addiu	t9,v0,-10
 450:	a4d9004e 	sh	t9,78(a2)
 454:	25090001 	addiu	t1,t0,1
 458:	a4c9004c 	sh	t1,76(a2)
 45c:	84ca004c 	lh	t2,76(a2)
 460:	2941000a 	slti	at,t2,10
 464:	54200003 	bnezl	at,474 <EffectSsGMagma2_Update+0x54>
 468:	84cb0052 	lh	t3,82(a2)
 46c:	a4c0005c 	sh	zero,92(a2)
 470:	84cb0052 	lh	t3,82(a2)
 474:	1560000f 	bnez	t3,4b4 <EffectSsGMagma2_Update+0x94>
 478:	00000000 	nop
 47c:	84cc0042 	lh	t4,66(a2)
 480:	258dffe6 	addiu	t5,t4,-26
 484:	a4cd0042 	sh	t5,66(a2)
 488:	84ce0042 	lh	t6,66(a2)
 48c:	5dc00003 	bgtzl	t6,49c <EffectSsGMagma2_Update+0x7c>
 490:	84cf0046 	lh	t7,70(a2)
 494:	a4c00042 	sh	zero,66(a2)
 498:	84cf0046 	lh	t7,70(a2)
 49c:	25f8ffe6 	addiu	t8,t7,-26
 4a0:	a4d80046 	sh	t8,70(a2)
 4a4:	84d90046 	lh	t9,70(a2)
 4a8:	1f200002 	bgtz	t9,4b4 <EffectSsGMagma2_Update+0x94>
 4ac:	00000000 	nop
 4b0:	a4c00046 	sh	zero,70(a2)
 4b4:	03e00008 	jr	ra
 4b8:	00000000 	nop
 4bc:	00000000 	nop
