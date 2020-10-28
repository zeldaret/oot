
build/src/overlays/effects/ovl_Effect_Ss_HitMark/z_eff_ss_hitmark.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsHitMark_Init>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	8cef0008 	lw	t7,8(a3)
   c:	3c020000 	lui	v0,0x0
  10:	24420000 	addiu	v0,v0,0
  14:	accf0000 	sw	t7,0(a2)
  18:	8cee000c 	lw	t6,12(a3)
  1c:	0002c100 	sll	t8,v0,0x4
  20:	0018cf02 	srl	t9,t8,0x1c
  24:	acce0004 	sw	t6,4(a2)
  28:	8cef0010 	lw	t7,16(a3)
  2c:	00194080 	sll	t0,t9,0x2
  30:	3c090000 	lui	t1,0x0
  34:	01284821 	addu	t1,t1,t0
  38:	3c0100ff 	lui	at,0xff
  3c:	accf0008 	sw	t7,8(a2)
  40:	8d290000 	lw	t1,0(t1)
  44:	3421ffff 	ori	at,at,0xffff
  48:	00415024 	and	t2,v0,at
  4c:	3c018000 	lui	at,0x8000
  50:	012a5821 	addu	t3,t1,t2
  54:	01616021 	addu	t4,t3,at
  58:	accc0038 	sw	t4,56(a2)
  5c:	8ced0000 	lw	t5,0(a3)
  60:	24010001 	li	at,1
  64:	3c180000 	lui	t8,0x0
  68:	15a10004 	bne	t5,at,7c <EffectSsHitMark_Init+0x7c>
  6c:	27180000 	addiu	t8,t8,0
  70:	240e0010 	li	t6,16
  74:	10000003 	b	84 <EffectSsHitMark_Init+0x84>
  78:	a4ce005c 	sh	t6,92(a2)
  7c:	240f0008 	li	t7,8
  80:	a4cf005c 	sh	t7,92(a2)
  84:	3c190000 	lui	t9,0x0
  88:	27390000 	addiu	t9,t9,0
  8c:	acd80028 	sw	t8,40(a2)
  90:	acd90024 	sw	t9,36(a2)
  94:	8ce20000 	lw	v0,0(a3)
  98:	a4c00040 	sh	zero,64(a2)
  9c:	8ce80000 	lw	t0,0(a3)
  a0:	00021080 	sll	v0,v0,0x2
  a4:	00024880 	sll	t1,v0,0x2
  a8:	3c0a0000 	lui	t2,0x0
  ac:	254a0000 	addiu	t2,t2,0
  b0:	01224823 	subu	t1,t1,v0
  b4:	012a1821 	addu	v1,t1,t2
  b8:	a4c80042 	sh	t0,66(a2)
  bc:	906b0000 	lbu	t3,0(v1)
  c0:	24020001 	li	v0,1
  c4:	a4cb0044 	sh	t3,68(a2)
  c8:	906c0001 	lbu	t4,1(v1)
  cc:	a4cc0046 	sh	t4,70(a2)
  d0:	906d0002 	lbu	t5,2(v1)
  d4:	a4cd0048 	sh	t5,72(a2)
  d8:	906e0003 	lbu	t6,3(v1)
  dc:	a4ce004a 	sh	t6,74(a2)
  e0:	906f0004 	lbu	t7,4(v1)
  e4:	a4cf004c 	sh	t7,76(a2)
  e8:	90780005 	lbu	t8,5(v1)
  ec:	a4d8004e 	sh	t8,78(a2)
  f0:	84f90004 	lh	t9,4(a3)
  f4:	03e00008 	jr	ra
  f8:	a4d90050 	sh	t9,80(a2)

