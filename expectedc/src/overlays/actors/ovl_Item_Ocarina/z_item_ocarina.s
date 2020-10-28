
build/src/overlays/actors/ovl_Item_Ocarina/z_item_ocarina.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ItemOcarina_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <ItemOcarina_Init>:
   8:	27bdffc0 	addiu	sp,sp,-64
   c:	44800000 	mtc1	zero,$f0
  10:	afbf0034 	sw	ra,52(sp)
  14:	afb00030 	sw	s0,48(sp)
  18:	afa50044 	sw	a1,68(sp)
  1c:	848e001c 	lh	t6,28(a0)
  20:	00808025 	move	s0,a0
  24:	44050000 	mfc1	a1,$f0
  28:	44070000 	mfc1	a3,$f0
  2c:	248400b4 	addiu	a0,a0,180
  30:	00003025 	move	a2,zero
  34:	0c000000 	jal	0 <ItemOcarina_SetupAction>
  38:	afae0038 	sw	t6,56(sp)
  3c:	3c053dcc 	lui	a1,0x3dcc
  40:	34a5cccd 	ori	a1,a1,0xcccd
  44:	0c000000 	jal	0 <ItemOcarina_SetupAction>
  48:	02002025 	move	a0,s0
  4c:	8fa20038 	lw	v0,56(sp)
  50:	24010001 	li	at,1
  54:	02002025 	move	a0,s0
  58:	1040000b 	beqz	v0,88 <ItemOcarina_Init+0x80>
  5c:	3c050000 	lui	a1,0x0
  60:	1041000d 	beq	v0,at,98 <ItemOcarina_Init+0x90>
  64:	02002025 	move	a0,s0
  68:	24010002 	li	at,2
  6c:	1041000f 	beq	v0,at,ac <ItemOcarina_Init+0xa4>
  70:	02002025 	move	a0,s0
  74:	24010003 	li	at,3
  78:	10410011 	beq	v0,at,c0 <ItemOcarina_Init+0xb8>
  7c:	02002025 	move	a0,s0
  80:	10000038 	b	164 <ItemOcarina_Init+0x15c>
  84:	00000000 	nop
  88:	0c000000 	jal	0 <ItemOcarina_SetupAction>
  8c:	24a50000 	addiu	a1,a1,0
  90:	10000038 	b	174 <ItemOcarina_Init+0x16c>
  94:	00000000 	nop
  98:	3c050000 	lui	a1,0x0
  9c:	0c000000 	jal	0 <ItemOcarina_SetupAction>
  a0:	24a50000 	addiu	a1,a1,0
  a4:	10000033 	b	174 <ItemOcarina_Init+0x16c>
  a8:	00000000 	nop
  ac:	3c050000 	lui	a1,0x0
  b0:	0c000000 	jal	0 <ItemOcarina_SetupAction>
  b4:	24a50000 	addiu	a1,a1,0
  b8:	1000002e 	b	174 <ItemOcarina_Init+0x16c>
  bc:	00000000 	nop
  c0:	3c050000 	lui	a1,0x0
  c4:	0c000000 	jal	0 <ItemOcarina_SetupAction>
  c8:	24a50000 	addiu	a1,a1,0
  cc:	3c020000 	lui	v0,0x0
  d0:	24420000 	addiu	v0,v0,0
  d4:	944f0ee4 	lhu	t7,3812(v0)
  d8:	31f80001 	andi	t8,t7,0x1
  dc:	13000007 	beqz	t8,fc <ItemOcarina_Init+0xf4>
  e0:	00000000 	nop
  e4:	94590edc 	lhu	t9,3804(v0)
  e8:	8fa50044 	lw	a1,68(sp)
  ec:	24060173 	li	a2,371
  f0:	33280008 	andi	t0,t9,0x8
  f4:	11000005 	beqz	t0,10c <ItemOcarina_Init+0x104>
  f8:	24a41c24 	addiu	a0,a1,7204
  fc:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 100:	02002025 	move	a0,s0
 104:	10000026 	b	1a0 <ItemOcarina_Init+0x198>
 108:	8fbf0034 	lw	ra,52(sp)
 10c:	3c01c30c 	lui	at,0xc30c
 110:	44812000 	mtc1	at,$f4
 114:	3c01445d 	lui	at,0x445d
 118:	44813000 	mtc1	at,$f6
 11c:	3c074395 	lui	a3,0x4395
 120:	24090004 	li	t1,4
 124:	240a0001 	li	t2,1
 128:	240b3800 	li	t3,14336
 12c:	afab0024 	sw	t3,36(sp)
 130:	afaa0020 	sw	t2,32(sp)
 134:	afa9001c 	sw	t1,28(sp)
 138:	34e78000 	ori	a3,a3,0x8000
 13c:	afa00018 	sw	zero,24(sp)
 140:	e7a40010 	swc1	$f4,16(sp)
 144:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 148:	e7a60014 	swc1	$f6,20(sp)
 14c:	3c053e4c 	lui	a1,0x3e4c
 150:	34a5cccd 	ori	a1,a1,0xcccd
 154:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 158:	02002025 	move	a0,s0
 15c:	10000005 	b	174 <ItemOcarina_Init+0x16c>
 160:	00000000 	nop
 164:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 168:	02002025 	move	a0,s0
 16c:	1000000c 	b	1a0 <ItemOcarina_Init+0x198>
 170:	8fbf0034 	lw	ra,52(sp)
 174:	3c040000 	lui	a0,0x0
 178:	24840000 	addiu	a0,a0,0
 17c:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 180:	240500d2 	li	a1,210
 184:	3c040000 	lui	a0,0x0
 188:	24840014 	addiu	a0,a0,20
 18c:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 190:	8fa50038 	lw	a1,56(sp)
 194:	240c0400 	li	t4,1024
 198:	a60c0150 	sh	t4,336(s0)
 19c:	8fbf0034 	lw	ra,52(sp)
 1a0:	8fb00030 	lw	s0,48(sp)
 1a4:	27bd0040 	addiu	sp,sp,64
 1a8:	03e00008 	jr	ra
 1ac:	00000000 	nop

