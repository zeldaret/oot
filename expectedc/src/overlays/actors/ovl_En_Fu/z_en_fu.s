
build/src/overlays/actors/ovl_En_Fu/z_en_fu.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnFu_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afb00028 	sw	s0,40(sp)
   8:	00808025 	move	s0,a0
   c:	afbf002c 	sw	ra,44(sp)
  10:	afa50044 	sw	a1,68(sp)
  14:	3c060000 	lui	a2,0x0
  18:	24c60000 	addiu	a2,a2,0
  1c:	24050000 	li	a1,0
  20:	248400b4 	addiu	a0,a0,180
  24:	0c000000 	jal	0 <EnFu_Init>
  28:	3c074210 	lui	a3,0x4210
  2c:	26050198 	addiu	a1,s0,408
  30:	3c060000 	lui	a2,0x0
  34:	3c070000 	lui	a3,0x0
  38:	260e01dc 	addiu	t6,s0,476
  3c:	260f023c 	addiu	t7,s0,572
  40:	24180010 	li	t8,16
  44:	afb80018 	sw	t8,24(sp)
  48:	afaf0014 	sw	t7,20(sp)
  4c:	afae0010 	sw	t6,16(sp)
  50:	24e70000 	addiu	a3,a3,0
  54:	24c60000 	addiu	a2,a2,0
  58:	afa50034 	sw	a1,52(sp)
  5c:	0c000000 	jal	0 <EnFu_Init>
  60:	8fa40044 	lw	a0,68(sp)
  64:	3c050000 	lui	a1,0x0
  68:	24a50000 	addiu	a1,a1,0
  6c:	0c000000 	jal	0 <EnFu_Init>
  70:	8fa40034 	lw	a0,52(sp)
  74:	2605014c 	addiu	a1,s0,332
  78:	afa50034 	sw	a1,52(sp)
  7c:	0c000000 	jal	0 <EnFu_Init>
  80:	8fa40044 	lw	a0,68(sp)
  84:	3c070000 	lui	a3,0x0
  88:	8fa50034 	lw	a1,52(sp)
  8c:	24e70020 	addiu	a3,a3,32
  90:	8fa40044 	lw	a0,68(sp)
  94:	0c000000 	jal	0 <EnFu_Init>
  98:	02003025 	move	a2,s0
  9c:	241900ff 	li	t9,255
  a0:	3c053c23 	lui	a1,0x3c23
  a4:	a21900ae 	sb	t9,174(s0)
  a8:	34a5d70a 	ori	a1,a1,0xd70a
  ac:	0c000000 	jal	0 <EnFu_Init>
  b0:	02002025 	move	a0,s0
  b4:	3c080000 	lui	t0,0x0
  b8:	8d080004 	lw	t0,4(t0)
  bc:	3c0a0000 	lui	t2,0x0
  c0:	254a0000 	addiu	t2,t2,0
  c4:	11000006 	beqz	t0,e0 <EnFu_Init+0xe0>
  c8:	240c0006 	li	t4,6
  cc:	3c090000 	lui	t1,0x0
  d0:	25290000 	addiu	t1,t1,0
  d4:	ae0902ac 	sw	t1,684(s0)
  d8:	10000007 	b	f8 <EnFu_Init+0xf8>
  dc:	a60002aa 	sh	zero,682(s0)
  e0:	3c014000 	lui	at,0x4000
  e4:	44812000 	mtc1	at,$f4
  e8:	240b0001 	li	t3,1
  ec:	ae0a02ac 	sw	t2,684(s0)
  f0:	a60b02aa 	sh	t3,682(s0)
  f4:	e60401b4 	swc1	$f4,436(s0)
  f8:	a60002a8 	sh	zero,680(s0)
  fc:	a20c001f 	sb	t4,31(s0)
 100:	8fbf002c 	lw	ra,44(sp)
 104:	8fb00028 	lw	s0,40(sp)
 108:	27bd0040 	addiu	sp,sp,64
 10c:	03e00008 	jr	ra
 110:	00000000 	nop

00000114 <EnFu_Destroy>:
 114:	27bdffe8 	addiu	sp,sp,-24
 118:	00803025 	move	a2,a0
 11c:	afbf0014 	sw	ra,20(sp)
 120:	00a02025 	move	a0,a1
 124:	0c000000 	jal	0 <EnFu_Init>
 128:	24c5014c 	addiu	a1,a2,332
 12c:	8fbf0014 	lw	ra,20(sp)
 130:	27bd0018 	addiu	sp,sp,24
 134:	03e00008 	jr	ra
 138:	00000000 	nop

