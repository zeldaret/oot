
build/src/overlays/actors/ovl_En_Dog/z_en_dog.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDog_PlayWalkSFX>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	8c8f0154 	lw	t7,340(a0)
   c:	3c0e0000 	lui	t6,0x0
  10:	25ce0000 	addiu	t6,t6,0
  14:	15cf0010 	bne	t6,t7,58 <EnDog_PlayWalkSFX+0x58>
  18:	3c013f80 	lui	at,0x3f80
  1c:	c4800164 	lwc1	$f0,356(a0)
  20:	44812000 	mtc1	at,$f4
  24:	3c0140e0 	lui	at,0x40e0
  28:	46002032 	c.eq.s	$f4,$f0
  2c:	00000000 	nop
  30:	45010007 	bc1t	50 <EnDog_PlayWalkSFX+0x50>
  34:	00000000 	nop
  38:	44813000 	mtc1	at,$f6
  3c:	00000000 	nop
  40:	46003032 	c.eq.s	$f6,$f0
  44:	00000000 	nop
  48:	45020004 	bc1fl	5c <EnDog_PlayWalkSFX+0x5c>
  4c:	8fbf0014 	lw	ra,20(sp)
  50:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
  54:	240528ef 	li	a1,10479
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	27bd0018 	addiu	sp,sp,24
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <EnDog_PlayRunSFX>:
  68:	27bdffe8 	addiu	sp,sp,-24
  6c:	afbf0014 	sw	ra,20(sp)
  70:	8c8f0154 	lw	t7,340(a0)
  74:	3c0e0000 	lui	t6,0x0
  78:	25ce0000 	addiu	t6,t6,0
  7c:	15cf0010 	bne	t6,t7,c0 <EnDog_PlayRunSFX+0x58>
  80:	3c014000 	lui	at,0x4000
  84:	c4800164 	lwc1	$f0,356(a0)
  88:	44812000 	mtc1	at,$f4
  8c:	3c014080 	lui	at,0x4080
  90:	46002032 	c.eq.s	$f4,$f0
  94:	00000000 	nop
  98:	45010007 	bc1t	b8 <EnDog_PlayRunSFX+0x50>
  9c:	00000000 	nop
  a0:	44813000 	mtc1	at,$f6
  a4:	00000000 	nop
  a8:	46003032 	c.eq.s	$f6,$f0
  ac:	00000000 	nop
  b0:	45020004 	bc1fl	c4 <EnDog_PlayRunSFX+0x5c>
  b4:	8fbf0014 	lw	ra,20(sp)
  b8:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
  bc:	240528ef 	li	a1,10479
  c0:	8fbf0014 	lw	ra,20(sp)
  c4:	27bd0018 	addiu	sp,sp,24
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

000000d0 <EnDog_PlayBarkSFX>:
  d0:	27bdffe8 	addiu	sp,sp,-24
  d4:	afbf0014 	sw	ra,20(sp)
  d8:	8c8f0154 	lw	t7,340(a0)
  dc:	3c0e0000 	lui	t6,0x0
  e0:	25ce0000 	addiu	t6,t6,0
  e4:	15cf0010 	bne	t6,t7,128 <EnDog_PlayBarkSFX+0x58>
  e8:	3c014150 	lui	at,0x4150
  ec:	c4800164 	lwc1	$f0,356(a0)
  f0:	44812000 	mtc1	at,$f4
  f4:	3c014198 	lui	at,0x4198
  f8:	46002032 	c.eq.s	$f4,$f0
  fc:	00000000 	nop
 100:	45010007 	bc1t	120 <EnDog_PlayBarkSFX+0x50>
 104:	00000000 	nop
 108:	44813000 	mtc1	at,$f6
 10c:	00000000 	nop
 110:	46003032 	c.eq.s	$f6,$f0
 114:	00000000 	nop
 118:	45020004 	bc1fl	12c <EnDog_PlayBarkSFX+0x5c>
 11c:	8fbf0014 	lw	ra,20(sp)
 120:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 124:	240528d8 	li	a1,10456
 128:	8fbf0014 	lw	ra,20(sp)
 12c:	27bd0018 	addiu	sp,sp,24
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <EnDog_PlayAnimAndSFX>:
 138:	27bdffd8 	addiu	sp,sp,-40
 13c:	afbf001c 	sw	ra,28(sp)
 140:	afb00018 	sw	s0,24(sp)
 144:	848301f2 	lh	v1,498(a0)
 148:	848201f0 	lh	v0,496(a0)
 14c:	00808025 	move	s0,a0
 150:	24010004 	li	at,4
 154:	50430029 	beql	v0,v1,1fc <EnDog_PlayAnimAndSFX+0xc4>
 158:	2c610006 	sltiu	at,v1,6
 15c:	14410003 	bne	v0,at,16c <EnDog_PlayAnimAndSFX+0x34>
 160:	240e0003 	li	t6,3
 164:	a48e01f0 	sh	t6,496(a0)
 168:	848201f0 	lh	v0,496(a0)
 16c:	24010006 	li	at,6
 170:	14410003 	bne	v0,at,180 <EnDog_PlayAnimAndSFX+0x48>
 174:	240f0005 	li	t7,5
 178:	a60f01f0 	sh	t7,496(s0)
 17c:	860201f0 	lh	v0,496(s0)
 180:	3058ffff 	andi	t8,v0,0xffff
 184:	2f010006 	sltiu	at,t8,6
 188:	10200015 	beqz	at,1e0 <EnDog_PlayAnimAndSFX+0xa8>
 18c:	a60201f2 	sh	v0,498(s0)
 190:	0018c080 	sll	t8,t8,0x2
 194:	3c010000 	lui	at,0x0
 198:	00380821 	addu	at,at,t8
 19c:	8c380020 	lw	t8,32(at)
 1a0:	03000008 	jr	t8
 1a4:	00000000 	nop
 1a8:	24190001 	li	t9,1
 1ac:	1000000c 	b	1e0 <EnDog_PlayAnimAndSFX+0xa8>
 1b0:	afb90024 	sw	t9,36(sp)
 1b4:	24080002 	li	t0,2
 1b8:	10000009 	b	1e0 <EnDog_PlayAnimAndSFX+0xa8>
 1bc:	afa80024 	sw	t0,36(sp)
 1c0:	24090003 	li	t1,3
 1c4:	10000006 	b	1e0 <EnDog_PlayAnimAndSFX+0xa8>
 1c8:	afa90024 	sw	t1,36(sp)
 1cc:	240a0004 	li	t2,4
 1d0:	10000003 	b	1e0 <EnDog_PlayAnimAndSFX+0xa8>
 1d4:	afaa0024 	sw	t2,36(sp)
 1d8:	240b0006 	li	t3,6
 1dc:	afab0024 	sw	t3,36(sp)
 1e0:	3c050000 	lui	a1,0x0
 1e4:	24a50058 	addiu	a1,a1,88
 1e8:	2604014c 	addiu	a0,s0,332
 1ec:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 1f0:	8fa60024 	lw	a2,36(sp)
 1f4:	860301f2 	lh	v1,498(s0)
 1f8:	2c610006 	sltiu	at,v1,6
 1fc:	1020002e 	beqz	at,2b8 <EnDog_PlayAnimAndSFX+0x180>
 200:	00036080 	sll	t4,v1,0x2
 204:	3c010000 	lui	at,0x0
 208:	002c0821 	addu	at,at,t4
 20c:	8c2c0038 	lw	t4,56(at)
 210:	01800008 	jr	t4
 214:	00000000 	nop
 218:	2604014c 	addiu	a0,s0,332
 21c:	8e05015c 	lw	a1,348(s0)
 220:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 224:	afa40020 	sw	a0,32(sp)
 228:	10400023 	beqz	v0,2b8 <EnDog_PlayAnimAndSFX+0x180>
 22c:	8fa40020 	lw	a0,32(sp)
 230:	3c050000 	lui	a1,0x0
 234:	24a50058 	addiu	a1,a1,88
 238:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 23c:	24060005 	li	a2,5
 240:	240d0004 	li	t5,4
 244:	a60d01f0 	sh	t5,496(s0)
 248:	860e01f0 	lh	t6,496(s0)
 24c:	1000001a 	b	2b8 <EnDog_PlayAnimAndSFX+0x180>
 250:	a60e01f2 	sh	t6,498(s0)
 254:	2604014c 	addiu	a0,s0,332
 258:	8e05015c 	lw	a1,348(s0)
 25c:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 260:	afa40020 	sw	a0,32(sp)
 264:	10400014 	beqz	v0,2b8 <EnDog_PlayAnimAndSFX+0x180>
 268:	8fa40020 	lw	a0,32(sp)
 26c:	3c050000 	lui	a1,0x0
 270:	24a50058 	addiu	a1,a1,88
 274:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 278:	24060007 	li	a2,7
 27c:	240f0006 	li	t7,6
 280:	a60f01f0 	sh	t7,496(s0)
 284:	861801f0 	lh	t8,496(s0)
 288:	1000000b 	b	2b8 <EnDog_PlayAnimAndSFX+0x180>
 28c:	a61801f2 	sh	t8,498(s0)
 290:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 294:	02002025 	move	a0,s0
 298:	10000008 	b	2bc <EnDog_PlayAnimAndSFX+0x184>
 29c:	8fbf001c 	lw	ra,28(sp)
 2a0:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 2a4:	02002025 	move	a0,s0
 2a8:	10000004 	b	2bc <EnDog_PlayAnimAndSFX+0x184>
 2ac:	8fbf001c 	lw	ra,28(sp)
 2b0:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 2b4:	02002025 	move	a0,s0
 2b8:	8fbf001c 	lw	ra,28(sp)
 2bc:	8fb00018 	lw	s0,24(sp)
 2c0:	27bd0028 	addiu	sp,sp,40
 2c4:	03e00008 	jr	ra
 2c8:	00001025 	move	v0,zero

