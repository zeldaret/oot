
build/src/overlays/actors/ovl_Bg_Mizu_Water/z_bg_mizu_water.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMizuWater_GetWaterLevelActionIndex>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	3c020000 	lui	v0,0x0
   8:	8c420000 	lw	v0,0(v0)
   c:	afbf0014 	sw	ra,20(sp)
  10:	afa40018 	sw	a0,24(sp)
  14:	afa5001c 	sw	a1,28(sp)
  18:	844e1514 	lh	t6,5396(v0)
  1c:	51c0001d 	beqzl	t6,94 <BgMizuWater_GetWaterLevelActionIndex+0x94>
  20:	8fa4001c 	lw	a0,28(sp)
  24:	84431516 	lh	v1,5398(v0)
  28:	24010001 	li	at,1
  2c:	8fa4001c 	lw	a0,28(sp)
  30:	10600008 	beqz	v1,54 <BgMizuWater_GetWaterLevelActionIndex+0x54>
  34:	00000000 	nop
  38:	1061000b 	beq	v1,at,68 <BgMizuWater_GetWaterLevelActionIndex+0x68>
  3c:	8fa4001c 	lw	a0,28(sp)
  40:	24010002 	li	at,2
  44:	1061000d 	beq	v1,at,7c <BgMizuWater_GetWaterLevelActionIndex+0x7c>
  48:	8fa4001c 	lw	a0,28(sp)
  4c:	10000010 	b	90 <BgMizuWater_GetWaterLevelActionIndex+0x90>
  50:	a4401514 	sh	zero,5396(v0)
  54:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
  58:	2405001c 	li	a1,28
  5c:	3c020000 	lui	v0,0x0
  60:	1000000a 	b	8c <BgMizuWater_GetWaterLevelActionIndex+0x8c>
  64:	8c420000 	lw	v0,0(v0)
  68:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
  6c:	2405001d 	li	a1,29
  70:	3c020000 	lui	v0,0x0
  74:	10000005 	b	8c <BgMizuWater_GetWaterLevelActionIndex+0x8c>
  78:	8c420000 	lw	v0,0(v0)
  7c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
  80:	2405001e 	li	a1,30
  84:	3c020000 	lui	v0,0x0
  88:	8c420000 	lw	v0,0(v0)
  8c:	a4401514 	sh	zero,5396(v0)
  90:	8fa4001c 	lw	a0,28(sp)
  94:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
  98:	2405001c 	li	a1,28
  9c:	10400006 	beqz	v0,b8 <BgMizuWater_GetWaterLevelActionIndex+0xb8>
  a0:	87af001a 	lh	t7,26(sp)
  a4:	2401001c 	li	at,28
  a8:	51e10004 	beql	t7,at,bc <BgMizuWater_GetWaterLevelActionIndex+0xbc>
  ac:	8fa4001c 	lw	a0,28(sp)
  b0:	10000016 	b	10c <BgMizuWater_GetWaterLevelActionIndex+0x10c>
  b4:	24030003 	li	v1,3
  b8:	8fa4001c 	lw	a0,28(sp)
  bc:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
  c0:	2405001d 	li	a1,29
  c4:	10400006 	beqz	v0,e0 <BgMizuWater_GetWaterLevelActionIndex+0xe0>
  c8:	87b8001a 	lh	t8,26(sp)
  cc:	2401001d 	li	at,29
  d0:	53010004 	beql	t8,at,e4 <BgMizuWater_GetWaterLevelActionIndex+0xe4>
  d4:	8fa4001c 	lw	a0,28(sp)
  d8:	1000000c 	b	10c <BgMizuWater_GetWaterLevelActionIndex+0x10c>
  dc:	24030002 	li	v1,2
  e0:	8fa4001c 	lw	a0,28(sp)
  e4:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
  e8:	2405001e 	li	a1,30
  ec:	10400006 	beqz	v0,108 <BgMizuWater_GetWaterLevelActionIndex+0x108>
  f0:	87b9001a 	lh	t9,26(sp)
  f4:	2401001e 	li	at,30
  f8:	53210004 	beql	t9,at,10c <BgMizuWater_GetWaterLevelActionIndex+0x10c>
  fc:	00001825 	move	v1,zero
 100:	10000002 	b	10c <BgMizuWater_GetWaterLevelActionIndex+0x10c>
 104:	24030001 	li	v1,1
 108:	00001825 	move	v1,zero
 10c:	8fbf0014 	lw	ra,20(sp)
 110:	27bd0018 	addiu	sp,sp,24
 114:	00601025 	move	v0,v1
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <BgMizuWater_SetWaterBoxesHeight>:
 120:	afa50004 	sw	a1,4(sp)
 124:	00052c00 	sll	a1,a1,0x10
 128:	3c030000 	lui	v1,0x0
 12c:	3c020000 	lui	v0,0x0
 130:	00052c03 	sra	a1,a1,0x10
 134:	24420068 	addiu	v0,v0,104
 138:	24630048 	addiu	v1,v1,72
 13c:	8c6e0000 	lw	t6,0(v1)
 140:	24630010 	addiu	v1,v1,16
 144:	000e7900 	sll	t7,t6,0x4
 148:	008fc021 	addu	t8,a0,t7
 14c:	a7050002 	sh	a1,2(t8)
 150:	8c79fff4 	lw	t9,-12(v1)
 154:	00194100 	sll	t0,t9,0x4
 158:	00884821 	addu	t1,a0,t0
 15c:	a5250002 	sh	a1,2(t1)
 160:	8c6afff8 	lw	t2,-8(v1)
 164:	000a5900 	sll	t3,t2,0x4
 168:	008b6021 	addu	t4,a0,t3
 16c:	a5850002 	sh	a1,2(t4)
 170:	8c6dfffc 	lw	t5,-4(v1)
 174:	000d7100 	sll	t6,t5,0x4
 178:	008e7821 	addu	t7,a0,t6
 17c:	1462ffef 	bne	v1,v0,13c <BgMizuWater_SetWaterBoxesHeight+0x1c>
 180:	a5e50002 	sh	a1,2(t7)
 184:	03e00008 	jr	ra
 188:	00000000 	nop

