
build/src/overlays/actors/ovl_En_Dy_Extra/z_en_dy_extra.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDyExtra_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <EnDyExtra_Init>:
   c:	27bdffe8 	addiu	sp,sp,-24
  10:	00803025 	move	a2,a0
  14:	afbf0014 	sw	ra,20(sp)
  18:	3c040000 	lui	a0,0x0
  1c:	afa5001c 	sw	a1,28(sp)
  20:	24840000 	addiu	a0,a0,0
  24:	0c000000 	jal	0 <EnDyExtra_Destroy>
  28:	afa60018 	sw	a2,24(sp)
  2c:	8fa60018 	lw	a2,24(sp)
  30:	3c040000 	lui	a0,0x0
  34:	24840004 	addiu	a0,a0,4
  38:	0c000000 	jal	0 <EnDyExtra_Destroy>
  3c:	84c5001c 	lh	a1,28(a2)
  40:	8fa60018 	lw	a2,24(sp)
  44:	3c010000 	lui	at,0x0
  48:	c4200070 	lwc1	$f0,112(at)
  4c:	84ce001c 	lh	t6,28(a2)
  50:	8cd80024 	lw	t8,36(a2)
  54:	3c010000 	lui	at,0x0
  58:	e4c0015c 	swc1	$f0,348(a2)
  5c:	a4ce0150 	sh	t6,336(a2)
  60:	c4240074 	lwc1	$f4,116(at)
  64:	acd80168 	sw	t8,360(a2)
  68:	8cd8002c 	lw	t8,44(a2)
  6c:	8ccf0028 	lw	t7,40(a2)
  70:	3c010000 	lui	at,0x0
  74:	e4c00164 	swc1	$f0,356(a2)
  78:	e4c40160 	swc1	$f4,352(a2)
  7c:	acd80170 	sw	t8,368(a2)
  80:	accf016c 	sw	t7,364(a2)
  84:	c4260078 	lwc1	$f6,120(at)
  88:	3c013f80 	lui	at,0x3f80
  8c:	44814000 	mtc1	at,$f8
  90:	3c080000 	lui	t0,0x0
  94:	2419003c 	li	t9,60
  98:	25080000 	addiu	t0,t0,0
  9c:	a4d90154 	sh	t9,340(a2)
  a0:	acc8014c 	sw	t0,332(a2)
  a4:	e4c6006c 	swc1	$f6,108(a2)
  a8:	e4c80158 	swc1	$f8,344(a2)
  ac:	8fbf0014 	lw	ra,20(sp)
  b0:	27bd0018 	addiu	sp,sp,24
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <func_809FF7AC>:
  bc:	27bdffe0 	addiu	sp,sp,-32
  c0:	afb00018 	sw	s0,24(sp)
  c4:	00808025 	move	s0,a0
  c8:	afbf001c 	sw	ra,28(sp)
  cc:	afa50024 	sw	a1,36(sp)
  d0:	3c063dcc 	lui	a2,0x3dcc
  d4:	3c073ba3 	lui	a3,0x3ba3
  d8:	34e7d70a 	ori	a3,a3,0xd70a
  dc:	34c6cccd 	ori	a2,a2,0xcccd
  e0:	24050000 	li	a1,0
  e4:	0c000000 	jal	0 <EnDyExtra_Destroy>
  e8:	2484006c 	addiu	a0,a0,108
  ec:	3c01c25c 	lui	at,0xc25c
  f0:	44813000 	mtc1	at,$f6
  f4:	c6040028 	lwc1	$f4,40(s0)
  f8:	4606203c 	c.lt.s	$f4,$f6
  fc:	00000000 	nop
 100:	45020005 	bc1fl	118 <func_809FF7AC+0x5c>
 104:	860e0154 	lh	t6,340(s0)
 108:	44804000 	mtc1	zero,$f8
 10c:	00000000 	nop
 110:	e6080060 	swc1	$f8,96(s0)
 114:	860e0154 	lh	t6,340(s0)
 118:	55c00009 	bnezl	t6,140 <func_809FF7AC+0x84>
 11c:	8fbf001c 	lw	ra,28(sp)
 120:	860f0152 	lh	t7,338(s0)
 124:	3c190000 	lui	t9,0x0
 128:	241800c8 	li	t8,200
 12c:	11e00003 	beqz	t7,13c <func_809FF7AC+0x80>
 130:	27390000 	addiu	t9,t9,0
 134:	a6180154 	sh	t8,340(s0)
 138:	ae19014c 	sw	t9,332(s0)
 13c:	8fbf001c 	lw	ra,28(sp)
 140:	8fb00018 	lw	s0,24(sp)
 144:	27bd0020 	addiu	sp,sp,32
 148:	03e00008 	jr	ra
 14c:	00000000 	nop

