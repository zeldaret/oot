
build/src/overlays/actors/ovl_En_Takara_Man/z_en_takara_man.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnTakaraMan_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <EnTakaraMan_Init>:
   c:	3c020000 	lui	v0,0x0
  10:	24420020 	addiu	v0,v0,32
  14:	904e0000 	lbu	t6,0(v0)
  18:	27bdffd0 	addiu	sp,sp,-48
  1c:	afb00028 	sw	s0,40(sp)
  20:	00808025 	move	s0,a0
  24:	afbf002c 	sw	ra,44(sp)
  28:	11c00008 	beqz	t6,4c <EnTakaraMan_Init+0x40>
  2c:	afa50034 	sw	a1,52(sp)
  30:	0c000000 	jal	0 <EnTakaraMan_Destroy>
  34:	00000000 	nop
  38:	3c040000 	lui	a0,0x0
  3c:	0c000000 	jal	0 <EnTakaraMan_Destroy>
  40:	24840000 	addiu	a0,a0,0
  44:	1000004a 	b	170 <EnTakaraMan_Init+0x164>
  48:	8fbf002c 	lw	ra,44(sp)
  4c:	240f0001 	li	t7,1
  50:	3c040000 	lui	a0,0x0
  54:	a04f0000 	sb	t7,0(v0)
  58:	0c000000 	jal	0 <EnTakaraMan_Destroy>
  5c:	24840030 	addiu	a0,a0,48
  60:	8fb80034 	lw	t8,52(sp)
  64:	3c040000 	lui	a0,0x0
  68:	24840034 	addiu	a0,a0,52
  6c:	0c000000 	jal	0 <EnTakaraMan_Destroy>
  70:	8f051d38 	lw	a1,7480(t8)
  74:	8fa40034 	lw	a0,52(sp)
  78:	3c020000 	lui	v0,0x0
  7c:	24420000 	addiu	v0,v0,0
  80:	ac801d38 	sw	zero,7480(a0)
  84:	94481402 	lhu	t0,5122(v0)
  88:	2419ffff 	li	t9,-1
  8c:	3c060000 	lui	a2,0x0
  90:	00484821 	addu	t1,v0,t0
  94:	a13900bc 	sb	t9,188(t1)
  98:	3c070000 	lui	a3,0x0
  9c:	260a0194 	addiu	t2,s0,404
  a0:	260b01d0 	addiu	t3,s0,464
  a4:	240c000a 	li	t4,10
  a8:	afac0018 	sw	t4,24(sp)
  ac:	afab0014 	sw	t3,20(sp)
  b0:	afaa0010 	sw	t2,16(sp)
  b4:	24e70000 	addiu	a3,a3,0
  b8:	24c60000 	addiu	a2,a2,0
  bc:	0c000000 	jal	0 <EnTakaraMan_Destroy>
  c0:	26050150 	addiu	a1,s0,336
  c4:	26020024 	addiu	v0,s0,36
  c8:	8c4e0000 	lw	t6,0(v0)
  cc:	3c014305 	lui	at,0x4305
  d0:	44812000 	mtc1	at,$f4
  d4:	ae0e0038 	sw	t6,56(s0)
  d8:	8c4d0004 	lw	t5,4(v0)
  dc:	3c01c140 	lui	at,0xc140
  e0:	44813000 	mtc1	at,$f6
  e4:	ae0d003c 	sw	t5,60(s0)
  e8:	8c4e0008 	lw	t6,8(v0)
  ec:	3c0142cc 	lui	at,0x42cc
  f0:	44814000 	mtc1	at,$f8
  f4:	ae0e0040 	sw	t6,64(s0)
  f8:	8c580000 	lw	t8,0(v0)
  fc:	3c053c54 	lui	a1,0x3c54
 100:	34a5fdf4 	ori	a1,a1,0xfdf4
 104:	ae180220 	sw	t8,544(s0)
 108:	8c4f0004 	lw	t7,4(v0)
 10c:	02002025 	move	a0,s0
 110:	ae0f0224 	sw	t7,548(s0)
 114:	8c580008 	lw	t8,8(v0)
 118:	e6040024 	swc1	$f4,36(s0)
 11c:	e6060028 	swc1	$f6,40(s0)
 120:	e608002c 	swc1	$f8,44(s0)
 124:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 128:	ae180228 	sw	t8,552(s0)
 12c:	2409b1e0 	li	t1,-20000
 130:	3c0142b4 	lui	at,0x42b4
 134:	a60900b6 	sh	t1,182(s0)
 138:	44815000 	mtc1	at,$f10
 13c:	82080003 	lb	t0,3(s0)
 140:	860a00b6 	lh	t2,182(s0)
 144:	3c0c0000 	lui	t4,0x0
 148:	2419ffff 	li	t9,-1
 14c:	240b0001 	li	t3,1
 150:	258c0000 	addiu	t4,t4,0
 154:	a2190003 	sb	t9,3(s0)
 158:	a20b001f 	sb	t3,31(s0)
 15c:	ae0c014c 	sw	t4,332(s0)
 160:	e60a021c 	swc1	$f10,540(s0)
 164:	a6080216 	sh	t0,534(s0)
 168:	a60a0032 	sh	t2,50(s0)
 16c:	8fbf002c 	lw	ra,44(sp)
 170:	8fb00028 	lw	s0,40(sp)
 174:	27bd0030 	addiu	sp,sp,48
 178:	03e00008 	jr	ra
 17c:	00000000 	nop