000002cc <EnDog_CanFollow>:
 2cc:	908301a5 	lbu	v1,421(a0)
 2d0:	24020002 	li	v0,2
 2d4:	306e0002 	andi	t6,v1,0x2
 2d8:	11c00003 	beqz	t6,2e8 <EnDog_CanFollow+0x1c>
 2dc:	306ffffd 	andi	t7,v1,0xfffd
 2e0:	03e00008 	jr	ra
 2e4:	a08f01a5 	sb	t7,421(a0)
 2e8:	84b800a4 	lh	t8,164(a1)
 2ec:	24010020 	li	at,32
 2f0:	57010004 	bnel	t8,at,304 <EnDog_CanFollow+0x38>
 2f4:	908201a7 	lbu	v0,423(a0)
 2f8:	03e00008 	jr	ra
 2fc:	00001025 	move	v0,zero
 300:	908201a7 	lbu	v0,423(a0)
 304:	3c030000 	lui	v1,0x0
 308:	24630000 	addiu	v1,v1,0
 30c:	30590001 	andi	t9,v0,0x1
 310:	1320000c 	beqz	t9,344 <EnDog_CanFollow+0x78>
 314:	3048fffe 	andi	t0,v0,0xfffe
 318:	a08801a7 	sb	t0,423(a0)
 31c:	846913c4 	lh	t1,5060(v1)
 320:	51200004 	beqzl	t1,334 <EnDog_CanFollow+0x68>
 324:	848a001c 	lh	t2,28(a0)
 328:	03e00008 	jr	ra
 32c:	00001025 	move	v0,zero
 330:	848a001c 	lh	t2,28(a0)
 334:	24020001 	li	v0,1
 338:	314b7fff 	andi	t3,t2,0x7fff
 33c:	03e00008 	jr	ra
 340:	a46b13c4 	sh	t3,5060(v1)
 344:	00001025 	move	v0,zero
 348:	03e00008 	jr	ra
 34c:	00000000 	nop

00000350 <EnDog_UpdateWaypoint>:
 350:	afa50004 	sw	a1,4(sp)
 354:	8c8e01e0 	lw	t6,480(a0)
 358:	55c00004 	bnezl	t6,36c <EnDog_UpdateWaypoint+0x1c>
 35c:	908201e4 	lbu	v0,484(a0)
 360:	03e00008 	jr	ra
 364:	00001025 	move	v0,zero
 368:	908201e4 	lbu	v0,484(a0)
 36c:	24030001 	li	v1,1
 370:	10400003 	beqz	v0,380 <EnDog_UpdateWaypoint+0x30>
 374:	00000000 	nop
 378:	10000001 	b	380 <EnDog_UpdateWaypoint+0x30>
 37c:	2403ffff 	li	v1,-1
 380:	848f01e6 	lh	t7,486(a0)
 384:	01e3c021 	addu	t8,t7,v1
 388:	10400009 	beqz	v0,3b0 <EnDog_UpdateWaypoint+0x60>
 38c:	a49801e6 	sh	t8,486(a0)
 390:	849901e6 	lh	t9,486(a0)
 394:	0723000f 	bgezl	t9,3d4 <EnDog_UpdateWaypoint+0x84>
 398:	24020001 	li	v0,1
 39c:	8c8801e0 	lw	t0,480(a0)
 3a0:	91090000 	lbu	t1,0(t0)
 3a4:	252affff 	addiu	t2,t1,-1
 3a8:	10000009 	b	3d0 <EnDog_UpdateWaypoint+0x80>
 3ac:	a48a01e6 	sh	t2,486(a0)
 3b0:	8c8c01e0 	lw	t4,480(a0)
 3b4:	848b01e6 	lh	t3,486(a0)
 3b8:	918d0000 	lbu	t5,0(t4)
 3bc:	25aeffff 	addiu	t6,t5,-1
 3c0:	01cb082a 	slt	at,t6,t3
 3c4:	50200003 	beqzl	at,3d4 <EnDog_UpdateWaypoint+0x84>
 3c8:	24020001 	li	v0,1
 3cc:	a48001e6 	sh	zero,486(a0)
 3d0:	24020001 	li	v0,1
 3d4:	03e00008 	jr	ra
 3d8:	00000000 	nop

