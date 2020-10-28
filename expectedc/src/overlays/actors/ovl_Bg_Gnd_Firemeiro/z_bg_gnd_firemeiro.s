
build/src/overlays/actors/ovl_Bg_Gnd_Firemeiro/z_bg_gnd_firemeiro.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgGndFiremeiro_Init>:
   0:	44800000 	mtc1	zero,$f0
   4:	27bdffd0 	addiu	sp,sp,-48
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	00808025 	move	s0,a0
  14:	afbf001c 	sw	ra,28(sp)
  18:	44050000 	mfc1	a1,$f0
  1c:	44070000 	mfc1	a3,$f0
  20:	afa00024 	sw	zero,36(sp)
  24:	248400b4 	addiu	a0,a0,180
  28:	0c000000 	jal	0 <BgGndFiremeiro_Init>
  2c:	00003025 	move	a2,zero
  30:	3c053dcc 	lui	a1,0x3dcc
  34:	34a5cccd 	ori	a1,a1,0xcccd
  38:	0c000000 	jal	0 <BgGndFiremeiro_Init>
  3c:	02002025 	move	a0,s0
  40:	8e0f0024 	lw	t7,36(s0)
  44:	8618001c 	lh	t8,28(s0)
  48:	8e0e0028 	lw	t6,40(s0)
  4c:	ae0f0164 	sw	t7,356(s0)
  50:	8e0f002c 	lw	t7,44(s0)
  54:	ae0e0168 	sw	t6,360(s0)
  58:	17000011 	bnez	t8,a0 <BgGndFiremeiro_Init+0xa0>
  5c:	ae0f016c 	sw	t7,364(s0)
  60:	02002025 	move	a0,s0
  64:	0c000000 	jal	0 <BgGndFiremeiro_Init>
  68:	00002825 	move	a1,zero
  6c:	3c040601 	lui	a0,0x601
  70:	2484ecd8 	addiu	a0,a0,-4904
  74:	0c000000 	jal	0 <BgGndFiremeiro_Init>
  78:	27a50024 	addiu	a1,sp,36
  7c:	8fa40034 	lw	a0,52(sp)
  80:	02003025 	move	a2,s0
  84:	8fa70024 	lw	a3,36(sp)
  88:	0c000000 	jal	0 <BgGndFiremeiro_Init>
  8c:	24850810 	addiu	a1,a0,2064
  90:	3c190000 	lui	t9,0x0
  94:	27390000 	addiu	t9,t9,0
  98:	ae02014c 	sw	v0,332(s0)
  9c:	ae190174 	sw	t9,372(s0)
  a0:	8fbf001c 	lw	ra,28(sp)
  a4:	8fb00018 	lw	s0,24(sp)
  a8:	27bd0030 	addiu	sp,sp,48
  ac:	03e00008 	jr	ra
  b0:	00000000 	nop

000000b4 <BgGndFiremeiro_Destroy>:
  b4:	27bdffe8 	addiu	sp,sp,-24
  b8:	afbf0014 	sw	ra,20(sp)
  bc:	afa40018 	sw	a0,24(sp)
  c0:	848f001c 	lh	t7,28(a0)
  c4:	00a02025 	move	a0,a1
  c8:	8fb80018 	lw	t8,24(sp)
  cc:	15e00003 	bnez	t7,dc <BgGndFiremeiro_Destroy+0x28>
  d0:	24a50810 	addiu	a1,a1,2064
  d4:	0c000000 	jal	0 <BgGndFiremeiro_Init>
  d8:	8f06014c 	lw	a2,332(t8)
  dc:	8fbf0014 	lw	ra,20(sp)
  e0:	27bd0018 	addiu	sp,sp,24
  e4:	03e00008 	jr	ra
  e8:	00000000 	nop