0000018c <BgMizuWater_Init>:
 18c:	27bdffc0 	addiu	sp,sp,-64
 190:	afbf001c 	sw	ra,28(sp)
 194:	afb10018 	sw	s1,24(sp)
 198:	afb00014 	sw	s0,20(sp)
 19c:	8cae07c0 	lw	t6,1984(a1)
 1a0:	00a08825 	move	s1,a1
 1a4:	3c050000 	lui	a1,0x0
 1a8:	8dcf0028 	lw	t7,40(t6)
 1ac:	00808025 	move	s0,a0
 1b0:	24a50068 	addiu	a1,a1,104
 1b4:	afaf0034 	sw	t7,52(sp)
 1b8:	8482001c 	lh	v0,28(a0)
 1bc:	0002ca03 	sra	t9,v0,0x8
 1c0:	332800ff 	andi	t0,t9,0xff
 1c4:	305800ff 	andi	t8,v0,0xff
 1c8:	ac980150 	sw	t8,336(a0)
 1cc:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 1d0:	ac88015c 	sw	t0,348(a0)
 1d4:	8e090150 	lw	t1,336(s0)
 1d8:	c6000028 	lwc1	$f0,40(s0)
 1dc:	2d210005 	sltiu	at,t1,5
 1e0:	e6000158 	swc1	$f0,344(s0)
 1e4:	1020008d 	beqz	at,41c <BgMizuWater_Init+0x290>
 1e8:	e6000154 	swc1	$f0,340(s0)
 1ec:	00094880 	sll	t1,t1,0x2
 1f0:	3c010000 	lui	at,0x0
 1f4:	00290821 	addu	at,at,t1
 1f8:	8c290070 	lw	t1,112(at)
 1fc:	01200008 	jr	t1
 200:	00000000 	nop
 204:	3c0a0000 	lui	t2,0x0
 208:	8d4a0000 	lw	t2,0(t2)
 20c:	02202025 	move	a0,s1
 210:	854b1532 	lh	t3,5426(t2)
 214:	55600012 	bnezl	t3,260 <BgMizuWater_Init+0xd4>
 218:	2404ffff 	li	a0,-1
 21c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 220:	2405001c 	li	a1,28
 224:	afa20024 	sw	v0,36(sp)
 228:	02202025 	move	a0,s1
 22c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 230:	2405001d 	li	a1,29
 234:	afa20028 	sw	v0,40(sp)
 238:	02202025 	move	a0,s1
 23c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 240:	2405001e 	li	a1,30
 244:	3c040000 	lui	a0,0x0
 248:	24840000 	addiu	a0,a0,0
 24c:	8fa50024 	lw	a1,36(sp)
 250:	8fa60028 	lw	a2,40(sp)
 254:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 258:	00403825 	move	a3,v0
 25c:	2404ffff 	li	a0,-1
 260:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 264:	02202825 	move	a1,s1
 268:	000260c0 	sll	t4,v0,0x3
 26c:	3c0d0000 	lui	t5,0x0
 270:	01ac6821 	addu	t5,t5,t4
 274:	8dad0004 	lw	t5,4(t5)
 278:	afa20030 	sw	v0,48(sp)
 27c:	c6080158 	lwc1	$f8,344(s0)
 280:	448d2000 	mtc1	t5,$f4
 284:	00000000 	nop
 288:	468021a0 	cvt.s.w	$f6,$f4
 28c:	46083280 	add.s	$f10,$f6,$f8
 290:	e60a0028 	swc1	$f10,40(s0)
 294:	c6100028 	lwc1	$f16,40(s0)
 298:	8fa40034 	lw	a0,52(sp)
 29c:	4600848d 	trunc.w.s	$f18,$f16
 2a0:	44059000 	mfc1	a1,$f18
 2a4:	00000000 	nop
 2a8:	00052c00 	sll	a1,a1,0x10
 2ac:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 2b0:	00052c03 	sra	a1,a1,0x10
 2b4:	8faf0030 	lw	t7,48(sp)
 2b8:	3c190000 	lui	t9,0x0
 2bc:	02202025 	move	a0,s1
 2c0:	000fc0c0 	sll	t8,t7,0x3
 2c4:	0338c821 	addu	t9,t9,t8
 2c8:	8f390000 	lw	t9,0(t9)
 2cc:	2405001c 	li	a1,28
 2d0:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 2d4:	a619001c 	sh	t9,28(s0)
 2d8:	02202025 	move	a0,s1
 2dc:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 2e0:	2405001d 	li	a1,29
 2e4:	02202025 	move	a0,s1
 2e8:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 2ec:	2405001e 	li	a1,30
 2f0:	8602001c 	lh	v0,28(s0)
 2f4:	2401001c 	li	at,28
 2f8:	02202025 	move	a0,s1
 2fc:	1041000e 	beq	v0,at,338 <BgMizuWater_Init+0x1ac>
 300:	2401001d 	li	at,29
 304:	10410008 	beq	v0,at,328 <BgMizuWater_Init+0x19c>
 308:	2405001d 	li	a1,29
 30c:	2401001e 	li	at,30
 310:	14410009 	bne	v0,at,338 <BgMizuWater_Init+0x1ac>
 314:	2405001e 	li	a1,30
 318:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 31c:	02202025 	move	a0,s1
 320:	10000008 	b	344 <BgMizuWater_Init+0x1b8>
 324:	c6040028 	lwc1	$f4,40(s0)
 328:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 32c:	02202025 	move	a0,s1
 330:	10000004 	b	344 <BgMizuWater_Init+0x1b8>
 334:	c6040028 	lwc1	$f4,40(s0)
 338:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 33c:	2405001c 	li	a1,28
 340:	c6040028 	lwc1	$f4,40(s0)
 344:	10000035 	b	41c <BgMizuWater_Init+0x290>
 348:	e6040154 	swc1	$f4,340(s0)
 34c:	02202025 	move	a0,s1
 350:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 354:	8e05015c 	lw	a1,348(s0)
 358:	10400006 	beqz	v0,374 <BgMizuWater_Init+0x1e8>
 35c:	3c0142aa 	lui	at,0x42aa
 360:	c6060158 	lwc1	$f6,344(s0)
 364:	44814000 	mtc1	at,$f8
 368:	00000000 	nop
 36c:	46083280 	add.s	$f10,$f6,$f8
 370:	e60a0028 	swc1	$f10,40(s0)
 374:	c6100028 	lwc1	$f16,40(s0)
 378:	8faa0034 	lw	t2,52(sp)
 37c:	4600848d 	trunc.w.s	$f18,$f16
 380:	44099000 	mfc1	t1,$f18
 384:	10000025 	b	41c <BgMizuWater_Init+0x290>
 388:	a5490062 	sh	t1,98(t2)
 38c:	02202025 	move	a0,s1
 390:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 394:	8e05015c 	lw	a1,348(s0)
 398:	10400008 	beqz	v0,3bc <BgMizuWater_Init+0x230>
 39c:	3c0142dc 	lui	at,0x42dc
 3a0:	c6040158 	lwc1	$f4,344(s0)
 3a4:	44813000 	mtc1	at,$f6
 3a8:	00000000 	nop
 3ac:	46062200 	add.s	$f8,$f4,$f6
 3b0:	e6080028 	swc1	$f8,40(s0)
 3b4:	c60a0028 	lwc1	$f10,40(s0)
 3b8:	e60a0154 	swc1	$f10,340(s0)
 3bc:	c6100028 	lwc1	$f16,40(s0)
 3c0:	8fad0034 	lw	t5,52(sp)
 3c4:	4600848d 	trunc.w.s	$f18,$f16
 3c8:	440c9000 	mfc1	t4,$f18
 3cc:	10000013 	b	41c <BgMizuWater_Init+0x290>
 3d0:	a5ac0082 	sh	t4,130(t5)
 3d4:	02202025 	move	a0,s1
 3d8:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 3dc:	8e05015c 	lw	a1,348(s0)
 3e0:	10400008 	beqz	v0,404 <BgMizuWater_Init+0x278>
 3e4:	3c014320 	lui	at,0x4320
 3e8:	c6040158 	lwc1	$f4,344(s0)
 3ec:	44813000 	mtc1	at,$f6
 3f0:	00000000 	nop
 3f4:	46062200 	add.s	$f8,$f4,$f6
 3f8:	e6080028 	swc1	$f8,40(s0)
 3fc:	c60a0028 	lwc1	$f10,40(s0)
 400:	e60a0154 	swc1	$f10,340(s0)
 404:	c6100028 	lwc1	$f16,40(s0)
 408:	8fb80034 	lw	t8,52(sp)
 40c:	4600848d 	trunc.w.s	$f18,$f16
 410:	440f9000 	mfc1	t7,$f18
 414:	00000000 	nop
 418:	a70f0102 	sh	t7,258(t8)
 41c:	3c190000 	lui	t9,0x0
 420:	27390000 	addiu	t9,t9,0
 424:	ae19014c 	sw	t9,332(s0)
 428:	8fbf001c 	lw	ra,28(sp)
 42c:	8fb10018 	lw	s1,24(sp)
 430:	8fb00014 	lw	s0,20(sp)
 434:	03e00008 	jr	ra
 438:	27bd0040 	addiu	sp,sp,64

