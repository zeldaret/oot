
build/src/overlays/actors/ovl_Bg_Relay_Objects/z_bg_relay_objects.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgRelayObjects_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgRelayObjects_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	8618001c 	lh	t8,28(s0)
  28:	860e001c 	lh	t6,28(s0)
  2c:	02002025 	move	a0,s0
  30:	0018ca03 	sra	t9,t8,0x8
  34:	332800ff 	andi	t0,t9,0xff
  38:	31cf003f 	andi	t7,t6,0x3f
  3c:	a20f0168 	sb	t7,360(s0)
  40:	a608001c 	sh	t0,28(s0)
  44:	0c000000 	jal	0 <BgRelayObjects_Init>
  48:	24050003 	li	a1,3
  4c:	8609001c 	lh	t1,28(s0)
  50:	3c040600 	lui	a0,0x600
  54:	27a50024 	addiu	a1,sp,36
  58:	15200026 	bnez	t1,f4 <BgRelayObjects_Init+0xf4>
  5c:	248403c4 	addiu	a0,a0,964
  60:	3c040600 	lui	a0,0x600
  64:	0c000000 	jal	0 <BgRelayObjects_Init>
  68:	248425fc 	addiu	a0,a0,9724
  6c:	3c0a0000 	lui	t2,0x0
  70:	954a0ee0 	lhu	t2,3808(t2)
  74:	240c0400 	li	t4,1024
  78:	240d0080 	li	t5,128
  7c:	314b0020 	andi	t3,t2,0x20
  80:	51600004 	beqzl	t3,94 <BgRelayObjects_Init+0x94>
  84:	a60d0032 	sh	t5,50(s0)
  88:	10000002 	b	94 <BgRelayObjects_Init+0x94>
  8c:	a60c0032 	sh	t4,50(s0)
  90:	a60d0032 	sh	t5,50(s0)
  94:	0c000000 	jal	0 <BgRelayObjects_Init>
  98:	00000000 	nop
  9c:	3c030000 	lui	v1,0x0
  a0:	8c630000 	lw	v1,0(v1)
  a4:	8e0f0004 	lw	t7,4(s0)
  a8:	240effff 	li	t6,-1
  ac:	30790002 	andi	t9,v1,0x2
  b0:	35f80020 	ori	t8,t7,0x20
  b4:	a20e0003 	sb	t6,3(s0)
  b8:	13200007 	beqz	t9,d8 <BgRelayObjects_Init+0xd8>
  bc:	ae180004 	sw	t8,4(s0)
  c0:	240800ff 	li	t0,255
  c4:	a608001c 	sh	t0,28(s0)
  c8:	0c000000 	jal	0 <BgRelayObjects_Init>
  cc:	02002025 	move	a0,s0
  d0:	10000050 	b	214 <BgRelayObjects_Init+0x214>
  d4:	8fa40034 	lw	a0,52(sp)
  d8:	3c090000 	lui	t1,0x0
  dc:	25290000 	addiu	t1,t1,0
  e0:	34630002 	ori	v1,v1,0x2
  e4:	ae090164 	sw	t1,356(s0)
  e8:	3c010000 	lui	at,0x0
  ec:	10000048 	b	210 <BgRelayObjects_Init+0x210>
  f0:	ac230000 	sw	v1,0(at)
  f4:	0c000000 	jal	0 <BgRelayObjects_Init>
  f8:	27a50024 	addiu	a1,sp,36
  fc:	82020003 	lb	v0,3(s0)
 100:	240dffff 	li	t5,-1
 104:	3c030000 	lui	v1,0x0
 108:	14400005 	bnez	v0,120 <BgRelayObjects_Init+0x120>
 10c:	244c0001 	addiu	t4,v0,1
 110:	920a0168 	lbu	t2,360(s0)
 114:	254bffcd 	addiu	t3,t2,-51
 118:	10000002 	b	124 <BgRelayObjects_Init+0x124>
 11c:	a20b0169 	sb	t3,361(s0)
 120:	a20c0169 	sb	t4,361(s0)
 124:	82020169 	lb	v0,361(s0)
 128:	240e0001 	li	t6,1
 12c:	a20d0003 	sb	t5,3(s0)
 130:	28410006 	slti	at,v0,6
 134:	1420000f 	bnez	at,174 <BgRelayObjects_Init+0x174>
 138:	a60e016a 	sh	t6,362(s0)
 13c:	8c630000 	lw	v1,0(v1)
 140:	3c180000 	lui	t8,0x0
 144:	27180000 	addiu	t8,t8,0
 148:	306f0001 	andi	t7,v1,0x1
 14c:	11e00005 	beqz	t7,164 <BgRelayObjects_Init+0x164>
 150:	34630001 	ori	v1,v1,0x1
 154:	0c000000 	jal	0 <BgRelayObjects_Init>
 158:	02002025 	move	a0,s0
 15c:	1000002d 	b	214 <BgRelayObjects_Init+0x214>
 160:	8fa40034 	lw	a0,52(sp)
 164:	ae180164 	sw	t8,356(s0)
 168:	3c010000 	lui	at,0x0
 16c:	10000028 	b	210 <BgRelayObjects_Init+0x210>
 170:	ac230000 	sw	v1,0(at)
 174:	24010005 	li	at,5
 178:	10410016 	beq	v0,at,1d4 <BgRelayObjects_Init+0x1d4>
 17c:	8fa40034 	lw	a0,52(sp)
 180:	8fa40034 	lw	a0,52(sp)
 184:	0c000000 	jal	0 <BgRelayObjects_Init>
 188:	92050168 	lbu	a1,360(s0)
 18c:	82190169 	lb	t9,361(s0)
 190:	3c030000 	lui	v1,0x0
 194:	8c630000 	lw	v1,0(v1)
 198:	24080001 	li	t0,1
 19c:	03281004 	sllv	v0,t0,t9
 1a0:	00434824 	and	t1,v0,v1
 1a4:	11200005 	beqz	t1,1bc <BgRelayObjects_Init+0x1bc>
 1a8:	00621825 	or	v1,v1,v0
 1ac:	0c000000 	jal	0 <BgRelayObjects_Init>
 1b0:	02002025 	move	a0,s0
 1b4:	10000017 	b	214 <BgRelayObjects_Init+0x214>
 1b8:	8fa40034 	lw	a0,52(sp)
 1bc:	3c0a0000 	lui	t2,0x0
 1c0:	254a0000 	addiu	t2,t2,0
 1c4:	ae0a0164 	sw	t2,356(s0)
 1c8:	3c010000 	lui	at,0x0
 1cc:	10000010 	b	210 <BgRelayObjects_Init+0x210>
 1d0:	ac230000 	sw	v1,0(at)
 1d4:	0c000000 	jal	0 <BgRelayObjects_Init>
 1d8:	92050168 	lbu	a1,360(s0)
 1dc:	3c0142f0 	lui	at,0x42f0
 1e0:	44813000 	mtc1	at,$f6
 1e4:	c6040028 	lwc1	$f4,40(s0)
 1e8:	3c030000 	lui	v1,0x0
 1ec:	8c630000 	lw	v1,0(v1)
 1f0:	46062200 	add.s	$f8,$f4,$f6
 1f4:	3c0b0000 	lui	t3,0x0
 1f8:	256b0000 	addiu	t3,t3,0
 1fc:	ae0b0164 	sw	t3,356(s0)
 200:	e6080028 	swc1	$f8,40(s0)
 204:	3c010000 	lui	at,0x0
 208:	34630001 	ori	v1,v1,0x1
 20c:	ac230000 	sw	v1,0(at)
 210:	8fa40034 	lw	a0,52(sp)
 214:	02003025 	move	a2,s0
 218:	8fa70024 	lw	a3,36(sp)
 21c:	0c000000 	jal	0 <BgRelayObjects_Init>
 220:	24850810 	addiu	a1,a0,2064
 224:	ae02014c 	sw	v0,332(s0)
 228:	8fbf001c 	lw	ra,28(sp)
 22c:	8fb00018 	lw	s0,24(sp)
 230:	27bd0030 	addiu	sp,sp,48
 234:	03e00008 	jr	ra
 238:	00000000 	nop