0000013c <func_80A1D94C>:
 13c:	27bdffe8 	addiu	sp,sp,-24
 140:	afbf0014 	sw	ra,20(sp)
 144:	afa5001c 	sw	a1,28(sp)
 148:	afa60020 	sw	a2,32(sp)
 14c:	afa70024 	sw	a3,36(sp)
 150:	0c000000 	jal	0 <EnFu_Init>
 154:	afa40018 	sw	a0,24(sp)
 158:	10400005 	beqz	v0,170 <func_80A1D94C+0x34>
 15c:	8fa40018 	lw	a0,24(sp)
 160:	8fae0024 	lw	t6,36(sp)
 164:	24020001 	li	v0,1
 168:	1000001e 	b	1e4 <func_80A1D94C+0xa8>
 16c:	ac8e02ac 	sw	t6,684(a0)
 170:	8498008a 	lh	t8,138(a0)
 174:	849900b6 	lh	t9,182(a0)
 178:	97af0022 	lhu	t7,34(sp)
 17c:	03191023 	subu	v0,t8,t9
 180:	00021400 	sll	v0,v0,0x10
 184:	00021403 	sra	v0,v0,0x10
 188:	04400003 	bltz	v0,198 <func_80A1D94C+0x5c>
 18c:	a48f010e 	sh	t7,270(a0)
 190:	10000002 	b	19c <func_80A1D94C+0x60>
 194:	00401825 	move	v1,v0
 198:	00021823 	negu	v1,v0
 19c:	28612301 	slti	at,v1,8961
 1a0:	1020000c 	beqz	at,1d4 <func_80A1D94C+0x98>
 1a4:	3c0142c8 	lui	at,0x42c8
 1a8:	44810000 	mtc1	at,$f0
 1ac:	c4840090 	lwc1	$f4,144(a0)
 1b0:	4600203c 	c.lt.s	$f4,$f0
 1b4:	00000000 	nop
 1b8:	45020007 	bc1fl	1d8 <func_80A1D94C+0x9c>
 1bc:	948802a8 	lhu	t0,680(a0)
 1c0:	44060000 	mfc1	a2,$f0
 1c4:	0c000000 	jal	0 <EnFu_Init>
 1c8:	8fa5001c 	lw	a1,28(sp)
 1cc:	10000005 	b	1e4 <func_80A1D94C+0xa8>
 1d0:	00001025 	move	v0,zero
 1d4:	948802a8 	lhu	t0,680(a0)
 1d8:	35090001 	ori	t1,t0,0x1
 1dc:	a48902a8 	sh	t1,680(a0)
 1e0:	00001025 	move	v0,zero
 1e4:	8fbf0014 	lw	ra,20(sp)
 1e8:	27bd0018 	addiu	sp,sp,24
 1ec:	03e00008 	jr	ra
 1f0:	00000000 	nop

000001f4 <func_80A1DA04>:
 1f4:	27bdffd0 	addiu	sp,sp,-48
 1f8:	afbf002c 	sw	ra,44(sp)
 1fc:	afb00028 	sw	s0,40(sp)
 200:	0c000000 	jal	0 <EnFu_Init>
 204:	00808025 	move	s0,a0
 208:	1040001b 	beqz	v0,278 <func_80A1DA04+0x84>
 20c:	3c180000 	lui	t8,0x0
 210:	960e02a8 	lhu	t6,680(s0)
 214:	8e0801a0 	lw	t0,416(s0)
 218:	3c190000 	lui	t9,0x0
 21c:	27180000 	addiu	t8,t8,0
 220:	27390000 	addiu	t9,t9,0
 224:	31cffffd 	andi	t7,t6,0xfffd
 228:	a60f02a8 	sh	t7,680(s0)
 22c:	17280012 	bne	t9,t0,278 <func_80A1DA04+0x84>
 230:	ae1802ac 	sw	t8,684(s0)
 234:	3c040000 	lui	a0,0x0
 238:	0c000000 	jal	0 <EnFu_Init>
 23c:	24840000 	addiu	a0,a0,0
 240:	44822000 	mtc1	v0,$f4
 244:	3c01c080 	lui	at,0xc080
 248:	44814000 	mtc1	at,$f8
 24c:	468021a0 	cvt.s.w	$f6,$f4
 250:	3c050000 	lui	a1,0x0
 254:	24090002 	li	t1,2
 258:	afa90014 	sw	t1,20(sp)
 25c:	24a50000 	addiu	a1,a1,0
 260:	26040198 	addiu	a0,s0,408
 264:	e7a60010 	swc1	$f6,16(sp)
 268:	3c063f80 	lui	a2,0x3f80
 26c:	24070000 	li	a3,0
 270:	0c000000 	jal	0 <EnFu_Init>
 274:	e7a80018 	swc1	$f8,24(sp)
 278:	8fbf002c 	lw	ra,44(sp)
 27c:	8fb00028 	lw	s0,40(sp)
 280:	27bd0030 	addiu	sp,sp,48
 284:	03e00008 	jr	ra
 288:	00000000 	nop

0000028c <EnFu_WaitChild>:
 28c:	27bdffd0 	addiu	sp,sp,-48
 290:	afa40030 	sw	a0,48(sp)
 294:	afbf0024 	sw	ra,36(sp)
 298:	afa50034 	sw	a1,52(sp)
 29c:	00a02025 	move	a0,a1
 2a0:	0c000000 	jal	0 <EnFu_Init>
 2a4:	2405000b 	li	a1,11
 2a8:	14400009 	bnez	v0,2d0 <EnFu_WaitChild+0x44>
 2ac:	3046ffff 	andi	a2,v0,0xffff
 2b0:	3c0e0000 	lui	t6,0x0
 2b4:	95ce0ee0 	lhu	t6,3808(t6)
 2b8:	24065032 	li	a2,20530
 2bc:	31cf0080 	andi	t7,t6,0x80
 2c0:	11e00003 	beqz	t7,2d0 <EnFu_WaitChild+0x44>
 2c4:	00000000 	nop
 2c8:	10000001 	b	2d0 <EnFu_WaitChild+0x44>
 2cc:	24065033 	li	a2,20531
 2d0:	3c070000 	lui	a3,0x0
 2d4:	24e70000 	addiu	a3,a3,0
 2d8:	8fa40030 	lw	a0,48(sp)
 2dc:	8fa50034 	lw	a1,52(sp)
 2e0:	0c000000 	jal	0 <EnFu_Init>
 2e4:	a7a6002e 	sh	a2,46(sp)
 2e8:	10400015 	beqz	v0,340 <EnFu_WaitChild+0xb4>
 2ec:	97a6002e 	lhu	a2,46(sp)
 2f0:	24015033 	li	at,20531
 2f4:	14c10012 	bne	a2,at,340 <EnFu_WaitChild+0xb4>
 2f8:	3c040000 	lui	a0,0x0
 2fc:	0c000000 	jal	0 <EnFu_Init>
 300:	24840000 	addiu	a0,a0,0
 304:	44822000 	mtc1	v0,$f4
 308:	3c01c080 	lui	at,0xc080
 30c:	44814000 	mtc1	at,$f8
 310:	468021a0 	cvt.s.w	$f6,$f4
 314:	8fa40030 	lw	a0,48(sp)
 318:	3c050000 	lui	a1,0x0
 31c:	24180002 	li	t8,2
 320:	afb80014 	sw	t8,20(sp)
 324:	24a50000 	addiu	a1,a1,0
 328:	e7a60010 	swc1	$f6,16(sp)
 32c:	3c063f80 	lui	a2,0x3f80
 330:	24070000 	li	a3,0
 334:	e7a80018 	swc1	$f8,24(sp)
 338:	0c000000 	jal	0 <EnFu_Init>
 33c:	24840198 	addiu	a0,a0,408
 340:	8fbf0024 	lw	ra,36(sp)
 344:	27bd0030 	addiu	sp,sp,48
 348:	03e00008 	jr	ra
 34c:	00000000 	nop

