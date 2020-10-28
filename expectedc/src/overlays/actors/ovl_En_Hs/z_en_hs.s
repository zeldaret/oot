
build/src/overlays/actors/ovl_En_Hs/z_en_hs.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A6E3A0>:
   0:	03e00008 	jr	ra
   4:	ac8502ac 	sw	a1,684(a0)

00000008 <EnHs_Init>:
   8:	27bdffc0 	addiu	sp,sp,-64
   c:	afb00028 	sw	s0,40(sp)
  10:	00808025 	move	s0,a0
  14:	afbf002c 	sw	ra,44(sp)
  18:	afa50044 	sw	a1,68(sp)
  1c:	3c060000 	lui	a2,0x0
  20:	24c60000 	addiu	a2,a2,0
  24:	24050000 	li	a1,0
  28:	248400b4 	addiu	a0,a0,180
  2c:	0c000000 	jal	0 <func_80A6E3A0>
  30:	3c074210 	lui	a3,0x4210
  34:	26050198 	addiu	a1,s0,408
  38:	3c060600 	lui	a2,0x600
  3c:	3c070600 	lui	a3,0x600
  40:	260e01dc 	addiu	t6,s0,476
  44:	260f023c 	addiu	t7,s0,572
  48:	24180010 	li	t8,16
  4c:	afb80018 	sw	t8,24(sp)
  50:	afaf0014 	sw	t7,20(sp)
  54:	afae0010 	sw	t6,16(sp)
  58:	24e705c0 	addiu	a3,a3,1472
  5c:	24c66260 	addiu	a2,a2,25184
  60:	afa50034 	sw	a1,52(sp)
  64:	0c000000 	jal	0 <func_80A6E3A0>
  68:	8fa40044 	lw	a0,68(sp)
  6c:	3c050600 	lui	a1,0x600
  70:	24a505c0 	addiu	a1,a1,1472
  74:	0c000000 	jal	0 <func_80A6E3A0>
  78:	8fa40034 	lw	a0,52(sp)
  7c:	2605014c 	addiu	a1,s0,332
  80:	afa50034 	sw	a1,52(sp)
  84:	0c000000 	jal	0 <func_80A6E3A0>
  88:	8fa40044 	lw	a0,68(sp)
  8c:	3c070000 	lui	a3,0x0
  90:	8fa50034 	lw	a1,52(sp)
  94:	24e70000 	addiu	a3,a3,0
  98:	8fa40044 	lw	a0,68(sp)
  9c:	0c000000 	jal	0 <func_80A6E3A0>
  a0:	02003025 	move	a2,s0
  a4:	241900ff 	li	t9,255
  a8:	3c053c23 	lui	a1,0x3c23
  ac:	a21900ae 	sb	t9,174(s0)
  b0:	34a5d70a 	ori	a1,a1,0xd70a
  b4:	0c000000 	jal	0 <func_80A6E3A0>
  b8:	02002025 	move	a0,s0
  bc:	3c080000 	lui	t0,0x0
  c0:	8d080004 	lw	t0,4(t0)
  c4:	24090001 	li	t1,1
  c8:	3c040000 	lui	a0,0x0
  cc:	51000004 	beqzl	t0,e0 <EnHs_Init+0xd8>
  d0:	a609001c 	sh	t1,28(s0)
  d4:	10000002 	b	e0 <EnHs_Init+0xd8>
  d8:	a600001c 	sh	zero,28(s0)
  dc:	a609001c 	sh	t1,28(s0)
  e0:	860a001c 	lh	t2,28(s0)
  e4:	24010001 	li	at,1
  e8:	15410014 	bne	t2,at,13c <EnHs_Init+0x134>
  ec:	00000000 	nop
  f0:	3c040000 	lui	a0,0x0
  f4:	0c000000 	jal	0 <func_80A6E3A0>
  f8:	24840000 	addiu	a0,a0,0
  fc:	3c050000 	lui	a1,0x0
 100:	24a50000 	addiu	a1,a1,0
 104:	0c000000 	jal	0 <func_80A6E3A0>
 108:	02002025 	move	a0,s0
 10c:	3c0b0000 	lui	t3,0x0
 110:	956b0ef6 	lhu	t3,3830(t3)
 114:	3c040000 	lui	a0,0x0
 118:	316c0001 	andi	t4,t3,0x1
 11c:	5180000e 	beqzl	t4,158 <EnHs_Init+0x150>
 120:	240d0006 	li	t5,6
 124:	0c000000 	jal	0 <func_80A6E3A0>
 128:	24840000 	addiu	a0,a0,0
 12c:	0c000000 	jal	0 <func_80A6E3A0>
 130:	02002025 	move	a0,s0
 134:	10000008 	b	158 <EnHs_Init+0x150>
 138:	240d0006 	li	t5,6
 13c:	0c000000 	jal	0 <func_80A6E3A0>
 140:	24840000 	addiu	a0,a0,0
 144:	3c050000 	lui	a1,0x0
 148:	24a50000 	addiu	a1,a1,0
 14c:	0c000000 	jal	0 <func_80A6E3A0>
 150:	02002025 	move	a0,s0
 154:	240d0006 	li	t5,6
 158:	a60002a8 	sh	zero,680(s0)
 15c:	a20d001f 	sb	t5,31(s0)
 160:	8fbf002c 	lw	ra,44(sp)
 164:	8fb00028 	lw	s0,40(sp)
 168:	27bd0040 	addiu	sp,sp,64
 16c:	03e00008 	jr	ra
 170:	00000000 	nop

