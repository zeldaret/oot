
build/src/overlays/actors/ovl_En_Mk/z_en_mk.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnMk_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	3c01c080 	lui	at,0xc080
   8:	44812000 	mtc1	at,$f4
   c:	3c01bf80 	lui	at,0xbf80
  10:	44813000 	mtc1	at,$f6
  14:	afbf002c 	sw	ra,44(sp)
  18:	afb00028 	sw	s0,40(sp)
  1c:	afa50044 	sw	a1,68(sp)
  20:	00808025 	move	s0,a0
  24:	3c060000 	lui	a2,0x0
  28:	24c60000 	addiu	a2,a2,0
  2c:	248400b4 	addiu	a0,a0,180
  30:	24050000 	li	a1,0
  34:	3c074210 	lui	a3,0x4210
  38:	e484ffbc 	swc1	$f4,-68(a0)
  3c:	0c000000 	jal	0 <EnMk_Init>
  40:	e486ffb8 	swc1	$f6,-72(a0)
  44:	26050198 	addiu	a1,s0,408
  48:	3c060600 	lui	a2,0x600
  4c:	3c070600 	lui	a3,0x600
  50:	260e01dc 	addiu	t6,s0,476
  54:	260f022a 	addiu	t7,s0,554
  58:	2418000d 	li	t8,13
  5c:	afb80018 	sw	t8,24(sp)
  60:	afaf0014 	sw	t7,20(sp)
  64:	afae0010 	sw	t6,16(sp)
  68:	24e70d88 	addiu	a3,a3,3464
  6c:	24c65df0 	addiu	a2,a2,24048
  70:	afa50034 	sw	a1,52(sp)
  74:	0c000000 	jal	0 <EnMk_Init>
  78:	8fa40044 	lw	a0,68(sp)
  7c:	3c050600 	lui	a1,0x600
  80:	24a50d88 	addiu	a1,a1,3464
  84:	0c000000 	jal	0 <EnMk_Init>
  88:	8fa40034 	lw	a0,52(sp)
  8c:	2605014c 	addiu	a1,s0,332
  90:	afa50034 	sw	a1,52(sp)
  94:	0c000000 	jal	0 <EnMk_Init>
  98:	8fa40044 	lw	a0,68(sp)
  9c:	3c070000 	lui	a3,0x0
  a0:	8fa50034 	lw	a1,52(sp)
  a4:	24e70000 	addiu	a3,a3,0
  a8:	8fa40044 	lw	a0,68(sp)
  ac:	0c000000 	jal	0 <EnMk_Init>
  b0:	02003025 	move	a2,s0
  b4:	241900ff 	li	t9,255
  b8:	3c053c23 	lui	a1,0x3c23
  bc:	a21900ae 	sb	t9,174(s0)
  c0:	34a5d70a 	ori	a1,a1,0xd70a
  c4:	0c000000 	jal	0 <EnMk_Init>
  c8:	02002025 	move	a0,s0
  cc:	3c080000 	lui	t0,0x0
  d0:	25080000 	addiu	t0,t0,0
  d4:	24090006 	li	t1,6
  d8:	ae080284 	sw	t0,644(s0)
  dc:	a600027e 	sh	zero,638(s0)
  e0:	a6000280 	sh	zero,640(s0)
  e4:	a209001f 	sb	t1,31(s0)
  e8:	3c0a0000 	lui	t2,0x0
  ec:	954a0ef2 	lhu	t2,3826(t2)
  f0:	340d0004 	li	t5,0x4
  f4:	314b0001 	andi	t3,t2,0x1
  f8:	51600003 	beqzl	t3,108 <EnMk_Init+0x108>
  fc:	8fbf002c 	lw	ra,44(sp)
 100:	a60d027e 	sh	t5,638(s0)
 104:	8fbf002c 	lw	ra,44(sp)
 108:	8fb00028 	lw	s0,40(sp)
 10c:	27bd0040 	addiu	sp,sp,64
 110:	03e00008 	jr	ra
 114:	00000000 	nop

00000118 <EnMk_Destroy>:
 118:	27bdffe8 	addiu	sp,sp,-24
 11c:	00803025 	move	a2,a0
 120:	afbf0014 	sw	ra,20(sp)
 124:	00a02025 	move	a0,a1
 128:	0c000000 	jal	0 <EnMk_Init>
 12c:	24c5014c 	addiu	a1,a2,332
 130:	8fbf0014 	lw	ra,20(sp)
 134:	27bd0018 	addiu	sp,sp,24
 138:	03e00008 	jr	ra
 13c:	00000000 	nop

00000140 <func_80AACA40>:
 140:	27bdffe8 	addiu	sp,sp,-24
 144:	afbf0014 	sw	ra,20(sp)
 148:	0c000000 	jal	0 <EnMk_Init>
 14c:	afa40018 	sw	a0,24(sp)
 150:	10400009 	beqz	v0,178 <func_80AACA40+0x38>
 154:	8fa40018 	lw	a0,24(sp)
 158:	8c8e0004 	lw	t6,4(a0)
 15c:	3c01fffe 	lui	at,0xfffe
 160:	3421ffff 	ori	at,at,0xffff
 164:	3c180000 	lui	t8,0x0
 168:	27180000 	addiu	t8,t8,0
 16c:	01c17824 	and	t7,t6,at
 170:	ac8f0004 	sw	t7,4(a0)
 174:	ac980284 	sw	t8,644(a0)
 178:	9499027e 	lhu	t9,638(a0)
 17c:	37280001 	ori	t0,t9,0x1
 180:	a488027e 	sh	t0,638(a0)
 184:	8fbf0014 	lw	ra,20(sp)
 188:	27bd0018 	addiu	sp,sp,24
 18c:	03e00008 	jr	ra
 190:	00000000 	nop

