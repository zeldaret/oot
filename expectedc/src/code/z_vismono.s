
build/src/code/z_vismono.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <VisMono_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	0c000000 	jal	0 <VisMono_Init>
  10:	24050018 	li	a1,24
  14:	8fa40018 	lw	a0,24(sp)
  18:	240200ff 	li	v0,255
  1c:	ac800000 	sw	zero,0(a0)
  20:	ac800004 	sw	zero,4(a0)
  24:	a0820008 	sb	v0,8(a0)
  28:	a0820009 	sb	v0,9(a0)
  2c:	a082000a 	sb	v0,10(a0)
  30:	a082000b 	sb	v0,11(a0)
  34:	a080000c 	sb	zero,12(a0)
  38:	a080000d 	sb	zero,13(a0)
  3c:	a080000e 	sb	zero,14(a0)
  40:	a080000f 	sb	zero,15(a0)
  44:	8fbf0014 	lw	ra,20(sp)
  48:	27bd0018 	addiu	sp,sp,24
  4c:	03e00008 	jr	ra
  50:	00000000 	nop

00000054 <VisMono_Destroy>:
  54:	27bdffe8 	addiu	sp,sp,-24
  58:	afbf0014 	sw	ra,20(sp)
  5c:	3c050000 	lui	a1,0x0
  60:	24a50000 	addiu	a1,a1,0
  64:	8c840014 	lw	a0,20(a0)
  68:	0c000000 	jal	0 <VisMono_Init>
  6c:	24060089 	li	a2,137
  70:	8fbf0014 	lw	ra,20(sp)
  74:	27bd0018 	addiu	sp,sp,24
  78:	03e00008 	jr	ra
  7c:	00000000 	nop