00000174 <EnHs_Destroy>:
 174:	27bdffe8 	addiu	sp,sp,-24
 178:	00803025 	move	a2,a0
 17c:	afbf0014 	sw	ra,20(sp)
 180:	00a02025 	move	a0,a1
 184:	0c000000 	jal	0 <func_80A6E3A0>
 188:	24c5014c 	addiu	a1,a2,332
 18c:	8fbf0014 	lw	ra,20(sp)
 190:	27bd0018 	addiu	sp,sp,24
 194:	03e00008 	jr	ra
 198:	00000000 	nop

0000019c <func_80A6E53C>:
 19c:	27bdffe8 	addiu	sp,sp,-24
 1a0:	afbf0014 	sw	ra,20(sp)
 1a4:	afa5001c 	sw	a1,28(sp)
 1a8:	afa60020 	sw	a2,32(sp)
 1ac:	afa70024 	sw	a3,36(sp)
 1b0:	0c000000 	jal	0 <func_80A6E3A0>
 1b4:	afa40018 	sw	a0,24(sp)
 1b8:	10400005 	beqz	v0,1d0 <func_80A6E53C+0x34>
 1bc:	8fa40018 	lw	a0,24(sp)
 1c0:	0c000000 	jal	0 <func_80A6E3A0>
 1c4:	8fa50024 	lw	a1,36(sp)
 1c8:	1000001c 	b	23c <func_80A6E53C+0xa0>
 1cc:	24020001 	li	v0,1
 1d0:	848f008a 	lh	t7,138(a0)
 1d4:	849800b6 	lh	t8,182(a0)
 1d8:	97ae0022 	lhu	t6,34(sp)
 1dc:	01f81023 	subu	v0,t7,t8
 1e0:	00021400 	sll	v0,v0,0x10
 1e4:	00021403 	sra	v0,v0,0x10
 1e8:	04400003 	bltz	v0,1f8 <func_80A6E53C+0x5c>
 1ec:	a48e010e 	sh	t6,270(a0)
 1f0:	10000002 	b	1fc <func_80A6E53C+0x60>
 1f4:	00401825 	move	v1,v0
 1f8:	00021823 	negu	v1,v0
 1fc:	28612151 	slti	at,v1,8529
 200:	1020000d 	beqz	at,238 <func_80A6E53C+0x9c>
 204:	3c0142c8 	lui	at,0x42c8
 208:	44810000 	mtc1	at,$f0
 20c:	c4840090 	lwc1	$f4,144(a0)
 210:	4600203c 	c.lt.s	$f4,$f0
 214:	00000000 	nop
 218:	45020008 	bc1fl	23c <func_80A6E53C+0xa0>
 21c:	00001025 	move	v0,zero
 220:	949902a8 	lhu	t9,680(a0)
 224:	44060000 	mfc1	a2,$f0
 228:	37280001 	ori	t0,t9,0x1
 22c:	a48802a8 	sh	t0,680(a0)
 230:	0c000000 	jal	0 <func_80A6E3A0>
 234:	8fa5001c 	lw	a1,28(sp)
 238:	00001025 	move	v0,zero
 23c:	8fbf0014 	lw	ra,20(sp)
 240:	27bd0018 	addiu	sp,sp,24
 244:	03e00008 	jr	ra
 248:	00000000 	nop

0000024c <func_80A6E5EC>:
 24c:	27bdffe8 	addiu	sp,sp,-24
 250:	afbf0014 	sw	ra,20(sp)
 254:	0c000000 	jal	0 <func_80A6E3A0>
 258:	afa40018 	sw	a0,24(sp)
 25c:	10400004 	beqz	v0,270 <func_80A6E5EC+0x24>
 260:	8fa40018 	lw	a0,24(sp)
 264:	3c050000 	lui	a1,0x0
 268:	0c000000 	jal	0 <func_80A6E3A0>
 26c:	24a50000 	addiu	a1,a1,0
 270:	8fae0018 	lw	t6,24(sp)
 274:	95cf02a8 	lhu	t7,680(t6)
 278:	35f80001 	ori	t8,t7,0x1
 27c:	a5d802a8 	sh	t8,680(t6)
 280:	8fbf0014 	lw	ra,20(sp)
 284:	27bd0018 	addiu	sp,sp,24
 288:	03e00008 	jr	ra
 28c:	00000000 	nop

