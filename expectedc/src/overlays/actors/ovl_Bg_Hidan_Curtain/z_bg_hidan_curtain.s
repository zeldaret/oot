
build/src/overlays/actors/ovl_Bg_Hidan_Curtain/z_bg_hidan_curtain.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanCurtain_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	afbf001c 	sw	ra,28(sp)
  10:	afa50034 	sw	a1,52(sp)
  14:	3c040000 	lui	a0,0x0
  18:	24840000 	addiu	a0,a0,0
  1c:	0c000000 	jal	0 <BgHidanCurtain_Init>
  20:	8605001c 	lh	a1,28(s0)
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgHidanCurtain_Init>
  2c:	3c0541a0 	lui	a1,0x41a0
  30:	860e001c 	lh	t6,28(s0)
  34:	000e7b03 	sra	t7,t6,0xc
  38:	31f8000f 	andi	t8,t7,0xf
  3c:	330200ff 	andi	v0,t8,0xff
  40:	28410007 	slti	at,v0,7
  44:	1420000c 	bnez	at,78 <BgHidanCurtain_Init+0x78>
  48:	a2180150 	sb	t8,336(s0)
  4c:	3c040000 	lui	a0,0x0
  50:	3c050000 	lui	a1,0x0
  54:	24a50060 	addiu	a1,a1,96
  58:	2484001c 	addiu	a0,a0,28
  5c:	24060160 	li	a2,352
  60:	0c000000 	jal	0 <BgHidanCurtain_Init>
  64:	8607001c 	lh	a3,28(s0)
  68:	0c000000 	jal	0 <BgHidanCurtain_Init>
  6c:	02002025 	move	a0,s0
  70:	1000007a 	b	25c <BgHidanCurtain_Init+0x25c>
  74:	8fbf001c 	lw	ra,28(sp)
  78:	24010002 	li	at,2
  7c:	10410002 	beq	v0,at,88 <BgHidanCurtain_Init+0x88>
  80:	24010004 	li	at,4
  84:	14410003 	bne	v0,at,94 <BgHidanCurtain_Init+0x94>
  88:	24190001 	li	t9,1
  8c:	10000002 	b	98 <BgHidanCurtain_Init+0x98>
  90:	a2190152 	sb	t9,338(s0)
  94:	a2000152 	sb	zero,338(s0)
  98:	92080152 	lbu	t0,338(s0)
  9c:	3c0a0000 	lui	t2,0x0
  a0:	254a0034 	addiu	t2,t2,52
  a4:	00084900 	sll	t1,t0,0x4
  a8:	012a5821 	addu	t3,t1,t2
  ac:	afab0024 	sw	t3,36(sp)
  b0:	860f001c 	lh	t7,28(s0)
  b4:	860c001c 	lh	t4,28(s0)
  b8:	3c040000 	lui	a0,0x0
  bc:	31f8003f 	andi	t8,t7,0x3f
  c0:	a618001c 	sh	t8,28(s0)
  c4:	8607001c 	lh	a3,28(s0)
  c8:	000c6983 	sra	t5,t4,0x6
  cc:	31ae003f 	andi	t6,t5,0x3f
  d0:	04e00003 	bltz	a3,e0 <BgHidanCurtain_Init+0xe0>
  d4:	a20e0151 	sb	t6,337(s0)
  d8:	28e10040 	slti	at,a3,64
  dc:	14200005 	bnez	at,f4 <BgHidanCurtain_Init+0xf4>
  e0:	3c050000 	lui	a1,0x0
  e4:	24a500c4 	addiu	a1,a1,196
  e8:	24840078 	addiu	a0,a0,120
  ec:	0c000000 	jal	0 <BgHidanCurtain_Init>
  f0:	24060175 	li	a2,373
  f4:	8fb90024 	lw	t9,36(sp)
  f8:	02002025 	move	a0,s0
  fc:	0c000000 	jal	0 <BgHidanCurtain_Init>
 100:	8f250004 	lw	a1,4(t9)
 104:	26050158 	addiu	a1,s0,344
 108:	afa50020 	sw	a1,32(sp)
 10c:	0c000000 	jal	0 <BgHidanCurtain_Init>
 110:	8fa40034 	lw	a0,52(sp)
 114:	3c070000 	lui	a3,0x0
 118:	24e70000 	addiu	a3,a3,0
 11c:	8fa40034 	lw	a0,52(sp)
 120:	8fa50020 	lw	a1,32(sp)
 124:	0c000000 	jal	0 <BgHidanCurtain_Init>
 128:	02003025 	move	a2,s0
 12c:	c6040024 	lwc1	$f4,36(s0)
 130:	c6080028 	lwc1	$f8,40(s0)
 134:	c610002c 	lwc1	$f16,44(s0)
 138:	4600218d 	trunc.w.s	$f6,$f4
 13c:	8fa30024 	lw	v1,36(sp)
 140:	02002025 	move	a0,s0
 144:	4600428d 	trunc.w.s	$f10,$f8
 148:	44093000 	mfc1	t1,$f6
 14c:	4600848d 	trunc.w.s	$f18,$f16
 150:	440b5000 	mfc1	t3,$f10
 154:	a609019e 	sh	t1,414(s0)
 158:	440d9000 	mfc1	t5,$f18
 15c:	a60b01a0 	sh	t3,416(s0)
 160:	a60d01a2 	sh	t5,418(s0)
 164:	846e0000 	lh	t6,0(v1)
 168:	a60e0198 	sh	t6,408(s0)
 16c:	846f0002 	lh	t7,2(v1)
 170:	a60f019a 	sh	t7,410(s0)
 174:	0c000000 	jal	0 <BgHidanCurtain_Init>
 178:	8fa50020 	lw	a1,32(sp)
 17c:	3c060000 	lui	a2,0x0
 180:	24c6002c 	addiu	a2,a2,44
 184:	26040098 	addiu	a0,s0,152
 188:	0c000000 	jal	0 <BgHidanCurtain_Init>
 18c:	00002825 	move	a1,zero
 190:	92020150 	lbu	v0,336(s0)
 194:	3c190000 	lui	t9,0x0
 198:	27390000 	addiu	t9,t9,0
 19c:	14400006 	bnez	v0,1b8 <BgHidanCurtain_Init+0x1b8>
 1a0:	24010004 	li	at,4
 1a4:	3c180000 	lui	t8,0x0
 1a8:	27180000 	addiu	t8,t8,0
 1ac:	ae18014c 	sw	t8,332(s0)
 1b0:	1000000c 	b	1e4 <BgHidanCurtain_Init+0x1e4>
 1b4:	92020150 	lbu	v0,336(s0)
 1b8:	10410004 	beq	v0,at,1cc <BgHidanCurtain_Init+0x1cc>
 1bc:	ae19014c 	sw	t9,332(s0)
 1c0:	24010005 	li	at,5
 1c4:	54410008 	bnel	v0,at,1e8 <BgHidanCurtain_Init+0x1e8>
 1c8:	24010001 	li	at,1
 1cc:	8fa80024 	lw	t0,36(sp)
 1d0:	c604000c 	lwc1	$f4,12(s0)
 1d4:	92020150 	lbu	v0,336(s0)
 1d8:	c5060008 	lwc1	$f6,8(t0)
 1dc:	46062201 	sub.s	$f8,$f4,$f6
 1e0:	e6080028 	swc1	$f8,40(s0)
 1e4:	24010001 	li	at,1
 1e8:	14410006 	bne	v0,at,204 <BgHidanCurtain_Init+0x204>
 1ec:	8fa40034 	lw	a0,52(sp)
 1f0:	0c000000 	jal	0 <BgHidanCurtain_Init>
 1f4:	92050151 	lbu	a1,337(s0)
 1f8:	1440000b 	bnez	v0,228 <BgHidanCurtain_Init+0x228>
 1fc:	00000000 	nop
 200:	92020150 	lbu	v0,336(s0)
 204:	10400003 	beqz	v0,214 <BgHidanCurtain_Init+0x214>
 208:	24010006 	li	at,6
 20c:	14410008 	bne	v0,at,230 <BgHidanCurtain_Init+0x230>
 210:	00000000 	nop
 214:	8fa40034 	lw	a0,52(sp)
 218:	0c000000 	jal	0 <BgHidanCurtain_Init>
 21c:	82050003 	lb	a1,3(s0)
 220:	10400003 	beqz	v0,230 <BgHidanCurtain_Init+0x230>
 224:	00000000 	nop
 228:	0c000000 	jal	0 <BgHidanCurtain_Init>
 22c:	02002025 	move	a0,s0
 230:	0c000000 	jal	0 <BgHidanCurtain_Init>
 234:	00000000 	nop
 238:	3c014170 	lui	at,0x4170
 23c:	44815000 	mtc1	at,$f10
 240:	00000000 	nop
 244:	460a0402 	mul.s	$f16,$f0,$f10
 248:	4600848d 	trunc.w.s	$f18,$f16
 24c:	440a9000 	mfc1	t2,$f18
 250:	00000000 	nop
 254:	a60a0156 	sh	t2,342(s0)
 258:	8fbf001c 	lw	ra,28(sp)
 25c:	8fb00018 	lw	s0,24(sp)
 260:	27bd0030 	addiu	sp,sp,48
 264:	03e00008 	jr	ra
 268:	00000000 	nop