00000194 <func_80AACA94>:
 194:	27bdffe0 	addiu	sp,sp,-32
 198:	afbf001c 	sw	ra,28(sp)
 19c:	afa40020 	sw	a0,32(sp)
 1a0:	0c000000 	jal	0 <EnMk_Init>
 1a4:	afa50024 	sw	a1,36(sp)
 1a8:	1040000d 	beqz	v0,1e0 <func_80AACA94+0x4c>
 1ac:	3c0e0000 	lui	t6,0x0
 1b0:	8fa20020 	lw	v0,32(sp)
 1b4:	25ce0000 	addiu	t6,t6,0
 1b8:	240400f0 	li	a0,240
 1bc:	ac400118 	sw	zero,280(v0)
 1c0:	0c000000 	jal	0 <EnMk_Init>
 1c4:	ac4e0284 	sw	t6,644(v0)
 1c8:	3c020000 	lui	v0,0x0
 1cc:	24420000 	addiu	v0,v0,0
 1d0:	944f13fc 	lhu	t7,5116(v0)
 1d4:	31f8fffe 	andi	t8,t7,0xfffe
 1d8:	1000000a 	b	204 <func_80AACA94+0x70>
 1dc:	a45813fc 	sh	t8,5116(v0)
 1e0:	3c014248 	lui	at,0x4248
 1e4:	44812000 	mtc1	at,$f4
 1e8:	3c07461c 	lui	a3,0x461c
 1ec:	34e74000 	ori	a3,a3,0x4000
 1f0:	8fa40020 	lw	a0,32(sp)
 1f4:	8fa50024 	lw	a1,36(sp)
 1f8:	24060025 	li	a2,37
 1fc:	0c000000 	jal	0 <EnMk_Init>
 200:	e7a40010 	swc1	$f4,16(sp)
 204:	8fbf001c 	lw	ra,28(sp)
 208:	27bd0020 	addiu	sp,sp,32
 20c:	03e00008 	jr	ra
 210:	00000000 	nop

00000214 <func_80AACB14>:
 214:	27bdffe0 	addiu	sp,sp,-32
 218:	afbf001c 	sw	ra,28(sp)
 21c:	afa50024 	sw	a1,36(sp)
 220:	0c000000 	jal	0 <EnMk_Init>
 224:	afa40020 	sw	a0,32(sp)
 228:	1040000c 	beqz	v0,25c <func_80AACB14+0x48>
 22c:	8fa40020 	lw	a0,32(sp)
 230:	3c0e0000 	lui	t6,0x0
 234:	3c014248 	lui	at,0x4248
 238:	44812000 	mtc1	at,$f4
 23c:	25ce0000 	addiu	t6,t6,0
 240:	ac8e0284 	sw	t6,644(a0)
 244:	3c07461c 	lui	a3,0x461c
 248:	34e74000 	ori	a3,a3,0x4000
 24c:	8fa50024 	lw	a1,36(sp)
 250:	24060025 	li	a2,37
 254:	0c000000 	jal	0 <EnMk_Init>
 258:	e7a40010 	swc1	$f4,16(sp)
 25c:	8fbf001c 	lw	ra,28(sp)
 260:	27bd0020 	addiu	sp,sp,32
 264:	03e00008 	jr	ra
 268:	00000000 	nop

0000026c <func_80AACB6C>:
 26c:	27bdffe8 	addiu	sp,sp,-24
 270:	afbf0014 	sw	ra,20(sp)
 274:	0c000000 	jal	0 <EnMk_Init>
 278:	afa40018 	sw	a0,24(sp)
 27c:	10400004 	beqz	v0,290 <func_80AACB6C+0x24>
 280:	8fa40018 	lw	a0,24(sp)
 284:	3c0e0000 	lui	t6,0x0
 288:	25ce0000 	addiu	t6,t6,0
 28c:	ac8e0284 	sw	t6,644(a0)
 290:	948f027e 	lhu	t7,638(a0)
 294:	35f80001 	ori	t8,t7,0x1
 298:	a498027e 	sh	t8,638(a0)
 29c:	8fbf0014 	lw	ra,20(sp)
 2a0:	27bd0018 	addiu	sp,sp,24
 2a4:	03e00008 	jr	ra
 2a8:	00000000 	nop

000002ac <func_80AACBAC>:
 2ac:	27bdffe8 	addiu	sp,sp,-24
 2b0:	afbf0014 	sw	ra,20(sp)
 2b4:	94820282 	lhu	v0,642(a0)
 2b8:	00803025 	move	a2,a0
 2bc:	00a03825 	move	a3,a1
 2c0:	18400007 	blez	v0,2e0 <func_80AACBAC+0x34>
 2c4:	3c190000 	lui	t9,0x0
 2c8:	848f00b6 	lh	t7,182(a0)
 2cc:	244effff 	addiu	t6,v0,-1
 2d0:	a48e0282 	sh	t6,642(a0)
 2d4:	25f8f800 	addiu	t8,t7,-2048
 2d8:	10000006 	b	2f4 <func_80AACBAC+0x48>
 2dc:	a49800b6 	sh	t8,182(a0)
 2e0:	27390000 	addiu	t9,t9,0
 2e4:	acd90284 	sw	t9,644(a2)
 2e8:	00e02025 	move	a0,a3
 2ec:	0c000000 	jal	0 <EnMk_Init>
 2f0:	24054030 	li	a1,16432
 2f4:	8fbf0014 	lw	ra,20(sp)
 2f8:	27bd0018 	addiu	sp,sp,24
 2fc:	03e00008 	jr	ra
 300:	00000000 	nop