0000023c <BgRelayObjects_Destroy>:
 23c:	27bdffe8 	addiu	sp,sp,-24
 240:	afa40018 	sw	a0,24(sp)
 244:	8fae0018 	lw	t6,24(sp)
 248:	afbf0014 	sw	ra,20(sp)
 24c:	00a02025 	move	a0,a1
 250:	24a50810 	addiu	a1,a1,2064
 254:	0c000000 	jal	0 <BgRelayObjects_Init>
 258:	8dc6014c 	lw	a2,332(t6)
 25c:	8faf0018 	lw	t7,24(sp)
 260:	3c020000 	lui	v0,0x0
 264:	24420000 	addiu	v0,v0,0
 268:	85f8001c 	lh	t8,28(t7)
 26c:	5700000a 	bnezl	t8,298 <BgRelayObjects_Destroy+0x5c>
 270:	8fbf0014 	lw	ra,20(sp)
 274:	8c590008 	lw	t9,8(v0)
 278:	3401fff0 	li	at,0xfff0
 27c:	0321082a 	slt	at,t9,at
 280:	50200005 	beqzl	at,298 <BgRelayObjects_Destroy+0x5c>
 284:	8fbf0014 	lw	ra,20(sp)
 288:	94480ee0 	lhu	t0,3808(v0)
 28c:	3109ffdf 	andi	t1,t0,0xffdf
 290:	a4490ee0 	sh	t1,3808(v0)
 294:	8fbf0014 	lw	ra,20(sp)
 298:	27bd0018 	addiu	sp,sp,24
 29c:	03e00008 	jr	ra
 2a0:	00000000 	nop