0000026c <BgHidanCurtain_Destroy>:
 26c:	27bdffe8 	addiu	sp,sp,-24
 270:	00803025 	move	a2,a0
 274:	afbf0014 	sw	ra,20(sp)
 278:	00a02025 	move	a0,a1
 27c:	0c000000 	jal	0 <BgHidanCurtain_Init>
 280:	24c50158 	addiu	a1,a2,344
 284:	8fbf0014 	lw	ra,20(sp)
 288:	27bd0018 	addiu	sp,sp,24
 28c:	03e00008 	jr	ra
 290:	00000000 	nop

00000294 <BgHidanCurtain_WaitForSwitchOn>:
 294:	27bdffd8 	addiu	sp,sp,-40
 298:	afb00020 	sw	s0,32(sp)
 29c:	00808025 	move	s0,a0
 2a0:	afbf0024 	sw	ra,36(sp)
 2a4:	afa5002c 	sw	a1,44(sp)
 2a8:	00a02025 	move	a0,a1
 2ac:	0c000000 	jal	0 <BgHidanCurtain_Init>
 2b0:	8605001c 	lh	a1,28(s0)
 2b4:	1040001f 	beqz	v0,334 <BgHidanCurtain_WaitForSwitchOn+0xa0>
 2b8:	8fa4002c 	lw	a0,44(sp)
 2bc:	92020150 	lbu	v0,336(s0)
 2c0:	24010001 	li	at,1
 2c4:	3c0e0000 	lui	t6,0x0
 2c8:	1441000a 	bne	v0,at,2f4 <BgHidanCurtain_WaitForSwitchOn+0x60>
 2cc:	25ce0000 	addiu	t6,t6,0
 2d0:	ae0e014c 	sw	t6,332(s0)
 2d4:	afa00010 	sw	zero,16(sp)
 2d8:	24050d16 	li	a1,3350
 2dc:	2406ff9d 	li	a2,-99
 2e0:	0c000000 	jal	0 <BgHidanCurtain_Init>
 2e4:	02003825 	move	a3,s0
 2e8:	240f0032 	li	t7,50
 2ec:	10000011 	b	334 <BgHidanCurtain_WaitForSwitchOn+0xa0>
 2f0:	a60f0154 	sh	t7,340(s0)
 2f4:	24010003 	li	at,3
 2f8:	1441000c 	bne	v0,at,32c <BgHidanCurtain_WaitForSwitchOn+0x98>
 2fc:	3c080000 	lui	t0,0x0
 300:	3c180000 	lui	t8,0x0
 304:	27180000 	addiu	t8,t8,0
 308:	ae18014c 	sw	t8,332(s0)
 30c:	afa00010 	sw	zero,16(sp)
 310:	24050d20 	li	a1,3360
 314:	2406003c 	li	a2,60
 318:	0c000000 	jal	0 <BgHidanCurtain_Init>
 31c:	02003825 	move	a3,s0
 320:	2419001e 	li	t9,30
 324:	10000003 	b	334 <BgHidanCurtain_WaitForSwitchOn+0xa0>
 328:	a6190154 	sh	t9,340(s0)
 32c:	25080000 	addiu	t0,t0,0
 330:	ae08014c 	sw	t0,332(s0)
 334:	8fbf0024 	lw	ra,36(sp)
 338:	8fb00020 	lw	s0,32(sp)
 33c:	27bd0028 	addiu	sp,sp,40
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <BgHidanCurtain_WaitForCutscene>:
 348:	afa50004 	sw	a1,4(sp)
 34c:	84830154 	lh	v1,340(a0)
 350:	3c0f0000 	lui	t7,0x0
 354:	25ef0000 	addiu	t7,t7,0
 358:	2c620001 	sltiu	v0,v1,1
 35c:	246effff 	addiu	t6,v1,-1
 360:	10400002 	beqz	v0,36c <BgHidanCurtain_WaitForCutscene+0x24>
 364:	a48e0154 	sh	t6,340(a0)
 368:	ac8f014c 	sw	t7,332(a0)
 36c:	03e00008 	jr	ra
 370:	00000000 	nop

