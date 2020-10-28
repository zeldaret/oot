
build/src/overlays/actors/ovl_Bg_Haka_Huta/z_bg_haka_huta.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaHuta_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgHakaHuta_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgHakaHuta_Init>
  2c:	24050001 	li	a1,1
  30:	3c040600 	lui	a0,0x600
  34:	24840870 	addiu	a0,a0,2160
  38:	0c000000 	jal	0 <BgHakaHuta_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	8fa40034 	lw	a0,52(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70024 	lw	a3,36(sp)
  4c:	0c000000 	jal	0 <BgHakaHuta_Init>
  50:	24850810 	addiu	a1,a0,2064
  54:	860e001c 	lh	t6,28(s0)
  58:	8619001c 	lh	t9,28(s0)
  5c:	ae02014c 	sw	v0,332(s0)
  60:	000e7a03 	sra	t7,t6,0x8
  64:	31f800ff 	andi	t8,t7,0xff
  68:	332800ff 	andi	t0,t9,0xff
  6c:	a618016a 	sh	t8,362(s0)
  70:	a608001c 	sh	t0,28(s0)
  74:	8605001c 	lh	a1,28(s0)
  78:	0c000000 	jal	0 <BgHakaHuta_Init>
  7c:	8fa40034 	lw	a0,52(sp)
  80:	10400007 	beqz	v0,a0 <BgHakaHuta_Init+0xa0>
  84:	3c0b0000 	lui	t3,0x0
  88:	3c0a0000 	lui	t2,0x0
  8c:	2409ffff 	li	t1,-1
  90:	254a0000 	addiu	t2,t2,0
  94:	a6090168 	sh	t1,360(s0)
  98:	10000003 	b	a8 <BgHakaHuta_Init+0xa8>
  9c:	ae0a0164 	sw	t2,356(s0)
  a0:	256b0000 	addiu	t3,t3,0
  a4:	ae0b0164 	sw	t3,356(s0)
  a8:	8fbf001c 	lw	ra,28(sp)
  ac:	8fb00018 	lw	s0,24(sp)
  b0:	27bd0030 	addiu	sp,sp,48
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <BgHakaHuta_Destroy>:
  bc:	27bdffe8 	addiu	sp,sp,-24
  c0:	afa40018 	sw	a0,24(sp)
  c4:	8fae0018 	lw	t6,24(sp)
  c8:	afbf0014 	sw	ra,20(sp)
  cc:	00a02025 	move	a0,a1
  d0:	24a50810 	addiu	a1,a1,2064
  d4:	0c000000 	jal	0 <BgHakaHuta_Init>
  d8:	8dc6014c 	lw	a2,332(t6)
  dc:	8fbf0014 	lw	ra,20(sp)
  e0:	27bd0018 	addiu	sp,sp,24
  e4:	03e00008 	jr	ra
  e8:	00000000 	nop

000000ec <func_8087D0AC>:
  ec:	27bdff58 	addiu	sp,sp,-168
  f0:	afbf0074 	sw	ra,116(sp)
  f4:	afbe0070 	sw	s8,112(sp)
  f8:	afb7006c 	sw	s7,108(sp)
  fc:	afb60068 	sw	s6,104(sp)
 100:	afb50064 	sw	s5,100(sp)
 104:	afb40060 	sw	s4,96(sp)
 108:	afb3005c 	sw	s3,92(sp)
 10c:	afb20058 	sw	s2,88(sp)
 110:	afb10054 	sw	s1,84(sp)
 114:	afb00050 	sw	s0,80(sp)
 118:	f7bc0048 	sdc1	$f28,72(sp)
 11c:	f7ba0040 	sdc1	$f26,64(sp)
 120:	f7b80038 	sdc1	$f24,56(sp)
 124:	f7b60030 	sdc1	$f22,48(sp)
 128:	f7b40028 	sdc1	$f20,40(sp)
 12c:	afa500ac 	sw	a1,172(sp)
 130:	848e0032 	lh	t6,50(a0)
 134:	00808825 	move	s1,a0
 138:	3c01bf80 	lui	at,0xbf80
 13c:	55c00006 	bnezl	t6,158 <func_8087D0AC+0x6c>
 140:	4481a000 	mtc1	at,$f20
 144:	3c013f80 	lui	at,0x3f80
 148:	4481a000 	mtc1	at,$f20
 14c:	10000004 	b	160 <func_8087D0AC+0x74>
 150:	3c01bf00 	lui	at,0xbf00
 154:	4481a000 	mtc1	at,$f20
 158:	00000000 	nop
 15c:	3c01bf00 	lui	at,0xbf00
 160:	44812000 	mtc1	at,$f4
 164:	44801000 	mtc1	zero,$f2
 168:	3c014248 	lui	at,0x4248
 16c:	46142182 	mul.s	$f6,$f4,$f20
 170:	e7a2008c 	swc1	$f2,140(sp)
 174:	e7a20090 	swc1	$f2,144(sp)
 178:	4481e000 	mtc1	at,$f28
 17c:	3c170000 	lui	s7,0x0
 180:	3c160000 	lui	s6,0x0
 184:	3c150000 	lui	s5,0x0
 188:	e7a60088 	swc1	$f6,136(sp)
 18c:	c6280028 	lwc1	$f8,40(s1)
 190:	26b50000 	addiu	s5,s5,0
 194:	26d60000 	addiu	s6,s6,0
 198:	e7a80098 	swc1	$f8,152(sp)
 19c:	c62a002c 	lwc1	$f10,44(s1)
 1a0:	44814000 	mtc1	at,$f8
 1a4:	3c014120 	lui	at,0x4120
 1a8:	e7aa009c 	swc1	$f10,156(sp)
 1ac:	c6320008 	lwc1	$f18,8(s1)
 1b0:	c6300024 	lwc1	$f16,36(s1)
 1b4:	4481d000 	mtc1	at,$f26
 1b8:	3c0142f0 	lui	at,0x42f0
 1bc:	46128101 	sub.s	$f4,$f16,$f18
 1c0:	4481c000 	mtc1	at,$f24
 1c4:	26f70000 	addiu	s7,s7,0
 1c8:	00008025 	move	s0,zero
 1cc:	46142182 	mul.s	$f6,$f4,$f20
 1d0:	241e0004 	li	s8,4
 1d4:	27b40088 	addiu	s4,sp,136
 1d8:	27b30094 	addiu	s3,sp,148
 1dc:	24120002 	li	s2,2
 1e0:	46064001 	sub.s	$f0,$f8,$f6
 1e4:	46140582 	mul.s	$f22,$f0,$f20
 1e8:	00000000 	nop
 1ec:	16120005 	bne	s0,s2,204 <func_8087D0AC+0x118>
 1f0:	00000000 	nop
 1f4:	4614c402 	mul.s	$f16,$f24,$f20
 1f8:	c7aa009c 	lwc1	$f10,156(sp)
 1fc:	46105480 	add.s	$f18,$f10,$f16
 200:	e7b2009c 	swc1	$f18,156(sp)
 204:	0c000000 	jal	0 <BgHakaHuta_Init>
 208:	00000000 	nop
 20c:	46160202 	mul.s	$f8,$f0,$f22
 210:	c6240008 	lwc1	$f4,8(s1)
 214:	46082181 	sub.s	$f6,$f4,$f8
 218:	0c000000 	jal	0 <BgHakaHuta_Init>
 21c:	e7a60094 	swc1	$f6,148(sp)
 220:	461a0282 	mul.s	$f10,$f0,$f26
 224:	2419000a 	li	t9,10
 228:	afb9001c 	sw	t9,28(sp)
 22c:	8fa400ac 	lw	a0,172(sp)
 230:	02602825 	move	a1,s3
 234:	02803025 	move	a2,s4
 238:	02a03825 	move	a3,s5
 23c:	461c5400 	add.s	$f16,$f10,$f28
 240:	afb60010 	sw	s6,16(sp)
 244:	afb70014 	sw	s7,20(sp)
 248:	4600848d 	trunc.w.s	$f18,$f16
 24c:	44189000 	mfc1	t8,$f18
 250:	0c000000 	jal	0 <BgHakaHuta_Init>
 254:	afb80018 	sw	t8,24(sp)
 258:	26100001 	addiu	s0,s0,1
 25c:	161effe3 	bne	s0,s8,1ec <func_8087D0AC+0x100>
 260:	00000000 	nop
 264:	8fbf0074 	lw	ra,116(sp)
 268:	d7b40028 	ldc1	$f20,40(sp)
 26c:	d7b60030 	ldc1	$f22,48(sp)
 270:	d7b80038 	ldc1	$f24,56(sp)
 274:	d7ba0040 	ldc1	$f26,64(sp)
 278:	d7bc0048 	ldc1	$f28,72(sp)
 27c:	8fb00050 	lw	s0,80(sp)
 280:	8fb10054 	lw	s1,84(sp)
 284:	8fb20058 	lw	s2,88(sp)
 288:	8fb3005c 	lw	s3,92(sp)
 28c:	8fb40060 	lw	s4,96(sp)
 290:	8fb50064 	lw	s5,100(sp)
 294:	8fb60068 	lw	s6,104(sp)
 298:	8fb7006c 	lw	s7,108(sp)
 29c:	8fbe0070 	lw	s8,112(sp)
 2a0:	03e00008 	jr	ra
 2a4:	27bd00a8 	addiu	sp,sp,168

000002a8 <func_8087D268>:
 2a8:	27bdffd0 	addiu	sp,sp,-48
 2ac:	afbf001c 	sw	ra,28(sp)
 2b0:	afb00018 	sw	s0,24(sp)
 2b4:	afa50034 	sw	a1,52(sp)
 2b8:	afa60038 	sw	a2,56(sp)
 2bc:	848e00b6 	lh	t6,182(a0)
 2c0:	00808025 	move	s0,a0
 2c4:	30c7ffff 	andi	a3,a2,0xffff
 2c8:	15c00007 	bnez	t6,2e8 <func_8087D268+0x40>
 2cc:	3c0142f0 	lui	at,0x42f0
 2d0:	3c0142f0 	lui	at,0x42f0
 2d4:	44813000 	mtc1	at,$f6
 2d8:	c484002c 	lwc1	$f4,44(a0)
 2dc:	46062200 	add.s	$f8,$f4,$f6
 2e0:	10000006 	b	2fc <func_8087D268+0x54>
 2e4:	e7a8002c 	swc1	$f8,44(sp)
 2e8:	c60a002c 	lwc1	$f10,44(s0)
 2ec:	44818000 	mtc1	at,$f16
 2f0:	00000000 	nop
 2f4:	46105481 	sub.s	$f18,$f10,$f16
 2f8:	e7b2002c 	swc1	$f18,44(sp)
 2fc:	c6040024 	lwc1	$f4,36(s0)
 300:	8fa40034 	lw	a0,52(sp)
 304:	27a50024 	addiu	a1,sp,36
 308:	e7a40024 	swc1	$f4,36(sp)
 30c:	c6060028 	lwc1	$f6,40(s0)
 310:	2406001e 	li	a2,30
 314:	0c000000 	jal	0 <BgHakaHuta_Init>
 318:	e7a60028 	swc1	$f6,40(sp)
 31c:	8fbf001c 	lw	ra,28(sp)
 320:	8fb00018 	lw	s0,24(sp)
 324:	27bd0030 	addiu	sp,sp,48
 328:	03e00008 	jr	ra
 32c:	00000000 	nop

00000330 <func_8087D2F0>:
 330:	27bdffb0 	addiu	sp,sp,-80
 334:	afb0002c 	sw	s0,44(sp)
 338:	00808025 	move	s0,a0
 33c:	afb10030 	sw	s1,48(sp)
 340:	00a08825 	move	s1,a1
 344:	afbf0034 	sw	ra,52(sp)
 348:	00a02025 	move	a0,a1
 34c:	0c000000 	jal	0 <BgHakaHuta_Init>
 350:	8605001c 	lh	a1,28(s0)
 354:	504000a4 	beqzl	v0,5e8 <func_8087D2F0+0x2b8>
 358:	8fbf0034 	lw	ra,52(sp)
 35c:	0c000000 	jal	0 <BgHakaHuta_Init>
 360:	02202025 	move	a0,s1
 364:	1440009f 	bnez	v0,5e4 <func_8087D2F0+0x2b4>
 368:	240e0019 	li	t6,25
 36c:	3c0f0000 	lui	t7,0x0
 370:	25ef0000 	addiu	t7,t7,0
 374:	a60e0168 	sh	t6,360(s0)
 378:	ae0f0164 	sw	t7,356(s0)
 37c:	afa00010 	sw	zero,16(sp)
 380:	02202025 	move	a0,s1
 384:	24051771 	li	a1,6001
 388:	240603e7 	li	a2,999
 38c:	0c000000 	jal	0 <BgHakaHuta_Init>
 390:	02003825 	move	a3,s0
 394:	8603016a 	lh	v1,362(s0)
 398:	24010002 	li	at,2
 39c:	54610061 	bnel	v1,at,524 <func_8087D2F0+0x1f4>
 3a0:	24010001 	li	at,1
 3a4:	0c000000 	jal	0 <BgHakaHuta_Init>
 3a8:	860400b6 	lh	a0,182(s0)
 3ac:	e7a00040 	swc1	$f0,64(sp)
 3b0:	0c000000 	jal	0 <BgHakaHuta_Init>
 3b4:	860400b6 	lh	a0,182(s0)
 3b8:	e7a00044 	swc1	$f0,68(sp)
 3bc:	0c000000 	jal	0 <BgHakaHuta_Init>
 3c0:	860400b6 	lh	a0,182(s0)
 3c4:	e7a00048 	swc1	$f0,72(sp)
 3c8:	0c000000 	jal	0 <BgHakaHuta_Init>
 3cc:	860400b6 	lh	a0,182(s0)
 3d0:	3c01c1c8 	lui	at,0xc1c8
 3d4:	44811000 	mtc1	at,$f2
 3d8:	c7a60040 	lwc1	$f6,64(sp)
 3dc:	3c014220 	lui	at,0x4220
 3e0:	44816000 	mtc1	at,$f12
 3e4:	46061202 	mul.s	$f8,$f2,$f6
 3e8:	c7b00044 	lwc1	$f16,68(sp)
 3ec:	c6040024 	lwc1	$f4,36(s0)
 3f0:	3c014120 	lui	at,0x4120
 3f4:	460c8482 	mul.s	$f18,$f16,$f12
 3f8:	26241c24 	addiu	a0,s1,7204
 3fc:	24080002 	li	t0,2
 400:	02202825 	move	a1,s1
 404:	24060013 	li	a2,19
 408:	46082280 	add.s	$f10,$f4,$f8
 40c:	44814000 	mtc1	at,$f8
 410:	c6040028 	lwc1	$f4,40(s0)
 414:	34018000 	li	at,0x8000
 418:	460a9180 	add.s	$f6,$f18,$f10
 41c:	c7aa0048 	lwc1	$f10,72(sp)
 420:	46082401 	sub.s	$f16,$f4,$f8
 424:	44073000 	mfc1	a3,$f6
 428:	460a1182 	mul.s	$f6,$f2,$f10
 42c:	e7b00010 	swc1	$f16,16(sp)
 430:	460c0202 	mul.s	$f8,$f0,$f12
 434:	c612002c 	lwc1	$f18,44(s0)
 438:	afa00018 	sw	zero,24(sp)
 43c:	46069101 	sub.s	$f4,$f18,$f6
 440:	46044400 	add.s	$f16,$f8,$f4
 444:	e7b00014 	swc1	$f16,20(sp)
 448:	861800b6 	lh	t8,182(s0)
 44c:	afa4003c 	sw	a0,60(sp)
 450:	afa80024 	sw	t0,36(sp)
 454:	0301c821 	addu	t9,t8,at
 458:	afb9001c 	sw	t9,28(sp)
 45c:	0c000000 	jal	0 <BgHakaHuta_Init>
 460:	afa00020 	sw	zero,32(sp)
 464:	0c000000 	jal	0 <BgHakaHuta_Init>
 468:	860400b6 	lh	a0,182(s0)
 46c:	e7a00040 	swc1	$f0,64(sp)
 470:	0c000000 	jal	0 <BgHakaHuta_Init>
 474:	860400b6 	lh	a0,182(s0)
 478:	e7a00044 	swc1	$f0,68(sp)
 47c:	0c000000 	jal	0 <BgHakaHuta_Init>
 480:	860400b6 	lh	a0,182(s0)
 484:	e7a00048 	swc1	$f0,72(sp)
 488:	0c000000 	jal	0 <BgHakaHuta_Init>
 48c:	860400b6 	lh	a0,182(s0)
 490:	3c0142a0 	lui	at,0x42a0
 494:	44811000 	mtc1	at,$f2
 498:	3c01c1c8 	lui	at,0xc1c8
 49c:	44816000 	mtc1	at,$f12
 4a0:	c7b20040 	lwc1	$f18,64(sp)
 4a4:	c7a40044 	lwc1	$f4,68(sp)
 4a8:	c60a0024 	lwc1	$f10,36(s0)
 4ac:	46126182 	mul.s	$f6,$f12,$f18
 4b0:	3c014120 	lui	at,0x4120
 4b4:	240a0002 	li	t2,2
 4b8:	46022402 	mul.s	$f16,$f4,$f2
 4bc:	8fa4003c 	lw	a0,60(sp)
 4c0:	02202825 	move	a1,s1
 4c4:	24060013 	li	a2,19
 4c8:	46065200 	add.s	$f8,$f10,$f6
 4cc:	44813000 	mtc1	at,$f6
 4d0:	c60a0028 	lwc1	$f10,40(s0)
 4d4:	46088480 	add.s	$f18,$f16,$f8
 4d8:	c7a80048 	lwc1	$f8,72(sp)
 4dc:	46065101 	sub.s	$f4,$f10,$f6
 4e0:	44079000 	mfc1	a3,$f18
 4e4:	46086482 	mul.s	$f18,$f12,$f8
 4e8:	e7a40010 	swc1	$f4,16(sp)
 4ec:	46020182 	mul.s	$f6,$f0,$f2
 4f0:	c610002c 	lwc1	$f16,44(s0)
 4f4:	afa00018 	sw	zero,24(sp)
 4f8:	46128281 	sub.s	$f10,$f16,$f18
 4fc:	460a3100 	add.s	$f4,$f6,$f10
 500:	e7a40014 	swc1	$f4,20(sp)
 504:	860900b6 	lh	t1,182(s0)
 508:	afaa0024 	sw	t2,36(sp)
 50c:	afa00020 	sw	zero,32(sp)
 510:	0c000000 	jal	0 <BgHakaHuta_Init>
 514:	afa9001c 	sw	t1,28(sp)
 518:	10000033 	b	5e8 <func_8087D2F0+0x2b8>
 51c:	8fbf0034 	lw	ra,52(sp)
 520:	24010001 	li	at,1
 524:	54610030 	bnel	v1,at,5e8 <func_8087D2F0+0x2b8>
 528:	8fbf0034 	lw	ra,52(sp)
 52c:	0c000000 	jal	0 <BgHakaHuta_Init>
 530:	860400b6 	lh	a0,182(s0)
 534:	e7a00040 	swc1	$f0,64(sp)
 538:	0c000000 	jal	0 <BgHakaHuta_Init>
 53c:	860400b6 	lh	a0,182(s0)
 540:	e7a00044 	swc1	$f0,68(sp)
 544:	0c000000 	jal	0 <BgHakaHuta_Init>
 548:	860400b6 	lh	a0,182(s0)
 54c:	e7a00048 	swc1	$f0,72(sp)
 550:	0c000000 	jal	0 <BgHakaHuta_Init>
 554:	860400b6 	lh	a0,182(s0)
 558:	3c0142c8 	lui	at,0x42c8
 55c:	44811000 	mtc1	at,$f2
 560:	3c014220 	lui	at,0x4220
 564:	44816000 	mtc1	at,$f12
 568:	3c01c1c8 	lui	at,0xc1c8
 56c:	44814000 	mtc1	at,$f8
 570:	c7b00040 	lwc1	$f16,64(sp)
 574:	c7a40044 	lwc1	$f4,68(sp)
 578:	c6060008 	lwc1	$f6,8(s0)
 57c:	46104482 	mul.s	$f18,$f8,$f16
 580:	240c00fd 	li	t4,253
 584:	26241c24 	addiu	a0,s1,7204
 588:	46022202 	mul.s	$f8,$f4,$f2
 58c:	44812000 	mtc1	at,$f4
 590:	02202825 	move	a1,s1
 594:	24060090 	li	a2,144
 598:	46123280 	add.s	$f10,$f6,$f18
 59c:	c606000c 	lwc1	$f6,12(s0)
 5a0:	460a4400 	add.s	$f16,$f8,$f10
 5a4:	c7a80048 	lwc1	$f8,72(sp)
 5a8:	460c3481 	sub.s	$f18,$f6,$f12
 5ac:	46082282 	mul.s	$f10,$f4,$f8
 5b0:	44078000 	mfc1	a3,$f16
 5b4:	e7b20010 	swc1	$f18,16(sp)
 5b8:	46020482 	mul.s	$f18,$f0,$f2
 5bc:	c6100010 	lwc1	$f16,16(s0)
 5c0:	afa00018 	sw	zero,24(sp)
 5c4:	460a8181 	sub.s	$f6,$f16,$f10
 5c8:	46069100 	add.s	$f4,$f18,$f6
 5cc:	e7a40014 	swc1	$f4,20(sp)
 5d0:	860b00b6 	lh	t3,182(s0)
 5d4:	afac0024 	sw	t4,36(sp)
 5d8:	afa00020 	sw	zero,32(sp)
 5dc:	0c000000 	jal	0 <BgHakaHuta_Init>
 5e0:	afab001c 	sw	t3,28(sp)
 5e4:	8fbf0034 	lw	ra,52(sp)
 5e8:	8fb0002c 	lw	s0,44(sp)
 5ec:	8fb10030 	lw	s1,48(sp)
 5f0:	03e00008 	jr	ra
 5f4:	27bd0050 	addiu	sp,sp,80

000005f8 <func_8087D5B8>:
 5f8:	27bdffe8 	addiu	sp,sp,-24
 5fc:	afbf0014 	sw	ra,20(sp)
 600:	afa5001c 	sw	a1,28(sp)
 604:	84820168 	lh	v0,360(a0)
 608:	00803825 	move	a3,a0
 60c:	3c01c080 	lui	at,0xc080
 610:	10400002 	beqz	v0,61c <func_8087D5B8+0x24>
 614:	244effff 	addiu	t6,v0,-1
 618:	a48e0168 	sh	t6,360(a0)
 61c:	84ef0032 	lh	t7,50(a3)
 620:	55e00006 	bnezl	t7,63c <func_8087D5B8+0x44>
 624:	44810000 	mtc1	at,$f0
 628:	3c014080 	lui	at,0x4080
 62c:	44810000 	mtc1	at,$f0
 630:	10000004 	b	644 <func_8087D5B8+0x4c>
 634:	c4e40008 	lwc1	$f4,8(a3)
 638:	44810000 	mtc1	at,$f0
 63c:	00000000 	nop
 640:	c4e40008 	lwc1	$f4,8(a3)
 644:	afa70018 	sw	a3,24(sp)
 648:	24e40024 	addiu	a0,a3,36
 64c:	46002180 	add.s	$f6,$f4,$f0
 650:	3c064000 	lui	a2,0x4000
 654:	44053000 	mfc1	a1,$f6
 658:	0c000000 	jal	0 <BgHakaHuta_Init>
 65c:	00000000 	nop
 660:	8fa70018 	lw	a3,24(sp)
 664:	24190025 	li	t9,37
 668:	24062855 	li	a2,10325
 66c:	84f80168 	lh	t8,360(a3)
 670:	00e02025 	move	a0,a3
 674:	5700000a 	bnezl	t8,6a0 <func_8087D5B8+0xa8>
 678:	8fbf0014 	lw	ra,20(sp)
 67c:	a4f90168 	sh	t9,360(a3)
 680:	afa70018 	sw	a3,24(sp)
 684:	0c000000 	jal	0 <BgHakaHuta_Init>
 688:	8fa5001c 	lw	a1,28(sp)
 68c:	8fa70018 	lw	a3,24(sp)
 690:	3c080000 	lui	t0,0x0
 694:	25080000 	addiu	t0,t0,0
 698:	ace80164 	sw	t0,356(a3)
 69c:	8fbf0014 	lw	ra,20(sp)
 6a0:	27bd0018 	addiu	sp,sp,24
 6a4:	03e00008 	jr	ra
 6a8:	00000000 	nop

000006ac <func_8087D66C>:
 6ac:	27bdffe0 	addiu	sp,sp,-32
 6b0:	afbf001c 	sw	ra,28(sp)
 6b4:	afb00018 	sw	s0,24(sp)
 6b8:	afa50024 	sw	a1,36(sp)
 6bc:	84820168 	lh	v0,360(a0)
 6c0:	00808025 	move	s0,a0
 6c4:	3c01c1c0 	lui	at,0xc1c0
 6c8:	10400002 	beqz	v0,6d4 <func_8087D66C+0x28>
 6cc:	244effff 	addiu	t6,v0,-1
 6d0:	a48e0168 	sh	t6,360(a0)
 6d4:	860f0032 	lh	t7,50(s0)
 6d8:	55e00006 	bnezl	t7,6f4 <func_8087D66C+0x48>
 6dc:	44810000 	mtc1	at,$f0
 6e0:	3c0141c0 	lui	at,0x41c0
 6e4:	44810000 	mtc1	at,$f0
 6e8:	10000004 	b	6fc <func_8087D66C+0x50>
 6ec:	c6040008 	lwc1	$f4,8(s0)
 6f0:	44810000 	mtc1	at,$f0
 6f4:	00000000 	nop
 6f8:	c6040008 	lwc1	$f4,8(s0)
 6fc:	26040024 	addiu	a0,s0,36
 700:	3c063f00 	lui	a2,0x3f00
 704:	46002180 	add.s	$f6,$f4,$f0
 708:	44053000 	mfc1	a1,$f6
 70c:	0c000000 	jal	0 <BgHakaHuta_Init>
 710:	00000000 	nop
 714:	14400003 	bnez	v0,724 <func_8087D66C+0x78>
 718:	02002025 	move	a0,s0
 71c:	0c000000 	jal	0 <BgHakaHuta_Init>
 720:	8fa50024 	lw	a1,36(sp)
 724:	86180168 	lh	t8,360(s0)
 728:	02002025 	move	a0,s0
 72c:	8fa50024 	lw	a1,36(sp)
 730:	57000007 	bnezl	t8,750 <func_8087D66C+0xa4>
 734:	8fbf001c 	lw	ra,28(sp)
 738:	0c000000 	jal	0 <BgHakaHuta_Init>
 73c:	24062856 	li	a2,10326
 740:	3c190000 	lui	t9,0x0
 744:	27390000 	addiu	t9,t9,0
 748:	ae190164 	sw	t9,356(s0)
 74c:	8fbf001c 	lw	ra,28(sp)
 750:	8fb00018 	lw	s0,24(sp)
 754:	27bd0020 	addiu	sp,sp,32
 758:	03e00008 	jr	ra
 75c:	00000000 	nop

00000760 <func_8087D720>:
 760:	27bdff80 	addiu	sp,sp,-128
 764:	afbf0024 	sw	ra,36(sp)
 768:	afb00020 	sw	s0,32(sp)
 76c:	848e0168 	lh	t6,360(a0)
 770:	24020006 	li	v0,6
 774:	3c180000 	lui	t8,0x0
 778:	25cf0001 	addiu	t7,t6,1
 77c:	a48f0168 	sh	t7,360(a0)
 780:	84830168 	lh	v1,360(a0)
 784:	00808025 	move	s0,a0
 788:	27180000 	addiu	t8,t8,0
 78c:	14430019 	bne	v0,v1,7f4 <func_8087D720+0x94>
 790:	00000000 	nop
 794:	ac980164 	sw	t8,356(a0)
 798:	84b907a0 	lh	t9,1952(a1)
 79c:	00194080 	sll	t0,t9,0x2
 7a0:	00a84821 	addu	t1,a1,t0
 7a4:	8d240790 	lw	a0,1936(t1)
 7a8:	0c000000 	jal	0 <BgHakaHuta_Init>
 7ac:	24050003 	li	a1,3
 7b0:	00022400 	sll	a0,v0,0x10
 7b4:	afa20030 	sw	v0,48(sp)
 7b8:	00042403 	sra	a0,a0,0x10
 7bc:	0c000000 	jal	0 <BgHakaHuta_Init>
 7c0:	24057530 	li	a1,30000
 7c4:	87a40032 	lh	a0,50(sp)
 7c8:	24050004 	li	a1,4
 7cc:	00003025 	move	a2,zero
 7d0:	00003825 	move	a3,zero
 7d4:	afa00010 	sw	zero,16(sp)
 7d8:	0c000000 	jal	0 <BgHakaHuta_Init>
 7dc:	afa4002c 	sw	a0,44(sp)
 7e0:	8fa4002c 	lw	a0,44(sp)
 7e4:	0c000000 	jal	0 <BgHakaHuta_Init>
 7e8:	24050002 	li	a1,2
 7ec:	10000007 	b	80c <func_8087D720+0xac>
 7f0:	86030168 	lh	v1,360(s0)
 7f4:	14600005 	bnez	v1,80c <func_8087D720+0xac>
 7f8:	3c0a0000 	lui	t2,0x0
 7fc:	a6020168 	sh	v0,360(s0)
 800:	254a0000 	addiu	t2,t2,0
 804:	ae0a0164 	sw	t2,356(s0)
 808:	86030168 	lh	v1,360(s0)
 80c:	44832000 	mtc1	v1,$f4
 810:	3c0141f0 	lui	at,0x41f0
 814:	44810000 	mtc1	at,$f0
 818:	468021a0 	cvt.s.w	$f6,$f4
 81c:	3c0141c0 	lui	at,0x41c0
 820:	44814000 	mtc1	at,$f8
 824:	3c010000 	lui	at,0x0
 828:	46083280 	add.s	$f10,$f6,$f8
 82c:	460a003c 	c.lt.s	$f0,$f10
 830:	e42a0000 	swc1	$f10,0(at)
 834:	3c010000 	lui	at,0x0
 838:	45020003 	bc1fl	848 <func_8087D720+0xe8>
 83c:	860b0032 	lh	t3,50(s0)
 840:	e4200000 	swc1	$f0,0(at)
 844:	860b0032 	lh	t3,50(s0)
 848:	3c010000 	lui	at,0x0
 84c:	c4240000 	lwc1	$f4,0(at)
 850:	448b8000 	mtc1	t3,$f16
 854:	00002825 	move	a1,zero
 858:	468084a0 	cvt.s.w	$f18,$f16
 85c:	46049302 	mul.s	$f12,$f18,$f4
 860:	0c000000 	jal	0 <BgHakaHuta_Init>
 864:	00000000 	nop
 868:	860c0168 	lh	t4,360(s0)
 86c:	3c010000 	lui	at,0x0
 870:	c42a0000 	lwc1	$f10,0(at)
 874:	448c3000 	mtc1	t4,$f6
 878:	3c050000 	lui	a1,0x0
 87c:	24a50000 	addiu	a1,a1,0
 880:	46803220 	cvt.s.w	$f8,$f6
 884:	24060001 	li	a2,1
 888:	460a4302 	mul.s	$f12,$f8,$f10
 88c:	0c000000 	jal	0 <BgHakaHuta_Init>
 890:	00000000 	nop
 894:	3c040000 	lui	a0,0x0
 898:	24840000 	addiu	a0,a0,0
 89c:	0c000000 	jal	0 <BgHakaHuta_Init>
 8a0:	27a50034 	addiu	a1,sp,52
 8a4:	c6100008 	lwc1	$f16,8(s0)
 8a8:	c7b20034 	lwc1	$f18,52(sp)
 8ac:	c606000c 	lwc1	$f6,12(s0)
 8b0:	27a40040 	addiu	a0,sp,64
 8b4:	46128100 	add.s	$f4,$f16,$f18
 8b8:	c6100010 	lwc1	$f16,16(s0)
 8bc:	e6040024 	swc1	$f4,36(s0)
 8c0:	c7a80038 	lwc1	$f8,56(sp)
 8c4:	46083280 	add.s	$f10,$f6,$f8
 8c8:	e60a0028 	swc1	$f10,40(s0)
 8cc:	c7b2003c 	lwc1	$f18,60(sp)
 8d0:	46128100 	add.s	$f4,$f16,$f18
 8d4:	0c000000 	jal	0 <BgHakaHuta_Init>
 8d8:	e604002c 	swc1	$f4,44(s0)
 8dc:	27a40040 	addiu	a0,sp,64
 8e0:	260500b4 	addiu	a1,s0,180
 8e4:	0c000000 	jal	0 <BgHakaHuta_Init>
 8e8:	00003025 	move	a2,zero
 8ec:	8fbf0024 	lw	ra,36(sp)
 8f0:	8fb00020 	lw	s0,32(sp)
 8f4:	27bd0080 	addiu	sp,sp,128
 8f8:	03e00008 	jr	ra
 8fc:	00000000 	nop

00000900 <func_8087D8C0>:
 900:	afa40000 	sw	a0,0(sp)
 904:	03e00008 	jr	ra
 908:	afa50004 	sw	a1,4(sp)

0000090c <BgHakaHuta_Update>:
 90c:	27bdffe8 	addiu	sp,sp,-24
 910:	afbf0014 	sw	ra,20(sp)
 914:	8c990164 	lw	t9,356(a0)
 918:	0320f809 	jalr	t9
 91c:	00000000 	nop
 920:	8fbf0014 	lw	ra,20(sp)
 924:	27bd0018 	addiu	sp,sp,24
 928:	03e00008 	jr	ra
 92c:	00000000 	nop

00000930 <BgHakaHuta_Draw>:
 930:	27bdffe8 	addiu	sp,sp,-24
 934:	afa40018 	sw	a0,24(sp)
 938:	00a02025 	move	a0,a1
 93c:	afbf0014 	sw	ra,20(sp)
 940:	3c050600 	lui	a1,0x600
 944:	0c000000 	jal	0 <BgHakaHuta_Init>
 948:	24a506b0 	addiu	a1,a1,1712
 94c:	8fbf0014 	lw	ra,20(sp)
 950:	27bd0018 	addiu	sp,sp,24
 954:	03e00008 	jr	ra
 958:	00000000 	nop
 95c:	00000000 	nop