00000180 <func_80B176E0>:
 180:	27bdffd0 	addiu	sp,sp,-48
 184:	afb00028 	sw	s0,40(sp)
 188:	00808025 	move	s0,a0
 18c:	afbf002c 	sw	ra,44(sp)
 190:	3c040000 	lui	a0,0x0
 194:	afa50034 	sw	a1,52(sp)
 198:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 19c:	24840000 	addiu	a0,a0,0
 1a0:	44822000 	mtc1	v0,$f4
 1a4:	3c01c120 	lui	at,0xc120
 1a8:	44819000 	mtc1	at,$f18
 1ac:	468021a0 	cvt.s.w	$f6,$f4
 1b0:	3c050000 	lui	a1,0x0
 1b4:	24a50000 	addiu	a1,a1,0
 1b8:	26040150 	addiu	a0,s0,336
 1bc:	3c063f80 	lui	a2,0x3f80
 1c0:	24070000 	li	a3,0
 1c4:	4600320d 	trunc.w.s	$f8,$f6
 1c8:	afa00014 	sw	zero,20(sp)
 1cc:	e7b20018 	swc1	$f18,24(sp)
 1d0:	440f4000 	mfc1	t7,$f8
 1d4:	00000000 	nop
 1d8:	000fc400 	sll	t8,t7,0x10
 1dc:	0018cc03 	sra	t9,t8,0x10
 1e0:	44995000 	mtc1	t9,$f10
 1e4:	00000000 	nop
 1e8:	46805420 	cvt.s.w	$f16,$f10
 1ec:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 1f0:	e7b00010 	swc1	$f16,16(sp)
 1f4:	86080214 	lh	t0,532(s0)
 1f8:	3c0b0000 	lui	t3,0x0
 1fc:	2409006d 	li	t1,109
 200:	15000004 	bnez	t0,214 <func_80B176E0+0x94>
 204:	256b0000 	addiu	t3,t3,0
 208:	240a0004 	li	t2,4
 20c:	a609010e 	sh	t1,270(s0)
 210:	a60a020c 	sh	t2,524(s0)
 214:	ae0b014c 	sw	t3,332(s0)
 218:	8fbf002c 	lw	ra,44(sp)
 21c:	8fb00028 	lw	s0,40(sp)
 220:	27bd0030 	addiu	sp,sp,48
 224:	03e00008 	jr	ra
 228:	00000000 	nop

