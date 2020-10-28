
build/src/overlays/actors/ovl_En_Siofuki/z_en_siofuki.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSiofuki_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	afa0002c 	sw	zero,44(sp)
  14:	808e0003 	lb	t6,3(a0)
  18:	00808025 	move	s0,a0
  1c:	2401000a 	li	at,10
  20:	15c10009 	bne	t6,at,48 <EnSiofuki_Init+0x48>
  24:	00a02025 	move	a0,a1
  28:	0c000000 	jal	0 <EnSiofuki_Init>
  2c:	2405001e 	li	a1,30
  30:	10400005 	beqz	v0,48 <EnSiofuki_Init+0x48>
  34:	00000000 	nop
  38:	0c000000 	jal	0 <EnSiofuki_Init>
  3c:	02002025 	move	a0,s0
  40:	10000071 	b	208 <EnSiofuki_Init+0x208>
  44:	8fbf001c 	lw	ra,28(sp)
  48:	3c050000 	lui	a1,0x0
  4c:	24a50000 	addiu	a1,a1,0
  50:	0c000000 	jal	0 <EnSiofuki_Init>
  54:	02002025 	move	a0,s0
  58:	02002025 	move	a0,s0
  5c:	0c000000 	jal	0 <EnSiofuki_Init>
  60:	24050001 	li	a1,1
  64:	3c040600 	lui	a0,0x600
  68:	24840d78 	addiu	a0,a0,3448
  6c:	0c000000 	jal	0 <EnSiofuki_Init>
  70:	27a5002c 	addiu	a1,sp,44
  74:	8fa4003c 	lw	a0,60(sp)
  78:	02003025 	move	a2,s0
  7c:	8fa7002c 	lw	a3,44(sp)
  80:	0c000000 	jal	0 <EnSiofuki_Init>
  84:	24850810 	addiu	a1,a0,2064
  88:	9603001c 	lhu	v1,28(s0)
  8c:	920f019c 	lbu	t7,412(s0)
  90:	ae02014c 	sw	v0,332(s0)
  94:	00031b03 	sra	v1,v1,0xc
  98:	3063000f 	andi	v1,v1,0xf
  9c:	35f80001 	ori	t8,t7,0x1
  a0:	10600008 	beqz	v1,c4 <EnSiofuki_Init+0xc4>
  a4:	a218019c 	sb	t8,412(s0)
  a8:	24010001 	li	at,1
  ac:	50610006 	beql	v1,at,c8 <EnSiofuki_Init+0xc8>
  b0:	3c01420c 	lui	at,0x420c
  b4:	0c000000 	jal	0 <EnSiofuki_Init>
  b8:	02002025 	move	a0,s0
  bc:	10000052 	b	208 <EnSiofuki_Init+0x208>
  c0:	8fbf001c 	lw	ra,28(sp)
  c4:	3c01420c 	lui	at,0x420c
  c8:	44810000 	mtc1	at,$f0
  cc:	c6040028 	lwc1	$f4,40(s0)
  d0:	3c010000 	lui	at,0x0
  d4:	e6000174 	swc1	$f0,372(s0)
  d8:	e604016c 	swc1	$f4,364(s0)
  dc:	c4260000 	lwc1	$f6,0(at)
  e0:	860200b4 	lh	v0,180(s0)
  e4:	3c190000 	lui	t9,0x0
  e8:	46060200 	add.s	$f8,$f0,$f6
  ec:	10400009 	beqz	v0,114 <EnSiofuki_Init+0x114>
  f0:	e6080170 	swc1	$f8,368(s0)
  f4:	44825000 	mtc1	v0,$f10
  f8:	3c014220 	lui	at,0x4220
  fc:	44819000 	mtc1	at,$f18
 100:	46805420 	cvt.s.w	$f16,$f10
 104:	46128102 	mul.s	$f4,$f16,$f18
 108:	e6040198 	swc1	$f4,408(s0)
 10c:	c6060198 	lwc1	$f6,408(s0)
 110:	e6060180 	swc1	$f6,384(s0)
 114:	860200b6 	lh	v0,182(s0)
 118:	a6000196 	sh	zero,406(s0)
 11c:	50400003 	beqzl	v0,12c <EnSiofuki_Init+0x12c>
 120:	860200b8 	lh	v0,184(s0)
 124:	a6020196 	sh	v0,406(s0)
 128:	860200b8 	lh	v0,184(s0)
 12c:	50400012 	beqzl	v0,178 <EnSiofuki_Init+0x178>
 130:	9602001c 	lhu	v0,28(s0)
 134:	44824000 	mtc1	v0,$f8
 138:	3c010000 	lui	at,0x0
 13c:	c4220000 	lwc1	$f2,0(at)
 140:	46804020 	cvt.s.w	$f0,$f8
 144:	3c010000 	lui	at,0x0
 148:	c42a0000 	lwc1	$f10,0(at)
 14c:	3c013f00 	lui	at,0x3f00
 150:	44812000 	mtc1	at,$f4
 154:	460a0402 	mul.s	$f16,$f0,$f10
 158:	00000000 	nop
 15c:	46028482 	mul.s	$f18,$f16,$f2
 160:	00000000 	nop
 164:	46040182 	mul.s	$f6,$f0,$f4
 168:	e6120050 	swc1	$f18,80(s0)
 16c:	46023202 	mul.s	$f8,$f6,$f2
 170:	e6080058 	swc1	$f8,88(s0)
 174:	9602001c 	lhu	v0,28(s0)
 178:	a6000030 	sh	zero,48(s0)
 17c:	a6000032 	sh	zero,50(s0)
 180:	00021b03 	sra	v1,v0,0xc
 184:	3063000f 	andi	v1,v1,0xf
 188:	a6000034 	sh	zero,52(s0)
 18c:	a60000b4 	sh	zero,180(s0)
 190:	a60000b6 	sh	zero,182(s0)
 194:	14600008 	bnez	v1,1b8 <EnSiofuki_Init+0x1b8>
 198:	a60000b8 	sh	zero,184(s0)
 19c:	3c014120 	lui	at,0x4120
 1a0:	44810000 	mtc1	at,$f0
 1a4:	27390000 	addiu	t9,t9,0
 1a8:	ae190164 	sw	t9,356(s0)
 1ac:	e6000180 	swc1	$f0,384(s0)
 1b0:	10000014 	b	204 <EnSiofuki_Init+0x204>
 1b4:	e600017c 	swc1	$f0,380(s0)
 1b8:	24010001 	li	at,1
 1bc:	14610011 	bne	v1,at,204 <EnSiofuki_Init+0x204>
 1c0:	8fa4003c 	lw	a0,60(sp)
 1c4:	0c000000 	jal	0 <EnSiofuki_Init>
 1c8:	3045003f 	andi	a1,v0,0x3f
 1cc:	10400009 	beqz	v0,1f4 <EnSiofuki_Init+0x1f4>
 1d0:	3c090000 	lui	t1,0x0
 1d4:	3c01c234 	lui	at,0xc234
 1d8:	44810000 	mtc1	at,$f0
 1dc:	3c080000 	lui	t0,0x0
 1e0:	25080000 	addiu	t0,t0,0
 1e4:	ae080164 	sw	t0,356(s0)
 1e8:	e6000180 	swc1	$f0,384(s0)
 1ec:	10000005 	b	204 <EnSiofuki_Init+0x204>
 1f0:	e600017c 	swc1	$f0,380(s0)
 1f4:	c60a0180 	lwc1	$f10,384(s0)
 1f8:	25290000 	addiu	t1,t1,0
 1fc:	ae090164 	sw	t1,356(s0)
 200:	e60a017c 	swc1	$f10,380(s0)
 204:	8fbf001c 	lw	ra,28(sp)
 208:	8fb00018 	lw	s0,24(sp)
 20c:	27bd0038 	addiu	sp,sp,56
 210:	03e00008 	jr	ra
 214:	00000000 	nop