00000374 <BgHidanCurtain_WaitForClear>:
 374:	27bdffe8 	addiu	sp,sp,-24
 378:	afa40018 	sw	a0,24(sp)
 37c:	8fae0018 	lw	t6,24(sp)
 380:	afbf0014 	sw	ra,20(sp)
 384:	00a02025 	move	a0,a1
 388:	0c000000 	jal	0 <BgHidanCurtain_Init>
 38c:	81c50003 	lb	a1,3(t6)
 390:	10400004 	beqz	v0,3a4 <BgHidanCurtain_WaitForClear+0x30>
 394:	8fb80018 	lw	t8,24(sp)
 398:	3c0f0000 	lui	t7,0x0
 39c:	25ef0000 	addiu	t7,t7,0
 3a0:	af0f014c 	sw	t7,332(t8)
 3a4:	8fbf0014 	lw	ra,20(sp)
 3a8:	27bd0018 	addiu	sp,sp,24
 3ac:	03e00008 	jr	ra
 3b0:	00000000 	nop

000003b4 <BgHidanCurtain_WaitForSwitchOff>:
 3b4:	27bdffe8 	addiu	sp,sp,-24
 3b8:	afa40018 	sw	a0,24(sp)
 3bc:	8fae0018 	lw	t6,24(sp)
 3c0:	afbf0014 	sw	ra,20(sp)
 3c4:	00a02025 	move	a0,a1
 3c8:	0c000000 	jal	0 <BgHidanCurtain_Init>
 3cc:	85c5001c 	lh	a1,28(t6)
 3d0:	14400004 	bnez	v0,3e4 <BgHidanCurtain_WaitForSwitchOff+0x30>
 3d4:	8fb80018 	lw	t8,24(sp)
 3d8:	3c0f0000 	lui	t7,0x0
 3dc:	25ef0000 	addiu	t7,t7,0
 3e0:	af0f014c 	sw	t7,332(t8)
 3e4:	8fbf0014 	lw	ra,20(sp)
 3e8:	27bd0018 	addiu	sp,sp,24
 3ec:	03e00008 	jr	ra
 3f0:	00000000 	nop