00000080 <VisMono_UpdateTexture>:
  80:	afa40000 	sw	a0,0(sp)
  84:	00001025 	move	v0,zero
  88:	00a01825 	move	v1,a1
  8c:	24090100 	li	t1,256
  90:	240800d9 	li	t0,217
  94:	240700ff 	li	a3,255
  98:	000270c3 	sra	t6,v0,0x3
  9c:	0002c880 	sll	t9,v0,0x2
  a0:	332a001f 	andi	t2,t9,0x1f
  a4:	31cf001f 	andi	t7,t6,0x1f
  a8:	000fc040 	sll	t8,t7,0x1
  ac:	000a5880 	sll	t3,t2,0x2
  b0:	030b6021 	addu	t4,t8,t3
  b4:	01870019 	multu	t4,a3
  b8:	0002c983 	sra	t9,v0,0x6
  bc:	332a001f 	andi	t2,t9,0x1f
  c0:	00025843 	sra	t3,v0,0x1
  c4:	316c001f 	andi	t4,t3,0x1f
  c8:	000ac080 	sll	t8,t2,0x2
  cc:	24440001 	addiu	a0,v0,1
  d0:	000458c3 	sra	t3,a0,0x3
  d4:	24450002 	addiu	a1,v0,2
  d8:	24460003 	addiu	a2,v0,3
  dc:	00006812 	mflo	t5
  e0:	24420004 	addiu	v0,v0,4
  e4:	24630008 	addiu	v1,v1,8
  e8:	01a8001a 	div	zero,t5,t0
  ec:	00007012 	mflo	t6
  f0:	000e7a00 	sll	t7,t6,0x8
  f4:	15000002 	bnez	t0,100 <VisMono_UpdateTexture+0x80>
  f8:	00000000 	nop
  fc:	0007000d 	break	0x7
 100:	2401ffff 	li	at,-1
 104:	15010004 	bne	t0,at,118 <VisMono_UpdateTexture+0x98>
 108:	3c018000 	lui	at,0x8000
 10c:	15a10002 	bne	t5,at,118 <VisMono_UpdateTexture+0x98>
 110:	00000000 	nop
 114:	0006000d 	break	0x6
 118:	030c6821 	addu	t5,t8,t4
 11c:	01a70019 	multu	t5,a3
 120:	00046880 	sll	t5,a0,0x2
 124:	3178001f 	andi	t8,t3,0x1f
 128:	00186040 	sll	t4,t8,0x1
 12c:	00007012 	mflo	t6
	...
 138:	01c8001a 	div	zero,t6,t0
 13c:	15000002 	bnez	t0,148 <VisMono_UpdateTexture+0xc8>
 140:	00000000 	nop
 144:	0007000d 	break	0x7
 148:	2401ffff 	li	at,-1
 14c:	15010004 	bne	t0,at,160 <VisMono_UpdateTexture+0xe0>
 150:	3c018000 	lui	at,0x8000
 154:	15c10002 	bne	t6,at,160 <VisMono_UpdateTexture+0xe0>
 158:	00000000 	nop
 15c:	0006000d 	break	0x6
 160:	0000c812 	mflo	t9
 164:	31ae001f 	andi	t6,t5,0x1f
 168:	01f95025 	or	t2,t7,t9
 16c:	000e7880 	sll	t7,t6,0x2
 170:	018fc821 	addu	t9,t4,t7
 174:	03270019 	multu	t9,a3
 178:	a46afff8 	sh	t2,-8(v1)
 17c:	00046983 	sra	t5,a0,0x6
 180:	31ae001f 	andi	t6,t5,0x1f
 184:	00047843 	sra	t7,a0,0x1
 188:	31f9001f 	andi	t9,t7,0x1f
 18c:	000e6080 	sll	t4,t6,0x2
 190:	000578c3 	sra	t7,a1,0x3
 194:	00005012 	mflo	t2
	...
 1a0:	0148001a 	div	zero,t2,t0
 1a4:	00005812 	mflo	t3
 1a8:	000bc200 	sll	t8,t3,0x8
 1ac:	15000002 	bnez	t0,1b8 <VisMono_UpdateTexture+0x138>
 1b0:	00000000 	nop
 1b4:	0007000d 	break	0x7
 1b8:	2401ffff 	li	at,-1
 1bc:	15010004 	bne	t0,at,1d0 <VisMono_UpdateTexture+0x150>
 1c0:	3c018000 	lui	at,0x8000
 1c4:	15410002 	bne	t2,at,1d0 <VisMono_UpdateTexture+0x150>
 1c8:	00000000 	nop
 1cc:	0006000d 	break	0x6
 1d0:	01995021 	addu	t2,t4,t9
 1d4:	01470019 	multu	t2,a3
 1d8:	00055080 	sll	t2,a1,0x2
 1dc:	31ec001f 	andi	t4,t7,0x1f
 1e0:	000cc840 	sll	t9,t4,0x1
 1e4:	00005812 	mflo	t3
	...
 1f0:	0168001a 	div	zero,t3,t0
 1f4:	15000002 	bnez	t0,200 <VisMono_UpdateTexture+0x180>
 1f8:	00000000 	nop
 1fc:	0007000d 	break	0x7
 200:	2401ffff 	li	at,-1
 204:	15010004 	bne	t0,at,218 <VisMono_UpdateTexture+0x198>
 208:	3c018000 	lui	at,0x8000
 20c:	15610002 	bne	t3,at,218 <VisMono_UpdateTexture+0x198>
 210:	00000000 	nop
 214:	0006000d 	break	0x6
 218:	00006812 	mflo	t5
 21c:	030d7025 	or	t6,t8,t5
 220:	314b001f 	andi	t3,t2,0x1f
 224:	000bc080 	sll	t8,t3,0x2
 228:	03386821 	addu	t5,t9,t8
 22c:	01a70019 	multu	t5,a3
 230:	a46efffa 	sh	t6,-6(v1)
 234:	00055183 	sra	t2,a1,0x6
 238:	314b001f 	andi	t3,t2,0x1f
 23c:	0005c043 	sra	t8,a1,0x1
 240:	330d001f 	andi	t5,t8,0x1f
 244:	000bc880 	sll	t9,t3,0x2
 248:	0006c0c3 	sra	t8,a2,0x3
 24c:	00007012 	mflo	t6
	...
 258:	01c8001a 	div	zero,t6,t0
 25c:	00007812 	mflo	t7
 260:	000f6200 	sll	t4,t7,0x8
 264:	15000002 	bnez	t0,270 <VisMono_UpdateTexture+0x1f0>
 268:	00000000 	nop
 26c:	0007000d 	break	0x7
 270:	2401ffff 	li	at,-1
 274:	15010004 	bne	t0,at,288 <VisMono_UpdateTexture+0x208>
 278:	3c018000 	lui	at,0x8000
 27c:	15c10002 	bne	t6,at,288 <VisMono_UpdateTexture+0x208>
 280:	00000000 	nop
 284:	0006000d 	break	0x6
 288:	032d7021 	addu	t6,t9,t5
 28c:	01c70019 	multu	t6,a3
 290:	00067080 	sll	t6,a2,0x2
 294:	3319001f 	andi	t9,t8,0x1f
 298:	00196840 	sll	t5,t9,0x1
 29c:	00007812 	mflo	t7
	...
 2a8:	01e8001a 	div	zero,t7,t0
 2ac:	15000002 	bnez	t0,2b8 <VisMono_UpdateTexture+0x238>
 2b0:	00000000 	nop
 2b4:	0007000d 	break	0x7
 2b8:	2401ffff 	li	at,-1
 2bc:	15010004 	bne	t0,at,2d0 <VisMono_UpdateTexture+0x250>
 2c0:	3c018000 	lui	at,0x8000
 2c4:	15e10002 	bne	t7,at,2d0 <VisMono_UpdateTexture+0x250>
 2c8:	00000000 	nop
 2cc:	0006000d 	break	0x6
 2d0:	00005012 	mflo	t2
 2d4:	018a5825 	or	t3,t4,t2
 2d8:	31cf001f 	andi	t7,t6,0x1f
 2dc:	000f6080 	sll	t4,t7,0x2
 2e0:	01ac5021 	addu	t2,t5,t4
 2e4:	01470019 	multu	t2,a3
 2e8:	a46bfffc 	sh	t3,-4(v1)
 2ec:	00067183 	sra	t6,a2,0x6
 2f0:	31cf001f 	andi	t7,t6,0x1f
 2f4:	00066043 	sra	t4,a2,0x1
 2f8:	318a001f 	andi	t2,t4,0x1f
 2fc:	000f6880 	sll	t5,t7,0x2
 300:	00005812 	mflo	t3
	...
 30c:	0168001a 	div	zero,t3,t0
 310:	0000c012 	mflo	t8
 314:	0018ca00 	sll	t9,t8,0x8
 318:	15000002 	bnez	t0,324 <VisMono_UpdateTexture+0x2a4>
 31c:	00000000 	nop
 320:	0007000d 	break	0x7
 324:	2401ffff 	li	at,-1
 328:	15010004 	bne	t0,at,33c <VisMono_UpdateTexture+0x2bc>
 32c:	3c018000 	lui	at,0x8000
 330:	15610002 	bne	t3,at,33c <VisMono_UpdateTexture+0x2bc>
 334:	00000000 	nop
 338:	0006000d 	break	0x6
 33c:	01aa5821 	addu	t3,t5,t2
 340:	01670019 	multu	t3,a3
 344:	0000c012 	mflo	t8
	...
 350:	0308001a 	div	zero,t8,t0
 354:	00007012 	mflo	t6
 358:	032e7825 	or	t7,t9,t6
 35c:	15000002 	bnez	t0,368 <VisMono_UpdateTexture+0x2e8>
 360:	00000000 	nop
 364:	0007000d 	break	0x7
 368:	2401ffff 	li	at,-1
 36c:	15010004 	bne	t0,at,380 <VisMono_UpdateTexture+0x300>
 370:	3c018000 	lui	at,0x8000
 374:	17010002 	bne	t8,at,380 <VisMono_UpdateTexture+0x300>
 378:	00000000 	nop
 37c:	0006000d 	break	0x6
 380:	a46ffffe 	sh	t7,-2(v1)
 384:	5449ff45 	bnel	v0,t1,9c <VisMono_UpdateTexture+0x1c>
 388:	000270c3 	sra	t6,v0,0x3
 38c:	03e00008 	jr	ra
 390:	00000000 	nop