000001b0 <ItemOcarina_Destroy>:
 1b0:	afa40000 	sw	a0,0(sp)
 1b4:	03e00008 	jr	ra
 1b8:	afa50004 	sw	a1,4(sp)

000001bc <ItemOcarina_Fly>:
 1bc:	27bdffc0 	addiu	sp,sp,-64
 1c0:	afbf0024 	sw	ra,36(sp)
 1c4:	afb10020 	sw	s1,32(sp)
 1c8:	afb0001c 	sw	s0,28(sp)
 1cc:	00808025 	move	s0,a0
 1d0:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 1d4:	00a08825 	move	s1,a1
 1d8:	86020150 	lh	v0,336(s0)
 1dc:	c6000070 	lwc1	$f0,112(s0)
 1e0:	c6020060 	lwc1	$f2,96(s0)
 1e4:	860e00b4 	lh	t6,180(s0)
 1e8:	861900b6 	lh	t9,182(s0)
 1ec:	4602003c 	c.lt.s	$f0,$f2
 1f0:	00024080 	sll	t0,v0,0x2
 1f4:	00027840 	sll	t7,v0,0x1
 1f8:	01024023 	subu	t0,t0,v0
 1fc:	01cfc021 	addu	t8,t6,t7
 200:	03284821 	addu	t1,t9,t0
 204:	a61800b4 	sh	t8,180(s0)
 208:	4500000a 	bc1f	234 <ItemOcarina_Fly+0x78>
 20c:	a60900b6 	sh	t1,182(s0)
 210:	c604006c 	lwc1	$f4,108(s0)
 214:	46041180 	add.s	$f6,$f2,$f4
 218:	e6060060 	swc1	$f6,96(s0)
 21c:	c6080060 	lwc1	$f8,96(s0)
 220:	4600403c 	c.lt.s	$f8,$f0
 224:	00000000 	nop
 228:	45020003 	bc1fl	238 <ItemOcarina_Fly+0x7c>
 22c:	96221d74 	lhu	v0,7540(s1)
 230:	e6000060 	swc1	$f0,96(s0)
 234:	96221d74 	lhu	v0,7540(s1)
 238:	24010371 	li	at,881
 23c:	02202025 	move	a0,s1
 240:	14410014 	bne	v0,at,294 <ItemOcarina_Fly+0xd8>
 244:	26050024 	addiu	a1,s0,36
 248:	3c01437a 	lui	at,0x437a
 24c:	44815000 	mtc1	at,$f10
 250:	3c014270 	lui	at,0x4270
 254:	44818000 	mtc1	at,$f16
 258:	3c010000 	lui	at,0x0
 25c:	e60a0024 	swc1	$f10,36(s0)
 260:	e6100028 	swc1	$f16,40(s0)
 264:	c4320020 	lwc1	$f18,32(at)
 268:	3c013f80 	lui	at,0x3f80
 26c:	44812000 	mtc1	at,$f4
 270:	3c01c0a0 	lui	at,0xc0a0
 274:	44813000 	mtc1	at,$f6
 278:	3c01c0e0 	lui	at,0xc0e0
 27c:	44814000 	mtc1	at,$f8
 280:	e612002c 	swc1	$f18,44(s0)
 284:	e604005c 	swc1	$f4,92(s0)
 288:	e6060060 	swc1	$f6,96(s0)
 28c:	e6080064 	swc1	$f8,100(s0)
 290:	96221d74 	lhu	v0,7540(s1)
 294:	24010381 	li	at,897
 298:	1441001c 	bne	v0,at,30c <ItemOcarina_Fly+0x150>
 29c:	24060064 	li	a2,100
 2a0:	240701f4 	li	a3,500
 2a4:	afa00010 	sw	zero,16(sp)
 2a8:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 2ac:	afa50030 	sw	a1,48(sp)
 2b0:	240a0001 	li	t2,1
 2b4:	8fa50030 	lw	a1,48(sp)
 2b8:	afaa0010 	sw	t2,16(sp)
 2bc:	02202025 	move	a0,s1
 2c0:	00003025 	move	a2,zero
 2c4:	00003825 	move	a3,zero
 2c8:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 2cc:	afa00014 	sw	zero,20(sp)
 2d0:	44800000 	mtc1	zero,$f0
 2d4:	3c010000 	lui	at,0x0
 2d8:	02002025 	move	a0,s0
 2dc:	e600005c 	swc1	$f0,92(s0)
 2e0:	e6000060 	swc1	$f0,96(s0)
 2e4:	e6000064 	swc1	$f0,100(s0)
 2e8:	c42a0024 	lwc1	$f10,36(at)
 2ec:	3c01bf00 	lui	at,0xbf00
 2f0:	44818000 	mtc1	at,$f16
 2f4:	a6000150 	sh	zero,336(s0)
 2f8:	24052817 	li	a1,10263
 2fc:	e60a006c 	swc1	$f10,108(s0)
 300:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 304:	e6100070 	swc1	$f16,112(s0)
 308:	96221d74 	lhu	v0,7540(s1)
 30c:	2401038a 	li	at,906
 310:	1441000f 	bne	v0,at,350 <ItemOcarina_Fly+0x194>
 314:	02202025 	move	a0,s1
 318:	3c014389 	lui	at,0x4389
 31c:	44819000 	mtc1	at,$f18
 320:	3c01c270 	lui	at,0xc270
 324:	44812000 	mtc1	at,$f4
 328:	3c010000 	lui	at,0x0
 32c:	c4260028 	lwc1	$f6,40(at)
 330:	27a50034 	addiu	a1,sp,52
 334:	24060064 	li	a2,100
 338:	240701f4 	li	a3,500
 33c:	afa00010 	sw	zero,16(sp)
 340:	e7b20034 	swc1	$f18,52(sp)
 344:	e7a40038 	swc1	$f4,56(sp)
 348:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 34c:	e7a6003c 	swc1	$f6,60(sp)
 350:	8fbf0024 	lw	ra,36(sp)
 354:	8fb0001c 	lw	s0,28(sp)
 358:	8fb10020 	lw	s1,32(sp)
 35c:	03e00008 	jr	ra
 360:	27bd0040 	addiu	sp,sp,64