000000ec <func_808795AC>:
  ec:	27bdffe0 	addiu	sp,sp,-32
  f0:	afbf0014 	sw	ra,20(sp)
  f4:	afa50024 	sw	a1,36(sp)
  f8:	3c014316 	lui	at,0x4316
  fc:	44813000 	mtc1	at,$f6
 100:	c4840168 	lwc1	$f4,360(a0)
 104:	afa40020 	sw	a0,32(sp)
 108:	46062081 	sub.s	$f2,$f4,$f6
 10c:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 110:	e7a2001c 	swc1	$f2,28(sp)
 114:	8fa40020 	lw	a0,32(sp)
 118:	10400003 	beqz	v0,128 <func_808795AC+0x3c>
 11c:	c7a2001c 	lwc1	$f2,28(sp)
 120:	240e000a 	li	t6,10
 124:	a48e0170 	sh	t6,368(a0)
 128:	c4800028 	lwc1	$f0,40(a0)
 12c:	3c013f00 	lui	at,0x3f00
 130:	24052082 	li	a1,8322
 134:	4600103c 	c.lt.s	$f2,$f0
 138:	00000000 	nop
 13c:	4502000f 	bc1fl	17c <func_808795AC+0x90>
 140:	94820170 	lhu	v0,368(a0)
 144:	44814000 	mtc1	at,$f8
 148:	00000000 	nop
 14c:	46080281 	sub.s	$f10,$f0,$f8
 150:	e48a0028 	swc1	$f10,40(a0)
 154:	c4900028 	lwc1	$f16,40(a0)
 158:	4602803c 	c.lt.s	$f16,$f2
 15c:	00000000 	nop
 160:	45000002 	bc1f	16c <func_808795AC+0x80>
 164:	00000000 	nop
 168:	e4820028 	swc1	$f2,40(a0)
 16c:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 170:	afa40020 	sw	a0,32(sp)
 174:	8fa40020 	lw	a0,32(sp)
 178:	94820170 	lhu	v0,368(a0)
 17c:	3c180000 	lui	t8,0x0
 180:	27180000 	addiu	t8,t8,0
 184:	18400003 	blez	v0,194 <func_808795AC+0xa8>
 188:	244fffff 	addiu	t7,v0,-1
 18c:	10000002 	b	198 <func_808795AC+0xac>
 190:	a48f0170 	sh	t7,368(a0)
 194:	ac980174 	sw	t8,372(a0)
 198:	8fbf0014 	lw	ra,20(sp)
 19c:	27bd0020 	addiu	sp,sp,32
 1a0:	03e00008 	jr	ra
 1a4:	00000000 	nop