00000394 <VisMono_DrawTexture>:
 394:	00a01025 	move	v0,a1
 398:	afa40000 	sw	a0,0(sp)
 39c:	3c0ee700 	lui	t6,0xe700
 3a0:	ac4e0000 	sw	t6,0(v0)
 3a4:	ac400004 	sw	zero,4(v0)
 3a8:	24a50008 	addiu	a1,a1,8
 3ac:	00a01025 	move	v0,a1
 3b0:	3c0fef90 	lui	t7,0xef90
 3b4:	3c180c18 	lui	t8,0xc18
 3b8:	37184344 	ori	t8,t8,0x4344
 3bc:	35efccf0 	ori	t7,t7,0xccf0
 3c0:	ac4f0000 	sw	t7,0(v0)
 3c4:	ac580004 	sw	t8,4(v0)
 3c8:	24a50008 	addiu	a1,a1,8
 3cc:	00a01025 	move	v0,a1
 3d0:	3c0ef5fc 	lui	t6,0xf5fc
 3d4:	3c19fc64 	lui	t9,0xfc64
 3d8:	3c070000 	lui	a3,0x0
 3dc:	3739fe60 	ori	t9,t9,0xfe60
 3e0:	35cefd7b 	ori	t6,t6,0xfd7b
 3e4:	3c0b0708 	lui	t3,0x708
 3e8:	3c080008 	lui	t0,0x8
 3ec:	3c06f548 	lui	a2,0xf548
 3f0:	24e70000 	addiu	a3,a3,0
 3f4:	ac4e0004 	sw	t6,4(v0)
 3f8:	ac590000 	sw	t9,0(v0)
 3fc:	24a50008 	addiu	a1,a1,8
 400:	34c6a000 	ori	a2,a2,0xa000
 404:	35080200 	ori	t0,t0,0x200
 408:	356b0200 	ori	t3,t3,0x200
 40c:	00002025 	move	a0,zero
 410:	3c0df300 	lui	t5,0xf300
 414:	3c0ce600 	lui	t4,0xe600
 418:	3c0af550 	lui	t2,0xf550
 41c:	3c09fd50 	lui	t1,0xfd50
 420:	00a01025 	move	v0,a1
 424:	ac490000 	sw	t1,0(v0)
 428:	ac470004 	sw	a3,4(v0)
 42c:	24a50008 	addiu	a1,a1,8
 430:	00a01025 	move	v0,a1
 434:	ac4a0000 	sw	t2,0(v0)
 438:	ac4b0004 	sw	t3,4(v0)
 43c:	24a50008 	addiu	a1,a1,8
 440:	00a01025 	move	v0,a1
 444:	240303bf 	li	v1,959
 448:	306f0fff 	andi	t7,v1,0xfff
 44c:	ac4c0000 	sw	t4,0(v0)
 450:	ac400004 	sw	zero,4(v0)
 454:	24a50008 	addiu	a1,a1,8
 458:	00a01025 	move	v0,a1
 45c:	000fc300 	sll	t8,t7,0xc
 460:	3c010700 	lui	at,0x700
 464:	0301c825 	or	t9,t8,at
 468:	372e001a 	ori	t6,t9,0x1a
 46c:	ac4e0004 	sw	t6,4(v0)
 470:	ac4d0000 	sw	t5,0(v0)
 474:	24a50008 	addiu	a1,a1,8
 478:	00a01025 	move	v0,a1
 47c:	3c0fe700 	lui	t7,0xe700
 480:	ac4f0000 	sw	t7,0(v0)
 484:	ac400004 	sw	zero,4(v0)
 488:	24a50008 	addiu	a1,a1,8
 48c:	00a01025 	move	v0,a1
 490:	ac460000 	sw	a2,0(v0)
 494:	ac480004 	sw	t0,4(v0)
 498:	24a50008 	addiu	a1,a1,8
 49c:	00a01025 	move	v0,a1
 4a0:	3c19009f 	lui	t9,0x9f
 4a4:	3739c008 	ori	t9,t9,0xc008
 4a8:	3c18f200 	lui	t8,0xf200
 4ac:	ac580000 	sw	t8,0(v0)
 4b0:	ac590004 	sw	t9,4(v0)
 4b4:	24a50008 	addiu	a1,a1,8
 4b8:	00a01025 	move	v0,a1
 4bc:	ac460000 	sw	a2,0(v0)
 4c0:	ac480004 	sw	t0,4(v0)
 4c4:	24a50008 	addiu	a1,a1,8
 4c8:	00a01025 	move	v0,a1
 4cc:	3c0f00a0 	lui	t7,0xa0
 4d0:	3c0ef200 	lui	t6,0xf200
 4d4:	35ce8000 	ori	t6,t6,0x8000
 4d8:	35ef4008 	ori	t7,t7,0x4008
 4dc:	ac4f0004 	sw	t7,4(v0)
 4e0:	ac4e0000 	sw	t6,0(v0)
 4e4:	24a50008 	addiu	a1,a1,8
 4e8:	00a01025 	move	v0,a1
 4ec:	3c180118 	lui	t8,0x118
 4f0:	37180200 	ori	t8,t8,0x200
 4f4:	ac580004 	sw	t8,4(v0)
 4f8:	ac460000 	sw	a2,0(v0)
 4fc:	24a50008 	addiu	a1,a1,8
 500:	00a01025 	move	v0,a1
 504:	3c0e01a0 	lui	t6,0x1a0
 508:	3c19f200 	lui	t9,0xf200
 50c:	37394000 	ori	t9,t9,0x4000
 510:	35ce0008 	ori	t6,t6,0x8
 514:	24830003 	addiu	v1,a0,3
 518:	ac4e0004 	sw	t6,4(v0)
 51c:	ac590000 	sw	t9,0(v0)
 520:	24a50008 	addiu	a1,a1,8
 524:	00037880 	sll	t7,v1,0x2
 528:	31f80fff 	andi	t8,t7,0xfff
 52c:	00a01025 	move	v0,a1
 530:	00047080 	sll	t6,a0,0x2
 534:	3c01e450 	lui	at,0xe450
 538:	0301c825 	or	t9,t8,at
 53c:	31cf0fff 	andi	t7,t6,0xfff
 540:	ac4f0004 	sw	t7,4(v0)
 544:	ac590000 	sw	t9,0(v0)
 548:	24a50008 	addiu	a1,a1,8
 54c:	00a01025 	move	v0,a1
 550:	3c190040 	lui	t9,0x40
 554:	3c18e100 	lui	t8,0xe100
 558:	ac580000 	sw	t8,0(v0)
 55c:	ac590004 	sw	t9,4(v0)
 560:	24a50008 	addiu	a1,a1,8
 564:	00a01025 	move	v0,a1
 568:	3c0f0800 	lui	t7,0x800
 56c:	286100ee 	slti	at,v1,238
 570:	35ef0400 	ori	t7,t7,0x400
 574:	3c0ef100 	lui	t6,0xf100
 578:	00602025 	move	a0,v1
 57c:	ac4e0000 	sw	t6,0(v0)
 580:	ac4f0004 	sw	t7,4(v0)
 584:	24a50008 	addiu	a1,a1,8
 588:	1420ffa5 	bnez	at,420 <VisMono_DrawTexture+0x8c>
 58c:	24e70780 	addiu	a3,a3,1920
 590:	00a01025 	move	v0,a1
 594:	3c18e700 	lui	t8,0xe700
 598:	ac580000 	sw	t8,0(v0)
 59c:	ac400004 	sw	zero,4(v0)
 5a0:	24a50008 	addiu	a1,a1,8
 5a4:	00a01025 	move	v0,a1
 5a8:	3c19df00 	lui	t9,0xdf00
 5ac:	ac590000 	sw	t9,0(v0)
 5b0:	ac400004 	sw	zero,4(v0)
 5b4:	24a50008 	addiu	a1,a1,8
 5b8:	03e00008 	jr	ra
 5bc:	00a01025 	move	v0,a1