0000022c <func_80B1778C>:
 22c:	27bdffe0 	addiu	sp,sp,-32
 230:	afbf0014 	sw	ra,20(sp)
 234:	00803825 	move	a3,a0
 238:	afa50024 	sw	a1,36(sp)
 23c:	afa70020 	sw	a3,32(sp)
 240:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 244:	24840150 	addiu	a0,a0,336
 248:	8fa40020 	lw	a0,32(sp)
 24c:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 250:	8fa50024 	lw	a1,36(sp)
 254:	1040000f 	beqz	v0,294 <func_80B1778C+0x68>
 258:	8fa70020 	lw	a3,32(sp)
 25c:	84ee020c 	lh	t6,524(a3)
 260:	24060006 	li	a2,6
 264:	50ce000c 	beql	a2,t6,298 <func_80B1778C+0x6c>
 268:	8fa80024 	lw	t0,36(sp)
 26c:	84ef0214 	lh	t7,532(a3)
 270:	3c190000 	lui	t9,0x0
 274:	3c180000 	lui	t8,0x0
 278:	15e00004 	bnez	t7,28c <func_80B1778C+0x60>
 27c:	27390000 	addiu	t9,t9,0
 280:	27180000 	addiu	t8,t8,0
 284:	1000004f 	b	3c4 <func_80B1778C+0x198>
 288:	acf8014c 	sw	t8,332(a3)
 28c:	1000004d 	b	3c4 <func_80B1778C+0x198>
 290:	acf9014c 	sw	t9,332(a3)
 294:	8fa80024 	lw	t0,36(sp)
 298:	84e9008a 	lh	t1,138(a3)
 29c:	84ea00b6 	lh	t2,182(a3)
 2a0:	3c010001 	lui	at,0x1
 2a4:	01014021 	addu	t0,t0,at
 2a8:	810b1cbc 	lb	t3,7356(t0)
 2ac:	012a1823 	subu	v1,t1,t2
 2b0:	24060006 	li	a2,6
 2b4:	00031c00 	sll	v1,v1,0x10
 2b8:	14cb0009 	bne	a2,t3,2e0 <func_80B1778C+0xb4>
 2bc:	00031c03 	sra	v1,v1,0x10
 2c0:	84ec021a 	lh	t4,538(a3)
 2c4:	240d006e 	li	t5,110
 2c8:	240e0001 	li	t6,1
 2cc:	55800005 	bnezl	t4,2e4 <func_80B1778C+0xb8>
 2d0:	84ef021a 	lh	t7,538(a3)
 2d4:	a4ed010e 	sh	t5,270(a3)
 2d8:	a4ee021a 	sh	t6,538(a3)
 2dc:	a4e6020c 	sh	a2,524(a3)
 2e0:	84ef021a 	lh	t7,538(a3)
 2e4:	15e00017 	bnez	t7,344 <func_80B1778C+0x118>
 2e8:	00000000 	nop
 2ec:	84f80214 	lh	t8,532(a3)
 2f0:	8fa40024 	lw	a0,36(sp)
 2f4:	24050032 	li	a1,50
 2f8:	13000012 	beqz	t8,344 <func_80B1778C+0x118>
 2fc:	00000000 	nop
 300:	a7a3001c 	sh	v1,28(sp)
 304:	afa70020 	sw	a3,32(sp)
 308:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 30c:	afa80018 	sw	t0,24(sp)
 310:	87a3001c 	lh	v1,28(sp)
 314:	24060006 	li	a2,6
 318:	8fa70020 	lw	a3,32(sp)
 31c:	10400006 	beqz	v0,338 <func_80B1778C+0x10c>
 320:	8fa80018 	lw	t0,24(sp)
 324:	24190084 	li	t9,132
 328:	24090005 	li	t1,5
 32c:	a4f9010e 	sh	t9,270(a3)
 330:	10000004 	b	344 <func_80B1778C+0x118>
 334:	a4e9020c 	sh	t1,524(a3)
 338:	240a704c 	li	t2,28748
 33c:	a4ea010e 	sh	t2,270(a3)
 340:	a4e6020c 	sh	a2,524(a3)
 344:	04600004 	bltz	v1,358 <func_80B1778C+0x12c>
 348:	00031023 	negu	v0,v1
 34c:	00031400 	sll	v0,v1,0x10
 350:	10000003 	b	360 <func_80B1778C+0x134>
 354:	00021403 	sra	v0,v0,0x10
 358:	00021400 	sll	v0,v0,0x10
 35c:	00021403 	sra	v0,v0,0x10
 360:	28414300 	slti	at,v0,17152
 364:	50200018 	beqzl	at,3c8 <func_80B1778C+0x19c>
 368:	8fbf0014 	lw	ra,20(sp)
 36c:	84eb0216 	lh	t3,534(a3)
 370:	810c1cbc 	lb	t4,7356(t0)
 374:	00e02025 	move	a0,a3
 378:	3c0642c8 	lui	a2,0x42c8
 37c:	516c0008 	beql	t3,t4,3a0 <func_80B1778C+0x174>
 380:	84ef0218 	lh	t7,536(a3)
 384:	8ced0004 	lw	t5,4(a3)
 388:	2401fffe 	li	at,-2
 38c:	a4e00218 	sh	zero,536(a3)
 390:	01a17024 	and	t6,t5,at
 394:	1000000b 	b	3c4 <func_80B1778C+0x198>
 398:	acee0004 	sw	t6,4(a3)
 39c:	84ef0218 	lh	t7,536(a3)
 3a0:	15e00006 	bnez	t7,3bc <func_80B1778C+0x190>
 3a4:	00000000 	nop
 3a8:	8cf80004 	lw	t8,4(a3)
 3ac:	24090001 	li	t1,1
 3b0:	a4e90218 	sh	t1,536(a3)
 3b4:	37190001 	ori	t9,t8,0x1
 3b8:	acf90004 	sw	t9,4(a3)
 3bc:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 3c0:	8fa50024 	lw	a1,36(sp)
 3c4:	8fbf0014 	lw	ra,20(sp)
 3c8:	27bd0020 	addiu	sp,sp,32
 3cc:	03e00008 	jr	ra
 3d0:	00000000 	nop