000001a8 <func_80879668>:
 1a8:	27bdffd8 	addiu	sp,sp,-40
 1ac:	afbf001c 	sw	ra,28(sp)
 1b0:	afb00018 	sw	s0,24(sp)
 1b4:	00808025 	move	s0,a0
 1b8:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 1bc:	afa5002c 	sw	a1,44(sp)
 1c0:	10400054 	beqz	v0,314 <func_80879668+0x16c>
 1c4:	3c190000 	lui	t9,0x0
 1c8:	96020170 	lhu	v0,368(s0)
 1cc:	3c0e0000 	lui	t6,0x0
 1d0:	240b000a 	li	t3,10
 1d4:	18400046 	blez	v0,2f0 <func_80879668+0x148>
 1d8:	25ce0000 	addiu	t6,t6,0
 1dc:	244fffff 	addiu	t7,v0,-1
 1e0:	31f80001 	andi	t8,t7,0x1
 1e4:	13000005 	beqz	t8,1fc <func_80879668+0x54>
 1e8:	a60f0170 	sh	t7,368(s0)
 1ec:	3c014000 	lui	at,0x4000
 1f0:	44811000 	mtc1	at,$f2
 1f4:	10000005 	b	20c <func_80879668+0x64>
 1f8:	96040170 	lhu	a0,368(s0)
 1fc:	3c01c000 	lui	at,0xc000
 200:	44811000 	mtc1	at,$f2
 204:	00000000 	nop
 208:	96040170 	lhu	a0,368(s0)
 20c:	8e080164 	lw	t0,356(s0)
 210:	8e190168 	lw	t9,360(s0)
 214:	00800821 	move	at,a0
 218:	00042080 	sll	a0,a0,0x2
 21c:	ae080024 	sw	t0,36(s0)
 220:	8e08016c 	lw	t0,364(s0)
 224:	00812023 	subu	a0,a0,at
 228:	00042300 	sll	a0,a0,0xc
 22c:	00812023 	subu	a0,a0,at
 230:	00042400 	sll	a0,a0,0x10
 234:	ae190028 	sw	t9,40(s0)
 238:	ae08002c 	sw	t0,44(s0)
 23c:	e7a20020 	swc1	$f2,32(sp)
 240:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 244:	00042403 	sra	a0,a0,0x10
 248:	c7a20020 	lwc1	$f2,32(sp)
 24c:	96040170 	lhu	a0,368(s0)
 250:	c6040024 	lwc1	$f4,36(s0)
 254:	46001182 	mul.s	$f6,$f2,$f0
 258:	00800821 	move	at,a0
 25c:	00042080 	sll	a0,a0,0x2
 260:	00812023 	subu	a0,a0,at
 264:	00042300 	sll	a0,a0,0xc
 268:	00812023 	subu	a0,a0,at
 26c:	00042400 	sll	a0,a0,0x10
 270:	46062200 	add.s	$f8,$f4,$f6
 274:	00042403 	sra	a0,a0,0x10
 278:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 27c:	e6080024 	swc1	$f8,36(s0)
 280:	c7a20020 	lwc1	$f2,32(sp)
 284:	96040170 	lhu	a0,368(s0)
 288:	c60a002c 	lwc1	$f10,44(s0)
 28c:	46001402 	mul.s	$f16,$f2,$f0
 290:	00800821 	move	at,a0
 294:	000423c0 	sll	a0,a0,0xf
 298:	00812023 	subu	a0,a0,at
 29c:	00042400 	sll	a0,a0,0x10
 2a0:	00042403 	sra	a0,a0,0x10
 2a4:	46105480 	add.s	$f18,$f10,$f16
 2a8:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 2ac:	e612002c 	swc1	$f18,44(s0)
 2b0:	c6040028 	lwc1	$f4,40(s0)
 2b4:	96090170 	lhu	t1,368(s0)
 2b8:	02002025 	move	a0,s0
 2bc:	46002180 	add.s	$f6,$f4,$f0
 2c0:	e6060028 	swc1	$f6,40(s0)
 2c4:	05210004 	bgez	t1,2d8 <func_80879668+0x130>
 2c8:	312a0003 	andi	t2,t1,0x3
 2cc:	11400002 	beqz	t2,2d8 <func_80879668+0x130>
 2d0:	00000000 	nop
 2d4:	254afffc 	addiu	t2,t2,-4
 2d8:	55400017 	bnezl	t2,338 <func_80879668+0x190>
 2dc:	8fbf001c 	lw	ra,28(sp)
 2e0:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 2e4:	24052838 	li	a1,10296
 2e8:	10000013 	b	338 <func_80879668+0x190>
 2ec:	8fbf001c 	lw	ra,28(sp)
 2f0:	8e0d0164 	lw	t5,356(s0)
 2f4:	8e0c0168 	lw	t4,360(s0)
 2f8:	a60b0170 	sh	t3,368(s0)
 2fc:	ae0d0024 	sw	t5,36(s0)
 300:	8e0d016c 	lw	t5,364(s0)
 304:	ae0e0174 	sw	t6,372(s0)
 308:	ae0c0028 	sw	t4,40(s0)
 30c:	10000009 	b	334 <func_80879668+0x18c>
 310:	ae0d002c 	sw	t5,44(s0)
 314:	8e180164 	lw	t8,356(s0)
 318:	8e0f0168 	lw	t7,360(s0)
 31c:	27390000 	addiu	t9,t9,0
 320:	ae180024 	sw	t8,36(s0)
 324:	8e18016c 	lw	t8,364(s0)
 328:	ae190174 	sw	t9,372(s0)
 32c:	ae0f0028 	sw	t7,40(s0)
 330:	ae18002c 	sw	t8,44(s0)
 334:	8fbf001c 	lw	ra,28(sp)
 338:	8fb00018 	lw	s0,24(sp)
 33c:	27bd0028 	addiu	sp,sp,40
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <func_80879808>:
 348:	27bdffe8 	addiu	sp,sp,-24
 34c:	afbf0014 	sw	ra,20(sp)
 350:	8ca21c44 	lw	v0,7236(a1)
 354:	24010002 	li	at,2
 358:	804e014f 	lb	t6,335(v0)
 35c:	51c10016 	beql	t6,at,3b8 <func_80879808+0x70>
 360:	c4820028 	lwc1	$f2,40(a0)
 364:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 368:	afa40018 	sw	a0,24(sp)
 36c:	10400011 	beqz	v0,3b4 <func_80879808+0x6c>
 370:	8fa40018 	lw	a0,24(sp)
 374:	c4840028 	lwc1	$f4,40(a0)
 378:	c4860168 	lwc1	$f6,360(a0)
 37c:	3c0f0000 	lui	t7,0x0
 380:	3c190000 	lui	t9,0x0
 384:	4606203c 	c.lt.s	$f4,$f6
 388:	25ef0000 	addiu	t7,t7,0
 38c:	24180014 	li	t8,20
 390:	27390000 	addiu	t9,t9,0
 394:	45000004 	bc1f	3a8 <func_80879808+0x60>
 398:	24080014 	li	t0,20
 39c:	ac8f0174 	sw	t7,372(a0)
 3a0:	10000015 	b	3f8 <func_80879808+0xb0>
 3a4:	a4980170 	sh	t8,368(a0)
 3a8:	ac990174 	sw	t9,372(a0)
 3ac:	10000012 	b	3f8 <func_80879808+0xb0>
 3b0:	a4880170 	sh	t0,368(a0)
 3b4:	c4820028 	lwc1	$f2,40(a0)
 3b8:	c4880168 	lwc1	$f8,360(a0)
 3bc:	3c014000 	lui	at,0x4000
 3c0:	4608103c 	c.lt.s	$f2,$f8
 3c4:	00000000 	nop
 3c8:	4502000c 	bc1fl	3fc <func_80879808+0xb4>
 3cc:	8fbf0014 	lw	ra,20(sp)
 3d0:	44815000 	mtc1	at,$f10
 3d4:	c4800168 	lwc1	$f0,360(a0)
 3d8:	460a1400 	add.s	$f16,$f2,$f10
 3dc:	e4900028 	swc1	$f16,40(a0)
 3e0:	c4920028 	lwc1	$f18,40(a0)
 3e4:	4612003c 	c.lt.s	$f0,$f18
 3e8:	00000000 	nop
 3ec:	45020003 	bc1fl	3fc <func_80879808+0xb4>
 3f0:	8fbf0014 	lw	ra,20(sp)
 3f4:	e4800028 	swc1	$f0,40(a0)
 3f8:	8fbf0014 	lw	ra,20(sp)
 3fc:	27bd0018 	addiu	sp,sp,24
 400:	03e00008 	jr	ra
 404:	00000000 	nop