0000043c <BgMizuWater_Destroy>:
 43c:	afa40000 	sw	a0,0(sp)
 440:	03e00008 	jr	ra
 444:	afa50004 	sw	a1,4(sp)

00000448 <BgMizuWater_WaitForAction>:
 448:	27bdffc8 	addiu	sp,sp,-56
 44c:	afbf0024 	sw	ra,36(sp)
 450:	afb00020 	sw	s0,32(sp)
 454:	8c8e0150 	lw	t6,336(a0)
 458:	00808025 	move	s0,a0
 45c:	00a03025 	move	a2,a1
 460:	2dc10005 	sltiu	at,t6,5
 464:	1020005d 	beqz	at,5dc <BgMizuWater_WaitForAction+0x194>
 468:	000e7080 	sll	t6,t6,0x2
 46c:	3c010000 	lui	at,0x0
 470:	002e0821 	addu	at,at,t6
 474:	8c2e0084 	lw	t6,132(at)
 478:	01c00008 	jr	t6
 47c:	00000000 	nop
 480:	8604001c 	lh	a0,28(s0)
 484:	afa6003c 	sw	a2,60(sp)
 488:	00c02825 	move	a1,a2
 48c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 490:	a7a4002e 	sh	a0,46(sp)
 494:	1040001e 	beqz	v0,510 <BgMizuWater_WaitForAction+0xc8>
 498:	87af002e 	lh	t7,46(sp)
 49c:	0002c0c0 	sll	t8,v0,0x3
 4a0:	3c190000 	lui	t9,0x0
 4a4:	0338c821 	addu	t9,t9,t8
 4a8:	8f390000 	lw	t9,0(t9)
 4ac:	8fa4003c 	lw	a0,60(sp)
 4b0:	24050c30 	li	a1,3120
 4b4:	11f90016 	beq	t7,t9,510 <BgMizuWater_WaitForAction+0xc8>
 4b8:	2409ff9c 	li	t1,-100
 4bc:	01223023 	subu	a2,t1,v0
 4c0:	00063400 	sll	a2,a2,0x10
 4c4:	00063403 	sra	a2,a2,0x10
 4c8:	00003825 	move	a3,zero
 4cc:	afa00010 	sw	zero,16(sp)
 4d0:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 4d4:	afa20030 	sw	v0,48(sp)
 4d8:	8fa80030 	lw	t0,48(sp)
 4dc:	3c0b0000 	lui	t3,0x0
 4e0:	256b0000 	addiu	t3,t3,0
 4e4:	000850c0 	sll	t2,t0,0x3
 4e8:	014b1821 	addu	v1,t2,t3
 4ec:	8c6c0000 	lw	t4,0(v1)
 4f0:	c6080158 	lwc1	$f8,344(s0)
 4f4:	a60c001c 	sh	t4,28(s0)
 4f8:	8c6d0004 	lw	t5,4(v1)
 4fc:	448d2000 	mtc1	t5,$f4
 500:	00000000 	nop
 504:	468021a0 	cvt.s.w	$f6,$f4
 508:	46083280 	add.s	$f10,$f6,$f8
 50c:	e60a0154 	swc1	$f10,340(s0)
 510:	87ae002e 	lh	t6,46(sp)
 514:	8618001c 	lh	t8,28(s0)
 518:	51d80031 	beql	t6,t8,5e0 <BgMizuWater_WaitForAction+0x198>
 51c:	c6100028 	lwc1	$f16,40(s0)
 520:	11c0002e 	beqz	t6,5dc <BgMizuWater_WaitForAction+0x194>
 524:	8fa4003c 	lw	a0,60(sp)
 528:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 52c:	01c02825 	move	a1,t6
 530:	1000002b 	b	5e0 <BgMizuWater_WaitForAction+0x198>
 534:	c6100028 	lwc1	$f16,40(s0)
 538:	00c02025 	move	a0,a2
 53c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 540:	8e05015c 	lw	a1,348(s0)
 544:	10400007 	beqz	v0,564 <BgMizuWater_WaitForAction+0x11c>
 548:	3c0142aa 	lui	at,0x42aa
 54c:	c6100158 	lwc1	$f16,344(s0)
 550:	44819000 	mtc1	at,$f18
 554:	00000000 	nop
 558:	46128100 	add.s	$f4,$f16,$f18
 55c:	1000001f 	b	5dc <BgMizuWater_WaitForAction+0x194>
 560:	e6040154 	swc1	$f4,340(s0)
 564:	c6060158 	lwc1	$f6,344(s0)
 568:	1000001c 	b	5dc <BgMizuWater_WaitForAction+0x194>
 56c:	e6060154 	swc1	$f6,340(s0)
 570:	00c02025 	move	a0,a2
 574:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 578:	8e05015c 	lw	a1,348(s0)
 57c:	10400007 	beqz	v0,59c <BgMizuWater_WaitForAction+0x154>
 580:	3c0142dc 	lui	at,0x42dc
 584:	c6080158 	lwc1	$f8,344(s0)
 588:	44815000 	mtc1	at,$f10
 58c:	00000000 	nop
 590:	460a4400 	add.s	$f16,$f8,$f10
 594:	10000011 	b	5dc <BgMizuWater_WaitForAction+0x194>
 598:	e6100154 	swc1	$f16,340(s0)
 59c:	c6120158 	lwc1	$f18,344(s0)
 5a0:	1000000e 	b	5dc <BgMizuWater_WaitForAction+0x194>
 5a4:	e6120154 	swc1	$f18,340(s0)
 5a8:	00c02025 	move	a0,a2
 5ac:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 5b0:	8e05015c 	lw	a1,348(s0)
 5b4:	10400007 	beqz	v0,5d4 <BgMizuWater_WaitForAction+0x18c>
 5b8:	3c014320 	lui	at,0x4320
 5bc:	c6040158 	lwc1	$f4,344(s0)
 5c0:	44813000 	mtc1	at,$f6
 5c4:	00000000 	nop
 5c8:	46062200 	add.s	$f8,$f4,$f6
 5cc:	10000003 	b	5dc <BgMizuWater_WaitForAction+0x194>
 5d0:	e6080154 	swc1	$f8,340(s0)
 5d4:	c60a0158 	lwc1	$f10,344(s0)
 5d8:	e60a0154 	swc1	$f10,340(s0)
 5dc:	c6100028 	lwc1	$f16,40(s0)
 5e0:	c6120154 	lwc1	$f18,340(s0)
 5e4:	3c0f0000 	lui	t7,0x0
 5e8:	25ef0000 	addiu	t7,t7,0
 5ec:	46128032 	c.eq.s	$f16,$f18
 5f0:	00000000 	nop
 5f4:	45030003 	bc1tl	604 <BgMizuWater_WaitForAction+0x1bc>
 5f8:	8fbf0024 	lw	ra,36(sp)
 5fc:	ae0f014c 	sw	t7,332(s0)
 600:	8fbf0024 	lw	ra,36(sp)
 604:	8fb00020 	lw	s0,32(sp)
 608:	27bd0038 	addiu	sp,sp,56
 60c:	03e00008 	jr	ra
 610:	00000000 	nop

