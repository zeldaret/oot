
build/src/overlays/actors/ovl_Bg_Ice_Turara/z_bg_ice_turara.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgIceTurara_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgIceTurara_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgIceTurara_Init>
  2c:	00002825 	move	a1,zero
  30:	3c040600 	lui	a0,0x600
  34:	24842594 	addiu	a0,a0,9620
  38:	0c000000 	jal	0 <BgIceTurara_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	2605016c 	addiu	a1,s0,364
  44:	afa50020 	sw	a1,32(sp)
  48:	0c000000 	jal	0 <BgIceTurara_Init>
  4c:	8fa40034 	lw	a0,52(sp)
  50:	3c070000 	lui	a3,0x0
  54:	24e70000 	addiu	a3,a3,0
  58:	8fa40034 	lw	a0,52(sp)
  5c:	8fa50020 	lw	a1,32(sp)
  60:	0c000000 	jal	0 <BgIceTurara_Init>
  64:	02003025 	move	a2,s0
  68:	02002025 	move	a0,s0
  6c:	0c000000 	jal	0 <BgIceTurara_Init>
  70:	8fa50020 	lw	a1,32(sp)
  74:	8fa40034 	lw	a0,52(sp)
  78:	02003025 	move	a2,s0
  7c:	8fa70024 	lw	a3,36(sp)
  80:	0c000000 	jal	0 <BgIceTurara_Init>
  84:	24850810 	addiu	a1,a0,2064
  88:	860f001c 	lh	t7,28(s0)
  8c:	ae02014c 	sw	v0,332(s0)
  90:	24198000 	li	t9,-32768
  94:	15e00005 	bnez	t7,ac <BgIceTurara_Init+0xac>
  98:	3c014496 	lui	at,0x4496
  9c:	3c180000 	lui	t8,0x0
  a0:	27180000 	addiu	t8,t8,0
  a4:	10000007 	b	c4 <BgIceTurara_Init+0xc4>
  a8:	ae180164 	sw	t8,356(s0)
  ac:	44812000 	mtc1	at,$f4
  b0:	3c080000 	lui	t0,0x0
  b4:	25080000 	addiu	t0,t0,0
  b8:	a61900b4 	sh	t9,180(s0)
  bc:	ae080164 	sw	t0,356(s0)
  c0:	e60400bc 	swc1	$f4,188(s0)
  c4:	8fbf001c 	lw	ra,28(sp)
  c8:	8fb00018 	lw	s0,24(sp)
  cc:	27bd0030 	addiu	sp,sp,48
  d0:	03e00008 	jr	ra
  d4:	00000000 	nop