000003dc <EnDog_Orient>:
 3dc:	27bdffd0 	addiu	sp,sp,-48
 3e0:	afbf0024 	sw	ra,36(sp)
 3e4:	afb00020 	sw	s0,32(sp)
 3e8:	00808025 	move	s0,a0
 3ec:	afa50034 	sw	a1,52(sp)
 3f0:	860601e6 	lh	a2,486(s0)
 3f4:	8e0501e0 	lw	a1,480(s0)
 3f8:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 3fc:	27a7002e 	addiu	a3,sp,46
 400:	240e0001 	li	t6,1
 404:	afae0010 	sw	t6,16(sp)
 408:	26040032 	addiu	a0,s0,50
 40c:	87a5002e 	lh	a1,46(sp)
 410:	2406000a 	li	a2,10
 414:	240703e8 	li	a3,1000
 418:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 41c:	e7a00028 	swc1	$f0,40(sp)
 420:	c7a20028 	lwc1	$f2,40(sp)
 424:	44802000 	mtc1	zero,$f4
 428:	3c01447a 	lui	at,0x447a
 42c:	00001025 	move	v0,zero
 430:	4602203c 	c.lt.s	$f4,$f2
 434:	00000000 	nop
 438:	4500000b 	bc1f	468 <EnDog_Orient+0x8c>
 43c:	00000000 	nop
 440:	44813000 	mtc1	at,$f6
 444:	02002025 	move	a0,s0
 448:	4606103c 	c.lt.s	$f2,$f6
 44c:	00000000 	nop
 450:	45000005 	bc1f	468 <EnDog_Orient+0x8c>
 454:	00000000 	nop
 458:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 45c:	8fa50034 	lw	a1,52(sp)
 460:	10000002 	b	46c <EnDog_Orient+0x90>
 464:	8fbf0024 	lw	ra,36(sp)
 468:	8fbf0024 	lw	ra,36(sp)
 46c:	8fb00020 	lw	s0,32(sp)
 470:	27bd0030 	addiu	sp,sp,48
 474:	03e00008 	jr	ra
 478:	00000000 	nop

0000047c <EnDog_Init>:
 47c:	27bdffb8 	addiu	sp,sp,-72
 480:	afb00028 	sw	s0,40(sp)
 484:	00808025 	move	s0,a0
 488:	afbf002c 	sw	ra,44(sp)
 48c:	afa5004c 	sw	a1,76(sp)
 490:	3c060000 	lui	a2,0x0
 494:	24c60000 	addiu	a2,a2,0
 498:	24050000 	li	a1,0
 49c:	248400b4 	addiu	a0,a0,180
 4a0:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 4a4:	3c0741c0 	lui	a3,0x41c0
 4a8:	2605014c 	addiu	a1,s0,332
 4ac:	3c060000 	lui	a2,0x0
 4b0:	260e01f4 	addiu	t6,s0,500
 4b4:	260f0242 	addiu	t7,s0,578
 4b8:	2418000d 	li	t8,13
 4bc:	afb80018 	sw	t8,24(sp)
 4c0:	afaf0014 	sw	t7,20(sp)
 4c4:	afae0010 	sw	t6,16(sp)
 4c8:	24c60000 	addiu	a2,a2,0
 4cc:	afa50034 	sw	a1,52(sp)
 4d0:	8fa4004c 	lw	a0,76(sp)
 4d4:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 4d8:	00003825 	move	a3,zero
 4dc:	3c050000 	lui	a1,0x0
 4e0:	24a50058 	addiu	a1,a1,88
 4e4:	8fa40034 	lw	a0,52(sp)
 4e8:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 4ec:	00003025 	move	a2,zero
 4f0:	8602001c 	lh	v0,28(s0)
 4f4:	3c030000 	lui	v1,0x0
 4f8:	26050194 	addiu	a1,s0,404
 4fc:	30598000 	andi	t9,v0,0x8000
 500:	17200008 	bnez	t9,524 <EnDog_Init+0xa8>
 504:	3048f0ff 	andi	t0,v0,0xf0ff
 508:	30490f00 	andi	t1,v0,0xf00
 50c:	00095203 	sra	t2,t1,0x8
 510:	254b0001 	addiu	t3,t2,1
 514:	000b6200 	sll	t4,t3,0x8
 518:	010c6825 	or	t5,t0,t4
 51c:	a60d001c 	sh	t5,28(s0)
 520:	8602001c 	lh	v0,28(s0)
 524:	846313c4 	lh	v1,5060(v1)
 528:	304e0f00 	andi	t6,v0,0xf00
 52c:	000e7a03 	sra	t7,t6,0x8
 530:	30630f00 	andi	v1,v1,0xf00
 534:	00031a03 	sra	v1,v1,0x8
 538:	00031c00 	sll	v1,v1,0x10
 53c:	00031c03 	sra	v1,v1,0x10
 540:	146f0007 	bne	v1,t7,560 <EnDog_Init+0xe4>
 544:	30588000 	andi	t8,v0,0x8000
 548:	57000006 	bnezl	t8,564 <EnDog_Init+0xe8>
 54c:	8fa4004c 	lw	a0,76(sp)
 550:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 554:	02002025 	move	a0,s0
 558:	10000058 	b	6bc <EnDog_Init+0x240>
 55c:	8fbf002c 	lw	ra,44(sp)
 560:	8fa4004c 	lw	a0,76(sp)
 564:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 568:	afa50034 	sw	a1,52(sp)
 56c:	3c070000 	lui	a3,0x0
 570:	8fa50034 	lw	a1,52(sp)
 574:	24e70020 	addiu	a3,a3,32
 578:	8fa4004c 	lw	a0,76(sp)
 57c:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 580:	02003025 	move	a2,s0
 584:	3c060000 	lui	a2,0x0
 588:	24c6004c 	addiu	a2,a2,76
 58c:	26040098 	addiu	a0,s0,152
 590:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 594:	00002825 	move	a1,zero
 598:	3c053bf5 	lui	a1,0x3bf5
 59c:	34a5c28f 	ori	a1,a1,0xc28f
 5a0:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 5a4:	02002025 	move	a0,s0
 5a8:	8605001c 	lh	a1,28(s0)
 5ac:	3c01bf80 	lui	at,0xbf80
 5b0:	44812000 	mtc1	at,$f4
 5b4:	30a500f0 	andi	a1,a1,0xf0
 5b8:	00052903 	sra	a1,a1,0x4
 5bc:	a60001e6 	sh	zero,486(s0)
 5c0:	00052c00 	sll	a1,a1,0x10
 5c4:	e604006c 	swc1	$f4,108(s0)
 5c8:	8fa4004c 	lw	a0,76(sp)
 5cc:	00052c03 	sra	a1,a1,0x10
 5d0:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 5d4:	2406000f 	li	a2,15
 5d8:	ae0201e0 	sw	v0,480(s0)
 5dc:	8fb9004c 	lw	t9,76(sp)
 5e0:	24010021 	li	at,33
 5e4:	3c090000 	lui	t1,0x0
 5e8:	872300a4 	lh	v1,164(t9)
 5ec:	10610006 	beq	v1,at,608 <EnDog_Init+0x18c>
 5f0:	24010035 	li	at,53
 5f4:	50610013 	beql	v1,at,644 <EnDog_Init+0x1c8>
 5f8:	8602001c 	lh	v0,28(s0)
 5fc:	8602001c 	lh	v0,28(s0)
 600:	10000022 	b	68c <EnDog_Init+0x210>
 604:	30428000 	andi	v0,v0,0x8000
 608:	9129141c 	lbu	t1,5148(t1)
 60c:	5520000a 	bnezl	t1,638 <EnDog_Init+0x1bc>
 610:	8602001c 	lh	v0,28(s0)
 614:	860a001c 	lh	t2,28(s0)
 618:	24010001 	li	at,1
 61c:	314b0f00 	andi	t3,t2,0xf00
 620:	000b4203 	sra	t0,t3,0x8
 624:	55010004 	bnel	t0,at,638 <EnDog_Init+0x1bc>
 628:	8602001c 	lh	v0,28(s0)
 62c:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 630:	02002025 	move	a0,s0
 634:	8602001c 	lh	v0,28(s0)
 638:	10000014 	b	68c <EnDog_Init+0x210>
 63c:	30428000 	andi	v0,v0,0x8000
 640:	8602001c 	lh	v0,28(s0)
 644:	3c0c0000 	lui	t4,0x0
 648:	30428000 	andi	v0,v0,0x8000
 64c:	1440000f 	bnez	v0,68c <EnDog_Init+0x210>
 650:	00000000 	nop
 654:	918c141c 	lbu	t4,5148(t4)
 658:	3c0e0000 	lui	t6,0x0
 65c:	240d0003 	li	t5,3
 660:	15800006 	bnez	t4,67c <EnDog_Init+0x200>
 664:	25ce0000 	addiu	t6,t6,0
 668:	44803000 	mtc1	zero,$f6
 66c:	a60d01f0 	sh	t5,496(s0)
 670:	ae0e0190 	sw	t6,400(s0)
 674:	10000010 	b	6b8 <EnDog_Init+0x23c>
 678:	e6060068 	swc1	$f6,104(s0)
 67c:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 680:	02002025 	move	a0,s0
 684:	1000000d 	b	6bc <EnDog_Init+0x240>
 688:	8fbf002c 	lw	ra,44(sp)
 68c:	10400006 	beqz	v0,6a8 <EnDog_Init+0x22c>
 690:	24180003 	li	t8,3
 694:	3c0f0000 	lui	t7,0x0
 698:	25ef0000 	addiu	t7,t7,0
 69c:	a60001f0 	sh	zero,496(s0)
 6a0:	10000005 	b	6b8 <EnDog_Init+0x23c>
 6a4:	ae0f0190 	sw	t7,400(s0)
 6a8:	3c190000 	lui	t9,0x0
 6ac:	27390000 	addiu	t9,t9,0
 6b0:	a61801f0 	sh	t8,496(s0)
 6b4:	ae190190 	sw	t9,400(s0)
 6b8:	8fbf002c 	lw	ra,44(sp)
 6bc:	8fb00028 	lw	s0,40(sp)
 6c0:	27bd0048 	addiu	sp,sp,72
 6c4:	03e00008 	jr	ra
 6c8:	00000000 	nop

