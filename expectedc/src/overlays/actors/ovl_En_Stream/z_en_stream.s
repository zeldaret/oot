
build/src/overlays/actors/ovl_En_Stream/z_en_stream.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B0B7A0>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <EnStream_Init>:
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afbf0014 	sw	ra,20(sp)
  10:	afa5001c 	sw	a1,28(sp)
  14:	848e001c 	lh	t6,28(a0)
  18:	3c050000 	lui	a1,0x0
  1c:	24a50000 	addiu	a1,a1,0
  20:	31cf00ff 	andi	t7,t6,0xff
  24:	ac8f0150 	sw	t7,336(a0)
  28:	0c000000 	jal	0 <func_80B0B7A0>
  2c:	afa40018 	sw	a0,24(sp)
  30:	8fa40018 	lw	a0,24(sp)
  34:	24010001 	li	at,1
  38:	3c050000 	lui	a1,0x0
  3c:	8c820150 	lw	v0,336(a0)
  40:	10400005 	beqz	v0,58 <EnStream_Init+0x50>
  44:	00000000 	nop
  48:	14410003 	bne	v0,at,58 <EnStream_Init+0x50>
  4c:	3c010000 	lui	at,0x0
  50:	c4240000 	lwc1	$f4,0(at)
  54:	e4840054 	swc1	$f4,84(a0)
  58:	0c000000 	jal	0 <func_80B0B7A0>
  5c:	24a50000 	addiu	a1,a1,0
  60:	8fbf0014 	lw	ra,20(sp)
  64:	27bd0018 	addiu	sp,sp,24
  68:	03e00008 	jr	ra
  6c:	00000000 	nop

00000070 <EnStream_Destroy>:
  70:	afa40000 	sw	a0,0(sp)
  74:	03e00008 	jr	ra
  78:	afa50004 	sw	a1,4(sp)

0000007c <func_80B0B81C>:
  7c:	c4a40000 	lwc1	$f4,0(a1)
  80:	c4860000 	lwc1	$f6,0(a0)
  84:	44876000 	mtc1	a3,$f12
  88:	3c014248 	lui	at,0x4248
  8c:	46062201 	sub.s	$f8,$f4,$f6
  90:	00001825 	move	v1,zero
  94:	e4c80000 	swc1	$f8,0(a2)
  98:	c4840004 	lwc1	$f4,4(a0)
  9c:	c4aa0004 	lwc1	$f10,4(a1)
  a0:	c4c20000 	lwc1	$f2,0(a2)
  a4:	46045181 	sub.s	$f6,$f10,$f4
  a8:	e4c60004 	swc1	$f6,4(a2)
  ac:	c48a0008 	lwc1	$f10,8(a0)
  b0:	c4a80008 	lwc1	$f8,8(a1)
  b4:	46021182 	mul.s	$f6,$f2,$f2
  b8:	c4d20004 	lwc1	$f18,4(a2)
  bc:	460a4101 	sub.s	$f4,$f8,$f10
  c0:	44805000 	mtc1	zero,$f10
  c4:	e4c40008 	swc1	$f4,8(a2)
  c8:	c4d00008 	lwc1	$f16,8(a2)
  cc:	46108202 	mul.s	$f8,$f16,$f16
  d0:	46083000 	add.s	$f0,$f6,$f8
  d4:	460c5102 	mul.s	$f4,$f10,$f12
  d8:	44813000 	mtc1	at,$f6
  dc:	3c014320 	lui	at,0x4320
  e0:	46000004 	sqrt.s	$f0,$f0
  e4:	46062382 	mul.s	$f14,$f4,$f6
  e8:	4612703e 	c.le.s	$f14,$f18
  ec:	00000000 	nop
  f0:	4502001d 	bc1fl	168 <func_80B0B81C+0xec>
  f4:	460e903e 	c.le.s	$f18,$f14
  f8:	44814000 	mtc1	at,$f8
  fc:	3c014248 	lui	at,0x4248
 100:	44812000 	mtc1	at,$f4
 104:	460c4282 	mul.s	$f10,$f8,$f12
 108:	00000000 	nop
 10c:	46045082 	mul.s	$f2,$f10,$f4
 110:	4602903e 	c.le.s	$f18,$f2
 114:	00000000 	nop
 118:	45000012 	bc1f	164 <func_80B0B81C+0xe8>
 11c:	00000000 	nop
 120:	460e9181 	sub.s	$f6,$f18,$f14
 124:	3c0141e0 	lui	at,0x41e0
 128:	44818000 	mtc1	at,$f16
 12c:	460e1101 	sub.s	$f4,$f2,$f14
 130:	e4c60004 	swc1	$f6,4(a2)
 134:	c4d20004 	lwc1	$f18,4(a2)
 138:	3c014296 	lui	at,0x4296
 13c:	44814000 	mtc1	at,$f8
 140:	46049183 	div.s	$f6,$f18,$f4
 144:	46104281 	sub.s	$f10,$f8,$f16
 148:	46065202 	mul.s	$f8,$f10,$f6
 14c:	46104300 	add.s	$f12,$f8,$f16
 150:	460c003e 	c.le.s	$f0,$f12
 154:	00000000 	nop
 158:	45020003 	bc1fl	168 <func_80B0B81C+0xec>
 15c:	460e903e 	c.le.s	$f18,$f14
 160:	24030001 	li	v1,1
 164:	460e903e 	c.le.s	$f18,$f14
 168:	3c0141e0 	lui	at,0x41e0
 16c:	44818000 	mtc1	at,$f16
 170:	45000006 	bc1f	18c <func_80B0B81C+0x110>
 174:	00000000 	nop
 178:	4610003e 	c.le.s	$f0,$f16
 17c:	00000000 	nop
 180:	45000002 	bc1f	18c <func_80B0B81C+0x110>
 184:	00000000 	nop
 188:	24030002 	li	v1,2
 18c:	03e00008 	jr	ra
 190:	00601025 	move	v0,v1