000000d8 <BgIceTurara_Destroy>:
  d8:	27bdffe8 	addiu	sp,sp,-24
  dc:	afa40018 	sw	a0,24(sp)
  e0:	8fae0018 	lw	t6,24(sp)
  e4:	afbf0014 	sw	ra,20(sp)
  e8:	00a03825 	move	a3,a1
  ec:	00a02025 	move	a0,a1
  f0:	8dc6014c 	lw	a2,332(t6)
  f4:	afa7001c 	sw	a3,28(sp)
  f8:	0c000000 	jal	0 <BgIceTurara_Init>
  fc:	24a50810 	addiu	a1,a1,2064
 100:	8fa50018 	lw	a1,24(sp)
 104:	8fa4001c 	lw	a0,28(sp)
 108:	0c000000 	jal	0 <BgIceTurara_Init>
 10c:	24a5016c 	addiu	a1,a1,364
 110:	8fbf0014 	lw	ra,20(sp)
 114:	27bd0018 	addiu	sp,sp,24
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <func_80892040>:
 120:	27bdff58 	addiu	sp,sp,-168
 124:	afb1005c 	sw	s1,92(sp)
 128:	00808825 	move	s1,a0
 12c:	afbe0078 	sw	s8,120(sp)
 130:	00a0f025 	move	s8,a1
 134:	afbf007c 	sw	ra,124(sp)
 138:	afa600b0 	sw	a2,176(sp)
 13c:	00a02025 	move	a0,a1
 140:	afb70074 	sw	s7,116(sp)
 144:	afb60070 	sw	s6,112(sp)
 148:	afb5006c 	sw	s5,108(sp)
 14c:	afb40068 	sw	s4,104(sp)
 150:	afb30064 	sw	s3,100(sp)
 154:	afb20060 	sw	s2,96(sp)
 158:	afb00058 	sw	s0,88(sp)
 15c:	f7be0050 	sdc1	$f30,80(sp)
 160:	f7bc0048 	sdc1	$f28,72(sp)
 164:	f7ba0040 	sdc1	$f26,64(sp)
 168:	f7b80038 	sdc1	$f24,56(sp)
 16c:	f7b60030 	sdc1	$f22,48(sp)
 170:	f7b40028 	sdc1	$f20,40(sp)
 174:	26250024 	addiu	a1,s1,36
 178:	2406001e 	li	a2,30
 17c:	0c000000 	jal	0 <BgIceTurara_Init>
 180:	240728cb 	li	a3,10443
 184:	3c010000 	lui	at,0x0
 188:	c43e0000 	lwc1	$f30,0(at)
 18c:	3c010000 	lui	at,0x0
 190:	c43c0000 	lwc1	$f28,0(at)
 194:	3c014080 	lui	at,0x4080
 198:	4481d000 	mtc1	at,$f26
 19c:	3c0140e0 	lui	at,0x40e0
 1a0:	4481b000 	mtc1	at,$f22
 1a4:	3c014100 	lui	at,0x4100
 1a8:	3c160000 	lui	s6,0x0
 1ac:	3c150000 	lui	s5,0x0
 1b0:	3c140000 	lui	s4,0x0
 1b4:	4481a000 	mtc1	at,$f20
 1b8:	26940000 	addiu	s4,s4,0
 1bc:	26b50000 	addiu	s5,s5,0
 1c0:	26d60000 	addiu	s6,s6,0
 1c4:	afa00088 	sw	zero,136(sp)
 1c8:	2417000a 	li	s7,10
 1cc:	27b3009c 	addiu	s3,sp,156
 1d0:	27b20090 	addiu	s2,sp,144
 1d4:	8fa20088 	lw	v0,136(sp)
 1d8:	c7a800b0 	lwc1	$f8,176(sp)
 1dc:	00008025 	move	s0,zero
 1e0:	44822000 	mtc1	v0,$f4
 1e4:	00000000 	nop
 1e8:	468021a0 	cvt.s.w	$f6,$f4
 1ec:	46083602 	mul.s	$f24,$f6,$f8
 1f0:	00000000 	nop
 1f4:	0c000000 	jal	0 <BgIceTurara_Init>
 1f8:	4600a306 	mov.s	$f12,$f20
 1fc:	c62a0024 	lwc1	$f10,36(s1)
 200:	460a0400 	add.s	$f16,$f0,$f10
 204:	0c000000 	jal	0 <BgIceTurara_Init>
 208:	e7b00090 	swc1	$f16,144(sp)
 20c:	c7b200b0 	lwc1	$f18,176(sp)
 210:	c6260028 	lwc1	$f6,40(s1)
 214:	4600a306 	mov.s	$f12,$f20
 218:	46120102 	mul.s	$f4,$f0,$f18
 21c:	46062200 	add.s	$f8,$f4,$f6
 220:	46184280 	add.s	$f10,$f8,$f24
 224:	0c000000 	jal	0 <BgIceTurara_Init>
 228:	e7aa0094 	swc1	$f10,148(sp)
 22c:	c630002c 	lwc1	$f16,44(s1)
 230:	4600b306 	mov.s	$f12,$f22
 234:	46100480 	add.s	$f18,$f0,$f16
 238:	0c000000 	jal	0 <BgIceTurara_Init>
 23c:	e7b20098 	swc1	$f18,152(sp)
 240:	e7a0009c 	swc1	$f0,156(sp)
 244:	0c000000 	jal	0 <BgIceTurara_Init>
 248:	4600b306 	mov.s	$f12,$f22
 24c:	0c000000 	jal	0 <BgIceTurara_Init>
 250:	e7a000a4 	swc1	$f0,164(sp)
 254:	461a0102 	mul.s	$f4,$f0,$f26
 258:	46142180 	add.s	$f6,$f4,$f20
 25c:	0c000000 	jal	0 <BgIceTurara_Init>
 260:	e7a600a0 	swc1	$f6,160(sp)
 264:	461c0202 	mul.s	$f8,$f0,$f28
 268:	240e001e 	li	t6,30
 26c:	afae001c 	sw	t6,28(sp)
 270:	03c02025 	move	a0,s8
 274:	02402825 	move	a1,s2
 278:	02603825 	move	a3,s3
 27c:	afb40010 	sw	s4,16(sp)
 280:	461e4280 	add.s	$f10,$f8,$f30
 284:	afb50014 	sw	s5,20(sp)
 288:	afb60018 	sw	s6,24(sp)
 28c:	44065000 	mfc1	a2,$f10
 290:	0c000000 	jal	0 <BgIceTurara_Init>
 294:	00000000 	nop
 298:	26100001 	addiu	s0,s0,1
 29c:	1617ffd5 	bne	s0,s7,1f4 <func_80892040+0xd4>
 2a0:	00000000 	nop
 2a4:	8faf0088 	lw	t7,136(sp)
 2a8:	24010002 	li	at,2
 2ac:	25f80001 	addiu	t8,t7,1
 2b0:	1701ffc8 	bne	t8,at,1d4 <func_80892040+0xb4>
 2b4:	afb80088 	sw	t8,136(sp)
 2b8:	8fbf007c 	lw	ra,124(sp)
 2bc:	d7b40028 	ldc1	$f20,40(sp)
 2c0:	d7b60030 	ldc1	$f22,48(sp)
 2c4:	d7b80038 	ldc1	$f24,56(sp)
 2c8:	d7ba0040 	ldc1	$f26,64(sp)
 2cc:	d7bc0048 	ldc1	$f28,72(sp)
 2d0:	d7be0050 	ldc1	$f30,80(sp)
 2d4:	8fb00058 	lw	s0,88(sp)
 2d8:	8fb1005c 	lw	s1,92(sp)
 2dc:	8fb20060 	lw	s2,96(sp)
 2e0:	8fb30064 	lw	s3,100(sp)
 2e4:	8fb40068 	lw	s4,104(sp)
 2e8:	8fb5006c 	lw	s5,108(sp)
 2ec:	8fb60070 	lw	s6,112(sp)
 2f0:	8fb70074 	lw	s7,116(sp)
 2f4:	8fbe0078 	lw	s8,120(sp)
 2f8:	03e00008 	jr	ra
 2fc:	27bd00a8 	addiu	sp,sp,168