00000150 <func_809FF840>:
 150:	27bdffe0 	addiu	sp,sp,-32
 154:	afb00018 	sw	s0,24(sp)
 158:	00808025 	move	s0,a0
 15c:	afbf001c 	sw	ra,28(sp)
 160:	afa50024 	sw	a1,36(sp)
 164:	3c063dcc 	lui	a2,0x3dcc
 168:	3c073ba3 	lui	a3,0x3ba3
 16c:	34e7d70a 	ori	a3,a3,0xd70a
 170:	34c6cccd 	ori	a2,a2,0xcccd
 174:	24050000 	li	a1,0
 178:	0c000000 	jal	0 <EnDyExtra_Destroy>
 17c:	2484006c 	addiu	a0,a0,108
 180:	860e0154 	lh	t6,340(s0)
 184:	3c010000 	lui	at,0x0
 188:	11c0000a 	beqz	t6,1b4 <func_809FF840+0x64>
 18c:	00000000 	nop
 190:	c6040158 	lwc1	$f4,344(s0)
 194:	c426007c 	lwc1	$f6,124(at)
 198:	3c053cf5 	lui	a1,0x3cf5
 19c:	34a5c28f 	ori	a1,a1,0xc28f
 1a0:	4606203c 	c.lt.s	$f4,$f6
 1a4:	26040158 	addiu	a0,s0,344
 1a8:	3c063d4c 	lui	a2,0x3d4c
 1ac:	45000005 	bc1f	1c4 <func_809FF840+0x74>
 1b0:	00000000 	nop
 1b4:	0c000000 	jal	0 <EnDyExtra_Destroy>
 1b8:	02002025 	move	a0,s0
 1bc:	1000000e 	b	1f8 <func_809FF840+0xa8>
 1c0:	8fbf001c 	lw	ra,28(sp)
 1c4:	0c000000 	jal	0 <EnDyExtra_Destroy>
 1c8:	34c6cccd 	ori	a2,a2,0xcccd
 1cc:	3c01c25c 	lui	at,0xc25c
 1d0:	44815000 	mtc1	at,$f10
 1d4:	c6080028 	lwc1	$f8,40(s0)
 1d8:	460a403c 	c.lt.s	$f8,$f10
 1dc:	00000000 	nop
 1e0:	45020005 	bc1fl	1f8 <func_809FF840+0xa8>
 1e4:	8fbf001c 	lw	ra,28(sp)
 1e8:	44808000 	mtc1	zero,$f16
 1ec:	00000000 	nop
 1f0:	e6100060 	swc1	$f16,96(s0)
 1f4:	8fbf001c 	lw	ra,28(sp)
 1f8:	8fb00018 	lw	s0,24(sp)
 1fc:	27bd0020 	addiu	sp,sp,32
 200:	03e00008 	jr	ra
 204:	00000000 	nop