00000304 <func_80AACC04>:
 304:	27bdffd0 	addiu	sp,sp,-48
 308:	afbf002c 	sw	ra,44(sp)
 30c:	afb00028 	sw	s0,40(sp)
 310:	afa50034 	sw	a1,52(sp)
 314:	94820282 	lhu	v0,642(a0)
 318:	00808025 	move	s0,a0
 31c:	240f0010 	li	t7,16
 320:	18400004 	blez	v0,334 <func_80AACC04+0x30>
 324:	3c180000 	lui	t8,0x0
 328:	244effff 	addiu	t6,v0,-1
 32c:	10000017 	b	38c <func_80AACC04+0x88>
 330:	a48e0282 	sh	t6,642(a0)
 334:	27180000 	addiu	t8,t8,0
 338:	3c040600 	lui	a0,0x600
 33c:	a60f0282 	sh	t7,642(s0)
 340:	ae180284 	sw	t8,644(s0)
 344:	0c000000 	jal	0 <EnMk_Init>
 348:	24840d88 	addiu	a0,a0,3464
 34c:	44822000 	mtc1	v0,$f4
 350:	3c01c080 	lui	at,0xc080
 354:	44814000 	mtc1	at,$f8
 358:	468021a0 	cvt.s.w	$f6,$f4
 35c:	3c050600 	lui	a1,0x600
 360:	24a50d88 	addiu	a1,a1,3464
 364:	26040198 	addiu	a0,s0,408
 368:	3c063f80 	lui	a2,0x3f80
 36c:	24070000 	li	a3,0
 370:	e7a60010 	swc1	$f6,16(sp)
 374:	afa00014 	sw	zero,20(sp)
 378:	0c000000 	jal	0 <EnMk_Init>
 37c:	e7a80018 	swc1	$f8,24(sp)
 380:	9619027e 	lhu	t9,638(s0)
 384:	3328fffd 	andi	t0,t9,0xfffd
 388:	a608027e 	sh	t0,638(s0)
 38c:	8fbf002c 	lw	ra,44(sp)
 390:	8fb00028 	lw	s0,40(sp)
 394:	27bd0030 	addiu	sp,sp,48
 398:	03e00008 	jr	ra
 39c:	00000000 	nop

000003a0 <func_80AACCA0>:
 3a0:	27bdffd0 	addiu	sp,sp,-48
 3a4:	afbf002c 	sw	ra,44(sp)
 3a8:	afb00028 	sw	s0,40(sp)
 3ac:	afa50034 	sw	a1,52(sp)
 3b0:	94820282 	lhu	v0,642(a0)
 3b4:	00808025 	move	s0,a0
 3b8:	24190078 	li	t9,120
 3bc:	18400007 	blez	v0,3dc <func_80AACCA0+0x3c>
 3c0:	3c080000 	lui	t0,0x0
 3c4:	848f00b6 	lh	t7,182(a0)
 3c8:	244effff 	addiu	t6,v0,-1
 3cc:	a48e0282 	sh	t6,642(a0)
 3d0:	25f80800 	addiu	t8,t7,2048
 3d4:	10000017 	b	434 <func_80AACCA0+0x94>
 3d8:	a49800b6 	sh	t8,182(a0)
 3dc:	25080000 	addiu	t0,t0,0
 3e0:	3c040600 	lui	a0,0x600
 3e4:	a6190282 	sh	t9,642(s0)
 3e8:	ae080284 	sw	t0,644(s0)
 3ec:	0c000000 	jal	0 <EnMk_Init>
 3f0:	24840724 	addiu	a0,a0,1828
 3f4:	44822000 	mtc1	v0,$f4
 3f8:	3c01c080 	lui	at,0xc080
 3fc:	44814000 	mtc1	at,$f8
 400:	468021a0 	cvt.s.w	$f6,$f4
 404:	3c050600 	lui	a1,0x600
 408:	24a50724 	addiu	a1,a1,1828
 40c:	26040198 	addiu	a0,s0,408
 410:	3c063f80 	lui	a2,0x3f80
 414:	24070000 	li	a3,0
 418:	e7a60010 	swc1	$f6,16(sp)
 41c:	afa00014 	sw	zero,20(sp)
 420:	0c000000 	jal	0 <EnMk_Init>
 424:	e7a80018 	swc1	$f8,24(sp)
 428:	9609027e 	lhu	t1,638(s0)
 42c:	312afffd 	andi	t2,t1,0xfffd
 430:	a60a027e 	sh	t2,638(s0)
 434:	8fbf002c 	lw	ra,44(sp)
 438:	8fb00028 	lw	s0,40(sp)
 43c:	27bd0030 	addiu	sp,sp,48
 440:	03e00008 	jr	ra
 444:	00000000 	nop

00000448 <func_80AACD48>:
 448:	27bdffc8 	addiu	sp,sp,-56
 44c:	afbf002c 	sw	ra,44(sp)
 450:	afb10028 	sw	s1,40(sp)
 454:	afb00024 	sw	s0,36(sp)
 458:	8cae1c44 	lw	t6,7236(a1)
 45c:	00808025 	move	s0,a0
 460:	00a08825 	move	s1,a1
 464:	24a420d8 	addiu	a0,a1,8408
 468:	0c000000 	jal	0 <EnMk_Init>
 46c:	afae0034 	sw	t6,52(sp)
 470:	24010005 	li	at,5
 474:	54410026 	bnel	v0,at,510 <func_80AACD48+0xc8>
 478:	960b027e 	lhu	t3,638(s0)
 47c:	0c000000 	jal	0 <EnMk_Init>
 480:	02202025 	move	a0,s1
 484:	50400022 	beqzl	v0,510 <func_80AACD48+0xc8>
 488:	960b027e 	lhu	t3,638(s0)
 48c:	0c000000 	jal	0 <EnMk_Init>
 490:	02202025 	move	a0,s1
 494:	3c0f0000 	lui	t7,0x0
 498:	25ef0000 	addiu	t7,t7,0
 49c:	3c010001 	lui	at,0x1
 4a0:	ae0f0284 	sw	t7,644(s0)
 4a4:	00310821 	addu	at,at,s1
 4a8:	24180037 	li	t8,55
 4ac:	a03803dc 	sb	t8,988(at)
 4b0:	8fb90034 	lw	t9,52(sp)
 4b4:	24080010 	li	t0,16
 4b8:	3c040600 	lui	a0,0x600
 4bc:	a3200693 	sb	zero,1683(t9)
 4c0:	a6080282 	sh	t0,642(s0)
 4c4:	0c000000 	jal	0 <EnMk_Init>
 4c8:	24840d88 	addiu	a0,a0,3464
 4cc:	44822000 	mtc1	v0,$f4
 4d0:	3c01c080 	lui	at,0xc080
 4d4:	44814000 	mtc1	at,$f8
 4d8:	468021a0 	cvt.s.w	$f6,$f4
 4dc:	3c050600 	lui	a1,0x600
 4e0:	24a50d88 	addiu	a1,a1,3464
 4e4:	26040198 	addiu	a0,s0,408
 4e8:	3c063f80 	lui	a2,0x3f80
 4ec:	24070000 	li	a3,0
 4f0:	e7a60010 	swc1	$f6,16(sp)
 4f4:	afa00014 	sw	zero,20(sp)
 4f8:	0c000000 	jal	0 <EnMk_Init>
 4fc:	e7a80018 	swc1	$f8,24(sp)
 500:	9609027e 	lhu	t1,638(s0)
 504:	312afffd 	andi	t2,t1,0xfffd
 508:	a60a027e 	sh	t2,638(s0)
 50c:	960b027e 	lhu	t3,638(s0)
 510:	356c0001 	ori	t4,t3,0x1
 514:	a60c027e 	sh	t4,638(s0)
 518:	8fbf002c 	lw	ra,44(sp)
 51c:	8fb10028 	lw	s1,40(sp)
 520:	8fb00024 	lw	s0,36(sp)
 524:	03e00008 	jr	ra
 528:	27bd0038 	addiu	sp,sp,56