000006cc <EnDog_Destroy>:
 6cc:	27bdffe8 	addiu	sp,sp,-24
 6d0:	00803025 	move	a2,a0
 6d4:	afbf0014 	sw	ra,20(sp)
 6d8:	00a02025 	move	a0,a1
 6dc:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 6e0:	24c50194 	addiu	a1,a2,404
 6e4:	8fbf0014 	lw	ra,20(sp)
 6e8:	27bd0018 	addiu	sp,sp,24
 6ec:	03e00008 	jr	ra
 6f0:	00000000 	nop

000006f4 <EnDog_FollowPath>:
 6f4:	27bdffb0 	addiu	sp,sp,-80
 6f8:	3c0f0000 	lui	t7,0x0
 6fc:	afbf0024 	sw	ra,36(sp)
 700:	afb00020 	sw	s0,32(sp)
 704:	afa50054 	sw	a1,84(sp)
 708:	25ef0118 	addiu	t7,t7,280
 70c:	8df90000 	lw	t9,0(t7)
 710:	27ae0044 	addiu	t6,sp,68
 714:	8df80004 	lw	t8,4(t7)
 718:	add90000 	sw	t9,0(t6)
 71c:	8df90008 	lw	t9,8(t7)
 720:	3c090000 	lui	t1,0x0
 724:	25290124 	addiu	t1,t1,292
 728:	add80004 	sw	t8,4(t6)
 72c:	add90008 	sw	t9,8(t6)
 730:	8d2b0000 	lw	t3,0(t1)
 734:	27a80038 	addiu	t0,sp,56
 738:	8d2a0004 	lw	t2,4(t1)
 73c:	ad0b0000 	sw	t3,0(t0)
 740:	8d2b0008 	lw	t3,8(t1)
 744:	ad0a0004 	sw	t2,4(t0)
 748:	00808025 	move	s0,a0
 74c:	ad0b0008 	sw	t3,8(t0)
 750:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 754:	8fa50054 	lw	a1,84(sp)
 758:	24010001 	li	at,1
 75c:	14410003 	bne	v0,at,76c <EnDog_FollowPath+0x78>
 760:	3c0c0000 	lui	t4,0x0
 764:	258c0000 	addiu	t4,t4,0
 768:	ae0c0190 	sw	t4,400(s0)
 76c:	860201ec 	lh	v0,492(s0)
 770:	26040068 	addiu	a0,s0,104
 774:	3c063ecc 	lui	a2,0x3ecc
 778:	14400003 	bnez	v0,788 <EnDog_FollowPath+0x94>
 77c:	244dffff 	addiu	t5,v0,-1
 780:	10000003 	b	790 <EnDog_FollowPath+0x9c>
 784:	00001825 	move	v1,zero
 788:	a60d01ec 	sh	t5,492(s0)
 78c:	860301ec 	lh	v1,492(s0)
 790:	10600028 	beqz	v1,834 <EnDog_FollowPath+0x140>
 794:	8fac0054 	lw	t4,84(sp)
 798:	860e01f0 	lh	t6,496(s0)
 79c:	44802000 	mtc1	zero,$f4
 7a0:	34c6cccd 	ori	a2,a2,0xcccd
 7a4:	15c00005 	bnez	t6,7bc <EnDog_FollowPath+0xc8>
 7a8:	3c073f80 	lui	a3,0x3f80
 7ac:	3c013f80 	lui	at,0x3f80
 7b0:	44810000 	mtc1	at,$f0
 7b4:	10000005 	b	7cc <EnDog_FollowPath+0xd8>
 7b8:	44050000 	mfc1	a1,$f0
 7bc:	3c014080 	lui	at,0x4080
 7c0:	44810000 	mtc1	at,$f0
 7c4:	00000000 	nop
 7c8:	44050000 	mfc1	a1,$f0
 7cc:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 7d0:	e7a40010 	swc1	$f4,16(sp)
 7d4:	02002025 	move	a0,s0
 7d8:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 7dc:	8fa50054 	lw	a1,84(sp)
 7e0:	8a180030 	lwl	t8,48(s0)
 7e4:	9a180033 	lwr	t8,51(s0)
 7e8:	861901e6 	lh	t9,486(s0)
 7ec:	3c020000 	lui	v0,0x0
 7f0:	aa1800b4 	swl	t8,180(s0)
 7f4:	ba1800b7 	swr	t8,183(s0)
 7f8:	96180034 	lhu	t8,52(s0)
 7fc:	2b210009 	slti	at,t9,9
 800:	10200007 	beqz	at,820 <EnDog_FollowPath+0x12c>
 804:	a61800b8 	sh	t8,184(s0)
 808:	3c020000 	lui	v0,0x0
 80c:	24420000 	addiu	v0,v0,0
 810:	94481400 	lhu	t0,5120(v0)
 814:	35090001 	ori	t1,t0,0x1
 818:	10000016 	b	874 <EnDog_FollowPath+0x180>
 81c:	a4491400 	sh	t1,5120(v0)
 820:	24420000 	addiu	v0,v0,0
 824:	944a1400 	lhu	t2,5120(v0)
 828:	314bfffe 	andi	t3,t2,0xfffe
 82c:	10000011 	b	874 <EnDog_FollowPath+0x180>
 830:	a44b1400 	sh	t3,5120(v0)
 834:	8d83009c 	lw	v1,156(t4)
 838:	24010003 	li	at,3
 83c:	27ae0044 	addiu	t6,sp,68
 840:	0061001b 	divu	zero,v1,at
 844:	00001810 	mfhi	v1
 848:	00036880 	sll	t5,v1,0x2
 84c:	01ae1021 	addu	v0,t5,t6
 850:	8c4f0000 	lw	t7,0(v0)
 854:	2404003c 	li	a0,60
 858:	a60f01f0 	sh	t7,496(s0)
 85c:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 860:	84450002 	lh	a1,2(v0)
 864:	3c180000 	lui	t8,0x0
 868:	27180000 	addiu	t8,t8,0
 86c:	a60201ec 	sh	v0,492(s0)
 870:	ae180190 	sw	t8,400(s0)
 874:	8fbf0024 	lw	ra,36(sp)
 878:	8fb00020 	lw	s0,32(sp)
 87c:	27bd0050 	addiu	sp,sp,80
 880:	03e00008 	jr	ra
 884:	00000000 	nop