00000290 <func_80A6E630>:
 290:	27bdffe8 	addiu	sp,sp,-24
 294:	afbf0014 	sw	ra,20(sp)
 298:	afa40018 	sw	a0,24(sp)
 29c:	afa5001c 	sw	a1,28(sp)
 2a0:	0c000000 	jal	0 <func_80A6E3A0>
 2a4:	24a420d8 	addiu	a0,a1,8408
 2a8:	24010006 	li	at,6
 2ac:	54410011 	bnel	v0,at,2f4 <func_80A6E630+0x64>
 2b0:	8fb80018 	lw	t8,24(sp)
 2b4:	0c000000 	jal	0 <func_80A6E3A0>
 2b8:	8fa4001c 	lw	a0,28(sp)
 2bc:	5040000d 	beqzl	v0,2f4 <func_80A6E630+0x64>
 2c0:	8fb80018 	lw	t8,24(sp)
 2c4:	0c000000 	jal	0 <func_80A6E3A0>
 2c8:	240400b4 	li	a0,180
 2cc:	3c050000 	lui	a1,0x0
 2d0:	24a50000 	addiu	a1,a1,0
 2d4:	0c000000 	jal	0 <func_80A6E3A0>
 2d8:	8fa40018 	lw	a0,24(sp)
 2dc:	3c020000 	lui	v0,0x0
 2e0:	24420000 	addiu	v0,v0,0
 2e4:	944e13fc 	lhu	t6,5116(v0)
 2e8:	31cffffe 	andi	t7,t6,0xfffe
 2ec:	a44f13fc 	sh	t7,5116(v0)
 2f0:	8fb80018 	lw	t8,24(sp)
 2f4:	971902a8 	lhu	t9,680(t8)
 2f8:	37280001 	ori	t0,t9,0x1
 2fc:	a70802a8 	sh	t0,680(t8)
 300:	8fbf0014 	lw	ra,20(sp)
 304:	27bd0018 	addiu	sp,sp,24
 308:	03e00008 	jr	ra
 30c:	00000000 	nop

00000310 <func_80A6E6B0>:
 310:	27bdffe8 	addiu	sp,sp,-24
 314:	afbf0014 	sw	ra,20(sp)
 318:	3c070000 	lui	a3,0x0
 31c:	24e70000 	addiu	a3,a3,0
 320:	0c000000 	jal	0 <func_80A6E3A0>
 324:	240610b6 	li	a2,4278
 328:	8fbf0014 	lw	ra,20(sp)
 32c:	27bd0018 	addiu	sp,sp,24
 330:	03e00008 	jr	ra
 334:	00000000 	nop

00000338 <func_80A6E6D8>:
 338:	27bdffe8 	addiu	sp,sp,-24
 33c:	afbf0014 	sw	ra,20(sp)
 340:	0c000000 	jal	0 <func_80A6E3A0>
 344:	afa40018 	sw	a0,24(sp)
 348:	10400004 	beqz	v0,35c <func_80A6E6D8+0x24>
 34c:	8fa40018 	lw	a0,24(sp)
 350:	3c050000 	lui	a1,0x0
 354:	0c000000 	jal	0 <func_80A6E3A0>
 358:	24a50000 	addiu	a1,a1,0
 35c:	8fbf0014 	lw	ra,20(sp)
 360:	27bd0018 	addiu	sp,sp,24
 364:	03e00008 	jr	ra
 368:	00000000 	nop

0000036c <func_80A6E70C>:
 36c:	27bdffe8 	addiu	sp,sp,-24
 370:	afbf0014 	sw	ra,20(sp)
 374:	0c000000 	jal	0 <func_80A6E3A0>
 378:	afa40018 	sw	a0,24(sp)
 37c:	10400004 	beqz	v0,390 <func_80A6E70C+0x24>
 380:	8fa40018 	lw	a0,24(sp)
 384:	3c050000 	lui	a1,0x0
 388:	0c000000 	jal	0 <func_80A6E3A0>
 38c:	24a50000 	addiu	a1,a1,0
 390:	8fbf0014 	lw	ra,20(sp)
 394:	27bd0018 	addiu	sp,sp,24
 398:	03e00008 	jr	ra
 39c:	00000000 	nop