000003f4 <BgHidanCurtain_TurnOn>:
 3f4:	27bdffe8 	addiu	sp,sp,-24
 3f8:	afbf0014 	sw	ra,20(sp)
 3fc:	afa5001c 	sw	a1,28(sp)
 400:	908e0152 	lbu	t6,338(a0)
 404:	3c010000 	lui	at,0x0
 408:	00803825 	move	a3,a0
 40c:	000e7900 	sll	t7,t6,0x4
 410:	002f0821 	addu	at,at,t7
 414:	c4200040 	lwc1	$f0,64(at)
 418:	8ce5000c 	lw	a1,12(a3)
 41c:	afa70018 	sw	a3,24(sp)
 420:	44060000 	mfc1	a2,$f0
 424:	0c000000 	jal	0 <BgHidanCurtain_Init>
 428:	24840028 	addiu	a0,a0,40
 42c:	10400009 	beqz	v0,454 <BgHidanCurtain_TurnOn+0x60>
 430:	8fa70018 	lw	a3,24(sp)
 434:	84e5001c 	lh	a1,28(a3)
 438:	afa70018 	sw	a3,24(sp)
 43c:	0c000000 	jal	0 <BgHidanCurtain_Init>
 440:	8fa4001c 	lw	a0,28(sp)
 444:	8fa70018 	lw	a3,24(sp)
 448:	3c180000 	lui	t8,0x0
 44c:	27180000 	addiu	t8,t8,0
 450:	acf8014c 	sw	t8,332(a3)
 454:	8fbf0014 	lw	ra,20(sp)
 458:	27bd0018 	addiu	sp,sp,24
 45c:	03e00008 	jr	ra
 460:	00000000 	nop

00000464 <BgHidanCurtain_TurnOff>:
 464:	27bdffe8 	addiu	sp,sp,-24
 468:	afbf0014 	sw	ra,20(sp)
 46c:	afa5001c 	sw	a1,28(sp)
 470:	908e0152 	lbu	t6,338(a0)
 474:	3c180000 	lui	t8,0x0
 478:	27180034 	addiu	t8,t8,52
 47c:	000e7900 	sll	t7,t6,0x4
 480:	00803825 	move	a3,a0
 484:	01f81021 	addu	v0,t7,t8
 488:	c4460008 	lwc1	$f6,8(v0)
 48c:	c4e4000c 	lwc1	$f4,12(a3)
 490:	8c46000c 	lw	a2,12(v0)
 494:	afa70018 	sw	a3,24(sp)
 498:	46062201 	sub.s	$f8,$f4,$f6
 49c:	24840028 	addiu	a0,a0,40
 4a0:	44054000 	mfc1	a1,$f8
 4a4:	0c000000 	jal	0 <BgHidanCurtain_Init>
 4a8:	00000000 	nop
 4ac:	10400025 	beqz	v0,544 <BgHidanCurtain_TurnOff+0xe0>
 4b0:	8fa70018 	lw	a3,24(sp)
 4b4:	90e20150 	lbu	v0,336(a3)
 4b8:	24010006 	li	at,6
 4bc:	10400003 	beqz	v0,4cc <BgHidanCurtain_TurnOff+0x68>
 4c0:	00000000 	nop
 4c4:	54410006 	bnel	v0,at,4e0 <BgHidanCurtain_TurnOff+0x7c>
 4c8:	24010005 	li	at,5
 4cc:	0c000000 	jal	0 <BgHidanCurtain_Init>
 4d0:	00e02025 	move	a0,a3
 4d4:	1000001c 	b	548 <BgHidanCurtain_TurnOff+0xe4>
 4d8:	8fbf0014 	lw	ra,20(sp)
 4dc:	24010005 	li	at,5
 4e0:	14410005 	bne	v0,at,4f8 <BgHidanCurtain_TurnOff+0x94>
 4e4:	3c0c0000 	lui	t4,0x0
 4e8:	3c190000 	lui	t9,0x0
 4ec:	27390000 	addiu	t9,t9,0
 4f0:	10000014 	b	544 <BgHidanCurtain_TurnOff+0xe0>
 4f4:	acf9014c 	sw	t9,332(a3)
 4f8:	24010002 	li	at,2
 4fc:	14410004 	bne	v0,at,510 <BgHidanCurtain_TurnOff+0xac>
 500:	258c0000 	addiu	t4,t4,0
 504:	24080190 	li	t0,400
 508:	1000000d 	b	540 <BgHidanCurtain_TurnOff+0xdc>
 50c:	a4e80154 	sh	t0,340(a3)
 510:	24010004 	li	at,4
 514:	14410003 	bne	v0,at,524 <BgHidanCurtain_TurnOff+0xc0>
 518:	240900c8 	li	t1,200
 51c:	10000008 	b	540 <BgHidanCurtain_TurnOff+0xdc>
 520:	a4e90154 	sh	t1,340(a3)
 524:	24010003 	li	at,3
 528:	14410004 	bne	v0,at,53c <BgHidanCurtain_TurnOff+0xd8>
 52c:	240b012c 	li	t3,300
 530:	240a00a0 	li	t2,160
 534:	10000002 	b	540 <BgHidanCurtain_TurnOff+0xdc>
 538:	a4ea0154 	sh	t2,340(a3)
 53c:	a4eb0154 	sh	t3,340(a3)
 540:	acec014c 	sw	t4,332(a3)
 544:	8fbf0014 	lw	ra,20(sp)
 548:	27bd0018 	addiu	sp,sp,24
 54c:	03e00008 	jr	ra
 550:	00000000 	nop