00000364 <ItemOcarina_GetThrown>:
 364:	27bdffe8 	addiu	sp,sp,-24
 368:	3c010000 	lui	at,0x0
 36c:	c424002c 	lwc1	$f4,44(at)
 370:	afbf0014 	sw	ra,20(sp)
 374:	afa5001c 	sw	a1,28(sp)
 378:	3c01c0a0 	lui	at,0xc0a0
 37c:	44813000 	mtc1	at,$f6
 380:	44800000 	mtc1	zero,$f0
 384:	3c0140c0 	lui	at,0x40c0
 388:	44814000 	mtc1	at,$f8
 38c:	3c050000 	lui	a1,0x0
 390:	24a50000 	addiu	a1,a1,0
 394:	e484006c 	swc1	$f4,108(a0)
 398:	e4860070 	swc1	$f6,112(a0)
 39c:	e480005c 	swc1	$f0,92(a0)
 3a0:	e4800064 	swc1	$f0,100(a0)
 3a4:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 3a8:	e4880060 	swc1	$f8,96(a0)
 3ac:	8fbf0014 	lw	ra,20(sp)
 3b0:	27bd0018 	addiu	sp,sp,24
 3b4:	03e00008 	jr	ra
 3b8:	00000000 	nop

000003bc <func_80B864EC>:
 3bc:	27bdffe8 	addiu	sp,sp,-24
 3c0:	afbf0014 	sw	ra,20(sp)
 3c4:	afa5001c 	sw	a1,28(sp)
 3c8:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 3cc:	afa40018 	sw	a0,24(sp)
 3d0:	8fa40018 	lw	a0,24(sp)
 3d4:	84820150 	lh	v0,336(a0)
 3d8:	c4800070 	lwc1	$f0,112(a0)
 3dc:	c4820060 	lwc1	$f2,96(a0)
 3e0:	848e00b4 	lh	t6,180(a0)
 3e4:	849900b6 	lh	t9,182(a0)
 3e8:	4602003c 	c.lt.s	$f0,$f2
 3ec:	00024080 	sll	t0,v0,0x2
 3f0:	00027840 	sll	t7,v0,0x1
 3f4:	01024023 	subu	t0,t0,v0
 3f8:	01cfc021 	addu	t8,t6,t7
 3fc:	03284821 	addu	t1,t9,t0
 400:	a49800b4 	sh	t8,180(a0)
 404:	4500000a 	bc1f	430 <func_80B864EC+0x74>
 408:	a48900b6 	sh	t1,182(a0)
 40c:	c484006c 	lwc1	$f4,108(a0)
 410:	46041180 	add.s	$f6,$f2,$f4
 414:	e4860060 	swc1	$f6,96(a0)
 418:	c4880060 	lwc1	$f8,96(a0)
 41c:	4600403c 	c.lt.s	$f8,$f0
 420:	00000000 	nop
 424:	45020003 	bc1fl	434 <func_80B864EC+0x78>
 428:	8faa001c 	lw	t2,28(sp)
 42c:	e4800060 	swc1	$f0,96(a0)
 430:	8faa001c 	lw	t2,28(sp)
 434:	240100dc 	li	at,220
 438:	954b1d74 	lhu	t3,7540(t2)
 43c:	15610018 	bne	t3,at,4a0 <func_80B864EC+0xe4>
 440:	3c014310 	lui	at,0x4310
 444:	44815000 	mtc1	at,$f10
 448:	3c0142a0 	lui	at,0x42a0
 44c:	44818000 	mtc1	at,$f16
 450:	3c010000 	lui	at,0x0
 454:	e48a0024 	swc1	$f10,36(a0)
 458:	e4900028 	swc1	$f16,40(a0)
 45c:	c4320030 	lwc1	$f18,48(at)
 460:	3c013f80 	lui	at,0x3f80
 464:	44812000 	mtc1	at,$f4
 468:	3c014000 	lui	at,0x4000
 46c:	44813000 	mtc1	at,$f6
 470:	3c01c0e0 	lui	at,0xc0e0
 474:	44814000 	mtc1	at,$f8
 478:	3c010000 	lui	at,0x0
 47c:	e492002c 	swc1	$f18,44(a0)
 480:	e484005c 	swc1	$f4,92(a0)
 484:	e4860060 	swc1	$f6,96(a0)
 488:	e4880064 	swc1	$f8,100(a0)
 48c:	c42a0034 	lwc1	$f10,52(at)
 490:	3c01c0a0 	lui	at,0xc0a0
 494:	44818000 	mtc1	at,$f16
 498:	e48a006c 	swc1	$f10,108(a0)
 49c:	e4900070 	swc1	$f16,112(a0)
 4a0:	8fbf0014 	lw	ra,20(sp)
 4a4:	27bd0018 	addiu	sp,sp,24
 4a8:	03e00008 	jr	ra
 4ac:	00000000 	nop