00000300 <func_80892220>:
 300:	27bdffe8 	addiu	sp,sp,-24
 304:	afbf0014 	sw	ra,20(sp)
 308:	afa5001c 	sw	a1,28(sp)
 30c:	908e017d 	lbu	t6,381(a0)
 310:	3c010001 	lui	at,0x1
 314:	00803825 	move	a3,a0
 318:	31cf0002 	andi	t7,t6,0x2
 31c:	11e00008 	beqz	t7,340 <func_80892220+0x40>
 320:	34211e60 	ori	at,at,0x1e60
 324:	3c064248 	lui	a2,0x4248
 328:	0c000000 	jal	0 <BgIceTurara_Init>
 32c:	afa70018 	sw	a3,24(sp)
 330:	0c000000 	jal	0 <BgIceTurara_Init>
 334:	8fa40018 	lw	a0,24(sp)
 338:	10000006 	b	354 <func_80892220+0x54>
 33c:	8fbf0014 	lw	ra,20(sp)
 340:	8fa4001c 	lw	a0,28(sp)
 344:	24e6016c 	addiu	a2,a3,364
 348:	0c000000 	jal	0 <BgIceTurara_Init>
 34c:	00812821 	addu	a1,a0,at
 350:	8fbf0014 	lw	ra,20(sp)
 354:	27bd0018 	addiu	sp,sp,24
 358:	03e00008 	jr	ra
 35c:	00000000 	nop

00000360 <func_80892280>:
 360:	afa50004 	sw	a1,4(sp)
 364:	3c014270 	lui	at,0x4270
 368:	44813000 	mtc1	at,$f6
 36c:	c4840090 	lwc1	$f4,144(a0)
 370:	3c0f0000 	lui	t7,0x0
 374:	240e000a 	li	t6,10
 378:	4606203c 	c.lt.s	$f4,$f6
 37c:	25ef0000 	addiu	t7,t7,0
 380:	45000003 	bc1f	390 <func_80892280+0x30>
 384:	00000000 	nop
 388:	a48e0168 	sh	t6,360(a0)
 38c:	ac8f0164 	sw	t7,356(a0)
 390:	03e00008 	jr	ra
 394:	00000000 	nop