000005c0 <VisMono_Draw>:
 5c0:	27bdffa0 	addiu	sp,sp,-96
 5c4:	afbf0014 	sw	ra,20(sp)
 5c8:	afa40060 	sw	a0,96(sp)
 5cc:	afa50064 	sw	a1,100(sp)
 5d0:	8caf0000 	lw	t7,0(a1)
 5d4:	afaf005c 	sw	t7,92(sp)
 5d8:	8c820010 	lw	v0,16(a0)
 5dc:	27a4005c 	addiu	a0,sp,92
 5e0:	10400003 	beqz	v0,5f0 <VisMono_Draw+0x30>
 5e4:	00000000 	nop
 5e8:	10000007 	b	608 <VisMono_Draw+0x48>
 5ec:	afa20058 	sw	v0,88(sp)
 5f0:	0c000000 	jal	0 <VisMono_Init>
 5f4:	24050200 	li	a1,512
 5f8:	afa20058 	sw	v0,88(sp)
 5fc:	8fa40060 	lw	a0,96(sp)
 600:	0c000000 	jal	0 <VisMono_Init>
 604:	00402825 	move	a1,v0
 608:	8fb90060 	lw	t9,96(sp)
 60c:	27a4005c 	addiu	a0,sp,92
 610:	8f220014 	lw	v0,20(t9)
 614:	10400003 	beqz	v0,624 <VisMono_Draw+0x64>
 618:	00000000 	nop
 61c:	10000037 	b	6fc <VisMono_Draw+0x13c>
 620:	afa20054 	sw	v0,84(sp)
 624:	0c000000 	jal	0 <VisMono_Init>
 628:	24052338 	li	a1,9016
 62c:	afa20054 	sw	v0,84(sp)
 630:	8fa40060 	lw	a0,96(sp)
 634:	0c000000 	jal	0 <VisMono_Init>
 638:	00402825 	move	a1,v0
 63c:	8fa80054 	lw	t0,84(sp)
 640:	afa20050 	sw	v0,80(sp)
 644:	3c040000 	lui	a0,0x0
 648:	25092338 	addiu	t1,t0,9016
 64c:	0122082b 	sltu	at,t1,v0
 650:	10200020 	beqz	at,6d4 <VisMono_Draw+0x114>
 654:	afa9001c 	sw	t1,28(sp)
 658:	24840010 	addiu	a0,a0,16
 65c:	0c000000 	jal	0 <VisMono_Init>
 660:	24050101 	li	a1,257
 664:	3c040000 	lui	a0,0x0
 668:	24840020 	addiu	a0,a0,32
 66c:	0c000000 	jal	0 <VisMono_Init>
 670:	8fa50050 	lw	a1,80(sp)
 674:	3c040000 	lui	a0,0x0
 678:	24840034 	addiu	a0,a0,52
 67c:	0c000000 	jal	0 <VisMono_Init>
 680:	24050102 	li	a1,258
 684:	3c040000 	lui	a0,0x0
 688:	24840044 	addiu	a0,a0,68
 68c:	0c000000 	jal	0 <VisMono_Init>
 690:	8fa50054 	lw	a1,84(sp)
 694:	3c040000 	lui	a0,0x0
 698:	24840054 	addiu	a0,a0,84
 69c:	0c000000 	jal	0 <VisMono_Init>
 6a0:	24050103 	li	a1,259
 6a4:	3c040000 	lui	a0,0x0
 6a8:	24840064 	addiu	a0,a0,100
 6ac:	0c000000 	jal	0 <VisMono_Init>
 6b0:	8fa5001c 	lw	a1,28(sp)
 6b4:	3c040000 	lui	a0,0x0
 6b8:	24840090 	addiu	a0,a0,144
 6bc:	0c000000 	jal	0 <VisMono_Init>
 6c0:	24050104 	li	a1,260
 6c4:	3c040000 	lui	a0,0x0
 6c8:	248400a0 	addiu	a0,a0,160
 6cc:	0c000000 	jal	0 <VisMono_Init>
 6d0:	24050467 	li	a1,1127
 6d4:	8faa001c 	lw	t2,28(sp)
 6d8:	8fab0050 	lw	t3,80(sp)
 6dc:	3c040000 	lui	a0,0x0
 6e0:	248400c4 	addiu	a0,a0,196
 6e4:	014b082b 	sltu	at,t2,t3
 6e8:	10200004 	beqz	at,6fc <VisMono_Draw+0x13c>
 6ec:	3c050000 	lui	a1,0x0
 6f0:	24a500e4 	addiu	a1,a1,228
 6f4:	0c000000 	jal	0 <VisMono_Init>
 6f8:	24060106 	li	a2,262
 6fc:	8fac005c 	lw	t4,92(sp)
 700:	3c03e700 	lui	v1,0xe700
 704:	24010001 	li	at,1
 708:	258d0008 	addiu	t5,t4,8
 70c:	afad005c 	sw	t5,92(sp)
 710:	ad800004 	sw	zero,4(t4)
 714:	ad830000 	sw	v1,0(t4)
 718:	8fae0060 	lw	t6,96(sp)
 71c:	8fb8005c 	lw	t8,92(sp)
 720:	3c090050 	lui	t1,0x50
 724:	8dcf0004 	lw	t7,4(t6)
 728:	352903c0 	ori	t1,t1,0x3c0
 72c:	3c08ed00 	lui	t0,0xed00
 730:	15e10004 	bne	t7,at,744 <VisMono_Draw+0x184>
 734:	27190008 	addiu	t9,t8,8
 738:	afb9005c 	sw	t9,92(sp)
 73c:	af090004 	sw	t1,4(t8)
 740:	af080000 	sw	t0,0(t8)
 744:	8faa005c 	lw	t2,92(sp)
 748:	3c0cfa00 	lui	t4,0xfa00
 74c:	3c19fb00 	lui	t9,0xfb00
 750:	254b0008 	addiu	t3,t2,8
 754:	afab005c 	sw	t3,92(sp)
 758:	ad4c0000 	sw	t4,0(t2)
 75c:	8fad0060 	lw	t5,96(sp)
 760:	3c0cfd10 	lui	t4,0xfd10
 764:	8dae0008 	lw	t6,8(t5)
 768:	ad4e0004 	sw	t6,4(t2)
 76c:	8faf005c 	lw	t7,92(sp)
 770:	25f80008 	addiu	t8,t7,8
 774:	afb8005c 	sw	t8,92(sp)
 778:	adf90000 	sw	t9,0(t7)
 77c:	8fa80060 	lw	t0,96(sp)
 780:	3c18e800 	lui	t8,0xe800
 784:	8d09000c 	lw	t1,12(t0)
 788:	ade90004 	sw	t1,4(t7)
 78c:	8faa005c 	lw	t2,92(sp)
 790:	3c09f500 	lui	t1,0xf500
 794:	35290100 	ori	t1,t1,0x100
 798:	254b0008 	addiu	t3,t2,8
 79c:	afab005c 	sw	t3,92(sp)
 7a0:	ad4c0000 	sw	t4,0(t2)
 7a4:	8fad0058 	lw	t5,88(sp)
 7a8:	ad4d0004 	sw	t5,4(t2)
 7ac:	8fae005c 	lw	t6,92(sp)
 7b0:	3c0a0700 	lui	t2,0x700
 7b4:	3c0de600 	lui	t5,0xe600
 7b8:	25cf0008 	addiu	t7,t6,8
 7bc:	afaf005c 	sw	t7,92(sp)
 7c0:	adc00004 	sw	zero,4(t6)
 7c4:	add80000 	sw	t8,0(t6)
 7c8:	8fb9005c 	lw	t9,92(sp)
 7cc:	3c18f000 	lui	t8,0xf000
 7d0:	27280008 	addiu	t0,t9,8
 7d4:	afa8005c 	sw	t0,92(sp)
 7d8:	af290000 	sw	t1,0(t9)
 7dc:	af2a0004 	sw	t2,4(t9)
 7e0:	8fab005c 	lw	t3,92(sp)
 7e4:	3c19073f 	lui	t9,0x73f
 7e8:	3739c000 	ori	t9,t9,0xc000
 7ec:	256c0008 	addiu	t4,t3,8
 7f0:	afac005c 	sw	t4,92(sp)
 7f4:	ad600004 	sw	zero,4(t3)
 7f8:	ad6d0000 	sw	t5,0(t3)
 7fc:	8fae005c 	lw	t6,92(sp)
 800:	3c0cde00 	lui	t4,0xde00
 804:	25cf0008 	addiu	t7,t6,8
 808:	afaf005c 	sw	t7,92(sp)
 80c:	add90004 	sw	t9,4(t6)
 810:	add80000 	sw	t8,0(t6)
 814:	8fa8005c 	lw	t0,92(sp)
 818:	25090008 	addiu	t1,t0,8
 81c:	afa9005c 	sw	t1,92(sp)
 820:	ad000004 	sw	zero,4(t0)
 824:	ad030000 	sw	v1,0(t0)
 828:	8faa005c 	lw	t2,92(sp)
 82c:	254b0008 	addiu	t3,t2,8
 830:	afab005c 	sw	t3,92(sp)
 834:	ad4c0000 	sw	t4,0(t2)
 838:	8fad0054 	lw	t5,84(sp)
 83c:	ad4d0004 	sw	t5,4(t2)
 840:	8fae005c 	lw	t6,92(sp)
 844:	25cf0008 	addiu	t7,t6,8
 848:	afaf005c 	sw	t7,92(sp)
 84c:	adc00004 	sw	zero,4(t6)
 850:	adc30000 	sw	v1,0(t6)
 854:	8fb90064 	lw	t9,100(sp)
 858:	8fb8005c 	lw	t8,92(sp)
 85c:	af380000 	sw	t8,0(t9)
 860:	8fbf0014 	lw	ra,20(sp)
 864:	27bd0060 	addiu	sp,sp,96
 868:	03e00008 	jr	ra
 86c:	00000000 	nop