000002a4 <func_808A90F4>:
 2a4:	27bdffe0 	addiu	sp,sp,-32
 2a8:	afb00018 	sw	s0,24(sp)
 2ac:	00808025 	move	s0,a0
 2b0:	afbf001c 	sw	ra,28(sp)
 2b4:	00a02025 	move	a0,a1
 2b8:	0c000000 	jal	0 <BgRelayObjects_Init>
 2bc:	92050168 	lbu	a1,360(s0)
 2c0:	50400022 	beqzl	v0,34c <func_808A90F4+0xa8>
 2c4:	8fbf001c 	lw	ra,28(sp)
 2c8:	860e016a 	lh	t6,362(s0)
 2cc:	02002025 	move	a0,s0
 2d0:	51c00011 	beqzl	t6,318 <func_808A90F4+0x74>
 2d4:	3c0142f0 	lui	at,0x42f0
 2d8:	0c000000 	jal	0 <BgRelayObjects_Init>
 2dc:	24052814 	li	a1,10260
 2e0:	3c0f0000 	lui	t7,0x0
 2e4:	91ef000a 	lbu	t7,10(t7)
 2e8:	3c180000 	lui	t8,0x0
 2ec:	240100ff 	li	at,255
 2f0:	030fc021 	addu	t8,t8,t7
 2f4:	93180074 	lbu	t8,116(t8)
 2f8:	24190078 	li	t9,120
 2fc:	240800a0 	li	t0,160
 300:	53010004 	beql	t8,at,314 <func_808A90F4+0x70>
 304:	a608016a 	sh	t0,362(s0)
 308:	10000002 	b	314 <func_808A90F4+0x70>
 30c:	a619016a 	sh	t9,362(s0)
 310:	a608016a 	sh	t0,362(s0)
 314:	3c0142f0 	lui	at,0x42f0
 318:	44813000 	mtc1	at,$f6
 31c:	c604000c 	lwc1	$f4,12(s0)
 320:	26040028 	addiu	a0,s0,40
 324:	3c064140 	lui	a2,0x4140
 328:	46062200 	add.s	$f8,$f4,$f6
 32c:	44054000 	mfc1	a1,$f8
 330:	0c000000 	jal	0 <BgRelayObjects_Init>
 334:	00000000 	nop
 338:	10400003 	beqz	v0,348 <func_808A90F4+0xa4>
 33c:	3c090000 	lui	t1,0x0
 340:	25290000 	addiu	t1,t1,0
 344:	ae090164 	sw	t1,356(s0)
 348:	8fbf001c 	lw	ra,28(sp)
 34c:	8fb00018 	lw	s0,24(sp)
 350:	27bd0020 	addiu	sp,sp,32
 354:	03e00008 	jr	ra
 358:	00000000 	nop