000000fc <EffectSsHitMark_Draw>:
  fc:	27bdfea0 	addiu	sp,sp,-352
 100:	afb10018 	sw	s1,24(sp)
 104:	afbf001c 	sw	ra,28(sp)
 108:	afb00014 	sw	s0,20(sp)
 10c:	afa40160 	sw	a0,352(sp)
 110:	afa50164 	sw	a1,356(sp)
 114:	8c900000 	lw	s0,0(a0)
 118:	00c08825 	move	s1,a2
 11c:	3c060000 	lui	a2,0x0
 120:	24c60000 	addiu	a2,a2,0
 124:	27a4003c 	addiu	a0,sp,60
 128:	24070129 	li	a3,297
 12c:	0c000000 	jal	0 <EffectSsHitMark_Init>
 130:	02002825 	move	a1,s0
 134:	27a4011c 	addiu	a0,sp,284
 138:	8e250000 	lw	a1,0(s1)
 13c:	8e260004 	lw	a2,4(s1)
 140:	0c000000 	jal	0 <EffectSsHitMark_Init>
 144:	8e270008 	lw	a3,8(s1)
 148:	862f0050 	lh	t7,80(s1)
 14c:	3c0142c8 	lui	at,0x42c8
 150:	44814000 	mtc1	at,$f8
 154:	448f2000 	mtc1	t7,$f4
 158:	27a400dc 	addiu	a0,sp,220
 15c:	3c073f80 	lui	a3,0x3f80
 160:	468021a0 	cvt.s.w	$f6,$f4
 164:	46083003 	div.s	$f0,$f6,$f8
 168:	44050000 	mfc1	a1,$f0
 16c:	44060000 	mfc1	a2,$f0
 170:	0c000000 	jal	0 <EffectSsHitMark_Init>
 174:	00000000 	nop
 178:	8fa50160 	lw	a1,352(sp)
 17c:	3c010001 	lui	at,0x1
 180:	34211da0 	ori	at,at,0x1da0
 184:	27a4011c 	addiu	a0,sp,284
 188:	27a6005c 	addiu	a2,sp,92
 18c:	0c000000 	jal	0 <EffectSsHitMark_Init>
 190:	00a12821 	addu	a1,a1,at
 194:	27a4005c 	addiu	a0,sp,92
 198:	27a500dc 	addiu	a1,sp,220
 19c:	0c000000 	jal	0 <EffectSsHitMark_Init>
 1a0:	27a6009c 	addiu	a2,sp,156
 1a4:	8e0302d0 	lw	v1,720(s0)
 1a8:	3c19da38 	lui	t9,0xda38
 1ac:	3c080000 	lui	t0,0x0
 1b0:	24780008 	addiu	t8,v1,8
 1b4:	ae1802d0 	sw	t8,720(s0)
 1b8:	25080000 	addiu	t0,t0,0
 1bc:	37390003 	ori	t9,t9,0x3
 1c0:	02002025 	move	a0,s0
 1c4:	27a5009c 	addiu	a1,sp,156
 1c8:	ac790000 	sw	t9,0(v1)
 1cc:	0c000000 	jal	0 <EffectSsHitMark_Init>
 1d0:	ac680004 	sw	t0,4(v1)
 1d4:	1040004c 	beqz	v0,308 <EffectSsHitMark_Draw+0x20c>
 1d8:	3c0ada38 	lui	t2,0xda38
 1dc:	8e0302d0 	lw	v1,720(s0)
 1e0:	354a0003 	ori	t2,t2,0x3
 1e4:	3c0cdb06 	lui	t4,0xdb06
 1e8:	24690008 	addiu	t1,v1,8
 1ec:	ae0902d0 	sw	t1,720(s0)
 1f0:	ac620004 	sw	v0,4(v1)
 1f4:	ac6a0000 	sw	t2,0(v1)
 1f8:	8e0302d0 	lw	v1,720(s0)
 1fc:	358c0020 	ori	t4,t4,0x20
 200:	3c040000 	lui	a0,0x0
 204:	246b0008 	addiu	t3,v1,8
 208:	ae0b02d0 	sw	t3,720(s0)
 20c:	ac6c0000 	sw	t4,0(v1)
 210:	86380042 	lh	t8,66(s1)
 214:	862d0040 	lh	t5,64(s1)
 218:	3c0100ff 	lui	at,0xff
 21c:	0018c940 	sll	t9,t8,0x5
 220:	000d7080 	sll	t6,t5,0x2
 224:	01d94021 	addu	t0,t6,t9
 228:	00882021 	addu	a0,a0,t0
 22c:	8c840030 	lw	a0,48(a0)
 230:	3c0d0000 	lui	t5,0x0
 234:	3421ffff 	ori	at,at,0xffff
 238:	00045100 	sll	t2,a0,0x4
 23c:	000a5f02 	srl	t3,t2,0x1c
 240:	000b6080 	sll	t4,t3,0x2
 244:	01ac6821 	addu	t5,t5,t4
 248:	8dad0000 	lw	t5,0(t5)
 24c:	00814824 	and	t1,a0,at
 250:	3c018000 	lui	at,0x8000
 254:	012d7821 	addu	t7,t1,t5
 258:	01e1c021 	addu	t8,t7,at
 25c:	02002025 	move	a0,s0
 260:	0c000000 	jal	0 <EffectSsHitMark_Init>
 264:	ac780004 	sw	t8,4(v1)
 268:	8e0302d0 	lw	v1,720(s0)
 26c:	3c19fa00 	lui	t9,0xfa00
 270:	246e0008 	addiu	t6,v1,8
 274:	ae0e02d0 	sw	t6,720(s0)
 278:	ac790000 	sw	t9,0(v1)
 27c:	86280048 	lh	t0,72(s1)
 280:	86380046 	lh	t8,70(s1)
 284:	86290044 	lh	t1,68(s1)
 288:	310a00ff 	andi	t2,t0,0xff
 28c:	000a5a00 	sll	t3,t2,0x8
 290:	330e00ff 	andi	t6,t8,0xff
 294:	00096e00 	sll	t5,t1,0x18
 298:	016d7825 	or	t7,t3,t5
 29c:	000ecc00 	sll	t9,t6,0x10
 2a0:	01f94025 	or	t0,t7,t9
 2a4:	350a00ff 	ori	t2,t0,0xff
 2a8:	ac6a0004 	sw	t2,4(v1)
 2ac:	8e0302d0 	lw	v1,720(s0)
 2b0:	3c09fb00 	lui	t1,0xfb00
 2b4:	3c0ede00 	lui	t6,0xde00
 2b8:	246c0008 	addiu	t4,v1,8
 2bc:	ae0c02d0 	sw	t4,720(s0)
 2c0:	ac690000 	sw	t1,0(v1)
 2c4:	862b004e 	lh	t3,78(s1)
 2c8:	862a004c 	lh	t2,76(s1)
 2cc:	862f004a 	lh	t7,74(s1)
 2d0:	316d00ff 	andi	t5,t3,0xff
 2d4:	000dc200 	sll	t8,t5,0x8
 2d8:	314c00ff 	andi	t4,t2,0xff
 2dc:	000fce00 	sll	t9,t7,0x18
 2e0:	03194025 	or	t0,t8,t9
 2e4:	000c4c00 	sll	t1,t4,0x10
 2e8:	01095825 	or	t3,t0,t1
 2ec:	ac6b0004 	sw	t3,4(v1)
 2f0:	8e0302d0 	lw	v1,720(s0)
 2f4:	246d0008 	addiu	t5,v1,8
 2f8:	ae0d02d0 	sw	t5,720(s0)
 2fc:	ac6e0000 	sw	t6,0(v1)
 300:	8e2f0038 	lw	t7,56(s1)
 304:	ac6f0004 	sw	t7,4(v1)
 308:	3c060000 	lui	a2,0x0
 30c:	24c60018 	addiu	a2,a2,24
 310:	27a4003c 	addiu	a0,sp,60
 314:	02002825 	move	a1,s0
 318:	0c000000 	jal	0 <EffectSsHitMark_Init>
 31c:	24070155 	li	a3,341
 320:	8fbf001c 	lw	ra,28(sp)
 324:	8fb00014 	lw	s0,20(sp)
 328:	8fb10018 	lw	s1,24(sp)
 32c:	03e00008 	jr	ra
 330:	27bd0160 	addiu	sp,sp,352