00000398 <func_808922B8>:
 398:	27bdffd0 	addiu	sp,sp,-48
 39c:	afbf001c 	sw	ra,28(sp)
 3a0:	afb00018 	sw	s0,24(sp)
 3a4:	afa50034 	sw	a1,52(sp)
 3a8:	84820168 	lh	v0,360(a0)
 3ac:	00808025 	move	s0,a0
 3b0:	240528d4 	li	a1,10452
 3b4:	10400003 	beqz	v0,3c4 <func_808922B8+0x2c>
 3b8:	244effff 	addiu	t6,v0,-1
 3bc:	a48e0168 	sh	t6,360(a0)
 3c0:	84820168 	lh	v0,360(a0)
 3c4:	04410004 	bgez	v0,3d8 <func_808922B8+0x40>
 3c8:	304f0003 	andi	t7,v0,0x3
 3cc:	11e00002 	beqz	t7,3d8 <func_808922B8+0x40>
 3d0:	00000000 	nop
 3d4:	25effffc 	addiu	t7,t7,-4
 3d8:	15e00004 	bnez	t7,3ec <func_808922B8+0x54>
 3dc:	00000000 	nop
 3e0:	0c000000 	jal	0 <BgIceTurara_Init>
 3e4:	02002025 	move	a0,s0
 3e8:	86020168 	lh	v0,360(s0)
 3ec:	14400017 	bnez	v0,44c <func_808922B8+0xb4>
 3f0:	02002025 	move	a0,s0
 3f4:	c6040008 	lwc1	$f4,8(s0)
 3f8:	c6060010 	lwc1	$f6,16(s0)
 3fc:	2606016c 	addiu	a2,s0,364
 400:	e6040024 	swc1	$f4,36(s0)
 404:	e606002c 	swc1	$f6,44(s0)
 408:	afa60024 	sw	a2,36(sp)
 40c:	0c000000 	jal	0 <BgIceTurara_Init>
 410:	00c02825 	move	a1,a2
 414:	8fa40034 	lw	a0,52(sp)
 418:	3c010001 	lui	at,0x1
 41c:	34211e60 	ori	at,at,0x1e60
 420:	8fa60024 	lw	a2,36(sp)
 424:	0c000000 	jal	0 <BgIceTurara_Init>
 428:	00812821 	addu	a1,a0,at
 42c:	8fa40034 	lw	a0,52(sp)
 430:	8e06014c 	lw	a2,332(s0)
 434:	0c000000 	jal	0 <BgIceTurara_Init>
 438:	24850810 	addiu	a1,a0,2064
 43c:	3c190000 	lui	t9,0x0
 440:	27390000 	addiu	t9,t9,0
 444:	1000002a 	b	4f0 <func_808922B8+0x158>
 448:	ae190164 	sw	t9,356(s0)
 44c:	0c000000 	jal	0 <BgIceTurara_Init>
 450:	00000000 	nop
 454:	0c000000 	jal	0 <BgIceTurara_Init>
 458:	e7a00028 	swc1	$f0,40(sp)
 45c:	3c013f00 	lui	at,0x3f00
 460:	44811000 	mtc1	at,$f2
 464:	c7b00028 	lwc1	$f16,40(sp)
 468:	24020001 	li	v0,1
 46c:	4602003c 	c.lt.s	$f0,$f2
 470:	46101482 	mul.s	$f18,$f2,$f16
 474:	45000003 	bc1f	484 <func_808922B8+0xec>
 478:	00000000 	nop
 47c:	10000001 	b	484 <func_808922B8+0xec>
 480:	2402ffff 	li	v0,-1
 484:	44824000 	mtc1	v0,$f8
 488:	46029100 	add.s	$f4,$f18,$f2
 48c:	468042a0 	cvt.s.w	$f10,$f8
 490:	c6080008 	lwc1	$f8,8(s0)
 494:	46045182 	mul.s	$f6,$f10,$f4
 498:	46083400 	add.s	$f16,$f6,$f8
 49c:	0c000000 	jal	0 <BgIceTurara_Init>
 4a0:	e6100024 	swc1	$f16,36(s0)
 4a4:	0c000000 	jal	0 <BgIceTurara_Init>
 4a8:	e7a00028 	swc1	$f0,40(sp)
 4ac:	3c013f00 	lui	at,0x3f00
 4b0:	44811000 	mtc1	at,$f2
 4b4:	c7a40028 	lwc1	$f4,40(sp)
 4b8:	24020001 	li	v0,1
 4bc:	4602003c 	c.lt.s	$f0,$f2
 4c0:	46041182 	mul.s	$f6,$f2,$f4
 4c4:	45000003 	bc1f	4d4 <func_808922B8+0x13c>
 4c8:	00000000 	nop
 4cc:	10000001 	b	4d4 <func_808922B8+0x13c>
 4d0:	2402ffff 	li	v0,-1
 4d4:	44829000 	mtc1	v0,$f18
 4d8:	46023200 	add.s	$f8,$f6,$f2
 4dc:	468092a0 	cvt.s.w	$f10,$f18
 4e0:	c6120010 	lwc1	$f18,16(s0)
 4e4:	46085402 	mul.s	$f16,$f10,$f8
 4e8:	46128100 	add.s	$f4,$f16,$f18
 4ec:	e604002c 	swc1	$f4,44(s0)
 4f0:	8fbf001c 	lw	ra,28(sp)
 4f4:	8fb00018 	lw	s0,24(sp)
 4f8:	27bd0030 	addiu	sp,sp,48
 4fc:	03e00008 	jr	ra
 500:	00000000 	nop