00000888 <EnDog_ChooseMovement>:
 888:	27bdffd8 	addiu	sp,sp,-40
 88c:	afbf0024 	sw	ra,36(sp)
 890:	afb00020 	sw	s0,32(sp)
 894:	00808025 	move	s0,a0
 898:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 89c:	afa5002c 	sw	a1,44(sp)
 8a0:	24060001 	li	a2,1
 8a4:	14460003 	bne	v0,a2,8b4 <EnDog_ChooseMovement+0x2c>
 8a8:	3c0e0000 	lui	t6,0x0
 8ac:	25ce0000 	addiu	t6,t6,0
 8b0:	ae0e0190 	sw	t6,400(s0)
 8b4:	860201ec 	lh	v0,492(s0)
 8b8:	240400c8 	li	a0,200
 8bc:	14400003 	bnez	v0,8cc <EnDog_ChooseMovement+0x44>
 8c0:	244fffff 	addiu	t7,v0,-1
 8c4:	10000003 	b	8d4 <EnDog_ChooseMovement+0x4c>
 8c8:	00001825 	move	v1,zero
 8cc:	a60f01ec 	sh	t7,492(s0)
 8d0:	860301ec 	lh	v1,492(s0)
 8d4:	5460001a 	bnezl	v1,940 <EnDog_ChooseMovement+0xb8>
 8d8:	44800000 	mtc1	zero,$f0
 8dc:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 8e0:	24050064 	li	a1,100
 8e4:	a60201ec 	sh	v0,492(s0)
 8e8:	8fb8002c 	lw	t8,44(sp)
 8ec:	3c0c0000 	lui	t4,0x0
 8f0:	24060001 	li	a2,1
 8f4:	8f19009c 	lw	t9,156(t8)
 8f8:	258c0000 	addiu	t4,t4,0
 8fc:	33280001 	andi	t0,t9,0x1
 900:	51000004 	beqzl	t0,914 <EnDog_ChooseMovement+0x8c>
 904:	a60601f0 	sh	a2,496(s0)
 908:	10000002 	b	914 <EnDog_ChooseMovement+0x8c>
 90c:	a60001f0 	sh	zero,496(s0)
 910:	a60601f0 	sh	a2,496(s0)
 914:	860901f0 	lh	t1,496(s0)
 918:	54c90008 	bnel	a2,t1,93c <EnDog_ChooseMovement+0xb4>
 91c:	ae0c0190 	sw	t4,400(s0)
 920:	860a01ec 	lh	t2,492(s0)
 924:	05410003 	bgez	t2,934 <EnDog_ChooseMovement+0xac>
 928:	000a5843 	sra	t3,t2,0x1
 92c:	25410001 	addiu	at,t2,1
 930:	00015843 	sra	t3,at,0x1
 934:	a60b01ec 	sh	t3,492(s0)
 938:	ae0c0190 	sw	t4,400(s0)
 93c:	44800000 	mtc1	zero,$f0
 940:	3c063ecc 	lui	a2,0x3ecc
 944:	34c6cccd 	ori	a2,a2,0xcccd
 948:	44050000 	mfc1	a1,$f0
 94c:	26040068 	addiu	a0,s0,104
 950:	3c073f80 	lui	a3,0x3f80
 954:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 958:	e7a00010 	swc1	$f0,16(sp)
 95c:	8fbf0024 	lw	ra,36(sp)
 960:	8fb00020 	lw	s0,32(sp)
 964:	27bd0028 	addiu	sp,sp,40
 968:	03e00008 	jr	ra
 96c:	00000000 	nop

