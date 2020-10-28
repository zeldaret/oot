
build/src/overlays/actors/ovl_Door_Ana/z_door_ana.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DoorAna_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850198 	sw	a1,408(a0)

00000008 <DoorAna_Init>:
   8:	27bdffd8 	addiu	sp,sp,-40
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa5002c 	sw	a1,44(sp)
  18:	8482001c 	lh	v0,28(a0)
  1c:	a48000b8 	sh	zero,184(a0)
  20:	848e00b8 	lh	t6,184(a0)
  24:	304f0300 	andi	t7,v0,0x300
  28:	00808025 	move	s0,a0
  2c:	11e0001b 	beqz	t7,9c <DoorAna_Init+0x94>
  30:	a48e00b6 	sh	t6,182(a0)
  34:	30580200 	andi	t8,v0,0x200
  38:	1300000c 	beqz	t8,6c <DoorAna_Init+0x64>
  3c:	8fa4002c 	lw	a0,44(sp)
  40:	2605014c 	addiu	a1,s0,332
  44:	0c000000 	jal	0 <DoorAna_SetupAction>
  48:	afa50020 	sw	a1,32(sp)
  4c:	3c070000 	lui	a3,0x0
  50:	8fa50020 	lw	a1,32(sp)
  54:	24e70020 	addiu	a3,a3,32
  58:	8fa4002c 	lw	a0,44(sp)
  5c:	0c000000 	jal	0 <DoorAna_SetupAction>
  60:	02003025 	move	a2,s0
  64:	10000005 	b	7c <DoorAna_Init+0x74>
  68:	02002025 	move	a0,s0
  6c:	8e190004 	lw	t9,4(s0)
  70:	37280010 	ori	t0,t9,0x10
  74:	ae080004 	sw	t0,4(s0)
  78:	02002025 	move	a0,s0
  7c:	0c000000 	jal	0 <DoorAna_SetupAction>
  80:	24050000 	li	a1,0
  84:	3c050000 	lui	a1,0x0
  88:	24a50000 	addiu	a1,a1,0
  8c:	0c000000 	jal	0 <DoorAna_SetupAction>
  90:	02002025 	move	a0,s0
  94:	10000006 	b	b0 <DoorAna_Init+0xa8>
  98:	a200001f 	sb	zero,31(s0)
  9c:	3c050000 	lui	a1,0x0
  a0:	24a50000 	addiu	a1,a1,0
  a4:	0c000000 	jal	0 <DoorAna_SetupAction>
  a8:	02002025 	move	a0,s0
  ac:	a200001f 	sb	zero,31(s0)
  b0:	8fbf001c 	lw	ra,28(sp)
  b4:	8fb00018 	lw	s0,24(sp)
  b8:	27bd0028 	addiu	sp,sp,40
  bc:	03e00008 	jr	ra
  c0:	00000000 	nop

000000c4 <DoorAna_Destroy>:
  c4:	27bdffe8 	addiu	sp,sp,-24
  c8:	afbf0014 	sw	ra,20(sp)
  cc:	848e001c 	lh	t6,28(a0)
  d0:	00803025 	move	a2,a0
  d4:	00a02025 	move	a0,a1
  d8:	31cf0200 	andi	t7,t6,0x200
  dc:	51e00004 	beqzl	t7,f0 <DoorAna_Destroy+0x2c>
  e0:	8fbf0014 	lw	ra,20(sp)
  e4:	0c000000 	jal	0 <DoorAna_SetupAction>
  e8:	24c5014c 	addiu	a1,a2,332
  ec:	8fbf0014 	lw	ra,20(sp)
  f0:	27bd0018 	addiu	sp,sp,24
  f4:	03e00008 	jr	ra
  f8:	00000000 	nop