0000052c <func_80AACE2C>:
 52c:	27bdffd0 	addiu	sp,sp,-48
 530:	afb00028 	sw	s0,40(sp)
 534:	00808025 	move	s0,a0
 538:	afbf002c 	sw	ra,44(sp)
 53c:	afa50034 	sw	a1,52(sp)
 540:	0c000000 	jal	0 <EnMk_Init>
 544:	24a420d8 	addiu	a0,a1,8408
 548:	24010005 	li	at,5
 54c:	5441001f 	bnel	v0,at,5cc <func_80AACE2C+0xa0>
 550:	9608027e 	lhu	t0,638(s0)
 554:	0c000000 	jal	0 <EnMk_Init>
 558:	8fa40034 	lw	a0,52(sp)
 55c:	1040001a 	beqz	v0,5c8 <func_80AACE2C+0x9c>
 560:	8fa40034 	lw	a0,52(sp)
 564:	0c000000 	jal	0 <EnMk_Init>
 568:	24054001 	li	a1,16385
 56c:	3c040600 	lui	a0,0x600
 570:	0c000000 	jal	0 <EnMk_Init>
 574:	24840ac0 	addiu	a0,a0,2752
 578:	44822000 	mtc1	v0,$f4
 57c:	3c01c080 	lui	at,0xc080
 580:	44814000 	mtc1	at,$f8
 584:	468021a0 	cvt.s.w	$f6,$f4
 588:	3c050600 	lui	a1,0x600
 58c:	240e0002 	li	t6,2
 590:	afae0014 	sw	t6,20(sp)
 594:	24a50ac0 	addiu	a1,a1,2752
 598:	26040198 	addiu	a0,s0,408
 59c:	e7a60010 	swc1	$f6,16(sp)
 5a0:	3c063f80 	lui	a2,0x3f80
 5a4:	24070000 	li	a3,0
 5a8:	0c000000 	jal	0 <EnMk_Init>
 5ac:	e7a80018 	swc1	$f8,24(sp)
 5b0:	960f027e 	lhu	t7,638(s0)
 5b4:	3c190000 	lui	t9,0x0
 5b8:	27390000 	addiu	t9,t9,0
 5bc:	31f8fffd 	andi	t8,t7,0xfffd
 5c0:	a618027e 	sh	t8,638(s0)
 5c4:	ae190284 	sw	t9,644(s0)
 5c8:	9608027e 	lhu	t0,638(s0)
 5cc:	35090001 	ori	t1,t0,0x1
 5d0:	a609027e 	sh	t1,638(s0)
 5d4:	8fbf002c 	lw	ra,44(sp)
 5d8:	8fb00028 	lw	s0,40(sp)
 5dc:	27bd0030 	addiu	sp,sp,48
 5e0:	03e00008 	jr	ra
 5e4:	00000000 	nop

000005e8 <func_80AACEE8>:
 5e8:	27bdffd0 	addiu	sp,sp,-48
 5ec:	afb00028 	sw	s0,40(sp)
 5f0:	00808025 	move	s0,a0
 5f4:	afbf002c 	sw	ra,44(sp)
 5f8:	afa50034 	sw	a1,52(sp)
 5fc:	0c000000 	jal	0 <EnMk_Init>
 600:	24a420d8 	addiu	a0,a1,8408
 604:	24010005 	li	at,5
 608:	5441001e 	bnel	v0,at,684 <func_80AACEE8+0x9c>
 60c:	9619027e 	lhu	t9,638(s0)
 610:	0c000000 	jal	0 <EnMk_Init>
 614:	8fa40034 	lw	a0,52(sp)
 618:	10400019 	beqz	v0,680 <func_80AACEE8+0x98>
 61c:	8fa40034 	lw	a0,52(sp)
 620:	0c000000 	jal	0 <EnMk_Init>
 624:	24054000 	li	a1,16384
 628:	3c040600 	lui	a0,0x600
 62c:	0c000000 	jal	0 <EnMk_Init>
 630:	24840ac0 	addiu	a0,a0,2752
 634:	44822000 	mtc1	v0,$f4
 638:	3c01c080 	lui	at,0xc080
 63c:	44814000 	mtc1	at,$f8
 640:	468021a0 	cvt.s.w	$f6,$f4
 644:	3c050600 	lui	a1,0x600
 648:	24a50ac0 	addiu	a1,a1,2752
 64c:	26040198 	addiu	a0,s0,408
 650:	3c063f80 	lui	a2,0x3f80
 654:	24070000 	li	a3,0
 658:	e7a60010 	swc1	$f6,16(sp)
 65c:	afa00014 	sw	zero,20(sp)
 660:	0c000000 	jal	0 <EnMk_Init>
 664:	e7a80018 	swc1	$f8,24(sp)
 668:	960e027e 	lhu	t6,638(s0)
 66c:	3c180000 	lui	t8,0x0
 670:	27180000 	addiu	t8,t8,0
 674:	31cffffd 	andi	t7,t6,0xfffd
 678:	a60f027e 	sh	t7,638(s0)
 67c:	ae180284 	sw	t8,644(s0)
 680:	9619027e 	lhu	t9,638(s0)
 684:	37280001 	ori	t0,t9,0x1
 688:	a608027e 	sh	t0,638(s0)
 68c:	8fbf002c 	lw	ra,44(sp)
 690:	8fb00028 	lw	s0,40(sp)
 694:	27bd0030 	addiu	sp,sp,48
 698:	03e00008 	jr	ra
 69c:	00000000 	nop