00000504 <func_80892424>:
 504:	27bdffd0 	addiu	sp,sp,-48
 508:	afbf0024 	sw	ra,36(sp)
 50c:	afb10020 	sw	s1,32(sp)
 510:	afb0001c 	sw	s0,28(sp)
 514:	9082017c 	lbu	v0,380(a0)
 518:	00a08825 	move	s1,a1
 51c:	00808025 	move	s0,a0
 520:	304e0002 	andi	t6,v0,0x2
 524:	15c00005 	bnez	t6,53c <func_80892424+0x38>
 528:	02202825 	move	a1,s1
 52c:	948f0088 	lhu	t7,136(a0)
 530:	31f80001 	andi	t8,t7,0x1
 534:	13000022 	beqz	t8,5c0 <func_80892424+0xbc>
 538:	00000000 	nop
 53c:	c6000080 	lwc1	$f0,128(s0)
 540:	c6040028 	lwc1	$f4,40(s0)
 544:	96080088 	lhu	t0,136(s0)
 548:	3059fffd 	andi	t9,v0,0xfffd
 54c:	4600203c 	c.lt.s	$f4,$f0
 550:	3109fffe 	andi	t1,t0,0xfffe
 554:	a219017c 	sb	t9,380(s0)
 558:	a6090088 	sh	t1,136(s0)
 55c:	45000002 	bc1f	568 <func_80892424+0x64>
 560:	02002025 	move	a0,s0
 564:	e6000028 	swc1	$f0,40(s0)
 568:	0c000000 	jal	0 <BgIceTurara_Init>
 56c:	3c064220 	lui	a2,0x4220
 570:	860a001c 	lh	t2,28(s0)
 574:	24010002 	li	at,2
 578:	1541000d 	bne	t2,at,5b0 <func_80892424+0xac>
 57c:	3c0142f0 	lui	at,0x42f0
 580:	44814000 	mtc1	at,$f8
 584:	c606000c 	lwc1	$f6,12(s0)
 588:	02202025 	move	a0,s1
 58c:	26250810 	addiu	a1,s1,2064
 590:	46083280 	add.s	$f10,$f6,$f8
 594:	8e06014c 	lw	a2,332(s0)
 598:	0c000000 	jal	0 <BgIceTurara_Init>
 59c:	e60a0028 	swc1	$f10,40(s0)
 5a0:	3c0b0000 	lui	t3,0x0
 5a4:	256b0000 	addiu	t3,t3,0
 5a8:	10000025 	b	640 <func_80892424+0x13c>
 5ac:	ae0b0164 	sw	t3,356(s0)
 5b0:	0c000000 	jal	0 <BgIceTurara_Init>
 5b4:	02002025 	move	a0,s0
 5b8:	10000022 	b	644 <func_80892424+0x140>
 5bc:	8fbf0024 	lw	ra,36(sp)
 5c0:	0c000000 	jal	0 <BgIceTurara_Init>
 5c4:	02002025 	move	a0,s0
 5c8:	3c014220 	lui	at,0x4220
 5cc:	44819000 	mtc1	at,$f18
 5d0:	c6100028 	lwc1	$f16,40(s0)
 5d4:	44800000 	mtc1	zero,$f0
 5d8:	240c0004 	li	t4,4
 5dc:	46128100 	add.s	$f4,$f16,$f18
 5e0:	44060000 	mfc1	a2,$f0
 5e4:	44070000 	mfc1	a3,$f0
 5e8:	02202025 	move	a0,s1
 5ec:	e6040028 	swc1	$f4,40(s0)
 5f0:	afac0014 	sw	t4,20(sp)
 5f4:	02002825 	move	a1,s0
 5f8:	0c000000 	jal	0 <BgIceTurara_Init>
 5fc:	e7a00010 	swc1	$f0,16(sp)
 600:	3c014220 	lui	at,0x4220
 604:	44814000 	mtc1	at,$f8
 608:	c6060028 	lwc1	$f6,40(s0)
 60c:	2606016c 	addiu	a2,s0,364
 610:	00c02825 	move	a1,a2
 614:	46083281 	sub.s	$f10,$f6,$f8
 618:	02002025 	move	a0,s0
 61c:	e60a0028 	swc1	$f10,40(s0)
 620:	0c000000 	jal	0 <BgIceTurara_Init>
 624:	afa6002c 	sw	a2,44(sp)
 628:	3c010001 	lui	at,0x1
 62c:	34211e60 	ori	at,at,0x1e60
 630:	8fa6002c 	lw	a2,44(sp)
 634:	02212821 	addu	a1,s1,at
 638:	0c000000 	jal	0 <BgIceTurara_Init>
 63c:	02202025 	move	a0,s1
 640:	8fbf0024 	lw	ra,36(sp)
 644:	8fb0001c 	lw	s0,28(sp)
 648:	8fb10020 	lw	s1,32(sp)
 64c:	03e00008 	jr	ra
 650:	27bd0030 	addiu	sp,sp,48