00000350 <func_80A1DB60>:
 350:	90ae1d6c 	lbu	t6,7532(a1)
 354:	3c020000 	lui	v0,0x0
 358:	24420000 	addiu	v0,v0,0
 35c:	15c0000a 	bnez	t6,388 <func_80A1DB60+0x38>
 360:	3c0f0000 	lui	t7,0x0
 364:	25ef0000 	addiu	t7,t7,0
 368:	ac8f02ac 	sw	t7,684(a0)
 36c:	94580ede 	lhu	t8,3806(v0)
 370:	3c010001 	lui	at,0x1
 374:	00250821 	addu	at,at,a1
 378:	37190800 	ori	t9,t8,0x800
 37c:	a4590ede 	sh	t9,3806(v0)
 380:	24080004 	li	t0,4
 384:	a42804c6 	sh	t0,1222(at)
 388:	03e00008 	jr	ra
 38c:	00000000 	nop

00000390 <func_80A1DBA0>:
 390:	27bdffe8 	addiu	sp,sp,-24
 394:	afbf0014 	sw	ra,20(sp)
 398:	0c000000 	jal	0 <EnFu_Init>
 39c:	afa40018 	sw	a0,24(sp)
 3a0:	10400004 	beqz	v0,3b4 <func_80A1DBA0+0x24>
 3a4:	8faf0018 	lw	t7,24(sp)
 3a8:	3c0e0000 	lui	t6,0x0
 3ac:	25ce0000 	addiu	t6,t6,0
 3b0:	adee02ac 	sw	t6,684(t7)
 3b4:	8fbf0014 	lw	ra,20(sp)
 3b8:	27bd0018 	addiu	sp,sp,24
 3bc:	03e00008 	jr	ra
 3c0:	00000000 	nop

000003c4 <func_80A1DBD4>:
 3c4:	27bdffe8 	addiu	sp,sp,-24
 3c8:	3c020001 	lui	v0,0x1
 3cc:	afbf0014 	sw	ra,20(sp)
 3d0:	00451021 	addu	v0,v0,a1
 3d4:	944204c6 	lhu	v0,1222(v0)
 3d8:	00803025 	move	a2,a0
 3dc:	00a03825 	move	a3,a1
 3e0:	28410004 	slti	at,v0,4
 3e4:	1420000e 	bnez	at,420 <func_80A1DBD4+0x5c>
 3e8:	8ca31c44 	lw	v1,7236(a1)
 3ec:	3c0e0000 	lui	t6,0x0
 3f0:	25ce0000 	addiu	t6,t6,0
 3f4:	3c010001 	lui	at,0x1
 3f8:	ac8e02ac 	sw	t6,684(a0)
 3fc:	00250821 	addu	at,at,a1
 400:	240f0004 	li	t7,4
 404:	a42f04c6 	sh	t7,1222(at)
 408:	8c980004 	lw	t8,4(a0)
 40c:	3c01fffe 	lui	at,0xfffe
 410:	3421ffff 	ori	at,at,0xffff
 414:	0301c824 	and	t9,t8,at
 418:	10000042 	b	524 <func_80A1DBD4+0x160>
 41c:	ac990004 	sw	t9,4(a0)
 420:	24010003 	li	at,3
 424:	1441002c 	bne	v0,at,4d8 <func_80A1DBD4+0x114>
 428:	24044802 	li	a0,18434
 42c:	afa60018 	sw	a2,24(sp)
 430:	0c000000 	jal	0 <EnFu_Init>
 434:	afa7001c 	sw	a3,28(sp)
 438:	8fa60018 	lw	a2,24(sp)
 43c:	3c020000 	lui	v0,0x0
 440:	3c01fffe 	lui	at,0xfffe
 444:	8cc90004 	lw	t1,4(a2)
 448:	24420000 	addiu	v0,v0,0
 44c:	3421ffff 	ori	at,at,0xffff
 450:	00025900 	sll	t3,v0,0x4
 454:	8fa4001c 	lw	a0,28(sp)
 458:	3c080000 	lui	t0,0x0
 45c:	000b6702 	srl	t4,t3,0x1c
 460:	01215024 	and	t2,t1,at
 464:	25080000 	addiu	t0,t0,0
 468:	000c6880 	sll	t5,t4,0x2
 46c:	3c0e0000 	lui	t6,0x0
 470:	01cd7021 	addu	t6,t6,t5
 474:	3c0100ff 	lui	at,0xff
 478:	acc802ac 	sw	t0,684(a2)
 47c:	acca0004 	sw	t2,4(a2)
 480:	8dce0000 	lw	t6,0(t6)
 484:	3421ffff 	ori	at,at,0xffff
 488:	00417824 	and	t7,v0,at
 48c:	3c018000 	lui	at,0x8000
 490:	01cfc021 	addu	t8,t6,t7
 494:	0301c821 	addu	t9,t8,at
 498:	3c010000 	lui	at,0x0
 49c:	24080001 	li	t0,1
 4a0:	ac991d68 	sw	t9,7528(a0)
 4a4:	a0281414 	sb	t0,5140(at)
 4a8:	0c000000 	jal	0 <EnFu_Init>
 4ac:	24050065 	li	a1,101
 4b0:	8fa7001c 	lw	a3,28(sp)
 4b4:	3c010001 	lui	at,0x1
 4b8:	3c020000 	lui	v0,0x0
 4bc:	00270821 	addu	at,at,a3
 4c0:	24420000 	addiu	v0,v0,0
 4c4:	a42004c6 	sh	zero,1222(at)
 4c8:	94490ee0 	lhu	t1,3808(v0)
 4cc:	352a0020 	ori	t2,t1,0x20
 4d0:	10000014 	b	524 <func_80A1DBD4+0x160>
 4d4:	a44a0ee0 	sh	t2,3808(v0)
 4d8:	24010002 	li	at,2
 4dc:	5441000b 	bnel	v0,at,50c <func_80A1DBD4+0x148>
 4e0:	24010001 	li	at,1
 4e4:	8c6b0680 	lw	t3,1664(v1)
 4e8:	3c01feff 	lui	at,0xfeff
 4ec:	3421ffff 	ori	at,at,0xffff
 4f0:	3c0d0000 	lui	t5,0x0
 4f4:	01616024 	and	t4,t3,at
 4f8:	ac6c0680 	sw	t4,1664(v1)
 4fc:	25ad0000 	addiu	t5,t5,0
 500:	10000008 	b	524 <func_80A1DBD4+0x160>
 504:	accd02ac 	sw	t5,684(a2)
 508:	24010001 	li	at,1
 50c:	54410006 	bnel	v0,at,528 <func_80A1DBD4+0x164>
 510:	8fbf0014 	lw	ra,20(sp)
 514:	8c6e0680 	lw	t6,1664(v1)
 518:	3c010080 	lui	at,0x80
 51c:	01c17825 	or	t7,t6,at
 520:	ac6f0680 	sw	t7,1664(v1)
 524:	8fbf0014 	lw	ra,20(sp)
 528:	27bd0018 	addiu	sp,sp,24
 52c:	03e00008 	jr	ra
 530:	00000000 	nop