000003d4 <func_80B17934>:
 3d4:	27bdffd8 	addiu	sp,sp,-40
 3d8:	afb0001c 	sw	s0,28(sp)
 3dc:	00808025 	move	s0,a0
 3e0:	afbf0024 	sw	ra,36(sp)
 3e4:	afb10020 	sw	s1,32(sp)
 3e8:	00a08825 	move	s1,a1
 3ec:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 3f0:	24a420d8 	addiu	a0,a1,8408
 3f4:	860e020c 	lh	t6,524(s0)
 3f8:	55c20040 	bnel	t6,v0,4fc <func_80B17934+0x128>
 3fc:	8fbf0024 	lw	ra,36(sp)
 400:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 404:	02202025 	move	a0,s1
 408:	1040003b 	beqz	v0,4f8 <func_80B17934+0x124>
 40c:	3c020001 	lui	v0,0x1
 410:	00511021 	addu	v0,v0,s1
 414:	904204bd 	lbu	v0,1213(v0)
 418:	24010001 	li	at,1
 41c:	3c0f0000 	lui	t7,0x0
 420:	10400005 	beqz	v0,438 <func_80B17934+0x64>
 424:	00000000 	nop
 428:	10410027 	beq	v0,at,4c8 <func_80B17934+0xf4>
 42c:	00000000 	nop
 430:	10000032 	b	4fc <func_80B17934+0x128>
 434:	8fbf0024 	lw	ra,36(sp)
 438:	85ef0034 	lh	t7,52(t7)
 43c:	29e1000a 	slti	at,t7,10
 440:	14200014 	bnez	at,494 <func_80B17934+0xc0>
 444:	00000000 	nop
 448:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 44c:	02202025 	move	a0,s1
 450:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 454:	2404fff6 	li	a0,-10
 458:	3c01447a 	lui	at,0x447a
 45c:	44812000 	mtc1	at,$f4
 460:	24180001 	li	t8,1
 464:	a6180214 	sh	t8,532(s0)
 468:	ae000118 	sw	zero,280(s0)
 46c:	02002025 	move	a0,s0
 470:	02202825 	move	a1,s1
 474:	24060071 	li	a2,113
 478:	3c0744fa 	lui	a3,0x44fa
 47c:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 480:	e7a40010 	swc1	$f4,16(sp)
 484:	3c190000 	lui	t9,0x0
 488:	27390000 	addiu	t9,t9,0
 48c:	1000001a 	b	4f8 <func_80B17934+0x124>
 490:	ae19014c 	sw	t9,332(s0)
 494:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 498:	02202025 	move	a0,s1
 49c:	24080085 	li	t0,133
 4a0:	a608010e 	sh	t0,270(s0)
 4a4:	3105ffff 	andi	a1,t0,0xffff
 4a8:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 4ac:	02202025 	move	a0,s1
 4b0:	3c0a0000 	lui	t2,0x0
 4b4:	24090005 	li	t1,5
 4b8:	254a0000 	addiu	t2,t2,0
 4bc:	a609020c 	sh	t1,524(s0)
 4c0:	1000000d 	b	4f8 <func_80B17934+0x124>
 4c4:	ae0a014c 	sw	t2,332(s0)
 4c8:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 4cc:	02202025 	move	a0,s1
 4d0:	240b002d 	li	t3,45
 4d4:	a60b010e 	sh	t3,270(s0)
 4d8:	3165ffff 	andi	a1,t3,0xffff
 4dc:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 4e0:	02202025 	move	a0,s1
 4e4:	3c0d0000 	lui	t5,0x0
 4e8:	240c0005 	li	t4,5
 4ec:	25ad0000 	addiu	t5,t5,0
 4f0:	a60c020c 	sh	t4,524(s0)
 4f4:	ae0d014c 	sw	t5,332(s0)
 4f8:	8fbf0024 	lw	ra,36(sp)
 4fc:	8fb0001c 	lw	s0,28(sp)
 500:	8fb10020 	lw	s1,32(sp)
 504:	03e00008 	jr	ra
 508:	27bd0028 	addiu	sp,sp,40