00000970 <EnDog_FollowLink>:
 970:	27bdffd8 	addiu	sp,sp,-40
 974:	afa5002c 	sw	a1,44(sp)
 978:	3c050000 	lui	a1,0x0
 97c:	24a50000 	addiu	a1,a1,0
 980:	84ae13c4 	lh	t6,5060(a1)
 984:	afb00020 	sw	s0,32(sp)
 988:	00808025 	move	s0,a0
 98c:	15c00009 	bnez	t6,9b4 <EnDog_FollowLink+0x44>
 990:	afbf0024 	sw	ra,36(sp)
 994:	44802000 	mtc1	zero,$f4
 998:	3c180000 	lui	t8,0x0
 99c:	240f0003 	li	t7,3
 9a0:	27180000 	addiu	t8,t8,0
 9a4:	a48f01f0 	sh	t7,496(a0)
 9a8:	ac980190 	sw	t8,400(a0)
 9ac:	1000004a 	b	ad8 <EnDog_FollowLink+0x168>
 9b0:	e4840068 	swc1	$f4,104(a0)
 9b4:	3c0143c8 	lui	at,0x43c8
 9b8:	44813000 	mtc1	at,$f6
 9bc:	c6000090 	lwc1	$f0,144(s0)
 9c0:	4600303c 	c.lt.s	$f6,$f0
 9c4:	00000000 	nop
 9c8:	4502000c 	bc1fl	9fc <EnDog_FollowLink+0x8c>
 9cc:	3c0142c8 	lui	at,0x42c8
 9d0:	860201f0 	lh	v0,496(s0)
 9d4:	24010003 	li	at,3
 9d8:	44800000 	mtc1	zero,$f0
 9dc:	10410004 	beq	v0,at,9f0 <EnDog_FollowLink+0x80>
 9e0:	24010004 	li	at,4
 9e4:	10410002 	beq	v0,at,9f0 <EnDog_FollowLink+0x80>
 9e8:	24030005 	li	v1,5
 9ec:	a60301f0 	sh	v1,496(s0)
 9f0:	1000001f 	b	a70 <EnDog_FollowLink+0x100>
 9f4:	a4a013c4 	sh	zero,5060(a1)
 9f8:	3c0142c8 	lui	at,0x42c8
 9fc:	44814000 	mtc1	at,$f8
 a00:	00000000 	nop
 a04:	4600403c 	c.lt.s	$f8,$f0
 a08:	00000000 	nop
 a0c:	45000005 	bc1f	a24 <EnDog_FollowLink+0xb4>
 a10:	3c014080 	lui	at,0x4080
 a14:	24190001 	li	t9,1
 a18:	44810000 	mtc1	at,$f0
 a1c:	10000014 	b	a70 <EnDog_FollowLink+0x100>
 a20:	a61901f0 	sh	t9,496(s0)
 a24:	3c014220 	lui	at,0x4220
 a28:	44815000 	mtc1	at,$f10
 a2c:	3c013f80 	lui	at,0x3f80
 a30:	460a003c 	c.lt.s	$f0,$f10
 a34:	00000000 	nop
 a38:	4502000c 	bc1fl	a6c <EnDog_FollowLink+0xfc>
 a3c:	44810000 	mtc1	at,$f0
 a40:	860201f0 	lh	v0,496(s0)
 a44:	24030005 	li	v1,5
 a48:	44800000 	mtc1	zero,$f0
 a4c:	10620004 	beq	v1,v0,a60 <EnDog_FollowLink+0xf0>
 a50:	24010006 	li	at,6
 a54:	10410002 	beq	v0,at,a60 <EnDog_FollowLink+0xf0>
 a58:	00000000 	nop
 a5c:	a60301f0 	sh	v1,496(s0)
 a60:	10000004 	b	a74 <EnDog_FollowLink+0x104>
 a64:	44050000 	mfc1	a1,$f0
 a68:	44810000 	mtc1	at,$f0
 a6c:	a60001f0 	sh	zero,496(s0)
 a70:	44050000 	mfc1	a1,$f0
 a74:	3c063f19 	lui	a2,0x3f19
 a78:	34c6999a 	ori	a2,a2,0x999a
 a7c:	26040068 	addiu	a0,s0,104
 a80:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 a84:	3c073f80 	lui	a3,0x3f80
 a88:	3c0143c8 	lui	at,0x43c8
 a8c:	44818000 	mtc1	at,$f16
 a90:	c6120090 	lwc1	$f18,144(s0)
 a94:	4612803c 	c.lt.s	$f16,$f18
 a98:	00000000 	nop
 a9c:	4503000f 	bc1tl	adc <EnDog_FollowLink+0x16c>
 aa0:	8fbf0024 	lw	ra,36(sp)
 aa4:	8605008a 	lh	a1,138(s0)
 aa8:	24080001 	li	t0,1
 aac:	afa80010 	sw	t0,16(sp)
 ab0:	26040032 	addiu	a0,s0,50
 ab4:	2406000a 	li	a2,10
 ab8:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 abc:	240703e8 	li	a3,1000
 ac0:	8a0a0030 	lwl	t2,48(s0)
 ac4:	9a0a0033 	lwr	t2,51(s0)
 ac8:	aa0a00b4 	swl	t2,180(s0)
 acc:	ba0a00b7 	swr	t2,183(s0)
 ad0:	960a0034 	lhu	t2,52(s0)
 ad4:	a60a00b8 	sh	t2,184(s0)
 ad8:	8fbf0024 	lw	ra,36(sp)
 adc:	8fb00020 	lw	s0,32(sp)
 ae0:	27bd0028 	addiu	sp,sp,40
 ae4:	03e00008 	jr	ra
 ae8:	00000000 	nop

00000aec <EnDog_RunAway>:
 aec:	27bdffd8 	addiu	sp,sp,-40
 af0:	afbf0024 	sw	ra,36(sp)
 af4:	afb00020 	sw	s0,32(sp)
 af8:	afa5002c 	sw	a1,44(sp)
 afc:	3c014348 	lui	at,0x4348
 b00:	44813000 	mtc1	at,$f6
 b04:	c4840090 	lwc1	$f4,144(a0)
 b08:	00808025 	move	s0,a0
 b0c:	3c0f0000 	lui	t7,0x0
 b10:	4606203c 	c.lt.s	$f4,$f6
 b14:	24840068 	addiu	a0,a0,104
 b18:	3c054080 	lui	a1,0x4080
 b1c:	3c063f19 	lui	a2,0x3f19
 b20:	45000010 	bc1f	b64 <EnDog_RunAway+0x78>
 b24:	25ef0000 	addiu	t7,t7,0
 b28:	34c6999a 	ori	a2,a2,0x999a
 b2c:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 b30:	3c073f80 	lui	a3,0x3f80
 b34:	8605008a 	lh	a1,138(s0)
 b38:	240e0001 	li	t6,1
 b3c:	afae0010 	sw	t6,16(sp)
 b40:	38a58000 	xori	a1,a1,0x8000
 b44:	00052c00 	sll	a1,a1,0x10
 b48:	00052c03 	sra	a1,a1,0x10
 b4c:	26040032 	addiu	a0,s0,50
 b50:	2406000a 	li	a2,10
 b54:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 b58:	240703e8 	li	a3,1000
 b5c:	10000003 	b	b6c <EnDog_RunAway+0x80>
 b60:	8a190030 	lwl	t9,48(s0)
 b64:	ae0f0190 	sw	t7,400(s0)
 b68:	8a190030 	lwl	t9,48(s0)
 b6c:	9a190033 	lwr	t9,51(s0)
 b70:	aa1900b4 	swl	t9,180(s0)
 b74:	ba1900b7 	swr	t9,183(s0)
 b78:	96190034 	lhu	t9,52(s0)
 b7c:	a61900b8 	sh	t9,184(s0)
 b80:	8fbf0024 	lw	ra,36(sp)
 b84:	8fb00020 	lw	s0,32(sp)
 b88:	27bd0028 	addiu	sp,sp,40
 b8c:	03e00008 	jr	ra
 b90:	00000000 	nop