0000035c <func_808A91AC>:
 35c:	27bdffe8 	addiu	sp,sp,-24
 360:	afbf0014 	sw	ra,20(sp)
 364:	afa5001c 	sw	a1,28(sp)
 368:	808e0169 	lb	t6,361(a0)
 36c:	24010005 	li	at,5
 370:	51c1000a 	beql	t6,at,39c <func_808A91AC+0x40>
 374:	8498016a 	lh	t8,362(a0)
 378:	8485016a 	lh	a1,362(a0)
 37c:	10a00003 	beqz	a1,38c <func_808A91AC+0x30>
 380:	24afffff 	addiu	t7,a1,-1
 384:	a48f016a 	sh	t7,362(a0)
 388:	8485016a 	lh	a1,362(a0)
 38c:	0c000000 	jal	0 <BgRelayObjects_Init>
 390:	afa40018 	sw	a0,24(sp)
 394:	8fa40018 	lw	a0,24(sp)
 398:	8498016a 	lh	t8,362(a0)
 39c:	8fb9001c 	lw	t9,28(sp)
 3a0:	3c080001 	lui	t0,0x1
 3a4:	13000004 	beqz	t8,3b8 <func_808A91AC+0x5c>
 3a8:	01194021 	addu	t0,t0,t9
 3ac:	81081cbc 	lb	t0,7356(t0)
 3b0:	80890169 	lb	t1,361(a0)
 3b4:	15090007 	bne	t0,t1,3d4 <func_808A91AC+0x78>
 3b8:	2405281c 	li	a1,10268
 3bc:	0c000000 	jal	0 <BgRelayObjects_Init>
 3c0:	afa40018 	sw	a0,24(sp)
 3c4:	8fa40018 	lw	a0,24(sp)
 3c8:	3c0a0000 	lui	t2,0x0
 3cc:	254a0000 	addiu	t2,t2,0
 3d0:	ac8a0164 	sw	t2,356(a0)
 3d4:	8fbf0014 	lw	ra,20(sp)
 3d8:	27bd0018 	addiu	sp,sp,24
 3dc:	03e00008 	jr	ra
 3e0:	00000000 	nop

000003e4 <func_808A9234>:
 3e4:	27bdffd8 	addiu	sp,sp,-40
 3e8:	afbf001c 	sw	ra,28(sp)
 3ec:	afb00018 	sw	s0,24(sp)
 3f0:	afa5002c 	sw	a1,44(sp)
 3f4:	c4840060 	lwc1	$f4,96(a0)
 3f8:	c486006c 	lwc1	$f6,108(a0)
 3fc:	00808025 	move	s0,a0
 400:	24840028 	addiu	a0,a0,40
 404:	46062200 	add.s	$f8,$f4,$f6
 408:	e4880038 	swc1	$f8,56(a0)
 40c:	8e060060 	lw	a2,96(s0)
 410:	0c000000 	jal	0 <BgRelayObjects_Init>
 414:	8e05000c 	lw	a1,12(s0)
 418:	10400028 	beqz	v0,4bc <func_808A9234+0xd8>
 41c:	240500b4 	li	a1,180
 420:	c60c008c 	lwc1	$f12,140(s0)
 424:	24060014 	li	a2,20
 428:	0c000000 	jal	0 <BgRelayObjects_Init>
 42c:	24070064 	li	a3,100
 430:	02002025 	move	a0,s0
 434:	0c000000 	jal	0 <BgRelayObjects_Init>
 438:	2405281d 	li	a1,10269
 43c:	8fa4002c 	lw	a0,44(sp)
 440:	3c010001 	lui	at,0x1
 444:	820f0169 	lb	t7,361(s0)
 448:	00811021 	addu	v0,a0,at
 44c:	804e1cbc 	lb	t6,7356(v0)
 450:	51cf000a 	beql	t6,t7,47c <func_808A9234+0x98>
 454:	92050168 	lbu	a1,360(s0)
 458:	0c000000 	jal	0 <BgRelayObjects_Init>
 45c:	240438ec 	li	a0,14572
 460:	3c190000 	lui	t9,0x0
 464:	24180005 	li	t8,5
 468:	27390000 	addiu	t9,t9,0
 46c:	a618016a 	sh	t8,362(s0)
 470:	10000012 	b	4bc <func_808A9234+0xd8>
 474:	ae190164 	sw	t9,356(s0)
 478:	92050168 	lbu	a1,360(s0)
 47c:	0c000000 	jal	0 <BgRelayObjects_Init>
 480:	afa20024 	sw	v0,36(sp)
 484:	8e080004 	lw	t0,4(s0)
 488:	8fa20024 	lw	v0,36(sp)
 48c:	2401ffef 	li	at,-17
 490:	01014824 	and	t1,t0,at
 494:	ae090004 	sw	t1,4(s0)
 498:	804a1cbc 	lb	t2,7356(v0)
 49c:	24010004 	li	at,4
 4a0:	3c0c0000 	lui	t4,0x0
 4a4:	15410004 	bne	t2,at,4b8 <func_808A9234+0xd4>
 4a8:	258c0000 	addiu	t4,t4,0
 4ac:	240b000f 	li	t3,15
 4b0:	3c010000 	lui	at,0x0
 4b4:	a42b13ce 	sh	t3,5070(at)
 4b8:	ae0c0164 	sw	t4,356(s0)
 4bc:	8fbf001c 	lw	ra,28(sp)
 4c0:	8fb00018 	lw	s0,24(sp)
 4c4:	27bd0028 	addiu	sp,sp,40
 4c8:	03e00008 	jr	ra
 4cc:	00000000 	nop