0000050c <func_80B17A6C>:
 50c:	27bdffe0 	addiu	sp,sp,-32
 510:	afbf001c 	sw	ra,28(sp)
 514:	afa50024 	sw	a1,36(sp)
 518:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 51c:	afa40020 	sw	a0,32(sp)
 520:	10400005 	beqz	v0,538 <func_80B17A6C+0x2c>
 524:	8fa40020 	lw	a0,32(sp)
 528:	3c0e0000 	lui	t6,0x0
 52c:	25ce0000 	addiu	t6,t6,0
 530:	10000008 	b	554 <func_80B17A6C+0x48>
 534:	ac8e014c 	sw	t6,332(a0)
 538:	3c01447a 	lui	at,0x447a
 53c:	44812000 	mtc1	at,$f4
 540:	8fa50024 	lw	a1,36(sp)
 544:	24060071 	li	a2,113
 548:	3c0744fa 	lui	a3,0x44fa
 54c:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 550:	e7a40010 	swc1	$f4,16(sp)
 554:	8fbf001c 	lw	ra,28(sp)
 558:	27bd0020 	addiu	sp,sp,32
 55c:	03e00008 	jr	ra
 560:	00000000 	nop

00000564 <func_80B17AC4>:
 564:	27bdffe8 	addiu	sp,sp,-24
 568:	afbf0014 	sw	ra,20(sp)
 56c:	afa40018 	sw	a0,24(sp)
 570:	afa5001c 	sw	a1,28(sp)
 574:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 578:	24a420d8 	addiu	a0,a1,8408
 57c:	24010006 	li	at,6
 580:	54410009 	bnel	v0,at,5a8 <func_80B17AC4+0x44>
 584:	8fbf0014 	lw	ra,20(sp)
 588:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 58c:	8fa4001c 	lw	a0,28(sp)
 590:	10400004 	beqz	v0,5a4 <func_80B17AC4+0x40>
 594:	8faf0018 	lw	t7,24(sp)
 598:	3c0e0000 	lui	t6,0x0
 59c:	25ce0000 	addiu	t6,t6,0
 5a0:	adee014c 	sw	t6,332(t7)
 5a4:	8fbf0014 	lw	ra,20(sp)
 5a8:	27bd0018 	addiu	sp,sp,24
 5ac:	03e00008 	jr	ra
 5b0:	00000000 	nop

000005b4 <func_80B17B14>:
 5b4:	27bdffe8 	addiu	sp,sp,-24
 5b8:	afbf0014 	sw	ra,20(sp)
 5bc:	afa40018 	sw	a0,24(sp)
 5c0:	afa5001c 	sw	a1,28(sp)
 5c4:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 5c8:	24a420d8 	addiu	a0,a1,8408
 5cc:	8fae0018 	lw	t6,24(sp)
 5d0:	85cf020c 	lh	t7,524(t6)
 5d4:	55e2000c 	bnel	t7,v0,608 <func_80B17B14+0x54>
 5d8:	8fbf0014 	lw	ra,20(sp)
 5dc:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 5e0:	8fa4001c 	lw	a0,28(sp)
 5e4:	50400008 	beqzl	v0,608 <func_80B17B14+0x54>
 5e8:	8fbf0014 	lw	ra,20(sp)
 5ec:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 5f0:	8fa4001c 	lw	a0,28(sp)
 5f4:	8fb90018 	lw	t9,24(sp)
 5f8:	3c180000 	lui	t8,0x0
 5fc:	27180000 	addiu	t8,t8,0
 600:	af38014c 	sw	t8,332(t9)
 604:	8fbf0014 	lw	ra,20(sp)
 608:	27bd0018 	addiu	sp,sp,24
 60c:	03e00008 	jr	ra
 610:	00000000 	nop