00000218 <EnSiofuki_Destroy>:
 218:	27bdffe8 	addiu	sp,sp,-24
 21c:	afa40018 	sw	a0,24(sp)
 220:	8fae0018 	lw	t6,24(sp)
 224:	afbf0014 	sw	ra,20(sp)
 228:	00a02025 	move	a0,a1
 22c:	24a50810 	addiu	a1,a1,2064
 230:	0c000000 	jal	0 <EnSiofuki_Init>
 234:	8dc6014c 	lw	a2,332(t6)
 238:	8fbf0014 	lw	ra,20(sp)
 23c:	27bd0018 	addiu	sp,sp,24
 240:	03e00008 	jr	ra
 244:	00000000 	nop

00000248 <func_80AFBDC8>:
 248:	27bdffe8 	addiu	sp,sp,-24
 24c:	3c0e0001 	lui	t6,0x1
 250:	afbf0014 	sw	ra,20(sp)
 254:	01c57021 	addu	t6,t6,a1
 258:	8dce1de4 	lw	t6,7652(t6)
 25c:	3c014f80 	lui	at,0x4f80
 260:	31cf001f 	andi	t7,t6,0x1f
 264:	448f2000 	mtc1	t7,$f4
 268:	05e10004 	bgez	t7,27c <func_80AFBDC8+0x34>
 26c:	468021a0 	cvt.s.w	$f6,$f4
 270:	44814000 	mtc1	at,$f8
 274:	00000000 	nop
 278:	46083180 	add.s	$f6,$f6,$f8
 27c:	3c013d00 	lui	at,0x3d00
 280:	44815000 	mtc1	at,$f10
 284:	3c010000 	lui	at,0x0
 288:	c4320000 	lwc1	$f18,0(at)
 28c:	460a3402 	mul.s	$f16,$f6,$f10
 290:	afa40018 	sw	a0,24(sp)
 294:	46128002 	mul.s	$f0,$f16,$f18
 298:	0c000000 	jal	0 <EnSiofuki_Init>
 29c:	46000300 	add.s	$f12,$f0,$f0
 2a0:	3c014120 	lui	at,0x4120
 2a4:	44816000 	mtc1	at,$f12
 2a8:	3c014080 	lui	at,0x4080
 2ac:	44812000 	mtc1	at,$f4
 2b0:	8fa40018 	lw	a0,24(sp)
 2b4:	3c010000 	lui	at,0x0
 2b8:	46040082 	mul.s	$f2,$f0,$f4
 2bc:	c4880174 	lwc1	$f8,372(a0)
 2c0:	460c4182 	mul.s	$f6,$f8,$f12
 2c4:	e4820178 	swc1	$f2,376(a0)
 2c8:	c42a0000 	lwc1	$f10,0(at)
 2cc:	460c1482 	mul.s	$f18,$f2,$f12
 2d0:	3c01420c 	lui	at,0x420c
 2d4:	460a3400 	add.s	$f16,$f6,$f10
 2d8:	c48a0180 	lwc1	$f10,384(a0)
 2dc:	c486016c 	lwc1	$f6,364(a0)
 2e0:	44814000 	mtc1	at,$f8
 2e4:	46128101 	sub.s	$f4,$f16,$f18
 2e8:	e4880174 	swc1	$f8,372(a0)
 2ec:	460a3400 	add.s	$f16,$f6,$f10
 2f0:	e4840170 	swc1	$f4,368(a0)
 2f4:	46028480 	add.s	$f18,$f16,$f2
 2f8:	e4920028 	swc1	$f18,40(a0)
 2fc:	8fbf0014 	lw	ra,20(sp)
 300:	27bd0018 	addiu	sp,sp,24
 304:	03e00008 	jr	ra
 308:	00000000 	nop