00000654 <func_80892574>:
 654:	27bdffe8 	addiu	sp,sp,-24
 658:	afbf0014 	sw	ra,20(sp)
 65c:	afa5001c 	sw	a1,28(sp)
 660:	00803825 	move	a3,a0
 664:	8ce5000c 	lw	a1,12(a3)
 668:	afa70018 	sw	a3,24(sp)
 66c:	24840028 	addiu	a0,a0,40
 670:	0c000000 	jal	0 <BgIceTurara_Init>
 674:	3c063f80 	lui	a2,0x3f80
 678:	10400006 	beqz	v0,694 <func_80892574+0x40>
 67c:	8fa70018 	lw	a3,24(sp)
 680:	44802000 	mtc1	zero,$f4
 684:	3c0e0000 	lui	t6,0x0
 688:	25ce0000 	addiu	t6,t6,0
 68c:	acee0164 	sw	t6,356(a3)
 690:	e4e40060 	swc1	$f4,96(a3)
 694:	8fbf0014 	lw	ra,20(sp)
 698:	27bd0018 	addiu	sp,sp,24
 69c:	03e00008 	jr	ra
 6a0:	00000000 	nop

000006a4 <BgIceTurara_Update>:
 6a4:	27bdffe8 	addiu	sp,sp,-24
 6a8:	afbf0014 	sw	ra,20(sp)
 6ac:	8c990164 	lw	t9,356(a0)
 6b0:	0320f809 	jalr	t9
 6b4:	00000000 	nop
 6b8:	8fbf0014 	lw	ra,20(sp)
 6bc:	27bd0018 	addiu	sp,sp,24
 6c0:	03e00008 	jr	ra
 6c4:	00000000 	nop

000006c8 <BgIceTurara_Draw>:
 6c8:	27bdffe8 	addiu	sp,sp,-24
 6cc:	afa40018 	sw	a0,24(sp)
 6d0:	00a02025 	move	a0,a1
 6d4:	afbf0014 	sw	ra,20(sp)
 6d8:	3c050600 	lui	a1,0x600
 6dc:	0c000000 	jal	0 <BgIceTurara_Init>
 6e0:	24a523d0 	addiu	a1,a1,9168
 6e4:	8fbf0014 	lw	ra,20(sp)
 6e8:	27bd0018 	addiu	sp,sp,24
 6ec:	03e00008 	jr	ra
 6f0:	00000000 	nop
	...
