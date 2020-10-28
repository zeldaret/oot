
build/src/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/z_bg_hidan_kowarerukabe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8088A020>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	afa00028 	sw	zero,40(sp)
  14:	848e001c 	lh	t6,28(a0)
  18:	3c190000 	lui	t9,0x0
  1c:	00808025 	move	s0,a0
  20:	31cf00ff 	andi	t7,t6,0xff
  24:	000fc080 	sll	t8,t7,0x2
  28:	0338c821 	addu	t9,t9,t8
  2c:	8f390000 	lw	t9,0(t9)
  30:	240bffff 	li	t3,-1
  34:	53200013 	beqzl	t9,84 <func_8088A020+0x84>
  38:	ae0b014c 	sw	t3,332(s0)
  3c:	0c000000 	jal	0 <func_8088A020>
  40:	00002825 	move	a1,zero
  44:	8608001c 	lh	t0,28(s0)
  48:	3c040000 	lui	a0,0x0
  4c:	27a50028 	addiu	a1,sp,40
  50:	310900ff 	andi	t1,t0,0xff
  54:	00095080 	sll	t2,t1,0x2
  58:	008a2021 	addu	a0,a0,t2
  5c:	0c000000 	jal	0 <func_8088A020>
  60:	8c840000 	lw	a0,0(a0)
  64:	8fa40034 	lw	a0,52(sp)
  68:	02003025 	move	a2,s0
  6c:	8fa70028 	lw	a3,40(sp)
  70:	0c000000 	jal	0 <func_8088A020>
  74:	24850810 	addiu	a1,a0,2064
  78:	10000002 	b	84 <func_8088A020+0x84>
  7c:	ae02014c 	sw	v0,332(s0)
  80:	ae0b014c 	sw	t3,332(s0)
  84:	8fbf001c 	lw	ra,28(sp)
  88:	8fb00018 	lw	s0,24(sp)
  8c:	27bd0030 	addiu	sp,sp,48
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <func_8088A0B8>:
  98:	27bdffd8 	addiu	sp,sp,-40
  9c:	00803025 	move	a2,a0
  a0:	afa5002c 	sw	a1,44(sp)
  a4:	00a02025 	move	a0,a1
  a8:	afbf001c 	sw	ra,28(sp)
  ac:	24c50164 	addiu	a1,a2,356
  b0:	afa50020 	sw	a1,32(sp)
  b4:	0c000000 	jal	0 <func_8088A020>
  b8:	afa60028 	sw	a2,40(sp)
  bc:	8fa60028 	lw	a2,40(sp)
  c0:	3c070000 	lui	a3,0x0
  c4:	8fa50020 	lw	a1,32(sp)
  c8:	24ce0184 	addiu	t6,a2,388
  cc:	afae0010 	sw	t6,16(sp)
  d0:	24e70000 	addiu	a3,a3,0
  d4:	0c000000 	jal	0 <func_8088A020>
  d8:	8fa4002c 	lw	a0,44(sp)
  dc:	8fa60028 	lw	a2,40(sp)
  e0:	3c080000 	lui	t0,0x0
  e4:	3c0d0000 	lui	t5,0x0
  e8:	84cf001c 	lh	t7,28(a2)
  ec:	8cc90180 	lw	t1,384(a2)
  f0:	31f800ff 	andi	t8,t7,0xff
  f4:	0018c840 	sll	t9,t8,0x1
  f8:	01194021 	addu	t0,t0,t9
  fc:	85080000 	lh	t0,0(t0)
 100:	a528002e 	sh	t0,46(t1)
 104:	84ca001c 	lh	t2,28(a2)
 108:	8cce0180 	lw	t6,384(a2)
 10c:	314b00ff 	andi	t3,t2,0xff
 110:	000b6040 	sll	t4,t3,0x1
 114:	01ac6821 	addu	t5,t5,t4
 118:	85ad0000 	lh	t5,0(t5)
 11c:	a5cd002a 	sh	t5,42(t6)
 120:	8fbf001c 	lw	ra,28(sp)
 124:	27bd0028 	addiu	sp,sp,40
 128:	03e00008 	jr	ra
 12c:	00000000 	nop

00000130 <func_8088A150>:
 130:	848e001c 	lh	t6,28(a0)
 134:	3c010000 	lui	at,0x0
 138:	c486000c 	lwc1	$f6,12(a0)
 13c:	31cf00ff 	andi	t7,t6,0xff
 140:	000fc080 	sll	t8,t7,0x2
 144:	00380821 	addu	at,at,t8
 148:	c4240000 	lwc1	$f4,0(at)
 14c:	46062200 	add.s	$f8,$f4,$f6
 150:	03e00008 	jr	ra
 154:	e4880028 	swc1	$f8,40(a0)

00000158 <BgHidanKowarerukabe_Init>:
 158:	27bdffe0 	addiu	sp,sp,-32
 15c:	afbf001c 	sw	ra,28(sp)
 160:	afb00018 	sw	s0,24(sp)
 164:	00808025 	move	s0,a0
 168:	0c000000 	jal	0 <func_8088A020>
 16c:	afa50024 	sw	a1,36(sp)
 170:	8607001c 	lh	a3,28(s0)
 174:	3c040000 	lui	a0,0x0
 178:	24840000 	addiu	a0,a0,0
 17c:	30e200ff 	andi	v0,a3,0xff
 180:	04400003 	bltz	v0,190 <BgHidanKowarerukabe_Init+0x38>
 184:	28410003 	slti	at,v0,3
 188:	14200009 	bnez	at,1b0 <BgHidanKowarerukabe_Init+0x58>
 18c:	00072a03 	sra	a1,a3,0x8
 190:	3c050000 	lui	a1,0x0
 194:	24a50000 	addiu	a1,a1,0
 198:	0c000000 	jal	0 <func_8088A020>
 19c:	240600fe 	li	a2,254
 1a0:	0c000000 	jal	0 <func_8088A020>
 1a4:	02002025 	move	a0,s0
 1a8:	1000001b 	b	218 <BgHidanKowarerukabe_Init+0xc0>
 1ac:	8fbf001c 	lw	ra,28(sp)
 1b0:	8fa40024 	lw	a0,36(sp)
 1b4:	0c000000 	jal	0 <func_8088A020>
 1b8:	30a5003f 	andi	a1,a1,0x3f
 1bc:	10400005 	beqz	v0,1d4 <BgHidanKowarerukabe_Init+0x7c>
 1c0:	02002025 	move	a0,s0
 1c4:	0c000000 	jal	0 <func_8088A020>
 1c8:	02002025 	move	a0,s0
 1cc:	10000012 	b	218 <BgHidanKowarerukabe_Init+0xc0>
 1d0:	8fbf001c 	lw	ra,28(sp)
 1d4:	3c050000 	lui	a1,0x0
 1d8:	0c000000 	jal	0 <func_8088A020>
 1dc:	24a50000 	addiu	a1,a1,0
 1e0:	3c053dcc 	lui	a1,0x3dcc
 1e4:	34a5cccd 	ori	a1,a1,0xcccd
 1e8:	0c000000 	jal	0 <func_8088A020>
 1ec:	02002025 	move	a0,s0
 1f0:	02002025 	move	a0,s0
 1f4:	0c000000 	jal	0 <func_8088A020>
 1f8:	8fa50024 	lw	a1,36(sp)
 1fc:	0c000000 	jal	0 <func_8088A020>
 200:	02002025 	move	a0,s0
 204:	3c040000 	lui	a0,0x0
 208:	24840000 	addiu	a0,a0,0
 20c:	0c000000 	jal	0 <func_8088A020>
 210:	8605001c 	lh	a1,28(s0)
 214:	8fbf001c 	lw	ra,28(sp)
 218:	8fb00018 	lw	s0,24(sp)
 21c:	27bd0020 	addiu	sp,sp,32
 220:	03e00008 	jr	ra
 224:	00000000 	nop