00000534 <EnFu_WaitForPlayback>:
 534:	27bdffe8 	addiu	sp,sp,-24
 538:	afbf0014 	sw	ra,20(sp)
 53c:	afa40018 	sw	a0,24(sp)
 540:	8ca21c44 	lw	v0,7236(a1)
 544:	3c010080 	lui	at,0x80
 548:	24a420d8 	addiu	a0,a1,8408
 54c:	8c4e0680 	lw	t6,1664(v0)
 550:	01c17825 	or	t7,t6,at
 554:	ac4f0680 	sw	t7,1664(v0)
 558:	0c000000 	jal	0 <EnFu_Init>
 55c:	afa5001c 	sw	a1,28(sp)
 560:	24010007 	li	at,7
 564:	14410008 	bne	v0,at,588 <EnFu_WaitForPlayback+0x54>
 568:	8fa6001c 	lw	a2,28(sp)
 56c:	00c02025 	move	a0,a2
 570:	0c000000 	jal	0 <EnFu_Init>
 574:	2405001a 	li	a1,26
 578:	8fb90018 	lw	t9,24(sp)
 57c:	3c180000 	lui	t8,0x0
 580:	27180000 	addiu	t8,t8,0
 584:	af3802ac 	sw	t8,684(t9)
 588:	8fbf0014 	lw	ra,20(sp)
 58c:	27bd0018 	addiu	sp,sp,24
 590:	03e00008 	jr	ra
 594:	00000000 	nop

00000598 <EnFu_TeachSong>:
 598:	27bdffe8 	addiu	sp,sp,-24
 59c:	afbf0014 	sw	ra,20(sp)
 5a0:	afa40018 	sw	a0,24(sp)
 5a4:	8ca21c44 	lw	v0,7236(a1)
 5a8:	3c010080 	lui	at,0x80
 5ac:	24a420d8 	addiu	a0,a1,8408
 5b0:	8c4e0680 	lw	t6,1664(v0)
 5b4:	01c17825 	or	t7,t6,at
 5b8:	ac4f0680 	sw	t7,1664(v0)
 5bc:	0c000000 	jal	0 <EnFu_Init>
 5c0:	afa5001c 	sw	a1,28(sp)
 5c4:	24010002 	li	at,2
 5c8:	5441000f 	bnel	v0,at,608 <EnFu_TeachSong+0x70>
 5cc:	8fbf0014 	lw	ra,20(sp)
 5d0:	8fa20018 	lw	v0,24(sp)
 5d4:	24040004 	li	a0,4
 5d8:	945802a8 	lhu	t8,680(v0)
 5dc:	3319fffd 	andi	t9,t8,0xfffd
 5e0:	0c000000 	jal	0 <EnFu_Init>
 5e4:	a45902a8 	sh	t9,680(v0)
 5e8:	8fa4001c 	lw	a0,28(sp)
 5ec:	0c000000 	jal	0 <EnFu_Init>
 5f0:	2405000d 	li	a1,13
 5f4:	8fa90018 	lw	t1,24(sp)
 5f8:	3c080000 	lui	t0,0x0
 5fc:	25080000 	addiu	t0,t0,0
 600:	ad2802ac 	sw	t0,684(t1)
 604:	8fbf0014 	lw	ra,20(sp)
 608:	27bd0018 	addiu	sp,sp,24
 60c:	03e00008 	jr	ra
 610:	00000000 	nop