000006a0 <func_80AACFA0>:
 6a0:	27bdffe0 	addiu	sp,sp,-32
 6a4:	afbf001c 	sw	ra,28(sp)
 6a8:	afa50024 	sw	a1,36(sp)
 6ac:	0c000000 	jal	0 <EnMk_Init>
 6b0:	afa40020 	sw	a0,32(sp)
 6b4:	1040000b 	beqz	v0,6e4 <func_80AACFA0+0x44>
 6b8:	8fa40020 	lw	a0,32(sp)
 6bc:	3c0e0000 	lui	t6,0x0
 6c0:	3c020000 	lui	v0,0x0
 6c4:	25ce0000 	addiu	t6,t6,0
 6c8:	24420000 	addiu	v0,v0,0
 6cc:	ac800118 	sw	zero,280(a0)
 6d0:	ac8e0284 	sw	t6,644(a0)
 6d4:	944f0ef2 	lhu	t7,3826(v0)
 6d8:	35f80001 	ori	t8,t7,0x1
 6dc:	10000009 	b	704 <func_80AACFA0+0x64>
 6e0:	a4580ef2 	sh	t8,3826(v0)
 6e4:	3c014248 	lui	at,0x4248
 6e8:	44812000 	mtc1	at,$f4
 6ec:	3c07461c 	lui	a3,0x461c
 6f0:	34e74000 	ori	a3,a3,0x4000
 6f4:	8fa50024 	lw	a1,36(sp)
 6f8:	2406003e 	li	a2,62
 6fc:	0c000000 	jal	0 <EnMk_Init>
 700:	e7a40010 	swc1	$f4,16(sp)
 704:	8fbf001c 	lw	ra,28(sp)
 708:	27bd0020 	addiu	sp,sp,32
 70c:	03e00008 	jr	ra
 710:	00000000 	nop

00000714 <func_80AAD014>:
 714:	27bdffe0 	addiu	sp,sp,-32
 718:	afbf001c 	sw	ra,28(sp)
 71c:	afa50024 	sw	a1,36(sp)
 720:	0c000000 	jal	0 <EnMk_Init>
 724:	afa40020 	sw	a0,32(sp)
 728:	1040000e 	beqz	v0,764 <func_80AAD014+0x50>
 72c:	8fa40020 	lw	a0,32(sp)
 730:	3c0e0000 	lui	t6,0x0
 734:	25ce0000 	addiu	t6,t6,0
 738:	3c014248 	lui	at,0x4248
 73c:	44812000 	mtc1	at,$f4
 740:	ac8e0284 	sw	t6,644(a0)
 744:	3c07461c 	lui	a3,0x461c
 748:	34e74000 	ori	a3,a3,0x4000
 74c:	afa40020 	sw	a0,32(sp)
 750:	8fa50024 	lw	a1,36(sp)
 754:	2406003e 	li	a2,62
 758:	0c000000 	jal	0 <EnMk_Init>
 75c:	e7a40010 	swc1	$f4,16(sp)
 760:	8fa40020 	lw	a0,32(sp)
 764:	948f027e 	lhu	t7,638(a0)
 768:	35f80001 	ori	t8,t7,0x1
 76c:	a498027e 	sh	t8,638(a0)
 770:	8fbf001c 	lw	ra,28(sp)
 774:	27bd0020 	addiu	sp,sp,32
 778:	03e00008 	jr	ra
 77c:	00000000 	nop

