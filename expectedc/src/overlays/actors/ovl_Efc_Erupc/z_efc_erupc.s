
build/src/overlays/actors/ovl_Efc_Erupc/z_efc_erupc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8099CCB0>:
   0:	03e00008 	jr	ra
   4:	ac8518c8 	sw	a1,6344(a0)

00000008 <EfcErupc_Init>:
   8:	27bdffe0 	addiu	sp,sp,-32
   c:	afa50024 	sw	a1,36(sp)
  10:	afbf001c 	sw	ra,28(sp)
  14:	afb00018 	sw	s0,24(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <func_8099CCB0>
  24:	24a50000 	addiu	a1,a1,0
  28:	02002025 	move	a0,s0
  2c:	0c000000 	jal	0 <func_8099CCB0>
  30:	3c053f80 	lui	a1,0x3f80
  34:	0c000000 	jal	0 <func_8099CCB0>
  38:	26040158 	addiu	a0,s0,344
  3c:	a6000150 	sh	zero,336(s0)
  40:	86020150 	lh	v0,336(s0)
  44:	240e0005 	li	t6,5
  48:	240fff9c 	li	t7,-100
  4c:	a60e0152 	sh	t6,338(s0)
  50:	a60f0154 	sh	t7,340(s0)
  54:	a602014e 	sh	v0,334(s0)
  58:	a602014c 	sh	v0,332(s0)
  5c:	8fbf001c 	lw	ra,28(sp)
  60:	8fb00018 	lw	s0,24(sp)
  64:	27bd0020 	addiu	sp,sp,32
  68:	03e00008 	jr	ra
  6c:	00000000 	nop

00000070 <EfcErupc_Destroy>:
  70:	afa40000 	sw	a0,0(sp)
  74:	03e00008 	jr	ra
  78:	afa50004 	sw	a1,4(sp)

0000007c <func_8099CD2C>:
  7c:	27bdff80 	addiu	sp,sp,-128
  80:	afbf0044 	sw	ra,68(sp)
  84:	afb20040 	sw	s2,64(sp)
  88:	afb1003c 	sw	s1,60(sp)
  8c:	afb00038 	sw	s0,56(sp)
  90:	f7b80030 	sdc1	$f24,48(sp)
  94:	f7b60028 	sdc1	$f22,40(sp)
  98:	f7b40020 	sdc1	$f20,32(sp)
  9c:	90a61d6c 	lbu	a2,7532(a1)
  a0:	00a08025 	move	s0,a1
  a4:	00808825 	move	s1,a0
  a8:	10c00029 	beqz	a2,150 <func_8099CD2C+0xd4>
  ac:	00000000 	nop
  b0:	8ca21d90 	lw	v0,7568(a1)
  b4:	10400026 	beqz	v0,150 <func_8099CD2C+0xd4>
  b8:	00000000 	nop
  bc:	944e0000 	lhu	t6,0(v0)
  c0:	24010002 	li	at,2
  c4:	55c1001d 	bnel	t6,at,13c <func_8099CD2C+0xc0>
  c8:	86220154 	lh	v0,340(s1)
  cc:	84830150 	lh	v1,336(a0)
  d0:	2401001e 	li	at,30
  d4:	54610005 	bnel	v1,at,ec <func_8099CD2C+0x70>
  d8:	28610041 	slti	at,v1,65
  dc:	0c000000 	jal	0 <func_8099CCB0>
  e0:	24041845 	li	a0,6213
  e4:	86230150 	lh	v1,336(s1)
  e8:	28610041 	slti	at,v1,65
  ec:	50200009 	beqzl	at,114 <func_8099CD2C+0x98>
  f0:	86220154 	lh	v0,340(s1)
  f4:	86220154 	lh	v0,340(s1)
  f8:	284100c8 	slti	at,v0,200
  fc:	1020000a 	beqz	at,128 <func_8099CD2C+0xac>
 100:	244f000a 	addiu	t7,v0,10
 104:	a62f0154 	sh	t7,340(s1)
 108:	10000007 	b	128 <func_8099CD2C+0xac>
 10c:	86230150 	lh	v1,336(s1)
 110:	86220154 	lh	v0,340(s1)
 114:	2841ff9d 	slti	at,v0,-99
 118:	14200003 	bnez	at,128 <func_8099CD2C+0xac>
 11c:	2458fff6 	addiu	t8,v0,-10
 120:	a6380154 	sh	t8,340(s1)
 124:	86230150 	lh	v1,336(s1)
 128:	24790001 	addiu	t9,v1,1
 12c:	a6390150 	sh	t9,336(s1)
 130:	10000007 	b	150 <func_8099CD2C+0xd4>
 134:	92061d6c 	lbu	a2,7532(s0)
 138:	86220154 	lh	v0,340(s1)
 13c:	2841ff9d 	slti	at,v0,-99
 140:	14200003 	bnez	at,150 <func_8099CD2C+0xd4>
 144:	2448fff6 	addiu	t0,v0,-10
 148:	a6280154 	sh	t0,340(s1)
 14c:	92061d6c 	lbu	a2,7532(s0)
 150:	50c0001f 	beqzl	a2,1d0 <func_8099CD2C+0x154>
 154:	44800000 	mtc1	zero,$f0
 158:	8e021d94 	lw	v0,7572(s0)
 15c:	5040001c 	beqzl	v0,1d0 <func_8099CD2C+0x154>
 160:	44800000 	mtc1	zero,$f0
 164:	94430000 	lhu	v1,0(v0)
 168:	24010002 	li	at,2
 16c:	10610005 	beq	v1,at,184 <func_8099CD2C+0x108>
 170:	24010003 	li	at,3
 174:	10610011 	beq	v1,at,1bc <func_8099CD2C+0x140>
 178:	240c001e 	li	t4,30
 17c:	10000011 	b	1c4 <func_8099CD2C+0x148>
 180:	862d014c 	lh	t5,332(s1)
 184:	8622014e 	lh	v0,334(s1)
 188:	5440000a 	bnezl	v0,1b4 <func_8099CD2C+0x138>
 18c:	244b0001 	addiu	t3,v0,1
 190:	0c000000 	jal	0 <func_8099CCB0>
 194:	24040006 	li	a0,6
 198:	3c030000 	lui	v1,0x0
 19c:	24630000 	addiu	v1,v1,0
 1a0:	94690ed8 	lhu	t1,3800(v1)
 1a4:	352a8000 	ori	t2,t1,0x8000
 1a8:	a46a0ed8 	sh	t2,3800(v1)
 1ac:	8622014e 	lh	v0,334(s1)
 1b0:	244b0001 	addiu	t3,v0,1
 1b4:	10000002 	b	1c0 <func_8099CD2C+0x144>
 1b8:	a62b014e 	sh	t3,334(s1)
 1bc:	a62c014e 	sh	t4,334(s1)
 1c0:	862d014c 	lh	t5,332(s1)
 1c4:	25ae0001 	addiu	t6,t5,1
 1c8:	a62e014c 	sh	t6,332(s1)
 1cc:	44800000 	mtc1	zero,$f0
 1d0:	3c014396 	lui	at,0x4396
 1d4:	44813000 	mtc1	at,$f6
 1d8:	e7a00064 	swc1	$f0,100(sp)
 1dc:	e7a0005c 	swc1	$f0,92(sp)
 1e0:	c6240028 	lwc1	$f4,40(s1)
 1e4:	3c0142a0 	lui	at,0x42a0
 1e8:	00008025 	move	s0,zero
 1ec:	46062200 	add.s	$f8,$f4,$f6
 1f0:	e7a80078 	swc1	$f8,120(sp)
 1f4:	862f0152 	lh	t7,338(s1)
 1f8:	59e0002b 	blezl	t7,2a8 <func_8099CD2C+0x22c>
 1fc:	8fbf0044 	lw	ra,68(sp)
 200:	4481c000 	mtc1	at,$f24
 204:	3c010000 	lui	at,0x0
 208:	c4360000 	lwc1	$f22,0(at)
 20c:	3c0142c8 	lui	at,0x42c8
 210:	4481a000 	mtc1	at,$f20
 214:	26320158 	addiu	s2,s1,344
 218:	0c000000 	jal	0 <func_8099CCB0>
 21c:	4600a306 	mov.s	$f12,$f20
 220:	c62a0024 	lwc1	$f10,36(s1)
 224:	4600a306 	mov.s	$f12,$f20
 228:	460a0400 	add.s	$f16,$f0,$f10
 22c:	0c000000 	jal	0 <func_8099CCB0>
 230:	e7b00074 	swc1	$f16,116(sp)
 234:	c632002c 	lwc1	$f18,44(s1)
 238:	4600a306 	mov.s	$f12,$f20
 23c:	46120100 	add.s	$f4,$f0,$f18
 240:	0c000000 	jal	0 <func_8099CCB0>
 244:	e7a4007c 	swc1	$f4,124(sp)
 248:	e7a00068 	swc1	$f0,104(sp)
 24c:	0c000000 	jal	0 <func_8099CCB0>
 250:	4600a306 	mov.s	$f12,$f20
 254:	e7a0006c 	swc1	$f0,108(sp)
 258:	0c000000 	jal	0 <func_8099CCB0>
 25c:	4600a306 	mov.s	$f12,$f20
 260:	e7a00070 	swc1	$f0,112(sp)
 264:	86380154 	lh	t8,340(s1)
 268:	e7b80010 	swc1	$f24,16(sp)
 26c:	02402025 	move	a0,s2
 270:	44983000 	mtc1	t8,$f6
 274:	27a50074 	addiu	a1,sp,116
 278:	27a60068 	addiu	a2,sp,104
 27c:	46803220 	cvt.s.w	$f8,$f6
 280:	27a7005c 	addiu	a3,sp,92
 284:	46164282 	mul.s	$f10,$f8,$f22
 288:	0c000000 	jal	0 <func_8099CCB0>
 28c:	e7aa0060 	swc1	$f10,96(sp)
 290:	86390152 	lh	t9,338(s1)
 294:	26100001 	addiu	s0,s0,1
 298:	0219082a 	slt	at,s0,t9
 29c:	1420ffde 	bnez	at,218 <func_8099CD2C+0x19c>
 2a0:	00000000 	nop
 2a4:	8fbf0044 	lw	ra,68(sp)
 2a8:	d7b40020 	ldc1	$f20,32(sp)
 2ac:	d7b60028 	ldc1	$f22,40(sp)
 2b0:	d7b80030 	ldc1	$f24,48(sp)
 2b4:	8fb00038 	lw	s0,56(sp)
 2b8:	8fb1003c 	lw	s1,60(sp)
 2bc:	8fb20040 	lw	s2,64(sp)
 2c0:	03e00008 	jr	ra
 2c4:	27bd0080 	addiu	sp,sp,128

000002c8 <EfcErupc_Update>:
 2c8:	27bdffe8 	addiu	sp,sp,-24
 2cc:	afbf0014 	sw	ra,20(sp)
 2d0:	afa5001c 	sw	a1,28(sp)
 2d4:	afa40018 	sw	a0,24(sp)
 2d8:	8c9918c8 	lw	t9,6344(a0)
 2dc:	0320f809 	jalr	t9
 2e0:	00000000 	nop
 2e4:	8fa40018 	lw	a0,24(sp)
 2e8:	0c000000 	jal	0 <func_8099CCB0>
 2ec:	8fa5001c 	lw	a1,28(sp)
 2f0:	8fbf0014 	lw	ra,20(sp)
 2f4:	27bd0018 	addiu	sp,sp,24
 2f8:	03e00008 	jr	ra
 2fc:	00000000 	nop

00000300 <EfcErupc_Draw>:
 300:	27bdff70 	addiu	sp,sp,-144
 304:	afb10038 	sw	s1,56(sp)
 308:	00a08825 	move	s1,a1
 30c:	afbf003c 	sw	ra,60(sp)
 310:	afb00034 	sw	s0,52(sp)
 314:	afa40090 	sw	a0,144(sp)
 318:	8ca50000 	lw	a1,0(a1)
 31c:	3c060000 	lui	a2,0x0
 320:	24c60000 	addiu	a2,a2,0
 324:	27a40074 	addiu	a0,sp,116
 328:	2407011a 	li	a3,282
 32c:	0c000000 	jal	0 <func_8099CCB0>
 330:	00a08025 	move	s0,a1
 334:	0c000000 	jal	0 <func_8099CCB0>
 338:	8e240000 	lw	a0,0(s1)
 33c:	8e0202d0 	lw	v0,720(s0)
 340:	8faa0090 	lw	t2,144(sp)
 344:	3c0fdb06 	lui	t7,0xdb06
 348:	244e0008 	addiu	t6,v0,8
 34c:	ae0e02d0 	sw	t6,720(s0)
 350:	35ef0020 	ori	t7,t7,0x20
 354:	ac4f0000 	sw	t7,0(v0)
 358:	8543014c 	lh	v1,332(t2)
 35c:	8548014e 	lh	t0,334(t2)
 360:	8e240000 	lw	a0,0(s1)
 364:	240f0040 	li	t7,64
 368:	00080823 	negu	at,t0
 36c:	00016880 	sll	t5,at,0x2
 370:	01a16821 	addu	t5,t5,at
 374:	000d6880 	sll	t5,t5,0x2
 378:	240e0040 	li	t6,64
 37c:	24180020 	li	t8,32
 380:	24190040 	li	t9,64
 384:	240b0001 	li	t3,1
 388:	00036080 	sll	t4,v1,0x2
 38c:	afac001c 	sw	t4,28(sp)
 390:	afab0018 	sw	t3,24(sp)
 394:	afb90014 	sw	t9,20(sp)
 398:	afb80010 	sw	t8,16(sp)
 39c:	afae0024 	sw	t6,36(sp)
 3a0:	afad0020 	sw	t5,32(sp)
 3a4:	00013880 	sll	a3,at,0x2
 3a8:	afaf0028 	sw	t7,40(sp)
 3ac:	00002825 	move	a1,zero
 3b0:	afa20070 	sw	v0,112(sp)
 3b4:	0c000000 	jal	0 <func_8099CCB0>
 3b8:	00603025 	move	a2,v1
 3bc:	8fa90070 	lw	t1,112(sp)
 3c0:	3c19db06 	lui	t9,0xdb06
 3c4:	37390024 	ori	t9,t9,0x24
 3c8:	ad220004 	sw	v0,4(t1)
 3cc:	8e0202d0 	lw	v0,720(s0)
 3d0:	240c0010 	li	t4,16
 3d4:	240d0080 	li	t5,128
 3d8:	24580008 	addiu	t8,v0,8
 3dc:	ae1802d0 	sw	t8,720(s0)
 3e0:	ac590000 	sw	t9,0(v0)
 3e4:	8fab0090 	lw	t3,144(sp)
 3e8:	8e240000 	lw	a0,0(s1)
 3ec:	24190020 	li	t9,32
 3f0:	85630150 	lh	v1,336(t3)
 3f4:	24180020 	li	t8,32
 3f8:	240e0001 	li	t6,1
 3fc:	00037880 	sll	t7,v1,0x2
 400:	01e37823 	subu	t7,t7,v1
 404:	000f7880 	sll	t7,t7,0x2
 408:	00030823 	negu	at,v1
 40c:	00013880 	sll	a3,at,0x2
 410:	afaf0020 	sw	t7,32(sp)
 414:	afae0018 	sw	t6,24(sp)
 418:	afb80024 	sw	t8,36(sp)
 41c:	afb90028 	sw	t9,40(sp)
 420:	afa0001c 	sw	zero,28(sp)
 424:	afad0014 	sw	t5,20(sp)
 428:	afac0010 	sw	t4,16(sp)
 42c:	00002825 	move	a1,zero
 430:	00003025 	move	a2,zero
 434:	0c000000 	jal	0 <func_8099CCB0>
 438:	afa2006c 	sw	v0,108(sp)
 43c:	8fa8006c 	lw	t0,108(sp)
 440:	3c0cdb06 	lui	t4,0xdb06
 444:	358c0028 	ori	t4,t4,0x28
 448:	ad020004 	sw	v0,4(t0)
 44c:	8e0202d0 	lw	v0,720(s0)
 450:	240e0010 	li	t6,16
 454:	240f0080 	li	t7,128
 458:	244b0008 	addiu	t3,v0,8
 45c:	ae0b02d0 	sw	t3,720(s0)
 460:	ac4c0000 	sw	t4,0(v0)
 464:	8fad0090 	lw	t5,144(sp)
 468:	8e240000 	lw	a0,0(s1)
 46c:	240c0020 	li	t4,32
 470:	85a30150 	lh	v1,336(t5)
 474:	240b0020 	li	t3,32
 478:	24180001 	li	t8,1
 47c:	0003c880 	sll	t9,v1,0x2
 480:	0323c823 	subu	t9,t9,v1
 484:	0019c880 	sll	t9,t9,0x2
 488:	00030823 	negu	at,v1
 48c:	00013880 	sll	a3,at,0x2
 490:	afb90020 	sw	t9,32(sp)
 494:	afb80018 	sw	t8,24(sp)
 498:	afab0024 	sw	t3,36(sp)
 49c:	afac0028 	sw	t4,40(sp)
 4a0:	afa0001c 	sw	zero,28(sp)
 4a4:	afaf0014 	sw	t7,20(sp)
 4a8:	afae0010 	sw	t6,16(sp)
 4ac:	00002825 	move	a1,zero
 4b0:	00003025 	move	a2,zero
 4b4:	0c000000 	jal	0 <func_8099CCB0>
 4b8:	afa20068 	sw	v0,104(sp)
 4bc:	8fa80068 	lw	t0,104(sp)
 4c0:	0c000000 	jal	0 <func_8099CCB0>
 4c4:	ad020004 	sw	v0,4(t0)
 4c8:	3c010000 	lui	at,0x0
 4cc:	c42c0000 	lwc1	$f12,0(at)
 4d0:	24070001 	li	a3,1
 4d4:	44066000 	mfc1	a2,$f12
 4d8:	0c000000 	jal	0 <func_8099CCB0>
 4dc:	46006386 	mov.s	$f14,$f12
 4e0:	8e0202d0 	lw	v0,720(s0)
 4e4:	3c0eda38 	lui	t6,0xda38
 4e8:	35ce0003 	ori	t6,t6,0x3
 4ec:	244d0008 	addiu	t5,v0,8
 4f0:	ae0d02d0 	sw	t5,720(s0)
 4f4:	ac4e0000 	sw	t6,0(v0)
 4f8:	8e240000 	lw	a0,0(s1)
 4fc:	3c050000 	lui	a1,0x0
 500:	24a50000 	addiu	a1,a1,0
 504:	24060141 	li	a2,321
 508:	0c000000 	jal	0 <func_8099CCB0>
 50c:	afa20064 	sw	v0,100(sp)
 510:	8fa30064 	lw	v1,100(sp)
 514:	ac620004 	sw	v0,4(v1)
 518:	922f1d6c 	lbu	t7,7532(s1)
 51c:	11e00010 	beqz	t7,560 <EfcErupc_Draw+0x260>
 520:	00000000 	nop
 524:	8e221d90 	lw	v0,7568(s1)
 528:	1040000d 	beqz	v0,560 <EfcErupc_Draw+0x260>
 52c:	00000000 	nop
 530:	94580000 	lhu	t8,0(v0)
 534:	24010002 	li	at,2
 538:	3c0bde00 	lui	t3,0xde00
 53c:	17010008 	bne	t8,at,560 <EfcErupc_Draw+0x260>
 540:	00000000 	nop
 544:	8e0202d0 	lw	v0,720(s0)
 548:	3c0c0600 	lui	t4,0x600
 54c:	258c2570 	addiu	t4,t4,9584
 550:	24590008 	addiu	t9,v0,8
 554:	ae1902d0 	sw	t9,720(s0)
 558:	ac4c0004 	sw	t4,4(v0)
 55c:	ac4b0000 	sw	t3,0(v0)
 560:	0c000000 	jal	0 <func_8099CCB0>
 564:	00000000 	nop
 568:	3c010000 	lui	at,0x0
 56c:	c42c0000 	lwc1	$f12,0(at)
 570:	24070001 	li	a3,1
 574:	44066000 	mfc1	a2,$f12
 578:	0c000000 	jal	0 <func_8099CCB0>
 57c:	46006386 	mov.s	$f14,$f12
 580:	8e0202d0 	lw	v0,720(s0)
 584:	3c0eda38 	lui	t6,0xda38
 588:	35ce0003 	ori	t6,t6,0x3
 58c:	244d0008 	addiu	t5,v0,8
 590:	ae0d02d0 	sw	t5,720(s0)
 594:	ac4e0000 	sw	t6,0(v0)
 598:	8e240000 	lw	a0,0(s1)
 59c:	3c050000 	lui	a1,0x0
 5a0:	24a50000 	addiu	a1,a1,0
 5a4:	2406014d 	li	a2,333
 5a8:	0c000000 	jal	0 <func_8099CCB0>
 5ac:	afa2005c 	sw	v0,92(sp)
 5b0:	8fa3005c 	lw	v1,92(sp)
 5b4:	3c060000 	lui	a2,0x0
 5b8:	24c60000 	addiu	a2,a2,0
 5bc:	ac620004 	sw	v0,4(v1)
 5c0:	922f1d6c 	lbu	t7,7532(s1)
 5c4:	27a40074 	addiu	a0,sp,116
 5c8:	24070164 	li	a3,356
 5cc:	11e00022 	beqz	t7,658 <EfcErupc_Draw+0x358>
 5d0:	00000000 	nop
 5d4:	8e231d94 	lw	v1,7572(s1)
 5d8:	1060001f 	beqz	v1,658 <EfcErupc_Draw+0x358>
 5dc:	00000000 	nop
 5e0:	94620000 	lhu	v0,0(v1)
 5e4:	24010002 	li	at,2
 5e8:	3c19fa00 	lui	t9,0xfa00
 5ec:	10410004 	beq	v0,at,600 <EfcErupc_Draw+0x300>
 5f0:	37398080 	ori	t9,t9,0x8080
 5f4:	24010003 	li	at,3
 5f8:	14410017 	bne	v0,at,658 <EfcErupc_Draw+0x358>
 5fc:	00000000 	nop
 600:	8e0202d0 	lw	v0,720(s0)
 604:	240bc8ff 	li	t3,-14081
 608:	3c0e6400 	lui	t6,0x6400
 60c:	24580008 	addiu	t8,v0,8
 610:	ae1802d0 	sw	t8,720(s0)
 614:	ac4b0004 	sw	t3,4(v0)
 618:	ac590000 	sw	t9,0(v0)
 61c:	8e0202d0 	lw	v0,720(s0)
 620:	35ce00ff 	ori	t6,t6,0xff
 624:	3c0dfb00 	lui	t5,0xfb00
 628:	244c0008 	addiu	t4,v0,8
 62c:	ae0c02d0 	sw	t4,720(s0)
 630:	ac4e0004 	sw	t6,4(v0)
 634:	ac4d0000 	sw	t5,0(v0)
 638:	8e0202d0 	lw	v0,720(s0)
 63c:	3c190600 	lui	t9,0x600
 640:	27391720 	addiu	t9,t9,5920
 644:	244f0008 	addiu	t7,v0,8
 648:	ae0f02d0 	sw	t7,720(s0)
 64c:	3c18de00 	lui	t8,0xde00
 650:	ac580000 	sw	t8,0(v0)
 654:	ac590004 	sw	t9,4(v0)
 658:	0c000000 	jal	0 <func_8099CCB0>
 65c:	8e250000 	lw	a1,0(s1)
 660:	8fa40090 	lw	a0,144(sp)
 664:	02202825 	move	a1,s1
 668:	0c000000 	jal	0 <func_8099CCB0>
 66c:	24840158 	addiu	a0,a0,344
 670:	8fbf003c 	lw	ra,60(sp)
 674:	8fb00034 	lw	s0,52(sp)
 678:	8fb10038 	lw	s1,56(sp)
 67c:	03e00008 	jr	ra
 680:	27bd0090 	addiu	sp,sp,144

00000684 <func_8099D334>:
 684:	27bdff70 	addiu	sp,sp,-144
 688:	afbf0044 	sw	ra,68(sp)
 68c:	afbe0040 	sw	s8,64(sp)
 690:	afb7003c 	sw	s7,60(sp)
 694:	afb60038 	sw	s6,56(sp)
 698:	afb50034 	sw	s5,52(sp)
 69c:	afb40030 	sw	s4,48(sp)
 6a0:	afb3002c 	sw	s3,44(sp)
 6a4:	afb20028 	sw	s2,40(sp)
 6a8:	afb10024 	sw	s1,36(sp)
 6ac:	afb00020 	sw	s0,32(sp)
 6b0:	f7b40018 	sdc1	$f20,24(sp)
 6b4:	8cb00000 	lw	s0,0(a1)
 6b8:	00808825 	move	s1,a0
 6bc:	00a0b025 	move	s6,a1
 6c0:	3c060000 	lui	a2,0x0
 6c4:	24c60000 	addiu	a2,a2,0
 6c8:	27a40070 	addiu	a0,sp,112
 6cc:	24070170 	li	a3,368
 6d0:	0c000000 	jal	0 <func_8099CCB0>
 6d4:	02002825 	move	a1,s0
 6d8:	3c013f80 	lui	at,0x3f80
 6dc:	4481a000 	mtc1	at,$f20
 6e0:	00009825 	move	s3,zero
 6e4:	3c1efa00 	lui	s8,0xfa00
 6e8:	3c17de00 	lui	s7,0xde00
 6ec:	922e0024 	lbu	t6,36(s1)
 6f0:	3c120600 	lui	s2,0x600
 6f4:	26522760 	addiu	s2,s2,10080
 6f8:	11c00047 	beqz	t6,818 <func_8099D334+0x194>
 6fc:	3c010001 	lui	at,0x1
 700:	34211da0 	ori	at,at,0x1da0
 704:	3c150600 	lui	s5,0x600
 708:	26b527d8 	addiu	s5,s5,10200
 70c:	02c1a021 	addu	s4,s6,at
 710:	0c000000 	jal	0 <func_8099CCB0>
 714:	8ec40000 	lw	a0,0(s6)
 718:	8e0202d0 	lw	v0,720(s0)
 71c:	3c0e9600 	lui	t6,0x9600
 720:	00003825 	move	a3,zero
 724:	244f0008 	addiu	t7,v0,8
 728:	ae0f02d0 	sw	t7,720(s0)
 72c:	ac520004 	sw	s2,4(v0)
 730:	ac570000 	sw	s7,0(v0)
 734:	8e0202d0 	lw	v0,720(s0)
 738:	24580008 	addiu	t8,v0,8
 73c:	ae1802d0 	sw	t8,720(s0)
 740:	ac5e0000 	sw	s8,0(v0)
 744:	92280026 	lbu	t0,38(s1)
 748:	922b0027 	lbu	t3,39(s1)
 74c:	922f0028 	lbu	t7,40(s1)
 750:	00084e00 	sll	t1,t0,0x18
 754:	8628002a 	lh	t0,42(s1)
 758:	000b6400 	sll	t4,t3,0x10
 75c:	012c6825 	or	t5,t1,t4
 760:	000fc200 	sll	t8,t7,0x8
 764:	01b8c825 	or	t9,t5,t8
 768:	310a00ff 	andi	t2,t0,0xff
 76c:	032a5825 	or	t3,t9,t2
 770:	ac4b0004 	sw	t3,4(v0)
 774:	8e0202d0 	lw	v0,720(s0)
 778:	3c0cfb00 	lui	t4,0xfb00
 77c:	3c0de700 	lui	t5,0xe700
 780:	24490008 	addiu	t1,v0,8
 784:	ae0902d0 	sw	t1,720(s0)
 788:	ac4e0004 	sw	t6,4(v0)
 78c:	ac4c0000 	sw	t4,0(v0)
 790:	8e0202d0 	lw	v0,720(s0)
 794:	244f0008 	addiu	t7,v0,8
 798:	ae0f02d0 	sw	t7,720(s0)
 79c:	ac400004 	sw	zero,4(v0)
 7a0:	ac4d0000 	sw	t5,0(v0)
 7a4:	8e260008 	lw	a2,8(s1)
 7a8:	c62e0004 	lwc1	$f14,4(s1)
 7ac:	0c000000 	jal	0 <func_8099CCB0>
 7b0:	c62c0000 	lwc1	$f12,0(s1)
 7b4:	0c000000 	jal	0 <func_8099CCB0>
 7b8:	02802025 	move	a0,s4
 7bc:	c62c0030 	lwc1	$f12,48(s1)
 7c0:	4406a000 	mfc1	a2,$f20
 7c4:	24070001 	li	a3,1
 7c8:	0c000000 	jal	0 <func_8099CCB0>
 7cc:	46006386 	mov.s	$f14,$f12
 7d0:	8e0202d0 	lw	v0,720(s0)
 7d4:	3c08da38 	lui	t0,0xda38
 7d8:	35080003 	ori	t0,t0,0x3
 7dc:	24580008 	addiu	t8,v0,8
 7e0:	ae1802d0 	sw	t8,720(s0)
 7e4:	3c050000 	lui	a1,0x0
 7e8:	24a50000 	addiu	a1,a1,0
 7ec:	02002025 	move	a0,s0
 7f0:	24060189 	li	a2,393
 7f4:	ac480000 	sw	t0,0(v0)
 7f8:	0c000000 	jal	0 <func_8099CCB0>
 7fc:	00409025 	move	s2,v0
 800:	ae420004 	sw	v0,4(s2)
 804:	8e0202d0 	lw	v0,720(s0)
 808:	24590008 	addiu	t9,v0,8
 80c:	ae1902d0 	sw	t9,720(s0)
 810:	ac550004 	sw	s5,4(v0)
 814:	ac570000 	sw	s7,0(v0)
 818:	26730001 	addiu	s3,s3,1
 81c:	00139c00 	sll	s3,s3,0x10
 820:	00139c03 	sra	s3,s3,0x10
 824:	2a610064 	slti	at,s3,100
 828:	1420ffb0 	bnez	at,6ec <func_8099D334+0x68>
 82c:	2631003c 	addiu	s1,s1,60
 830:	3c060000 	lui	a2,0x0
 834:	24c60000 	addiu	a2,a2,0
 838:	27a40070 	addiu	a0,sp,112
 83c:	02002825 	move	a1,s0
 840:	0c000000 	jal	0 <func_8099CCB0>
 844:	2407018f 	li	a3,399
 848:	8fbf0044 	lw	ra,68(sp)
 84c:	d7b40018 	ldc1	$f20,24(sp)
 850:	8fb00020 	lw	s0,32(sp)
 854:	8fb10024 	lw	s1,36(sp)
 858:	8fb20028 	lw	s2,40(sp)
 85c:	8fb3002c 	lw	s3,44(sp)
 860:	8fb40030 	lw	s4,48(sp)
 864:	8fb50034 	lw	s5,52(sp)
 868:	8fb60038 	lw	s6,56(sp)
 86c:	8fb7003c 	lw	s7,60(sp)
 870:	8fbe0040 	lw	s8,64(sp)
 874:	03e00008 	jr	ra
 878:	27bd0090 	addiu	sp,sp,144

0000087c <func_8099D52C>:
 87c:	27bdffe8 	addiu	sp,sp,-24
 880:	3c0e0000 	lui	t6,0x0
 884:	afa5001c 	sw	a1,28(sp)
 888:	25ce0000 	addiu	t6,t6,0
 88c:	8dd80000 	lw	t8,0(t6)
 890:	27a60008 	addiu	a2,sp,8
 894:	24820158 	addiu	v0,a0,344
 898:	acd80000 	sw	t8,0(a2)
 89c:	8dcf0004 	lw	t7,4(t6)
 8a0:	00001825 	move	v1,zero
 8a4:	24070003 	li	a3,3
 8a8:	accf0004 	sw	t7,4(a2)
 8ac:	8dd80008 	lw	t8,8(t6)
 8b0:	acd80008 	sw	t8,8(a2)
 8b4:	90590024 	lbu	t9,36(v0)
 8b8:	24630001 	addiu	v1,v1,1
 8bc:	00031c00 	sll	v1,v1,0x10
 8c0:	13200032 	beqz	t9,98c <func_8099D52C+0x110>
 8c4:	00031c03 	sra	v1,v1,0x10
 8c8:	90480025 	lbu	t0,37(v0)
 8cc:	c440000c 	lwc1	$f0,12(v0)
 8d0:	c4440000 	lwc1	$f4,0(v0)
 8d4:	25090001 	addiu	t1,t0,1
 8d8:	312400ff 	andi	a0,t1,0xff
 8dc:	c4420010 	lwc1	$f2,16(v0)
 8e0:	c4480004 	lwc1	$f8,4(v0)
 8e4:	c44c0014 	lwc1	$f12,20(v0)
 8e8:	c4500008 	lwc1	$f16,8(v0)
 8ec:	46002180 	add.s	$f6,$f4,$f0
 8f0:	c4440018 	lwc1	$f4,24(v0)
 8f4:	a0490025 	sb	t1,37(v0)
 8f8:	46024280 	add.s	$f10,$f8,$f2
 8fc:	c448001c 	lwc1	$f8,28(v0)
 900:	e4460000 	swc1	$f6,0(v0)
 904:	460c8480 	add.s	$f18,$f16,$f12
 908:	c4500020 	lwc1	$f16,32(v0)
 90c:	e44a0004 	swc1	$f10,4(v0)
 910:	46040180 	add.s	$f6,$f0,$f4
 914:	e4520008 	swc1	$f18,8(v0)
 918:	844e002a 	lh	t6,42(v0)
 91c:	46081280 	add.s	$f10,$f2,$f8
 920:	e446000c 	swc1	$f6,12(v0)
 924:	25cfffec 	addiu	t7,t6,-20
 928:	46106480 	add.s	$f18,$f12,$f16
 92c:	e44a0010 	swc1	$f10,16(v0)
 930:	e4520014 	swc1	$f18,20(v0)
 934:	04810004 	bgez	a0,948 <func_8099D52C+0xcc>
 938:	30840003 	andi	a0,a0,0x3
 93c:	10800002 	beqz	a0,948 <func_8099D52C+0xcc>
 940:	00000000 	nop
 944:	2484fffc 	addiu	a0,a0,-4
 948:	00042400 	sll	a0,a0,0x10
 94c:	00042403 	sra	a0,a0,0x10
 950:	00870019 	multu	a0,a3
 954:	00005012 	mflo	t2
 958:	00ca2821 	addu	a1,a2,t2
 95c:	90ab0000 	lbu	t3,0(a1)
 960:	a04b0026 	sb	t3,38(v0)
 964:	90ac0001 	lbu	t4,1(a1)
 968:	a04c0027 	sb	t4,39(v0)
 96c:	90ad0002 	lbu	t5,2(a1)
 970:	a44f002a 	sh	t7,42(v0)
 974:	8458002a 	lh	t8,42(v0)
 978:	a04d0028 	sb	t5,40(v0)
 97c:	5f000004 	bgtzl	t8,990 <func_8099D52C+0x114>
 980:	28610064 	slti	at,v1,100
 984:	a440002a 	sh	zero,42(v0)
 988:	a0400024 	sb	zero,36(v0)
 98c:	28610064 	slti	at,v1,100
 990:	1420ffc8 	bnez	at,8b4 <func_8099D52C+0x38>
 994:	2442003c 	addiu	v0,v0,60
 998:	03e00008 	jr	ra
 99c:	27bd0018 	addiu	sp,sp,24

000009a0 <func_8099D650>:
 9a0:	27bdffe8 	addiu	sp,sp,-24
 9a4:	afbf0014 	sw	ra,20(sp)
 9a8:	00001025 	move	v0,zero
 9ac:	908e0024 	lbu	t6,36(a0)
 9b0:	24420001 	addiu	v0,v0,1
 9b4:	00021400 	sll	v0,v0,0x10
 9b8:	15c00025 	bnez	t6,a50 <func_8099D650+0xb0>
 9bc:	00021403 	sra	v0,v0,0x10
 9c0:	240f0001 	li	t7,1
 9c4:	a08f0024 	sb	t7,36(a0)
 9c8:	8cb90000 	lw	t9,0(a1)
 9cc:	3c01447a 	lui	at,0x447a
 9d0:	44813000 	mtc1	at,$f6
 9d4:	ac990000 	sw	t9,0(a0)
 9d8:	8cb80004 	lw	t8,4(a1)
 9dc:	240c00ff 	li	t4,255
 9e0:	3c014120 	lui	at,0x4120
 9e4:	ac980004 	sw	t8,4(a0)
 9e8:	8cb90008 	lw	t9,8(a1)
 9ec:	44816000 	mtc1	at,$f12
 9f0:	ac990008 	sw	t9,8(a0)
 9f4:	8cc90000 	lw	t1,0(a2)
 9f8:	ac89000c 	sw	t1,12(a0)
 9fc:	8cc80004 	lw	t0,4(a2)
 a00:	ac880010 	sw	t0,16(a0)
 a04:	8cc90008 	lw	t1,8(a2)
 a08:	ac890014 	sw	t1,20(a0)
 a0c:	8ceb0000 	lw	t3,0(a3)
 a10:	ac8b0018 	sw	t3,24(a0)
 a14:	8cea0004 	lw	t2,4(a3)
 a18:	ac8a001c 	sw	t2,28(a0)
 a1c:	8ceb0008 	lw	t3,8(a3)
 a20:	ac8b0020 	sw	t3,32(a0)
 a24:	c7a40028 	lwc1	$f4,40(sp)
 a28:	a48c002a 	sh	t4,42(a0)
 a2c:	46062203 	div.s	$f8,$f4,$f6
 a30:	e4880030 	swc1	$f8,48(a0)
 a34:	0c000000 	jal	0 <func_8099CCB0>
 a38:	afa40018 	sw	a0,24(sp)
 a3c:	4600028d 	trunc.w.s	$f10,$f0
 a40:	8fa40018 	lw	a0,24(sp)
 a44:	44185000 	mfc1	t8,$f10
 a48:	10000004 	b	a5c <func_8099D650+0xbc>
 a4c:	a0980025 	sb	t8,37(a0)
 a50:	28410064 	slti	at,v0,100
 a54:	1420ffd5 	bnez	at,9ac <func_8099D650+0xc>
 a58:	2484003c 	addiu	a0,a0,60
 a5c:	8fbf0014 	lw	ra,20(sp)
 a60:	27bd0018 	addiu	sp,sp,24
 a64:	03e00008 	jr	ra
 a68:	00000000 	nop

00000a6c <func_8099D71C>:
 a6c:	00001025 	move	v0,zero
 a70:	24420001 	addiu	v0,v0,1
 a74:	00021400 	sll	v0,v0,0x10
 a78:	00021403 	sra	v0,v0,0x10
 a7c:	28410064 	slti	at,v0,100
 a80:	2484003c 	addiu	a0,a0,60
 a84:	1420fffa 	bnez	at,a70 <func_8099D71C+0x4>
 a88:	a080ffe8 	sb	zero,-24(a0)
 a8c:	03e00008 	jr	ra
 a90:	00000000 	nop
	...