00000614 <EnTakaraMan_Update>:
 614:	27bdffd0 	addiu	sp,sp,-48
 618:	afbf002c 	sw	ra,44(sp)
 61c:	afb00028 	sw	s0,40(sp)
 620:	afa50034 	sw	a1,52(sp)
 624:	84820210 	lh	v0,528(a0)
 628:	00808025 	move	s0,a0
 62c:	10400002 	beqz	v0,638 <EnTakaraMan_Update+0x24>
 630:	244effff 	addiu	t6,v0,-1
 634:	a48e0210 	sh	t6,528(a0)
 638:	02002025 	move	a0,s0
 63c:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 640:	8e05021c 	lw	a1,540(s0)
 644:	8e180038 	lw	t8,56(s0)
 648:	8fa40034 	lw	a0,52(sp)
 64c:	02002825 	move	a1,s0
 650:	afb80010 	sw	t8,16(sp)
 654:	8e0f003c 	lw	t7,60(s0)
 658:	2606022c 	addiu	a2,s0,556
 65c:	26070232 	addiu	a3,s0,562
 660:	afaf0014 	sw	t7,20(sp)
 664:	8e180040 	lw	t8,64(s0)
 668:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 66c:	afb80018 	sw	t8,24(sp)
 670:	86190210 	lh	t9,528(s0)
 674:	57200011 	bnezl	t9,6bc <EnTakaraMan_Update+0xa8>
 678:	86180212 	lh	t8,530(s0)
 67c:	8608020e 	lh	t0,526(s0)
 680:	25090001 	addiu	t1,t0,1
 684:	a609020e 	sh	t1,526(s0)
 688:	860a020e 	lh	t2,526(s0)
 68c:	29410002 	slti	at,t2,2
 690:	14200009 	bnez	at,6b8 <EnTakaraMan_Update+0xa4>
 694:	3c014270 	lui	at,0x4270
 698:	44816000 	mtc1	at,$f12
 69c:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 6a0:	a600020e 	sh	zero,526(s0)
 6a4:	4600010d 	trunc.w.s	$f4,$f0
 6a8:	440e2000 	mfc1	t6,$f4
 6ac:	00000000 	nop
 6b0:	25cf0014 	addiu	t7,t6,20
 6b4:	a60f0210 	sh	t7,528(s0)
 6b8:	86180212 	lh	t8,530(s0)
 6bc:	02002025 	move	a0,s0
 6c0:	27190001 	addiu	t9,t8,1
 6c4:	a6190212 	sh	t9,530(s0)
 6c8:	8e19014c 	lw	t9,332(s0)
 6cc:	8fa50034 	lw	a1,52(sp)
 6d0:	0320f809 	jalr	t9
 6d4:	00000000 	nop
 6d8:	8fbf002c 	lw	ra,44(sp)
 6dc:	8fb00028 	lw	s0,40(sp)
 6e0:	27bd0030 	addiu	sp,sp,48
 6e4:	03e00008 	jr	ra
 6e8:	00000000 	nop