000004b0 <func_80B865E0>:
 4b0:	3c010000 	lui	at,0x0
 4b4:	c4240038 	lwc1	$f4,56(at)
 4b8:	27bdffe8 	addiu	sp,sp,-24
 4bc:	3c01c0a0 	lui	at,0xc0a0
 4c0:	44813000 	mtc1	at,$f6
 4c4:	afbf0014 	sw	ra,20(sp)
 4c8:	afa5001c 	sw	a1,28(sp)
 4cc:	3c014080 	lui	at,0x4080
 4d0:	44815000 	mtc1	at,$f10
 4d4:	3c0140c0 	lui	at,0x40c0
 4d8:	44804000 	mtc1	zero,$f8
 4dc:	44818000 	mtc1	at,$f16
 4e0:	3c050000 	lui	a1,0x0
 4e4:	24a50000 	addiu	a1,a1,0
 4e8:	e484006c 	swc1	$f4,108(a0)
 4ec:	e4860070 	swc1	$f6,112(a0)
 4f0:	e48a0060 	swc1	$f10,96(a0)
 4f4:	e488005c 	swc1	$f8,92(a0)
 4f8:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 4fc:	e4900064 	swc1	$f16,100(a0)
 500:	8fbf0014 	lw	ra,20(sp)
 504:	27bd0018 	addiu	sp,sp,24
 508:	03e00008 	jr	ra
 50c:	00000000 	nop