00000194 <func_80B0B934>:
 194:	27bdffb0 	addiu	sp,sp,-80
 198:	afbf0024 	sw	ra,36(sp)
 19c:	afb10020 	sw	s1,32(sp)
 1a0:	afb0001c 	sw	s0,28(sp)
 1a4:	afa50054 	sw	a1,84(sp)
 1a8:	8cb01c44 	lw	s0,7236(a1)
 1ac:	00808825 	move	s1,a0
 1b0:	8e270054 	lw	a3,84(s1)
 1b4:	26050024 	addiu	a1,s0,36
 1b8:	afa50028 	sw	a1,40(sp)
 1bc:	24840024 	addiu	a0,a0,36
 1c0:	0c000000 	jal	0 <func_80B0B7A0>
 1c4:	27a6003c 	addiu	a2,sp,60
 1c8:	1040004f 	beqz	v0,308 <func_80B0B934+0x174>
 1cc:	02202025 	move	a0,s1
 1d0:	c7a4003c 	lwc1	$f4,60(sp)
 1d4:	c7a80044 	lwc1	$f8,68(sp)
 1d8:	3c0142b4 	lui	at,0x42b4
 1dc:	46042182 	mul.s	$f6,$f4,$f4
 1e0:	44819000 	mtc1	at,$f18
 1e4:	c6300028 	lwc1	$f16,40(s1)
 1e8:	46084282 	mul.s	$f10,$f8,$f8
 1ec:	46002307 	neg.s	$f12,$f4
 1f0:	46004387 	neg.s	$f14,$f8
 1f4:	460a3000 	add.s	$f0,$f6,$f10
 1f8:	c60a0028 	lwc1	$f10,40(s0)
 1fc:	46128181 	sub.s	$f6,$f16,$f18
 200:	46000084 	sqrt.s	$f2,$f0
 204:	46065401 	sub.s	$f16,$f10,$f6
 208:	e7a20038 	swc1	$f2,56(sp)
 20c:	0c000000 	jal	0 <func_80B0B7A0>
 210:	e7b00034 	swc1	$f16,52(sp)
 214:	3c014040 	lui	at,0x4040
 218:	44816000 	mtc1	at,$f12
 21c:	3c010000 	lui	at,0x0
 220:	c4320000 	lwc1	$f18,0(at)
 224:	c7a20038 	lwc1	$f2,56(sp)
 228:	260408ac 	addiu	a0,s0,2220
 22c:	46120282 	mul.s	$f10,$f0,$f18
 230:	4602603c 	c.lt.s	$f12,$f2
 234:	3c063f00 	lui	a2,0x3f00
 238:	4600518d 	trunc.w.s	$f6,$f10
 23c:	44183000 	mfc1	t8,$f6
 240:	45000008 	bc1f	264 <func_80B0B934+0xd0>
 244:	a61808b0 	sh	t8,2224(s0)
 248:	44808000 	mtc1	zero,$f16
 24c:	44056000 	mfc1	a1,$f12
 250:	44071000 	mfc1	a3,$f2
 254:	0c000000 	jal	0 <func_80B0B7A0>
 258:	e7b00010 	swc1	$f16,16(sp)
 25c:	10000013 	b	2ac <func_80B0B934+0x118>
 260:	44800000 	mtc1	zero,$f0
 264:	44800000 	mtc1	zero,$f0
 268:	44076000 	mfc1	a3,$f12
 26c:	3c063f00 	lui	a2,0x3f00
 270:	e60008ac 	swc1	$f0,2220(s0)
 274:	8e250024 	lw	a1,36(s1)
 278:	8fa40028 	lw	a0,40(sp)
 27c:	0c000000 	jal	0 <func_80B0B7A0>
 280:	e7a00010 	swc1	$f0,16(sp)
 284:	3c014040 	lui	at,0x4040
 288:	44816000 	mtc1	at,$f12
 28c:	44802000 	mtc1	zero,$f4
 290:	8e25002c 	lw	a1,44(s1)
 294:	44076000 	mfc1	a3,$f12
 298:	2604002c 	addiu	a0,s0,44
 29c:	3c063f00 	lui	a2,0x3f00
 2a0:	0c000000 	jal	0 <func_80B0B7A0>
 2a4:	e7a40010 	swc1	$f4,16(sp)
 2a8:	44800000 	mtc1	zero,$f0
 2ac:	c7a20034 	lwc1	$f2,52(sp)
 2b0:	3c063f33 	lui	a2,0x3f33
 2b4:	34c63333 	ori	a2,a2,0x3333
 2b8:	4602003c 	c.lt.s	$f0,$f2
 2bc:	26040060 	addiu	a0,s0,96
 2c0:	3c05c040 	lui	a1,0xc040
 2c4:	45020014 	bc1fl	318 <func_80B0B934+0x184>
 2c8:	8fbf0024 	lw	ra,36(sp)
 2cc:	44071000 	mfc1	a3,$f2
 2d0:	0c000000 	jal	0 <func_80B0B7A0>
 2d4:	e7a00010 	swc1	$f0,16(sp)
 2d8:	3c01c28c 	lui	at,0xc28c
 2dc:	44819000 	mtc1	at,$f18
 2e0:	c7a80040 	lwc1	$f8,64(sp)
 2e4:	4612403c 	c.lt.s	$f8,$f18
 2e8:	00000000 	nop
 2ec:	4502000a 	bc1fl	318 <func_80B0B934+0x184>
 2f0:	8fbf0024 	lw	ra,36(sp)
 2f4:	8e190680 	lw	t9,1664(s0)
 2f8:	3c018000 	lui	at,0x8000
 2fc:	03214025 	or	t0,t9,at
 300:	10000004 	b	314 <func_80B0B934+0x180>
 304:	ae080680 	sw	t0,1664(s0)
 308:	3c050000 	lui	a1,0x0
 30c:	0c000000 	jal	0 <func_80B0B7A0>
 310:	24a50000 	addiu	a1,a1,0
 314:	8fbf0024 	lw	ra,36(sp)
 318:	8fb0001c 	lw	s0,28(sp)
 31c:	8fb10020 	lw	s1,32(sp)
 320:	03e00008 	jr	ra
 324:	27bd0050 	addiu	sp,sp,80