000003a0 <func_80A6E740>:
 3a0:	27bdffd8 	addiu	sp,sp,-40
 3a4:	afbf0024 	sw	ra,36(sp)
 3a8:	afb00020 	sw	s0,32(sp)
 3ac:	00808025 	move	s0,a0
 3b0:	0c000000 	jal	0 <func_80A6E3A0>
 3b4:	afa5002c 	sw	a1,44(sp)
 3b8:	10400008 	beqz	v0,3dc <func_80A6E740+0x3c>
 3bc:	02002025 	move	a0,s0
 3c0:	3c050000 	lui	a1,0x0
 3c4:	ae000118 	sw	zero,280(s0)
 3c8:	24a50000 	addiu	a1,a1,0
 3cc:	0c000000 	jal	0 <func_80A6E3A0>
 3d0:	02002025 	move	a0,s0
 3d4:	1000000a 	b	400 <func_80A6E740+0x60>
 3d8:	960e02a8 	lhu	t6,680(s0)
 3dc:	3c014248 	lui	at,0x4248
 3e0:	44812000 	mtc1	at,$f4
 3e4:	3c07461c 	lui	a3,0x461c
 3e8:	34e74000 	ori	a3,a3,0x4000
 3ec:	8fa5002c 	lw	a1,44(sp)
 3f0:	2406001f 	li	a2,31
 3f4:	0c000000 	jal	0 <func_80A6E3A0>
 3f8:	e7a40010 	swc1	$f4,16(sp)
 3fc:	960e02a8 	lhu	t6,680(s0)
 400:	35cf0001 	ori	t7,t6,0x1
 404:	a60f02a8 	sh	t7,680(s0)
 408:	8fbf0024 	lw	ra,36(sp)
 40c:	8fb00020 	lw	s0,32(sp)
 410:	27bd0028 	addiu	sp,sp,40
 414:	03e00008 	jr	ra
 418:	00000000 	nop

0000041c <func_80A6E7BC>:
 41c:	27bdffd0 	addiu	sp,sp,-48
 420:	afb10028 	sw	s1,40(sp)
 424:	00808825 	move	s1,a0
 428:	afbf002c 	sw	ra,44(sp)
 42c:	afb00024 	sw	s0,36(sp)
 430:	00a08025 	move	s0,a1
 434:	0c000000 	jal	0 <func_80A6E3A0>
 438:	24a420d8 	addiu	a0,a1,8408
 43c:	24010004 	li	at,4
 440:	54410033 	bnel	v0,at,510 <func_80A6E7BC+0xf4>
 444:	962e02a8 	lhu	t6,680(s1)
 448:	0c000000 	jal	0 <func_80A6E3A0>
 44c:	02002025 	move	a0,s0
 450:	1040002e 	beqz	v0,50c <func_80A6E7BC+0xf0>
 454:	3c020001 	lui	v0,0x1
 458:	00501021 	addu	v0,v0,s0
 45c:	904204bd 	lbu	v0,1213(v0)
 460:	24010001 	li	at,1
 464:	02202025 	move	a0,s1
 468:	10400005 	beqz	v0,480 <func_80A6E7BC+0x64>
 46c:	3c050000 	lui	a1,0x0
 470:	10410010 	beq	v0,at,4b4 <func_80A6E7BC+0x98>
 474:	02002025 	move	a0,s0
 478:	10000014 	b	4cc <func_80A6E7BC+0xb0>
 47c:	00000000 	nop
 480:	0c000000 	jal	0 <func_80A6E3A0>
 484:	24a50000 	addiu	a1,a1,0
 488:	3c014248 	lui	at,0x4248
 48c:	44812000 	mtc1	at,$f4
 490:	3c07461c 	lui	a3,0x461c
 494:	34e74000 	ori	a3,a3,0x4000
 498:	02202025 	move	a0,s1
 49c:	02002825 	move	a1,s0
 4a0:	2406001f 	li	a2,31
 4a4:	0c000000 	jal	0 <func_80A6E3A0>
 4a8:	e7a40010 	swc1	$f4,16(sp)
 4ac:	10000007 	b	4cc <func_80A6E7BC+0xb0>
 4b0:	00000000 	nop
 4b4:	0c000000 	jal	0 <func_80A6E3A0>
 4b8:	240510b4 	li	a1,4276
 4bc:	3c050000 	lui	a1,0x0
 4c0:	24a50000 	addiu	a1,a1,0
 4c4:	0c000000 	jal	0 <func_80A6E3A0>
 4c8:	02202025 	move	a0,s1
 4cc:	3c100600 	lui	s0,0x600
 4d0:	261005c0 	addiu	s0,s0,1472
 4d4:	0c000000 	jal	0 <func_80A6E3A0>
 4d8:	02002025 	move	a0,s0
 4dc:	44823000 	mtc1	v0,$f6
 4e0:	3c014100 	lui	at,0x4100
 4e4:	44815000 	mtc1	at,$f10
 4e8:	46803220 	cvt.s.w	$f8,$f6
 4ec:	26240198 	addiu	a0,s1,408
 4f0:	02002825 	move	a1,s0
 4f4:	3c063f80 	lui	a2,0x3f80
 4f8:	24070000 	li	a3,0
 4fc:	afa00014 	sw	zero,20(sp)
 500:	e7a80010 	swc1	$f8,16(sp)
 504:	0c000000 	jal	0 <func_80A6E3A0>
 508:	e7aa0018 	swc1	$f10,24(sp)
 50c:	962e02a8 	lhu	t6,680(s1)
 510:	35cf0001 	ori	t7,t6,0x1
 514:	a62f02a8 	sh	t7,680(s1)
 518:	8fbf002c 	lw	ra,44(sp)
 51c:	8fb10028 	lw	s1,40(sp)
 520:	8fb00024 	lw	s0,36(sp)
 524:	03e00008 	jr	ra
 528:	27bd0030 	addiu	sp,sp,48