00000614 <BgMizuWater_ChangeWaterLevel>:
 614:	27bdffd0 	addiu	sp,sp,-48
 618:	afbf001c 	sw	ra,28(sp)
 61c:	afb00018 	sw	s0,24(sp)
 620:	8cae07c0 	lw	t6,1984(a1)
 624:	00808025 	move	s0,a0
 628:	00a03825 	move	a3,a1
 62c:	8dcf0028 	lw	t7,40(t6)
 630:	afaf0020 	sw	t7,32(sp)
 634:	8c980150 	lw	t8,336(a0)
 638:	2f010005 	sltiu	at,t8,5
 63c:	10200099 	beqz	at,8a4 <BgMizuWater_ChangeWaterLevel+0x290>
 640:	0018c080 	sll	t8,t8,0x2
 644:	3c010000 	lui	at,0x0
 648:	00380821 	addu	at,at,t8
 64c:	8c380098 	lw	t8,152(at)
 650:	03000008 	jr	t8
 654:	00000000 	nop
 658:	8604001c 	lh	a0,28(s0)
 65c:	afa70034 	sw	a3,52(sp)
 660:	00e02825 	move	a1,a3
 664:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 668:	a7a4002a 	sh	a0,42(sp)
 66c:	10400010 	beqz	v0,6b0 <BgMizuWater_ChangeWaterLevel+0x9c>
 670:	87a6002a 	lh	a2,42(sp)
 674:	3c080000 	lui	t0,0x0
 678:	25080000 	addiu	t0,t0,0
 67c:	0002c8c0 	sll	t9,v0,0x3
 680:	03281821 	addu	v1,t9,t0
 684:	8c640000 	lw	a0,0(v1)
 688:	50c4000a 	beql	a2,a0,6b4 <BgMizuWater_ChangeWaterLevel+0xa0>
 68c:	860a001c 	lh	t2,28(s0)
 690:	a604001c 	sh	a0,28(s0)
 694:	8c690004 	lw	t1,4(v1)
 698:	c6080158 	lwc1	$f8,344(s0)
 69c:	44892000 	mtc1	t1,$f4
 6a0:	00000000 	nop
 6a4:	468021a0 	cvt.s.w	$f6,$f4
 6a8:	46083280 	add.s	$f10,$f6,$f8
 6ac:	e60a0154 	swc1	$f10,340(s0)
 6b0:	860a001c 	lh	t2,28(s0)
 6b4:	50ca0006 	beql	a2,t2,6d0 <BgMizuWater_ChangeWaterLevel+0xbc>
 6b8:	26040028 	addiu	a0,s0,40
 6bc:	10c00003 	beqz	a2,6cc <BgMizuWater_ChangeWaterLevel+0xb8>
 6c0:	8fa40034 	lw	a0,52(sp)
 6c4:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 6c8:	00c02825 	move	a1,a2
 6cc:	26040028 	addiu	a0,s0,40
 6d0:	8e050154 	lw	a1,340(s0)
 6d4:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 6d8:	3c0640a0 	lui	a2,0x40a0
 6dc:	10400009 	beqz	v0,704 <BgMizuWater_ChangeWaterLevel+0xf0>
 6e0:	8fab0034 	lw	t3,52(sp)
 6e4:	3c010001 	lui	at,0x1
 6e8:	002b0821 	addu	at,at,t3
 6ec:	3c0c0000 	lui	t4,0x0
 6f0:	a4201d30 	sh	zero,7472(at)
 6f4:	258c0000 	addiu	t4,t4,0
 6f8:	ae0c014c 	sw	t4,332(s0)
 6fc:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 700:	8fa40034 	lw	a0,52(sp)
 704:	c6100028 	lwc1	$f16,40(s0)
 708:	8fad0034 	lw	t5,52(sp)
 70c:	4600848d 	trunc.w.s	$f18,$f16
 710:	8dae07c0 	lw	t6,1984(t5)
 714:	44059000 	mfc1	a1,$f18
 718:	8dc40028 	lw	a0,40(t6)
 71c:	00052c00 	sll	a1,a1,0x10
 720:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 724:	00052c03 	sra	a1,a1,0x10
 728:	1000005f 	b	8a8 <BgMizuWater_ChangeWaterLevel+0x294>
 72c:	c6000154 	lwc1	$f0,340(s0)
 730:	8e05015c 	lw	a1,348(s0)
 734:	afa70034 	sw	a3,52(sp)
 738:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 73c:	00e02025 	move	a0,a3
 740:	10400007 	beqz	v0,760 <BgMizuWater_ChangeWaterLevel+0x14c>
 744:	26040028 	addiu	a0,s0,40
 748:	3c0142aa 	lui	at,0x42aa
 74c:	44813000 	mtc1	at,$f6
 750:	c6040158 	lwc1	$f4,344(s0)
 754:	46062200 	add.s	$f8,$f4,$f6
 758:	10000003 	b	768 <BgMizuWater_ChangeWaterLevel+0x154>
 75c:	e6080154 	swc1	$f8,340(s0)
 760:	c60a0158 	lwc1	$f10,344(s0)
 764:	e60a0154 	swc1	$f10,340(s0)
 768:	8e050154 	lw	a1,340(s0)
 76c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 770:	3c063f80 	lui	a2,0x3f80
 774:	10400007 	beqz	v0,794 <BgMizuWater_ChangeWaterLevel+0x180>
 778:	8fb80034 	lw	t8,52(sp)
 77c:	3c010001 	lui	at,0x1
 780:	00380821 	addu	at,at,t8
 784:	3c190000 	lui	t9,0x0
 788:	a4201d30 	sh	zero,7472(at)
 78c:	27390000 	addiu	t9,t9,0
 790:	ae19014c 	sw	t9,332(s0)
 794:	c6100028 	lwc1	$f16,40(s0)
 798:	8faa0020 	lw	t2,32(sp)
 79c:	4600848d 	trunc.w.s	$f18,$f16
 7a0:	44099000 	mfc1	t1,$f18
 7a4:	1000003f 	b	8a4 <BgMizuWater_ChangeWaterLevel+0x290>
 7a8:	a5490062 	sh	t1,98(t2)
 7ac:	8e05015c 	lw	a1,348(s0)
 7b0:	afa70034 	sw	a3,52(sp)
 7b4:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 7b8:	00e02025 	move	a0,a3
 7bc:	10400007 	beqz	v0,7dc <BgMizuWater_ChangeWaterLevel+0x1c8>
 7c0:	26040028 	addiu	a0,s0,40
 7c4:	3c0142dc 	lui	at,0x42dc
 7c8:	44813000 	mtc1	at,$f6
 7cc:	c6040158 	lwc1	$f4,344(s0)
 7d0:	46062200 	add.s	$f8,$f4,$f6
 7d4:	10000003 	b	7e4 <BgMizuWater_ChangeWaterLevel+0x1d0>
 7d8:	e6080154 	swc1	$f8,340(s0)
 7dc:	c60a0158 	lwc1	$f10,344(s0)
 7e0:	e60a0154 	swc1	$f10,340(s0)
 7e4:	8e050154 	lw	a1,340(s0)
 7e8:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 7ec:	3c063f80 	lui	a2,0x3f80
 7f0:	10400007 	beqz	v0,810 <BgMizuWater_ChangeWaterLevel+0x1fc>
 7f4:	8fab0034 	lw	t3,52(sp)
 7f8:	3c010001 	lui	at,0x1
 7fc:	002b0821 	addu	at,at,t3
 800:	3c0c0000 	lui	t4,0x0
 804:	a4201d30 	sh	zero,7472(at)
 808:	258c0000 	addiu	t4,t4,0
 80c:	ae0c014c 	sw	t4,332(s0)
 810:	c6100028 	lwc1	$f16,40(s0)
 814:	8faf0020 	lw	t7,32(sp)
 818:	4600848d 	trunc.w.s	$f18,$f16
 81c:	440e9000 	mfc1	t6,$f18
 820:	10000020 	b	8a4 <BgMizuWater_ChangeWaterLevel+0x290>
 824:	a5ee0082 	sh	t6,130(t7)
 828:	8e05015c 	lw	a1,348(s0)
 82c:	afa70034 	sw	a3,52(sp)
 830:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 834:	00e02025 	move	a0,a3
 838:	10400007 	beqz	v0,858 <BgMizuWater_ChangeWaterLevel+0x244>
 83c:	26040028 	addiu	a0,s0,40
 840:	3c014320 	lui	at,0x4320
 844:	44813000 	mtc1	at,$f6
 848:	c6040158 	lwc1	$f4,344(s0)
 84c:	46062200 	add.s	$f8,$f4,$f6
 850:	10000003 	b	860 <BgMizuWater_ChangeWaterLevel+0x24c>
 854:	e6080154 	swc1	$f8,340(s0)
 858:	c60a0158 	lwc1	$f10,344(s0)
 85c:	e60a0154 	swc1	$f10,340(s0)
 860:	8e050154 	lw	a1,340(s0)
 864:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 868:	3c063f80 	lui	a2,0x3f80
 86c:	10400007 	beqz	v0,88c <BgMizuWater_ChangeWaterLevel+0x278>
 870:	8fb80034 	lw	t8,52(sp)
 874:	3c010001 	lui	at,0x1
 878:	00380821 	addu	at,at,t8
 87c:	3c190000 	lui	t9,0x0
 880:	a4201d30 	sh	zero,7472(at)
 884:	27390000 	addiu	t9,t9,0
 888:	ae19014c 	sw	t9,332(s0)
 88c:	c6100028 	lwc1	$f16,40(s0)
 890:	8faa0020 	lw	t2,32(sp)
 894:	4600848d 	trunc.w.s	$f18,$f16
 898:	44099000 	mfc1	t1,$f18
 89c:	00000000 	nop
 8a0:	a5490102 	sh	t1,258(t2)
 8a4:	c6000154 	lwc1	$f0,340(s0)
 8a8:	c6020028 	lwc1	$f2,40(s0)
 8ac:	24050078 	li	a1,120
 8b0:	24060014 	li	a2,20
 8b4:	4602003c 	c.lt.s	$f0,$f2
 8b8:	00000000 	nop
 8bc:	4502000a 	bc1fl	8e8 <BgMizuWater_ChangeWaterLevel+0x2d4>
 8c0:	4600103c 	c.lt.s	$f2,$f0
 8c4:	44806000 	mtc1	zero,$f12
 8c8:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 8cc:	2407000a 	li	a3,10
 8d0:	02002025 	move	a0,s0
 8d4:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 8d8:	2405205e 	li	a1,8286
 8dc:	1000000d 	b	914 <BgMizuWater_ChangeWaterLevel+0x300>
 8e0:	8fbf001c 	lw	ra,28(sp)
 8e4:	4600103c 	c.lt.s	$f2,$f0
 8e8:	24050078 	li	a1,120
 8ec:	24060014 	li	a2,20
 8f0:	45020008 	bc1fl	914 <BgMizuWater_ChangeWaterLevel+0x300>
 8f4:	8fbf001c 	lw	ra,28(sp)
 8f8:	44806000 	mtc1	zero,$f12
 8fc:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 900:	2407000a 	li	a3,10
 904:	02002025 	move	a0,s0
 908:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 90c:	2405205e 	li	a1,8286
 910:	8fbf001c 	lw	ra,28(sp)
 914:	8fb00018 	lw	s0,24(sp)
 918:	27bd0030 	addiu	sp,sp,48
 91c:	03e00008 	jr	ra
 920:	00000000 	nop