000004d0 <func_808A9320>:
 4d0:	afa40000 	sw	a0,0(sp)
 4d4:	03e00008 	jr	ra
 4d8:	afa50004 	sw	a1,4(sp)

000004dc <func_808A932C>:
 4dc:	27bdffe8 	addiu	sp,sp,-24
 4e0:	afbf0014 	sw	ra,20(sp)
 4e4:	afa5001c 	sw	a1,28(sp)
 4e8:	8482016a 	lh	v0,362(a0)
 4ec:	00803025 	move	a2,a0
 4f0:	10400003 	beqz	v0,500 <func_808A932C+0x24>
 4f4:	244effff 	addiu	t6,v0,-1
 4f8:	a48e016a 	sh	t6,362(a0)
 4fc:	8482016a 	lh	v0,362(a0)
 500:	1440000e 	bnez	v0,53c <func_808A932C+0x60>
 504:	8fa4001c 	lw	a0,28(sp)
 508:	0c000000 	jal	0 <BgRelayObjects_Init>
 50c:	afa60018 	sw	a2,24(sp)
 510:	1440000a 	bnez	v0,53c <func_808A932C+0x60>
 514:	8fa60018 	lw	a2,24(sp)
 518:	24045801 	li	a0,22529
 51c:	0c000000 	jal	0 <BgRelayObjects_Init>
 520:	afa60018 	sw	a2,24(sp)
 524:	0c000000 	jal	0 <BgRelayObjects_Init>
 528:	8fa4001c 	lw	a0,28(sp)
 52c:	8fa60018 	lw	a2,24(sp)
 530:	3c0f0000 	lui	t7,0x0
 534:	25ef0000 	addiu	t7,t7,0
 538:	accf0164 	sw	t7,356(a2)
 53c:	8fbf0014 	lw	ra,20(sp)
 540:	27bd0018 	addiu	sp,sp,24
 544:	03e00008 	jr	ra
 548:	00000000 	nop