0000052c <func_80A6E8CC>:
 52c:	27bdffc8 	addiu	sp,sp,-56
 530:	afbf002c 	sw	ra,44(sp)
 534:	afb00028 	sw	s0,40(sp)
 538:	8cae1c44 	lw	t6,7236(a1)
 53c:	00808025 	move	s0,a0
 540:	24a420d8 	addiu	a0,a1,8408
 544:	afa5003c 	sw	a1,60(sp)
 548:	0c000000 	jal	0 <func_80A6E3A0>
 54c:	afae0034 	sw	t6,52(sp)
 550:	24010005 	li	at,5
 554:	5441001c 	bnel	v0,at,5c8 <func_80A6E8CC+0x9c>
 558:	860202aa 	lh	v0,682(s0)
 55c:	0c000000 	jal	0 <func_80A6E3A0>
 560:	8fa4003c 	lw	a0,60(sp)
 564:	10400017 	beqz	v0,5c4 <func_80A6E8CC+0x98>
 568:	8fa4003c 	lw	a0,60(sp)
 56c:	0c000000 	jal	0 <func_80A6E3A0>
 570:	240510b3 	li	a1,4275
 574:	3c050000 	lui	a1,0x0
 578:	24a50000 	addiu	a1,a1,0
 57c:	0c000000 	jal	0 <func_80A6E3A0>
 580:	02002025 	move	a0,s0
 584:	3c040600 	lui	a0,0x600
 588:	0c000000 	jal	0 <func_80A6E3A0>
 58c:	24840528 	addiu	a0,a0,1320
 590:	44822000 	mtc1	v0,$f4
 594:	3c014100 	lui	at,0x4100
 598:	44814000 	mtc1	at,$f8
 59c:	468021a0 	cvt.s.w	$f6,$f4
 5a0:	3c050600 	lui	a1,0x600
 5a4:	24a50528 	addiu	a1,a1,1320
 5a8:	26040198 	addiu	a0,s0,408
 5ac:	3c063f80 	lui	a2,0x3f80
 5b0:	24070000 	li	a3,0
 5b4:	e7a60010 	swc1	$f6,16(sp)
 5b8:	afa00014 	sw	zero,20(sp)
 5bc:	0c000000 	jal	0 <func_80A6E3A0>
 5c0:	e7a80018 	swc1	$f8,24(sp)
 5c4:	860202aa 	lh	v0,682(s0)
 5c8:	18400008 	blez	v0,5ec <func_80A6E8CC+0xc0>
 5cc:	244fffff 	addiu	t7,v0,-1
 5d0:	a60f02aa 	sh	t7,682(s0)
 5d4:	861802aa 	lh	t8,682(s0)
 5d8:	8fa40034 	lw	a0,52(sp)
 5dc:	57000004 	bnezl	t8,5f0 <func_80A6E8CC+0xc4>
 5e0:	961902a8 	lhu	t9,680(s0)
 5e4:	0c000000 	jal	0 <func_80A6E3A0>
 5e8:	24052813 	li	a1,10259
 5ec:	961902a8 	lhu	t9,680(s0)
 5f0:	37280001 	ori	t0,t9,0x1
 5f4:	a60802a8 	sh	t0,680(s0)
 5f8:	8fbf002c 	lw	ra,44(sp)
 5fc:	8fb00028 	lw	s0,40(sp)
 600:	27bd0038 	addiu	sp,sp,56
 604:	03e00008 	jr	ra
 608:	00000000 	nop