0000030c <func_80AFBE8C>:
 30c:	27bdffb8 	addiu	sp,sp,-72
 310:	afbf0024 	sw	ra,36(sp)
 314:	afb10020 	sw	s1,32(sp)
 318:	afb0001c 	sw	s0,28(sp)
 31c:	afa5004c 	sw	a1,76(sp)
 320:	8cb11c44 	lw	s1,7236(a1)
 324:	c4860024 	lwc1	$f6,36(a0)
 328:	c48a0028 	lwc1	$f10,40(a0)
 32c:	c6240024 	lwc1	$f4,36(s1)
 330:	c6280028 	lwc1	$f8,40(s1)
 334:	3c01c3ad 	lui	at,0xc3ad
 338:	46062301 	sub.s	$f12,$f4,$f6
 33c:	44813000 	mtc1	at,$f6
 340:	c4800050 	lwc1	$f0,80(a0)
 344:	460a4081 	sub.s	$f2,$f8,$f10
 348:	c484002c 	lwc1	$f4,44(a0)
 34c:	46060202 	mul.s	$f8,$f0,$f6
 350:	c632002c 	lwc1	$f18,44(s1)
 354:	00808025 	move	s0,a0
 358:	3c0143ad 	lui	at,0x43ad
 35c:	46049381 	sub.s	$f14,$f18,$f4
 360:	460c403c 	c.lt.s	$f8,$f12
 364:	00000000 	nop
 368:	450200a8 	bc1fl	60c <func_80AFBE8C+0x300>
 36c:	8e0a0188 	lw	t2,392(s0)
 370:	44815000 	mtc1	at,$f10
 374:	3c01c3c8 	lui	at,0xc3c8
 378:	460a0482 	mul.s	$f18,$f0,$f10
 37c:	4612603c 	c.lt.s	$f12,$f18
 380:	00000000 	nop
 384:	450200a1 	bc1fl	60c <func_80AFBE8C+0x300>
 388:	8e0a0188 	lw	t2,392(s0)
 38c:	c4800058 	lwc1	$f0,88(a0)
 390:	44812000 	mtc1	at,$f4
 394:	3c0143c8 	lui	at,0x43c8
 398:	46040182 	mul.s	$f6,$f0,$f4
 39c:	460e303c 	c.lt.s	$f6,$f14
 3a0:	00000000 	nop
 3a4:	45020099 	bc1fl	60c <func_80AFBE8C+0x300>
 3a8:	8e0a0188 	lw	t2,392(s0)
 3ac:	44814000 	mtc1	at,$f8
 3b0:	00000000 	nop
 3b4:	46080282 	mul.s	$f10,$f0,$f8
 3b8:	460a703c 	c.lt.s	$f14,$f10
 3bc:	00000000 	nop
 3c0:	45020092 	bc1fl	60c <func_80AFBE8C+0x300>
 3c4:	8e0a0188 	lw	t2,392(s0)
 3c8:	44808000 	mtc1	zero,$f16
 3cc:	00000000 	nop
 3d0:	4610103c 	c.lt.s	$f2,$f16
 3d4:	00000000 	nop
 3d8:	4502008c 	bc1fl	60c <func_80AFBE8C+0x300>
 3dc:	8e0a0188 	lw	t2,392(s0)
 3e0:	e7ac0040 	swc1	$f12,64(sp)
 3e4:	0c000000 	jal	0 <EnSiofuki_Init>
 3e8:	e7ae0038 	swc1	$f14,56(sp)
 3ec:	44808000 	mtc1	zero,$f16
 3f0:	c7ac0040 	lwc1	$f12,64(sp)
 3f4:	10400016 	beqz	v0,450 <func_80AFBE8C+0x144>
 3f8:	c7ae0038 	lwc1	$f14,56(sp)
 3fc:	8e020184 	lw	v0,388(s0)
 400:	8fa4004c 	lw	a0,76(sp)
 404:	26250024 	addiu	a1,s1,36
 408:	1c40000c 	bgtz	v0,43c <func_80AFBE8C+0x130>
 40c:	2448ffff 	addiu	t0,v0,-1
 410:	240f0001 	li	t7,1
 414:	24180001 	li	t8,1
 418:	afb80014 	sw	t8,20(sp)
 41c:	afaf0010 	sw	t7,16(sp)
 420:	00003025 	move	a2,zero
 424:	0c000000 	jal	0 <EnSiofuki_Init>
 428:	00003825 	move	a3,zero
 42c:	44808000 	mtc1	zero,$f16
 430:	2419000a 	li	t9,10
 434:	10000002 	b	440 <func_80AFBE8C+0x134>
 438:	ae190184 	sw	t9,388(s0)
 43c:	ae080184 	sw	t0,388(s0)
 440:	ae000188 	sw	zero,392(s0)
 444:	e610018c 	swc1	$f16,396(s0)
 448:	1000007c 	b	63c <func_80AFBE8C+0x330>
 44c:	e6100190 	swc1	$f16,400(s0)
 450:	460c6482 	mul.s	$f18,$f12,$f12
 454:	24090001 	li	t1,1
 458:	460e7102 	mul.s	$f4,$f14,$f14
 45c:	46049000 	add.s	$f0,$f18,$f4
 460:	46000004 	sqrt.s	$f0,$f0
 464:	e7a00030 	swc1	$f0,48(sp)
 468:	ae090188 	sw	t1,392(s0)
 46c:	0c000000 	jal	0 <EnSiofuki_Init>
 470:	ae000184 	sw	zero,388(s0)
 474:	3c013f80 	lui	at,0x3f80
 478:	44811000 	mtc1	at,$f2
 47c:	3c010000 	lui	at,0x0
 480:	c4260000 	lwc1	$f6,0(at)
 484:	862a0032 	lh	t2,50(s1)
 488:	44808000 	mtc1	zero,$f16
 48c:	46060202 	mul.s	$f8,$f0,$f6
 490:	394b8000 	xori	t3,t2,0x8000
 494:	e630006c 	swc1	$f16,108(s1)
 498:	e6300060 	swc1	$f16,96(s1)
 49c:	8e050028 	lw	a1,40(s0)
 4a0:	26240028 	addiu	a0,s1,40
 4a4:	3c063f00 	lui	a2,0x3f00
 4a8:	4600428d 	trunc.w.s	$f10,$f8
 4ac:	3c074080 	lui	a3,0x4080
 4b0:	e7a20010 	swc1	$f2,16(sp)
 4b4:	440f5000 	mfc1	t7,$f10
 4b8:	00000000 	nop
 4bc:	016f1023 	subu	v0,t3,t7
 4c0:	00021400 	sll	v0,v0,0x10
 4c4:	00021403 	sra	v0,v0,0x10
 4c8:	0c000000 	jal	0 <EnSiofuki_Init>
 4cc:	a7a20034 	sh	v0,52(sp)
 4d0:	87a20034 	lh	v0,52(sp)
 4d4:	3c013f80 	lui	at,0x3f80
 4d8:	44811000 	mtc1	at,$f2
 4dc:	44808000 	mtc1	zero,$f16
 4e0:	28414000 	slti	at,v0,16384
 4e4:	1020002f 	beqz	at,5a4 <func_80AFBE8C+0x298>
 4e8:	2841c001 	slti	at,v0,-16383
 4ec:	1420002d 	bnez	at,5a4 <func_80AFBE8C+0x298>
 4f0:	3c014220 	lui	at,0x4220
 4f4:	44812000 	mtc1	at,$f4
 4f8:	c6120050 	lwc1	$f18,80(s0)
 4fc:	3c014120 	lui	at,0x4120
 500:	44814000 	mtc1	at,$f8
 504:	46049182 	mul.s	$f6,$f18,$f4
 508:	86380032 	lh	t8,50(s1)
 50c:	3b198000 	xori	t9,t8,0x8000
 510:	a6190194 	sh	t9,404(s0)
 514:	c7b20030 	lwc1	$f18,48(sp)
 518:	46083282 	mul.s	$f10,$f6,$f8
 51c:	460a9003 	div.s	$f0,$f18,$f10
 520:	4610003c 	c.lt.s	$f0,$f16
 524:	00000000 	nop
 528:	45020003 	bc1fl	538 <func_80AFBE8C+0x22c>
 52c:	4600103c 	c.lt.s	$f2,$f0
 530:	46008006 	mov.s	$f0,$f16
 534:	4600103c 	c.lt.s	$f2,$f0
 538:	00000000 	nop
 53c:	45020003 	bc1fl	54c <func_80AFBE8C+0x240>
 540:	c6240838 	lwc1	$f4,2104(s1)
 544:	46001006 	mov.s	$f0,$f2
 548:	c6240838 	lwc1	$f4,2104(s1)
 54c:	44061000 	mfc1	a2,$f2
 550:	44071000 	mfc1	a3,$f2
 554:	46002182 	mul.s	$f6,$f4,$f0
 558:	26040190 	addiu	a0,s0,400
 55c:	3c054040 	lui	a1,0x4040
 560:	e6260838 	swc1	$f6,2104(s1)
 564:	0c000000 	jal	0 <EnSiofuki_Init>
 568:	e7a0002c 	swc1	$f0,44(sp)
 56c:	3c013f80 	lui	at,0x3f80
 570:	44811000 	mtc1	at,$f2
 574:	3c010000 	lui	at,0x0
 578:	c7a0002c 	lwc1	$f0,44(sp)
 57c:	c4280000 	lwc1	$f8,0(at)
 580:	44061000 	mfc1	a2,$f2
 584:	2604018c 	addiu	a0,s0,396
 588:	46004482 	mul.s	$f18,$f8,$f0
 58c:	8e050190 	lw	a1,400(s0)
 590:	44079000 	mfc1	a3,$f18
 594:	0c000000 	jal	0 <EnSiofuki_Init>
 598:	00000000 	nop
 59c:	10000016 	b	5f8 <func_80AFBE8C+0x2ec>
 5a0:	86090194 	lh	t1,404(s0)
 5a4:	86280032 	lh	t0,50(s1)
 5a8:	3c013f00 	lui	at,0x3f00
 5ac:	44812000 	mtc1	at,$f4
 5b0:	a6080194 	sh	t0,404(s0)
 5b4:	c62a0838 	lwc1	$f10,2104(s1)
 5b8:	44061000 	mfc1	a2,$f2
 5bc:	44071000 	mfc1	a3,$f2
 5c0:	46045182 	mul.s	$f6,$f10,$f4
 5c4:	26040190 	addiu	a0,s0,400
 5c8:	3c054040 	lui	a1,0x4040
 5cc:	0c000000 	jal	0 <EnSiofuki_Init>
 5d0:	e6260838 	swc1	$f6,2104(s1)
 5d4:	3c013f80 	lui	at,0x3f80
 5d8:	44811000 	mtc1	at,$f2
 5dc:	3c073dcc 	lui	a3,0x3dcc
 5e0:	34e7cccd 	ori	a3,a3,0xcccd
 5e4:	44061000 	mfc1	a2,$f2
 5e8:	2604018c 	addiu	a0,s0,396
 5ec:	0c000000 	jal	0 <EnSiofuki_Init>
 5f0:	8e050190 	lw	a1,400(s0)
 5f4:	86090194 	lh	t1,404(s0)
 5f8:	a62908b0 	sh	t1,2224(s1)
 5fc:	c608018c 	lwc1	$f8,396(s0)
 600:	1000000e 	b	63c <func_80AFBE8C+0x330>
 604:	e62808ac 	swc1	$f8,2220(s1)
 608:	8e0a0188 	lw	t2,392(s0)
 60c:	44808000 	mtc1	zero,$f16
 610:	51400008 	beqzl	t2,634 <func_80AFBE8C+0x328>
 614:	e6100190 	swc1	$f16,400(s0)
 618:	c612018c 	lwc1	$f18,396(s0)
 61c:	c62a0838 	lwc1	$f10,2104(s1)
 620:	460a9100 	add.s	$f4,$f18,$f10
 624:	e6240838 	swc1	$f4,2104(s1)
 628:	860c0194 	lh	t4,404(s0)
 62c:	a62c083c 	sh	t4,2108(s1)
 630:	e6100190 	swc1	$f16,400(s0)
 634:	e610018c 	swc1	$f16,396(s0)
 638:	ae000188 	sw	zero,392(s0)
 63c:	8fbf0024 	lw	ra,36(sp)
 640:	8fb0001c 	lw	s0,28(sp)
 644:	8fb10020 	lw	s1,32(sp)
 648:	03e00008 	jr	ra
 64c:	27bd0048 	addiu	sp,sp,72