00000554 <BgHidanCurtain_WaitForTimer>:
 554:	27bdffe8 	addiu	sp,sp,-24
 558:	afbf0014 	sw	ra,20(sp)
 55c:	afa5001c 	sw	a1,28(sp)
 560:	84820154 	lh	v0,340(a0)
 564:	3c0f0000 	lui	t7,0x0
 568:	25ef0000 	addiu	t7,t7,0
 56c:	10400003 	beqz	v0,57c <BgHidanCurtain_WaitForTimer+0x28>
 570:	244effff 	addiu	t6,v0,-1
 574:	a48e0154 	sh	t6,340(a0)
 578:	84820154 	lh	v0,340(a0)
 57c:	54400003 	bnezl	v0,58c <BgHidanCurtain_WaitForTimer+0x38>
 580:	90820150 	lbu	v0,336(a0)
 584:	ac8f014c 	sw	t7,332(a0)
 588:	90820150 	lbu	v0,336(a0)
 58c:	24010001 	li	at,1
 590:	10410003 	beq	v0,at,5a0 <BgHidanCurtain_WaitForTimer+0x4c>
 594:	24010003 	li	at,3
 598:	54410004 	bnel	v0,at,5ac <BgHidanCurtain_WaitForTimer+0x58>
 59c:	8fbf0014 	lw	ra,20(sp)
 5a0:	0c000000 	jal	0 <BgHidanCurtain_Init>
 5a4:	84850154 	lh	a1,340(a0)
 5a8:	8fbf0014 	lw	ra,20(sp)
 5ac:	27bd0018 	addiu	sp,sp,24
 5b0:	03e00008 	jr	ra
 5b4:	00000000 	nop

