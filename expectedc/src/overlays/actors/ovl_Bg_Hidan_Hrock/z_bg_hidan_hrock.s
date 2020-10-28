
build/src/overlays/actors/ovl_Bg_Hidan_Hrock/z_bg_hidan_hrock.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanHrock_Init>:
   0:	27bdff50 	addiu	sp,sp,-176
   4:	afa500b4 	sw	a1,180(sp)
   8:	afbf0054 	sw	ra,84(sp)
   c:	afb00030 	sw	s0,48(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afbe0050 	sw	s8,80(sp)
  1c:	afb7004c 	sw	s7,76(sp)
  20:	afb60048 	sw	s6,72(sp)
  24:	afb50044 	sw	s5,68(sp)
  28:	afb40040 	sw	s4,64(sp)
  2c:	afb3003c 	sw	s3,60(sp)
  30:	afb20038 	sw	s2,56(sp)
  34:	afb10034 	sw	s1,52(sp)
  38:	f7b60028 	sdc1	$f22,40(sp)
  3c:	f7b40020 	sdc1	$f20,32(sp)
  40:	afa00070 	sw	zero,112(sp)
  44:	0c000000 	jal	0 <BgHidanHrock_Init>
  48:	24a50000 	addiu	a1,a1,0
  4c:	8618001c 	lh	t8,28(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	261e016c 	addiu	s8,s0,364
  58:	0018ca03 	sra	t9,t8,0x8
  5c:	332800ff 	andi	t0,t9,0xff
  60:	31cf003f 	andi	t7,t6,0x3f
  64:	a20f016a 	sb	t7,362(s0)
  68:	a608001c 	sh	t0,28(s0)
  6c:	8fa400b4 	lw	a0,180(sp)
  70:	0c000000 	jal	0 <BgHidanHrock_Init>
  74:	03c02825 	move	a1,s8
  78:	3c070000 	lui	a3,0x0
  7c:	2609018c 	addiu	t1,s0,396
  80:	afa90010 	sw	t1,16(sp)
  84:	24e70000 	addiu	a3,a3,0
  88:	8fa400b4 	lw	a0,180(sp)
  8c:	03c02825 	move	a1,s8
  90:	0c000000 	jal	0 <BgHidanHrock_Init>
  94:	02003025 	move	a2,s0
  98:	02002025 	move	a0,s0
  9c:	0c000000 	jal	0 <BgHidanHrock_Init>
  a0:	00002825 	move	a1,zero
  a4:	0c000000 	jal	0 <BgHidanHrock_Init>
  a8:	860400b6 	lh	a0,182(s0)
  ac:	46000586 	mov.s	$f22,$f0
  b0:	0c000000 	jal	0 <BgHidanHrock_Init>
  b4:	860400b6 	lh	a0,182(s0)
  b8:	860a001c 	lh	t2,28(s0)
  bc:	46000506 	mov.s	$f20,$f0
  c0:	00009025 	move	s2,zero
  c4:	15400008 	bnez	t2,e8 <BgHidanHrock_Init+0xe8>
  c8:	00009825 	move	s3,zero
  cc:	3c013fc0 	lui	at,0x3fc0
  d0:	44811000 	mtc1	at,$f2
  d4:	00000000 	nop
  d8:	4602b582 	mul.s	$f22,$f22,$f2
  dc:	00000000 	nop
  e0:	46020502 	mul.s	$f20,$f0,$f2
  e4:	00000000 	nop
  e8:	24170002 	li	s7,2
  ec:	27b6009c 	addiu	s6,sp,156
  f0:	27b50090 	addiu	s5,sp,144
  f4:	27b40084 	addiu	s4,sp,132
  f8:	27b100a8 	addiu	s1,sp,168
  fc:	3c0b0000 	lui	t3,0x0
 100:	8d6b0000 	lw	t3,0(t3)
 104:	27a30084 	addiu	v1,sp,132
 108:	026b1021 	addu	v0,s3,t3
 10c:	c44c0018 	lwc1	$f12,24(v0)
 110:	2463000c 	addiu	v1,v1,12
 114:	c6120008 	lwc1	$f18,8(s0)
 118:	46146402 	mul.s	$f16,$f12,$f20
 11c:	10710019 	beq	v1,s1,184 <BgHidanHrock_Init+0x184>
 120:	c44e0020 	lwc1	$f14,32(v0)
 124:	46167302 	mul.s	$f12,$f14,$f22
 128:	46109280 	add.s	$f10,$f18,$f16
 12c:	2463000c 	addiu	v1,v1,12
 130:	2442000c 	addiu	v0,v0,12
 134:	460a6280 	add.s	$f10,$f12,$f10
 138:	e46affe8 	swc1	$f10,-24(v1)
 13c:	c44a0010 	lwc1	$f10,16(v0)
 140:	c60c000c 	lwc1	$f12,12(s0)
 144:	460c5300 	add.s	$f12,$f10,$f12
 148:	e46cffec 	swc1	$f12,-20(v1)
 14c:	c44c000c 	lwc1	$f12,12(v0)
 150:	c44a0014 	lwc1	$f10,20(v0)
 154:	c6080010 	lwc1	$f8,16(s0)
 158:	46166302 	mul.s	$f12,$f12,$f22
 15c:	460c4301 	sub.s	$f12,$f8,$f12
 160:	46145282 	mul.s	$f10,$f10,$f20
 164:	460c5300 	add.s	$f12,$f10,$f12
 168:	e46cfff0 	swc1	$f12,-16(v1)
 16c:	c44c0018 	lwc1	$f12,24(v0)
 170:	c6120008 	lwc1	$f18,8(s0)
 174:	c44e0020 	lwc1	$f14,32(v0)
 178:	46146402 	mul.s	$f16,$f12,$f20
 17c:	1471ffe9 	bne	v1,s1,124 <BgHidanHrock_Init+0x124>
 180:	00000000 	nop
 184:	46167302 	mul.s	$f12,$f14,$f22
 188:	46109280 	add.s	$f10,$f18,$f16
 18c:	2442000c 	addiu	v0,v0,12
 190:	460a6280 	add.s	$f10,$f12,$f10
 194:	e46afff4 	swc1	$f10,-12(v1)
 198:	c60c000c 	lwc1	$f12,12(s0)
 19c:	c44a0010 	lwc1	$f10,16(v0)
 1a0:	460c5300 	add.s	$f12,$f10,$f12
 1a4:	e46cfff8 	swc1	$f12,-8(v1)
 1a8:	c44c000c 	lwc1	$f12,12(v0)
 1ac:	c44a0014 	lwc1	$f10,20(v0)
 1b0:	c6080010 	lwc1	$f8,16(s0)
 1b4:	46166302 	mul.s	$f12,$f12,$f22
 1b8:	460c4301 	sub.s	$f12,$f8,$f12
 1bc:	46145282 	mul.s	$f10,$f10,$f20
 1c0:	460c5300 	add.s	$f12,$f10,$f12
 1c4:	e46cfffc 	swc1	$f12,-4(v1)
 1c8:	03c02025 	move	a0,s8
 1cc:	02402825 	move	a1,s2
 1d0:	02803025 	move	a2,s4
 1d4:	02a03825 	move	a3,s5
 1d8:	0c000000 	jal	0 <BgHidanHrock_Init>
 1dc:	afb60010 	sw	s6,16(sp)
 1e0:	26520001 	addiu	s2,s2,1
 1e4:	1657ffc5 	bne	s2,s7,fc <BgHidanHrock_Init+0xfc>
 1e8:	2673003c 	addiu	s3,s3,60
 1ec:	8fa400b4 	lw	a0,180(sp)
 1f0:	0c000000 	jal	0 <BgHidanHrock_Init>
 1f4:	9205016a 	lbu	a1,362(s0)
 1f8:	10400021 	beqz	v0,280 <BgHidanHrock_Init+0x280>
 1fc:	3c180000 	lui	t8,0x0
 200:	8602001c 	lh	v0,28(s0)
 204:	3c0c0000 	lui	t4,0x0
 208:	258c0000 	addiu	t4,t4,0
 20c:	1440000b 	bnez	v0,23c <BgHidanHrock_Init+0x23c>
 210:	ae0c0164 	sw	t4,356(s0)
 214:	3c01452f 	lui	at,0x452f
 218:	44813000 	mtc1	at,$f6
 21c:	c6120028 	lwc1	$f18,40(s0)
 220:	3c010000 	lui	at,0x0
 224:	8602001c 	lh	v0,28(s0)
 228:	46069201 	sub.s	$f8,$f18,$f6
 22c:	e6080028 	swc1	$f8,40(s0)
 230:	c4300000 	lwc1	$f16,0(at)
 234:	1000001e 	b	2b0 <BgHidanHrock_Init+0x2b0>
 238:	e61000f4 	swc1	$f16,244(s0)
 23c:	24010001 	li	at,1
 240:	14410007 	bne	v0,at,260 <BgHidanHrock_Init+0x260>
 244:	3c014448 	lui	at,0x4448
 248:	44815000 	mtc1	at,$f10
 24c:	c6040028 	lwc1	$f4,40(s0)
 250:	8602001c 	lh	v0,28(s0)
 254:	460a2481 	sub.s	$f18,$f4,$f10
 258:	10000015 	b	2b0 <BgHidanHrock_Init+0x2b0>
 25c:	e6120028 	swc1	$f18,40(s0)
 260:	16e20013 	bne	s7,v0,2b0 <BgHidanHrock_Init+0x2b0>
 264:	3c014370 	lui	at,0x4370
 268:	c6060028 	lwc1	$f6,40(s0)
 26c:	44814000 	mtc1	at,$f8
 270:	8602001c 	lh	v0,28(s0)
 274:	46083401 	sub.s	$f16,$f6,$f8
 278:	1000000d 	b	2b0 <BgHidanHrock_Init+0x2b0>
 27c:	e6100028 	swc1	$f16,40(s0)
 280:	860d001c 	lh	t5,28(s0)
 284:	27180000 	addiu	t8,t8,0
 288:	55a00008 	bnezl	t5,2ac <BgHidanHrock_Init+0x2ac>
 28c:	ae180164 	sw	t8,356(s0)
 290:	8e0e0004 	lw	t6,4(s0)
 294:	3c010000 	lui	at,0x0
 298:	35cf0030 	ori	t7,t6,0x30
 29c:	ae0f0004 	sw	t7,4(s0)
 2a0:	c4240000 	lwc1	$f4,0(at)
 2a4:	e60400f4 	swc1	$f4,244(s0)
 2a8:	ae180164 	sw	t8,356(s0)
 2ac:	8602001c 	lh	v0,28(s0)
 2b0:	14400007 	bnez	v0,2d0 <BgHidanHrock_Init+0x2d0>
 2b4:	3c040601 	lui	a0,0x601
 2b8:	3c040601 	lui	a0,0x601
 2bc:	2484d054 	addiu	a0,a0,-12204
 2c0:	0c000000 	jal	0 <BgHidanHrock_Init>
 2c4:	27a50070 	addiu	a1,sp,112
 2c8:	10000005 	b	2e0 <BgHidanHrock_Init+0x2e0>
 2cc:	8fa400b4 	lw	a0,180(sp)
 2d0:	2484d188 	addiu	a0,a0,-11896
 2d4:	0c000000 	jal	0 <BgHidanHrock_Init>
 2d8:	27a50070 	addiu	a1,sp,112
 2dc:	8fa400b4 	lw	a0,180(sp)
 2e0:	02003025 	move	a2,s0
 2e4:	8fa70070 	lw	a3,112(sp)
 2e8:	0c000000 	jal	0 <BgHidanHrock_Init>
 2ec:	24850810 	addiu	a1,a0,2064
 2f0:	ae02014c 	sw	v0,332(s0)
 2f4:	8fbf0054 	lw	ra,84(sp)
 2f8:	8fbe0050 	lw	s8,80(sp)
 2fc:	8fb7004c 	lw	s7,76(sp)
 300:	8fb60048 	lw	s6,72(sp)
 304:	8fb50044 	lw	s5,68(sp)
 308:	8fb40040 	lw	s4,64(sp)
 30c:	8fb3003c 	lw	s3,60(sp)
 310:	8fb20038 	lw	s2,56(sp)
 314:	8fb10034 	lw	s1,52(sp)
 318:	8fb00030 	lw	s0,48(sp)
 31c:	d7b60028 	ldc1	$f22,40(sp)
 320:	d7b40020 	ldc1	$f20,32(sp)
 324:	03e00008 	jr	ra
 328:	27bd00b0 	addiu	sp,sp,176

0000032c <BgHidanHrock_Destroy>:
 32c:	27bdffe8 	addiu	sp,sp,-24
 330:	afa40018 	sw	a0,24(sp)
 334:	8fae0018 	lw	t6,24(sp)
 338:	afbf0014 	sw	ra,20(sp)
 33c:	00a03825 	move	a3,a1
 340:	00a02025 	move	a0,a1
 344:	8dc6014c 	lw	a2,332(t6)
 348:	afa7001c 	sw	a3,28(sp)
 34c:	0c000000 	jal	0 <BgHidanHrock_Init>
 350:	24a50810 	addiu	a1,a1,2064
 354:	8fa50018 	lw	a1,24(sp)
 358:	8fa4001c 	lw	a0,28(sp)
 35c:	0c000000 	jal	0 <BgHidanHrock_Init>
 360:	24a5016c 	addiu	a1,a1,364
 364:	8fbf0014 	lw	ra,20(sp)
 368:	27bd0018 	addiu	sp,sp,24
 36c:	03e00008 	jr	ra
 370:	00000000 	nop

00000374 <func_808894A4>:
 374:	afa40000 	sw	a0,0(sp)
 378:	03e00008 	jr	ra
 37c:	afa50004 	sw	a1,4(sp)

00000380 <func_808894B0>:
 380:	27bdffe0 	addiu	sp,sp,-32
 384:	afbf001c 	sw	ra,28(sp)
 388:	afb00018 	sw	s0,24(sp)
 38c:	afa50024 	sw	a1,36(sp)
 390:	84820168 	lh	v0,360(a0)
 394:	00808025 	move	s0,a0
 398:	10400003 	beqz	v0,3a8 <func_808894B0+0x28>
 39c:	244effff 	addiu	t6,v0,-1
 3a0:	a48e0168 	sh	t6,360(a0)
 3a4:	84820168 	lh	v0,360(a0)
 3a8:	860f0032 	lh	t7,50(s0)
 3ac:	0002c380 	sll	t8,v0,0xe
 3b0:	01f82021 	addu	a0,t7,t8
 3b4:	00042400 	sll	a0,a0,0x10
 3b8:	0c000000 	jal	0 <BgHidanHrock_Init>
 3bc:	00042403 	sra	a0,a0,0x10
 3c0:	3c0140a0 	lui	at,0x40a0
 3c4:	44812000 	mtc1	at,$f4
 3c8:	c6080008 	lwc1	$f8,8(s0)
 3cc:	86080168 	lh	t0,360(s0)
 3d0:	46040182 	mul.s	$f6,$f0,$f4
 3d4:	86190032 	lh	t9,50(s0)
 3d8:	00084b80 	sll	t1,t0,0xe
 3dc:	03292021 	addu	a0,t9,t1
 3e0:	00042400 	sll	a0,a0,0x10
 3e4:	00042403 	sra	a0,a0,0x10
 3e8:	46083280 	add.s	$f10,$f6,$f8
 3ec:	0c000000 	jal	0 <BgHidanHrock_Init>
 3f0:	e60a0024 	swc1	$f10,36(s0)
 3f4:	3c0140a0 	lui	at,0x40a0
 3f8:	44818000 	mtc1	at,$f16
 3fc:	c6040010 	lwc1	$f4,16(s0)
 400:	86020168 	lh	v0,360(s0)
 404:	46100482 	mul.s	$f18,$f0,$f16
 408:	240500b4 	li	a1,180
 40c:	2406000a 	li	a2,10
 410:	24070064 	li	a3,100
 414:	46049180 	add.s	$f6,$f18,$f4
 418:	e606002c 	swc1	$f6,44(s0)
 41c:	04410004 	bgez	v0,430 <func_808894B0+0xb0>
 420:	304a0003 	andi	t2,v0,0x3
 424:	11400002 	beqz	t2,430 <func_808894B0+0xb0>
 428:	00000000 	nop
 42c:	254afffc 	addiu	t2,t2,-4
 430:	15400007 	bnez	t2,450 <func_808894B0+0xd0>
 434:	00000000 	nop
 438:	0c000000 	jal	0 <BgHidanHrock_Init>
 43c:	c60c008c 	lwc1	$f12,140(s0)
 440:	02002025 	move	a0,s0
 444:	0c000000 	jal	0 <BgHidanHrock_Init>
 448:	24052838 	li	a1,10296
 44c:	86020168 	lh	v0,360(s0)
 450:	1440001d 	bnez	v0,4c8 <func_808894B0+0x148>
 454:	3c0b0000 	lui	t3,0x0
 458:	8602001c 	lh	v0,28(s0)
 45c:	24010001 	li	at,1
 460:	256b0000 	addiu	t3,t3,0
 464:	14400007 	bnez	v0,484 <func_808894B0+0x104>
 468:	00000000 	nop
 46c:	3c01452f 	lui	at,0x452f
 470:	44815000 	mtc1	at,$f10
 474:	c608000c 	lwc1	$f8,12(s0)
 478:	460a4401 	sub.s	$f16,$f8,$f10
 47c:	1000000d 	b	4b4 <func_808894B0+0x134>
 480:	e610000c 	swc1	$f16,12(s0)
 484:	14410006 	bne	v0,at,4a0 <func_808894B0+0x120>
 488:	3c014448 	lui	at,0x4448
 48c:	44812000 	mtc1	at,$f4
 490:	c612000c 	lwc1	$f18,12(s0)
 494:	46049181 	sub.s	$f6,$f18,$f4
 498:	10000006 	b	4b4 <func_808894B0+0x134>
 49c:	e606000c 	swc1	$f6,12(s0)
 4a0:	3c014370 	lui	at,0x4370
 4a4:	44815000 	mtc1	at,$f10
 4a8:	c608000c 	lwc1	$f8,12(s0)
 4ac:	460a4401 	sub.s	$f16,$f8,$f10
 4b0:	e610000c 	swc1	$f16,12(s0)
 4b4:	c6120008 	lwc1	$f18,8(s0)
 4b8:	c6040010 	lwc1	$f4,16(s0)
 4bc:	ae0b0164 	sw	t3,356(s0)
 4c0:	e6120024 	swc1	$f18,36(s0)
 4c4:	e604002c 	swc1	$f4,44(s0)
 4c8:	8fbf001c 	lw	ra,28(sp)
 4cc:	8fb00018 	lw	s0,24(sp)
 4d0:	27bd0020 	addiu	sp,sp,32
 4d4:	03e00008 	jr	ra
 4d8:	00000000 	nop

000004dc <func_8088960C>:
 4dc:	27bdffe0 	addiu	sp,sp,-32
 4e0:	afbf001c 	sw	ra,28(sp)
 4e4:	afb00018 	sw	s0,24(sp)
 4e8:	afa50024 	sw	a1,36(sp)
 4ec:	3c013f80 	lui	at,0x3f80
 4f0:	44813000 	mtc1	at,$f6
 4f4:	c4840060 	lwc1	$f4,96(a0)
 4f8:	00808025 	move	s0,a0
 4fc:	24840028 	addiu	a0,a0,40
 500:	46062200 	add.s	$f8,$f4,$f6
 504:	e4880038 	swc1	$f8,56(a0)
 508:	8e060060 	lw	a2,96(s0)
 50c:	0c000000 	jal	0 <BgHidanHrock_Init>
 510:	8e05000c 	lw	a1,12(s0)
 514:	10400017 	beqz	v0,574 <func_8088960C+0x98>
 518:	2401ffcf 	li	at,-49
 51c:	8e0e0004 	lw	t6,4(s0)
 520:	02002025 	move	a0,s0
 524:	24052835 	li	a1,10293
 528:	01c17824 	and	t7,t6,at
 52c:	0c000000 	jal	0 <BgHidanHrock_Init>
 530:	ae0f0004 	sw	t7,4(s0)
 534:	8618001c 	lh	t8,28(s0)
 538:	8fb90024 	lw	t9,36(sp)
 53c:	3c080001 	lui	t0,0x1
 540:	17000009 	bnez	t8,568 <func_8088960C+0x8c>
 544:	01194021 	addu	t0,t0,t9
 548:	81081cbc 	lb	t0,7356(t0)
 54c:	2402000a 	li	v0,10
 550:	14480003 	bne	v0,t0,560 <func_8088960C+0x84>
 554:	00000000 	nop
 558:	10000003 	b	568 <func_8088960C+0x8c>
 55c:	a2020003 	sb	v0,3(s0)
 560:	0c000000 	jal	0 <BgHidanHrock_Init>
 564:	02002025 	move	a0,s0
 568:	3c090000 	lui	t1,0x0
 56c:	25290000 	addiu	t1,t1,0
 570:	ae090164 	sw	t1,356(s0)
 574:	8fbf001c 	lw	ra,28(sp)
 578:	8fb00018 	lw	s0,24(sp)
 57c:	27bd0020 	addiu	sp,sp,32
 580:	03e00008 	jr	ra
 584:	00000000 	nop

00000588 <func_808896B8>:
 588:	27bdffe0 	addiu	sp,sp,-32
 58c:	afbf001c 	sw	ra,28(sp)
 590:	afb00018 	sw	s0,24(sp)
 594:	9082017d 	lbu	v0,381(a0)
 598:	00808025 	move	s0,a0
 59c:	00a03825 	move	a3,a1
 5a0:	304e0002 	andi	t6,v0,0x2
 5a4:	11c00014 	beqz	t6,5f8 <func_808896B8+0x70>
 5a8:	3c010001 	lui	at,0x1
 5ac:	8c990004 	lw	t9,4(a0)
 5b0:	8489001c 	lh	t1,28(a0)
 5b4:	3c180000 	lui	t8,0x0
 5b8:	304ffffd 	andi	t7,v0,0xfffd
 5bc:	27180000 	addiu	t8,t8,0
 5c0:	37280010 	ori	t0,t9,0x10
 5c4:	a08f017d 	sb	t7,381(a0)
 5c8:	ac980164 	sw	t8,356(a0)
 5cc:	15200003 	bnez	t1,5dc <func_808896B8+0x54>
 5d0:	ac880004 	sw	t0,4(a0)
 5d4:	240affff 	li	t2,-1
 5d8:	a08a0003 	sb	t2,3(a0)
 5dc:	240b0014 	li	t3,20
 5e0:	a60b0168 	sh	t3,360(s0)
 5e4:	00e02025 	move	a0,a3
 5e8:	0c000000 	jal	0 <BgHidanHrock_Init>
 5ec:	9205016a 	lbu	a1,362(s0)
 5f0:	10000006 	b	60c <func_808896B8+0x84>
 5f4:	00000000 	nop
 5f8:	34211e60 	ori	at,at,0x1e60
 5fc:	00e12821 	addu	a1,a3,at
 600:	00e02025 	move	a0,a3
 604:	0c000000 	jal	0 <BgHidanHrock_Init>
 608:	2606016c 	addiu	a2,s0,364
 60c:	0c000000 	jal	0 <BgHidanHrock_Init>
 610:	02002025 	move	a0,s0
 614:	1040000c 	beqz	v0,648 <func_808896B8+0xc0>
 618:	26040028 	addiu	a0,s0,40
 61c:	3c0140a0 	lui	at,0x40a0
 620:	44813000 	mtc1	at,$f6
 624:	c604000c 	lwc1	$f4,12(s0)
 628:	26040028 	addiu	a0,s0,40
 62c:	3c063f80 	lui	a2,0x3f80
 630:	46062201 	sub.s	$f8,$f4,$f6
 634:	44054000 	mfc1	a1,$f8
 638:	0c000000 	jal	0 <BgHidanHrock_Init>
 63c:	00000000 	nop
 640:	10000005 	b	658 <func_808896B8+0xd0>
 644:	8fbf001c 	lw	ra,28(sp)
 648:	8e05000c 	lw	a1,12(s0)
 64c:	0c000000 	jal	0 <BgHidanHrock_Init>
 650:	3c063f80 	lui	a2,0x3f80
 654:	8fbf001c 	lw	ra,28(sp)
 658:	8fb00018 	lw	s0,24(sp)
 65c:	27bd0020 	addiu	sp,sp,32
 660:	03e00008 	jr	ra
 664:	00000000 	nop

00000668 <BgHidanHrock_Update>:
 668:	27bdffe8 	addiu	sp,sp,-24
 66c:	afbf0014 	sw	ra,20(sp)
 670:	8c990164 	lw	t9,356(a0)
 674:	0320f809 	jalr	t9
 678:	00000000 	nop
 67c:	8fbf0014 	lw	ra,20(sp)
 680:	27bd0018 	addiu	sp,sp,24
 684:	03e00008 	jr	ra
 688:	00000000 	nop

0000068c <BgHidanHrock_Draw>:
 68c:	27bdffe8 	addiu	sp,sp,-24
 690:	afbf0014 	sw	ra,20(sp)
 694:	00803825 	move	a3,a0
 698:	84ee001c 	lh	t6,28(a3)
 69c:	00a02025 	move	a0,a1
 6a0:	3c050000 	lui	a1,0x0
 6a4:	000e7880 	sll	t7,t6,0x2
 6a8:	00af2821 	addu	a1,a1,t7
 6ac:	0c000000 	jal	0 <BgHidanHrock_Init>
 6b0:	8ca50000 	lw	a1,0(a1)
 6b4:	8fbf0014 	lw	ra,20(sp)
 6b8:	27bd0018 	addiu	sp,sp,24
 6bc:	03e00008 	jr	ra
 6c0:	00000000 	nop
	...
