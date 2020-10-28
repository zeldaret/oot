
build/src/overlays/actors/ovl_En_Changer/z_en_changer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnChanger_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <EnChanger_Init>:
   c:	27bdff88 	addiu	sp,sp,-120
  10:	afb20040 	sw	s2,64(sp)
  14:	3c010001 	lui	at,0x1
  18:	afbf0044 	sw	ra,68(sp)
  1c:	afb1003c 	sw	s1,60(sp)
  20:	afb00038 	sw	s0,56(sp)
  24:	00a19021 	addu	s2,a1,at
  28:	82431cbc 	lb	v1,7356(s2)
  2c:	00a08025 	move	s0,a1
  30:	00808825 	move	s1,a0
  34:	2463ffff 	addiu	v1,v1,-1
  38:	00031c00 	sll	v1,v1,0x10
  3c:	00031c03 	sra	v1,v1,0x10
  40:	04610002 	bgez	v1,4c <EnChanger_Init+0x40>
  44:	02002025 	move	a0,s0
  48:	00001825 	move	v1,zero
  4c:	3c0f0000 	lui	t7,0x0
  50:	25ef0000 	addiu	t7,t7,0
  54:	00037080 	sll	t6,v1,0x2
  58:	01cf1021 	addu	v0,t6,t7
  5c:	8c450000 	lw	a1,0(v0)
  60:	afa20054 	sw	v0,84(sp)
  64:	0c000000 	jal	0 <EnChanger_Destroy>
  68:	a7a30068 	sh	v1,104(sp)
  6c:	10400003 	beqz	v0,7c <EnChanger_Init+0x70>
  70:	87a30068 	lh	v1,104(sp)
  74:	24180001 	li	t8,1
  78:	a6380168 	sh	t8,360(s1)
  7c:	3c040000 	lui	a0,0x0
  80:	24840000 	addiu	a0,a0,0
  84:	0c000000 	jal	0 <EnChanger_Destroy>
  88:	a7a30068 	sh	v1,104(sp)
  8c:	3c040000 	lui	a0,0x0
  90:	24840000 	addiu	a0,a0,0
  94:	0c000000 	jal	0 <EnChanger_Destroy>
  98:	82451cbc 	lb	a1,7356(s2)
  9c:	3c040000 	lui	a0,0x0
  a0:	24840000 	addiu	a0,a0,0
  a4:	0c000000 	jal	0 <EnChanger_Destroy>
  a8:	8e051d38 	lw	a1,7480(s0)
  ac:	8fb90054 	lw	t9,84(sp)
  b0:	3c040000 	lui	a0,0x0
  b4:	24840000 	addiu	a0,a0,0
  b8:	0c000000 	jal	0 <EnChanger_Destroy>
  bc:	8f250000 	lw	a1,0(t9)
  c0:	3c040000 	lui	a0,0x0
  c4:	24840000 	addiu	a0,a0,0
  c8:	0c000000 	jal	0 <EnChanger_Destroy>
  cc:	86250168 	lh	a1,360(s1)
  d0:	3c040000 	lui	a0,0x0
  d4:	0c000000 	jal	0 <EnChanger_Destroy>
  d8:	24840000 	addiu	a0,a0,0
  dc:	87a30068 	lh	v1,104(sp)
  e0:	82491cbc 	lb	t1,7356(s2)
  e4:	3c0a0000 	lui	t2,0x0
  e8:	00031840 	sll	v1,v1,0x1
  ec:	00031c00 	sll	v1,v1,0x10
  f0:	29210006 	slti	at,t1,6
  f4:	14200053 	bnez	at,244 <EnChanger_Init+0x238>
  f8:	00031c03 	sra	v1,v1,0x10
  fc:	954a0ef2 	lhu	t2,3826(t2)
 100:	3c0141a0 	lui	at,0x41a0
 104:	44810000 	mtc1	at,$f0
 108:	314b0800 	andi	t3,t2,0x800
 10c:	11600003 	beqz	t3,11c <EnChanger_Init+0x110>
 110:	3c0d0000 	lui	t5,0x0
 114:	10000004 	b	128 <EnChanger_Init+0x11c>
 118:	24024ea0 	li	v0,20128
 11c:	240c4ec0 	li	t4,20160
 120:	a7ac006a 	sh	t4,106(sp)
 124:	24024ec0 	li	v0,20160
 128:	8dad0000 	lw	t5,0(t5)
 12c:	3c010000 	lui	at,0x0
 130:	c4240000 	lwc1	$f4,0(at)
 134:	01a21025 	or	v0,t5,v0
 138:	00021400 	sll	v0,v0,0x10
 13c:	00021403 	sra	v0,v0,0x10
 140:	26041c24 	addiu	a0,s0,7204
 144:	240e7fff 	li	t6,32767
 148:	afae0020 	sw	t6,32(sp)
 14c:	afa4004c 	sw	a0,76(sp)
 150:	afa20028 	sw	v0,40(sp)
 154:	a7a2006a 	sh	v0,106(sp)
 158:	02202825 	move	a1,s1
 15c:	02003025 	move	a2,s0
 160:	2407000a 	li	a3,10
 164:	e7a00010 	swc1	$f0,16(sp)
 168:	e7a00014 	swc1	$f0,20(sp)
 16c:	afa0001c 	sw	zero,28(sp)
 170:	afa00024 	sw	zero,36(sp)
 174:	a7a30068 	sh	v1,104(sp)
 178:	0c000000 	jal	0 <EnChanger_Destroy>
 17c:	e7a40018 	swc1	$f4,24(sp)
 180:	3c0141a0 	lui	at,0x41a0
 184:	44810000 	mtc1	at,$f0
 188:	87a30068 	lh	v1,104(sp)
 18c:	1040002d 	beqz	v0,244 <EnChanger_Init+0x238>
 190:	ae220158 	sw	v0,344(s1)
 194:	862f0168 	lh	t7,360(s1)
 198:	3c180000 	lui	t8,0x0
 19c:	8fa4004c 	lw	a0,76(sp)
 1a0:	11e00009 	beqz	t7,1c8 <EnChanger_Init+0x1bc>
 1a4:	02002825 	move	a1,s0
 1a8:	87a5006a 	lh	a1,106(sp)
 1ac:	02002025 	move	a0,s0
 1b0:	0c000000 	jal	0 <EnChanger_Destroy>
 1b4:	30a5001f 	andi	a1,a1,0x1f
 1b8:	0c000000 	jal	0 <EnChanger_Destroy>
 1bc:	02202025 	move	a0,s1
 1c0:	10000119 	b	628 <EnChanger_Init+0x61c>
 1c4:	8fbf0044 	lw	ra,68(sp)
 1c8:	97180ef2 	lhu	t8,3826(t8)
 1cc:	44070000 	mfc1	a3,$f0
 1d0:	2406010f 	li	a2,271
 1d4:	33190800 	andi	t9,t8,0x800
 1d8:	13200003 	beqz	t9,1e8 <EnChanger_Init+0x1dc>
 1dc:	3c010000 	lui	at,0x0
 1e0:	10000002 	b	1ec <EnChanger_Init+0x1e0>
 1e4:	2402000b 	li	v0,11
 1e8:	2402000c 	li	v0,12
 1ec:	3c090000 	lui	t1,0x0
 1f0:	8d290000 	lw	t1,0(t1)
 1f4:	c4260000 	lwc1	$f6,0(at)
 1f8:	304c00ff 	andi	t4,v0,0xff
 1fc:	312a001f 	andi	t2,t1,0x1f
 200:	000a5a00 	sll	t3,t2,0x8
 204:	016c6821 	addu	t5,t3,t4
 208:	afad0024 	sw	t5,36(sp)
 20c:	e7a00010 	swc1	$f0,16(sp)
 210:	afa00018 	sw	zero,24(sp)
 214:	afa0001c 	sw	zero,28(sp)
 218:	afa00020 	sw	zero,32(sp)
 21c:	0c000000 	jal	0 <EnChanger_Destroy>
 220:	e7a60014 	swc1	$f6,20(sp)
 224:	3c040000 	lui	a0,0x0
 228:	24840000 	addiu	a0,a0,0
 22c:	0c000000 	jal	0 <EnChanger_Destroy>
 230:	87a5006a 	lh	a1,106(sp)
 234:	3c0e0000 	lui	t6,0x0
 238:	25ce0000 	addiu	t6,t6,0
 23c:	100000f9 	b	624 <EnChanger_Init+0x618>
 240:	ae2e014c 	sw	t6,332(s1)
 244:	824f1cbc 	lb	t7,7356(s2)
 248:	3c060000 	lui	a2,0x0
 24c:	24c60000 	addiu	a2,a2,0
 250:	000fc080 	sll	t8,t7,0x2
 254:	00d8c821 	addu	t9,a2,t8
 258:	8f220000 	lw	v0,0(t9)
 25c:	a623015c 	sh	v1,348(s1)
 260:	82491cbc 	lb	t1,7356(s2)
 264:	3c0f0000 	lui	t7,0x0
 268:	34644e21 	ori	a0,v1,0x4e21
 26c:	00095080 	sll	t2,t1,0x2
 270:	00ca5821 	addu	t3,a2,t2
 274:	8d6c0000 	lw	t4,0(t3)
 278:	34650001 	ori	a1,v1,0x1
 27c:	24180071 	li	t8,113
 280:	a62c0160 	sh	t4,352(s1)
 284:	824d1cbc 	lb	t5,7356(s2)
 288:	a7a4006c 	sh	a0,108(sp)
 28c:	00021140 	sll	v0,v0,0x5
 290:	000d7080 	sll	t6,t5,0x2
 294:	01ee7821 	addu	t7,t7,t6
 298:	8def0000 	lw	t7,0(t7)
 29c:	34424000 	ori	v0,v0,0x4000
 2a0:	00021400 	sll	v0,v0,0x10
 2a4:	a7af0064 	sh	t7,100(sp)
 2a8:	a625015e 	sh	a1,350(s1)
 2ac:	a6380162 	sh	t8,354(s1)
 2b0:	00021403 	sra	v0,v0,0x10
 2b4:	00431025 	or	v0,v0,v1
 2b8:	00021400 	sll	v0,v0,0x10
 2bc:	00021403 	sra	v0,v0,0x10
 2c0:	2419000d 	li	t9,13
 2c4:	26091c24 	addiu	t1,s0,7204
 2c8:	3c010000 	lui	at,0x0
 2cc:	a7b90066 	sh	t9,102(sp)
 2d0:	c42c0000 	lwc1	$f12,0(at)
 2d4:	afa9004c 	sw	t1,76(sp)
 2d8:	a7a2006e 	sh	v0,110(sp)
 2dc:	afa50050 	sw	a1,80(sp)
 2e0:	afa40054 	sw	a0,84(sp)
 2e4:	0c000000 	jal	0 <EnChanger_Destroy>
 2e8:	a7a30068 	sh	v1,104(sp)
 2ec:	3c013f80 	lui	at,0x3f80
 2f0:	44814000 	mtc1	at,$f8
 2f4:	3c060000 	lui	a2,0x0
 2f8:	24c60000 	addiu	a2,a2,0
 2fc:	4608003c 	c.lt.s	$f0,$f8
 300:	87a30068 	lh	v1,104(sp)
 304:	8fa40054 	lw	a0,84(sp)
 308:	8fa50050 	lw	a1,80(sp)
 30c:	4500001f 	bc1f	38c <EnChanger_Init+0x380>
 310:	2407000a 	li	a3,10
 314:	824a1cbc 	lb	t2,7356(s2)
 318:	000a5880 	sll	t3,t2,0x2
 31c:	00cb6021 	addu	t4,a2,t3
 320:	8d880000 	lw	t0,0(t4)
 324:	a623015e 	sh	v1,350(s1)
 328:	824d1cbc 	lb	t5,7356(s2)
 32c:	3c0a0000 	lui	t2,0x0
 330:	00084140 	sll	t0,t0,0x5
 334:	000d7080 	sll	t6,t5,0x2
 338:	00ce7821 	addu	t7,a2,t6
 33c:	8df80000 	lw	t8,0(t7)
 340:	35084000 	ori	t0,t0,0x4000
 344:	00084400 	sll	t0,t0,0x10
 348:	a6380162 	sh	t8,354(s1)
 34c:	82591cbc 	lb	t9,7356(s2)
 350:	00084403 	sra	t0,t0,0x10
 354:	a7a4006e 	sh	a0,110(sp)
 358:	00194880 	sll	t1,t9,0x2
 35c:	01495021 	addu	t2,t2,t1
 360:	8d4a0000 	lw	t2,0(t2)
 364:	01034025 	or	t0,t0,v1
 368:	240b0071 	li	t3,113
 36c:	a7aa0066 	sh	t2,102(sp)
 370:	00084400 	sll	t0,t0,0x10
 374:	a625015c 	sh	a1,348(s1)
 378:	a62b0160 	sh	t3,352(s1)
 37c:	00084403 	sra	t0,t0,0x10
 380:	240c000d 	li	t4,13
 384:	a7ac0064 	sh	t4,100(sp)
 388:	a7a8006c 	sh	t0,108(sp)
 38c:	824d1cbc 	lb	t5,7356(s2)
 390:	3c0f0000 	lui	t7,0x0
 394:	25ef0000 	addiu	t7,t7,0
 398:	000d7080 	sll	t6,t5,0x2
 39c:	01cd7023 	subu	t6,t6,t5
 3a0:	000e7080 	sll	t6,t6,0x2
 3a4:	01cf1021 	addu	v0,t6,t7
 3a8:	c44a0000 	lwc1	$f10,0(v0)
 3ac:	c4500004 	lwc1	$f16,4(v0)
 3b0:	c4520008 	lwc1	$f18,8(v0)
 3b4:	87b9006e 	lh	t9,110(sp)
 3b8:	2418c001 	li	t8,-16383
 3bc:	afb80020 	sw	t8,32(sp)
 3c0:	afa00024 	sw	zero,36(sp)
 3c4:	afa0001c 	sw	zero,28(sp)
 3c8:	8fa4004c 	lw	a0,76(sp)
 3cc:	02202825 	move	a1,s1
 3d0:	02003025 	move	a2,s0
 3d4:	e7aa0010 	swc1	$f10,16(sp)
 3d8:	e7b00014 	swc1	$f16,20(sp)
 3dc:	e7b20018 	swc1	$f18,24(sp)
 3e0:	0c000000 	jal	0 <EnChanger_Destroy>
 3e4:	afb90028 	sw	t9,40(sp)
 3e8:	10400036 	beqz	v0,4c4 <EnChanger_Init+0x4b8>
 3ec:	ae220150 	sw	v0,336(s1)
 3f0:	3c040000 	lui	a0,0x0
 3f4:	24840000 	addiu	a0,a0,0
 3f8:	0c000000 	jal	0 <EnChanger_Destroy>
 3fc:	87a5006e 	lh	a1,110(sp)
 400:	3c040000 	lui	a0,0x0
 404:	24840000 	addiu	a0,a0,0
 408:	0c000000 	jal	0 <EnChanger_Destroy>
 40c:	82451cbc 	lb	a1,7356(s2)
 410:	3c040000 	lui	a0,0x0
 414:	24840000 	addiu	a0,a0,0
 418:	0c000000 	jal	0 <EnChanger_Destroy>
 41c:	8625015e 	lh	a1,350(s1)
 420:	3c040000 	lui	a0,0x0
 424:	24840000 	addiu	a0,a0,0
 428:	0c000000 	jal	0 <EnChanger_Destroy>
 42c:	87a50066 	lh	a1,102(sp)
 430:	3c040000 	lui	a0,0x0
 434:	0c000000 	jal	0 <EnChanger_Destroy>
 438:	24840000 	addiu	a0,a0,0
 43c:	86290168 	lh	t1,360(s1)
 440:	8fa4004c 	lw	a0,76(sp)
 444:	02002825 	move	a1,s0
 448:	11200007 	beqz	t1,468 <EnChanger_Init+0x45c>
 44c:	2406010f 	li	a2,271
 450:	8625015c 	lh	a1,348(s1)
 454:	02002025 	move	a0,s0
 458:	0c000000 	jal	0 <EnChanger_Destroy>
 45c:	30a5001f 	andi	a1,a1,0x1f
 460:	10000019 	b	4c8 <EnChanger_Init+0x4bc>
 464:	824a1cbc 	lb	t2,7356(s2)
 468:	824a1cbc 	lb	t2,7356(s2)
 46c:	3c0c0000 	lui	t4,0x0
 470:	258c0000 	addiu	t4,t4,0
 474:	000a5880 	sll	t3,t2,0x2
 478:	016a5823 	subu	t3,t3,t2
 47c:	000b5880 	sll	t3,t3,0x2
 480:	016c1021 	addu	v0,t3,t4
 484:	c4440004 	lwc1	$f4,4(v0)
 488:	c4460008 	lwc1	$f6,8(v0)
 48c:	afa00020 	sw	zero,32(sp)
 490:	afa0001c 	sw	zero,28(sp)
 494:	afa00018 	sw	zero,24(sp)
 498:	e7a40010 	swc1	$f4,16(sp)
 49c:	e7a60014 	swc1	$f6,20(sp)
 4a0:	862d015c 	lh	t5,348(s1)
 4a4:	87b80064 	lh	t8,100(sp)
 4a8:	8c470000 	lw	a3,0(v0)
 4ac:	31ae001f 	andi	t6,t5,0x1f
 4b0:	000e7a00 	sll	t7,t6,0x8
 4b4:	331900ff 	andi	t9,t8,0xff
 4b8:	01f94821 	addu	t1,t7,t9
 4bc:	0c000000 	jal	0 <EnChanger_Destroy>
 4c0:	afa90024 	sw	t1,36(sp)
 4c4:	824a1cbc 	lb	t2,7356(s2)
 4c8:	3c0c0000 	lui	t4,0x0
 4cc:	258c0000 	addiu	t4,t4,0
 4d0:	000a5880 	sll	t3,t2,0x2
 4d4:	016a5823 	subu	t3,t3,t2
 4d8:	000b5880 	sll	t3,t3,0x2
 4dc:	016c1021 	addu	v0,t3,t4
 4e0:	c4480000 	lwc1	$f8,0(v0)
 4e4:	c44a0004 	lwc1	$f10,4(v0)
 4e8:	c4500008 	lwc1	$f16,8(v0)
 4ec:	87ae006c 	lh	t6,108(sp)
 4f0:	240d3fff 	li	t5,16383
 4f4:	afad0020 	sw	t5,32(sp)
 4f8:	afa00024 	sw	zero,36(sp)
 4fc:	afa0001c 	sw	zero,28(sp)
 500:	8fa4004c 	lw	a0,76(sp)
 504:	02202825 	move	a1,s1
 508:	02003025 	move	a2,s0
 50c:	2407000a 	li	a3,10
 510:	e7a80010 	swc1	$f8,16(sp)
 514:	e7aa0014 	swc1	$f10,20(sp)
 518:	e7b00018 	swc1	$f16,24(sp)
 51c:	0c000000 	jal	0 <EnChanger_Destroy>
 520:	afae0028 	sw	t6,40(sp)
 524:	10400038 	beqz	v0,608 <EnChanger_Init+0x5fc>
 528:	ae220154 	sw	v0,340(s1)
 52c:	3c040000 	lui	a0,0x0
 530:	24840000 	addiu	a0,a0,0
 534:	0c000000 	jal	0 <EnChanger_Destroy>
 538:	87a5006c 	lh	a1,108(sp)
 53c:	3c040000 	lui	a0,0x0
 540:	24840000 	addiu	a0,a0,0
 544:	0c000000 	jal	0 <EnChanger_Destroy>
 548:	82451cbc 	lb	a1,7356(s2)
 54c:	3c040000 	lui	a0,0x0
 550:	24840000 	addiu	a0,a0,0
 554:	0c000000 	jal	0 <EnChanger_Destroy>
 558:	8625015c 	lh	a1,348(s1)
 55c:	3c040000 	lui	a0,0x0
 560:	24840000 	addiu	a0,a0,0
 564:	0c000000 	jal	0 <EnChanger_Destroy>
 568:	87a50064 	lh	a1,100(sp)
 56c:	3c040000 	lui	a0,0x0
 570:	0c000000 	jal	0 <EnChanger_Destroy>
 574:	24840000 	addiu	a0,a0,0
 578:	86380168 	lh	t8,360(s1)
 57c:	8fa4004c 	lw	a0,76(sp)
 580:	02002825 	move	a1,s0
 584:	13000009 	beqz	t8,5ac <EnChanger_Init+0x5a0>
 588:	2406010f 	li	a2,271
 58c:	8625015e 	lh	a1,350(s1)
 590:	02002025 	move	a0,s0
 594:	0c000000 	jal	0 <EnChanger_Destroy>
 598:	30a5001f 	andi	a1,a1,0x1f
 59c:	0c000000 	jal	0 <EnChanger_Destroy>
 5a0:	02202025 	move	a0,s1
 5a4:	10000020 	b	628 <EnChanger_Init+0x61c>
 5a8:	8fbf0044 	lw	ra,68(sp)
 5ac:	824f1cbc 	lb	t7,7356(s2)
 5b0:	3c090000 	lui	t1,0x0
 5b4:	25290000 	addiu	t1,t1,0
 5b8:	000fc880 	sll	t9,t7,0x2
 5bc:	032fc823 	subu	t9,t9,t7
 5c0:	0019c880 	sll	t9,t9,0x2
 5c4:	03291021 	addu	v0,t9,t1
 5c8:	c4520004 	lwc1	$f18,4(v0)
 5cc:	c4440008 	lwc1	$f4,8(v0)
 5d0:	afa00020 	sw	zero,32(sp)
 5d4:	afa0001c 	sw	zero,28(sp)
 5d8:	afa00018 	sw	zero,24(sp)
 5dc:	e7b20010 	swc1	$f18,16(sp)
 5e0:	e7a40014 	swc1	$f4,20(sp)
 5e4:	862a015e 	lh	t2,350(s1)
 5e8:	87ad0066 	lh	t5,102(sp)
 5ec:	8c470000 	lw	a3,0(v0)
 5f0:	314b001f 	andi	t3,t2,0x1f
 5f4:	000b6200 	sll	t4,t3,0x8
 5f8:	31ae00ff 	andi	t6,t5,0xff
 5fc:	018ec021 	addu	t8,t4,t6
 600:	0c000000 	jal	0 <EnChanger_Destroy>
 604:	afb80024 	sw	t8,36(sp)
 608:	8e2f0004 	lw	t7,4(s1)
 60c:	2401fffe 	li	at,-2
 610:	3c090000 	lui	t1,0x0
 614:	25290000 	addiu	t1,t1,0
 618:	01e1c824 	and	t9,t7,at
 61c:	ae390004 	sw	t9,4(s1)
 620:	ae29014c 	sw	t1,332(s1)
 624:	8fbf0044 	lw	ra,68(sp)
 628:	8fb00038 	lw	s0,56(sp)
 62c:	8fb1003c 	lw	s1,60(sp)
 630:	8fb20040 	lw	s2,64(sp)
 634:	03e00008 	jr	ra
 638:	27bd0078 	addiu	sp,sp,120