00000328 <func_80B0BAC8>:
 328:	27bdffd0 	addiu	sp,sp,-48
 32c:	afbf0014 	sw	ra,20(sp)
 330:	afa40030 	sw	a0,48(sp)
 334:	afa50034 	sw	a1,52(sp)
 338:	8ca21c44 	lw	v0,7236(a1)
 33c:	00807825 	move	t7,a0
 340:	8de70054 	lw	a3,84(t7)
 344:	24840024 	addiu	a0,a0,36
 348:	27a6001c 	addiu	a2,sp,28
 34c:	0c000000 	jal	0 <func_80B0B7A0>
 350:	24450024 	addiu	a1,v0,36
 354:	10400004 	beqz	v0,368 <func_80B0BAC8+0x40>
 358:	8fa40030 	lw	a0,48(sp)
 35c:	3c050000 	lui	a1,0x0
 360:	0c000000 	jal	0 <func_80B0B7A0>
 364:	24a50000 	addiu	a1,a1,0
 368:	8fbf0014 	lw	ra,20(sp)
 36c:	27bd0030 	addiu	sp,sp,48
 370:	03e00008 	jr	ra
 374:	00000000 	nop

00000378 <EnStream_Update>:
 378:	27bdffe8 	addiu	sp,sp,-24
 37c:	afbf0014 	sw	ra,20(sp)
 380:	afa40018 	sw	a0,24(sp)
 384:	8c99014c 	lw	t9,332(a0)
 388:	0320f809 	jalr	t9
 38c:	00000000 	nop
 390:	8fa40018 	lw	a0,24(sp)
 394:	0c000000 	jal	0 <func_80B0B7A0>
 398:	240520dd 	li	a1,8413
 39c:	8fbf0014 	lw	ra,20(sp)
 3a0:	27bd0018 	addiu	sp,sp,24
 3a4:	03e00008 	jr	ra
 3a8:	00000000 	nop