00000208 <EnDyExtra_Update>:
 208:	27bdffe8 	addiu	sp,sp,-24
 20c:	afbf0014 	sw	ra,20(sp)
 210:	afa5001c 	sw	a1,28(sp)
 214:	84820154 	lh	v0,340(a0)
 218:	240500c4 	li	a1,196
 21c:	10400002 	beqz	v0,228 <EnDyExtra_Update+0x20>
 220:	244effff 	addiu	t6,v0,-1
 224:	a48e0154 	sh	t6,340(a0)
 228:	c484015c 	lwc1	$f4,348(a0)
 22c:	c4860160 	lwc1	$f6,352(a0)
 230:	c4880164 	lwc1	$f8,356(a0)
 234:	e4840050 	swc1	$f4,80(a0)
 238:	e4860054 	swc1	$f6,84(a0)
 23c:	e4880058 	swc1	$f8,88(a0)
 240:	0c000000 	jal	0 <EnDyExtra_Destroy>
 244:	afa40018 	sw	a0,24(sp)
 248:	8fa40018 	lw	a0,24(sp)
 24c:	8fa5001c 	lw	a1,28(sp)
 250:	8c99014c 	lw	t9,332(a0)
 254:	0320f809 	jalr	t9
 258:	00000000 	nop
 25c:	0c000000 	jal	0 <EnDyExtra_Destroy>
 260:	8fa40018 	lw	a0,24(sp)
 264:	8fbf0014 	lw	ra,20(sp)
 268:	27bd0018 	addiu	sp,sp,24
 26c:	03e00008 	jr	ra
 270:	00000000 	nop