0000063c <func_809D2CCC>:
 63c:	27bdffe8 	addiu	sp,sp,-24
 640:	afbf0014 	sw	ra,20(sp)
 644:	8c8e0150 	lw	t6,336(a0)
 648:	00803025 	move	a2,a0
 64c:	00a03825 	move	a3,a1
 650:	85cf01f4 	lh	t7,500(t6)
 654:	24180050 	li	t8,80
 658:	51e0000d 	beqzl	t7,690 <func_809D2CCC+0x54>
 65c:	8cc80154 	lw	t0,340(a2)
 660:	a4980166 	sh	t8,358(a0)
 664:	00a02025 	move	a0,a1
 668:	84c5015e 	lh	a1,350(a2)
 66c:	afa60018 	sw	a2,24(sp)
 670:	0c000000 	jal	0 <EnChanger_Destroy>
 674:	30a5001f 	andi	a1,a1,0x1f
 678:	8fa60018 	lw	a2,24(sp)
 67c:	3c190000 	lui	t9,0x0
 680:	27390000 	addiu	t9,t9,0
 684:	10000012 	b	6d0 <func_809D2CCC+0x94>
 688:	acd9014c 	sw	t9,332(a2)
 68c:	8cc80154 	lw	t0,340(a2)
 690:	240a0001 	li	t2,1
 694:	240b0050 	li	t3,80
 698:	850901f4 	lh	t1,500(t0)
 69c:	00e02025 	move	a0,a3
 6a0:	5120000c 	beqzl	t1,6d4 <func_809D2CCC+0x98>
 6a4:	8fbf0014 	lw	ra,20(sp)
 6a8:	84c5015c 	lh	a1,348(a2)
 6ac:	a4ca0164 	sh	t2,356(a2)
 6b0:	a4cb0166 	sh	t3,358(a2)
 6b4:	afa60018 	sw	a2,24(sp)
 6b8:	0c000000 	jal	0 <EnChanger_Destroy>
 6bc:	30a5001f 	andi	a1,a1,0x1f
 6c0:	8fa60018 	lw	a2,24(sp)
 6c4:	3c0c0000 	lui	t4,0x0
 6c8:	258c0000 	addiu	t4,t4,0
 6cc:	accc014c 	sw	t4,332(a2)
 6d0:	8fbf0014 	lw	ra,20(sp)
 6d4:	27bd0018 	addiu	sp,sp,24
 6d8:	03e00008 	jr	ra
 6dc:	00000000 	nop