000005b8 <BgHidanCurtain_Update>:
 5b8:	27bdffc0 	addiu	sp,sp,-64
 5bc:	afbf0024 	sw	ra,36(sp)
 5c0:	afb10020 	sw	s1,32(sp)
 5c4:	afb0001c 	sw	s0,28(sp)
 5c8:	8cb90790 	lw	t9,1936(a1)
 5cc:	908e0152 	lbu	t6,338(a0)
 5d0:	3c180000 	lui	t8,0x0
 5d4:	87220142 	lh	v0,322(t9)
 5d8:	27180034 	addiu	t8,t8,52
 5dc:	24010028 	li	at,40
 5e0:	000e7900 	sll	t7,t6,0x4
 5e4:	00808025 	move	s0,a0
 5e8:	00a08825 	move	s1,a1
 5ec:	10410004 	beq	v0,at,600 <BgHidanCurtain_Update+0x48>
 5f0:	01f81821 	addu	v1,t7,t8
 5f4:	24010038 	li	at,56
 5f8:	54410006 	bnel	v0,at,614 <BgHidanCurtain_Update+0x5c>
 5fc:	92020168 	lbu	v0,360(s0)
 600:	92080168 	lbu	t0,360(s0)
 604:	3109fffd 	andi	t1,t0,0xfffd
 608:	1000008b 	b	838 <BgHidanCurtain_Update+0x280>
 60c:	a2090168 	sb	t1,360(s0)
 610:	92020168 	lbu	v0,360(s0)
 614:	02202025 	move	a0,s1
 618:	02002825 	move	a1,s0
 61c:	304a0002 	andi	t2,v0,0x2
 620:	1140000a 	beqz	t2,64c <BgHidanCurtain_Update+0x94>
 624:	304bfffd 	andi	t3,v0,0xfffd
 628:	3c013f80 	lui	at,0x3f80
 62c:	44812000 	mtc1	at,$f4
 630:	a20b0168 	sb	t3,360(s0)
 634:	8607008a 	lh	a3,138(s0)
 638:	afa30034 	sw	v1,52(sp)
 63c:	3c0640a0 	lui	a2,0x40a0
 640:	0c000000 	jal	0 <BgHidanCurtain_Init>
 644:	e7a40010 	swc1	$f4,16(sp)
 648:	8fa30034 	lw	v1,52(sp)
 64c:	92020150 	lbu	v0,336(s0)
 650:	24010004 	li	at,4
 654:	10410003 	beq	v0,at,664 <BgHidanCurtain_Update+0xac>
 658:	24010005 	li	at,5
 65c:	54410009 	bnel	v0,at,684 <BgHidanCurtain_Update+0xcc>
 660:	afa30034 	sw	v1,52(sp)
 664:	c600000c 	lwc1	$f0,12(s0)
 668:	c4680008 	lwc1	$f8,8(v1)
 66c:	c6100028 	lwc1	$f16,40(s0)
 670:	46000180 	add.s	$f6,$f0,$f0
 674:	46083281 	sub.s	$f10,$f6,$f8
 678:	46105481 	sub.s	$f18,$f10,$f16
 67c:	e6120028 	swc1	$f18,40(s0)
 680:	afa30034 	sw	v1,52(sp)
 684:	8e19014c 	lw	t9,332(s0)
 688:	02002025 	move	a0,s0
 68c:	02202825 	move	a1,s1
 690:	0320f809 	jalr	t9
 694:	00000000 	nop
 698:	92020150 	lbu	v0,336(s0)
 69c:	24010004 	li	at,4
 6a0:	8fa30034 	lw	v1,52(sp)
 6a4:	10410003 	beq	v0,at,6b4 <BgHidanCurtain_Update+0xfc>
 6a8:	24010005 	li	at,5
 6ac:	54410009 	bnel	v0,at,6d4 <BgHidanCurtain_Update+0x11c>
 6b0:	c612000c 	lwc1	$f18,12(s0)
 6b4:	c600000c 	lwc1	$f0,12(s0)
 6b8:	c4660008 	lwc1	$f6,8(v1)
 6bc:	c60a0028 	lwc1	$f10,40(s0)
 6c0:	46000100 	add.s	$f4,$f0,$f0
 6c4:	46062201 	sub.s	$f8,$f4,$f6
 6c8:	460a4401 	sub.s	$f16,$f8,$f10
 6cc:	e6100028 	swc1	$f16,40(s0)
 6d0:	c612000c 	lwc1	$f18,12(s0)
 6d4:	c6040028 	lwc1	$f4,40(s0)
 6d8:	c4600008 	lwc1	$f0,8(v1)
 6dc:	3c01437f 	lui	at,0x437f
 6e0:	46049181 	sub.s	$f6,$f18,$f4
 6e4:	44815000 	mtc1	at,$f10
 6e8:	240d0001 	li	t5,1
 6ec:	3c014f00 	lui	at,0x4f00
 6f0:	46060201 	sub.s	$f8,$f0,$f6
 6f4:	46004083 	div.s	$f2,$f8,$f0
 6f8:	46025402 	mul.s	$f16,$f10,$f2
 6fc:	444cf800 	cfc1	t4,$31
 700:	44cdf800 	ctc1	t5,$31
 704:	00000000 	nop
 708:	460084a4 	cvt.w.s	$f18,$f16
 70c:	444df800 	cfc1	t5,$31
 710:	00000000 	nop
 714:	31ad0078 	andi	t5,t5,0x78
 718:	51a00013 	beqzl	t5,768 <BgHidanCurtain_Update+0x1b0>
 71c:	440d9000 	mfc1	t5,$f18
 720:	44819000 	mtc1	at,$f18
 724:	240d0001 	li	t5,1
 728:	46128481 	sub.s	$f18,$f16,$f18
 72c:	44cdf800 	ctc1	t5,$31
 730:	00000000 	nop
 734:	460094a4 	cvt.w.s	$f18,$f18
 738:	444df800 	cfc1	t5,$31
 73c:	00000000 	nop
 740:	31ad0078 	andi	t5,t5,0x78
 744:	15a00005 	bnez	t5,75c <BgHidanCurtain_Update+0x1a4>
 748:	00000000 	nop
 74c:	440d9000 	mfc1	t5,$f18
 750:	3c018000 	lui	at,0x8000
 754:	10000007 	b	774 <BgHidanCurtain_Update+0x1bc>
 758:	01a16825 	or	t5,t5,at
 75c:	10000005 	b	774 <BgHidanCurtain_Update+0x1bc>
 760:	240dffff 	li	t5,-1
 764:	440d9000 	mfc1	t5,$f18
 768:	00000000 	nop
 76c:	05a0fffb 	bltz	t5,75c <BgHidanCurtain_Update+0x1a4>
 770:	00000000 	nop
 774:	31ae00ff 	andi	t6,t5,0xff
 778:	44ccf800 	ctc1	t4,$31
 77c:	29c10033 	slti	at,t6,51
 780:	1420001f 	bnez	at,800 <BgHidanCurtain_Update+0x248>
 784:	a20d0153 	sb	t5,339(s0)
 788:	846f0002 	lh	t7,2(v1)
 78c:	3c010001 	lui	at,0x1
 790:	34211e60 	ori	at,at,0x1e60
 794:	448f2000 	mtc1	t7,$f4
 798:	02212821 	addu	a1,s1,at
 79c:	26060158 	addiu	a2,s0,344
 7a0:	468021a0 	cvt.s.w	$f6,$f4
 7a4:	02202025 	move	a0,s1
 7a8:	46023202 	mul.s	$f8,$f6,$f2
 7ac:	4600428d 	trunc.w.s	$f10,$f8
 7b0:	44085000 	mfc1	t0,$f10
 7b4:	00000000 	nop
 7b8:	a608019a 	sh	t0,410(s0)
 7bc:	afa60028 	sw	a2,40(sp)
 7c0:	0c000000 	jal	0 <BgHidanCurtain_Init>
 7c4:	afa5002c 	sw	a1,44(sp)
 7c8:	8fa5002c 	lw	a1,44(sp)
 7cc:	8fa60028 	lw	a2,40(sp)
 7d0:	0c000000 	jal	0 <BgHidanCurtain_Init>
 7d4:	02202025 	move	a0,s1
 7d8:	3c090000 	lui	t1,0x0
 7dc:	8d291360 	lw	t1,4960(t1)
 7e0:	02002025 	move	a0,s0
 7e4:	29210004 	slti	at,t1,4
 7e8:	50200011 	beqzl	at,830 <BgHidanCurtain_Update+0x278>
 7ec:	860b0156 	lh	t3,342(s0)
 7f0:	0c000000 	jal	0 <BgHidanCurtain_Init>
 7f4:	240520a3 	li	a1,8355
 7f8:	1000000d 	b	830 <BgHidanCurtain_Update+0x278>
 7fc:	860b0156 	lh	t3,342(s0)
 800:	920a0150 	lbu	t2,336(s0)
 804:	24010001 	li	at,1
 808:	02202025 	move	a0,s1
 80c:	55410008 	bnel	t2,at,830 <BgHidanCurtain_Update+0x278>
 810:	860b0156 	lh	t3,342(s0)
 814:	0c000000 	jal	0 <BgHidanCurtain_Init>
 818:	92050151 	lbu	a1,337(s0)
 81c:	50400004 	beqzl	v0,830 <BgHidanCurtain_Update+0x278>
 820:	860b0156 	lh	t3,342(s0)
 824:	0c000000 	jal	0 <BgHidanCurtain_Init>
 828:	02002025 	move	a0,s0
 82c:	860b0156 	lh	t3,342(s0)
 830:	25790001 	addiu	t9,t3,1
 834:	a6190156 	sh	t9,342(s0)
 838:	8fbf0024 	lw	ra,36(sp)
 83c:	8fb0001c 	lw	s0,28(sp)
 840:	8fb10020 	lw	s1,32(sp)
 844:	03e00008 	jr	ra
 848:	27bd0040 	addiu	sp,sp,64