00000b94 <EnDog_FaceLink>:
 b94:	27bdffd0 	addiu	sp,sp,-48
 b98:	afbf0024 	sw	ra,36(sp)
 b9c:	afb00020 	sw	s0,32(sp)
 ba0:	afa50034 	sw	a1,52(sp)
 ba4:	3c014348 	lui	at,0x4348
 ba8:	44813000 	mtc1	at,$f6
 bac:	c4840090 	lwc1	$f4,144(a0)
 bb0:	3c0b0000 	lui	t3,0x0
 bb4:	00808025 	move	s0,a0
 bb8:	4604303e 	c.le.s	$f6,$f4
 bbc:	3c013f80 	lui	at,0x3f80
 bc0:	3c063f19 	lui	a2,0x3f19
 bc4:	240a0001 	li	t2,1
 bc8:	45000027 	bc1f	c68 <EnDog_FaceLink+0xd4>
 bcc:	256b0000 	addiu	t3,t3,0
 bd0:	44810000 	mtc1	at,$f0
 bd4:	a48001f0 	sh	zero,496(a0)
 bd8:	24840068 	addiu	a0,a0,104
 bdc:	44050000 	mfc1	a1,$f0
 be0:	44070000 	mfc1	a3,$f0
 be4:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 be8:	34c6999a 	ori	a2,a2,0x999a
 bec:	860e0032 	lh	t6,50(s0)
 bf0:	8605008a 	lh	a1,138(s0)
 bf4:	240f0001 	li	t7,1
 bf8:	afaf0010 	sw	t7,16(sp)
 bfc:	26040032 	addiu	a0,s0,50
 c00:	2406000a 	li	a2,10
 c04:	240703e8 	li	a3,1000
 c08:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 c0c:	a7ae002c 	sh	t6,44(sp)
 c10:	86180032 	lh	t8,50(s0)
 c14:	87b9002c 	lh	t9,44(sp)
 c18:	3c014348 	lui	at,0x4348
 c1c:	44984000 	mtc1	t8,$f8
 c20:	44995000 	mtc1	t9,$f10
 c24:	44819000 	mtc1	at,$f18
 c28:	468040a0 	cvt.s.w	$f2,$f8
 c2c:	3c090000 	lui	t1,0x0
 c30:	24080003 	li	t0,3
 c34:	25290000 	addiu	t1,t1,0
 c38:	46805420 	cvt.s.w	$f16,$f10
 c3c:	46101081 	sub.s	$f2,$f2,$f16
 c40:	46001005 	abs.s	$f0,$f2
 c44:	4612003c 	c.lt.s	$f0,$f18
 c48:	00000000 	nop
 c4c:	45020009 	bc1fl	c74 <EnDog_FaceLink+0xe0>
 c50:	8a0d0030 	lwl	t5,48(s0)
 c54:	44802000 	mtc1	zero,$f4
 c58:	a60801f0 	sh	t0,496(s0)
 c5c:	ae090190 	sw	t1,400(s0)
 c60:	10000003 	b	c70 <EnDog_FaceLink+0xdc>
 c64:	e6040068 	swc1	$f4,104(s0)
 c68:	a60a01f0 	sh	t2,496(s0)
 c6c:	ae0b0190 	sw	t3,400(s0)
 c70:	8a0d0030 	lwl	t5,48(s0)
 c74:	9a0d0033 	lwr	t5,51(s0)
 c78:	aa0d00b4 	swl	t5,180(s0)
 c7c:	ba0d00b7 	swr	t5,183(s0)
 c80:	960d0034 	lhu	t5,52(s0)
 c84:	a60d00b8 	sh	t5,184(s0)
 c88:	8fbf0024 	lw	ra,36(sp)
 c8c:	8fb00020 	lw	s0,32(sp)
 c90:	27bd0030 	addiu	sp,sp,48
 c94:	03e00008 	jr	ra
 c98:	00000000 	nop

00000c9c <EnDog_Wait>:
 c9c:	afa50004 	sw	a1,4(sp)
 ca0:	848f00b6 	lh	t7,182(a0)
 ca4:	848e008a 	lh	t6,138(a0)
 ca8:	3c190000 	lui	t9,0x0
 cac:	3c014348 	lui	at,0x4348
 cb0:	01cfc023 	subu	t8,t6,t7
 cb4:	a49801e8 	sh	t8,488(a0)
 cb8:	873913c4 	lh	t9,5060(t9)
 cbc:	1320000b 	beqz	t9,cec <EnDog_Wait+0x50>
 cc0:	00000000 	nop
 cc4:	c4840090 	lwc1	$f4,144(a0)
 cc8:	44813000 	mtc1	at,$f6
 ccc:	3c090000 	lui	t1,0x0
 cd0:	24080001 	li	t0,1
 cd4:	4606203c 	c.lt.s	$f4,$f6
 cd8:	25290000 	addiu	t1,t1,0
 cdc:	45000003 	bc1f	cec <EnDog_Wait+0x50>
 ce0:	00000000 	nop
 ce4:	a48801f0 	sh	t0,496(a0)
 ce8:	ac890190 	sw	t1,400(a0)
 cec:	03e00008 	jr	ra
 cf0:	00000000 	nop