00000614 <EnFu_WaitAdult>:
 614:	27bdffd8 	addiu	sp,sp,-40
 618:	afbf001c 	sw	ra,28(sp)
 61c:	afb10018 	sw	s1,24(sp)
 620:	afb00014 	sw	s0,20(sp)
 624:	3c190000 	lui	t9,0x0
 628:	848f00b6 	lh	t7,182(a0)
 62c:	848e008a 	lh	t6,138(a0)
 630:	97390ede 	lhu	t9,3806(t9)
 634:	8ca31c44 	lw	v1,7236(a1)
 638:	3c010000 	lui	at,0x0
 63c:	01cfc023 	subu	t8,t6,t7
 640:	33280800 	andi	t0,t9,0x800
 644:	00808025 	move	s0,a0
 648:	00a08825 	move	s1,a1
 64c:	11000007 	beqz	t0,66c <EnFu_WaitAdult+0x58>
 650:	a4380000 	sh	t8,0(at)
 654:	3c070000 	lui	a3,0x0
 658:	24e70000 	addiu	a3,a3,0
 65c:	0c000000 	jal	0 <EnFu_Init>
 660:	2406508e 	li	a2,20622
 664:	10000039 	b	74c <EnFu_WaitAdult+0x138>
 668:	8fbf001c 	lw	ra,28(sp)
 66c:	8c690680 	lw	t1,1664(v1)
 670:	240b5035 	li	t3,20533
 674:	02002025 	move	a0,s0
 678:	000951c0 	sll	t2,t1,0x7
 67c:	0541000d 	bgez	t2,6b4 <EnFu_WaitAdult+0xa0>
 680:	02202825 	move	a1,s1
 684:	a60b010e 	sh	t3,270(s0)
 688:	02202025 	move	a0,s1
 68c:	3165ffff 	andi	a1,t3,0xffff
 690:	0c000000 	jal	0 <EnFu_Init>
 694:	00003025 	move	a2,zero
 698:	960d02a8 	lhu	t5,680(s0)
 69c:	3c0c0000 	lui	t4,0x0
 6a0:	258c0000 	addiu	t4,t4,0
 6a4:	35ae0002 	ori	t6,t5,0x2
 6a8:	ae0c02ac 	sw	t4,684(s0)
 6ac:	10000026 	b	748 <EnFu_WaitAdult+0x134>
 6b0:	a60e02a8 	sh	t6,680(s0)
 6b4:	0c000000 	jal	0 <EnFu_Init>
 6b8:	afa30024 	sw	v1,36(sp)
 6bc:	10400005 	beqz	v0,6d4 <EnFu_WaitAdult+0xc0>
 6c0:	8fa30024 	lw	v1,36(sp)
 6c4:	3c0f0000 	lui	t7,0x0
 6c8:	25ef0000 	addiu	t7,t7,0
 6cc:	1000001e 	b	748 <EnFu_WaitAdult+0x134>
 6d0:	ae0f02ac 	sw	t7,684(s0)
 6d4:	3c180000 	lui	t8,0x0
 6d8:	87180000 	lh	t8,0(t8)
 6dc:	3c020000 	lui	v0,0x0
 6e0:	07000003 	bltz	t8,6f0 <EnFu_WaitAdult+0xdc>
 6e4:	00000000 	nop
 6e8:	10000003 	b	6f8 <EnFu_WaitAdult+0xe4>
 6ec:	03001025 	move	v0,t8
 6f0:	84420000 	lh	v0,0(v0)
 6f4:	00021023 	negu	v0,v0
 6f8:	28412301 	slti	at,v0,8961
 6fc:	10200012 	beqz	at,748 <EnFu_WaitAdult+0x134>
 700:	3c0142c8 	lui	at,0x42c8
 704:	44810000 	mtc1	at,$f0
 708:	c6040090 	lwc1	$f4,144(s0)
 70c:	24195034 	li	t9,20532
 710:	02002025 	move	a0,s0
 714:	4600203c 	c.lt.s	$f4,$f0
 718:	02202825 	move	a1,s1
 71c:	4502000b 	bc1fl	74c <EnFu_WaitAdult+0x138>
 720:	8fbf001c 	lw	ra,28(sp)
 724:	a619010e 	sh	t9,270(s0)
 728:	44060000 	mfc1	a2,$f0
 72c:	0c000000 	jal	0 <EnFu_Init>
 730:	afa30024 	sw	v1,36(sp)
 734:	8fa30024 	lw	v1,36(sp)
 738:	3c010080 	lui	at,0x80
 73c:	8c680680 	lw	t0,1664(v1)
 740:	01014825 	or	t1,t0,at
 744:	ac690680 	sw	t1,1664(v1)
 748:	8fbf001c 	lw	ra,28(sp)
 74c:	8fb00014 	lw	s0,20(sp)
 750:	8fb10018 	lw	s1,24(sp)
 754:	03e00008 	jr	ra
 758:	27bd0028 	addiu	sp,sp,40

