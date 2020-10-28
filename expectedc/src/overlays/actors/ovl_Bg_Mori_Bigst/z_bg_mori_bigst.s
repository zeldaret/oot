
build/src/overlays/actors/ovl_Bg_Mori_Bigst/z_bg_mori_bigst.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMoriBigst_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <BgMoriBigst_InitDynapoly>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb00020 	sw	s0,32(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	00808025 	move	s0,a0
  1c:	afa60040 	sw	a2,64(sp)
  20:	afa00030 	sw	zero,48(sp)
  24:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
  28:	00e02825 	move	a1,a3
  2c:	8fa40040 	lw	a0,64(sp)
  30:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
  34:	27a50030 	addiu	a1,sp,48
  38:	8fa4003c 	lw	a0,60(sp)
  3c:	02003025 	move	a2,s0
  40:	8fa70030 	lw	a3,48(sp)
  44:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
  48:	24850810 	addiu	a1,a0,2064
  4c:	24010032 	li	at,50
  50:	1441000a 	bne	v0,at,7c <BgMoriBigst_InitDynapoly+0x74>
  54:	ae02014c 	sw	v0,332(s0)
  58:	860e001c 	lh	t6,28(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	3c050000 	lui	a1,0x0
  64:	86070000 	lh	a3,0(s0)
  68:	24a50040 	addiu	a1,a1,64
  6c:	24840000 	addiu	a0,a0,0
  70:	240600be 	li	a2,190
  74:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
  78:	afae0010 	sw	t6,16(sp)
  7c:	8fbf0024 	lw	ra,36(sp)
  80:	8fb00020 	lw	s0,32(sp)
  84:	27bd0038 	addiu	sp,sp,56
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <BgMoriBigst_Init>:
  90:	27bdffb8 	addiu	sp,sp,-72
  94:	afb00024 	sw	s0,36(sp)
  98:	00808025 	move	s0,a0
  9c:	afb10028 	sw	s1,40(sp)
  a0:	00a08825 	move	s1,a1
  a4:	afbf002c 	sw	ra,44(sp)
  a8:	00a02025 	move	a0,a1
  ac:	8605001c 	lh	a1,28(s0)
  b0:	00052a03 	sra	a1,a1,0x8
  b4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
  b8:	30a5003f 	andi	a1,a1,0x3f
  bc:	afa20034 	sw	v0,52(sp)
  c0:	82050003 	lb	a1,3(s0)
  c4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
  c8:	02202025 	move	a0,s1
  cc:	afa20038 	sw	v0,56(sp)
  d0:	82050003 	lb	a1,3(s0)
  d4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
  d8:	02202025 	move	a0,s1
  dc:	8605001c 	lh	a1,28(s0)
  e0:	afa20010 	sw	v0,16(sp)
  e4:	8e2e1c44 	lw	t6,7236(s1)
  e8:	3c040000 	lui	a0,0x0
  ec:	24840058 	addiu	a0,a0,88
  f0:	c5c40028 	lwc1	$f4,40(t6)
  f4:	8fa60034 	lw	a2,52(sp)
  f8:	8fa70038 	lw	a3,56(sp)
  fc:	460021a1 	cvt.d.s	$f6,$f4
 100:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 104:	f7a60018 	sdc1	$f6,24(sp)
 108:	3c060000 	lui	a2,0x0
 10c:	24c60000 	addiu	a2,a2,0
 110:	02002025 	move	a0,s0
 114:	02202825 	move	a1,s1
 118:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 11c:	00003825 	move	a3,zero
 120:	3c050000 	lui	a1,0x0
 124:	24a50020 	addiu	a1,a1,32
 128:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 12c:	02002025 	move	a0,s0
 130:	3c010001 	lui	at,0x1
 134:	342117a4 	ori	at,at,0x17a4
 138:	02212021 	addu	a0,s1,at
 13c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 140:	24050073 	li	a1,115
 144:	a202016a 	sb	v0,362(s0)
 148:	820f016a 	lb	t7,362(s0)
 14c:	3c040000 	lui	a0,0x0
 150:	05e3000e 	bgezl	t7,18c <BgMoriBigst_Init+0xfc>
 154:	8605001c 	lh	a1,28(s0)
 158:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 15c:	248400a4 	addiu	a0,a0,164
 160:	3c040000 	lui	a0,0x0
 164:	3c050000 	lui	a1,0x0
 168:	24a500dc 	addiu	a1,a1,220
 16c:	248400d4 	addiu	a0,a0,212
 170:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 174:	240600ea 	li	a2,234
 178:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 17c:	02002025 	move	a0,s0
 180:	10000016 	b	1dc <BgMoriBigst_Init+0x14c>
 184:	8fbf002c 	lw	ra,44(sp)
 188:	8605001c 	lh	a1,28(s0)
 18c:	02202025 	move	a0,s1
 190:	00052a03 	sra	a1,a1,0x8
 194:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 198:	30a5003f 	andi	a1,a1,0x3f
 19c:	10400004 	beqz	v0,1b0 <BgMoriBigst_Init+0x120>
 1a0:	02002025 	move	a0,s0
 1a4:	c608000c 	lwc1	$f8,12(s0)
 1a8:	10000006 	b	1c4 <BgMoriBigst_Init+0x134>
 1ac:	e6080028 	swc1	$f8,40(s0)
 1b0:	3c014387 	lui	at,0x4387
 1b4:	44818000 	mtc1	at,$f16
 1b8:	c60a000c 	lwc1	$f10,12(s0)
 1bc:	46105480 	add.s	$f18,$f10,$f16
 1c0:	e6120028 	swc1	$f18,40(s0)
 1c4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 1c8:	3c054248 	lui	a1,0x4248
 1cc:	02002025 	move	a0,s0
 1d0:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 1d4:	02202825 	move	a1,s1
 1d8:	8fbf002c 	lw	ra,44(sp)
 1dc:	8fb00024 	lw	s0,36(sp)
 1e0:	8fb10028 	lw	s1,40(sp)
 1e4:	03e00008 	jr	ra
 1e8:	27bd0048 	addiu	sp,sp,72

000001ec <BgMoriBigst_Destroy>:
 1ec:	27bdffe8 	addiu	sp,sp,-24
 1f0:	afa40018 	sw	a0,24(sp)
 1f4:	8fae0018 	lw	t6,24(sp)
 1f8:	afbf0014 	sw	ra,20(sp)
 1fc:	00a02025 	move	a0,a1
 200:	24a50810 	addiu	a1,a1,2064
 204:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 208:	8dc6014c 	lw	a2,332(t6)
 20c:	8fbf0014 	lw	ra,20(sp)
 210:	27bd0018 	addiu	sp,sp,24
 214:	03e00008 	jr	ra
 218:	00000000 	nop

0000021c <BgMoriBigst_SetupWaitForMoriTex>:
 21c:	27bdffe8 	addiu	sp,sp,-24
 220:	afa5001c 	sw	a1,28(sp)
 224:	afbf0014 	sw	ra,20(sp)
 228:	3c050000 	lui	a1,0x0
 22c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 230:	24a50000 	addiu	a1,a1,0
 234:	8fbf0014 	lw	ra,20(sp)
 238:	27bd0018 	addiu	sp,sp,24
 23c:	03e00008 	jr	ra
 240:	00000000 	nop

00000244 <BgMoriBigst_WaitForMoriTex>:
 244:	27bdffe0 	addiu	sp,sp,-32
 248:	afb00014 	sw	s0,20(sp)
 24c:	3c010001 	lui	at,0x1
 250:	00808025 	move	s0,a0
 254:	afb10018 	sw	s1,24(sp)
 258:	342117a4 	ori	at,at,0x17a4
 25c:	00a08825 	move	s1,a1
 260:	afbf001c 	sw	ra,28(sp)
 264:	00a12021 	addu	a0,a1,at
 268:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 26c:	8205016a 	lb	a1,362(s0)
 270:	10400022 	beqz	v0,2fc <BgMoriBigst_WaitForMoriTex+0xb8>
 274:	3c0e0000 	lui	t6,0x0
 278:	25ce0000 	addiu	t6,t6,0
 27c:	ae0e0134 	sw	t6,308(s0)
 280:	02202025 	move	a0,s1
 284:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 288:	82050003 	lb	a1,3(s0)
 28c:	10400019 	beqz	v0,2f4 <BgMoriBigst_WaitForMoriTex+0xb0>
 290:	02002025 	move	a0,s0
 294:	8e2f1c44 	lw	t7,7236(s1)
 298:	3c01442f 	lui	at,0x442f
 29c:	44812000 	mtc1	at,$f4
 2a0:	c5e60028 	lwc1	$f6,40(t7)
 2a4:	4606203c 	c.lt.s	$f4,$f6
 2a8:	00000000 	nop
 2ac:	45000011 	bc1f	2f4 <BgMoriBigst_WaitForMoriTex+0xb0>
 2b0:	00000000 	nop
 2b4:	8605001c 	lh	a1,28(s0)
 2b8:	02202025 	move	a0,s1
 2bc:	00052a03 	sra	a1,a1,0x8
 2c0:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 2c4:	30a5003f 	andi	a1,a1,0x3f
 2c8:	10400006 	beqz	v0,2e4 <BgMoriBigst_WaitForMoriTex+0xa0>
 2cc:	02002025 	move	a0,s0
 2d0:	02002025 	move	a0,s0
 2d4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 2d8:	02202825 	move	a1,s1
 2dc:	10000008 	b	300 <BgMoriBigst_WaitForMoriTex+0xbc>
 2e0:	8fbf001c 	lw	ra,28(sp)
 2e4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 2e8:	02202825 	move	a1,s1
 2ec:	10000004 	b	300 <BgMoriBigst_WaitForMoriTex+0xbc>
 2f0:	8fbf001c 	lw	ra,28(sp)
 2f4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 2f8:	02202825 	move	a1,s1
 2fc:	8fbf001c 	lw	ra,28(sp)
 300:	8fb00014 	lw	s0,20(sp)
 304:	8fb10018 	lw	s1,24(sp)
 308:	03e00008 	jr	ra
 30c:	27bd0020 	addiu	sp,sp,32

00000310 <BgMoriBigst_SetupNoop>:
 310:	27bdffe8 	addiu	sp,sp,-24
 314:	afbf0014 	sw	ra,20(sp)
 318:	afa5001c 	sw	a1,28(sp)
 31c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 320:	00002825 	move	a1,zero
 324:	8fbf0014 	lw	ra,20(sp)
 328:	27bd0018 	addiu	sp,sp,24
 32c:	03e00008 	jr	ra
 330:	00000000 	nop

00000334 <BgMoriBigst_SetupStalfosFight>:
 334:	27bdffc0 	addiu	sp,sp,-64
 338:	afa50044 	sw	a1,68(sp)
 33c:	afbf003c 	sw	ra,60(sp)
 340:	afb00038 	sw	s0,56(sp)
 344:	3c050000 	lui	a1,0x0
 348:	00808025 	move	s0,a0
 34c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 350:	24a50000 	addiu	a1,a1,0
 354:	8fa40044 	lw	a0,68(sp)
 358:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 35c:	82050003 	lb	a1,3(s0)
 360:	3c014351 	lui	at,0x4351
 364:	44812000 	mtc1	at,$f4
 368:	3c010000 	lui	at,0x0
 36c:	c42601b0 	lwc1	$f6,432(at)
 370:	3c010000 	lui	at,0x0
 374:	8fa60044 	lw	a2,68(sp)
 378:	c42801b4 	lwc1	$f8,436(at)
 37c:	240e0001 	li	t6,1
 380:	afae0028 	sw	t6,40(sp)
 384:	02002825 	move	a1,s0
 388:	24070002 	li	a3,2
 38c:	afa0001c 	sw	zero,28(sp)
 390:	afa00020 	sw	zero,32(sp)
 394:	afa00024 	sw	zero,36(sp)
 398:	e7a40010 	swc1	$f4,16(sp)
 39c:	e7a60014 	swc1	$f6,20(sp)
 3a0:	24c41c24 	addiu	a0,a2,7204
 3a4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 3a8:	e7a80018 	swc1	$f8,24(sp)
 3ac:	10400006 	beqz	v0,3c8 <BgMoriBigst_SetupStalfosFight+0x94>
 3b0:	3c040000 	lui	a0,0x0
 3b4:	860f0018 	lh	t7,24(s0)
 3b8:	ae00011c 	sw	zero,284(s0)
 3bc:	25f80001 	addiu	t8,t7,1
 3c0:	10000003 	b	3d0 <BgMoriBigst_SetupStalfosFight+0x9c>
 3c4:	a6180018 	sh	t8,24(s0)
 3c8:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 3cc:	248400f4 	addiu	a0,a0,244
 3d0:	8fa40044 	lw	a0,68(sp)
 3d4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 3d8:	82050003 	lb	a1,3(s0)
 3dc:	8fbf003c 	lw	ra,60(sp)
 3e0:	8fb00038 	lw	s0,56(sp)
 3e4:	27bd0040 	addiu	sp,sp,64
 3e8:	03e00008 	jr	ra
 3ec:	00000000 	nop

000003f0 <BgMoriBigst_StalfosFight>:
 3f0:	27bdffe0 	addiu	sp,sp,-32
 3f4:	afbf001c 	sw	ra,28(sp)
 3f8:	848e0018 	lh	t6,24(a0)
 3fc:	00803825 	move	a3,a0
 400:	3c0140a0 	lui	at,0x40a0
 404:	55c00014 	bnezl	t6,458 <BgMoriBigst_StalfosFight+0x68>
 408:	8fbf001c 	lw	ra,28(sp)
 40c:	c486000c 	lwc1	$f6,12(a0)
 410:	44814000 	mtc1	at,$f8
 414:	8caf1c44 	lw	t7,7236(a1)
 418:	46083281 	sub.s	$f10,$f6,$f8
 41c:	c5e40028 	lwc1	$f4,40(t7)
 420:	4604503e 	c.le.s	$f10,$f4
 424:	00000000 	nop
 428:	4502000b 	bc1fl	458 <BgMoriBigst_StalfosFight+0x68>
 42c:	8fbf001c 	lw	ra,28(sp)
 430:	afa50024 	sw	a1,36(sp)
 434:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 438:	afa70020 	sw	a3,32(sp)
 43c:	8fa70020 	lw	a3,32(sp)
 440:	8fa40024 	lw	a0,36(sp)
 444:	24050c94 	li	a1,3220
 448:	24060048 	li	a2,72
 44c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 450:	afa00010 	sw	zero,16(sp)
 454:	8fbf001c 	lw	ra,28(sp)
 458:	27bd0020 	addiu	sp,sp,32
 45c:	03e00008 	jr	ra
 460:	00000000 	nop

00000464 <BgMoriBigst_SetupFall>:
 464:	27bdffe8 	addiu	sp,sp,-24
 468:	afa5001c 	sw	a1,28(sp)
 46c:	afbf0014 	sw	ra,20(sp)
 470:	3c050000 	lui	a1,0x0
 474:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 478:	24a50000 	addiu	a1,a1,0
 47c:	8fbf0014 	lw	ra,20(sp)
 480:	27bd0018 	addiu	sp,sp,24
 484:	03e00008 	jr	ra
 488:	00000000 	nop

0000048c <BgMoriBigst_Fall>:
 48c:	27bdffd8 	addiu	sp,sp,-40
 490:	afbf0024 	sw	ra,36(sp)
 494:	afb00020 	sw	s0,32(sp)
 498:	00808025 	move	s0,a0
 49c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 4a0:	afa5002c 	sw	a1,44(sp)
 4a4:	c600000c 	lwc1	$f0,12(s0)
 4a8:	c6040028 	lwc1	$f4,40(s0)
 4ac:	02002025 	move	a0,s0
 4b0:	4600203e 	c.le.s	$f4,$f0
 4b4:	00000000 	nop
 4b8:	45020012 	bc1fl	504 <BgMoriBigst_Fall+0x78>
 4bc:	8fbf0024 	lw	ra,36(sp)
 4c0:	e6000028 	swc1	$f0,40(s0)
 4c4:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 4c8:	8fa5002c 	lw	a1,44(sp)
 4cc:	02002025 	move	a0,s0
 4d0:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 4d4:	2405281d 	li	a1,10269
 4d8:	8fa4002c 	lw	a0,44(sp)
 4dc:	240503fc 	li	a1,1020
 4e0:	24060008 	li	a2,8
 4e4:	02003825 	move	a3,s0
 4e8:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 4ec:	afa00010 	sw	zero,16(sp)
 4f0:	8fa4002c 	lw	a0,44(sp)
 4f4:	00002825 	move	a1,zero
 4f8:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 4fc:	2406003c 	li	a2,60
 500:	8fbf0024 	lw	ra,36(sp)
 504:	8fb00020 	lw	s0,32(sp)
 508:	27bd0028 	addiu	sp,sp,40
 50c:	03e00008 	jr	ra
 510:	00000000 	nop

00000514 <BgMoriBigst_SetupLanding>:
 514:	27bdffd0 	addiu	sp,sp,-48
 518:	afa50034 	sw	a1,52(sp)
 51c:	afbf001c 	sw	ra,28(sp)
 520:	3c050000 	lui	a1,0x0
 524:	afa40030 	sw	a0,48(sp)
 528:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 52c:	24a50000 	addiu	a1,a1,0
 530:	8faf0030 	lw	t7,48(sp)
 534:	8fa20034 	lw	v0,52(sp)
 538:	240e0012 	li	t6,18
 53c:	a5ee0168 	sh	t6,360(t7)
 540:	845807a0 	lh	t8,1952(v0)
 544:	24050003 	li	a1,3
 548:	0018c880 	sll	t9,t8,0x2
 54c:	00594021 	addu	t0,v0,t9
 550:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 554:	8d040790 	lw	a0,1936(t0)
 558:	00022400 	sll	a0,v0,0x10
 55c:	afa20028 	sw	v0,40(sp)
 560:	00042403 	sra	a0,a0,0x10
 564:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 568:	240561a8 	li	a1,25000
 56c:	87a4002a 	lh	a0,42(sp)
 570:	24050005 	li	a1,5
 574:	00003025 	move	a2,zero
 578:	00003825 	move	a3,zero
 57c:	afa00010 	sw	zero,16(sp)
 580:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 584:	afa40024 	sw	a0,36(sp)
 588:	8fa40024 	lw	a0,36(sp)
 58c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 590:	24050010 	li	a1,16
 594:	8fbf001c 	lw	ra,28(sp)
 598:	27bd0030 	addiu	sp,sp,48
 59c:	03e00008 	jr	ra
 5a0:	00000000 	nop

000005a4 <BgMoriBigst_Landing>:
 5a4:	27bdffe8 	addiu	sp,sp,-24
 5a8:	afbf0014 	sw	ra,20(sp)
 5ac:	848e0168 	lh	t6,360(a0)
 5b0:	5dc00004 	bgtzl	t6,5c4 <BgMoriBigst_Landing+0x20>
 5b4:	8fbf0014 	lw	ra,20(sp)
 5b8:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 5bc:	00000000 	nop
 5c0:	8fbf0014 	lw	ra,20(sp)
 5c4:	27bd0018 	addiu	sp,sp,24
 5c8:	03e00008 	jr	ra
 5cc:	00000000 	nop

000005d0 <BgMoriBigst_SetupStalfosPairFight>:
 5d0:	27bdffb0 	addiu	sp,sp,-80
 5d4:	afb10038 	sw	s1,56(sp)
 5d8:	00a08825 	move	s1,a1
 5dc:	afbf003c 	sw	ra,60(sp)
 5e0:	afb00034 	sw	s0,52(sp)
 5e4:	3c050000 	lui	a1,0x0
 5e8:	00808025 	move	s0,a0
 5ec:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 5f0:	24a50000 	addiu	a1,a1,0
 5f4:	02202025 	move	a0,s1
 5f8:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 5fc:	82050003 	lb	a1,3(s0)
 600:	3c01428c 	lui	at,0x428c
 604:	44812000 	mtc1	at,$f4
 608:	3c010000 	lui	at,0x0
 60c:	c42601b8 	lwc1	$f6,440(at)
 610:	3c010000 	lui	at,0x0
 614:	c42801bc 	lwc1	$f8,444(at)
 618:	26241c24 	addiu	a0,s1,7204
 61c:	240e0005 	li	t6,5
 620:	afae0028 	sw	t6,40(sp)
 624:	afa40044 	sw	a0,68(sp)
 628:	02002825 	move	a1,s0
 62c:	02203025 	move	a2,s1
 630:	24070002 	li	a3,2
 634:	afa0001c 	sw	zero,28(sp)
 638:	afa00020 	sw	zero,32(sp)
 63c:	afa00024 	sw	zero,36(sp)
 640:	e7a40010 	swc1	$f4,16(sp)
 644:	e7a60014 	swc1	$f6,20(sp)
 648:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 64c:	e7a80018 	swc1	$f8,24(sp)
 650:	10400006 	beqz	v0,66c <BgMoriBigst_SetupStalfosPairFight+0x9c>
 654:	3c040000 	lui	a0,0x0
 658:	860f0018 	lh	t7,24(s0)
 65c:	ae00011c 	sw	zero,284(s0)
 660:	25f80001 	addiu	t8,t7,1
 664:	10000003 	b	674 <BgMoriBigst_SetupStalfosPairFight+0xa4>
 668:	a6180018 	sh	t8,24(s0)
 66c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 670:	24840118 	addiu	a0,a0,280
 674:	3c01432a 	lui	at,0x432a
 678:	44815000 	mtc1	at,$f10
 67c:	3c010000 	lui	at,0x0
 680:	c43001c0 	lwc1	$f16,448(at)
 684:	3c010000 	lui	at,0x0
 688:	c43201c4 	lwc1	$f18,452(at)
 68c:	24190005 	li	t9,5
 690:	afb90028 	sw	t9,40(sp)
 694:	8fa40044 	lw	a0,68(sp)
 698:	02002825 	move	a1,s0
 69c:	02203025 	move	a2,s1
 6a0:	24070002 	li	a3,2
 6a4:	afa0001c 	sw	zero,28(sp)
 6a8:	afa00020 	sw	zero,32(sp)
 6ac:	afa00024 	sw	zero,36(sp)
 6b0:	e7aa0010 	swc1	$f10,16(sp)
 6b4:	e7b00014 	swc1	$f16,20(sp)
 6b8:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 6bc:	e7b20018 	swc1	$f18,24(sp)
 6c0:	10400006 	beqz	v0,6dc <BgMoriBigst_SetupStalfosPairFight+0x10c>
 6c4:	3c040000 	lui	a0,0x0
 6c8:	86080018 	lh	t0,24(s0)
 6cc:	ae00011c 	sw	zero,284(s0)
 6d0:	25090001 	addiu	t1,t0,1
 6d4:	10000003 	b	6e4 <BgMoriBigst_SetupStalfosPairFight+0x114>
 6d8:	a6090018 	sh	t1,24(s0)
 6dc:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 6e0:	24840140 	addiu	a0,a0,320
 6e4:	02202025 	move	a0,s1
 6e8:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 6ec:	82050003 	lb	a1,3(s0)
 6f0:	8fbf003c 	lw	ra,60(sp)
 6f4:	8fb00034 	lw	s0,52(sp)
 6f8:	8fb10038 	lw	s1,56(sp)
 6fc:	03e00008 	jr	ra
 700:	27bd0050 	addiu	sp,sp,80

00000704 <BgMoriBigst_StalfosPairFight>:
 704:	27bdffe8 	addiu	sp,sp,-24
 708:	afbf0014 	sw	ra,20(sp)
 70c:	afa40018 	sw	a0,24(sp)
 710:	afa5001c 	sw	a1,28(sp)
 714:	848f0018 	lh	t7,24(a0)
 718:	55e0000e 	bnezl	t7,754 <BgMoriBigst_StalfosPairFight+0x50>
 71c:	8fbf0014 	lw	ra,20(sp)
 720:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 724:	00a02025 	move	a0,a1
 728:	14400009 	bnez	v0,750 <BgMoriBigst_StalfosPairFight+0x4c>
 72c:	8fb80018 	lw	t8,24(sp)
 730:	8705001c 	lh	a1,28(t8)
 734:	8fa4001c 	lw	a0,28(sp)
 738:	00052a03 	sra	a1,a1,0x8
 73c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 740:	30a5003f 	andi	a1,a1,0x3f
 744:	8fa40018 	lw	a0,24(sp)
 748:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 74c:	8fa5001c 	lw	a1,28(sp)
 750:	8fbf0014 	lw	ra,20(sp)
 754:	27bd0018 	addiu	sp,sp,24
 758:	03e00008 	jr	ra
 75c:	00000000 	nop

00000760 <BgMoriBigst_SetupDone>:
 760:	27bdffe8 	addiu	sp,sp,-24
 764:	afbf0014 	sw	ra,20(sp)
 768:	afa5001c 	sw	a1,28(sp)
 76c:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 770:	00002825 	move	a1,zero
 774:	8fbf0014 	lw	ra,20(sp)
 778:	27bd0018 	addiu	sp,sp,24
 77c:	03e00008 	jr	ra
 780:	00000000 	nop

00000784 <BgMoriBigst_Update>:
 784:	27bdffe0 	addiu	sp,sp,-32
 788:	afbf001c 	sw	ra,28(sp)
 78c:	afb00018 	sw	s0,24(sp)
 790:	afa50024 	sw	a1,36(sp)
 794:	00808025 	move	s0,a0
 798:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 79c:	3c054248 	lui	a1,0x4248
 7a0:	86020168 	lh	v0,360(s0)
 7a4:	18400002 	blez	v0,7b0 <BgMoriBigst_Update+0x2c>
 7a8:	244effff 	addiu	t6,v0,-1
 7ac:	a60e0168 	sh	t6,360(s0)
 7b0:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 7b4:	02002025 	move	a0,s0
 7b8:	10400003 	beqz	v0,7c8 <BgMoriBigst_Update+0x44>
 7bc:	8fa40024 	lw	a0,36(sp)
 7c0:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 7c4:	24050006 	li	a1,6
 7c8:	8e020164 	lw	v0,356(s0)
 7cc:	02002025 	move	a0,s0
 7d0:	50400004 	beqzl	v0,7e4 <BgMoriBigst_Update+0x60>
 7d4:	8fbf001c 	lw	ra,28(sp)
 7d8:	0040f809 	jalr	v0
 7dc:	8fa50024 	lw	a1,36(sp)
 7e0:	8fbf001c 	lw	ra,28(sp)
 7e4:	8fb00018 	lw	s0,24(sp)
 7e8:	27bd0020 	addiu	sp,sp,32
 7ec:	03e00008 	jr	ra
 7f0:	00000000 	nop

000007f4 <BgMoriBigst_Draw>:
 7f4:	27bdffb0 	addiu	sp,sp,-80
 7f8:	afb10018 	sw	s1,24(sp)
 7fc:	00a08825 	move	s1,a1
 800:	afbf001c 	sw	ra,28(sp)
 804:	afb00014 	sw	s0,20(sp)
 808:	afa40050 	sw	a0,80(sp)
 80c:	8ca50000 	lw	a1,0(a1)
 810:	3c060000 	lui	a2,0x0
 814:	24c60168 	addiu	a2,a2,360
 818:	27a40034 	addiu	a0,sp,52
 81c:	2407021d 	li	a3,541
 820:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 824:	00a08025 	move	s0,a1
 828:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 82c:	8e240000 	lw	a0,0(s1)
 830:	8e0202c0 	lw	v0,704(s0)
 834:	3c0fdb06 	lui	t7,0xdb06
 838:	35ef0020 	ori	t7,t7,0x20
 83c:	244e0008 	addiu	t6,v0,8
 840:	ae0e02c0 	sw	t6,704(s0)
 844:	ac4f0000 	sw	t7,0(v0)
 848:	8fb80050 	lw	t8,80(sp)
 84c:	3c0a0001 	lui	t2,0x1
 850:	3c0cda38 	lui	t4,0xda38
 854:	8319016a 	lb	t9,362(t8)
 858:	358c0003 	ori	t4,t4,0x3
 85c:	3c050000 	lui	a1,0x0
 860:	00194100 	sll	t0,t9,0x4
 864:	01194021 	addu	t0,t0,t9
 868:	00084080 	sll	t0,t0,0x2
 86c:	02284821 	addu	t1,s1,t0
 870:	01495021 	addu	t2,t2,t1
 874:	8d4a17b4 	lw	t2,6068(t2)
 878:	24a50180 	addiu	a1,a1,384
 87c:	24060224 	li	a2,548
 880:	ac4a0004 	sw	t2,4(v0)
 884:	8e0202c0 	lw	v0,704(s0)
 888:	244b0008 	addiu	t3,v0,8
 88c:	ae0b02c0 	sw	t3,704(s0)
 890:	ac4c0000 	sw	t4,0(v0)
 894:	8e240000 	lw	a0,0(s1)
 898:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 89c:	afa2002c 	sw	v0,44(sp)
 8a0:	8fa3002c 	lw	v1,44(sp)
 8a4:	3c0f0000 	lui	t7,0x0
 8a8:	25ef0000 	addiu	t7,t7,0
 8ac:	ac620004 	sw	v0,4(v1)
 8b0:	8e0202c0 	lw	v0,704(s0)
 8b4:	3c0ede00 	lui	t6,0xde00
 8b8:	3c060000 	lui	a2,0x0
 8bc:	244d0008 	addiu	t5,v0,8
 8c0:	ae0d02c0 	sw	t5,704(s0)
 8c4:	ac4f0004 	sw	t7,4(v0)
 8c8:	ac4e0000 	sw	t6,0(v0)
 8cc:	8e250000 	lw	a1,0(s1)
 8d0:	24c60198 	addiu	a2,a2,408
 8d4:	27a40034 	addiu	a0,sp,52
 8d8:	0c000000 	jal	0 <BgMoriBigst_SetupAction>
 8dc:	24070229 	li	a3,553
 8e0:	8fbf001c 	lw	ra,28(sp)
 8e4:	8fb00014 	lw	s0,20(sp)
 8e8:	8fb10018 	lw	s1,24(sp)
 8ec:	03e00008 	jr	ra
 8f0:	27bd0050 	addiu	sp,sp,80
	...
