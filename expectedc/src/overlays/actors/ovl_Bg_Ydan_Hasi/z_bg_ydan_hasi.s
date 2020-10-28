
build/src/overlays/actors/ovl_Bg_Ydan_Hasi/z_bg_ydan_hasi.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgYdanHasi_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afa5003c 	sw	a1,60(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa0002c 	sw	zero,44(sp)
  1c:	0c000000 	jal	0 <BgYdanHasi_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	860e001c 	lh	t6,28(s0)
  28:	8619001c 	lh	t9,28(s0)
  2c:	02002025 	move	a0,s0
  30:	000e7a03 	sra	t7,t6,0x8
  34:	31f8003f 	andi	t8,t7,0x3f
  38:	332800ff 	andi	t0,t9,0xff
  3c:	a2180168 	sb	t8,360(s0)
  40:	a608001c 	sh	t0,28(s0)
  44:	8fa9003c 	lw	t1,60(sp)
  48:	24050001 	li	a1,1
  4c:	8d2a07c0 	lw	t2,1984(t1)
  50:	8d4b0028 	lw	t3,40(t2)
  54:	256c0010 	addiu	t4,t3,16
  58:	0c000000 	jal	0 <BgYdanHasi_Init>
  5c:	afac0028 	sw	t4,40(sp)
  60:	8602001c 	lh	v0,28(s0)
  64:	24010001 	li	at,1
  68:	14410010 	bne	v0,at,ac <BgYdanHasi_Init+0xac>
  6c:	3c01c0a0 	lui	at,0xc0a0
  70:	44813000 	mtc1	at,$f6
  74:	c604000c 	lwc1	$f4,12(s0)
  78:	3c180000 	lui	t8,0x0
  7c:	27180000 	addiu	t8,t8,0
  80:	46062200 	add.s	$f8,$f4,$f6
  84:	e608000c 	swc1	$f8,12(s0)
  88:	c600000c 	lwc1	$f0,12(s0)
  8c:	4600028d 	trunc.w.s	$f10,$f0
  90:	e6000028 	swc1	$f0,40(s0)
  94:	8faf0028 	lw	t7,40(sp)
  98:	440e5000 	mfc1	t6,$f10
  9c:	00000000 	nop
  a0:	a5ee0002 	sh	t6,2(t7)
  a4:	10000028 	b	148 <BgYdanHasi_Init+0x148>
  a8:	ae180164 	sw	t8,356(s0)
  ac:	14400016 	bnez	v0,108 <BgYdanHasi_Init+0x108>
  b0:	3c040000 	lui	a0,0x0
  b4:	3c040000 	lui	a0,0x0
  b8:	24840000 	addiu	a0,a0,0
  bc:	0c000000 	jal	0 <BgYdanHasi_Init>
  c0:	27a5002c 	addiu	a1,sp,44
  c4:	3c010000 	lui	at,0x0
  c8:	c420003c 	lwc1	$f0,60(at)
  cc:	3c0141a0 	lui	at,0x41a0
  d0:	44812000 	mtc1	at,$f4
  d4:	e6000058 	swc1	$f0,88(s0)
  d8:	e6000050 	swc1	$f0,80(s0)
  dc:	8fb90028 	lw	t9,40(sp)
  e0:	3c090000 	lui	t1,0x0
  e4:	25290000 	addiu	t1,t1,0
  e8:	87280002 	lh	t0,2(t9)
  ec:	ae090164 	sw	t1,356(s0)
  f0:	44888000 	mtc1	t0,$f16
  f4:	00000000 	nop
  f8:	468084a0 	cvt.s.w	$f18,$f16
  fc:	46049180 	add.s	$f6,$f18,$f4
 100:	1000000b 	b	130 <BgYdanHasi_Init+0x130>
 104:	e6060028 	swc1	$f6,40(s0)
 108:	24840000 	addiu	a0,a0,0
 10c:	0c000000 	jal	0 <BgYdanHasi_Init>
 110:	27a5002c 	addiu	a1,sp,44
 114:	3c0a0000 	lui	t2,0x0
 118:	254a0000 	addiu	t2,t2,0
 11c:	ae000134 	sw	zero,308(s0)
 120:	ae0a0164 	sw	t2,356(s0)
 124:	02002025 	move	a0,s0
 128:	0c000000 	jal	0 <BgYdanHasi_Init>
 12c:	3c054220 	lui	a1,0x4220
 130:	8fa4003c 	lw	a0,60(sp)
 134:	02003025 	move	a2,s0
 138:	8fa7002c 	lw	a3,44(sp)
 13c:	0c000000 	jal	0 <BgYdanHasi_Init>
 140:	24850810 	addiu	a1,a0,2064
 144:	ae02014c 	sw	v0,332(s0)
 148:	a600016a 	sh	zero,362(s0)
 14c:	8fbf001c 	lw	ra,28(sp)
 150:	8fb00018 	lw	s0,24(sp)
 154:	27bd0038 	addiu	sp,sp,56
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <BgYdanHasi_Destroy>:
 160:	27bdffe8 	addiu	sp,sp,-24
 164:	afa40018 	sw	a0,24(sp)
 168:	8fae0018 	lw	t6,24(sp)
 16c:	afbf0014 	sw	ra,20(sp)
 170:	00a02025 	move	a0,a1
 174:	24a50810 	addiu	a1,a1,2064
 178:	0c000000 	jal	0 <BgYdanHasi_Init>
 17c:	8dc6014c 	lw	a2,332(t6)
 180:	8fbf0014 	lw	ra,20(sp)
 184:	27bd0018 	addiu	sp,sp,24
 188:	03e00008 	jr	ra
 18c:	00000000 	nop

00000190 <BgYdanHasi_UpdateFloatingBlock>:
 190:	27bdffd8 	addiu	sp,sp,-40
 194:	3c0f0001 	lui	t7,0x1
 198:	afbf001c 	sw	ra,28(sp)
 19c:	afb00018 	sw	s0,24(sp)
 1a0:	afa5002c 	sw	a1,44(sp)
 1a4:	01e57821 	addu	t7,t7,a1
 1a8:	8def1de4 	lw	t7,7652(t7)
 1ac:	00808025 	move	s0,a0
 1b0:	3c014f80 	lui	at,0x4f80
 1b4:	31f800ff 	andi	t8,t7,0xff
 1b8:	44982000 	mtc1	t8,$f4
 1bc:	07010004 	bgez	t8,1d0 <BgYdanHasi_UpdateFloatingBlock+0x40>
 1c0:	468021a0 	cvt.s.w	$f6,$f4
 1c4:	44814000 	mtc1	at,$f8
 1c8:	00000000 	nop
 1cc:	46083180 	add.s	$f6,$f6,$f8
 1d0:	3c010000 	lui	at,0x0
 1d4:	c42a0040 	lwc1	$f10,64(at)
 1d8:	460a3302 	mul.s	$f12,$f6,$f10
 1dc:	0c000000 	jal	0 <BgYdanHasi_Init>
 1e0:	00000000 	nop
 1e4:	3c014325 	lui	at,0x4325
 1e8:	44818000 	mtc1	at,$f16
 1ec:	00000000 	nop
 1f0:	46100482 	mul.s	$f18,$f0,$f16
 1f4:	e7b20020 	swc1	$f18,32(sp)
 1f8:	0c000000 	jal	0 <BgYdanHasi_Init>
 1fc:	86040032 	lh	a0,50(s0)
 200:	c7a40020 	lwc1	$f4,32(sp)
 204:	c6060008 	lwc1	$f6,8(s0)
 208:	86040032 	lh	a0,50(s0)
 20c:	46040202 	mul.s	$f8,$f0,$f4
 210:	46064280 	add.s	$f10,$f8,$f6
 214:	0c000000 	jal	0 <BgYdanHasi_Init>
 218:	e60a0024 	swc1	$f10,36(s0)
 21c:	c7b00020 	lwc1	$f16,32(sp)
 220:	c6040010 	lwc1	$f4,16(s0)
 224:	3c0141a0 	lui	at,0x41a0
 228:	46100482 	mul.s	$f18,$f0,$f16
 22c:	44818000 	mtc1	at,$f16
 230:	8602016a 	lh	v0,362(s0)
 234:	240b0032 	li	t3,50
 238:	244affff 	addiu	t2,v0,-1
 23c:	46049200 	add.s	$f8,$f18,$f4
 240:	e608002c 	swc1	$f8,44(s0)
 244:	8fb9002c 	lw	t9,44(sp)
 248:	8f2807c0 	lw	t0,1984(t9)
 24c:	8d030028 	lw	v1,40(t0)
 250:	84690012 	lh	t1,18(v1)
 254:	24630010 	addiu	v1,v1,16
 258:	44893000 	mtc1	t1,$f6
 25c:	00000000 	nop
 260:	468032a0 	cvt.s.w	$f10,$f6
 264:	46105480 	add.s	$f18,$f10,$f16
 268:	10400003 	beqz	v0,278 <BgYdanHasi_UpdateFloatingBlock+0xe8>
 26c:	e6120028 	swc1	$f18,40(s0)
 270:	a60a016a 	sh	t2,362(s0)
 274:	8602016a 	lh	v0,362(s0)
 278:	54400004 	bnezl	v0,28c <BgYdanHasi_UpdateFloatingBlock+0xfc>
 27c:	44822000 	mtc1	v0,$f4
 280:	a60b016a 	sh	t3,362(s0)
 284:	8602016a 	lh	v0,362(s0)
 288:	44822000 	mtc1	v0,$f4
 28c:	3c010000 	lui	at,0x0
 290:	c4260044 	lwc1	$f6,68(at)
 294:	46802220 	cvt.s.w	$f8,$f4
 298:	46064302 	mul.s	$f12,$f8,$f6
 29c:	0c000000 	jal	0 <BgYdanHasi_Init>
 2a0:	00000000 	nop
 2a4:	46000400 	add.s	$f16,$f0,$f0
 2a8:	c60a0028 	lwc1	$f10,40(s0)
 2ac:	46105480 	add.s	$f18,$f10,$f16
 2b0:	e6120028 	swc1	$f18,40(s0)
 2b4:	8fbf001c 	lw	ra,28(sp)
 2b8:	8fb00018 	lw	s0,24(sp)
 2bc:	27bd0028 	addiu	sp,sp,40
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <BgYdanHasi_InitWater>:
 2c8:	27bdffe8 	addiu	sp,sp,-24
 2cc:	00803025 	move	a2,a0
 2d0:	afbf0014 	sw	ra,20(sp)
 2d4:	00a02025 	move	a0,a1
 2d8:	90c50168 	lbu	a1,360(a2)
 2dc:	0c000000 	jal	0 <BgYdanHasi_Init>
 2e0:	afa60018 	sw	a2,24(sp)
 2e4:	10400006 	beqz	v0,300 <BgYdanHasi_InitWater+0x38>
 2e8:	8fa60018 	lw	a2,24(sp)
 2ec:	3c0f0000 	lui	t7,0x0
 2f0:	240e0258 	li	t6,600
 2f4:	25ef0000 	addiu	t7,t7,0
 2f8:	a4ce016a 	sh	t6,362(a2)
 2fc:	accf0164 	sw	t7,356(a2)
 300:	8fbf0014 	lw	ra,20(sp)
 304:	27bd0018 	addiu	sp,sp,24
 308:	03e00008 	jr	ra
 30c:	00000000 	nop

00000310 <BgYdanHasi_MoveWater>:
 310:	27bdffe0 	addiu	sp,sp,-32
 314:	afbf001c 	sw	ra,28(sp)
 318:	afb00018 	sw	s0,24(sp)
 31c:	afa50024 	sw	a1,36(sp)
 320:	848e016a 	lh	t6,362(a0)
 324:	00808025 	move	s0,a0
 328:	24840028 	addiu	a0,a0,40
 32c:	15c00010 	bnez	t6,370 <BgYdanHasi_MoveWater+0x60>
 330:	3c01423c 	lui	at,0x423c
 334:	8e05000c 	lw	a1,12(s0)
 338:	0c000000 	jal	0 <BgYdanHasi_Init>
 33c:	3c063f80 	lui	a2,0x3f80
 340:	10400006 	beqz	v0,35c <BgYdanHasi_MoveWater+0x4c>
 344:	8fa40024 	lw	a0,36(sp)
 348:	0c000000 	jal	0 <BgYdanHasi_Init>
 34c:	92050168 	lbu	a1,360(s0)
 350:	3c0f0000 	lui	t7,0x0
 354:	25ef0000 	addiu	t7,t7,0
 358:	ae0f0164 	sw	t7,356(s0)
 35c:	02002025 	move	a0,s0
 360:	0c000000 	jal	0 <BgYdanHasi_Init>
 364:	2405205e 	li	a1,8286
 368:	10000011 	b	3b0 <BgYdanHasi_MoveWater+0xa0>
 36c:	c60a0028 	lwc1	$f10,40(s0)
 370:	c604000c 	lwc1	$f4,12(s0)
 374:	44813000 	mtc1	at,$f6
 378:	26040028 	addiu	a0,s0,40
 37c:	3c063f00 	lui	a2,0x3f00
 380:	46062201 	sub.s	$f8,$f4,$f6
 384:	44054000 	mfc1	a1,$f8
 388:	0c000000 	jal	0 <BgYdanHasi_Init>
 38c:	00000000 	nop
 390:	10400004 	beqz	v0,3a4 <BgYdanHasi_MoveWater+0x94>
 394:	02002025 	move	a0,s0
 398:	3c180000 	lui	t8,0x0
 39c:	27180000 	addiu	t8,t8,0
 3a0:	ae180164 	sw	t8,356(s0)
 3a4:	0c000000 	jal	0 <BgYdanHasi_Init>
 3a8:	2405205e 	li	a1,8286
 3ac:	c60a0028 	lwc1	$f10,40(s0)
 3b0:	8fb90024 	lw	t9,36(sp)
 3b4:	4600540d 	trunc.w.s	$f16,$f10
 3b8:	8f2807c0 	lw	t0,1984(t9)
 3bc:	440a8000 	mfc1	t2,$f16
 3c0:	8d020028 	lw	v0,40(t0)
 3c4:	a44a0012 	sh	t2,18(v0)
 3c8:	8fbf001c 	lw	ra,28(sp)
 3cc:	8fb00018 	lw	s0,24(sp)
 3d0:	27bd0020 	addiu	sp,sp,32
 3d4:	03e00008 	jr	ra
 3d8:	24420010 	addiu	v0,v0,16

000003dc <BgYdanHasi_DecWaterTimer>:
 3dc:	27bdffe8 	addiu	sp,sp,-24
 3e0:	afbf0014 	sw	ra,20(sp)
 3e4:	afa5001c 	sw	a1,28(sp)
 3e8:	8485016a 	lh	a1,362(a0)
 3ec:	10a00003 	beqz	a1,3fc <BgYdanHasi_DecWaterTimer+0x20>
 3f0:	24aeffff 	addiu	t6,a1,-1
 3f4:	a48e016a 	sh	t6,362(a0)
 3f8:	8485016a 	lh	a1,362(a0)
 3fc:	0c000000 	jal	0 <BgYdanHasi_Init>
 400:	afa40018 	sw	a0,24(sp)
 404:	8fa40018 	lw	a0,24(sp)
 408:	3c180000 	lui	t8,0x0
 40c:	27180000 	addiu	t8,t8,0
 410:	848f016a 	lh	t7,362(a0)
 414:	55e00003 	bnezl	t7,424 <BgYdanHasi_DecWaterTimer+0x48>
 418:	8fbf0014 	lw	ra,20(sp)
 41c:	ac980164 	sw	t8,356(a0)
 420:	8fbf0014 	lw	ra,20(sp)
 424:	27bd0018 	addiu	sp,sp,24
 428:	03e00008 	jr	ra
 42c:	00000000 	nop

00000430 <BgYdanHasi_SetupThreeBlocks>:
 430:	27bdffe0 	addiu	sp,sp,-32
 434:	00803825 	move	a3,a0
 438:	afbf001c 	sw	ra,28(sp)
 43c:	afa50024 	sw	a1,36(sp)
 440:	00a02025 	move	a0,a1
 444:	90e50168 	lbu	a1,360(a3)
 448:	0c000000 	jal	0 <BgYdanHasi_Init>
 44c:	afa70020 	sw	a3,32(sp)
 450:	1040000e 	beqz	v0,48c <BgYdanHasi_SetupThreeBlocks+0x5c>
 454:	8fa70020 	lw	a3,32(sp)
 458:	3c0f0000 	lui	t7,0x0
 45c:	3c180000 	lui	t8,0x0
 460:	240e0104 	li	t6,260
 464:	25ef0000 	addiu	t7,t7,0
 468:	27180000 	addiu	t8,t8,0
 46c:	a4ee016a 	sh	t6,362(a3)
 470:	acef0134 	sw	t7,308(a3)
 474:	acf80164 	sw	t8,356(a3)
 478:	afa00010 	sw	zero,16(sp)
 47c:	8fa40024 	lw	a0,36(sp)
 480:	24050be0 	li	a1,3040
 484:	0c000000 	jal	0 <BgYdanHasi_Init>
 488:	2406001e 	li	a2,30
 48c:	8fbf001c 	lw	ra,28(sp)
 490:	27bd0020 	addiu	sp,sp,32
 494:	03e00008 	jr	ra
 498:	00000000 	nop

0000049c <BgYdanHasi_UpdateThreeBlocks>:
 49c:	27bdffe0 	addiu	sp,sp,-32
 4a0:	afbf001c 	sw	ra,28(sp)
 4a4:	afb00018 	sw	s0,24(sp)
 4a8:	afa50024 	sw	a1,36(sp)
 4ac:	8482016a 	lh	v0,362(a0)
 4b0:	00808025 	move	s0,a0
 4b4:	3c0142f0 	lui	at,0x42f0
 4b8:	10400003 	beqz	v0,4c8 <BgYdanHasi_UpdateThreeBlocks+0x2c>
 4bc:	244effff 	addiu	t6,v0,-1
 4c0:	a48e016a 	sh	t6,362(a0)
 4c4:	8482016a 	lh	v0,362(a0)
 4c8:	14400012 	bnez	v0,514 <BgYdanHasi_UpdateThreeBlocks+0x78>
 4cc:	26040028 	addiu	a0,s0,40
 4d0:	8e05000c 	lw	a1,12(s0)
 4d4:	0c000000 	jal	0 <BgYdanHasi_Init>
 4d8:	3c064040 	lui	a2,0x4040
 4dc:	10400009 	beqz	v0,504 <BgYdanHasi_UpdateThreeBlocks+0x68>
 4e0:	02002025 	move	a0,s0
 4e4:	8fa40024 	lw	a0,36(sp)
 4e8:	0c000000 	jal	0 <BgYdanHasi_Init>
 4ec:	92050168 	lbu	a1,360(s0)
 4f0:	3c0f0000 	lui	t7,0x0
 4f4:	25ef0000 	addiu	t7,t7,0
 4f8:	ae000134 	sw	zero,308(s0)
 4fc:	10000016 	b	558 <BgYdanHasi_UpdateThreeBlocks+0xbc>
 500:	ae0f0164 	sw	t7,356(s0)
 504:	0c000000 	jal	0 <BgYdanHasi_Init>
 508:	24052024 	li	a1,8228
 50c:	10000013 	b	55c <BgYdanHasi_UpdateThreeBlocks+0xc0>
 510:	8fbf001c 	lw	ra,28(sp)
 514:	c604000c 	lwc1	$f4,12(s0)
 518:	44813000 	mtc1	at,$f6
 51c:	26040028 	addiu	a0,s0,40
 520:	3c064040 	lui	a2,0x4040
 524:	46062200 	add.s	$f8,$f4,$f6
 528:	44054000 	mfc1	a1,$f8
 52c:	0c000000 	jal	0 <BgYdanHasi_Init>
 530:	00000000 	nop
 534:	14400006 	bnez	v0,550 <BgYdanHasi_UpdateThreeBlocks+0xb4>
 538:	02002025 	move	a0,s0
 53c:	02002025 	move	a0,s0
 540:	0c000000 	jal	0 <BgYdanHasi_Init>
 544:	24052024 	li	a1,8228
 548:	10000004 	b	55c <BgYdanHasi_UpdateThreeBlocks+0xc0>
 54c:	8fbf001c 	lw	ra,28(sp)
 550:	0c000000 	jal	0 <BgYdanHasi_Init>
 554:	8605016a 	lh	a1,362(s0)
 558:	8fbf001c 	lw	ra,28(sp)
 55c:	8fb00018 	lw	s0,24(sp)
 560:	27bd0020 	addiu	sp,sp,32
 564:	03e00008 	jr	ra
 568:	00000000 	nop

0000056c <BgYdanHasi_Update>:
 56c:	27bdffe8 	addiu	sp,sp,-24
 570:	afbf0014 	sw	ra,20(sp)
 574:	8c990164 	lw	t9,356(a0)
 578:	0320f809 	jalr	t9
 57c:	00000000 	nop
 580:	8fbf0014 	lw	ra,20(sp)
 584:	27bd0018 	addiu	sp,sp,24
 588:	03e00008 	jr	ra
 58c:	00000000 	nop

00000590 <BgYdanHasi_Draw>:
 590:	27bdff98 	addiu	sp,sp,-104
 594:	afbf003c 	sw	ra,60(sp)
 598:	afb10038 	sw	s1,56(sp)
 59c:	afb00034 	sw	s0,52(sp)
 5a0:	8482001c 	lh	v0,28(a0)
 5a4:	00a08825 	move	s1,a1
 5a8:	24010002 	li	at,2
 5ac:	10400003 	beqz	v0,5bc <BgYdanHasi_Draw+0x2c>
 5b0:	02202025 	move	a0,s1
 5b4:	14410008 	bne	v0,at,5d8 <BgYdanHasi_Draw+0x48>
 5b8:	3c060000 	lui	a2,0x0
 5bc:	00027080 	sll	t6,v0,0x2
 5c0:	3c050000 	lui	a1,0x0
 5c4:	00ae2821 	addu	a1,a1,t6
 5c8:	0c000000 	jal	0 <BgYdanHasi_Init>
 5cc:	8ca50000 	lw	a1,0(a1)
 5d0:	10000044 	b	6e4 <BgYdanHasi_Draw+0x154>
 5d4:	8fbf003c 	lw	ra,60(sp)
 5d8:	8e250000 	lw	a1,0(s1)
 5dc:	27a40050 	addiu	a0,sp,80
 5e0:	24c60000 	addiu	a2,a2,0
 5e4:	24070241 	li	a3,577
 5e8:	0c000000 	jal	0 <BgYdanHasi_Init>
 5ec:	00a08025 	move	s0,a1
 5f0:	0c000000 	jal	0 <BgYdanHasi_Init>
 5f4:	8e240000 	lw	a0,0(s1)
 5f8:	8e0202d0 	lw	v0,720(s0)
 5fc:	3c18db06 	lui	t8,0xdb06
 600:	37180020 	ori	t8,t8,0x20
 604:	244f0008 	addiu	t7,v0,8
 608:	ae0f02d0 	sw	t7,720(s0)
 60c:	3c030001 	lui	v1,0x1
 610:	00711821 	addu	v1,v1,s1
 614:	ac580000 	sw	t8,0(v0)
 618:	8c631de4 	lw	v1,7652(v1)
 61c:	8e240000 	lw	a0,0(s1)
 620:	24190020 	li	t9,32
 624:	24090020 	li	t1,32
 628:	240a0001 	li	t2,1
 62c:	240b0020 	li	t3,32
 630:	240c0020 	li	t4,32
 634:	00033023 	negu	a2,v1
 638:	3067007f 	andi	a3,v1,0x7f
 63c:	afa7001c 	sw	a3,28(sp)
 640:	afa70020 	sw	a3,32(sp)
 644:	30c6007f 	andi	a2,a2,0x7f
 648:	afac0028 	sw	t4,40(sp)
 64c:	afab0024 	sw	t3,36(sp)
 650:	afaa0018 	sw	t2,24(sp)
 654:	afa90014 	sw	t1,20(sp)
 658:	afb90010 	sw	t9,16(sp)
 65c:	00002825 	move	a1,zero
 660:	0c000000 	jal	0 <BgYdanHasi_Init>
 664:	afa2004c 	sw	v0,76(sp)
 668:	8fa8004c 	lw	t0,76(sp)
 66c:	3c0eda38 	lui	t6,0xda38
 670:	35ce0003 	ori	t6,t6,0x3
 674:	ad020004 	sw	v0,4(t0)
 678:	8e0202d0 	lw	v0,720(s0)
 67c:	3c050000 	lui	a1,0x0
 680:	24a50014 	addiu	a1,a1,20
 684:	244d0008 	addiu	t5,v0,8
 688:	ae0d02d0 	sw	t5,720(s0)
 68c:	ac4e0000 	sw	t6,0(v0)
 690:	8e240000 	lw	a0,0(s1)
 694:	24060250 	li	a2,592
 698:	0c000000 	jal	0 <BgYdanHasi_Init>
 69c:	afa20048 	sw	v0,72(sp)
 6a0:	8fa30048 	lw	v1,72(sp)
 6a4:	3c190000 	lui	t9,0x0
 6a8:	27390000 	addiu	t9,t9,0
 6ac:	ac620004 	sw	v0,4(v1)
 6b0:	8e0202d0 	lw	v0,720(s0)
 6b4:	3c18de00 	lui	t8,0xde00
 6b8:	3c060000 	lui	a2,0x0
 6bc:	244f0008 	addiu	t7,v0,8
 6c0:	ae0f02d0 	sw	t7,720(s0)
 6c4:	ac590004 	sw	t9,4(v0)
 6c8:	ac580000 	sw	t8,0(v0)
 6cc:	8e250000 	lw	a1,0(s1)
 6d0:	24c60028 	addiu	a2,a2,40
 6d4:	27a40050 	addiu	a0,sp,80
 6d8:	0c000000 	jal	0 <BgYdanHasi_Init>
 6dc:	24070255 	li	a3,597
 6e0:	8fbf003c 	lw	ra,60(sp)
 6e4:	8fb00034 	lw	s0,52(sp)
 6e8:	8fb10038 	lw	s1,56(sp)
 6ec:	03e00008 	jr	ra
 6f0:	27bd0068 	addiu	sp,sp,104
	...