0000084c <BgHidanCurtain_Draw>:
 84c:	27bdff90 	addiu	sp,sp,-112
 850:	afb10038 	sw	s1,56(sp)
 854:	00a08825 	move	s1,a1
 858:	afbf003c 	sw	ra,60(sp)
 85c:	afb00034 	sw	s0,52(sp)
 860:	afa40070 	sw	a0,112(sp)
 864:	8ca50000 	lw	a1,0(a1)
 868:	3c060000 	lui	a2,0x0
 86c:	24c600dc 	addiu	a2,a2,220
 870:	27a40058 	addiu	a0,sp,88
 874:	240702ad 	li	a3,685
 878:	0c000000 	jal	0 <BgHidanCurtain_Init>
 87c:	00a08025 	move	s0,a1
 880:	0c000000 	jal	0 <BgHidanCurtain_Init>
 884:	8e240000 	lw	a0,0(s1)
 888:	8e0202d0 	lw	v0,720(s0)
 88c:	8fa90070 	lw	t1,112(sp)
 890:	3c0ffa00 	lui	t7,0xfa00
 894:	244e0008 	addiu	t6,v0,8
 898:	ae0e02d0 	sw	t6,720(s0)
 89c:	35ef8080 	ori	t7,t7,0x8080
 8a0:	ac4f0000 	sw	t7,0(v0)
 8a4:	91390153 	lbu	t9,339(t1)
 8a8:	3c01ffdc 	lui	at,0xffdc
 8ac:	3c0cfb00 	lui	t4,0xfb00
 8b0:	03215025 	or	t2,t9,at
 8b4:	ac4a0004 	sw	t2,4(v0)
 8b8:	8e0202d0 	lw	v0,720(s0)
 8bc:	3c0dff00 	lui	t5,0xff00
 8c0:	3c0fdb06 	lui	t7,0xdb06
 8c4:	244b0008 	addiu	t3,v0,8
 8c8:	ae0b02d0 	sw	t3,720(s0)
 8cc:	ac4c0000 	sw	t4,0(v0)
 8d0:	ac4d0004 	sw	t5,4(v0)
 8d4:	8e0202d0 	lw	v0,720(s0)
 8d8:	35ef0020 	ori	t7,t7,0x20
 8dc:	240d0020 	li	t5,32
 8e0:	244e0008 	addiu	t6,v0,8
 8e4:	ae0e02d0 	sw	t6,720(s0)
 8e8:	ac4f0000 	sw	t7,0(v0)
 8ec:	85230156 	lh	v1,342(t1)
 8f0:	8e240000 	lw	a0,0(s1)
 8f4:	240e0040 	li	t6,64
 8f8:	00030823 	negu	at,v1
 8fc:	00015900 	sll	t3,at,0x4
 900:	01615823 	subu	t3,t3,at
 904:	316c00ff 	andi	t4,t3,0xff
 908:	240a0001 	li	t2,1
 90c:	24190040 	li	t9,64
 910:	24180020 	li	t8,32
 914:	afb80010 	sw	t8,16(sp)
 918:	afb90014 	sw	t9,20(sp)
 91c:	afaa0018 	sw	t2,24(sp)
 920:	afac0020 	sw	t4,32(sp)
 924:	afae0028 	sw	t6,40(sp)
 928:	afad0024 	sw	t5,36(sp)
 92c:	afa0001c 	sw	zero,28(sp)
 930:	00002825 	move	a1,zero
 934:	00003825 	move	a3,zero
 938:	afa2004c 	sw	v0,76(sp)
 93c:	0c000000 	jal	0 <BgHidanCurtain_Init>
 940:	3066007f 	andi	a2,v1,0x7f
 944:	8fa8004c 	lw	t0,76(sp)
 948:	3c18da38 	lui	t8,0xda38
 94c:	37180003 	ori	t8,t8,0x3
 950:	ad020004 	sw	v0,4(t0)
 954:	8e0202d0 	lw	v0,720(s0)
 958:	3c050000 	lui	a1,0x0
 95c:	24a500f4 	addiu	a1,a1,244
 960:	244f0008 	addiu	t7,v0,8
 964:	ae0f02d0 	sw	t7,720(s0)
 968:	ac580000 	sw	t8,0(v0)
 96c:	8e240000 	lw	a0,0(s1)
 970:	240602ba 	li	a2,698
 974:	0c000000 	jal	0 <BgHidanCurtain_Init>
 978:	afa20048 	sw	v0,72(sp)
 97c:	8fa30048 	lw	v1,72(sp)
 980:	3c0b0000 	lui	t3,0x0
 984:	256b0000 	addiu	t3,t3,0
 988:	ac620004 	sw	v0,4(v1)
 98c:	8e0202d0 	lw	v0,720(s0)
 990:	3c0ade00 	lui	t2,0xde00
 994:	3c060000 	lui	a2,0x0
 998:	24590008 	addiu	t9,v0,8
 99c:	ae1902d0 	sw	t9,720(s0)
 9a0:	ac4b0004 	sw	t3,4(v0)
 9a4:	ac4a0000 	sw	t2,0(v0)
 9a8:	8e250000 	lw	a1,0(s1)
 9ac:	24c6010c 	addiu	a2,a2,268
 9b0:	27a40058 	addiu	a0,sp,88
 9b4:	0c000000 	jal	0 <BgHidanCurtain_Init>
 9b8:	240702be 	li	a3,702
 9bc:	8fbf003c 	lw	ra,60(sp)
 9c0:	8fb00034 	lw	s0,52(sp)
 9c4:	8fb10038 	lw	s1,56(sp)
 9c8:	03e00008 	jr	ra
 9cc:	27bd0070 	addiu	sp,sp,112