00000650 <func_80AFC1D0>:
 650:	27bdffe0 	addiu	sp,sp,-32
 654:	3c010000 	lui	at,0x0
 658:	c4240000 	lwc1	$f4,0(at)
 65c:	afbf001c 	sw	ra,28(sp)
 660:	afa40020 	sw	a0,32(sp)
 664:	afa50024 	sw	a1,36(sp)
 668:	00807025 	move	t6,a0
 66c:	8dc5017c 	lw	a1,380(t6)
 670:	3c063f4c 	lui	a2,0x3f4c
 674:	34c6cccd 	ori	a2,a2,0xcccd
 678:	24840180 	addiu	a0,a0,384
 67c:	3c074040 	lui	a3,0x4040
 680:	0c000000 	jal	0 <EnSiofuki_Init>
 684:	e7a40010 	swc1	$f4,16(sp)
 688:	8fbf001c 	lw	ra,28(sp)
 68c:	27bd0020 	addiu	sp,sp,32
 690:	03e00008 	jr	ra
 694:	00000000 	nop

00000698 <func_80AFC218>:
 698:	27bdffe0 	addiu	sp,sp,-32
 69c:	afbf001c 	sw	ra,28(sp)
 6a0:	afb10018 	sw	s1,24(sp)
 6a4:	afb00014 	sw	s0,20(sp)
 6a8:	00808025 	move	s0,a0
 6ac:	0c000000 	jal	0 <EnSiofuki_Init>
 6b0:	00a08825 	move	s1,a1
 6b4:	02002025 	move	a0,s0
 6b8:	0c000000 	jal	0 <EnSiofuki_Init>
 6bc:	02202825 	move	a1,s1
 6c0:	02002025 	move	a0,s0
 6c4:	0c000000 	jal	0 <EnSiofuki_Init>
 6c8:	02202825 	move	a1,s1
 6cc:	8e0e0168 	lw	t6,360(s0)
 6d0:	25c5ffff 	addiu	a1,t6,-1
 6d4:	04a10021 	bgez	a1,75c <func_80AFC218+0xc4>
 6d8:	ae050168 	sw	a1,360(s0)
 6dc:	9605001c 	lhu	a1,28(s0)
 6e0:	02202025 	move	a0,s1
 6e4:	00052983 	sra	a1,a1,0x6
 6e8:	0c000000 	jal	0 <EnSiofuki_Init>
 6ec:	30a5003f 	andi	a1,a1,0x3f
 6f0:	9602001c 	lhu	v0,28(s0)
 6f4:	3c180000 	lui	t8,0x0
 6f8:	3c014120 	lui	at,0x4120
 6fc:	00021b03 	sra	v1,v0,0xc
 700:	3063000f 	andi	v1,v1,0xf
 704:	10600006 	beqz	v1,720 <func_80AFC218+0x88>
 708:	27180000 	addiu	t8,t8,0
 70c:	24010001 	li	at,1
 710:	1061000a 	beq	v1,at,73c <func_80AFC218+0xa4>
 714:	3c190000 	lui	t9,0x0
 718:	10000016 	b	774 <func_80AFC218+0xdc>
 71c:	24010001 	li	at,1
 720:	9602001c 	lhu	v0,28(s0)
 724:	44812000 	mtc1	at,$f4
 728:	ae180164 	sw	t8,356(s0)
 72c:	00021b03 	sra	v1,v0,0xc
 730:	3063000f 	andi	v1,v1,0xf
 734:	1000000e 	b	770 <func_80AFC218+0xd8>
 738:	e604017c 	swc1	$f4,380(s0)
 73c:	9602001c 	lhu	v0,28(s0)
 740:	c6060198 	lwc1	$f6,408(s0)
 744:	27390000 	addiu	t9,t9,0
 748:	00021b03 	sra	v1,v0,0xc
 74c:	ae190164 	sw	t9,356(s0)
 750:	3063000f 	andi	v1,v1,0xf
 754:	10000006 	b	770 <func_80AFC218+0xd8>
 758:	e606017c 	swc1	$f6,380(s0)
 75c:	0c000000 	jal	0 <EnSiofuki_Init>
 760:	02002025 	move	a0,s0
 764:	9602001c 	lhu	v0,28(s0)
 768:	00021b03 	sra	v1,v0,0xc
 76c:	3063000f 	andi	v1,v1,0xf
 770:	24010001 	li	at,1
 774:	14610010 	bne	v1,at,7b8 <func_80AFC218+0x120>
 778:	02202025 	move	a0,s1
 77c:	0c000000 	jal	0 <EnSiofuki_Init>
 780:	3045003f 	andi	a1,v0,0x3f
 784:	1040000c 	beqz	v0,7b8 <func_80AFC218+0x120>
 788:	3c01c234 	lui	at,0xc234
 78c:	9605001c 	lhu	a1,28(s0)
 790:	44810000 	mtc1	at,$f0
 794:	02202025 	move	a0,s1
 798:	00052983 	sra	a1,a1,0x6
 79c:	30a5003f 	andi	a1,a1,0x3f
 7a0:	e6000180 	swc1	$f0,384(s0)
 7a4:	0c000000 	jal	0 <EnSiofuki_Init>
 7a8:	e600017c 	swc1	$f0,380(s0)
 7ac:	3c080000 	lui	t0,0x0
 7b0:	25080000 	addiu	t0,t0,0
 7b4:	ae080164 	sw	t0,356(s0)
 7b8:	8fbf001c 	lw	ra,28(sp)
 7bc:	8fb00014 	lw	s0,20(sp)
 7c0:	8fb10018 	lw	s1,24(sp)
 7c4:	03e00008 	jr	ra
 7c8:	27bd0020 	addiu	sp,sp,32