0000060c <func_80A6E9AC>:
 60c:	27bdffc8 	addiu	sp,sp,-56
 610:	afbf002c 	sw	ra,44(sp)
 614:	afb00028 	sw	s0,40(sp)
 618:	8cae1c44 	lw	t6,7236(a1)
 61c:	00808025 	move	s0,a0
 620:	afa5003c 	sw	a1,60(sp)
 624:	0c000000 	jal	0 <func_80A6E3A0>
 628:	afae0034 	sw	t6,52(sp)
 62c:	1040002b 	beqz	v0,6dc <func_80A6E9AC+0xd0>
 630:	8fa5003c 	lw	a1,60(sp)
 634:	0c000000 	jal	0 <func_80A6E3A0>
 638:	00a02025 	move	a0,a1
 63c:	24010007 	li	at,7
 640:	1441001e 	bne	v0,at,6bc <func_80A6E9AC+0xb0>
 644:	240810b1 	li	t0,4273
 648:	8fb80034 	lw	t8,52(sp)
 64c:	240f10b2 	li	t7,4274
 650:	3c050000 	lui	a1,0x0
 654:	24a50000 	addiu	a1,a1,0
 658:	02002025 	move	a0,s0
 65c:	0c000000 	jal	0 <func_80A6E3A0>
 660:	a70f010e 	sh	t7,270(t8)
 664:	3c040600 	lui	a0,0x600
 668:	0c000000 	jal	0 <func_80A6E3A0>
 66c:	24840304 	addiu	a0,a0,772
 670:	44822000 	mtc1	v0,$f4
 674:	3c014100 	lui	at,0x4100
 678:	44814000 	mtc1	at,$f8
 67c:	468021a0 	cvt.s.w	$f6,$f4
 680:	3c050600 	lui	a1,0x600
 684:	24a50304 	addiu	a1,a1,772
 688:	26040198 	addiu	a0,s0,408
 68c:	3c063f80 	lui	a2,0x3f80
 690:	24070000 	li	a3,0
 694:	e7a60010 	swc1	$f6,16(sp)
 698:	afa00014 	sw	zero,20(sp)
 69c:	0c000000 	jal	0 <func_80A6E3A0>
 6a0:	e7a80018 	swc1	$f8,24(sp)
 6a4:	24190028 	li	t9,40
 6a8:	a61902aa 	sh	t9,682(s0)
 6ac:	0c000000 	jal	0 <func_80A6E3A0>
 6b0:	24044807 	li	a0,18439
 6b4:	10000022 	b	740 <func_80A6E9AC+0x134>
 6b8:	8fbf002c 	lw	ra,44(sp)
 6bc:	8fa90034 	lw	t1,52(sp)
 6c0:	3c050000 	lui	a1,0x0
 6c4:	24a50000 	addiu	a1,a1,0
 6c8:	02002025 	move	a0,s0
 6cc:	0c000000 	jal	0 <func_80A6E3A0>
 6d0:	a528010e 	sh	t0,270(t1)
 6d4:	1000001a 	b	740 <func_80A6E9AC+0x134>
 6d8:	8fbf002c 	lw	ra,44(sp)
 6dc:	860a008a 	lh	t2,138(s0)
 6e0:	860b00b6 	lh	t3,182(s0)
 6e4:	240c10b1 	li	t4,4273
 6e8:	a60c010e 	sh	t4,270(s0)
 6ec:	014b1023 	subu	v0,t2,t3
 6f0:	00021400 	sll	v0,v0,0x10
 6f4:	00021403 	sra	v0,v0,0x10
 6f8:	04400003 	bltz	v0,708 <func_80A6E9AC+0xfc>
 6fc:	00021823 	negu	v1,v0
 700:	10000001 	b	708 <func_80A6E9AC+0xfc>
 704:	00401825 	move	v1,v0
 708:	28612151 	slti	at,v1,8529
 70c:	1020000b 	beqz	at,73c <func_80A6E9AC+0x130>
 710:	3c0142c8 	lui	at,0x42c8
 714:	44810000 	mtc1	at,$f0
 718:	c60a0090 	lwc1	$f10,144(s0)
 71c:	02002025 	move	a0,s0
 720:	4600503c 	c.lt.s	$f10,$f0
 724:	00000000 	nop
 728:	45020005 	bc1fl	740 <func_80A6E9AC+0x134>
 72c:	8fbf002c 	lw	ra,44(sp)
 730:	44060000 	mfc1	a2,$f0
 734:	0c000000 	jal	0 <func_80A6E3A0>
 738:	24070007 	li	a3,7
 73c:	8fbf002c 	lw	ra,44(sp)
 740:	8fb00028 	lw	s0,40(sp)
 744:	27bd0038 	addiu	sp,sp,56
 748:	03e00008 	jr	ra
 74c:	00000000 	nop