000000fc <DoorAna_WaitClosed>:
  fc:	27bdffd0 	addiu	sp,sp,-48
 100:	afbf0024 	sw	ra,36(sp)
 104:	afb00020 	sw	s0,32(sp)
 108:	afa50034 	sw	a1,52(sp)
 10c:	afa0002c 	sw	zero,44(sp)
 110:	848e001c 	lh	t6,28(a0)
 114:	00808025 	move	s0,a0
 118:	3c010000 	lui	at,0x0
 11c:	31cf0200 	andi	t7,t6,0x200
 120:	55e00013 	bnezl	t7,170 <DoorAna_WaitClosed+0x74>
 124:	9209015d 	lbu	t1,349(s0)
 128:	c484008c 	lwc1	$f4,140(a0)
 12c:	c4260030 	lwc1	$f6,48(at)
 130:	00a02025 	move	a0,a1
 134:	4606203c 	c.lt.s	$f4,$f6
 138:	00000000 	nop
 13c:	45020021 	bc1fl	1c4 <DoorAna_WaitClosed+0xc8>
 140:	8fad002c 	lw	t5,44(sp)
 144:	0c000000 	jal	0 <DoorAna_SetupAction>
 148:	24050005 	li	a1,5
 14c:	1040001c 	beqz	v0,1c0 <DoorAna_WaitClosed+0xc4>
 150:	24180001 	li	t8,1
 154:	afb8002c 	sw	t8,44(sp)
 158:	8e190004 	lw	t9,4(s0)
 15c:	2401ffef 	li	at,-17
 160:	03214024 	and	t0,t9,at
 164:	10000016 	b	1c0 <DoorAna_WaitClosed+0xc4>
 168:	ae080004 	sw	t0,4(s0)
 16c:	9209015d 	lbu	t1,349(s0)
 170:	2606014c 	addiu	a2,s0,332
 174:	00c02825 	move	a1,a2
 178:	312a0002 	andi	t2,t1,0x2
 17c:	11400008 	beqz	t2,1a0 <DoorAna_WaitClosed+0xa4>
 180:	02002025 	move	a0,s0
 184:	240b0001 	li	t3,1
 188:	afab002c 	sw	t3,44(sp)
 18c:	8fa40034 	lw	a0,52(sp)
 190:	0c000000 	jal	0 <DoorAna_SetupAction>
 194:	2605014c 	addiu	a1,s0,332
 198:	1000000a 	b	1c4 <DoorAna_WaitClosed+0xc8>
 19c:	8fad002c 	lw	t5,44(sp)
 1a0:	0c000000 	jal	0 <DoorAna_SetupAction>
 1a4:	afa60028 	sw	a2,40(sp)
 1a8:	8fa40034 	lw	a0,52(sp)
 1ac:	3c010001 	lui	at,0x1
 1b0:	34211e60 	ori	at,at,0x1e60
 1b4:	8fa60028 	lw	a2,40(sp)
 1b8:	0c000000 	jal	0 <DoorAna_SetupAction>
 1bc:	00812821 	addu	a1,a0,at
 1c0:	8fad002c 	lw	t5,44(sp)
 1c4:	02002025 	move	a0,s0
 1c8:	51a00013 	beqzl	t5,218 <DoorAna_WaitClosed+0x11c>
 1cc:	02002025 	move	a0,s0
 1d0:	860e001c 	lh	t6,28(s0)
 1d4:	3c050000 	lui	a1,0x0
 1d8:	24a50000 	addiu	a1,a1,0
 1dc:	31cffcff 	andi	t7,t6,0xfcff
 1e0:	0c000000 	jal	0 <DoorAna_SetupAction>
 1e4:	a60f001c 	sh	t7,28(s0)
 1e8:	3c070000 	lui	a3,0x0
 1ec:	3c180000 	lui	t8,0x0
 1f0:	24e70000 	addiu	a3,a3,0
 1f4:	27180000 	addiu	t8,t8,0
 1f8:	3c050000 	lui	a1,0x0
 1fc:	24a50000 	addiu	a1,a1,0
 200:	afb80014 	sw	t8,20(sp)
 204:	afa70010 	sw	a3,16(sp)
 208:	24044802 	li	a0,18434
 20c:	0c000000 	jal	0 <DoorAna_SetupAction>
 210:	24060004 	li	a2,4
 214:	02002025 	move	a0,s0
 218:	0c000000 	jal	0 <DoorAna_SetupAction>
 21c:	8fa50034 	lw	a1,52(sp)
 220:	8fbf0024 	lw	ra,36(sp)
 224:	8fb00020 	lw	s0,32(sp)
 228:	27bd0030 	addiu	sp,sp,48
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <DoorAna_WaitOpen>:
 234:	27bdffd8 	addiu	sp,sp,-40
 238:	afbf001c 	sw	ra,28(sp)
 23c:	afb00018 	sw	s0,24(sp)
 240:	8ca31c44 	lw	v1,7236(a1)
 244:	00a03825 	move	a3,a1
 248:	00808025 	move	s0,a0
 24c:	3c053c23 	lui	a1,0x3c23
 250:	3c063a83 	lui	a2,0x3a83
 254:	34c6126f 	ori	a2,a2,0x126f
 258:	34a5d70a 	ori	a1,a1,0xd70a
 25c:	24840050 	addiu	a0,a0,80
 260:	afa7002c 	sw	a3,44(sp)
 264:	0c000000 	jal	0 <DoorAna_SetupAction>
 268:	afa30024 	sw	v1,36(sp)
 26c:	8fa30024 	lw	v1,36(sp)
 270:	10400055 	beqz	v0,3c8 <DoorAna_WaitOpen+0x194>
 274:	8fa7002c 	lw	a3,44(sp)
 278:	820e001f 	lb	t6,31(s0)
 27c:	3c0f0001 	lui	t7,0x1
 280:	01e77821 	addu	t7,t7,a3
 284:	11c0002f 	beqz	t6,344 <DoorAna_WaitOpen+0x110>
 288:	00e02025 	move	a0,a3
 28c:	81ef1e15 	lb	t7,7701(t7)
 290:	15e0002c 	bnez	t7,344 <DoorAna_WaitOpen+0x110>
 294:	00000000 	nop
 298:	8c78067c 	lw	t8,1660(v1)
 29c:	0018c800 	sll	t9,t8,0x0
 2a0:	07210028 	bgez	t9,344 <DoorAna_WaitOpen+0x110>
 2a4:	00000000 	nop
 2a8:	8068084f 	lb	t0,2127(v1)
 2ac:	24050001 	li	a1,1
 2b0:	240604ff 	li	a2,1279
 2b4:	15000023 	bnez	t0,344 <DoorAna_WaitOpen+0x110>
 2b8:	00000000 	nop
 2bc:	8602001c 	lh	v0,28(s0)
 2c0:	afa7002c 	sw	a3,44(sp)
 2c4:	00e02025 	move	a0,a3
 2c8:	00021303 	sra	v0,v0,0xc
 2cc:	30420007 	andi	v0,v0,0x7
 2d0:	2442ffff 	addiu	v0,v0,-1
 2d4:	0c000000 	jal	0 <DoorAna_SetupAction>
 2d8:	afa20020 	sw	v0,32(sp)
 2dc:	c6040028 	lwc1	$f4,40(s0)
 2e0:	3c030000 	lui	v1,0x0
 2e4:	24630000 	addiu	v1,v1,0
 2e8:	e4641388 	swc1	$f4,5000(v1)
 2ec:	86090016 	lh	t1,22(s0)
 2f0:	8fa20020 	lw	v0,32(sp)
 2f4:	8fa7002c 	lw	a3,44(sp)
 2f8:	a4691390 	sh	t1,5008(v1)
 2fc:	860b001c 	lh	t3,28(s0)
 300:	3c0d0000 	lui	t5,0x0
 304:	04410003 	bgez	v0,314 <DoorAna_WaitOpen+0xe0>
 308:	a06b1397 	sb	t3,5015(v1)
 30c:	86020018 	lh	v0,24(s0)
 310:	24420001 	addiu	v0,v0,1
 314:	00026040 	sll	t4,v0,0x1
 318:	01ac6821 	addu	t5,t5,t4
 31c:	85ad004c 	lh	t5,76(t5)
 320:	3c010001 	lui	at,0x1
 324:	00270821 	addu	at,at,a3
 328:	3c050000 	lui	a1,0x0
 32c:	24a50000 	addiu	a1,a1,0
 330:	02002025 	move	a0,s0
 334:	0c000000 	jal	0 <DoorAna_SetupAction>
 338:	a42d1e1a 	sh	t5,7706(at)
 33c:	10000023 	b	3cc <DoorAna_WaitOpen+0x198>
 340:	02002025 	move	a0,s0
 344:	0c000000 	jal	0 <DoorAna_SetupAction>
 348:	afa30024 	sw	v1,36(sp)
 34c:	1440001d 	bnez	v0,3c4 <DoorAna_WaitOpen+0x190>
 350:	8fa30024 	lw	v1,36(sp)
 354:	8c62067c 	lw	v0,1660(v1)
 358:	3c010880 	lui	at,0x880
 35c:	00417024 	and	t6,v0,at
 360:	15c00018 	bnez	t6,3c4 <DoorAna_WaitOpen+0x190>
 364:	3c014170 	lui	at,0x4170
 368:	44811000 	mtc1	at,$f2
 36c:	c6060090 	lwc1	$f6,144(s0)
 370:	3c01c248 	lui	at,0xc248
 374:	4602303e 	c.le.s	$f6,$f2
 378:	00000000 	nop
 37c:	45020012 	bc1fl	3c8 <DoorAna_WaitOpen+0x194>
 380:	a200001f 	sb	zero,31(s0)
 384:	c6000094 	lwc1	$f0,148(s0)
 388:	44814000 	mtc1	at,$f8
 38c:	00000000 	nop
 390:	4600403e 	c.le.s	$f8,$f0
 394:	00000000 	nop
 398:	4502000b 	bc1fl	3c8 <DoorAna_WaitOpen+0x194>
 39c:	a200001f 	sb	zero,31(s0)
 3a0:	4602003e 	c.le.s	$f0,$f2
 3a4:	3c018000 	lui	at,0x8000
 3a8:	00417825 	or	t7,v0,at
 3ac:	24180001 	li	t8,1
 3b0:	45020005 	bc1fl	3c8 <DoorAna_WaitOpen+0x194>
 3b4:	a200001f 	sb	zero,31(s0)
 3b8:	ac6f067c 	sw	t7,1660(v1)
 3bc:	10000002 	b	3c8 <DoorAna_WaitOpen+0x194>
 3c0:	a218001f 	sb	t8,31(s0)
 3c4:	a200001f 	sb	zero,31(s0)
 3c8:	02002025 	move	a0,s0
 3cc:	0c000000 	jal	0 <DoorAna_SetupAction>
 3d0:	8e050050 	lw	a1,80(s0)
 3d4:	8fbf001c 	lw	ra,28(sp)
 3d8:	8fb00018 	lw	s0,24(sp)
 3dc:	27bd0028 	addiu	sp,sp,40
 3e0:	03e00008 	jr	ra
 3e4:	00000000 	nop