00000870 <VisMono_DrawOld>:
 870:	27bdffe0 	addiu	sp,sp,-32
 874:	afbf001c 	sw	ra,28(sp)
 878:	afb00018 	sw	s0,24(sp)
 87c:	8c8e0010 	lw	t6,16(a0)
 880:	00808025 	move	s0,a0
 884:	24040200 	li	a0,512
 888:	15c00008 	bnez	t6,8ac <VisMono_DrawOld+0x3c>
 88c:	3c050000 	lui	a1,0x0
 890:	24a500f4 	addiu	a1,a1,244
 894:	0c000000 	jal	0 <VisMono_Init>
 898:	2406011b 	li	a2,283
 89c:	ae020010 	sw	v0,16(s0)
 8a0:	02002025 	move	a0,s0
 8a4:	0c000000 	jal	0 <VisMono_Init>
 8a8:	00402825 	move	a1,v0
 8ac:	8e0f0014 	lw	t7,20(s0)
 8b0:	3c050000 	lui	a1,0x0
 8b4:	24a50104 	addiu	a1,a1,260
 8b8:	15e00011 	bnez	t7,900 <VisMono_DrawOld+0x90>
 8bc:	24042338 	li	a0,9016
 8c0:	0c000000 	jal	0 <VisMono_Init>
 8c4:	24060121 	li	a2,289
 8c8:	ae020014 	sw	v0,20(s0)
 8cc:	02002025 	move	a0,s0
 8d0:	0c000000 	jal	0 <VisMono_Init>
 8d4:	00402825 	move	a1,v0
 8d8:	8e180014 	lw	t8,20(s0)
 8dc:	3c040000 	lui	a0,0x0
 8e0:	24840114 	addiu	a0,a0,276
 8e4:	27192338 	addiu	t9,t8,9016
 8e8:	0322082b 	sltu	at,t9,v0
 8ec:	10200004 	beqz	at,900 <VisMono_DrawOld+0x90>
 8f0:	3c050000 	lui	a1,0x0
 8f4:	24a5013c 	addiu	a1,a1,316
 8f8:	0c000000 	jal	0 <VisMono_Init>
 8fc:	24060124 	li	a2,292
 900:	8fbf001c 	lw	ra,28(sp)
 904:	8fb00018 	lw	s0,24(sp)
 908:	27bd0020 	addiu	sp,sp,32
 90c:	03e00008 	jr	ra
 910:	00000000 	nop
	...