00000924 <BgMizuWater_Update>:
 924:	3c0e0000 	lui	t6,0x0
 928:	8dce0000 	lw	t6,0(t6)
 92c:	27bdffc0 	addiu	sp,sp,-64
 930:	afbf001c 	sw	ra,28(sp)
 934:	afb00018 	sw	s0,24(sp)
 938:	85cf1532 	lh	t7,5426(t6)
 93c:	00803025 	move	a2,a0
 940:	00a08025 	move	s0,a1
 944:	15e00013 	bnez	t7,994 <BgMizuWater_Update+0x70>
 948:	00a02025 	move	a0,a1
 94c:	2405001c 	li	a1,28
 950:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 954:	afa60040 	sw	a2,64(sp)
 958:	afa20020 	sw	v0,32(sp)
 95c:	02002025 	move	a0,s0
 960:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 964:	2405001d 	li	a1,29
 968:	afa20024 	sw	v0,36(sp)
 96c:	02002025 	move	a0,s0
 970:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 974:	2405001e 	li	a1,30
 978:	3c040000 	lui	a0,0x0
 97c:	2484001c 	addiu	a0,a0,28
 980:	8fa50020 	lw	a1,32(sp)
 984:	8fa60024 	lw	a2,36(sp)
 988:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 98c:	00403825 	move	a3,v0
 990:	8fa60040 	lw	a2,64(sp)
 994:	8cd80150 	lw	t8,336(a2)
 998:	5700004a 	bnezl	t8,ac4 <BgMizuWater_Update+0x1a0>
 99c:	8cd9014c 	lw	t9,332(a2)
 9a0:	c4c40028 	lwc1	$f4,40(a2)
 9a4:	3c01c170 	lui	at,0xc170
 9a8:	44811000 	mtc1	at,$f2
 9ac:	4600218d 	trunc.w.s	$f6,$f4
 9b0:	00002025 	move	a0,zero
 9b4:	00001825 	move	v1,zero
 9b8:	3c010000 	lui	at,0x0
 9bc:	44023000 	mfc1	v0,$f6
 9c0:	00000000 	nop
 9c4:	44824000 	mtc1	v0,$f8
 9c8:	00000000 	nop
 9cc:	46804020 	cvt.s.w	$f0,$f8
 9d0:	4602003c 	c.lt.s	$f0,$f2
 9d4:	00000000 	nop
 9d8:	4500000e 	bc1f	a14 <BgMizuWater_Update+0xf0>
 9dc:	00000000 	nop
 9e0:	3c010000 	lui	at,0x0
 9e4:	c42a00ac 	lwc1	$f10,172(at)
 9e8:	3c01444d 	lui	at,0x444d
 9ec:	44819000 	mtc1	at,$f18
 9f0:	460a0401 	sub.s	$f16,$f0,$f10
 9f4:	3c014348 	lui	at,0x4348
 9f8:	44813000 	mtc1	at,$f6
 9fc:	46128103 	div.s	$f4,$f16,$f18
 a00:	46062202 	mul.s	$f8,$f4,$f6
 a04:	4600428d 	trunc.w.s	$f10,$f8
 a08:	44035000 	mfc1	v1,$f10
 a0c:	10000027 	b	aac <BgMizuWater_Update+0x188>
 a10:	0004c200 	sll	t8,a0,0x8
 a14:	c42c00b0 	lwc1	$f12,176(at)
 a18:	3c010000 	lui	at,0x0
 a1c:	460c003c 	c.lt.s	$f0,$f12
 a20:	00000000 	nop
 a24:	4500000e 	bc1f	a60 <BgMizuWater_Update+0x13c>
 a28:	00000000 	nop
 a2c:	46020401 	sub.s	$f16,$f0,$f2
 a30:	3c0143e6 	lui	at,0x43e6
 a34:	44819000 	mtc1	at,$f18
 a38:	3c0142be 	lui	at,0x42be
 a3c:	44813000 	mtc1	at,$f6
 a40:	46128103 	div.s	$f4,$f16,$f18
 a44:	240b00ff 	li	t3,255
 a48:	24040001 	li	a0,1
 a4c:	46062202 	mul.s	$f8,$f4,$f6
 a50:	4600428d 	trunc.w.s	$f10,$f8
 a54:	440a5000 	mfc1	t2,$f10
 a58:	10000013 	b	aa8 <BgMizuWater_Update+0x184>
 a5c:	016a1823 	subu	v1,t3,t2
 a60:	c43000b4 	lwc1	$f16,180(at)
 a64:	3c0143a0 	lui	at,0x43a0
 a68:	4610003e 	c.le.s	$f0,$f16
 a6c:	00000000 	nop
 a70:	4502000e 	bc1fl	aac <BgMizuWater_Update+0x188>
 a74:	0004c200 	sll	t8,a0,0x8
 a78:	460c0481 	sub.s	$f18,$f0,$f12
 a7c:	44812000 	mtc1	at,$f4
 a80:	3c0142be 	lui	at,0x42be
 a84:	44814000 	mtc1	at,$f8
 a88:	46049183 	div.s	$f6,$f18,$f4
 a8c:	240e00ff 	li	t6,255
 a90:	24040002 	li	a0,2
 a94:	46083282 	mul.s	$f10,$f6,$f8
 a98:	4600540d 	trunc.w.s	$f16,$f10
 a9c:	440d8000 	mfc1	t5,$f16
 aa0:	00000000 	nop
 aa4:	01cd1823 	subu	v1,t6,t5
 aa8:	0004c200 	sll	t8,a0,0x8
 aac:	307900ff 	andi	t9,v1,0xff
 ab0:	3c010001 	lui	at,0x1
 ab4:	00300821 	addu	at,at,s0
 ab8:	03194025 	or	t0,t8,t9
 abc:	a4281d32 	sh	t0,7474(at)
 ac0:	8cd9014c 	lw	t9,332(a2)
 ac4:	00c02025 	move	a0,a2
 ac8:	02002825 	move	a1,s0
 acc:	0320f809 	jalr	t9
 ad0:	00000000 	nop
 ad4:	8fbf001c 	lw	ra,28(sp)
 ad8:	8fb00018 	lw	s0,24(sp)
 adc:	27bd0040 	addiu	sp,sp,64
 ae0:	03e00008 	jr	ra
 ae4:	00000000 	nop