00000510 <ItemOcarina_DoNothing>:
 510:	afa40000 	sw	a0,0(sp)
 514:	03e00008 	jr	ra
 518:	afa50004 	sw	a1,4(sp)

0000051c <ItemOcarina_StartSoTCutscene>:
 51c:	27bdffe8 	addiu	sp,sp,-24
 520:	afbf0014 	sw	ra,20(sp)
 524:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 528:	afa5001c 	sw	a1,28(sp)
 52c:	10400013 	beqz	v0,57c <ItemOcarina_StartSoTCutscene+0x60>
 530:	3c190000 	lui	t9,0x0
 534:	3c020000 	lui	v0,0x0
 538:	24420000 	addiu	v0,v0,0
 53c:	00027100 	sll	t6,v0,0x4
 540:	000e7f02 	srl	t7,t6,0x1c
 544:	000fc080 	sll	t8,t7,0x2
 548:	0338c821 	addu	t9,t9,t8
 54c:	3c0100ff 	lui	at,0xff
 550:	8f390000 	lw	t9,0(t9)
 554:	3421ffff 	ori	at,at,0xffff
 558:	00414024 	and	t0,v0,at
 55c:	8fab001c 	lw	t3,28(sp)
 560:	3c018000 	lui	at,0x8000
 564:	03284821 	addu	t1,t9,t0
 568:	01215021 	addu	t2,t1,at
 56c:	3c010000 	lui	at,0x0
 570:	240c0001 	li	t4,1
 574:	ad6a1d68 	sw	t2,7528(t3)
 578:	a02c1414 	sb	t4,5140(at)
 57c:	8fbf0014 	lw	ra,20(sp)
 580:	27bd0018 	addiu	sp,sp,24
 584:	03e00008 	jr	ra
 588:	00000000 	nop