00000228 <BgHidanKowarerukabe_Destroy>:
 228:	27bdffe8 	addiu	sp,sp,-24
 22c:	afa40018 	sw	a0,24(sp)
 230:	8fae0018 	lw	t6,24(sp)
 234:	afbf0014 	sw	ra,20(sp)
 238:	00a03825 	move	a3,a1
 23c:	00a02025 	move	a0,a1
 240:	8dc6014c 	lw	a2,332(t6)
 244:	afa7001c 	sw	a3,28(sp)
 248:	0c000000 	jal	0 <func_8088A020>
 24c:	24a50810 	addiu	a1,a1,2064
 250:	8fa50018 	lw	a1,24(sp)
 254:	8fa4001c 	lw	a0,28(sp)
 258:	0c000000 	jal	0 <func_8088A020>
 25c:	24a50164 	addiu	a1,a1,356
 260:	8fbf0014 	lw	ra,20(sp)
 264:	27bd0018 	addiu	sp,sp,24
 268:	03e00008 	jr	ra
 26c:	00000000 	nop

00000270 <func_8088A290>:
 270:	27bdffc8 	addiu	sp,sp,-56
 274:	afbf0024 	sw	ra,36(sp)
 278:	afa40038 	sw	a0,56(sp)
 27c:	afa5003c 	sw	a1,60(sp)
 280:	8c980024 	lw	t8,36(a0)
 284:	27a50028 	addiu	a1,sp,40
 288:	3c014120 	lui	at,0x4120
 28c:	acb80000 	sw	t8,0(a1)
 290:	8c8f0028 	lw	t7,40(a0)
 294:	44813000 	mtc1	at,$f6
 298:	24190258 	li	t9,600
 29c:	acaf0004 	sw	t7,4(a1)
 2a0:	8c98002c 	lw	t8,44(a0)
 2a4:	2408012c 	li	t0,300
 2a8:	24090001 	li	t1,1
 2ac:	acb80008 	sw	t8,8(a1)
 2b0:	c7a4002c 	lwc1	$f4,44(sp)
 2b4:	afa90018 	sw	t1,24(sp)
 2b8:	afa80014 	sw	t0,20(sp)
 2bc:	46062200 	add.s	$f8,$f4,$f6
 2c0:	afb90010 	sw	t9,16(sp)
 2c4:	8fa4003c 	lw	a0,60(sp)
 2c8:	24060000 	li	a2,0
 2cc:	e7a8002c 	swc1	$f8,44(sp)
 2d0:	0c000000 	jal	0 <func_8088A020>
 2d4:	00003825 	move	a3,zero
 2d8:	0c000000 	jal	0 <func_8088A020>
 2dc:	00000000 	nop
 2e0:	3c013f00 	lui	at,0x3f00
 2e4:	44815000 	mtc1	at,$f10
 2e8:	3c0142a0 	lui	at,0x42a0
 2ec:	44819000 	mtc1	at,$f18
 2f0:	460a0401 	sub.s	$f16,$f0,$f10
 2f4:	8faa0038 	lw	t2,56(sp)
 2f8:	46128102 	mul.s	$f4,$f16,$f18
 2fc:	c5460024 	lwc1	$f6,36(t2)
 300:	46062200 	add.s	$f8,$f4,$f6
 304:	0c000000 	jal	0 <func_8088A020>
 308:	e7a80028 	swc1	$f8,40(sp)
 30c:	3c0142c8 	lui	at,0x42c8
 310:	44815000 	mtc1	at,$f10
 314:	8fab0038 	lw	t3,56(sp)
 318:	460a0402 	mul.s	$f16,$f0,$f10
 31c:	c5720028 	lwc1	$f18,40(t3)
 320:	46128100 	add.s	$f4,$f16,$f18
 324:	0c000000 	jal	0 <func_8088A020>
 328:	e7a4002c 	swc1	$f4,44(sp)
 32c:	3c013f00 	lui	at,0x3f00
 330:	44813000 	mtc1	at,$f6
 334:	3c0142a0 	lui	at,0x42a0
 338:	44815000 	mtc1	at,$f10
 33c:	46060201 	sub.s	$f8,$f0,$f6
 340:	8fac0038 	lw	t4,56(sp)
 344:	240d00c8 	li	t5,200
 348:	240e00fa 	li	t6,250
 34c:	460a4402 	mul.s	$f16,$f8,$f10
 350:	c592002c 	lwc1	$f18,44(t4)
 354:	240f0001 	li	t7,1
 358:	afaf0018 	sw	t7,24(sp)
 35c:	afae0014 	sw	t6,20(sp)
 360:	afad0010 	sw	t5,16(sp)
 364:	8fa4003c 	lw	a0,60(sp)
 368:	46128100 	add.s	$f4,$f16,$f18
 36c:	27a50028 	addiu	a1,sp,40
 370:	3c0642c8 	lui	a2,0x42c8
 374:	24070004 	li	a3,4
 378:	0c000000 	jal	0 <func_8088A020>
 37c:	e7a40030 	swc1	$f4,48(sp)
 380:	8fbf0024 	lw	ra,36(sp)
 384:	27bd0038 	addiu	sp,sp,56
 388:	03e00008 	jr	ra
 38c:	00000000 	nop