000003e8 <DoorAna_GrabLink>:
 3e8:	27bdffe0 	addiu	sp,sp,-32
 3ec:	afbf0014 	sw	ra,20(sp)
 3f0:	c4860094 	lwc1	$f6,148(a0)
 3f4:	44802000 	mtc1	zero,$f4
 3f8:	00803025 	move	a2,a0
 3fc:	3c014170 	lui	at,0x4170
 400:	4604303e 	c.le.s	$f6,$f4
 404:	00000000 	nop
 408:	4502001f 	bc1fl	488 <DoorAna_GrabLink+0xa0>
 40c:	8fbf0014 	lw	ra,20(sp)
 410:	44814000 	mtc1	at,$f8
 414:	c48a0090 	lwc1	$f10,144(a0)
 418:	460a403c 	c.lt.s	$f8,$f10
 41c:	00000000 	nop
 420:	45020019 	bc1fl	488 <DoorAna_GrabLink+0xa0>
 424:	8fbf0014 	lw	ra,20(sp)
 428:	8cae1c44 	lw	t6,7236(a1)
 42c:	afae001c 	sw	t6,28(sp)
 430:	8484008a 	lh	a0,138(a0)
 434:	0c000000 	jal	0 <DoorAna_SetupAction>
 438:	afa60020 	sw	a2,32(sp)
 43c:	3c014170 	lui	at,0x4170
 440:	44818000 	mtc1	at,$f16
 444:	8fa60020 	lw	a2,32(sp)
 448:	8faf001c 	lw	t7,28(sp)
 44c:	46100482 	mul.s	$f18,$f0,$f16
 450:	c4c40024 	lwc1	$f4,36(a2)
 454:	46049180 	add.s	$f6,$f18,$f4
 458:	e5e60024 	swc1	$f6,36(t7)
 45c:	0c000000 	jal	0 <DoorAna_SetupAction>
 460:	84c4008a 	lh	a0,138(a2)
 464:	3c014170 	lui	at,0x4170
 468:	44814000 	mtc1	at,$f8
 46c:	8fa60020 	lw	a2,32(sp)
 470:	8fb8001c 	lw	t8,28(sp)
 474:	46080282 	mul.s	$f10,$f0,$f8
 478:	c4d0002c 	lwc1	$f16,44(a2)
 47c:	46105480 	add.s	$f18,$f10,$f16
 480:	e712002c 	swc1	$f18,44(t8)
 484:	8fbf0014 	lw	ra,20(sp)
 488:	27bd0020 	addiu	sp,sp,32
 48c:	03e00008 	jr	ra
 490:	00000000 	nop