00000750 <EnHs_Update>:
 750:	27bdffc0 	addiu	sp,sp,-64
 754:	afb00024 	sw	s0,36(sp)
 758:	00808025 	move	s0,a0
 75c:	afb10028 	sw	s1,40(sp)
 760:	00a08825 	move	s1,a1
 764:	afbf002c 	sw	ra,44(sp)
 768:	2606014c 	addiu	a2,s0,332
 76c:	00c02825 	move	a1,a2
 770:	0c000000 	jal	0 <func_80A6E3A0>
 774:	afa60034 	sw	a2,52(sp)
 778:	3c010001 	lui	at,0x1
 77c:	34211e60 	ori	at,at,0x1e60
 780:	8fa60034 	lw	a2,52(sp)
 784:	02212821 	addu	a1,s1,at
 788:	0c000000 	jal	0 <func_80A6E3A0>
 78c:	02202025 	move	a0,s1
 790:	0c000000 	jal	0 <func_80A6E3A0>
 794:	02002025 	move	a0,s0
 798:	44800000 	mtc1	zero,$f0
 79c:	240e0004 	li	t6,4
 7a0:	afae0014 	sw	t6,20(sp)
 7a4:	44060000 	mfc1	a2,$f0
 7a8:	44070000 	mfc1	a3,$f0
 7ac:	02202025 	move	a0,s1
 7b0:	02002825 	move	a1,s0
 7b4:	0c000000 	jal	0 <func_80A6E3A0>
 7b8:	e7a00010 	swc1	$f0,16(sp)
 7bc:	0c000000 	jal	0 <func_80A6E3A0>
 7c0:	26040198 	addiu	a0,s0,408
 7c4:	50400005 	beqzl	v0,7dc <EnHs_Update+0x8c>
 7c8:	8e1902ac 	lw	t9,684(s0)
 7cc:	44802000 	mtc1	zero,$f4
 7d0:	00000000 	nop
 7d4:	e60401b0 	swc1	$f4,432(s0)
 7d8:	8e1902ac 	lw	t9,684(s0)
 7dc:	02002025 	move	a0,s0
 7e0:	02202825 	move	a1,s1
 7e4:	0320f809 	jalr	t9
 7e8:	00000000 	nop
 7ec:	960f02a8 	lhu	t7,680(s0)
 7f0:	2604029c 	addiu	a0,s0,668
 7f4:	24053200 	li	a1,12800
 7f8:	31f80001 	andi	t8,t7,0x1
 7fc:	13000010 	beqz	t8,840 <EnHs_Update+0xf0>
 800:	24060006 	li	a2,6
 804:	8e090038 	lw	t1,56(s0)
 808:	02202025 	move	a0,s1
 80c:	02002825 	move	a1,s0
 810:	afa90010 	sw	t1,16(sp)
 814:	8e08003c 	lw	t0,60(s0)
 818:	2606029c 	addiu	a2,s0,668
 81c:	260702a2 	addiu	a3,s0,674
 820:	afa80014 	sw	t0,20(sp)
 824:	8e090040 	lw	t1,64(s0)
 828:	0c000000 	jal	0 <func_80A6E3A0>
 82c:	afa90018 	sw	t1,24(sp)
 830:	960a02a8 	lhu	t2,680(s0)
 834:	314bfffe 	andi	t3,t2,0xfffe
 838:	1000001a 	b	8a4 <EnHs_Update+0x154>
 83c:	a60b02a8 	sh	t3,680(s0)
 840:	240c0064 	li	t4,100
 844:	afac0010 	sw	t4,16(sp)
 848:	0c000000 	jal	0 <func_80A6E3A0>
 84c:	24071838 	li	a3,6200
 850:	240d0064 	li	t5,100
 854:	afad0010 	sw	t5,16(sp)
 858:	2604029e 	addiu	a0,s0,670
 85c:	00002825 	move	a1,zero
 860:	24060006 	li	a2,6
 864:	0c000000 	jal	0 <func_80A6E3A0>
 868:	24071838 	li	a3,6200
 86c:	240e0064 	li	t6,100
 870:	afae0010 	sw	t6,16(sp)
 874:	260402a2 	addiu	a0,s0,674
 878:	00002825 	move	a1,zero
 87c:	24060006 	li	a2,6
 880:	0c000000 	jal	0 <func_80A6E3A0>
 884:	24071838 	li	a3,6200
 888:	24190064 	li	t9,100
 88c:	afb90010 	sw	t9,16(sp)
 890:	260402a4 	addiu	a0,s0,676
 894:	00002825 	move	a1,zero
 898:	24060006 	li	a2,6
 89c:	0c000000 	jal	0 <func_80A6E3A0>
 8a0:	24071838 	li	a3,6200
 8a4:	8fbf002c 	lw	ra,44(sp)
 8a8:	8fb00024 	lw	s0,36(sp)
 8ac:	8fb10028 	lw	s1,40(sp)
 8b0:	03e00008 	jr	ra
 8b4:	27bd0040 	addiu	sp,sp,64

000008b8 <func_80A6EC58>:
 8b8:	24aefff7 	addiu	t6,a1,-9
 8bc:	2dc10005 	sltiu	at,t6,5
 8c0:	afa40000 	sw	a0,0(sp)
 8c4:	10200028 	beqz	at,968 <func_80A6ECE8+0x20>
 8c8:	afa7000c 	sw	a3,12(sp)
 8cc:	000e7080 	sll	t6,t6,0x2
 8d0:	3c010000 	lui	at,0x0
 8d4:	002e0821 	addu	at,at,t6
 8d8:	8c2e0000 	lw	t6,0(at)
 8dc:	01c00008 	jr	t6
 8e0:	00000000 	nop