0000075c <EnFu_Update>:
 75c:	27bdffc0 	addiu	sp,sp,-64
 760:	afb00028 	sw	s0,40(sp)
 764:	00808025 	move	s0,a0
 768:	afbf002c 	sw	ra,44(sp)
 76c:	afa50044 	sw	a1,68(sp)
 770:	2606014c 	addiu	a2,s0,332
 774:	00c02825 	move	a1,a2
 778:	0c000000 	jal	0 <EnFu_Init>
 77c:	afa60030 	sw	a2,48(sp)
 780:	8fa40044 	lw	a0,68(sp)
 784:	3c010001 	lui	at,0x1
 788:	34211e60 	ori	at,at,0x1e60
 78c:	8fa60030 	lw	a2,48(sp)
 790:	0c000000 	jal	0 <EnFu_Init>
 794:	00812821 	addu	a1,a0,at
 798:	0c000000 	jal	0 <EnFu_Init>
 79c:	02002025 	move	a0,s0
 7a0:	44800000 	mtc1	zero,$f0
 7a4:	240e0004 	li	t6,4
 7a8:	afae0014 	sw	t6,20(sp)
 7ac:	44060000 	mfc1	a2,$f0
 7b0:	44070000 	mfc1	a3,$f0
 7b4:	8fa40044 	lw	a0,68(sp)
 7b8:	02002825 	move	a1,s0
 7bc:	0c000000 	jal	0 <EnFu_Init>
 7c0:	e7a00010 	swc1	$f0,16(sp)
 7c4:	960f02a8 	lhu	t7,680(s0)
 7c8:	26040198 	addiu	a0,s0,408
 7cc:	31f80002 	andi	t8,t7,0x2
 7d0:	57000014 	bnezl	t8,824 <EnFu_Update+0xc8>
 7d4:	8e1902ac 	lw	t9,684(s0)
 7d8:	0c000000 	jal	0 <EnFu_Init>
 7dc:	afa40030 	sw	a0,48(sp)
 7e0:	50400010 	beqzl	v0,824 <EnFu_Update+0xc8>
 7e4:	8e1902ac 	lw	t9,684(s0)
 7e8:	0c000000 	jal	0 <EnFu_Init>
 7ec:	8e0401a0 	lw	a0,416(s0)
 7f0:	44822000 	mtc1	v0,$f4
 7f4:	44800000 	mtc1	zero,$f0
 7f8:	8e0501a0 	lw	a1,416(s0)
 7fc:	468021a0 	cvt.s.w	$f6,$f4
 800:	24190002 	li	t9,2
 804:	44070000 	mfc1	a3,$f0
 808:	afb90014 	sw	t9,20(sp)
 80c:	8fa40030 	lw	a0,48(sp)
 810:	3c063f80 	lui	a2,0x3f80
 814:	e7a60010 	swc1	$f6,16(sp)
 818:	0c000000 	jal	0 <EnFu_Init>
 81c:	e7a00018 	swc1	$f0,24(sp)
 820:	8e1902ac 	lw	t9,684(s0)
 824:	02002025 	move	a0,s0
 828:	8fa50044 	lw	a1,68(sp)
 82c:	0320f809 	jalr	t9
 830:	00000000 	nop
 834:	960802a8 	lhu	t0,680(s0)
 838:	2604029c 	addiu	a0,s0,668
 83c:	00002825 	move	a1,zero
 840:	31090001 	andi	t1,t0,0x1
 844:	1120001e 	beqz	t1,8c0 <EnFu_Update+0x164>
 848:	24060006 	li	a2,6
 84c:	240a0064 	li	t2,100
 850:	afaa0010 	sw	t2,16(sp)
 854:	0c000000 	jal	0 <EnFu_Init>
 858:	24071838 	li	a3,6200
 85c:	240b0064 	li	t3,100
 860:	afab0010 	sw	t3,16(sp)
 864:	2604029e 	addiu	a0,s0,670
 868:	00002825 	move	a1,zero
 86c:	24060006 	li	a2,6
 870:	0c000000 	jal	0 <EnFu_Init>
 874:	24071838 	li	a3,6200
 878:	240c0064 	li	t4,100
 87c:	afac0010 	sw	t4,16(sp)
 880:	260402a2 	addiu	a0,s0,674
 884:	00002825 	move	a1,zero
 888:	24060006 	li	a2,6
 88c:	0c000000 	jal	0 <EnFu_Init>
 890:	24071838 	li	a3,6200
 894:	240d0064 	li	t5,100
 898:	afad0010 	sw	t5,16(sp)
 89c:	260402a4 	addiu	a0,s0,676
 8a0:	00002825 	move	a1,zero
 8a4:	24060006 	li	a2,6
 8a8:	0c000000 	jal	0 <EnFu_Init>
 8ac:	24071838 	li	a3,6200
 8b0:	960e02a8 	lhu	t6,680(s0)
 8b4:	31cffffe 	andi	t7,t6,0xfffe
 8b8:	1000000c 	b	8ec <EnFu_Update+0x190>
 8bc:	a60f02a8 	sh	t7,680(s0)
 8c0:	8e190038 	lw	t9,56(s0)
 8c4:	8fa40044 	lw	a0,68(sp)
 8c8:	02002825 	move	a1,s0
 8cc:	afb90010 	sw	t9,16(sp)
 8d0:	8e18003c 	lw	t8,60(s0)
 8d4:	2606029c 	addiu	a2,s0,668
 8d8:	260702a2 	addiu	a3,s0,674
 8dc:	afb80014 	sw	t8,20(sp)
 8e0:	8e190040 	lw	t9,64(s0)
 8e4:	0c000000 	jal	0 <EnFu_Init>
 8e8:	afb90018 	sw	t9,24(sp)
 8ec:	8fbf002c 	lw	ra,44(sp)
 8f0:	8fb00028 	lw	s0,40(sp)
 8f4:	27bd0040 	addiu	sp,sp,64
 8f8:	03e00008 	jr	ra
 8fc:	00000000 	nop