00000390 <func_8088A3B0>:
 390:	27bdff08 	addiu	sp,sp,-248
 394:	afb20080 	sw	s2,128(sp)
 398:	00809025 	move	s2,a0
 39c:	afbf009c 	sw	ra,156(sp)
 3a0:	afbe0098 	sw	s8,152(sp)
 3a4:	afb70094 	sw	s7,148(sp)
 3a8:	afb60090 	sw	s6,144(sp)
 3ac:	afb5008c 	sw	s5,140(sp)
 3b0:	afb40088 	sw	s4,136(sp)
 3b4:	afb30084 	sw	s3,132(sp)
 3b8:	afb1007c 	sw	s1,124(sp)
 3bc:	afb00078 	sw	s0,120(sp)
 3c0:	f7be0070 	sdc1	$f30,112(sp)
 3c4:	f7bc0068 	sdc1	$f28,104(sp)
 3c8:	f7ba0060 	sdc1	$f26,96(sp)
 3cc:	f7b80058 	sdc1	$f24,88(sp)
 3d0:	f7b60050 	sdc1	$f22,80(sp)
 3d4:	f7b40048 	sdc1	$f20,72(sp)
 3d8:	afa500fc 	sw	a1,252(sp)
 3dc:	0c000000 	jal	0 <func_8088A020>
 3e0:	848400b6 	lh	a0,182(a0)
 3e4:	46000606 	mov.s	$f24,$f0
 3e8:	0c000000 	jal	0 <func_8088A020>
 3ec:	864400b6 	lh	a0,182(s2)
 3f0:	3c014120 	lui	at,0x4120
 3f4:	44813000 	mtc1	at,$f6
 3f8:	c6440028 	lwc1	$f4,40(s2)
 3fc:	3c014130 	lui	at,0x4130
 400:	4481f000 	mtc1	at,$f30
 404:	46062200 	add.s	$f8,$f4,$f6
 408:	3c014100 	lui	at,0x4100
 40c:	2402ffd0 	li	v0,-48
 410:	264e0024 	addiu	t6,s2,36
 414:	3c1e0500 	lui	s8,0x500
 418:	4481e000 	mtc1	at,$f28
 41c:	46000686 	mov.s	$f26,$f0
 420:	e7a800dc 	swc1	$f8,220(sp)
 424:	27de0530 	addiu	s8,s8,1328
 428:	afae00a4 	sw	t6,164(sp)
 42c:	afa200b8 	sw	v0,184(sp)
 430:	00009825 	move	s3,zero
 434:	27b700e4 	addiu	s7,sp,228
 438:	27b600d8 	addiu	s6,sp,216
 43c:	24150005 	li	s5,5
 440:	24140004 	li	s4,4
 444:	8fa200b8 	lw	v0,184(sp)
 448:	266ffffe 	addiu	t7,s3,-2
 44c:	448f3000 	mtc1	t7,$f6
 450:	44825000 	mtc1	v0,$f10
 454:	44829000 	mtc1	v0,$f18
 458:	46803220 	cvt.s.w	$f8,$f6
 45c:	00008025 	move	s0,zero
 460:	2411ffd0 	li	s1,-48
 464:	46805420 	cvt.s.w	$f16,$f10
 468:	e7a800a8 	swc1	$f8,168(sp)
 46c:	46809120 	cvt.s.w	$f4,$f18
 470:	461a8082 	mul.s	$f2,$f16,$f26
 474:	00000000 	nop
 478:	46182302 	mul.s	$f12,$f4,$f24
 47c:	e7a200b0 	swc1	$f2,176(sp)
 480:	e7ac00ac 	swc1	$f12,172(sp)
 484:	44915000 	mtc1	s1,$f10
 488:	c7a200b0 	lwc1	$f2,176(sp)
 48c:	c6440024 	lwc1	$f4,36(s2)
 490:	46805020 	cvt.s.w	$f0,$f10
 494:	c7ac00ac 	lwc1	$f12,172(sp)
 498:	46180402 	mul.s	$f16,$f0,$f24
 49c:	46028480 	add.s	$f18,$f16,$f2
 4a0:	461a0202 	mul.s	$f8,$f0,$f26
 4a4:	46049180 	add.s	$f6,$f18,$f4
 4a8:	460c4281 	sub.s	$f10,$f8,$f12
 4ac:	e7a600d8 	swc1	$f6,216(sp)
 4b0:	c650002c 	lwc1	$f16,44(s2)
 4b4:	46105480 	add.s	$f18,$f10,$f16
 4b8:	0c000000 	jal	0 <func_8088A020>
 4bc:	e7b200e0 	swc1	$f18,224(sp)
 4c0:	461c0102 	mul.s	$f4,$f0,$f28
 4c4:	c7a600a8 	lwc1	$f6,168(sp)
 4c8:	46062502 	mul.s	$f20,$f4,$f6
 4cc:	0c000000 	jal	0 <func_8088A020>
 4d0:	00000000 	nop
 4d4:	2618fffe 	addiu	t8,s0,-2
 4d8:	44985000 	mtc1	t8,$f10
 4dc:	461c0202 	mul.s	$f8,$f0,$f28
 4e0:	46805420 	cvt.s.w	$f16,$f10
 4e4:	46104582 	mul.s	$f22,$f8,$f16
 4e8:	00000000 	nop
 4ec:	4618b482 	mul.s	$f18,$f22,$f24
 4f0:	00000000 	nop
 4f4:	461aa102 	mul.s	$f4,$f20,$f26
 4f8:	46049180 	add.s	$f6,$f18,$f4
 4fc:	0c000000 	jal	0 <func_8088A020>
 500:	e7a600e4 	swc1	$f6,228(sp)
 504:	3c0141f0 	lui	at,0x41f0
 508:	44815000 	mtc1	at,$f10
 50c:	00000000 	nop
 510:	460a0202 	mul.s	$f8,$f0,$f10
 514:	00000000 	nop
 518:	461ab402 	mul.s	$f16,$f22,$f26
 51c:	00000000 	nop
 520:	4618a482 	mul.s	$f18,$f20,$f24
 524:	e7a800e8 	swc1	$f8,232(sp)
 528:	46128101 	sub.s	$f4,$f16,$f18
 52c:	0c000000 	jal	0 <func_8088A020>
 530:	e7a400ec 	swc1	$f4,236(sp)
 534:	3c013f00 	lui	at,0x3f00
 538:	44813000 	mtc1	at,$f6
 53c:	3c010000 	lui	at,0x0
 540:	c4300000 	lwc1	$f16,0(at)
 544:	46060281 	sub.s	$f10,$f0,$f6
 548:	8fa400fc 	lw	a0,252(sp)
 54c:	02c02825 	move	a1,s6
 550:	02e03025 	move	a2,s7
 554:	461e5202 	mul.s	$f8,$f10,$f30
 558:	8fa700a4 	lw	a3,164(sp)
 55c:	2408fdda 	li	t0,-550
 560:	2409000f 	li	t1,15
 564:	240a000f 	li	t2,15
 568:	240b0002 	li	t3,2
 56c:	240c0010 	li	t4,16
 570:	46104482 	mul.s	$f18,$f8,$f16
 574:	240d0064 	li	t5,100
 578:	240effff 	li	t6,-1
 57c:	240f0003 	li	t7,3
 580:	461e9100 	add.s	$f4,$f18,$f30
 584:	4600218d 	trunc.w.s	$f6,$f4
 588:	44033000 	mfc1	v1,$f6
 58c:	00000000 	nop
 590:	00031c00 	sll	v1,v1,0x10
 594:	12600003 	beqz	s3,5a4 <func_8088A3B0+0x214>
 598:	00031c03 	sra	v1,v1,0x10
 59c:	56740008 	bnel	s3,s4,5c0 <func_8088A3B0+0x230>
 5a0:	24020040 	li	v0,64
 5a4:	12000003 	beqz	s0,5b4 <func_8088A3B0+0x224>
 5a8:	00000000 	nop
 5ac:	56140004 	bnel	s0,s4,5c0 <func_8088A3B0+0x230>
 5b0:	24020040 	li	v0,64
 5b4:	10000002 	b	5c0 <func_8088A3B0+0x230>
 5b8:	24020041 	li	v0,65
 5bc:	24020040 	li	v0,64
 5c0:	afa80010 	sw	t0,16(sp)
 5c4:	afa20014 	sw	v0,20(sp)
 5c8:	afa90018 	sw	t1,24(sp)
 5cc:	afaa001c 	sw	t2,28(sp)
 5d0:	afa00020 	sw	zero,32(sp)
 5d4:	afa30024 	sw	v1,36(sp)
 5d8:	afab0028 	sw	t3,40(sp)
 5dc:	afac002c 	sw	t4,44(sp)
 5e0:	afad0030 	sw	t5,48(sp)
 5e4:	afae0034 	sw	t6,52(sp)
 5e8:	afaf0038 	sw	t7,56(sp)
 5ec:	0c000000 	jal	0 <func_8088A020>
 5f0:	afbe003c 	sw	s8,60(sp)
 5f4:	26100001 	addiu	s0,s0,1
 5f8:	1615ffa2 	bne	s0,s5,484 <func_8088A3B0+0xf4>
 5fc:	26310018 	addiu	s1,s1,24
 600:	8fb800b8 	lw	t8,184(sp)
 604:	26730001 	addiu	s3,s3,1
 608:	27190018 	addiu	t9,t8,24
 60c:	1675ff8d 	bne	s3,s5,444 <func_8088A3B0+0xb4>
 610:	afb900b8 	sw	t9,184(sp)
 614:	8fbf009c 	lw	ra,156(sp)
 618:	d7b40048 	ldc1	$f20,72(sp)
 61c:	d7b60050 	ldc1	$f22,80(sp)
 620:	d7b80058 	ldc1	$f24,88(sp)
 624:	d7ba0060 	ldc1	$f26,96(sp)
 628:	d7bc0068 	ldc1	$f28,104(sp)
 62c:	d7be0070 	ldc1	$f30,112(sp)
 630:	8fb00078 	lw	s0,120(sp)
 634:	8fb1007c 	lw	s1,124(sp)
 638:	8fb20080 	lw	s2,128(sp)
 63c:	8fb30084 	lw	s3,132(sp)
 640:	8fb40088 	lw	s4,136(sp)
 644:	8fb5008c 	lw	s5,140(sp)
 648:	8fb60090 	lw	s6,144(sp)
 64c:	8fb70094 	lw	s7,148(sp)
 650:	8fbe0098 	lw	s8,152(sp)
 654:	03e00008 	jr	ra
 658:	27bd00f8 	addiu	sp,sp,248