00000780 <func_80AAD080>:
 780:	27bdffc0 	addiu	sp,sp,-64
 784:	afbf002c 	sw	ra,44(sp)
 788:	afb00028 	sw	s0,40(sp)
 78c:	8ca31c44 	lw	v1,7236(a1)
 790:	00808025 	move	s0,a0
 794:	afa50044 	sw	a1,68(sp)
 798:	0c000000 	jal	0 <EnMk_Init>
 79c:	afa30034 	sw	v1,52(sp)
 7a0:	10400064 	beqz	v0,934 <func_80AAD080+0x1b4>
 7a4:	8fa30034 	lw	v1,52(sp)
 7a8:	8fa40044 	lw	a0,68(sp)
 7ac:	0c000000 	jal	0 <EnMk_Init>
 7b0:	afa30034 	sw	v1,52(sp)
 7b4:	9604010e 	lhu	a0,270(s0)
 7b8:	24014018 	li	at,16408
 7bc:	8fa30034 	lw	v1,52(sp)
 7c0:	10810006 	beq	a0,at,7dc <func_80AAD080+0x5c>
 7c4:	3c0f0000 	lui	t7,0x0
 7c8:	3c0e0000 	lui	t6,0x0
 7cc:	a464010e 	sh	a0,270(v1)
 7d0:	25ce0000 	addiu	t6,t6,0
 7d4:	10000079 	b	9bc <func_80AAD080+0x23c>
 7d8:	ae0e0284 	sw	t6,644(s0)
 7dc:	91ef0030 	lbu	t7,48(t7)
 7e0:	3c050000 	lui	a1,0x0
 7e4:	24a50000 	addiu	a1,a1,0
 7e8:	00afc021 	addu	t8,a1,t7
 7ec:	93190074 	lbu	t9,116(t8)
 7f0:	24010036 	li	at,54
 7f4:	24084032 	li	t0,16434
 7f8:	17210005 	bne	t9,at,810 <func_80AAD080+0x90>
 7fc:	3c090000 	lui	t1,0x0
 800:	a468010e 	sh	t0,270(v1)
 804:	25290000 	addiu	t1,t1,0
 808:	1000006c 	b	9bc <func_80AAD080+0x23c>
 80c:	ae090284 	sw	t1,644(s0)
 810:	10400009 	beqz	v0,838 <func_80AAD080+0xb8>
 814:	2401000d 	li	at,13
 818:	10410028 	beq	v0,at,8bc <func_80AAD080+0x13c>
 81c:	240c4019 	li	t4,16409
 820:	240a4018 	li	t2,16408
 824:	3c0b0000 	lui	t3,0x0
 828:	256b0000 	addiu	t3,t3,0
 82c:	a46a010e 	sh	t2,270(v1)
 830:	10000062 	b	9bc <func_80AAD080+0x23c>
 834:	ae0b0284 	sw	t3,644(s0)
 838:	86020280 	lh	v0,640(s0)
 83c:	28410008 	slti	at,v0,8
 840:	14200011 	bnez	at,888 <func_80AAD080+0x108>
 844:	00000000 	nop
 848:	94ac0ef2 	lhu	t4,3826(a1)
 84c:	3c190000 	lui	t9,0x0
 850:	24184074 	li	t8,16500
 854:	318d0001 	andi	t5,t4,0x1
 858:	11a00007 	beqz	t5,878 <func_80AAD080+0xf8>
 85c:	27390000 	addiu	t9,t9,0
 860:	240e4075 	li	t6,16501
 864:	3c0f0000 	lui	t7,0x0
 868:	a46e010e 	sh	t6,270(v1)
 86c:	25ef0000 	addiu	t7,t7,0
 870:	10000052 	b	9bc <func_80AAD080+0x23c>
 874:	ae0f0284 	sw	t7,644(s0)
 878:	a478010e 	sh	t8,270(v1)
 87c:	ae190284 	sw	t9,644(s0)
 880:	1000004e 	b	9bc <func_80AAD080+0x23c>
 884:	a6000280 	sh	zero,640(s0)
 888:	14400007 	bnez	v0,8a8 <func_80AAD080+0x128>
 88c:	244a406c 	addiu	t2,v0,16492
 890:	24084018 	li	t0,16408
 894:	3c090000 	lui	t1,0x0
 898:	a468010e 	sh	t0,270(v1)
 89c:	25290000 	addiu	t1,t1,0
 8a0:	10000046 	b	9bc <func_80AAD080+0x23c>
 8a4:	ae090284 	sw	t1,644(s0)
 8a8:	3c0b0000 	lui	t3,0x0
 8ac:	a46a010e 	sh	t2,270(v1)
 8b0:	256b0000 	addiu	t3,t3,0
 8b4:	10000041 	b	9bc <func_80AAD080+0x23c>
 8b8:	ae0b0284 	sw	t3,644(s0)
 8bc:	3c0d0000 	lui	t5,0x0
 8c0:	a46c010e 	sh	t4,270(v1)
 8c4:	25ad0000 	addiu	t5,t5,0
 8c8:	3c040600 	lui	a0,0x600
 8cc:	ae0d0284 	sw	t5,644(s0)
 8d0:	0c000000 	jal	0 <EnMk_Init>
 8d4:	24840368 	addiu	a0,a0,872
 8d8:	44822000 	mtc1	v0,$f4
 8dc:	3c01c080 	lui	at,0xc080
 8e0:	44814000 	mtc1	at,$f8
 8e4:	468021a0 	cvt.s.w	$f6,$f4
 8e8:	3c050600 	lui	a1,0x600
 8ec:	240e0002 	li	t6,2
 8f0:	afae0014 	sw	t6,20(sp)
 8f4:	24a50368 	addiu	a1,a1,872
 8f8:	26040198 	addiu	a0,s0,408
 8fc:	e7a60010 	swc1	$f6,16(sp)
 900:	3c063f80 	lui	a2,0x3f80
 904:	24070000 	li	a3,0
 908:	0c000000 	jal	0 <EnMk_Init>
 90c:	e7a80018 	swc1	$f8,24(sp)
 910:	960f027e 	lhu	t7,638(s0)
 914:	3c010000 	lui	at,0x0
 918:	24044807 	li	a0,18439
 91c:	31f8fffd 	andi	t8,t7,0xfffd
 920:	a618027e 	sh	t8,638(s0)
 924:	0c000000 	jal	0 <EnMk_Init>
 928:	a42013d2 	sh	zero,5074(at)
 92c:	10000024 	b	9c0 <func_80AAD080+0x240>
 930:	8fbf002c 	lw	ra,44(sp)
 934:	8fa40044 	lw	a0,68(sp)
 938:	0c000000 	jal	0 <EnMk_Init>
 93c:	2405001a 	li	a1,26
 940:	3059ffff 	andi	t9,v0,0xffff
 944:	17200003 	bnez	t9,954 <func_80AAD080+0x1d4>
 948:	a602010e 	sh	v0,270(s0)
 94c:	24084018 	li	t0,16408
 950:	a608010e 	sh	t0,270(s0)
 954:	8609008a 	lh	t1,138(s0)
 958:	860a00b6 	lh	t2,182(s0)
 95c:	012a1023 	subu	v0,t1,t2
 960:	00021400 	sll	v0,v0,0x10
 964:	00021403 	sra	v0,v0,0x10
 968:	04400003 	bltz	v0,978 <func_80AAD080+0x1f8>
 96c:	00021823 	negu	v1,v0
 970:	10000001 	b	978 <func_80AAD080+0x1f8>
 974:	00401825 	move	v1,v0
 978:	28612151 	slti	at,v1,8529
 97c:	1020000f 	beqz	at,9bc <func_80AAD080+0x23c>
 980:	3c0142c8 	lui	at,0x42c8
 984:	44810000 	mtc1	at,$f0
 988:	c60a0090 	lwc1	$f10,144(s0)
 98c:	02002025 	move	a0,s0
 990:	8fa50044 	lw	a1,68(sp)
 994:	4600503c 	c.lt.s	$f10,$f0
 998:	00000000 	nop
 99c:	45020008 	bc1fl	9c0 <func_80AAD080+0x240>
 9a0:	8fbf002c 	lw	ra,44(sp)
 9a4:	44060000 	mfc1	a2,$f0
 9a8:	0c000000 	jal	0 <EnMk_Init>
 9ac:	2407000d 	li	a3,13
 9b0:	960b027e 	lhu	t3,638(s0)
 9b4:	356c0001 	ori	t4,t3,0x1
 9b8:	a60c027e 	sh	t4,638(s0)
 9bc:	8fbf002c 	lw	ra,44(sp)
 9c0:	8fb00028 	lw	s0,40(sp)
 9c4:	27bd0040 	addiu	sp,sp,64
 9c8:	03e00008 	jr	ra
 9cc:	00000000 	nop