000006e0 <func_809D2D70>:
 6e0:	27bdffb0 	addiu	sp,sp,-80
 6e4:	afbf003c 	sw	ra,60(sp)
 6e8:	afb20038 	sw	s2,56(sp)
 6ec:	afb10034 	sw	s1,52(sp)
 6f0:	afb00030 	sw	s0,48(sp)
 6f4:	848e0166 	lh	t6,358(a0)
 6f8:	00a08825 	move	s1,a1
 6fc:	00809025 	move	s2,a0
 700:	8c820150 	lw	v0,336(a0)
 704:	15c00071 	bnez	t6,8cc <func_809D2D70+0x1ec>
 708:	8c830154 	lw	v1,340(a0)
 70c:	84840164 	lh	a0,356(a0)
 710:	24010071 	li	at,113
 714:	50800007 	beqzl	a0,734 <func_809D2D70+0x54>
 718:	86420162 	lh	v0,354(s2)
 71c:	24010001 	li	at,1
 720:	50810037 	beql	a0,at,800 <func_809D2D70+0x120>
 724:	86430160 	lh	v1,352(s2)
 728:	10000066 	b	8c4 <func_809D2D70+0x1e4>
 72c:	00000000 	nop
 730:	86420162 	lh	v0,354(s2)
 734:	c4600024 	lwc1	$f0,36(v1)
 738:	c4620028 	lwc1	$f2,40(v1)
 73c:	14410012 	bne	v0,at,788 <func_809D2D70+0xa8>
 740:	c46c002c 	lwc1	$f12,44(v1)
 744:	44070000 	mfc1	a3,$f0
 748:	240f000f 	li	t7,15
 74c:	afaf0024 	sw	t7,36(sp)
 750:	26241c24 	addiu	a0,s1,7204
 754:	02202825 	move	a1,s1
 758:	24060168 	li	a2,360
 75c:	e7a20010 	swc1	$f2,16(sp)
 760:	e7ac0014 	swc1	$f12,20(sp)
 764:	afa00018 	sw	zero,24(sp)
 768:	afa0001c 	sw	zero,28(sp)
 76c:	0c000000 	jal	0 <EnChanger_Destroy>
 770:	afa00020 	sw	zero,32(sp)
 774:	02202025 	move	a0,s1
 778:	0c000000 	jal	0 <EnChanger_Destroy>
 77c:	24050032 	li	a1,50
 780:	10000050 	b	8c4 <func_809D2D70+0x1e4>
 784:	00000000 	nop
 788:	2450ff8e 	addiu	s0,v0,-114
 78c:	00108400 	sll	s0,s0,0x10
 790:	00108403 	sra	s0,s0,0x10
 794:	2610000a 	addiu	s0,s0,10
 798:	00108400 	sll	s0,s0,0x10
 79c:	00108403 	sra	s0,s0,0x10
 7a0:	3c040000 	lui	a0,0x0
 7a4:	24840000 	addiu	a0,a0,0
 7a8:	02002825 	move	a1,s0
 7ac:	e7a00044 	swc1	$f0,68(sp)
 7b0:	e7a20048 	swc1	$f2,72(sp)
 7b4:	0c000000 	jal	0 <EnChanger_Destroy>
 7b8:	e7ac004c 	swc1	$f12,76(sp)
 7bc:	c7a00044 	lwc1	$f0,68(sp)
 7c0:	c7a20048 	lwc1	$f2,72(sp)
 7c4:	c7ac004c 	lwc1	$f12,76(sp)
 7c8:	44070000 	mfc1	a3,$f0
 7cc:	26241c24 	addiu	a0,s1,7204
 7d0:	02202825 	move	a1,s1
 7d4:	24060168 	li	a2,360
 7d8:	afa00018 	sw	zero,24(sp)
 7dc:	afa0001c 	sw	zero,28(sp)
 7e0:	afa00020 	sw	zero,32(sp)
 7e4:	afb00024 	sw	s0,36(sp)
 7e8:	e7a20010 	swc1	$f2,16(sp)
 7ec:	0c000000 	jal	0 <EnChanger_Destroy>
 7f0:	e7ac0014 	swc1	$f12,20(sp)
 7f4:	10000033 	b	8c4 <func_809D2D70+0x1e4>
 7f8:	00000000 	nop
 7fc:	86430160 	lh	v1,352(s2)
 800:	24010071 	li	at,113
 804:	c4400024 	lwc1	$f0,36(v0)
 808:	c4420028 	lwc1	$f2,40(v0)
 80c:	14610012 	bne	v1,at,858 <func_809D2D70+0x178>
 810:	c44c002c 	lwc1	$f12,44(v0)
 814:	44070000 	mfc1	a3,$f0
 818:	2418000f 	li	t8,15
 81c:	afb80024 	sw	t8,36(sp)
 820:	26241c24 	addiu	a0,s1,7204
 824:	02202825 	move	a1,s1
 828:	24060168 	li	a2,360
 82c:	e7a20010 	swc1	$f2,16(sp)
 830:	e7ac0014 	swc1	$f12,20(sp)
 834:	afa00018 	sw	zero,24(sp)
 838:	afa0001c 	sw	zero,28(sp)
 83c:	0c000000 	jal	0 <EnChanger_Destroy>
 840:	afa00020 	sw	zero,32(sp)
 844:	02202025 	move	a0,s1
 848:	0c000000 	jal	0 <EnChanger_Destroy>
 84c:	24050032 	li	a1,50
 850:	1000001c 	b	8c4 <func_809D2D70+0x1e4>
 854:	00000000 	nop
 858:	2470ff8e 	addiu	s0,v1,-114
 85c:	00108400 	sll	s0,s0,0x10
 860:	00108403 	sra	s0,s0,0x10
 864:	2610000a 	addiu	s0,s0,10
 868:	00108400 	sll	s0,s0,0x10
 86c:	00108403 	sra	s0,s0,0x10
 870:	3c040000 	lui	a0,0x0
 874:	24840000 	addiu	a0,a0,0
 878:	02002825 	move	a1,s0
 87c:	e7a00044 	swc1	$f0,68(sp)
 880:	e7a20048 	swc1	$f2,72(sp)
 884:	0c000000 	jal	0 <EnChanger_Destroy>
 888:	e7ac004c 	swc1	$f12,76(sp)
 88c:	c7a00044 	lwc1	$f0,68(sp)
 890:	c7a20048 	lwc1	$f2,72(sp)
 894:	c7ac004c 	lwc1	$f12,76(sp)
 898:	44070000 	mfc1	a3,$f0
 89c:	26241c24 	addiu	a0,s1,7204
 8a0:	02202825 	move	a1,s1
 8a4:	24060168 	li	a2,360
 8a8:	afa00018 	sw	zero,24(sp)
 8ac:	afa0001c 	sw	zero,28(sp)
 8b0:	afa00020 	sw	zero,32(sp)
 8b4:	afb00024 	sw	s0,36(sp)
 8b8:	e7a20010 	swc1	$f2,16(sp)
 8bc:	0c000000 	jal	0 <EnChanger_Destroy>
 8c0:	e7ac0014 	swc1	$f12,20(sp)
 8c4:	0c000000 	jal	0 <EnChanger_Destroy>
 8c8:	02402025 	move	a0,s2
 8cc:	8fbf003c 	lw	ra,60(sp)
 8d0:	8fb00030 	lw	s0,48(sp)
 8d4:	8fb10034 	lw	s1,52(sp)
 8d8:	8fb20038 	lw	s2,56(sp)
 8dc:	03e00008 	jr	ra
 8e0:	27bd0050 	addiu	sp,sp,80