000007cc <func_80AFC34C>:
 7cc:	27bdffe0 	addiu	sp,sp,-32
 7d0:	afbf001c 	sw	ra,28(sp)
 7d4:	afb00018 	sw	s0,24(sp)
 7d8:	00808025 	move	s0,a0
 7dc:	0c000000 	jal	0 <EnSiofuki_Init>
 7e0:	afa50024 	sw	a1,36(sp)
 7e4:	02002025 	move	a0,s0
 7e8:	0c000000 	jal	0 <EnSiofuki_Init>
 7ec:	8fa50024 	lw	a1,36(sp)
 7f0:	02002025 	move	a0,s0
 7f4:	0c000000 	jal	0 <EnSiofuki_Init>
 7f8:	8fa50024 	lw	a1,36(sp)
 7fc:	9605001c 	lhu	a1,28(s0)
 800:	8fa40024 	lw	a0,36(sp)
 804:	00052983 	sra	a1,a1,0x6
 808:	0c000000 	jal	0 <EnSiofuki_Init>
 80c:	30a5003f 	andi	a1,a1,0x3f
 810:	10400008 	beqz	v0,834 <func_80AFC34C+0x68>
 814:	3c0143c8 	lui	at,0x43c8
 818:	44812000 	mtc1	at,$f4
 81c:	3c0f0000 	lui	t7,0x0
 820:	240e012c 	li	t6,300
 824:	25ef0000 	addiu	t7,t7,0
 828:	ae0e0168 	sw	t6,360(s0)
 82c:	ae0f0164 	sw	t7,356(s0)
 830:	e604017c 	swc1	$f4,380(s0)
 834:	8fbf001c 	lw	ra,28(sp)
 838:	8fb00018 	lw	s0,24(sp)
 83c:	27bd0020 	addiu	sp,sp,32
 840:	03e00008 	jr	ra
 844:	00000000 	nop