00000900 <EnFu_OverrideLimbDraw>:
 900:	27bdffd0 	addiu	sp,sp,-48
 904:	2401000a 	li	at,10
 908:	afbf0014 	sw	ra,20(sp)
 90c:	afa40030 	sw	a0,48(sp)
 910:	afa60038 	sw	a2,56(sp)
 914:	14a10003 	bne	a1,at,924 <EnFu_OverrideLimbDraw+0x24>
 918:	afa7003c 	sw	a3,60(sp)
 91c:	1000004b 	b	a4c <EnFu_OverrideLimbDraw+0x14c>
 920:	00001025 	move	v0,zero
 924:	24040008 	li	a0,8
 928:	10a40010 	beq	a1,a0,96c <EnFu_OverrideLimbDraw+0x6c>
 92c:	8fa30044 	lw	v1,68(sp)
 930:	2401000e 	li	at,14
 934:	10a10003 	beq	a1,at,944 <EnFu_OverrideLimbDraw+0x44>
 938:	8fa20040 	lw	v0,64(sp)
 93c:	1000000b 	b	96c <EnFu_OverrideLimbDraw+0x6c>
 940:	8fa30044 	lw	v1,68(sp)
 944:	8fa30044 	lw	v1,68(sp)
 948:	844e0000 	lh	t6,0(v0)
 94c:	84590004 	lh	t9,4(v0)
 950:	846f029e 	lh	t7,670(v1)
 954:	01cfc021 	addu	t8,t6,t7
 958:	a4580000 	sh	t8,0(v0)
 95c:	8468029c 	lh	t0,668(v1)
 960:	03284821 	addu	t1,t9,t0
 964:	10000001 	b	96c <EnFu_OverrideLimbDraw+0x6c>
 968:	a4490004 	sh	t1,4(v0)
 96c:	946a02a8 	lhu	t2,680(v1)
 970:	314b0002 	andi	t3,t2,0x2
 974:	15600003 	bnez	t3,984 <EnFu_OverrideLimbDraw+0x84>
 978:	00000000 	nop
 97c:	10000033 	b	a4c <EnFu_OverrideLimbDraw+0x14c>
 980:	00001025 	move	v0,zero
 984:	14a40030 	bne	a1,a0,a48 <EnFu_OverrideLimbDraw+0x148>
 988:	00051880 	sll	v1,a1,0x2
 98c:	8fac0030 	lw	t4,48(sp)
 990:	00651823 	subu	v1,v1,a1
 994:	000318c0 	sll	v1,v1,0x3
 998:	8d8d009c 	lw	t5,156(t4)
 99c:	00651821 	addu	v1,v1,a1
 9a0:	00031840 	sll	v1,v1,0x1
 9a4:	246e0814 	addiu	t6,v1,2068
 9a8:	01ae0019 	multu	t5,t6
 9ac:	afa3001c 	sw	v1,28(sp)
 9b0:	00002012 	mflo	a0
 9b4:	00042400 	sll	a0,a0,0x10
 9b8:	0c000000 	jal	0 <EnFu_Init>
 9bc:	00042403 	sra	a0,a0,0x10
 9c0:	8fa20040 	lw	v0,64(sp)
 9c4:	3c014348 	lui	at,0x4348
 9c8:	44814000 	mtc1	at,$f8
 9cc:	844f0002 	lh	t7,2(v0)
 9d0:	8fa3001c 	lw	v1,28(sp)
 9d4:	46080282 	mul.s	$f10,$f0,$f8
 9d8:	448f2000 	mtc1	t7,$f4
 9dc:	246a0940 	addiu	t2,v1,2368
 9e0:	468021a0 	cvt.s.w	$f6,$f4
 9e4:	460a3400 	add.s	$f16,$f6,$f10
 9e8:	4600848d 	trunc.w.s	$f18,$f16
 9ec:	44199000 	mfc1	t9,$f18
 9f0:	00000000 	nop
 9f4:	a4590002 	sh	t9,2(v0)
 9f8:	8fa80030 	lw	t0,48(sp)
 9fc:	8d09009c 	lw	t1,156(t0)
 a00:	012a0019 	multu	t1,t2
 a04:	00002012 	mflo	a0
 a08:	00042400 	sll	a0,a0,0x10
 a0c:	0c000000 	jal	0 <EnFu_Init>
 a10:	00042403 	sra	a0,a0,0x10
 a14:	8fa20040 	lw	v0,64(sp)
 a18:	3c014348 	lui	at,0x4348
 a1c:	44813000 	mtc1	at,$f6
 a20:	844b0004 	lh	t3,4(v0)
 a24:	46060282 	mul.s	$f10,$f0,$f6
 a28:	448b2000 	mtc1	t3,$f4
 a2c:	00000000 	nop
 a30:	46802220 	cvt.s.w	$f8,$f4
 a34:	460a4400 	add.s	$f16,$f8,$f10
 a38:	4600848d 	trunc.w.s	$f18,$f16
 a3c:	440d9000 	mfc1	t5,$f18
 a40:	00000000 	nop
 a44:	a44d0004 	sh	t5,4(v0)
 a48:	00001025 	move	v0,zero
 a4c:	8fbf0014 	lw	ra,20(sp)
 a50:	27bd0030 	addiu	sp,sp,48
 a54:	03e00008 	jr	ra
 a58:	00000000 	nop