00000274 <EnDyExtra_Draw>:
 274:	3c070000 	lui	a3,0x0
 278:	24e70000 	addiu	a3,a3,0
 27c:	00077900 	sll	t7,a3,0x4
 280:	000fc702 	srl	t8,t7,0x1c
 284:	0018c880 	sll	t9,t8,0x2
 288:	3c0a0000 	lui	t2,0x0
 28c:	27bdff70 	addiu	sp,sp,-144
 290:	01595021 	addu	t2,t2,t9
 294:	3c0100ff 	lui	at,0xff
 298:	8d4a0000 	lw	t2,0(t2)
 29c:	3421ffff 	ori	at,at,0xffff
 2a0:	00e15824 	and	t3,a3,at
 2a4:	afbf003c 	sw	ra,60(sp)
 2a8:	afb00038 	sw	s0,56(sp)
 2ac:	afa40090 	sw	a0,144(sp)
 2b0:	afa50094 	sw	a1,148(sp)
 2b4:	3c018000 	lui	at,0x8000
 2b8:	014b3021 	addu	a2,t2,t3
 2bc:	8cb00000 	lw	s0,0(a1)
 2c0:	00c13021 	addu	a2,a2,at
 2c4:	a3a00078 	sb	zero,120(sp)
 2c8:	3c014370 	lui	at,0x4370
 2cc:	44813000 	mtc1	at,$f6
 2d0:	c4840158 	lwc1	$f4,344(a0)
 2d4:	3c01437f 	lui	at,0x437f
 2d8:	44819000 	mtc1	at,$f18
 2dc:	46062202 	mul.s	$f8,$f4,$f6
 2e0:	3c030000 	lui	v1,0x0
 2e4:	24630030 	addiu	v1,v1,48
 2e8:	27a50078 	addiu	a1,sp,120
 2ec:	2407001b 	li	a3,27
 2f0:	00001025 	move	v0,zero
 2f4:	4600428d 	trunc.w.s	$f10,$f8
 2f8:	440e5000 	mfc1	t6,$f10
 2fc:	00000000 	nop
 300:	a3ae0079 	sb	t6,121(sp)
 304:	c4900158 	lwc1	$f16,344(a0)
 308:	46128102 	mul.s	$f4,$f16,$f18
 30c:	4600218d 	trunc.w.s	$f6,$f4
 310:	44183000 	mfc1	t8,$f6
 314:	00000000 	nop
 318:	a3b8007a 	sb	t8,122(sp)
 31c:	90640000 	lbu	a0,0(v1)
 320:	10800005 	beqz	a0,338 <EnDyExtra_Draw+0xc4>
 324:	00a4c821 	addu	t9,a1,a0
 328:	932a0000 	lbu	t2,0(t9)
 32c:	00025900 	sll	t3,v0,0x4
 330:	00cb6821 	addu	t5,a2,t3
 334:	a1aa000f 	sb	t2,15(t5)
 338:	24420001 	addiu	v0,v0,1
 33c:	1447fff7 	bne	v0,a3,31c <EnDyExtra_Draw+0xa8>
 340:	24630001 	addiu	v1,v1,1
 344:	3c060000 	lui	a2,0x0
 348:	24c60034 	addiu	a2,a2,52
 34c:	27a40064 	addiu	a0,sp,100
 350:	02002825 	move	a1,s0
 354:	0c000000 	jal	0 <EnDyExtra_Destroy>
 358:	24070126 	li	a3,294
 35c:	8fae0094 	lw	t6,148(sp)
 360:	0c000000 	jal	0 <EnDyExtra_Destroy>
 364:	8dc40000 	lw	a0,0(t6)
 368:	8e0202d0 	lw	v0,720(s0)
 36c:	8fa90094 	lw	t1,148(sp)
 370:	3c0fdb06 	lui	t7,0xdb06
 374:	244c0008 	addiu	t4,v0,8
 378:	ae0c02d0 	sw	t4,720(s0)
 37c:	35ef0020 	ori	t7,t7,0x20
 380:	ac4f0000 	sw	t7,0(v0)
 384:	8d23009c 	lw	v1,156(t1)
 388:	8d240000 	lw	a0,0(t1)
 38c:	24180020 	li	t8,32
 390:	00030823 	negu	at,v1
 394:	000150c0 	sll	t2,at,0x3
 398:	24190040 	li	t9,64
 39c:	240b0001 	li	t3,1
 3a0:	240d0010 	li	t5,16
 3a4:	240e0010 	li	t6,16
 3a8:	afae0028 	sw	t6,40(sp)
 3ac:	afad0024 	sw	t5,36(sp)
 3b0:	afab0018 	sw	t3,24(sp)
 3b4:	afb90014 	sw	t9,20(sp)
 3b8:	afaa0020 	sw	t2,32(sp)
 3bc:	afb80010 	sw	t8,16(sp)
 3c0:	00002825 	move	a1,zero
 3c4:	00003825 	move	a3,zero
 3c8:	afa20060 	sw	v0,96(sp)
 3cc:	afa3001c 	sw	v1,28(sp)
 3d0:	0c000000 	jal	0 <EnDyExtra_Destroy>
 3d4:	00033040 	sll	a2,v1,0x1
 3d8:	8fa80060 	lw	t0,96(sp)
 3dc:	3c0fe700 	lui	t7,0xe700
 3e0:	3c19da38 	lui	t9,0xda38
 3e4:	ad020004 	sw	v0,4(t0)
 3e8:	8e0202d0 	lw	v0,720(s0)
 3ec:	37390003 	ori	t9,t9,0x3
 3f0:	3c050000 	lui	a1,0x0
 3f4:	244c0008 	addiu	t4,v0,8
 3f8:	ae0c02d0 	sw	t4,720(s0)
 3fc:	ac4f0000 	sw	t7,0(v0)
 400:	ac400004 	sw	zero,4(v0)
 404:	8e0202d0 	lw	v0,720(s0)
 408:	24a50048 	addiu	a1,a1,72
 40c:	24060133 	li	a2,307
 410:	24580008 	addiu	t8,v0,8
 414:	ae1802d0 	sw	t8,720(s0)
 418:	ac590000 	sw	t9,0(v0)
 41c:	8fab0094 	lw	t3,148(sp)
 420:	8d640000 	lw	a0,0(t3)
 424:	0c000000 	jal	0 <EnDyExtra_Destroy>
 428:	afa20058 	sw	v0,88(sp)
 42c:	8fa30058 	lw	v1,88(sp)
 430:	3c0dfa00 	lui	t5,0xfa00
 434:	35ad0080 	ori	t5,t5,0x80
 438:	ac620004 	sw	v0,4(v1)
 43c:	8e0202d0 	lw	v0,720(s0)
 440:	8fa50090 	lw	a1,144(sp)
 444:	3c0f0000 	lui	t7,0x0
 448:	244a0008 	addiu	t2,v0,8
 44c:	ae0a02d0 	sw	t2,720(s0)
 450:	ac4d0000 	sw	t5,0(v0)
 454:	84ae0150 	lh	t6,336(a1)
 458:	25ef0020 	addiu	t7,t7,32
 45c:	3c060000 	lui	a2,0x0
 460:	000e6080 	sll	t4,t6,0x2
 464:	018f1821 	addu	v1,t4,t7
 468:	90790002 	lbu	t9,2(v1)
 46c:	906d0000 	lbu	t5,0(v1)
 470:	90780001 	lbu	t8,1(v1)
 474:	00195a00 	sll	t3,t9,0x8
 478:	000d7600 	sll	t6,t5,0x18
 47c:	016e6025 	or	t4,t3,t6
 480:	0018cc00 	sll	t9,t8,0x10
 484:	01995025 	or	t2,t4,t9
 488:	354d00ff 	ori	t5,t2,0xff
 48c:	ac4d0004 	sw	t5,4(v0)
 490:	8e0202d0 	lw	v0,720(s0)
 494:	3c0efb00 	lui	t6,0xfb00
 498:	3c0c0000 	lui	t4,0x0
 49c:	244b0008 	addiu	t3,v0,8
 4a0:	ae0b02d0 	sw	t3,720(s0)
 4a4:	ac4e0000 	sw	t6,0(v0)
 4a8:	84af0150 	lh	t7,336(a1)
 4ac:	258c0028 	addiu	t4,t4,40
 4b0:	02002825 	move	a1,s0
 4b4:	000fc080 	sll	t8,t7,0x2
 4b8:	030c1821 	addu	v1,t8,t4
 4bc:	906a0002 	lbu	t2,2(v1)
 4c0:	906e0000 	lbu	t6,0(v1)
 4c4:	90790001 	lbu	t9,1(v1)
 4c8:	000a6a00 	sll	t5,t2,0x8
 4cc:	000e7e00 	sll	t7,t6,0x18
 4d0:	01afc025 	or	t8,t5,t7
 4d4:	00195400 	sll	t2,t9,0x10
 4d8:	030a5825 	or	t3,t8,t2
 4dc:	356e0080 	ori	t6,t3,0x80
 4e0:	ac4e0004 	sw	t6,4(v0)
 4e4:	8e0202d0 	lw	v0,720(s0)
 4e8:	3c0c0000 	lui	t4,0x0
 4ec:	258c0000 	addiu	t4,t4,0
 4f0:	244d0008 	addiu	t5,v0,8
 4f4:	ae0d02d0 	sw	t5,720(s0)
 4f8:	3c0fde00 	lui	t7,0xde00
 4fc:	24c6005c 	addiu	a2,a2,92
 500:	27a40064 	addiu	a0,sp,100
 504:	24070145 	li	a3,325
 508:	ac4f0000 	sw	t7,0(v0)
 50c:	0c000000 	jal	0 <EnDyExtra_Destroy>
 510:	ac4c0004 	sw	t4,4(v0)
 514:	8fbf003c 	lw	ra,60(sp)
 518:	8fb00038 	lw	s0,56(sp)
 51c:	27bd0090 	addiu	sp,sp,144
 520:	03e00008 	jr	ra
 524:	00000000 	nop
	...