000009d0 <EnMk_Update>:
 9d0:	27bdffb0 	addiu	sp,sp,-80
 9d4:	afb00028 	sw	s0,40(sp)
 9d8:	00808025 	move	s0,a0
 9dc:	afbf002c 	sw	ra,44(sp)
 9e0:	afa50054 	sw	a1,84(sp)
 9e4:	2606014c 	addiu	a2,s0,332
 9e8:	00c02825 	move	a1,a2
 9ec:	0c000000 	jal	0 <EnMk_Init>
 9f0:	afa60034 	sw	a2,52(sp)
 9f4:	8fa40054 	lw	a0,84(sp)
 9f8:	3c010001 	lui	at,0x1
 9fc:	34211e60 	ori	at,at,0x1e60
 a00:	8fa60034 	lw	a2,52(sp)
 a04:	0c000000 	jal	0 <EnMk_Init>
 a08:	00812821 	addu	a1,a0,at
 a0c:	0c000000 	jal	0 <EnMk_Init>
 a10:	02002025 	move	a0,s0
 a14:	44800000 	mtc1	zero,$f0
 a18:	240e0004 	li	t6,4
 a1c:	afae0014 	sw	t6,20(sp)
 a20:	44060000 	mfc1	a2,$f0
 a24:	44070000 	mfc1	a3,$f0
 a28:	8fa40054 	lw	a0,84(sp)
 a2c:	02002825 	move	a1,s0
 a30:	0c000000 	jal	0 <EnMk_Init>
 a34:	e7a00010 	swc1	$f0,16(sp)
 a38:	960f027e 	lhu	t7,638(s0)
 a3c:	31f80002 	andi	t8,t7,0x2
 a40:	57000009 	bnezl	t8,a68 <EnMk_Update+0x98>
 a44:	8e190284 	lw	t9,644(s0)
 a48:	0c000000 	jal	0 <EnMk_Init>
 a4c:	26040198 	addiu	a0,s0,408
 a50:	50400005 	beqzl	v0,a68 <EnMk_Update+0x98>
 a54:	8e190284 	lw	t9,644(s0)
 a58:	9619027e 	lhu	t9,638(s0)
 a5c:	37280002 	ori	t0,t9,0x2
 a60:	a608027e 	sh	t0,638(s0)
 a64:	8e190284 	lw	t9,644(s0)
 a68:	02002025 	move	a0,s0
 a6c:	8fa50054 	lw	a1,84(sp)
 a70:	0320f809 	jalr	t9
 a74:	00000000 	nop
 a78:	9609027e 	lhu	t1,638(s0)
 a7c:	26040278 	addiu	a0,s0,632
 a80:	00002825 	move	a1,zero
 a84:	312a0001 	andi	t2,t1,0x1
 a88:	1140000e 	beqz	t2,ac4 <EnMk_Update+0xf4>
 a8c:	24060006 	li	a2,6
 a90:	8e0c0038 	lw	t4,56(s0)
 a94:	8fa40054 	lw	a0,84(sp)
 a98:	02002825 	move	a1,s0
 a9c:	afac0010 	sw	t4,16(sp)
 aa0:	8e0b003c 	lw	t3,60(s0)
 aa4:	26060278 	addiu	a2,s0,632
 aa8:	27a70040 	addiu	a3,sp,64
 aac:	afab0014 	sw	t3,20(sp)
 ab0:	8e0c0040 	lw	t4,64(s0)
 ab4:	0c000000 	jal	0 <EnMk_Init>
 ab8:	afac0018 	sw	t4,24(sp)
 abc:	1000000d 	b	af4 <EnMk_Update+0x124>
 ac0:	9605027e 	lhu	a1,638(s0)
 ac4:	240d0064 	li	t5,100
 ac8:	afad0010 	sw	t5,16(sp)
 acc:	0c000000 	jal	0 <EnMk_Init>
 ad0:	24071838 	li	a3,6200
 ad4:	240e0064 	li	t6,100
 ad8:	afae0010 	sw	t6,16(sp)
 adc:	2604027a 	addiu	a0,s0,634
 ae0:	00002825 	move	a1,zero
 ae4:	24060006 	li	a2,6
 ae8:	0c000000 	jal	0 <EnMk_Init>
 aec:	24071838 	li	a3,6200
 af0:	9605027e 	lhu	a1,638(s0)
 af4:	8faf0054 	lw	t7,84(sp)
 af8:	30b80008 	andi	t8,a1,0x8
 afc:	13000008 	beqz	t8,b20 <EnMk_Update+0x150>
 b00:	8de31c44 	lw	v1,7236(t7)
 b04:	8c680680 	lw	t0,1664(v1)
 b08:	30a9fff7 	andi	t1,a1,0xfff7
 b0c:	31190400 	andi	t9,t0,0x400
 b10:	5720003d 	bnezl	t9,c08 <EnMk_Update+0x238>
 b14:	8fbf002c 	lw	ra,44(sp)
 b18:	1000003a 	b	c04 <EnMk_Update+0x234>
 b1c:	a609027e 	sh	t1,638(s0)
 b20:	806a014f 	lb	t2,335(v1)
 b24:	24010001 	li	at,1
 b28:	34ab0008 	ori	t3,a1,0x8
 b2c:	55410004 	bnel	t2,at,b40 <EnMk_Update+0x170>
 b30:	8c6c0680 	lw	t4,1664(v1)
 b34:	10000033 	b	c04 <EnMk_Update+0x234>
 b38:	a60b027e 	sh	t3,638(s0)
 b3c:	8c6c0680 	lw	t4,1664(v1)
 b40:	318d0400 	andi	t5,t4,0x400
 b44:	51a00030 	beqzl	t5,c08 <EnMk_Update+0x238>
 b48:	8fbf002c 	lw	ra,44(sp)
 b4c:	c4640084 	lwc1	$f4,132(v1)
 b50:	4600218d 	trunc.w.s	$f6,$f4
 b54:	44023000 	mfc1	v0,$f6
 b58:	00000000 	nop
 b5c:	00021400 	sll	v0,v0,0x10
 b60:	00021403 	sra	v0,v0,0x10
 b64:	18400027 	blez	v0,c04 <EnMk_Update+0x234>
 b68:	28410140 	slti	at,v0,320
 b6c:	14200008 	bnez	at,b90 <EnMk_Update+0x1c0>
 b70:	30a80004 	andi	t0,a1,0x4
 b74:	28410163 	slti	at,v0,355
 b78:	14200003 	bnez	at,b88 <EnMk_Update+0x1b8>
 b7c:	00000000 	nop
 b80:	10000012 	b	bcc <EnMk_Update+0x1fc>
 b84:	24020008 	li	v0,8
 b88:	10000010 	b	bcc <EnMk_Update+0x1fc>
 b8c:	24020007 	li	v0,7
 b90:	28410050 	slti	at,v0,80
 b94:	50200004 	beqzl	at,ba8 <EnMk_Update+0x1d8>
 b98:	44824000 	mtc1	v0,$f8
 b9c:	1000000b 	b	bcc <EnMk_Update+0x1fc>
 ba0:	24020001 	li	v0,1
 ba4:	44824000 	mtc1	v0,$f8
 ba8:	3c010000 	lui	at,0x0
 bac:	c4300000 	lwc1	$f16,0(at)
 bb0:	468042a0 	cvt.s.w	$f10,$f8
 bb4:	46105482 	mul.s	$f18,$f10,$f16
 bb8:	4600910d 	trunc.w.s	$f4,$f18
 bbc:	44022000 	mfc1	v0,$f4
 bc0:	00000000 	nop
 bc4:	00021400 	sll	v0,v0,0x10
 bc8:	00021403 	sra	v0,v0,0x10
 bcc:	86180280 	lh	t8,640(s0)
 bd0:	0302082a 	slt	at,t8,v0
 bd4:	5020000c 	beqzl	at,c08 <EnMk_Update+0x238>
 bd8:	8fbf002c 	lw	ra,44(sp)
 bdc:	15000009 	bnez	t0,c04 <EnMk_Update+0x234>
 be0:	a6020280 	sh	v0,640(s0)
 be4:	86190280 	lh	t9,640(s0)
 be8:	34a90004 	ori	t1,a1,0x4
 bec:	24044802 	li	a0,18434
 bf0:	2b210008 	slti	at,t9,8
 bf4:	54200004 	bnezl	at,c08 <EnMk_Update+0x238>
 bf8:	8fbf002c 	lw	ra,44(sp)
 bfc:	0c000000 	jal	0 <EnMk_Init>
 c00:	a609027e 	sh	t1,638(s0)
 c04:	8fbf002c 	lw	ra,44(sp)
 c08:	8fb00028 	lw	s0,40(sp)
 c0c:	27bd0050 	addiu	sp,sp,80
 c10:	03e00008 	jr	ra
 c14:	00000000 	nop