00000408 <BgGndFiremeiro_Update>:
 408:	27bdffe8 	addiu	sp,sp,-24
 40c:	afbf0014 	sw	ra,20(sp)
 410:	8c990174 	lw	t9,372(a0)
 414:	0320f809 	jalr	t9
 418:	00000000 	nop
 41c:	8fbf0014 	lw	ra,20(sp)
 420:	27bd0018 	addiu	sp,sp,24
 424:	03e00008 	jr	ra
 428:	00000000 	nop

0000042c <BgGndFiremeiro_Draw>:
 42c:	27bdffc0 	addiu	sp,sp,-64
 430:	afbf001c 	sw	ra,28(sp)
 434:	afb00018 	sw	s0,24(sp)
 438:	afa40040 	sw	a0,64(sp)
 43c:	afa50044 	sw	a1,68(sp)
 440:	8ca50000 	lw	a1,0(a1)
 444:	3c060000 	lui	a2,0x0
 448:	24c60000 	addiu	a2,a2,0
 44c:	27a4002c 	addiu	a0,sp,44
 450:	24070118 	li	a3,280
 454:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 458:	00a08025 	move	s0,a1
 45c:	8faf0044 	lw	t7,68(sp)
 460:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 464:	8de40000 	lw	a0,0(t7)
 468:	8e0202c0 	lw	v0,704(s0)
 46c:	3c19da38 	lui	t9,0xda38
 470:	37390003 	ori	t9,t9,0x3
 474:	24580008 	addiu	t8,v0,8
 478:	ae1802c0 	sw	t8,704(s0)
 47c:	ac590000 	sw	t9,0(v0)
 480:	8fa80044 	lw	t0,68(sp)
 484:	3c050000 	lui	a1,0x0
 488:	24a50000 	addiu	a1,a1,0
 48c:	8d040000 	lw	a0,0(t0)
 490:	2406011a 	li	a2,282
 494:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 498:	afa20028 	sw	v0,40(sp)
 49c:	8fa30028 	lw	v1,40(sp)
 4a0:	3c0b0601 	lui	t3,0x601
 4a4:	256be210 	addiu	t3,t3,-7664
 4a8:	ac620004 	sw	v0,4(v1)
 4ac:	8e0202c0 	lw	v0,704(s0)
 4b0:	3c0ade00 	lui	t2,0xde00
 4b4:	3c060000 	lui	a2,0x0
 4b8:	24490008 	addiu	t1,v0,8
 4bc:	ae0902c0 	sw	t1,704(s0)
 4c0:	ac4b0004 	sw	t3,4(v0)
 4c4:	ac4a0000 	sw	t2,0(v0)
 4c8:	8fac0044 	lw	t4,68(sp)
 4cc:	24c60000 	addiu	a2,a2,0
 4d0:	27a4002c 	addiu	a0,sp,44
 4d4:	2407011d 	li	a3,285
 4d8:	0c000000 	jal	0 <BgGndFiremeiro_Init>
 4dc:	8d850000 	lw	a1,0(t4)
 4e0:	8fbf001c 	lw	ra,28(sp)
 4e4:	8fb00018 	lw	s0,24(sp)
 4e8:	27bd0040 	addiu	sp,sp,64
 4ec:	03e00008 	jr	ra
 4f0:	00000000 	nop
	...