00000848 <func_80AFC3C8>:
 848:	27bdffe0 	addiu	sp,sp,-32
 84c:	afbf001c 	sw	ra,28(sp)
 850:	afb00018 	sw	s0,24(sp)
 854:	00808025 	move	s0,a0
 858:	0c000000 	jal	0 <EnSiofuki_Init>
 85c:	afa50024 	sw	a1,36(sp)
 860:	02002025 	move	a0,s0
 864:	0c000000 	jal	0 <EnSiofuki_Init>
 868:	8fa50024 	lw	a1,36(sp)
 86c:	02002025 	move	a0,s0
 870:	0c000000 	jal	0 <EnSiofuki_Init>
 874:	8fa50024 	lw	a1,36(sp)
 878:	8e0e0168 	lw	t6,360(s0)
 87c:	3c01c234 	lui	at,0xc234
 880:	3c090000 	lui	t1,0x0
 884:	25cfffff 	addiu	t7,t6,-1
 888:	05e1000a 	bgez	t7,8b4 <func_80AFC3C8+0x6c>
 88c:	ae0f0168 	sw	t7,360(s0)
 890:	86190196 	lh	t9,406(s0)
 894:	44812000 	mtc1	at,$f4
 898:	25290000 	addiu	t1,t1,0
 89c:	00194080 	sll	t0,t9,0x2
 8a0:	01194021 	addu	t0,t0,t9
 8a4:	00084080 	sll	t0,t0,0x2
 8a8:	ae080168 	sw	t0,360(s0)
 8ac:	ae090164 	sw	t1,356(s0)
 8b0:	e604017c 	swc1	$f4,380(s0)
 8b4:	9605001c 	lhu	a1,28(s0)
 8b8:	8fa40024 	lw	a0,36(sp)
 8bc:	0c000000 	jal	0 <EnSiofuki_Init>
 8c0:	30a5003f 	andi	a1,a1,0x3f
 8c4:	3c01c234 	lui	at,0xc234
 8c8:	44810000 	mtc1	at,$f0
 8cc:	10400005 	beqz	v0,8e4 <func_80AFC3C8+0x9c>
 8d0:	3c0a0000 	lui	t2,0x0
 8d4:	254a0000 	addiu	t2,t2,0
 8d8:	e6000180 	swc1	$f0,384(s0)
 8dc:	e600017c 	swc1	$f0,380(s0)
 8e0:	ae0a0164 	sw	t2,356(s0)
 8e4:	8fbf001c 	lw	ra,28(sp)
 8e8:	8fb00018 	lw	s0,24(sp)
 8ec:	27bd0020 	addiu	sp,sp,32
 8f0:	03e00008 	jr	ra
 8f4:	00000000 	nop