0000065c <func_8088A67C>:
 65c:	27bdff18 	addiu	sp,sp,-232
 660:	afb40088 	sw	s4,136(sp)
 664:	0080a025 	move	s4,a0
 668:	afbf009c 	sw	ra,156(sp)
 66c:	afbe0098 	sw	s8,152(sp)
 670:	afb70094 	sw	s7,148(sp)
 674:	afb60090 	sw	s6,144(sp)
 678:	afb5008c 	sw	s5,140(sp)
 67c:	afb30084 	sw	s3,132(sp)
 680:	afb20080 	sw	s2,128(sp)
 684:	afb1007c 	sw	s1,124(sp)
 688:	afb00078 	sw	s0,120(sp)
 68c:	f7be0070 	sdc1	$f30,112(sp)
 690:	f7bc0068 	sdc1	$f28,104(sp)
 694:	f7ba0060 	sdc1	$f26,96(sp)
 698:	f7b80058 	sdc1	$f24,88(sp)
 69c:	f7b60050 	sdc1	$f22,80(sp)
 6a0:	f7b40048 	sdc1	$f20,72(sp)
 6a4:	afa500ec 	sw	a1,236(sp)
 6a8:	0c000000 	jal	0 <func_8088A020>
 6ac:	848400b6 	lh	a0,182(a0)
 6b0:	46000606 	mov.s	$f24,$f0
 6b4:	0c000000 	jal	0 <func_8088A020>
 6b8:	868400b6 	lh	a0,182(s4)
 6bc:	3c014040 	lui	at,0x4040
 6c0:	4481f000 	mtc1	at,$f30
 6c4:	3c014130 	lui	at,0x4130
 6c8:	3c1e0500 	lui	s8,0x500
 6cc:	4481e000 	mtc1	at,$f28
 6d0:	46000686 	mov.s	$f26,$f0
 6d4:	27de0530 	addiu	s8,s8,1328
 6d8:	26950024 	addiu	s5,s4,36
 6dc:	afa000a8 	sw	zero,168(sp)
 6e0:	27b700d4 	addiu	s7,sp,212
 6e4:	27b600c8 	addiu	s6,sp,200
 6e8:	8fa200a8 	lw	v0,168(sp)
 6ec:	c6880028 	lwc1	$f8,40(s4)
 6f0:	00008825 	move	s1,zero
 6f4:	44822000 	mtc1	v0,$f4
 6f8:	2412ffe0 	li	s2,-32
 6fc:	468021a0 	cvt.s.w	$f6,$f4
 700:	46083280 	add.s	$f10,$f6,$f8
 704:	e7aa00cc 	swc1	$f10,204(sp)
 708:	44928000 	mtc1	s2,$f16
 70c:	c6840024 	lwc1	$f4,36(s4)
 710:	46808020 	cvt.s.w	$f0,$f16
 714:	461a0482 	mul.s	$f18,$f0,$f26
 718:	46049180 	add.s	$f6,$f18,$f4
 71c:	46180282 	mul.s	$f10,$f0,$f24
 720:	e7a600c8 	swc1	$f6,200(sp)
 724:	c688002c 	lwc1	$f8,44(s4)
 728:	460a4401 	sub.s	$f16,$f8,$f10
 72c:	0c000000 	jal	0 <func_8088A020>
 730:	e7b000d0 	swc1	$f16,208(sp)
 734:	262efffe 	addiu	t6,s1,-2
 738:	448e2000 	mtc1	t6,$f4
 73c:	461e0482 	mul.s	$f18,$f0,$f30
 740:	468021a0 	cvt.s.w	$f6,$f4
 744:	46069502 	mul.s	$f20,$f18,$f6
 748:	0c000000 	jal	0 <func_8088A020>
 74c:	00000000 	nop
 750:	3c0140c0 	lui	at,0x40c0
 754:	44814000 	mtc1	at,$f8
 758:	00000000 	nop
 75c:	46080582 	mul.s	$f22,$f0,$f8
 760:	00000000 	nop
 764:	4618b282 	mul.s	$f10,$f22,$f24
 768:	00000000 	nop
 76c:	461aa402 	mul.s	$f16,$f20,$f26
 770:	46105100 	add.s	$f4,$f10,$f16
 774:	0c000000 	jal	0 <func_8088A020>
 778:	e7a400d4 	swc1	$f4,212(sp)
 77c:	3c014190 	lui	at,0x4190
 780:	44819000 	mtc1	at,$f18
 784:	00000000 	nop
 788:	46120182 	mul.s	$f6,$f0,$f18
 78c:	00000000 	nop
 790:	461ab202 	mul.s	$f8,$f22,$f26
 794:	00000000 	nop
 798:	4618a282 	mul.s	$f10,$f20,$f24
 79c:	e7a600d8 	swc1	$f6,216(sp)
 7a0:	460a4401 	sub.s	$f16,$f8,$f10
 7a4:	0c000000 	jal	0 <func_8088A020>
 7a8:	e7b000dc 	swc1	$f16,220(sp)
 7ac:	3c013f00 	lui	at,0x3f00
 7b0:	44812000 	mtc1	at,$f4
 7b4:	3c010000 	lui	at,0x0
 7b8:	c4280000 	lwc1	$f8,0(at)
 7bc:	46040481 	sub.s	$f18,$f0,$f4
 7c0:	24100040 	li	s0,64
 7c4:	461c9182 	mul.s	$f6,$f18,$f28
 7c8:	00000000 	nop
 7cc:	46083282 	mul.s	$f10,$f6,$f8
 7d0:	461c5400 	add.s	$f16,$f10,$f28
 7d4:	4600810d 	trunc.w.s	$f4,$f16
 7d8:	44022000 	mfc1	v0,$f4
 7dc:	00000000 	nop
 7e0:	0002c400 	sll	t8,v0,0x10
 7e4:	0018cc03 	sra	t9,t8,0x10
 7e8:	2b21000f 	slti	at,t9,15
 7ec:	00029c00 	sll	s3,v0,0x10
 7f0:	14200003 	bnez	at,800 <func_8088A67C+0x1a4>
 7f4:	00139c03 	sra	s3,s3,0x10
 7f8:	10000001 	b	800 <func_8088A67C+0x1a4>
 7fc:	24100020 	li	s0,32
 800:	0c000000 	jal	0 <func_8088A020>
 804:	00000000 	nop
 808:	3c0140a0 	lui	at,0x40a0
 80c:	44819000 	mtc1	at,$f18
 810:	8fa400ec 	lw	a0,236(sp)
 814:	02c02825 	move	a1,s6
 818:	4612003c 	c.lt.s	$f0,$f18
 81c:	02e03025 	move	a2,s7
 820:	02a03825 	move	a3,s5
 824:	2408fde4 	li	t0,-540
 828:	45000004 	bc1f	83c <func_8088A67C+0x1e0>
 82c:	24090014 	li	t1,20
 830:	36100001 	ori	s0,s0,0x1
 834:	00108400 	sll	s0,s0,0x10
 838:	00108403 	sra	s0,s0,0x10
 83c:	240a0014 	li	t2,20
 840:	240b0002 	li	t3,2
 844:	240c0020 	li	t4,32
 848:	240d0064 	li	t5,100
 84c:	240effff 	li	t6,-1
 850:	240f0003 	li	t7,3
 854:	afaf0038 	sw	t7,56(sp)
 858:	afae0034 	sw	t6,52(sp)
 85c:	afad0030 	sw	t5,48(sp)
 860:	afac002c 	sw	t4,44(sp)
 864:	afab0028 	sw	t3,40(sp)
 868:	afaa001c 	sw	t2,28(sp)
 86c:	afa80010 	sw	t0,16(sp)
 870:	afb00014 	sw	s0,20(sp)
 874:	afa90018 	sw	t1,24(sp)
 878:	afa00020 	sw	zero,32(sp)
 87c:	afb30024 	sw	s3,36(sp)
 880:	0c000000 	jal	0 <func_8088A020>
 884:	afbe003c 	sw	s8,60(sp)
 888:	26310001 	addiu	s1,s1,1
 88c:	24010005 	li	at,5
 890:	1621ff9d 	bne	s1,at,708 <func_8088A67C+0xac>
 894:	26520010 	addiu	s2,s2,16
 898:	8fb800a8 	lw	t8,168(sp)
 89c:	24010064 	li	at,100
 8a0:	27190014 	addiu	t9,t8,20
 8a4:	1721ff90 	bne	t9,at,6e8 <func_8088A67C+0x8c>
 8a8:	afb900a8 	sw	t9,168(sp)
 8ac:	8fbf009c 	lw	ra,156(sp)
 8b0:	d7b40048 	ldc1	$f20,72(sp)
 8b4:	d7b60050 	ldc1	$f22,80(sp)
 8b8:	d7b80058 	ldc1	$f24,88(sp)
 8bc:	d7ba0060 	ldc1	$f26,96(sp)
 8c0:	d7bc0068 	ldc1	$f28,104(sp)
 8c4:	d7be0070 	ldc1	$f30,112(sp)
 8c8:	8fb00078 	lw	s0,120(sp)
 8cc:	8fb1007c 	lw	s1,124(sp)
 8d0:	8fb20080 	lw	s2,128(sp)
 8d4:	8fb30084 	lw	s3,132(sp)
 8d8:	8fb40088 	lw	s4,136(sp)
 8dc:	8fb5008c 	lw	s5,140(sp)
 8e0:	8fb60090 	lw	s6,144(sp)
 8e4:	8fb70094 	lw	s7,148(sp)
 8e8:	8fbe0098 	lw	s8,152(sp)
 8ec:	03e00008 	jr	ra
 8f0:	27bd00e8 	addiu	sp,sp,232