000008e4 <L80A6EC84>:
 8e4:	8fa20014 	lw	v0,20(sp)
 8e8:	8fa30010 	lw	v1,16(sp)
 8ec:	8458029e 	lh	t8,670(v0)
 8f0:	846f0000 	lh	t7,0(v1)
 8f4:	84680004 	lh	t0,4(v1)
 8f8:	01f8c821 	addu	t9,t7,t8
 8fc:	a4790000 	sh	t9,0(v1)
 900:	8449029c 	lh	t1,668(v0)
 904:	01095021 	addu	t2,t0,t1
 908:	10000017 	b	968 <func_80A6ECE8+0x20>
 90c:	a46a0004 	sh	t2,4(v1)

00000910 <L80A6ECB0>:
 910:	acc00000 	sw	zero,0(a2)
 914:	03e00008 	jr	ra
 918:	00001025 	move	v0,zero

0000091c <func_80A6ECBC>:
 91c:	acc00000 	sw	zero,0(a2)
 920:	03e00008 	jr	ra
 924:	00001025 	move	v0,zero

00000928 <func_80A6ECC8>:
 928:	8fa20014 	lw	v0,20(sp)
 92c:	24010001 	li	at,1
 930:	844b001c 	lh	t3,28(v0)
 934:	00001025 	move	v0,zero
 938:	5561000c 	bnel	t3,at,96c <func_80A6ECE8+0x24>
 93c:	00001025 	move	v0,zero
 940:	03e00008 	jr	ra
 944:	acc00000 	sw	zero,0(a2)

00000948 <func_80A6ECE8>:
 948:	8fa20014 	lw	v0,20(sp)
 94c:	24010001 	li	at,1
 950:	844c001c 	lh	t4,28(v0)
 954:	00001025 	move	v0,zero
 958:	55810004 	bnel	t4,at,96c <func_80A6ECE8+0x24>
 95c:	00001025 	move	v0,zero
 960:	03e00008 	jr	ra
 964:	acc00000 	sw	zero,0(a2)
 968:	00001025 	move	v0,zero
 96c:	03e00008 	jr	ra
 970:	00000000 	nop

00000974 <func_80A6ED14>:
 974:	27bdffe8 	addiu	sp,sp,-24
 978:	24010009 	li	at,9
 97c:	afbf0014 	sw	ra,20(sp)
 980:	afa40018 	sw	a0,24(sp)
 984:	afa60020 	sw	a2,32(sp)
 988:	14a10006 	bne	a1,at,9a4 <func_80A6ED14+0x30>
 98c:	afa70024 	sw	a3,36(sp)
 990:	8fa50028 	lw	a1,40(sp)
 994:	3c040000 	lui	a0,0x0
 998:	24840000 	addiu	a0,a0,0
 99c:	0c000000 	jal	0 <func_80A6E3A0>
 9a0:	24a50038 	addiu	a1,a1,56
 9a4:	8fbf0014 	lw	ra,20(sp)
 9a8:	27bd0018 	addiu	sp,sp,24
 9ac:	03e00008 	jr	ra
 9b0:	00000000 	nop

000009b4 <EnHs_Draw>:
 9b4:	27bdffd8 	addiu	sp,sp,-40
 9b8:	afbf0024 	sw	ra,36(sp)
 9bc:	afa40028 	sw	a0,40(sp)
 9c0:	afa5002c 	sw	a1,44(sp)
 9c4:	0c000000 	jal	0 <func_80A6E3A0>
 9c8:	8ca40000 	lw	a0,0(a1)
 9cc:	8fa20028 	lw	v0,40(sp)
 9d0:	3c0f0000 	lui	t7,0x0
 9d4:	3c180000 	lui	t8,0x0
 9d8:	8c45019c 	lw	a1,412(v0)
 9dc:	8c4601b8 	lw	a2,440(v0)
 9e0:	9047019a 	lbu	a3,410(v0)
 9e4:	27180000 	addiu	t8,t8,0
 9e8:	25ef0000 	addiu	t7,t7,0
 9ec:	afaf0010 	sw	t7,16(sp)
 9f0:	afb80014 	sw	t8,20(sp)
 9f4:	8fa4002c 	lw	a0,44(sp)
 9f8:	0c000000 	jal	0 <func_80A6E3A0>
 9fc:	afa20018 	sw	v0,24(sp)
 a00:	8fbf0024 	lw	ra,36(sp)
 a04:	27bd0028 	addiu	sp,sp,40
 a08:	03e00008 	jr	ra
 a0c:	00000000 	nop