000008e4 <func_809D2F74>:
 8e4:	27bdffe8 	addiu	sp,sp,-24
 8e8:	afbf0014 	sw	ra,20(sp)
 8ec:	afa5001c 	sw	a1,28(sp)
 8f0:	8c8e0158 	lw	t6,344(a0)
 8f4:	3c030000 	lui	v1,0x0
 8f8:	24630000 	addiu	v1,v1,0
 8fc:	85cf01f4 	lh	t7,500(t6)
 900:	51e00009 	beqzl	t7,928 <func_809D2F74+0x44>
 904:	8fbf0014 	lw	ra,20(sp)
 908:	94620ef2 	lhu	v0,3826(v1)
 90c:	30580800 	andi	t8,v0,0x800
 910:	17000002 	bnez	t8,91c <func_809D2F74+0x38>
 914:	34590800 	ori	t9,v0,0x800
 918:	a4790ef2 	sh	t9,3826(v1)
 91c:	0c000000 	jal	0 <EnChanger_Destroy>
 920:	00000000 	nop
 924:	8fbf0014 	lw	ra,20(sp)
 928:	27bd0018 	addiu	sp,sp,24
 92c:	03e00008 	jr	ra
 930:	00000000 	nop

00000934 <EnChanger_Update>:
 934:	27bdffb8 	addiu	sp,sp,-72
 938:	afbf0044 	sw	ra,68(sp)
 93c:	afa5004c 	sw	a1,76(sp)
 940:	afa40048 	sw	a0,72(sp)
 944:	8c99014c 	lw	t9,332(a0)
 948:	0320f809 	jalr	t9
 94c:	00000000 	nop
 950:	8fa40048 	lw	a0,72(sp)
 954:	3c0f0000 	lui	t7,0x0
 958:	3c013f80 	lui	at,0x3f80
 95c:	84820166 	lh	v0,358(a0)
 960:	240a00ff 	li	t2,255
 964:	240b00ff 	li	t3,255
 968:	10400002 	beqz	v0,974 <EnChanger_Update+0x40>
 96c:	244effff 	addiu	t6,v0,-1
 970:	a48e0166 	sh	t6,358(a0)
 974:	8def0000 	lw	t7,0(t7)
 978:	240c00ff 	li	t4,255
 97c:	240d0004 	li	t5,4
 980:	85f812d4 	lh	t8,4820(t7)
 984:	53000017 	beqzl	t8,9e4 <EnChanger_Update+0xb0>
 988:	8fbf0044 	lw	ra,68(sp)
 98c:	84880032 	lh	t0,50(a0)
 990:	c48c0024 	lwc1	$f12,36(a0)
 994:	c48e0028 	lwc1	$f14,40(a0)
 998:	8c86002c 	lw	a2,44(a0)
 99c:	84870030 	lh	a3,48(a0)
 9a0:	afa80010 	sw	t0,16(sp)
 9a4:	84890034 	lh	t1,52(a0)
 9a8:	44810000 	mtc1	at,$f0
 9ac:	8fb9004c 	lw	t9,76(sp)
 9b0:	afad0034 	sw	t5,52(sp)
 9b4:	afac0030 	sw	t4,48(sp)
 9b8:	afab002c 	sw	t3,44(sp)
 9bc:	afa00028 	sw	zero,40(sp)
 9c0:	afaa0024 	sw	t2,36(sp)
 9c4:	afa90014 	sw	t1,20(sp)
 9c8:	e7a00018 	swc1	$f0,24(sp)
 9cc:	e7a0001c 	swc1	$f0,28(sp)
 9d0:	e7a00020 	swc1	$f0,32(sp)
 9d4:	8f2e0000 	lw	t6,0(t9)
 9d8:	0c000000 	jal	0 <EnChanger_Destroy>
 9dc:	afae0038 	sw	t6,56(sp)
 9e0:	8fbf0044 	lw	ra,68(sp)
 9e4:	27bd0048 	addiu	sp,sp,72
 9e8:	03e00008 	jr	ra
 9ec:	00000000 	nop