000008f4 <func_8088A914>:
 8f4:	27bdff18 	addiu	sp,sp,-232
 8f8:	afb40088 	sw	s4,136(sp)
 8fc:	0080a025 	move	s4,a0
 900:	afbf009c 	sw	ra,156(sp)
 904:	afbe0098 	sw	s8,152(sp)
 908:	afb70094 	sw	s7,148(sp)
 90c:	afb60090 	sw	s6,144(sp)
 910:	afb5008c 	sw	s5,140(sp)
 914:	afb30084 	sw	s3,132(sp)
 918:	afb20080 	sw	s2,128(sp)
 91c:	afb1007c 	sw	s1,124(sp)
 920:	afb00078 	sw	s0,120(sp)
 924:	f7be0070 	sdc1	$f30,112(sp)
 928:	f7bc0068 	sdc1	$f28,104(sp)
 92c:	f7ba0060 	sdc1	$f26,96(sp)
 930:	f7b80058 	sdc1	$f24,88(sp)
 934:	f7b60050 	sdc1	$f22,80(sp)
 938:	f7b40048 	sdc1	$f20,72(sp)
 93c:	afa500ec 	sw	a1,236(sp)
 940:	0c000000 	jal	0 <func_8088A020>
 944:	848400b6 	lh	a0,182(a0)
 948:	46000606 	mov.s	$f24,$f0
 94c:	0c000000 	jal	0 <func_8088A020>
 950:	868400b6 	lh	a0,182(s4)
 954:	3c014160 	lui	at,0x4160
 958:	4481f000 	mtc1	at,$f30
 95c:	3c0140c0 	lui	at,0x40c0
 960:	3c1e0500 	lui	s8,0x500
 964:	4481e000 	mtc1	at,$f28
 968:	46000686 	mov.s	$f26,$f0
 96c:	27de0530 	addiu	s8,s8,1328
 970:	26950024 	addiu	s5,s4,36
 974:	afa000a8 	sw	zero,168(sp)
 978:	27b700d4 	addiu	s7,sp,212
 97c:	27b600c8 	addiu	s6,sp,200
 980:	8fa200a8 	lw	v0,168(sp)
 984:	c6880028 	lwc1	$f8,40(s4)
 988:	00008825 	move	s1,zero
 98c:	44822000 	mtc1	v0,$f4
 990:	2412ffc8 	li	s2,-56
 994:	468021a0 	cvt.s.w	$f6,$f4
 998:	46083280 	add.s	$f10,$f6,$f8
 99c:	e7aa00cc 	swc1	$f10,204(sp)
 9a0:	44928000 	mtc1	s2,$f16
 9a4:	c6840024 	lwc1	$f4,36(s4)
 9a8:	46808020 	cvt.s.w	$f0,$f16
 9ac:	461a0482 	mul.s	$f18,$f0,$f26
 9b0:	46049180 	add.s	$f6,$f18,$f4
 9b4:	46180282 	mul.s	$f10,$f0,$f24
 9b8:	e7a600c8 	swc1	$f6,200(sp)
 9bc:	c688002c 	lwc1	$f8,44(s4)
 9c0:	460a4401 	sub.s	$f16,$f8,$f10
 9c4:	0c000000 	jal	0 <func_8088A020>
 9c8:	e7b000d0 	swc1	$f16,208(sp)
 9cc:	262efffe 	addiu	t6,s1,-2
 9d0:	448e2000 	mtc1	t6,$f4
 9d4:	461c0482 	mul.s	$f18,$f0,$f28
 9d8:	468021a0 	cvt.s.w	$f6,$f4
 9dc:	46069502 	mul.s	$f20,$f18,$f6
 9e0:	0c000000 	jal	0 <func_8088A020>
 9e4:	00000000 	nop
 9e8:	461c0582 	mul.s	$f22,$f0,$f28
 9ec:	00000000 	nop
 9f0:	4618b202 	mul.s	$f8,$f22,$f24
 9f4:	00000000 	nop
 9f8:	461aa282 	mul.s	$f10,$f20,$f26
 9fc:	460a4400 	add.s	$f16,$f8,$f10
 a00:	0c000000 	jal	0 <func_8088A020>
 a04:	e7b000d4 	swc1	$f16,212(sp)
 a08:	3c014208 	lui	at,0x4208
 a0c:	44812000 	mtc1	at,$f4
 a10:	00000000 	nop
 a14:	46040482 	mul.s	$f18,$f0,$f4
 a18:	00000000 	nop
 a1c:	461ab182 	mul.s	$f6,$f22,$f26
 a20:	00000000 	nop
 a24:	4618a202 	mul.s	$f8,$f20,$f24
 a28:	e7b200d8 	swc1	$f18,216(sp)
 a2c:	46083281 	sub.s	$f10,$f6,$f8
 a30:	0c000000 	jal	0 <func_8088A020>
 a34:	e7aa00dc 	swc1	$f10,220(sp)
 a38:	3c013f00 	lui	at,0x3f00
 a3c:	44818000 	mtc1	at,$f16
 a40:	3c010000 	lui	at,0x0
 a44:	c4260000 	lwc1	$f6,0(at)
 a48:	46100101 	sub.s	$f4,$f0,$f16
 a4c:	24100040 	li	s0,64
 a50:	461e2482 	mul.s	$f18,$f4,$f30
 a54:	00000000 	nop
 a58:	46069202 	mul.s	$f8,$f18,$f6
 a5c:	461e4280 	add.s	$f10,$f8,$f30
 a60:	4600540d 	trunc.w.s	$f16,$f10
 a64:	44028000 	mfc1	v0,$f16
 a68:	00000000 	nop
 a6c:	0002c400 	sll	t8,v0,0x10
 a70:	0018cc03 	sra	t9,t8,0x10
 a74:	2b210015 	slti	at,t9,21
 a78:	00029c00 	sll	s3,v0,0x10
 a7c:	14200003 	bnez	at,a8c <func_8088A914+0x198>
 a80:	00139c03 	sra	s3,s3,0x10
 a84:	10000001 	b	a8c <func_8088A914+0x198>
 a88:	24100020 	li	s0,32
 a8c:	0c000000 	jal	0 <func_8088A020>
 a90:	00000000 	nop
 a94:	3c0140a0 	lui	at,0x40a0
 a98:	44812000 	mtc1	at,$f4
 a9c:	8fa400ec 	lw	a0,236(sp)
 aa0:	02c02825 	move	a1,s6
 aa4:	4604003c 	c.lt.s	$f0,$f4
 aa8:	02e03025 	move	a2,s7
 aac:	02a03825 	move	a3,s5
 ab0:	2408fd76 	li	t0,-650
 ab4:	45000004 	bc1f	ac8 <func_8088A914+0x1d4>
 ab8:	24090014 	li	t1,20
 abc:	36100001 	ori	s0,s0,0x1
 ac0:	00108400 	sll	s0,s0,0x10
 ac4:	00108403 	sra	s0,s0,0x10
 ac8:	240a0014 	li	t2,20
 acc:	240b0002 	li	t3,2
 ad0:	240c0020 	li	t4,32
 ad4:	240d0064 	li	t5,100
 ad8:	240effff 	li	t6,-1
 adc:	240f0003 	li	t7,3
 ae0:	afaf0038 	sw	t7,56(sp)
 ae4:	afae0034 	sw	t6,52(sp)
 ae8:	afad0030 	sw	t5,48(sp)
 aec:	afac002c 	sw	t4,44(sp)
 af0:	afab0028 	sw	t3,40(sp)
 af4:	afaa001c 	sw	t2,28(sp)
 af8:	afa80010 	sw	t0,16(sp)
 afc:	afb00014 	sw	s0,20(sp)
 b00:	afa90018 	sw	t1,24(sp)
 b04:	afa00020 	sw	zero,32(sp)
 b08:	afb30024 	sw	s3,36(sp)
 b0c:	0c000000 	jal	0 <func_8088A020>
 b10:	afbe003c 	sw	s8,60(sp)
 b14:	26310001 	addiu	s1,s1,1
 b18:	24010005 	li	at,5
 b1c:	1621ffa0 	bne	s1,at,9a0 <func_8088A914+0xac>
 b20:	2652001c 	addiu	s2,s2,28
 b24:	8fb800a8 	lw	t8,168(sp)
 b28:	24010078 	li	at,120
 b2c:	27190018 	addiu	t9,t8,24
 b30:	1721ff93 	bne	t9,at,980 <func_8088A914+0x8c>
 b34:	afb900a8 	sw	t9,168(sp)
 b38:	8fbf009c 	lw	ra,156(sp)
 b3c:	d7b40048 	ldc1	$f20,72(sp)
 b40:	d7b60050 	ldc1	$f22,80(sp)
 b44:	d7b80058 	ldc1	$f24,88(sp)
 b48:	d7ba0060 	ldc1	$f26,96(sp)
 b4c:	d7bc0068 	ldc1	$f28,104(sp)
 b50:	d7be0070 	ldc1	$f30,112(sp)
 b54:	8fb00078 	lw	s0,120(sp)
 b58:	8fb1007c 	lw	s1,124(sp)
 b5c:	8fb20080 	lw	s2,128(sp)
 b60:	8fb30084 	lw	s3,132(sp)
 b64:	8fb40088 	lw	s4,136(sp)
 b68:	8fb5008c 	lw	s5,140(sp)
 b6c:	8fb60090 	lw	s6,144(sp)
 b70:	8fb70094 	lw	s7,148(sp)
 b74:	8fbe0098 	lw	s8,152(sp)
 b78:	03e00008 	jr	ra
 b7c:	27bd00e8 	addiu	sp,sp,232