00000c18 <func_80AAD518>:
 c18:	2401000b 	li	at,11
 c1c:	afa40000 	sw	a0,0(sp)
 c20:	afa60008 	sw	a2,8(sp)
 c24:	14a1000b 	bne	a1,at,c54 <func_80AAD518+0x3c>
 c28:	afa7000c 	sw	a3,12(sp)
 c2c:	8fa20014 	lw	v0,20(sp)
 c30:	8fa30010 	lw	v1,16(sp)
 c34:	844f027a 	lh	t7,634(v0)
 c38:	846e0002 	lh	t6,2(v1)
 c3c:	84790004 	lh	t9,4(v1)
 c40:	01cfc023 	subu	t8,t6,t7
 c44:	a4780002 	sh	t8,2(v1)
 c48:	84480278 	lh	t0,632(v0)
 c4c:	03284821 	addu	t1,t9,t0
 c50:	a4690004 	sh	t1,4(v1)
 c54:	03e00008 	jr	ra
 c58:	00001025 	move	v0,zero

00000c5c <func_80AAD55C>:
 c5c:	27bdffe8 	addiu	sp,sp,-24
 c60:	2401000b 	li	at,11
 c64:	afbf0014 	sw	ra,20(sp)
 c68:	afa40018 	sw	a0,24(sp)
 c6c:	afa60020 	sw	a2,32(sp)
 c70:	14a10006 	bne	a1,at,c8c <func_80AAD55C+0x30>
 c74:	afa70024 	sw	a3,36(sp)
 c78:	8fa50028 	lw	a1,40(sp)
 c7c:	3c040000 	lui	a0,0x0
 c80:	24840000 	addiu	a0,a0,0
 c84:	0c000000 	jal	0 <EnMk_Init>
 c88:	24a50038 	addiu	a1,a1,56
 c8c:	8fbf0014 	lw	ra,20(sp)
 c90:	27bd0018 	addiu	sp,sp,24
 c94:	03e00008 	jr	ra
 c98:	00000000 	nop

00000c9c <EnMk_Draw>:
 c9c:	27bdffd8 	addiu	sp,sp,-40
 ca0:	afbf0024 	sw	ra,36(sp)
 ca4:	afa40028 	sw	a0,40(sp)
 ca8:	afa5002c 	sw	a1,44(sp)
 cac:	0c000000 	jal	0 <EnMk_Init>
 cb0:	8ca40000 	lw	a0,0(a1)
 cb4:	8fa20028 	lw	v0,40(sp)
 cb8:	3c0f0000 	lui	t7,0x0
 cbc:	3c180000 	lui	t8,0x0
 cc0:	8c45019c 	lw	a1,412(v0)
 cc4:	8c4601b8 	lw	a2,440(v0)
 cc8:	9047019a 	lbu	a3,410(v0)
 ccc:	27180000 	addiu	t8,t8,0
 cd0:	25ef0000 	addiu	t7,t7,0
 cd4:	afaf0010 	sw	t7,16(sp)
 cd8:	afb80014 	sw	t8,20(sp)
 cdc:	8fa4002c 	lw	a0,44(sp)
 ce0:	0c000000 	jal	0 <EnMk_Init>
 ce4:	afa20018 	sw	v0,24(sp)
 ce8:	8fbf0024 	lw	ra,36(sp)
 cec:	27bd0028 	addiu	sp,sp,40
 cf0:	03e00008 	jr	ra
 cf4:	00000000 	nop
	...