000008f8 <func_80AFC478>:
 8f8:	27bdffd8 	addiu	sp,sp,-40
 8fc:	afbf0024 	sw	ra,36(sp)
 900:	afb10020 	sw	s1,32(sp)
 904:	afb0001c 	sw	s0,28(sp)
 908:	00808025 	move	s0,a0
 90c:	0c000000 	jal	0 <EnSiofuki_Init>
 910:	00a08825 	move	s1,a1
 914:	02002025 	move	a0,s0
 918:	0c000000 	jal	0 <EnSiofuki_Init>
 91c:	02202825 	move	a1,s1
 920:	02002025 	move	a0,s0
 924:	0c000000 	jal	0 <EnSiofuki_Init>
 928:	02202825 	move	a1,s1
 92c:	9602001c 	lhu	v0,28(s0)
 930:	24010001 	li	at,1
 934:	02202025 	move	a0,s1
 938:	00027303 	sra	t6,v0,0xc
 93c:	31cf000f 	andi	t7,t6,0xf
 940:	15e1001b 	bne	t7,at,9b0 <func_80AFC478+0xb8>
 944:	00022983 	sra	a1,v0,0x6
 948:	0c000000 	jal	0 <EnSiofuki_Init>
 94c:	30a5003f 	andi	a1,a1,0x3f
 950:	1040000b 	beqz	v0,980 <func_80AFC478+0x88>
 954:	24180014 	li	t8,20
 958:	3c190000 	lui	t9,0x0
 95c:	27390000 	addiu	t9,t9,0
 960:	ae180168 	sw	t8,360(s0)
 964:	ae190164 	sw	t9,356(s0)
 968:	afa00010 	sw	zero,16(sp)
 96c:	02202025 	move	a0,s1
 970:	24051392 	li	a1,5010
 974:	24060028 	li	a2,40
 978:	0c000000 	jal	0 <EnSiofuki_Init>
 97c:	02003825 	move	a3,s0
 980:	9605001c 	lhu	a1,28(s0)
 984:	02202025 	move	a0,s1
 988:	0c000000 	jal	0 <EnSiofuki_Init>
 98c:	30a5003f 	andi	a1,a1,0x3f
 990:	10400007 	beqz	v0,9b0 <func_80AFC478+0xb8>
 994:	3c01c234 	lui	at,0xc234
 998:	44810000 	mtc1	at,$f0
 99c:	3c080000 	lui	t0,0x0
 9a0:	25080000 	addiu	t0,t0,0
 9a4:	ae080164 	sw	t0,356(s0)
 9a8:	e6000180 	swc1	$f0,384(s0)
 9ac:	e600017c 	swc1	$f0,380(s0)
 9b0:	8fbf0024 	lw	ra,36(sp)
 9b4:	8fb0001c 	lw	s0,28(sp)
 9b8:	8fb10020 	lw	s1,32(sp)
 9bc:	03e00008 	jr	ra
 9c0:	27bd0028 	addiu	sp,sp,40

000009c4 <func_80AFC544>:
 9c4:	27bdffe8 	addiu	sp,sp,-24
 9c8:	afbf0014 	sw	ra,20(sp)
 9cc:	afa40018 	sw	a0,24(sp)
 9d0:	0c000000 	jal	0 <EnSiofuki_Init>
 9d4:	afa5001c 	sw	a1,28(sp)
 9d8:	8fa40018 	lw	a0,24(sp)
 9dc:	0c000000 	jal	0 <EnSiofuki_Init>
 9e0:	8fa5001c 	lw	a1,28(sp)
 9e4:	8fbf0014 	lw	ra,20(sp)
 9e8:	27bd0018 	addiu	sp,sp,24
 9ec:	03e00008 	jr	ra
 9f0:	00000000 	nop

000009f4 <EnSiofuki_Update>:
 9f4:	27bdffe8 	addiu	sp,sp,-24
 9f8:	afbf0014 	sw	ra,20(sp)
 9fc:	8c990164 	lw	t9,356(a0)
 a00:	0320f809 	jalr	t9
 a04:	00000000 	nop
 a08:	8fbf0014 	lw	ra,20(sp)
 a0c:	27bd0018 	addiu	sp,sp,24
 a10:	03e00008 	jr	ra
 a14:	00000000 	nop