00000cf4 <EnDog_Update>:
 cf4:	27bdffc8 	addiu	sp,sp,-56
 cf8:	afbf0024 	sw	ra,36(sp)
 cfc:	afb00020 	sw	s0,32(sp)
 d00:	00808025 	move	s0,a0
 d04:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 d08:	afa5003c 	sw	a1,60(sp)
 d0c:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 d10:	2604014c 	addiu	a0,s0,332
 d14:	860f01d6 	lh	t7,470(s0)
 d18:	860e01d4 	lh	t6,468(s0)
 d1c:	3c013f00 	lui	at,0x3f00
 d20:	448f3000 	mtc1	t7,$f6
 d24:	44815000 	mtc1	at,$f10
 d28:	448e2000 	mtc1	t6,$f4
 d2c:	46803220 	cvt.s.w	$f8,$f6
 d30:	44809000 	mtc1	zero,$f18
 d34:	24180005 	li	t8,5
 d38:	afb80014 	sw	t8,20(sp)
 d3c:	8fa4003c 	lw	a0,60(sp)
 d40:	46802120 	cvt.s.w	$f4,$f4
 d44:	460a4402 	mul.s	$f16,$f8,$f10
 d48:	02002825 	move	a1,s0
 d4c:	e7b20010 	swc1	$f18,16(sp)
 d50:	44062000 	mfc1	a2,$f4
 d54:	44078000 	mfc1	a3,$f16
 d58:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 d5c:	00000000 	nop
 d60:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 d64:	02002025 	move	a0,s0
 d68:	8e190190 	lw	t9,400(s0)
 d6c:	02002025 	move	a0,s0
 d70:	8fa5003c 	lw	a1,60(sp)
 d74:	0320f809 	jalr	t9
 d78:	00000000 	nop
 d7c:	26060194 	addiu	a2,s0,404
 d80:	00c02825 	move	a1,a2
 d84:	afa6002c 	sw	a2,44(sp)
 d88:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 d8c:	02002025 	move	a0,s0
 d90:	8fa4003c 	lw	a0,60(sp)
 d94:	3c010001 	lui	at,0x1
 d98:	34211e60 	ori	at,at,0x1e60
 d9c:	8fa6002c 	lw	a2,44(sp)
 da0:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 da4:	00812821 	addu	a1,a0,at
 da8:	8fbf0024 	lw	ra,36(sp)
 dac:	8fb00020 	lw	s0,32(sp)
 db0:	27bd0038 	addiu	sp,sp,56
 db4:	03e00008 	jr	ra
 db8:	00000000 	nop

00000dbc <EnDog_OverrideLimbDraw>:
 dbc:	afa40000 	sw	a0,0(sp)
 dc0:	afa50004 	sw	a1,4(sp)
 dc4:	afa60008 	sw	a2,8(sp)
 dc8:	afa7000c 	sw	a3,12(sp)
 dcc:	03e00008 	jr	ra
 dd0:	00001025 	move	v0,zero

00000dd4 <EnDog_PostLimbDraw>:
 dd4:	afa40000 	sw	a0,0(sp)
 dd8:	afa50004 	sw	a1,4(sp)
 ddc:	afa60008 	sw	a2,8(sp)
 de0:	03e00008 	jr	ra
 de4:	afa7000c 	sw	a3,12(sp)

00000de8 <EnDog_Draw>:
 de8:	27bdffa0 	addiu	sp,sp,-96
 dec:	3c0f0000 	lui	t7,0x0
 df0:	afbf002c 	sw	ra,44(sp)
 df4:	afb00028 	sw	s0,40(sp)
 df8:	afa50064 	sw	a1,100(sp)
 dfc:	25ef0130 	addiu	t7,t7,304
 e00:	8df90000 	lw	t9,0(t7)
 e04:	8df80004 	lw	t8,4(t7)
 e08:	27ae0054 	addiu	t6,sp,84
 e0c:	add90000 	sw	t9,0(t6)
 e10:	add80004 	sw	t8,4(t6)
 e14:	8fa90064 	lw	t1,100(sp)
 e18:	00808025 	move	s0,a0
 e1c:	3c060000 	lui	a2,0x0
 e20:	8d250000 	lw	a1,0(t1)
 e24:	24c60000 	addiu	a2,a2,0
 e28:	27a40040 	addiu	a0,sp,64
 e2c:	240703cc 	li	a3,972
 e30:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 e34:	afa50050 	sw	a1,80(sp)
 e38:	8faa0064 	lw	t2,100(sp)
 e3c:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 e40:	8d440000 	lw	a0,0(t2)
 e44:	8fa80050 	lw	t0,80(sp)
 e48:	3c0ce700 	lui	t4,0xe700
 e4c:	3c0efb00 	lui	t6,0xfb00
 e50:	8d0302c0 	lw	v1,704(t0)
 e54:	27a90054 	addiu	t1,sp,84
 e58:	246b0008 	addiu	t3,v1,8
 e5c:	ad0b02c0 	sw	t3,704(t0)
 e60:	ac600004 	sw	zero,4(v1)
 e64:	ac6c0000 	sw	t4,0(v1)
 e68:	8d0302c0 	lw	v1,704(t0)
 e6c:	246d0008 	addiu	t5,v1,8
 e70:	ad0d02c0 	sw	t5,704(t0)
 e74:	ac6e0000 	sw	t6,0(v1)
 e78:	860f001c 	lh	t7,28(s0)
 e7c:	31f8000f 	andi	t8,t7,0xf
 e80:	0018c880 	sll	t9,t8,0x2
 e84:	03291021 	addu	v0,t9,t1
 e88:	904d0000 	lbu	t5,0(v0)
 e8c:	904b0003 	lbu	t3,3(v0)
 e90:	90590001 	lbu	t9,1(v0)
 e94:	000d7600 	sll	t6,t5,0x18
 e98:	904d0002 	lbu	t5,2(v0)
 e9c:	016e7825 	or	t7,t3,t6
 ea0:	00194c00 	sll	t1,t9,0x10
 ea4:	01e95025 	or	t2,t7,t1
 ea8:	000d5a00 	sll	t3,t5,0x8
 eac:	014b7025 	or	t6,t2,t3
 eb0:	ac6e0004 	sw	t6,4(v1)
 eb4:	9207014e 	lbu	a3,334(s0)
 eb8:	8e06016c 	lw	a2,364(s0)
 ebc:	8e050150 	lw	a1,336(s0)
 ec0:	3c190000 	lui	t9,0x0
 ec4:	3c180000 	lui	t8,0x0
 ec8:	27180000 	addiu	t8,t8,0
 ecc:	27390000 	addiu	t9,t9,0
 ed0:	afb90014 	sw	t9,20(sp)
 ed4:	afb80010 	sw	t8,16(sp)
 ed8:	afb00018 	sw	s0,24(sp)
 edc:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 ee0:	8fa40064 	lw	a0,100(sp)
 ee4:	8faf0064 	lw	t7,100(sp)
 ee8:	3c060000 	lui	a2,0x0
 eec:	24c60010 	addiu	a2,a2,16
 ef0:	27a40040 	addiu	a0,sp,64
 ef4:	240703e2 	li	a3,994
 ef8:	0c000000 	jal	0 <EnDog_PlayWalkSFX>
 efc:	8de50000 	lw	a1,0(t7)
 f00:	8fbf002c 	lw	ra,44(sp)
 f04:	8fb00028 	lw	s0,40(sp)
 f08:	27bd0060 	addiu	sp,sp,96
 f0c:	03e00008 	jr	ra
 f10:	00000000 	nop
	...