00000a5c <EnFu_PostLimbDraw>:
 a5c:	27bdffe8 	addiu	sp,sp,-24
 a60:	2401000e 	li	at,14
 a64:	afbf0014 	sw	ra,20(sp)
 a68:	afa40018 	sw	a0,24(sp)
 a6c:	afa60020 	sw	a2,32(sp)
 a70:	14a10006 	bne	a1,at,a8c <EnFu_PostLimbDraw+0x30>
 a74:	afa70024 	sw	a3,36(sp)
 a78:	8fa50028 	lw	a1,40(sp)
 a7c:	3c040000 	lui	a0,0x0
 a80:	2484004c 	addiu	a0,a0,76
 a84:	0c000000 	jal	0 <EnFu_Init>
 a88:	24a50038 	addiu	a1,a1,56
 a8c:	8fbf0014 	lw	ra,20(sp)
 a90:	27bd0018 	addiu	sp,sp,24
 a94:	03e00008 	jr	ra
 a98:	00000000 	nop

00000a9c <EnFu_Draw>:
 a9c:	27bdffa8 	addiu	sp,sp,-88
 aa0:	afbf002c 	sw	ra,44(sp)
 aa4:	afb00028 	sw	s0,40(sp)
 aa8:	afa5005c 	sw	a1,92(sp)
 aac:	8ca50000 	lw	a1,0(a1)
 ab0:	00808025 	move	s0,a0
 ab4:	3c060000 	lui	a2,0x0
 ab8:	24c60000 	addiu	a2,a2,0
 abc:	27a4003c 	addiu	a0,sp,60
 ac0:	24070305 	li	a3,773
 ac4:	0c000000 	jal	0 <EnFu_Init>
 ac8:	afa5004c 	sw	a1,76(sp)
 acc:	8faf005c 	lw	t7,92(sp)
 ad0:	0c000000 	jal	0 <EnFu_Init>
 ad4:	8de40000 	lw	a0,0(t7)
 ad8:	8fa8004c 	lw	t0,76(sp)
 adc:	3c19db06 	lui	t9,0xdb06
 ae0:	37390020 	ori	t9,t9,0x20
 ae4:	8d0302c0 	lw	v1,704(t0)
 ae8:	3c040000 	lui	a0,0x0
 aec:	3c060000 	lui	a2,0x0
 af0:	24780008 	addiu	t8,v1,8
 af4:	ad1802c0 	sw	t8,704(t0)
 af8:	ac790000 	sw	t9,0(v1)
 afc:	960902aa 	lhu	t1,682(s0)
 b00:	24c60000 	addiu	a2,a2,0
 b04:	3c0500ff 	lui	a1,0xff
 b08:	00095080 	sll	t2,t1,0x2
 b0c:	008a2021 	addu	a0,a0,t2
 b10:	8c840058 	lw	a0,88(a0)
 b14:	34a5ffff 	ori	a1,a1,0xffff
 b18:	3c078000 	lui	a3,0x8000
 b1c:	00046100 	sll	t4,a0,0x4
 b20:	000c6f02 	srl	t5,t4,0x1c
 b24:	000d7080 	sll	t6,t5,0x2
 b28:	00ce7821 	addu	t7,a2,t6
 b2c:	8df80000 	lw	t8,0(t7)
 b30:	00855824 	and	t3,a0,a1
 b34:	3c0cdb06 	lui	t4,0xdb06
 b38:	0178c821 	addu	t9,t3,t8
 b3c:	03274821 	addu	t1,t9,a3
 b40:	ac690004 	sw	t1,4(v1)
 b44:	8d0302c0 	lw	v1,704(t0)
 b48:	358c0024 	ori	t4,t4,0x24
 b4c:	3c040000 	lui	a0,0x0
 b50:	246a0008 	addiu	t2,v1,8
 b54:	ad0a02c0 	sw	t2,704(t0)
 b58:	ac6c0000 	sw	t4,0(v1)
 b5c:	960d02aa 	lhu	t5,682(s0)
 b60:	000d7080 	sll	t6,t5,0x2
 b64:	008e2021 	addu	a0,a0,t6
 b68:	8c840060 	lw	a0,96(a0)
 b6c:	3c0e0000 	lui	t6,0x0
 b70:	25ce0000 	addiu	t6,t6,0
 b74:	00045900 	sll	t3,a0,0x4
 b78:	000bc702 	srl	t8,t3,0x1c
 b7c:	0018c880 	sll	t9,t8,0x2
 b80:	00d94821 	addu	t1,a2,t9
 b84:	8d2a0000 	lw	t2,0(t1)
 b88:	00857824 	and	t7,a0,a1
 b8c:	3c0b0000 	lui	t3,0x0
 b90:	01ea6021 	addu	t4,t7,t2
 b94:	01876821 	addu	t5,t4,a3
 b98:	ac6d0004 	sw	t5,4(v1)
 b9c:	9207019a 	lbu	a3,410(s0)
 ba0:	8e0601b8 	lw	a2,440(s0)
 ba4:	8e05019c 	lw	a1,412(s0)
 ba8:	256b0000 	addiu	t3,t3,0
 bac:	afab0014 	sw	t3,20(sp)
 bb0:	afb00018 	sw	s0,24(sp)
 bb4:	afae0010 	sw	t6,16(sp)
 bb8:	0c000000 	jal	0 <EnFu_Init>
 bbc:	8fa4005c 	lw	a0,92(sp)
 bc0:	8fb8005c 	lw	t8,92(sp)
 bc4:	3c060000 	lui	a2,0x0
 bc8:	24c60010 	addiu	a2,a2,16
 bcc:	27a4003c 	addiu	a0,sp,60
 bd0:	24070317 	li	a3,791
 bd4:	0c000000 	jal	0 <EnFu_Init>
 bd8:	8f050000 	lw	a1,0(t8)
 bdc:	8fbf002c 	lw	ra,44(sp)
 be0:	8fb00028 	lw	s0,40(sp)
 be4:	27bd0058 	addiu	sp,sp,88
 be8:	03e00008 	jr	ra
 bec:	00000000 	nop