00000a18 <EnSiofuki_Draw>:
 a18:	27bdff80 	addiu	sp,sp,-128
 a1c:	3c0f0001 	lui	t7,0x1
 a20:	afbf003c 	sw	ra,60(sp)
 a24:	afb10038 	sw	s1,56(sp)
 a28:	afb00034 	sw	s0,52(sp)
 a2c:	afa50084 	sw	a1,132(sp)
 a30:	01e57821 	addu	t7,t7,a1
 a34:	8def1de4 	lw	t7,7652(t7)
 a38:	00808825 	move	s1,a0
 a3c:	3c060000 	lui	a2,0x0
 a40:	afaf0070 	sw	t7,112(sp)
 a44:	8ca50000 	lw	a1,0(a1)
 a48:	24c60000 	addiu	a2,a2,0
 a4c:	27a4005c 	addiu	a0,sp,92
 a50:	2407028e 	li	a3,654
 a54:	0c000000 	jal	0 <EnSiofuki_Init>
 a58:	00a08025 	move	s0,a1
 a5c:	8fb80084 	lw	t8,132(sp)
 a60:	0c000000 	jal	0 <EnSiofuki_Init>
 a64:	8f040000 	lw	a0,0(t8)
 a68:	44806000 	mtc1	zero,$f12
 a6c:	c62e0170 	lwc1	$f14,368(s1)
 a70:	24070001 	li	a3,1
 a74:	44066000 	mfc1	a2,$f12
 a78:	0c000000 	jal	0 <EnSiofuki_Init>
 a7c:	00000000 	nop
 a80:	3c013f80 	lui	at,0x3f80
 a84:	44816000 	mtc1	at,$f12
 a88:	24070001 	li	a3,1
 a8c:	44066000 	mfc1	a2,$f12
 a90:	0c000000 	jal	0 <EnSiofuki_Init>
 a94:	46006386 	mov.s	$f14,$f12
 a98:	8e0202d0 	lw	v0,720(s0)
 a9c:	3c09da38 	lui	t1,0xda38
 aa0:	35290003 	ori	t1,t1,0x3
 aa4:	24590008 	addiu	t9,v0,8
 aa8:	ae1902d0 	sw	t9,720(s0)
 aac:	ac490000 	sw	t1,0(v0)
 ab0:	8faa0084 	lw	t2,132(sp)
 ab4:	3c050000 	lui	a1,0x0
 ab8:	24a50000 	addiu	a1,a1,0
 abc:	8d440000 	lw	a0,0(t2)
 ac0:	24060296 	li	a2,662
 ac4:	0c000000 	jal	0 <EnSiofuki_Init>
 ac8:	afa20058 	sw	v0,88(sp)
 acc:	8fa30058 	lw	v1,88(sp)
 ad0:	3c0cdb06 	lui	t4,0xdb06
 ad4:	358c0020 	ori	t4,t4,0x20
 ad8:	ac620004 	sw	v0,4(v1)
 adc:	8e0202d0 	lw	v0,720(s0)
 ae0:	8fa80070 	lw	t0,112(sp)
 ae4:	240f0040 	li	t7,64
 ae8:	244b0008 	addiu	t3,v0,8
 aec:	ae0b02d0 	sw	t3,720(s0)
 af0:	ac4c0000 	sw	t4,0(v0)
 af4:	8fad0084 	lw	t5,132(sp)
 af8:	00080823 	negu	at,t0
 afc:	00013900 	sll	a3,at,0x4
 b00:	8da40000 	lw	a0,0(t5)
 b04:	00083100 	sll	a2,t0,0x4
 b08:	00e13823 	subu	a3,a3,at
 b0c:	240e0040 	li	t6,64
 b10:	24180001 	li	t8,1
 b14:	24190040 	li	t9,64
 b18:	24090040 	li	t1,64
 b1c:	00c83023 	subu	a2,a2,t0
 b20:	afa6001c 	sw	a2,28(sp)
 b24:	afa90028 	sw	t1,40(sp)
 b28:	afb90024 	sw	t9,36(sp)
 b2c:	afb80018 	sw	t8,24(sp)
 b30:	afae0014 	sw	t6,20(sp)
 b34:	afa70020 	sw	a3,32(sp)
 b38:	afaf0010 	sw	t7,16(sp)
 b3c:	00002825 	move	a1,zero
 b40:	0c000000 	jal	0 <EnSiofuki_Init>
 b44:	afa20054 	sw	v0,84(sp)
 b48:	8fa30054 	lw	v1,84(sp)
 b4c:	3c0c0600 	lui	t4,0x600
 b50:	258c0b70 	addiu	t4,t4,2928
 b54:	ac620004 	sw	v0,4(v1)
 b58:	8e0202d0 	lw	v0,720(s0)
 b5c:	3c0bde00 	lui	t3,0xde00
 b60:	3c060000 	lui	a2,0x0
 b64:	244a0008 	addiu	t2,v0,8
 b68:	ae0a02d0 	sw	t2,720(s0)
 b6c:	ac4c0004 	sw	t4,4(v0)
 b70:	ac4b0000 	sw	t3,0(v0)
 b74:	8fad0084 	lw	t5,132(sp)
 b78:	24c60000 	addiu	a2,a2,0
 b7c:	27a4005c 	addiu	a0,sp,92
 b80:	240702a2 	li	a3,674
 b84:	0c000000 	jal	0 <EnSiofuki_Init>
 b88:	8da50000 	lw	a1,0(t5)
 b8c:	922f019c 	lbu	t7,412(s1)
 b90:	31ee0001 	andi	t6,t7,0x1
 b94:	51c00030 	beqzl	t6,c58 <EnSiofuki_Draw+0x240>
 b98:	8fbf003c 	lw	ra,60(sp)
 b9c:	9622001c 	lhu	v0,28(s1)
 ba0:	3c014120 	lui	at,0x4120
 ba4:	00021303 	sra	v0,v0,0xc
 ba8:	3042000f 	andi	v0,v0,0xf
 bac:	50400007 	beqzl	v0,bcc <EnSiofuki_Draw+0x1b4>
 bb0:	c6240180 	lwc1	$f4,384(s1)
 bb4:	24010001 	li	at,1
 bb8:	50410014 	beql	v0,at,c0c <EnSiofuki_Draw+0x1f4>
 bbc:	3c01c20c 	lui	at,0xc20c
 bc0:	10000025 	b	c58 <EnSiofuki_Draw+0x240>
 bc4:	8fbf003c 	lw	ra,60(sp)
 bc8:	c6240180 	lwc1	$f4,384(s1)
 bcc:	44813000 	mtc1	at,$f6
 bd0:	3c0143c3 	lui	at,0x43c3
 bd4:	44815000 	mtc1	at,$f10
 bd8:	46062201 	sub.s	$f8,$f4,$f6
 bdc:	3c013f80 	lui	at,0x3f80
 be0:	44818000 	mtc1	at,$f16
 be4:	262400e4 	addiu	a0,s1,228
 be8:	460a4003 	div.s	$f0,$f8,$f10
 bec:	24052041 	li	a1,8257
 bf0:	46008480 	add.s	$f18,$f16,$f0
 bf4:	44069000 	mfc1	a2,$f18
 bf8:	0c000000 	jal	0 <EnSiofuki_Init>
 bfc:	00000000 	nop
 c00:	10000015 	b	c58 <EnSiofuki_Draw+0x240>
 c04:	8fbf003c 	lw	ra,60(sp)
 c08:	3c01c20c 	lui	at,0xc20c
 c0c:	44816000 	mtc1	at,$f12
 c10:	c6220180 	lwc1	$f2,384(s1)
 c14:	4602603c 	c.lt.s	$f12,$f2
 c18:	00000000 	nop
 c1c:	4502000e 	bc1fl	c58 <EnSiofuki_Draw+0x240>
 c20:	8fbf003c 	lw	ra,60(sp)
 c24:	c6260198 	lwc1	$f6,408(s1)
 c28:	460c1101 	sub.s	$f4,$f2,$f12
 c2c:	3c013f80 	lui	at,0x3f80
 c30:	44815000 	mtc1	at,$f10
 c34:	460c3201 	sub.s	$f8,$f6,$f12
 c38:	262400e4 	addiu	a0,s1,228
 c3c:	24052041 	li	a1,8257
 c40:	46082003 	div.s	$f0,$f4,$f8
 c44:	46005400 	add.s	$f16,$f10,$f0
 c48:	44068000 	mfc1	a2,$f16
 c4c:	0c000000 	jal	0 <EnSiofuki_Init>
 c50:	00000000 	nop
 c54:	8fbf003c 	lw	ra,60(sp)
 c58:	8fb00034 	lw	s0,52(sp)
 c5c:	8fb10038 	lw	s1,56(sp)
 c60:	03e00008 	jr	ra
 c64:	27bd0080 	addiu	sp,sp,128
	...