00000334 <EffectSsHitMark_Update>:
 334:	27bdffe0 	addiu	sp,sp,-32
 338:	afbf001c 	sw	ra,28(sp)
 33c:	afb10018 	sw	s1,24(sp)
 340:	afb00014 	sw	s0,20(sp)
 344:	afa40020 	sw	a0,32(sp)
 348:	afa50024 	sw	a1,36(sp)
 34c:	84ce0042 	lh	t6,66(a2)
 350:	24010001 	li	at,1
 354:	00c08025 	move	s0,a2
 358:	15c1000a 	bne	t6,at,384 <EffectSsHitMark_Update+0x50>
 35c:	3c0c0000 	lui	t4,0x0
 360:	84c2005c 	lh	v0,92(a2)
 364:	240f000f 	li	t7,15
 368:	01e2c023 	subu	t8,t7,v0
 36c:	07010003 	bgez	t8,37c <EffectSsHitMark_Update+0x48>
 370:	0018c843 	sra	t9,t8,0x1
 374:	27010001 	addiu	at,t8,1
 378:	0001c843 	sra	t9,at,0x1
 37c:	10000005 	b	394 <EffectSsHitMark_Update+0x60>
 380:	a6190040 	sh	t9,64(s0)
 384:	8602005c 	lh	v0,92(s0)
 388:	24080007 	li	t0,7
 38c:	01024823 	subu	t1,t0,v0
 390:	a6090040 	sh	t1,64(s0)
 394:	860a0040 	lh	t2,64(s0)
 398:	258c0000 	addiu	t4,t4,0
 39c:	5140002b 	beqzl	t2,44c <EffectSsHitMark_Update+0x118>
 3a0:	8fbf001c 	lw	ra,28(sp)
 3a4:	86030042 	lh	v1,66(s0)
 3a8:	86040044 	lh	a0,68(s0)
 3ac:	24460001 	addiu	a2,v0,1
 3b0:	00031880 	sll	v1,v1,0x2
 3b4:	24630002 	addiu	v1,v1,2
 3b8:	00035880 	sll	t3,v1,0x2
 3bc:	01635823 	subu	t3,t3,v1
 3c0:	016c8821 	addu	s1,t3,t4
 3c4:	0c000000 	jal	0 <EffectSsHitMark_Init>
 3c8:	92250000 	lbu	a1,0(s1)
 3cc:	8606005c 	lh	a2,92(s0)
 3d0:	a6020044 	sh	v0,68(s0)
 3d4:	92250001 	lbu	a1,1(s1)
 3d8:	86040046 	lh	a0,70(s0)
 3dc:	0c000000 	jal	0 <EffectSsHitMark_Init>
 3e0:	24c60001 	addiu	a2,a2,1
 3e4:	8606005c 	lh	a2,92(s0)
 3e8:	a6020046 	sh	v0,70(s0)
 3ec:	92250002 	lbu	a1,2(s1)
 3f0:	86040048 	lh	a0,72(s0)
 3f4:	0c000000 	jal	0 <EffectSsHitMark_Init>
 3f8:	24c60001 	addiu	a2,a2,1
 3fc:	8606005c 	lh	a2,92(s0)
 400:	a6020048 	sh	v0,72(s0)
 404:	92250003 	lbu	a1,3(s1)
 408:	8604004a 	lh	a0,74(s0)
 40c:	0c000000 	jal	0 <EffectSsHitMark_Init>
 410:	24c60001 	addiu	a2,a2,1
 414:	8606005c 	lh	a2,92(s0)
 418:	a602004a 	sh	v0,74(s0)
 41c:	92250004 	lbu	a1,4(s1)
 420:	8604004c 	lh	a0,76(s0)
 424:	0c000000 	jal	0 <EffectSsHitMark_Init>
 428:	24c60001 	addiu	a2,a2,1
 42c:	8606005c 	lh	a2,92(s0)
 430:	a602004c 	sh	v0,76(s0)
 434:	92250005 	lbu	a1,5(s1)
 438:	8604004e 	lh	a0,78(s0)
 43c:	0c000000 	jal	0 <EffectSsHitMark_Init>
 440:	24c60001 	addiu	a2,a2,1
 444:	a602004e 	sh	v0,78(s0)
 448:	8fbf001c 	lw	ra,28(sp)
 44c:	8fb00014 	lw	s0,20(sp)
 450:	8fb10018 	lw	s1,24(sp)
 454:	03e00008 	jr	ra
 458:	27bd0020 	addiu	sp,sp,32
 45c:	00000000 	nop