000006ec <EnTakaraMan_OverrideLimbDraw>:
 6ec:	24010001 	li	at,1
 6f0:	afa40000 	sw	a0,0(sp)
 6f4:	afa60008 	sw	a2,8(sp)
 6f8:	14a10007 	bne	a1,at,718 <EnTakaraMan_OverrideLimbDraw+0x2c>
 6fc:	afa7000c 	sw	a3,12(sp)
 700:	8fa20014 	lw	v0,20(sp)
 704:	8fa30010 	lw	v1,16(sp)
 708:	844f0234 	lh	t7,564(v0)
 70c:	846e0000 	lh	t6,0(v1)
 710:	01cfc021 	addu	t8,t6,t7
 714:	a4780000 	sh	t8,0(v1)
 718:	24010008 	li	at,8
 71c:	8fa20014 	lw	v0,20(sp)
 720:	14a10009 	bne	a1,at,748 <EnTakaraMan_OverrideLimbDraw+0x5c>
 724:	8fa30010 	lw	v1,16(sp)
 728:	84790000 	lh	t9,0(v1)
 72c:	8448022e 	lh	t0,558(v0)
 730:	846a0004 	lh	t2,4(v1)
 734:	03284821 	addu	t1,t9,t0
 738:	a4690000 	sh	t1,0(v1)
 73c:	844b0230 	lh	t3,560(v0)
 740:	014b6021 	addu	t4,t2,t3
 744:	a46c0004 	sh	t4,4(v1)
 748:	03e00008 	jr	ra
 74c:	00001025 	move	v0,zero

00000750 <EnTakaraMan_Draw>:
 750:	27bdffb0 	addiu	sp,sp,-80
 754:	afbf002c 	sw	ra,44(sp)
 758:	afb00028 	sw	s0,40(sp)
 75c:	afa50054 	sw	a1,84(sp)
 760:	8ca50000 	lw	a1,0(a1)
 764:	00808025 	move	s0,a0
 768:	3c060000 	lui	a2,0x0
 76c:	24c60060 	addiu	a2,a2,96
 770:	27a40038 	addiu	a0,sp,56
 774:	24070210 	li	a3,528
 778:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 77c:	afa50048 	sw	a1,72(sp)
 780:	8faf0054 	lw	t7,84(sp)
 784:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 788:	8de40000 	lw	a0,0(t7)
 78c:	8fa50048 	lw	a1,72(sp)
 790:	3c19db06 	lui	t9,0xdb06
 794:	37390020 	ori	t9,t9,0x20
 798:	8ca302c0 	lw	v1,704(a1)
 79c:	3c040000 	lui	a0,0x0
 7a0:	3c0e0000 	lui	t6,0x0
 7a4:	24780008 	addiu	t8,v1,8
 7a8:	acb802c0 	sw	t8,704(a1)
 7ac:	ac790000 	sw	t9,0(v1)
 7b0:	8608020e 	lh	t0,526(s0)
 7b4:	3c0100ff 	lui	at,0xff
 7b8:	3421ffff 	ori	at,at,0xffff
 7bc:	00084880 	sll	t1,t0,0x2
 7c0:	00892021 	addu	a0,a0,t1
 7c4:	8c840024 	lw	a0,36(a0)
 7c8:	3c190000 	lui	t9,0x0
 7cc:	27390000 	addiu	t9,t9,0
 7d0:	00045900 	sll	t3,a0,0x4
 7d4:	000b6702 	srl	t4,t3,0x1c
 7d8:	000c6880 	sll	t5,t4,0x2
 7dc:	01cd7021 	addu	t6,t6,t5
 7e0:	8dce0000 	lw	t6,0(t6)
 7e4:	00815024 	and	t2,a0,at
 7e8:	3c018000 	lui	at,0x8000
 7ec:	014e7821 	addu	t7,t2,t6
 7f0:	01e1c021 	addu	t8,t7,at
 7f4:	ac780004 	sw	t8,4(v1)
 7f8:	92070152 	lbu	a3,338(s0)
 7fc:	8e060170 	lw	a2,368(s0)
 800:	8e050154 	lw	a1,340(s0)
 804:	afb00018 	sw	s0,24(sp)
 808:	afa00014 	sw	zero,20(sp)
 80c:	afb90010 	sw	t9,16(sp)
 810:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 814:	8fa40054 	lw	a0,84(sp)
 818:	8fa80054 	lw	t0,84(sp)
 81c:	3c060000 	lui	a2,0x0
 820:	24c60078 	addiu	a2,a2,120
 824:	27a40038 	addiu	a0,sp,56
 828:	24070220 	li	a3,544
 82c:	0c000000 	jal	0 <EnTakaraMan_Destroy>
 830:	8d050000 	lw	a1,0(t0)
 834:	8fbf002c 	lw	ra,44(sp)
 838:	8fb00028 	lw	s0,40(sp)
 83c:	27bd0050 	addiu	sp,sp,80
 840:	03e00008 	jr	ra
 844:	00000000 	nop
	...