00000b80 <func_8088ABA0>:
 b80:	27bdffe0 	addiu	sp,sp,-32
 b84:	afbf001c 	sw	ra,28(sp)
 b88:	afb00018 	sw	s0,24(sp)
 b8c:	afa50024 	sw	a1,36(sp)
 b90:	8482001c 	lh	v0,28(a0)
 b94:	00808025 	move	s0,a0
 b98:	24010001 	li	at,1
 b9c:	304200ff 	andi	v0,v0,0xff
 ba0:	10400008 	beqz	v0,bc4 <func_8088ABA0+0x44>
 ba4:	02002025 	move	a0,s0
 ba8:	1041000a 	beq	v0,at,bd4 <func_8088ABA0+0x54>
 bac:	02002025 	move	a0,s0
 bb0:	24010002 	li	at,2
 bb4:	1041000b 	beq	v0,at,be4 <func_8088ABA0+0x64>
 bb8:	02002025 	move	a0,s0
 bbc:	1000000c 	b	bf0 <func_8088ABA0+0x70>
 bc0:	02002025 	move	a0,s0
 bc4:	0c000000 	jal	0 <func_8088A020>
 bc8:	8fa50024 	lw	a1,36(sp)
 bcc:	10000008 	b	bf0 <func_8088ABA0+0x70>
 bd0:	02002025 	move	a0,s0
 bd4:	0c000000 	jal	0 <func_8088A020>
 bd8:	8fa50024 	lw	a1,36(sp)
 bdc:	10000004 	b	bf0 <func_8088ABA0+0x70>
 be0:	02002025 	move	a0,s0
 be4:	0c000000 	jal	0 <func_8088A020>
 be8:	8fa50024 	lw	a1,36(sp)
 bec:	02002025 	move	a0,s0
 bf0:	0c000000 	jal	0 <func_8088A020>
 bf4:	8fa50024 	lw	a1,36(sp)
 bf8:	8fbf001c 	lw	ra,28(sp)
 bfc:	8fb00018 	lw	s0,24(sp)
 c00:	27bd0020 	addiu	sp,sp,32
 c04:	03e00008 	jr	ra
 c08:	00000000 	nop