00000ae8 <BgMizuWater_Draw>:
 ae8:	27bdff88 	addiu	sp,sp,-120
 aec:	afb10038 	sw	s1,56(sp)
 af0:	00a08825 	move	s1,a1
 af4:	afbf003c 	sw	ra,60(sp)
 af8:	afb00034 	sw	s0,52(sp)
 afc:	afa40078 	sw	a0,120(sp)
 b00:	8ca50000 	lw	a1,0(a1)
 b04:	3c060000 	lui	a2,0x0
 b08:	24c60028 	addiu	a2,a2,40
 b0c:	27a4005c 	addiu	a0,sp,92
 b10:	240702e2 	li	a3,738
 b14:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 b18:	00a08025 	move	s0,a1
 b1c:	3c030001 	lui	v1,0x1
 b20:	00711821 	addu	v1,v1,s1
 b24:	8c631de4 	lw	v1,7652(v1)
 b28:	8e240000 	lw	a0,0(s1)
 b2c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 b30:	afa30070 	sw	v1,112(sp)
 b34:	8e0202d0 	lw	v0,720(s0)
 b38:	8fa70070 	lw	a3,112(sp)
 b3c:	3c0fdb06 	lui	t7,0xdb06
 b40:	244e0008 	addiu	t6,v0,8
 b44:	ae0e02d0 	sw	t6,720(s0)
 b48:	35ef0030 	ori	t7,t7,0x30
 b4c:	ac4f0000 	sw	t7,0(v0)
 b50:	8e240000 	lw	a0,0(s1)
 b54:	24180020 	li	t8,32
 b58:	24190020 	li	t9,32
 b5c:	24090001 	li	t1,1
 b60:	240a0020 	li	t2,32
 b64:	240b0020 	li	t3,32
 b68:	00073023 	negu	a2,a3
 b6c:	afa60020 	sw	a2,32(sp)
 b70:	afab0028 	sw	t3,40(sp)
 b74:	afaa0024 	sw	t2,36(sp)
 b78:	afa90018 	sw	t1,24(sp)
 b7c:	afb90014 	sw	t9,20(sp)
 b80:	afb80010 	sw	t8,16(sp)
 b84:	afa0001c 	sw	zero,28(sp)
 b88:	00002825 	move	a1,zero
 b8c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 b90:	afa20058 	sw	v0,88(sp)
 b94:	8fa80058 	lw	t0,88(sp)
 b98:	3c0dda38 	lui	t5,0xda38
 b9c:	35ad0003 	ori	t5,t5,0x3
 ba0:	ad020004 	sw	v0,4(t0)
 ba4:	8e0202d0 	lw	v0,720(s0)
 ba8:	3c050000 	lui	a1,0x0
 bac:	24a50040 	addiu	a1,a1,64
 bb0:	244c0008 	addiu	t4,v0,8
 bb4:	ae0c02d0 	sw	t4,720(s0)
 bb8:	ac4d0000 	sw	t5,0(v0)
 bbc:	8e240000 	lw	a0,0(s1)
 bc0:	240602ed 	li	a2,749
 bc4:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 bc8:	afa20054 	sw	v0,84(sp)
 bcc:	8fa30054 	lw	v1,84(sp)
 bd0:	3c0ffb00 	lui	t7,0xfb00
 bd4:	2418ff80 	li	t8,-128
 bd8:	ac620004 	sw	v0,4(v1)
 bdc:	8e0202d0 	lw	v0,720(s0)
 be0:	3c09fa00 	lui	t1,0xfa00
 be4:	240aff66 	li	t2,-154
 be8:	244e0008 	addiu	t6,v0,8
 bec:	ae0e02d0 	sw	t6,720(s0)
 bf0:	ac580004 	sw	t8,4(v0)
 bf4:	ac4f0000 	sw	t7,0(v0)
 bf8:	8e0202d0 	lw	v0,720(s0)
 bfc:	3c0d0000 	lui	t5,0x0
 c00:	25ad0000 	addiu	t5,t5,0
 c04:	24590008 	addiu	t9,v0,8
 c08:	ae1902d0 	sw	t9,720(s0)
 c0c:	ac4a0004 	sw	t2,4(v0)
 c10:	ac490000 	sw	t1,0(v0)
 c14:	8e0202d0 	lw	v0,720(s0)
 c18:	3c0cde00 	lui	t4,0xde00
 c1c:	3c060000 	lui	a2,0x0
 c20:	244b0008 	addiu	t3,v0,8
 c24:	ae0b02d0 	sw	t3,720(s0)
 c28:	ac4d0004 	sw	t5,4(v0)
 c2c:	ac4c0000 	sw	t4,0(v0)
 c30:	8e250000 	lw	a1,0(s1)
 c34:	24c60058 	addiu	a2,a2,88
 c38:	27a4005c 	addiu	a0,sp,92
 c3c:	0c000000 	jal	0 <BgMizuWater_GetWaterLevelActionIndex>
 c40:	240702f4 	li	a3,756
 c44:	8fbf003c 	lw	ra,60(sp)
 c48:	8fb00034 	lw	s0,52(sp)
 c4c:	8fb10038 	lw	s1,56(sp)
 c50:	03e00008 	jr	ra
 c54:	27bd0078 	addiu	sp,sp,120
	...