00000494 <DoorAna_Update>:
 494:	27bdffe8 	addiu	sp,sp,-24
 498:	afbf0014 	sw	ra,20(sp)
 49c:	afa40018 	sw	a0,24(sp)
 4a0:	afa5001c 	sw	a1,28(sp)
 4a4:	8c990198 	lw	t9,408(a0)
 4a8:	0320f809 	jalr	t9
 4ac:	00000000 	nop
 4b0:	8fa5001c 	lw	a1,28(sp)
 4b4:	84ae07a0 	lh	t6,1952(a1)
 4b8:	000e7880 	sll	t7,t6,0x2
 4bc:	00afc021 	addu	t8,a1,t7
 4c0:	0c000000 	jal	0 <DoorAna_SetupAction>
 4c4:	8f040790 	lw	a0,1936(t8)
 4c8:	8fa90018 	lw	t1,24(sp)
 4cc:	34018000 	li	at,0x8000
 4d0:	00414021 	addu	t0,v0,at
 4d4:	a52800b6 	sh	t0,182(t1)
 4d8:	8fbf0014 	lw	ra,20(sp)
 4dc:	27bd0018 	addiu	sp,sp,24
 4e0:	03e00008 	jr	ra
 4e4:	00000000 	nop

000004e8 <DoorAna_Draw>:
 4e8:	27bdffc0 	addiu	sp,sp,-64
 4ec:	afbf001c 	sw	ra,28(sp)
 4f0:	afb00018 	sw	s0,24(sp)
 4f4:	afa40040 	sw	a0,64(sp)
 4f8:	afa50044 	sw	a1,68(sp)
 4fc:	8ca50000 	lw	a1,0(a1)
 500:	3c060000 	lui	a2,0x0
 504:	24c60000 	addiu	a2,a2,0
 508:	27a4002c 	addiu	a0,sp,44
 50c:	240701b8 	li	a3,440
 510:	0c000000 	jal	0 <DoorAna_SetupAction>
 514:	00a08025 	move	s0,a1
 518:	8faf0044 	lw	t7,68(sp)
 51c:	0c000000 	jal	0 <DoorAna_SetupAction>
 520:	8de40000 	lw	a0,0(t7)
 524:	8e0202d0 	lw	v0,720(s0)
 528:	3c19da38 	lui	t9,0xda38
 52c:	37390003 	ori	t9,t9,0x3
 530:	24580008 	addiu	t8,v0,8
 534:	ae1802d0 	sw	t8,720(s0)
 538:	ac590000 	sw	t9,0(v0)
 53c:	8fa80044 	lw	t0,68(sp)
 540:	3c050000 	lui	a1,0x0
 544:	24a50010 	addiu	a1,a1,16
 548:	8d040000 	lw	a0,0(t0)
 54c:	240601be 	li	a2,446
 550:	0c000000 	jal	0 <DoorAna_SetupAction>
 554:	afa20028 	sw	v0,40(sp)
 558:	8fa30028 	lw	v1,40(sp)
 55c:	3c0b0000 	lui	t3,0x0
 560:	256b0000 	addiu	t3,t3,0
 564:	ac620004 	sw	v0,4(v1)
 568:	8e0202d0 	lw	v0,720(s0)
 56c:	3c0ade00 	lui	t2,0xde00
 570:	3c060000 	lui	a2,0x0
 574:	24490008 	addiu	t1,v0,8
 578:	ae0902d0 	sw	t1,720(s0)
 57c:	ac4b0004 	sw	t3,4(v0)
 580:	ac4a0000 	sw	t2,0(v0)
 584:	8fac0044 	lw	t4,68(sp)
 588:	24c60020 	addiu	a2,a2,32
 58c:	27a4002c 	addiu	a0,sp,44
 590:	240701c1 	li	a3,449
 594:	0c000000 	jal	0 <DoorAna_SetupAction>
 598:	8d850000 	lw	a1,0(t4)
 59c:	8fbf001c 	lw	ra,28(sp)
 5a0:	8fb00018 	lw	s0,24(sp)
 5a4:	27bd0040 	addiu	sp,sp,64
 5a8:	03e00008 	jr	ra
 5ac:	00000000 	nop