00000c0c <BgHidanKowarerukabe_Update>:
 c0c:	27bdffd0 	addiu	sp,sp,-48
 c10:	afb10018 	sw	s1,24(sp)
 c14:	00808825 	move	s1,a0
 c18:	afb00014 	sw	s0,20(sp)
 c1c:	00a08025 	move	s0,a1
 c20:	afbf001c 	sw	ra,28(sp)
 c24:	26260164 	addiu	a2,s1,356
 c28:	00a02025 	move	a0,a1
 c2c:	00c02825 	move	a1,a2
 c30:	0c000000 	jal	0 <func_8088A020>
 c34:	afa60024 	sw	a2,36(sp)
 c38:	1040001e 	beqz	v0,cb4 <BgHidanKowarerukabe_Update+0xa8>
 c3c:	8fa60024 	lw	a2,36(sp)
 c40:	02202025 	move	a0,s1
 c44:	0c000000 	jal	0 <func_8088A020>
 c48:	02002825 	move	a1,s0
 c4c:	8625001c 	lh	a1,28(s1)
 c50:	02002025 	move	a0,s0
 c54:	00052a03 	sra	a1,a1,0x8
 c58:	0c000000 	jal	0 <func_8088A020>
 c5c:	30a5003f 	andi	a1,a1,0x3f
 c60:	862e001c 	lh	t6,28(s1)
 c64:	02002025 	move	a0,s0
 c68:	26250024 	addiu	a1,s1,36
 c6c:	31cf00ff 	andi	t7,t6,0xff
 c70:	15e00008 	bnez	t7,c94 <BgHidanKowarerukabe_Update+0x88>
 c74:	24060028 	li	a2,40
 c78:	02002025 	move	a0,s0
 c7c:	26250024 	addiu	a1,s1,36
 c80:	24060028 	li	a2,40
 c84:	0c000000 	jal	0 <func_8088A020>
 c88:	24072802 	li	a3,10242
 c8c:	10000003 	b	c9c <BgHidanKowarerukabe_Update+0x90>
 c90:	00000000 	nop
 c94:	0c000000 	jal	0 <func_8088A020>
 c98:	24072810 	li	a3,10256
 c9c:	0c000000 	jal	0 <func_8088A020>
 ca0:	24044802 	li	a0,18434
 ca4:	0c000000 	jal	0 <func_8088A020>
 ca8:	02202025 	move	a0,s1
 cac:	10000007 	b	ccc <BgHidanKowarerukabe_Update+0xc0>
 cb0:	8fbf001c 	lw	ra,28(sp)
 cb4:	3c010001 	lui	at,0x1
 cb8:	34211e60 	ori	at,at,0x1e60
 cbc:	02012821 	addu	a1,s0,at
 cc0:	0c000000 	jal	0 <func_8088A020>
 cc4:	02002025 	move	a0,s0
 cc8:	8fbf001c 	lw	ra,28(sp)
 ccc:	8fb00014 	lw	s0,20(sp)
 cd0:	8fb10018 	lw	s1,24(sp)
 cd4:	03e00008 	jr	ra
 cd8:	27bd0030 	addiu	sp,sp,48