000003ac <EnStream_Draw>:
 3ac:	27bdff90 	addiu	sp,sp,-112
 3b0:	3c0e0001 	lui	t6,0x1
 3b4:	afbf003c 	sw	ra,60(sp)
 3b8:	afb10038 	sw	s1,56(sp)
 3bc:	afb00034 	sw	s0,52(sp)
 3c0:	afa40070 	sw	a0,112(sp)
 3c4:	01c57021 	addu	t6,t6,a1
 3c8:	8dce1de4 	lw	t6,7652(t6)
 3cc:	00a08825 	move	s1,a1
 3d0:	3c060000 	lui	a2,0x0
 3d4:	afae0068 	sw	t6,104(sp)
 3d8:	8ca50000 	lw	a1,0(a1)
 3dc:	24c60000 	addiu	a2,a2,0
 3e0:	27a40054 	addiu	a0,sp,84
 3e4:	24070127 	li	a3,295
 3e8:	0c000000 	jal	0 <func_80B0B7A0>
 3ec:	00a08025 	move	s0,a1
 3f0:	0c000000 	jal	0 <func_80B0B7A0>
 3f4:	8e240000 	lw	a0,0(s1)
 3f8:	8e0202d0 	lw	v0,720(s0)
 3fc:	3c18da38 	lui	t8,0xda38
 400:	37180003 	ori	t8,t8,0x3
 404:	244f0008 	addiu	t7,v0,8
 408:	ae0f02d0 	sw	t7,720(s0)
 40c:	ac580000 	sw	t8,0(v0)
 410:	8e240000 	lw	a0,0(s1)
 414:	3c050000 	lui	a1,0x0
 418:	24a50000 	addiu	a1,a1,0
 41c:	2406012b 	li	a2,299
 420:	0c000000 	jal	0 <func_80B0B7A0>
 424:	afa20050 	sw	v0,80(sp)
 428:	8fa30050 	lw	v1,80(sp)
 42c:	3c0adb06 	lui	t2,0xdb06
 430:	354a0020 	ori	t2,t2,0x20
 434:	ac620004 	sw	v0,4(v1)
 438:	8e0202d0 	lw	v0,720(s0)
 43c:	8fa90068 	lw	t1,104(sp)
 440:	240b0040 	li	t3,64
 444:	24590008 	addiu	t9,v0,8
 448:	ae1902d0 	sw	t9,720(s0)
 44c:	ac4a0000 	sw	t2,0(v0)
 450:	8e240000 	lw	a0,0(s1)
 454:	00091880 	sll	v1,t1,0x2
 458:	00691821 	addu	v1,v1,t1
 45c:	00031880 	sll	v1,v1,0x2
 460:	00093100 	sll	a2,t1,0x4
 464:	00033823 	negu	a3,v1
 468:	240c0040 	li	t4,64
 46c:	240d0001 	li	t5,1
 470:	240e0040 	li	t6,64
 474:	240f0040 	li	t7,64
 478:	00c93023 	subu	a2,a2,t1
 47c:	00063040 	sll	a2,a2,0x1
 480:	afaf0028 	sw	t7,40(sp)
 484:	afae0024 	sw	t6,36(sp)
 488:	afad0018 	sw	t5,24(sp)
 48c:	afac0014 	sw	t4,20(sp)
 490:	afa70020 	sw	a3,32(sp)
 494:	afa3001c 	sw	v1,28(sp)
 498:	afab0010 	sw	t3,16(sp)
 49c:	00002825 	move	a1,zero
 4a0:	0c000000 	jal	0 <func_80B0B7A0>
 4a4:	afa2004c 	sw	v0,76(sp)
 4a8:	8fa8004c 	lw	t0,76(sp)
 4ac:	3c0a0600 	lui	t2,0x600
 4b0:	254a0950 	addiu	t2,t2,2384
 4b4:	ad020004 	sw	v0,4(t0)
 4b8:	8e0202d0 	lw	v0,720(s0)
 4bc:	3c19de00 	lui	t9,0xde00
 4c0:	3c060000 	lui	a2,0x0
 4c4:	24580008 	addiu	t8,v0,8
 4c8:	ae1802d0 	sw	t8,720(s0)
 4cc:	ac4a0004 	sw	t2,4(v0)
 4d0:	ac590000 	sw	t9,0(v0)
 4d4:	8e250000 	lw	a1,0(s1)
 4d8:	24c60000 	addiu	a2,a2,0
 4dc:	27a40054 	addiu	a0,sp,84
 4e0:	0c000000 	jal	0 <func_80B0B7A0>
 4e4:	24070136 	li	a3,310
 4e8:	8fbf003c 	lw	ra,60(sp)
 4ec:	8fb00034 	lw	s0,52(sp)
 4f0:	8fb10038 	lw	s1,56(sp)
 4f4:	03e00008 	jr	ra
 4f8:	27bd0070 	addiu	sp,sp,112
 4fc:	00000000 	nop