0000058c <ItemOcarina_WaitInWater>:
 58c:	27bdffd8 	addiu	sp,sp,-40
 590:	afbf0024 	sw	ra,36(sp)
 594:	afb10020 	sw	s1,32(sp)
 598:	afb0001c 	sw	s0,28(sp)
 59c:	00808025 	move	s0,a0
 5a0:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 5a4:	00a08825 	move	s1,a1
 5a8:	1040000e 	beqz	v0,5e4 <ItemOcarina_WaitInWater+0x58>
 5ac:	02002025 	move	a0,s0
 5b0:	3c020000 	lui	v0,0x0
 5b4:	24420000 	addiu	v0,v0,0
 5b8:	944e0edc 	lhu	t6,3804(v0)
 5bc:	02202025 	move	a0,s1
 5c0:	24050003 	li	a1,3
 5c4:	35cf0008 	ori	t7,t6,0x8
 5c8:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 5cc:	a44f0edc 	sh	t7,3804(v0)
 5d0:	3c180000 	lui	t8,0x0
 5d4:	27180000 	addiu	t8,t8,0
 5d8:	ae18014c 	sw	t8,332(s0)
 5dc:	10000019 	b	644 <ItemOcarina_WaitInWater+0xb8>
 5e0:	ae000134 	sw	zero,308(s0)
 5e4:	3c014248 	lui	at,0x4248
 5e8:	44812000 	mtc1	at,$f4
 5ec:	02202825 	move	a1,s1
 5f0:	2406000c 	li	a2,12
 5f4:	3c0741f0 	lui	a3,0x41f0
 5f8:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 5fc:	e7a40010 	swc1	$f4,16(sp)
 600:	3c190001 	lui	t9,0x1
 604:	0331c821 	addu	t9,t9,s1
 608:	8f391de4 	lw	t9,7652(t9)
 60c:	02202025 	move	a0,s1
 610:	26050024 	addiu	a1,s0,36
 614:	3328000d 	andi	t0,t9,0xd
 618:	1500000a 	bnez	t0,644 <ItemOcarina_WaitInWater+0xb8>
 61c:	3c014120 	lui	at,0x4120
 620:	44800000 	mtc1	zero,$f0
 624:	44813000 	mtc1	at,$f6
 628:	3c010000 	lui	at,0x0
 62c:	c428003c 	lwc1	$f8,60(at)
 630:	44060000 	mfc1	a2,$f0
 634:	44070000 	mfc1	a3,$f0
 638:	e7a60010 	swc1	$f6,16(sp)
 63c:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 640:	e7a80014 	swc1	$f8,20(sp)
 644:	8fbf0024 	lw	ra,36(sp)
 648:	8fb0001c 	lw	s0,28(sp)
 64c:	8fb10020 	lw	s1,32(sp)
 650:	03e00008 	jr	ra
 654:	27bd0028 	addiu	sp,sp,40

00000658 <ItemOcarina_Update>:
 658:	27bdffe8 	addiu	sp,sp,-24
 65c:	afbf0014 	sw	ra,20(sp)
 660:	8c99014c 	lw	t9,332(a0)
 664:	0320f809 	jalr	t9
 668:	00000000 	nop
 66c:	8fbf0014 	lw	ra,20(sp)
 670:	27bd0018 	addiu	sp,sp,24
 674:	03e00008 	jr	ra
 678:	00000000 	nop

0000067c <ItemOcarina_Draw>:
 67c:	27bdffe8 	addiu	sp,sp,-24
 680:	afbf0014 	sw	ra,20(sp)
 684:	afa40018 	sw	a0,24(sp)
 688:	afa5001c 	sw	a1,28(sp)
 68c:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 690:	00003025 	move	a2,zero
 694:	8fa40018 	lw	a0,24(sp)
 698:	8fa5001c 	lw	a1,28(sp)
 69c:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 6a0:	00003025 	move	a2,zero
 6a4:	8fa4001c 	lw	a0,28(sp)
 6a8:	0c000000 	jal	0 <ItemOcarina_SetupAction>
 6ac:	2405002e 	li	a1,46
 6b0:	8fbf0014 	lw	ra,20(sp)
 6b4:	27bd0018 	addiu	sp,sp,24
 6b8:	03e00008 	jr	ra
 6bc:	00000000 	nop