00000cdc <BgHidanKowarerukabe_Draw>:
 cdc:	27bdffb8 	addiu	sp,sp,-72
 ce0:	afbf001c 	sw	ra,28(sp)
 ce4:	afb00018 	sw	s0,24(sp)
 ce8:	afa40048 	sw	a0,72(sp)
 cec:	afa5004c 	sw	a1,76(sp)
 cf0:	8ca50000 	lw	a1,0(a1)
 cf4:	3c060000 	lui	a2,0x0
 cf8:	24c60000 	addiu	a2,a2,0
 cfc:	27a40030 	addiu	a0,sp,48
 d00:	24070235 	li	a3,565
 d04:	0c000000 	jal	0 <func_8088A020>
 d08:	00a08025 	move	s0,a1
 d0c:	8faf004c 	lw	t7,76(sp)
 d10:	0c000000 	jal	0 <func_8088A020>
 d14:	8de40000 	lw	a0,0(t7)
 d18:	8e0202c0 	lw	v0,704(s0)
 d1c:	3c19da38 	lui	t9,0xda38
 d20:	37390003 	ori	t9,t9,0x3
 d24:	24580008 	addiu	t8,v0,8
 d28:	ae1802c0 	sw	t8,704(s0)
 d2c:	ac590000 	sw	t9,0(v0)
 d30:	8fa8004c 	lw	t0,76(sp)
 d34:	3c050000 	lui	a1,0x0
 d38:	24a50000 	addiu	a1,a1,0
 d3c:	8d040000 	lw	a0,0(t0)
 d40:	24060238 	li	a2,568
 d44:	0c000000 	jal	0 <func_8088A020>
 d48:	afa2002c 	sw	v0,44(sp)
 d4c:	8fa3002c 	lw	v1,44(sp)
 d50:	3c0ade00 	lui	t2,0xde00
 d54:	3c0e0000 	lui	t6,0x0
 d58:	ac620004 	sw	v0,4(v1)
 d5c:	8e0202c0 	lw	v0,704(s0)
 d60:	8fa60048 	lw	a2,72(sp)
 d64:	00002025 	move	a0,zero
 d68:	24490008 	addiu	t1,v0,8
 d6c:	ae0902c0 	sw	t1,704(s0)
 d70:	ac4a0000 	sw	t2,0(v0)
 d74:	84cb001c 	lh	t3,28(a2)
 d78:	24c50164 	addiu	a1,a2,356
 d7c:	316c00ff 	andi	t4,t3,0xff
 d80:	000c6880 	sll	t5,t4,0x2
 d84:	01cd7021 	addu	t6,t6,t5
 d88:	8dce0000 	lw	t6,0(t6)
 d8c:	0c000000 	jal	0 <func_8088A020>
 d90:	ac4e0004 	sw	t6,4(v0)
 d94:	8faf004c 	lw	t7,76(sp)
 d98:	3c060000 	lui	a2,0x0
 d9c:	24c60000 	addiu	a2,a2,0
 da0:	27a40030 	addiu	a0,sp,48
 da4:	2407023d 	li	a3,573
 da8:	0c000000 	jal	0 <func_8088A020>
 dac:	8de50000 	lw	a1,0(t7)
 db0:	8fbf001c 	lw	ra,28(sp)
 db4:	8fb00018 	lw	s0,24(sp)
 db8:	27bd0048 	addiu	sp,sp,72
 dbc:	03e00008 	jr	ra
 dc0:	00000000 	nop
	...