0000054c <func_808A939C>:
 54c:	27bdffe0 	addiu	sp,sp,-32
 550:	afb00018 	sw	s0,24(sp)
 554:	00808025 	move	s0,a0
 558:	afbf001c 	sw	ra,28(sp)
 55c:	00a02025 	move	a0,a1
 560:	0c000000 	jal	0 <BgRelayObjects_Init>
 564:	24050005 	li	a1,5
 568:	10400006 	beqz	v0,584 <func_808A939C+0x38>
 56c:	26040032 	addiu	a0,s0,50
 570:	3c020000 	lui	v0,0x0
 574:	24420000 	addiu	v0,v0,0
 578:	944e0ee0 	lhu	t6,3808(v0)
 57c:	35cf0020 	ori	t7,t6,0x20
 580:	a44f0ee0 	sh	t7,3808(v0)
 584:	3c020000 	lui	v0,0x0
 588:	24420000 	addiu	v0,v0,0
 58c:	94580ee0 	lhu	t8,3808(v0)
 590:	24060008 	li	a2,8
 594:	24050080 	li	a1,128
 598:	33190020 	andi	t9,t8,0x20
 59c:	13200006 	beqz	t9,5b8 <func_808A939C+0x6c>
 5a0:	00000000 	nop
 5a4:	26040032 	addiu	a0,s0,50
 5a8:	0c000000 	jal	0 <BgRelayObjects_Init>
 5ac:	24050400 	li	a1,1024
 5b0:	10000004 	b	5c4 <func_808A939C+0x78>
 5b4:	86020032 	lh	v0,50(s0)
 5b8:	0c000000 	jal	0 <BgRelayObjects_Init>
 5bc:	24060008 	li	a2,8
 5c0:	86020032 	lh	v0,50(s0)
 5c4:	860800b6 	lh	t0,182(s0)
 5c8:	3c010000 	lui	at,0x0
 5cc:	244aff80 	addiu	t2,v0,-128
 5d0:	448a2000 	mtc1	t2,$f4
 5d4:	01024821 	addu	t1,t0,v0
 5d8:	a60900b6 	sh	t1,182(s0)
 5dc:	468021a0 	cvt.s.w	$f6,$f4
 5e0:	c4280000 	lwc1	$f8,0(at)
 5e4:	3c013f80 	lui	at,0x3f80
 5e8:	44818000 	mtc1	at,$f16
 5ec:	260400e4 	addiu	a0,s0,228
 5f0:	24052076 	li	a1,8310
 5f4:	46083282 	mul.s	$f10,$f6,$f8
 5f8:	46105480 	add.s	$f18,$f10,$f16
 5fc:	44069000 	mfc1	a2,$f18
 600:	0c000000 	jal	0 <BgRelayObjects_Init>
 604:	00000000 	nop
 608:	8fbf001c 	lw	ra,28(sp)
 60c:	8fb00018 	lw	s0,24(sp)
 610:	27bd0020 	addiu	sp,sp,32
 614:	03e00008 	jr	ra
 618:	00000000 	nop

0000061c <BgRelayObjects_Update>:
 61c:	27bdffe8 	addiu	sp,sp,-24
 620:	afbf0014 	sw	ra,20(sp)
 624:	8c990164 	lw	t9,356(a0)
 628:	0320f809 	jalr	t9
 62c:	00000000 	nop
 630:	8fbf0014 	lw	ra,20(sp)
 634:	27bd0018 	addiu	sp,sp,24
 638:	03e00008 	jr	ra
 63c:	00000000 	nop

00000640 <BgRelayObjects_Draw>:
 640:	27bdffe8 	addiu	sp,sp,-24
 644:	afbf0014 	sw	ra,20(sp)
 648:	848e001c 	lh	t6,28(a0)
 64c:	00a03025 	move	a2,a1
 650:	00c02025 	move	a0,a2
 654:	15c00007 	bnez	t6,674 <BgRelayObjects_Draw+0x34>
 658:	00000000 	nop
 65c:	00a02025 	move	a0,a1
 660:	3c050600 	lui	a1,0x600
 664:	0c000000 	jal	0 <BgRelayObjects_Init>
 668:	24a51ab0 	addiu	a1,a1,6832
 66c:	10000005 	b	684 <BgRelayObjects_Draw+0x44>
 670:	8fbf0014 	lw	ra,20(sp)
 674:	3c050600 	lui	a1,0x600
 678:	0c000000 	jal	0 <BgRelayObjects_Init>
 67c:	24a501a0 	addiu	a1,a1,416
 680:	8fbf0014 	lw	ra,20(sp)
 684:	27bd0018 	addiu	sp,sp,24
 688:	03e00008 	jr	ra
 68c:	00000000 	nop
