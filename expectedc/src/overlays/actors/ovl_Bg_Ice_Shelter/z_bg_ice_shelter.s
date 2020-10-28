
build/src/overlays/actors/ovl_Bg_Ice_Shelter/z_bg_ice_shelter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80890740>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	848e001c 	lh	t6,28(a0)
  14:	00808025 	move	s0,a0
  18:	00a02025 	move	a0,a1
  1c:	000e7a03 	sra	t7,t6,0x8
  20:	31f80007 	andi	t8,t7,0x7
  24:	26050168 	addiu	a1,s0,360
  28:	afb80030 	sw	t8,48(sp)
  2c:	0c000000 	jal	0 <func_80890740>
  30:	afa5002c 	sw	a1,44(sp)
  34:	3c070000 	lui	a3,0x0
  38:	24e70000 	addiu	a3,a3,0
  3c:	8fa4003c 	lw	a0,60(sp)
  40:	8fa5002c 	lw	a1,44(sp)
  44:	0c000000 	jal	0 <func_80890740>
  48:	02003025 	move	a2,s0
  4c:	02002025 	move	a0,s0
  50:	0c000000 	jal	0 <func_80890740>
  54:	8fa5002c 	lw	a1,44(sp)
  58:	8fa40030 	lw	a0,48(sp)
  5c:	3c190000 	lui	t9,0x0
  60:	27390000 	addiu	t9,t9,0
  64:	00041040 	sll	v0,a0,0x1
  68:	00593021 	addu	a2,v0,t9
  6c:	84c80000 	lh	t0,0(a2)
  70:	3c090000 	lui	t1,0x0
  74:	25290000 	addiu	t1,t1,0
  78:	00491821 	addu	v1,v0,t1
  7c:	a60801a8 	sh	t0,424(s0)
  80:	846a0000 	lh	t2,0(v1)
  84:	3c0b0000 	lui	t3,0x0
  88:	10800006 	beqz	a0,a4 <func_80890740+0xa4>
  8c:	a60a01aa 	sh	t2,426(s0)
  90:	256b0000 	addiu	t3,t3,0
  94:	106b0003 	beq	v1,t3,a4 <func_80890740+0xa4>
  98:	3c0c0000 	lui	t4,0x0
  9c:	258c0000 	addiu	t4,t4,0
  a0:	146c0015 	bne	v1,t4,f8 <func_80890740+0xf8>
  a4:	260501b4 	addiu	a1,s0,436
  a8:	afa50024 	sw	a1,36(sp)
  ac:	8fa4003c 	lw	a0,60(sp)
  b0:	afa30028 	sw	v1,40(sp)
  b4:	0c000000 	jal	0 <func_80890740>
  b8:	afa6002c 	sw	a2,44(sp)
  bc:	3c070000 	lui	a3,0x0
  c0:	24e70000 	addiu	a3,a3,0
  c4:	8fa4003c 	lw	a0,60(sp)
  c8:	8fa50024 	lw	a1,36(sp)
  cc:	0c000000 	jal	0 <func_80890740>
  d0:	02003025 	move	a2,s0
  d4:	02002025 	move	a0,s0
  d8:	0c000000 	jal	0 <func_80890740>
  dc:	8fa50024 	lw	a1,36(sp)
  e0:	8fad002c 	lw	t5,44(sp)
  e4:	8fa30028 	lw	v1,40(sp)
  e8:	85ae0000 	lh	t6,0(t5)
  ec:	a60e01f4 	sh	t6,500(s0)
  f0:	846f0000 	lh	t7,0(v1)
  f4:	a60f01f6 	sh	t7,502(s0)
  f8:	3c180000 	lui	t8,0x0
  fc:	27180000 	addiu	t8,t8,0
 100:	54780008 	bnel	v1,t8,124 <func_80890740+0x124>
 104:	8fbf001c 	lw	ra,28(sp)
 108:	861901b2 	lh	t9,434(s0)
 10c:	860901fe 	lh	t1,510(s0)
 110:	2728001e 	addiu	t0,t9,30
 114:	252a001e 	addiu	t2,t1,30
 118:	a60801b2 	sh	t0,434(s0)
 11c:	a60a01fe 	sh	t2,510(s0)
 120:	8fbf001c 	lw	ra,28(sp)
 124:	8fb00018 	lw	s0,24(sp)
 128:	27bd0038 	addiu	sp,sp,56
 12c:	03e00008 	jr	ra
 130:	00000000 	nop

00000134 <func_80890874>:
 134:	27bdffc8 	addiu	sp,sp,-56
 138:	afbf0024 	sw	ra,36(sp)
 13c:	afb00020 	sw	s0,32(sp)
 140:	afa5003c 	sw	a1,60(sp)
 144:	00808025 	move	s0,a0
 148:	afa60040 	sw	a2,64(sp)
 14c:	afa00030 	sw	zero,48(sp)
 150:	0c000000 	jal	0 <func_80890740>
 154:	00e02825 	move	a1,a3
 158:	8fa40040 	lw	a0,64(sp)
 15c:	0c000000 	jal	0 <func_80890740>
 160:	27a50030 	addiu	a1,sp,48
 164:	8fa4003c 	lw	a0,60(sp)
 168:	02003025 	move	a2,s0
 16c:	8fa70030 	lw	a3,48(sp)
 170:	0c000000 	jal	0 <func_80890740>
 174:	24850810 	addiu	a1,a0,2064
 178:	24010032 	li	at,50
 17c:	1441000a 	bne	v0,at,1a8 <func_80890874+0x74>
 180:	ae02014c 	sw	v0,332(s0)
 184:	860e001c 	lh	t6,28(s0)
 188:	3c040000 	lui	a0,0x0
 18c:	3c050000 	lui	a1,0x0
 190:	86070000 	lh	a3,0(s0)
 194:	24a50000 	addiu	a1,a1,0
 198:	24840000 	addiu	a0,a0,0
 19c:	2406016a 	li	a2,362
 1a0:	0c000000 	jal	0 <func_80890740>
 1a4:	afae0010 	sw	t6,16(sp)
 1a8:	8fbf0024 	lw	ra,36(sp)
 1ac:	8fb00020 	lw	s0,32(sp)
 1b0:	27bd0038 	addiu	sp,sp,56
 1b4:	03e00008 	jr	ra
 1b8:	00000000 	nop

000001bc <func_808908FC>:
 1bc:	27bdffe0 	addiu	sp,sp,-32
 1c0:	afbf0014 	sw	ra,20(sp)
 1c4:	afa40020 	sw	a0,32(sp)
 1c8:	afa60028 	sw	a2,40(sp)
 1cc:	87a4002a 	lh	a0,42(sp)
 1d0:	0c000000 	jal	0 <func_80890740>
 1d4:	afa50024 	sw	a1,36(sp)
 1d8:	87a4002a 	lh	a0,42(sp)
 1dc:	0c000000 	jal	0 <func_80890740>
 1e0:	e7a0001c 	swc1	$f0,28(sp)
 1e4:	8fa50024 	lw	a1,36(sp)
 1e8:	c7a2001c 	lwc1	$f2,28(sp)
 1ec:	8fa20020 	lw	v0,32(sp)
 1f0:	c4a40008 	lwc1	$f4,8(a1)
 1f4:	c4a80000 	lwc1	$f8,0(a1)
 1f8:	46022182 	mul.s	$f6,$f4,$f2
 1fc:	00000000 	nop
 200:	46004282 	mul.s	$f10,$f8,$f0
 204:	460a3400 	add.s	$f16,$f6,$f10
 208:	e4500000 	swc1	$f16,0(v0)
 20c:	c4b20004 	lwc1	$f18,4(a1)
 210:	e4520004 	swc1	$f18,4(v0)
 214:	c4a40008 	lwc1	$f4,8(a1)
 218:	c4a60000 	lwc1	$f6,0(a1)
 21c:	46002202 	mul.s	$f8,$f4,$f0
 220:	00000000 	nop
 224:	46023282 	mul.s	$f10,$f6,$f2
 228:	460a4401 	sub.s	$f16,$f8,$f10
 22c:	e4500008 	swc1	$f16,8(v0)
 230:	8fbf0014 	lw	ra,20(sp)
 234:	27bd0020 	addiu	sp,sp,32
 238:	03e00008 	jr	ra
 23c:	00000000 	nop

00000240 <BgIceShelter_Init>:
 240:	27bdffd8 	addiu	sp,sp,-40
 244:	afbf001c 	sw	ra,28(sp)
 248:	afb00018 	sw	s0,24(sp)
 24c:	afa5002c 	sw	a1,44(sp)
 250:	8482001c 	lh	v0,28(a0)
 254:	3c050000 	lui	a1,0x0
 258:	00808025 	move	s0,a0
 25c:	00021203 	sra	v0,v0,0x8
 260:	30420007 	andi	v0,v0,0x7
 264:	00021400 	sll	v0,v0,0x10
 268:	00021403 	sra	v0,v0,0x10
 26c:	a7a20022 	sh	v0,34(sp)
 270:	0c000000 	jal	0 <func_80890740>
 274:	24a50000 	addiu	a1,a1,0
 278:	87a20022 	lh	v0,34(sp)
 27c:	24030004 	li	v1,4
 280:	3c014234 	lui	at,0x4234
 284:	1443000f 	bne	v0,v1,2c4 <BgIceShelter_Init+0x84>
 288:	02002025 	move	a0,s0
 28c:	44813000 	mtc1	at,$f6
 290:	860e0030 	lh	t6,48(s0)
 294:	3c014218 	lui	at,0x4218
 298:	c6040028 	lwc1	$f4,40(s0)
 29c:	44818000 	mtc1	at,$f16
 2a0:	c60a002c 	lwc1	$f10,44(s0)
 2a4:	25cf0bb8 	addiu	t7,t6,3000
 2a8:	46062201 	sub.s	$f8,$f4,$f6
 2ac:	a60f0030 	sh	t7,48(s0)
 2b0:	86180030 	lh	t8,48(s0)
 2b4:	46105481 	sub.s	$f18,$f10,$f16
 2b8:	e6080028 	swc1	$f8,40(s0)
 2bc:	a61800b4 	sh	t8,180(s0)
 2c0:	e612002c 	swc1	$f18,44(s0)
 2c4:	14430008 	bne	v0,v1,2e8 <BgIceShelter_Init+0xa8>
 2c8:	0002c880 	sll	t9,v0,0x2
 2cc:	3c050000 	lui	a1,0x0
 2d0:	24a50000 	addiu	a1,a1,0
 2d4:	26040050 	addiu	a0,s0,80
 2d8:	0c000000 	jal	0 <func_80890740>
 2dc:	a7a20022 	sh	v0,34(sp)
 2e0:	10000007 	b	300 <BgIceShelter_Init+0xc0>
 2e4:	87a20022 	lh	v0,34(sp)
 2e8:	3c050000 	lui	a1,0x0
 2ec:	00b92821 	addu	a1,a1,t9
 2f0:	8ca50000 	lw	a1,0(a1)
 2f4:	0c000000 	jal	0 <func_80890740>
 2f8:	a7a20022 	sh	v0,34(sp)
 2fc:	87a20022 	lh	v0,34(sp)
 300:	24010002 	li	at,2
 304:	10410006 	beq	v0,at,320 <BgIceShelter_Init+0xe0>
 308:	02002025 	move	a0,s0
 30c:	24010003 	li	at,3
 310:	1041000a 	beq	v0,at,33c <BgIceShelter_Init+0xfc>
 314:	02002025 	move	a0,s0
 318:	1000000e 	b	354 <BgIceShelter_Init+0x114>
 31c:	02002025 	move	a0,s0
 320:	3c060600 	lui	a2,0x600
 324:	24c61c1c 	addiu	a2,a2,7196
 328:	8fa5002c 	lw	a1,44(sp)
 32c:	0c000000 	jal	0 <func_80890740>
 330:	00003825 	move	a3,zero
 334:	10000007 	b	354 <BgIceShelter_Init+0x114>
 338:	02002025 	move	a0,s0
 33c:	3c060600 	lui	a2,0x600
 340:	24c62920 	addiu	a2,a2,10528
 344:	8fa5002c 	lw	a1,44(sp)
 348:	0c000000 	jal	0 <func_80890740>
 34c:	00003825 	move	a3,zero
 350:	02002025 	move	a0,s0
 354:	0c000000 	jal	0 <func_80890740>
 358:	8fa5002c 	lw	a1,44(sp)
 35c:	8602001c 	lh	v0,28(s0)
 360:	240800ff 	li	t0,255
 364:	a20800ae 	sb	t0,174(s0)
 368:	00024983 	sra	t1,v0,0x6
 36c:	312a0001 	andi	t2,t1,0x1
 370:	15400009 	bnez	t2,398 <BgIceShelter_Init+0x158>
 374:	8fa4002c 	lw	a0,44(sp)
 378:	0c000000 	jal	0 <func_80890740>
 37c:	3045003f 	andi	a1,v0,0x3f
 380:	10400005 	beqz	v0,398 <BgIceShelter_Init+0x158>
 384:	00000000 	nop
 388:	0c000000 	jal	0 <func_80890740>
 38c:	02002025 	move	a0,s0
 390:	10000008 	b	3b4 <BgIceShelter_Init+0x174>
 394:	8fbf001c 	lw	ra,28(sp)
 398:	0c000000 	jal	0 <func_80890740>
 39c:	02002025 	move	a0,s0
 3a0:	3c040000 	lui	a0,0x0
 3a4:	24840000 	addiu	a0,a0,0
 3a8:	0c000000 	jal	0 <func_80890740>
 3ac:	8605001c 	lh	a1,28(s0)
 3b0:	8fbf001c 	lw	ra,28(sp)
 3b4:	8fb00018 	lw	s0,24(sp)
 3b8:	27bd0028 	addiu	sp,sp,40
 3bc:	03e00008 	jr	ra
 3c0:	00000000 	nop

000003c4 <BgIceShelter_Destroy>:
 3c4:	27bdffe8 	addiu	sp,sp,-24
 3c8:	afbf0014 	sw	ra,20(sp)
 3cc:	afa40018 	sw	a0,24(sp)
 3d0:	afa5001c 	sw	a1,28(sp)
 3d4:	848f001c 	lh	t7,28(a0)
 3d8:	000fc203 	sra	t8,t7,0x8
 3dc:	33190007 	andi	t9,t8,0x7
 3e0:	2f210005 	sltiu	at,t9,5
 3e4:	10200011 	beqz	at,42c <L80890B5C+0x10>
 3e8:	0019c880 	sll	t9,t9,0x2
 3ec:	3c010000 	lui	at,0x0
 3f0:	00390821 	addu	at,at,t9
 3f4:	8c390000 	lw	t9,0(at)
 3f8:	03200008 	jr	t9
 3fc:	00000000 	nop

00000400 <L80890B40>:
 400:	8fa4001c 	lw	a0,28(sp)
 404:	8fa90018 	lw	t1,24(sp)
 408:	24850810 	addiu	a1,a0,2064
 40c:	0c000000 	jal	0 <func_80890740>
 410:	8d26014c 	lw	a2,332(t1)
 414:	10000006 	b	430 <L80890B5C+0x14>
 418:	8fa50018 	lw	a1,24(sp)

0000041c <L80890B5C>:
 41c:	8fa50018 	lw	a1,24(sp)
 420:	8fa4001c 	lw	a0,28(sp)
 424:	0c000000 	jal	0 <func_80890740>
 428:	24a501b4 	addiu	a1,a1,436
 42c:	8fa50018 	lw	a1,24(sp)
 430:	8fa4001c 	lw	a0,28(sp)
 434:	0c000000 	jal	0 <func_80890740>
 438:	24a50168 	addiu	a1,a1,360
 43c:	8fbf0014 	lw	ra,20(sp)
 440:	27bd0018 	addiu	sp,sp,24
 444:	03e00008 	jr	ra
 448:	00000000 	nop

0000044c <func_80890B8C>:
 44c:	27bdff28 	addiu	sp,sp,-216
 450:	afbf007c 	sw	ra,124(sp)
 454:	afbe0078 	sw	s8,120(sp)
 458:	afb70074 	sw	s7,116(sp)
 45c:	afb60070 	sw	s6,112(sp)
 460:	afb5006c 	sw	s5,108(sp)
 464:	afb40068 	sw	s4,104(sp)
 468:	afb30064 	sw	s3,100(sp)
 46c:	afb20060 	sw	s2,96(sp)
 470:	afb1005c 	sw	s1,92(sp)
 474:	afb00058 	sw	s0,88(sp)
 478:	f7be0050 	sdc1	$f30,80(sp)
 47c:	f7bc0048 	sdc1	$f28,72(sp)
 480:	f7ba0040 	sdc1	$f26,64(sp)
 484:	f7b80038 	sdc1	$f24,56(sp)
 488:	f7b60030 	sdc1	$f22,48(sp)
 48c:	f7b40028 	sdc1	$f20,40(sp)
 490:	afa600e0 	sw	a2,224(sp)
 494:	84b4009e 	lh	s4,158(a1)
 498:	3c014040 	lui	at,0x4040
 49c:	3c1e0000 	lui	s8,0x0
 4a0:	32940007 	andi	s4,s4,0x7
 4a4:	0014a400 	sll	s4,s4,0x10
 4a8:	4487d000 	mtc1	a3,$f26
 4ac:	4481f000 	mtc1	at,$f30
 4b0:	00a0a825 	move	s5,a1
 4b4:	0080b025 	move	s6,a0
 4b8:	0014a403 	sra	s4,s4,0x10
 4bc:	27de0000 	addiu	s8,s8,0
 4c0:	00009025 	move	s2,zero
 4c4:	24170002 	li	s7,2
 4c8:	0c000000 	jal	0 <func_80890740>
 4cc:	00000000 	nop
 4d0:	c7a400e0 	lwc1	$f4,224(sp)
 4d4:	3c014228 	lui	at,0x4228
 4d8:	4600203c 	c.lt.s	$f4,$f0
 4dc:	00000000 	nop
 4e0:	45030063 	bc1tl	670 <func_80890B8C+0x224>
 4e4:	26520001 	addiu	s2,s2,1
 4e8:	44813000 	mtc1	at,$f6
 4ec:	3c014180 	lui	at,0x4180
 4f0:	44814000 	mtc1	at,$f8
 4f4:	461a3582 	mul.s	$f22,$f6,$f26
 4f8:	3c0143e1 	lui	at,0x43e1
 4fc:	44815000 	mtc1	at,$f10
 500:	461a4702 	mul.s	$f28,$f8,$f26
 504:	00147040 	sll	t6,s4,0x1
 508:	03ce7821 	addu	t7,s8,t6
 50c:	461a5402 	mul.s	$f16,$f10,$f26
 510:	85f80000 	lh	t8,0(t7)
 514:	0012cbc0 	sll	t9,s2,0xf
 518:	26d00024 	addiu	s0,s6,36
 51c:	03198821 	addu	s1,t8,t9
 520:	00118c00 	sll	s1,s1,0x10
 524:	00118c03 	sra	s1,s1,0x10
 528:	4600848d 	trunc.w.s	$f18,$f16
 52c:	00112400 	sll	a0,s1,0x10
 530:	00042403 	sra	a0,a0,0x10
 534:	44139000 	mfc1	s3,$f18
 538:	00000000 	nop
 53c:	00139c00 	sll	s3,s3,0x10
 540:	0c000000 	jal	0 <func_80890740>
 544:	00139c03 	sra	s3,s3,0x10
 548:	00112400 	sll	a0,s1,0x10
 54c:	46000506 	mov.s	$f20,$f0
 550:	0c000000 	jal	0 <func_80890740>
 554:	00042403 	sra	a0,a0,0x10
 558:	4614b102 	mul.s	$f4,$f22,$f20
 55c:	c6060000 	lwc1	$f6,0(s0)
 560:	46000606 	mov.s	$f24,$f0
 564:	4600b482 	mul.s	$f18,$f22,$f0
 568:	46062200 	add.s	$f8,$f4,$f6
 56c:	e7a800ac 	swc1	$f8,172(sp)
 570:	c60a0004 	lwc1	$f10,4(s0)
 574:	460ae400 	add.s	$f16,$f28,$f10
 578:	e7b000b0 	swc1	$f16,176(sp)
 57c:	c6040008 	lwc1	$f4,8(s0)
 580:	46049180 	add.s	$f6,$f18,$f4
 584:	0c000000 	jal	0 <func_80890740>
 588:	e7a600b4 	swc1	$f6,180(sp)
 58c:	461e0202 	mul.s	$f8,$f0,$f30
 590:	3c013f80 	lui	at,0x3f80
 594:	44815000 	mtc1	at,$f10
 598:	44802000 	mtc1	zero,$f4
 59c:	00000000 	nop
 5a0:	e7a400a4 	swc1	$f4,164(sp)
 5a4:	460a4401 	sub.s	$f16,$f8,$f10
 5a8:	46148482 	mul.s	$f18,$f16,$f20
 5ac:	0c000000 	jal	0 <func_80890740>
 5b0:	e7b200a0 	swc1	$f18,160(sp)
 5b4:	461e0182 	mul.s	$f6,$f0,$f30
 5b8:	3c010000 	lui	at,0x0
 5bc:	c4220000 	lwc1	$f2,0(at)
 5c0:	3c013f80 	lui	at,0x3f80
 5c4:	44814000 	mtc1	at,$f8
 5c8:	3c010000 	lui	at,0x0
 5cc:	c4240000 	lwc1	$f4,0(at)
 5d0:	46083281 	sub.s	$f10,$f6,$f8
 5d4:	e7a40098 	swc1	$f4,152(sp)
 5d8:	46185402 	mul.s	$f16,$f10,$f24
 5dc:	00000000 	nop
 5e0:	46141482 	mul.s	$f18,$f2,$f20
 5e4:	00000000 	nop
 5e8:	46181182 	mul.s	$f6,$f2,$f24
 5ec:	e7b000a8 	swc1	$f16,168(sp)
 5f0:	e7b20094 	swc1	$f18,148(sp)
 5f4:	0c000000 	jal	0 <func_80890740>
 5f8:	e7a6009c 	swc1	$f6,156(sp)
 5fc:	3c014220 	lui	at,0x4220
 600:	44811000 	mtc1	at,$f2
 604:	3c090000 	lui	t1,0x0
 608:	3c0a0000 	lui	t2,0x0
 60c:	46020202 	mul.s	$f8,$f0,$f2
 610:	254a0000 	addiu	t2,t2,0
 614:	25290000 	addiu	t1,t1,0
 618:	afa90010 	sw	t1,16(sp)
 61c:	afaa0014 	sw	t2,20(sp)
 620:	02a02025 	move	a0,s5
 624:	27a500ac 	addiu	a1,sp,172
 628:	46024280 	add.s	$f10,$f8,$f2
 62c:	27a600a0 	addiu	a2,sp,160
 630:	27a70094 	addiu	a3,sp,148
 634:	afb30018 	sw	s3,24(sp)
 638:	4600540d 	trunc.w.s	$f16,$f10
 63c:	440c8000 	mfc1	t4,$f16
 640:	00000000 	nop
 644:	000c6c00 	sll	t5,t4,0x10
 648:	000d7403 	sra	t6,t5,0x10
 64c:	448e9000 	mtc1	t6,$f18
 650:	00000000 	nop
 654:	46809120 	cvt.s.w	$f4,$f18
 658:	461a2182 	mul.s	$f6,$f4,$f26
 65c:	4600320d 	trunc.w.s	$f8,$f6
 660:	44184000 	mfc1	t8,$f8
 664:	0c000000 	jal	0 <func_80890740>
 668:	afb8001c 	sw	t8,28(sp)
 66c:	26520001 	addiu	s2,s2,1
 670:	1657ff95 	bne	s2,s7,4c8 <func_80890B8C+0x7c>
 674:	00000000 	nop
 678:	8fbf007c 	lw	ra,124(sp)
 67c:	d7b40028 	ldc1	$f20,40(sp)
 680:	d7b60030 	ldc1	$f22,48(sp)
 684:	d7b80038 	ldc1	$f24,56(sp)
 688:	d7ba0040 	ldc1	$f26,64(sp)
 68c:	d7bc0048 	ldc1	$f28,72(sp)
 690:	d7be0050 	ldc1	$f30,80(sp)
 694:	8fb00058 	lw	s0,88(sp)
 698:	8fb1005c 	lw	s1,92(sp)
 69c:	8fb20060 	lw	s2,96(sp)
 6a0:	8fb30064 	lw	s3,100(sp)
 6a4:	8fb40068 	lw	s4,104(sp)
 6a8:	8fb5006c 	lw	s5,108(sp)
 6ac:	8fb60070 	lw	s6,112(sp)
 6b0:	8fb70074 	lw	s7,116(sp)
 6b4:	8fbe0078 	lw	s8,120(sp)
 6b8:	03e00008 	jr	ra
 6bc:	27bd00d8 	addiu	sp,sp,216

000006c0 <func_80890E00>:
 6c0:	27bdff28 	addiu	sp,sp,-216
 6c4:	f7bc0048 	sdc1	$f28,72(sp)
 6c8:	3c014220 	lui	at,0x4220
 6cc:	4481e000 	mtc1	at,$f28
 6d0:	f7ba0040 	sdc1	$f26,64(sp)
 6d4:	3c010000 	lui	at,0x0
 6d8:	f7b80038 	sdc1	$f24,56(sp)
 6dc:	c43a0000 	lwc1	$f26,0(at)
 6e0:	afbf007c 	sw	ra,124(sp)
 6e4:	afbe0078 	sw	s8,120(sp)
 6e8:	afb70074 	sw	s7,116(sp)
 6ec:	afb60070 	sw	s6,112(sp)
 6f0:	afb5006c 	sw	s5,108(sp)
 6f4:	afb40068 	sw	s4,104(sp)
 6f8:	afb30064 	sw	s3,100(sp)
 6fc:	afb20060 	sw	s2,96(sp)
 700:	afb1005c 	sw	s1,92(sp)
 704:	afb00058 	sw	s0,88(sp)
 708:	f7be0050 	sdc1	$f30,80(sp)
 70c:	f7b60030 	sdc1	$f22,48(sp)
 710:	f7b40028 	sdc1	$f20,40(sp)
 714:	afa700e4 	sw	a3,228(sp)
 718:	3c010000 	lui	at,0x0
 71c:	84b6009e 	lh	s6,158(a1)
 720:	c4380000 	lwc1	$f24,0(at)
 724:	3c013fc0 	lui	at,0x3fc0
 728:	4481b000 	mtc1	at,$f22
 72c:	3c014040 	lui	at,0x4040
 730:	32d60007 	andi	s6,s6,0x7
 734:	0016b400 	sll	s6,s6,0x10
 738:	4486f000 	mtc1	a2,$f30
 73c:	4481a000 	mtc1	at,$f20
 740:	0080a825 	move	s5,a0
 744:	00a0b825 	move	s7,a1
 748:	0016b403 	sra	s6,s6,0x10
 74c:	00009825 	move	s3,zero
 750:	27b400bc 	addiu	s4,sp,188
 754:	241e0002 	li	s8,2
 758:	0c000000 	jal	0 <func_80890740>
 75c:	00000000 	nop
 760:	4600f03c 	c.lt.s	$f30,$f0
 764:	3c0f0000 	lui	t7,0x0
 768:	25ef0000 	addiu	t7,t7,0
 76c:	26b00024 	addiu	s0,s5,36
 770:	45010057 	bc1t	8d0 <func_80890E00+0x210>
 774:	00137080 	sll	t6,s3,0x2
 778:	3c190000 	lui	t9,0x0
 77c:	27390000 	addiu	t9,t9,0
 780:	0016c040 	sll	t8,s6,0x1
 784:	03199021 	addu	s2,t8,t9
 788:	0c000000 	jal	0 <func_80890740>
 78c:	01cf8821 	addu	s1,t6,t7
 790:	3c014140 	lui	at,0x4140
 794:	44812000 	mtc1	at,$f4
 798:	86480000 	lh	t0,0(s2)
 79c:	3c0140c0 	lui	at,0x40c0
 7a0:	46040182 	mul.s	$f6,$f0,$f4
 7a4:	44888000 	mtc1	t0,$f16
 7a8:	44814000 	mtc1	at,$f8
 7ac:	3c014170 	lui	at,0x4170
 7b0:	468084a0 	cvt.s.w	$f18,$f16
 7b4:	44818000 	mtc1	at,$f16
 7b8:	00000000 	nop
 7bc:	e7b0009c 	swc1	$f16,156(sp)
 7c0:	46083281 	sub.s	$f10,$f6,$f8
 7c4:	c6260000 	lwc1	$f6,0(s1)
 7c8:	460a9100 	add.s	$f4,$f18,$f10
 7cc:	46043202 	mul.s	$f8,$f6,$f4
 7d0:	0c000000 	jal	0 <func_80890740>
 7d4:	e7a80098 	swc1	$f8,152(sp)
 7d8:	3c0142a8 	lui	at,0x42a8
 7dc:	44819000 	mtc1	at,$f18
 7e0:	c7aa0098 	lwc1	$f10,152(sp)
 7e4:	3c010000 	lui	at,0x0
 7e8:	c4240000 	lwc1	$f4,0(at)
 7ec:	460a9181 	sub.s	$f6,$f18,$f10
 7f0:	3c0141a0 	lui	at,0x41a0
 7f4:	44818000 	mtc1	at,$f16
 7f8:	02802025 	move	a0,s4
 7fc:	46043202 	mul.s	$f8,$f6,$f4
 800:	27a50098 	addiu	a1,sp,152
 804:	46100482 	mul.s	$f18,$f0,$f16
 808:	46089280 	add.s	$f10,$f18,$f8
 80c:	e7aa00a0 	swc1	$f10,160(sp)
 810:	0c000000 	jal	0 <func_80890740>
 814:	86a60032 	lh	a2,50(s5)
 818:	02802025 	move	a0,s4
 81c:	02002825 	move	a1,s0
 820:	0c000000 	jal	0 <func_80890740>
 824:	02803025 	move	a2,s4
 828:	0c000000 	jal	0 <func_80890740>
 82c:	00000000 	nop
 830:	46140182 	mul.s	$f6,$f0,$f20
 834:	44808000 	mtc1	zero,$f16
 838:	00000000 	nop
 83c:	e7b000b4 	swc1	$f16,180(sp)
 840:	46163101 	sub.s	$f4,$f6,$f22
 844:	0c000000 	jal	0 <func_80890740>
 848:	e7a400b0 	swc1	$f4,176(sp)
 84c:	46140482 	mul.s	$f18,$f0,$f20
 850:	46169201 	sub.s	$f8,$f18,$f22
 854:	0c000000 	jal	0 <func_80890740>
 858:	e7a800b8 	swc1	$f8,184(sp)
 85c:	46180282 	mul.s	$f10,$f0,$f24
 860:	3c010000 	lui	at,0x0
 864:	c4240000 	lwc1	$f4,0(at)
 868:	e7a400a8 	swc1	$f4,168(sp)
 86c:	461a5181 	sub.s	$f6,$f10,$f26
 870:	0c000000 	jal	0 <func_80890740>
 874:	e7a600a4 	swc1	$f6,164(sp)
 878:	46180402 	mul.s	$f16,$f0,$f24
 87c:	461a8481 	sub.s	$f18,$f16,$f26
 880:	0c000000 	jal	0 <func_80890740>
 884:	e7b200ac 	swc1	$f18,172(sp)
 888:	461c0202 	mul.s	$f8,$f0,$f28
 88c:	3c090000 	lui	t1,0x0
 890:	3c0a0000 	lui	t2,0x0
 894:	254a0000 	addiu	t2,t2,0
 898:	25290000 	addiu	t1,t1,0
 89c:	240b01c2 	li	t3,450
 8a0:	afab0018 	sw	t3,24(sp)
 8a4:	461c4280 	add.s	$f10,$f8,$f28
 8a8:	afa90010 	sw	t1,16(sp)
 8ac:	afaa0014 	sw	t2,20(sp)
 8b0:	02e02025 	move	a0,s7
 8b4:	4600518d 	trunc.w.s	$f6,$f10
 8b8:	02802825 	move	a1,s4
 8bc:	27a600b0 	addiu	a2,sp,176
 8c0:	27a700a4 	addiu	a3,sp,164
 8c4:	440d3000 	mfc1	t5,$f6
 8c8:	0c000000 	jal	0 <func_80890740>
 8cc:	afad001c 	sw	t5,28(sp)
 8d0:	26730001 	addiu	s3,s3,1
 8d4:	167effa0 	bne	s3,s8,758 <func_80890E00+0x98>
 8d8:	00000000 	nop
 8dc:	8fbf007c 	lw	ra,124(sp)
 8e0:	d7b40028 	ldc1	$f20,40(sp)
 8e4:	d7b60030 	ldc1	$f22,48(sp)
 8e8:	d7b80038 	ldc1	$f24,56(sp)
 8ec:	d7ba0040 	ldc1	$f26,64(sp)
 8f0:	d7bc0048 	ldc1	$f28,72(sp)
 8f4:	d7be0050 	ldc1	$f30,80(sp)
 8f8:	8fb00058 	lw	s0,88(sp)
 8fc:	8fb1005c 	lw	s1,92(sp)
 900:	8fb20060 	lw	s2,96(sp)
 904:	8fb30064 	lw	s3,100(sp)
 908:	8fb40068 	lw	s4,104(sp)
 90c:	8fb5006c 	lw	s5,108(sp)
 910:	8fb60070 	lw	s6,112(sp)
 914:	8fb70074 	lw	s7,116(sp)
 918:	8fbe0078 	lw	s8,120(sp)
 91c:	03e00008 	jr	ra
 920:	27bd00d8 	addiu	sp,sp,216

00000924 <func_80891064>:
 924:	3c0e0000 	lui	t6,0x0
 928:	25ce0000 	addiu	t6,t6,0
 92c:	240f00ff 	li	t7,255
 930:	ac8e0164 	sw	t6,356(a0)
 934:	03e00008 	jr	ra
 938:	a48f0200 	sh	t7,512(a0)

0000093c <func_8089107C>:
 93c:	27bdffc8 	addiu	sp,sp,-56
 940:	afbf001c 	sw	ra,28(sp)
 944:	afb00018 	sw	s0,24(sp)
 948:	afa5003c 	sw	a1,60(sp)
 94c:	8486001c 	lh	a2,28(a0)
 950:	24070004 	li	a3,4
 954:	00808025 	move	s0,a0
 958:	00063203 	sra	a2,a2,0x8
 95c:	30c60007 	andi	a2,a2,0x7
 960:	00063400 	sll	a2,a2,0x10
 964:	00063403 	sra	a2,a2,0x10
 968:	54c70007 	bnel	a2,a3,988 <func_8089107C+0x4c>
 96c:	92020179 	lbu	v0,377(s0)
 970:	8c820118 	lw	v0,280(a0)
 974:	240e2710 	li	t6,10000
 978:	50400003 	beqzl	v0,988 <func_8089107C+0x4c>
 97c:	92020179 	lbu	v0,377(s0)
 980:	a44e0110 	sh	t6,272(v0)
 984:	92020179 	lbu	v0,377(s0)
 988:	304f0002 	andi	t7,v0,0x2
 98c:	11e00019 	beqz	t7,9f4 <func_8089107C+0xb8>
 990:	00000000 	nop
 994:	8e030170 	lw	v1,368(s0)
 998:	3058fffd 	andi	t8,v0,0xfffd
 99c:	a2180179 	sb	t8,377(s0)
 9a0:	10600014 	beqz	v1,9f4 <func_8089107C+0xb8>
 9a4:	00000000 	nop
 9a8:	84790000 	lh	t9,0(v1)
 9ac:	240100f0 	li	at,240
 9b0:	02002025 	move	a0,s0
 9b4:	1721000f 	bne	t9,at,9f4 <func_8089107C+0xb8>
 9b8:	00000000 	nop
 9bc:	14c70006 	bne	a2,a3,9d8 <func_8089107C+0x9c>
 9c0:	00000000 	nop
 9c4:	8e020118 	lw	v0,280(s0)
 9c8:	24080032 	li	t0,50
 9cc:	10400002 	beqz	v0,9d8 <func_8089107C+0x9c>
 9d0:	00000000 	nop
 9d4:	a4480110 	sh	t0,272(v0)
 9d8:	0c000000 	jal	0 <func_80890740>
 9dc:	a7a60032 	sh	a2,50(sp)
 9e0:	02002025 	move	a0,s0
 9e4:	0c000000 	jal	0 <func_80890740>
 9e8:	240528a2 	li	a1,10402
 9ec:	87a60032 	lh	a2,50(sp)
 9f0:	24070004 	li	a3,4
 9f4:	10c0000a 	beqz	a2,a20 <func_8089107C+0xe4>
 9f8:	24010001 	li	at,1
 9fc:	50c10009 	beql	a2,at,a24 <func_8089107C+0xe8>
 a00:	8fa4003c 	lw	a0,60(sp)
 a04:	10c70006 	beq	a2,a3,a20 <func_8089107C+0xe4>
 a08:	8fa5003c 	lw	a1,60(sp)
 a0c:	3c010001 	lui	at,0x1
 a10:	34211e60 	ori	at,at,0x1e60
 a14:	00a12821 	addu	a1,a1,at
 a18:	10000010 	b	a5c <func_8089107C+0x120>
 a1c:	26070168 	addiu	a3,s0,360
 a20:	8fa4003c 	lw	a0,60(sp)
 a24:	3c010001 	lui	at,0x1
 a28:	34211e60 	ori	at,at,0x1e60
 a2c:	26070168 	addiu	a3,s0,360
 a30:	00812821 	addu	a1,a0,at
 a34:	afa50028 	sw	a1,40(sp)
 a38:	00e03025 	move	a2,a3
 a3c:	0c000000 	jal	0 <func_80890740>
 a40:	afa70024 	sw	a3,36(sp)
 a44:	8fa50028 	lw	a1,40(sp)
 a48:	8fa4003c 	lw	a0,60(sp)
 a4c:	0c000000 	jal	0 <func_80890740>
 a50:	260601b4 	addiu	a2,s0,436
 a54:	8fa50028 	lw	a1,40(sp)
 a58:	8fa70024 	lw	a3,36(sp)
 a5c:	8fa4003c 	lw	a0,60(sp)
 a60:	0c000000 	jal	0 <func_80890740>
 a64:	00e03025 	move	a2,a3
 a68:	8fbf001c 	lw	ra,28(sp)
 a6c:	8fb00018 	lw	s0,24(sp)
 a70:	27bd0038 	addiu	sp,sp,56
 a74:	03e00008 	jr	ra
 a78:	00000000 	nop

00000a7c <func_808911BC>:
 a7c:	3c0e0000 	lui	t6,0x0
 a80:	25ce0000 	addiu	t6,t6,0
 a84:	240f00ff 	li	t7,255
 a88:	ac8e0164 	sw	t6,356(a0)
 a8c:	03e00008 	jr	ra
 a90:	a48f0200 	sh	t7,512(a0)

00000a94 <func_808911D4>:
 a94:	27bdffc0 	addiu	sp,sp,-64
 a98:	afbf001c 	sw	ra,28(sp)
 a9c:	afb00018 	sw	s0,24(sp)
 aa0:	afa50044 	sw	a1,68(sp)
 aa4:	848e0200 	lh	t6,512(a0)
 aa8:	8486001c 	lh	a2,28(a0)
 aac:	00808025 	move	s0,a0
 ab0:	25cffffb 	addiu	t7,t6,-5
 ab4:	a48f0200 	sh	t7,512(a0)
 ab8:	84820200 	lh	v0,512(a0)
 abc:	00063203 	sra	a2,a2,0x8
 ac0:	30c60007 	andi	a2,a2,0x7
 ac4:	04410003 	bgez	v0,ad4 <func_808911D4+0x40>
 ac8:	28410100 	slti	at,v0,256
 acc:	10000006 	b	ae8 <func_808911D4+0x54>
 ad0:	a4800200 	sh	zero,512(a0)
 ad4:	14200003 	bnez	at,ae4 <func_808911D4+0x50>
 ad8:	00401825 	move	v1,v0
 adc:	10000001 	b	ae4 <func_808911D4+0x50>
 ae0:	240300ff 	li	v1,255
 ae4:	a6030200 	sh	v1,512(s0)
 ae8:	3c010000 	lui	at,0x0
 aec:	c4220000 	lwc1	$f2,0(at)
 af0:	3c010000 	lui	at,0x0
 af4:	00061880 	sll	v1,a2,0x2
 af8:	00230821 	addu	at,at,v1
 afc:	c4260000 	lwc1	$f6,0(at)
 b00:	c6040054 	lwc1	$f4,84(s0)
 b04:	46062200 	add.s	$f8,$f4,$f6
 b08:	e6080054 	swc1	$f8,84(s0)
 b0c:	c6000054 	lwc1	$f0,84(s0)
 b10:	4602003c 	c.lt.s	$f0,$f2
 b14:	00000000 	nop
 b18:	45020004 	bc1fl	b2c <func_808911D4+0x98>
 b1c:	e6000054 	swc1	$f0,84(s0)
 b20:	10000002 	b	b2c <func_808911D4+0x98>
 b24:	e6020054 	swc1	$f2,84(s0)
 b28:	e6000054 	swc1	$f0,84(s0)
 b2c:	86020200 	lh	v0,512(s0)
 b30:	28410051 	slti	at,v0,81
 b34:	54200016 	bnezl	at,b90 <func_808911D4+0xfc>
 b38:	284100b5 	slti	at,v0,181
 b3c:	10c00005 	beqz	a2,b54 <func_808911D4+0xc0>
 b40:	24010001 	li	at,1
 b44:	10c10003 	beq	a2,at,b54 <func_808911D4+0xc0>
 b48:	24010004 	li	at,4
 b4c:	54c10010 	bnel	a2,at,b90 <func_808911D4+0xfc>
 b50:	284100b5 	slti	at,v0,181
 b54:	8fa40044 	lw	a0,68(sp)
 b58:	3c010001 	lui	at,0x1
 b5c:	34211e60 	ori	at,at,0x1e60
 b60:	00812821 	addu	a1,a0,at
 b64:	afa5002c 	sw	a1,44(sp)
 b68:	26060168 	addiu	a2,s0,360
 b6c:	0c000000 	jal	0 <func_80890740>
 b70:	afa30028 	sw	v1,40(sp)
 b74:	8fa5002c 	lw	a1,44(sp)
 b78:	8fa40044 	lw	a0,68(sp)
 b7c:	0c000000 	jal	0 <func_80890740>
 b80:	260601b4 	addiu	a2,s0,436
 b84:	8fa30028 	lw	v1,40(sp)
 b88:	86020200 	lh	v0,512(s0)
 b8c:	284100b5 	slti	at,v0,181
 b90:	14200005 	bnez	at,ba8 <func_808911D4+0x114>
 b94:	02002025 	move	a0,s0
 b98:	3c013f80 	lui	at,0x3f80
 b9c:	44810000 	mtc1	at,$f0
 ba0:	10000009 	b	bc8 <func_808911D4+0x134>
 ba4:	00000000 	nop
 ba8:	2841003d 	slti	at,v0,61
 bac:	14200004 	bnez	at,bc0 <func_808911D4+0x12c>
 bb0:	3c013f00 	lui	at,0x3f00
 bb4:	44810000 	mtc1	at,$f0
 bb8:	10000003 	b	bc8 <func_808911D4+0x134>
 bbc:	00000000 	nop
 bc0:	44800000 	mtc1	zero,$f0
 bc4:	00000000 	nop
 bc8:	3c190000 	lui	t9,0x0
 bcc:	27390000 	addiu	t9,t9,0
 bd0:	00791021 	addu	v0,v1,t9
 bd4:	8c590000 	lw	t9,0(v0)
 bd8:	3c070000 	lui	a3,0x0
 bdc:	00e33821 	addu	a3,a3,v1
 be0:	44060000 	mfc1	a2,$f0
 be4:	8ce70000 	lw	a3,0(a3)
 be8:	afa20024 	sw	v0,36(sp)
 bec:	0320f809 	jalr	t9
 bf0:	8fa50044 	lw	a1,68(sp)
 bf4:	86080200 	lh	t0,512(s0)
 bf8:	5d000013 	bgtzl	t0,c48 <func_808911D4+0x1b4>
 bfc:	8fbf001c 	lw	ra,28(sp)
 c00:	8602001c 	lh	v0,28(s0)
 c04:	8fa40044 	lw	a0,68(sp)
 c08:	00024983 	sra	t1,v0,0x6
 c0c:	312a0001 	andi	t2,t1,0x1
 c10:	55400004 	bnezl	t2,c24 <func_808911D4+0x190>
 c14:	8fab0024 	lw	t3,36(sp)
 c18:	0c000000 	jal	0 <func_80890740>
 c1c:	3045003f 	andi	a1,v0,0x3f
 c20:	8fab0024 	lw	t3,36(sp)
 c24:	3c0c0000 	lui	t4,0x0
 c28:	258c0000 	addiu	t4,t4,0
 c2c:	156c0003 	bne	t3,t4,c3c <func_808911D4+0x1a8>
 c30:	00000000 	nop
 c34:	0c000000 	jal	0 <func_80890740>
 c38:	24044802 	li	a0,18434
 c3c:	0c000000 	jal	0 <func_80890740>
 c40:	02002025 	move	a0,s0
 c44:	8fbf001c 	lw	ra,28(sp)
 c48:	8fb00018 	lw	s0,24(sp)
 c4c:	27bd0040 	addiu	sp,sp,64
 c50:	03e00008 	jr	ra
 c54:	00000000 	nop

00000c58 <BgIceShelter_Update>:
 c58:	27bdffe8 	addiu	sp,sp,-24
 c5c:	afbf0014 	sw	ra,20(sp)
 c60:	8c990164 	lw	t9,356(a0)
 c64:	0320f809 	jalr	t9
 c68:	00000000 	nop
 c6c:	8fbf0014 	lw	ra,20(sp)
 c70:	27bd0018 	addiu	sp,sp,24
 c74:	03e00008 	jr	ra
 c78:	00000000 	nop

00000c7c <BgIceShelter_Draw>:
 c7c:	27bdff78 	addiu	sp,sp,-136
 c80:	afb10038 	sw	s1,56(sp)
 c84:	00a08825 	move	s1,a1
 c88:	afbf003c 	sw	ra,60(sp)
 c8c:	afb00034 	sw	s0,52(sp)
 c90:	afa40088 	sw	a0,136(sp)
 c94:	8ca50000 	lw	a1,0(a1)
 c98:	3c060000 	lui	a2,0x0
 c9c:	24c60000 	addiu	a2,a2,0
 ca0:	27a4006c 	addiu	a0,sp,108
 ca4:	240702ec 	li	a3,748
 ca8:	0c000000 	jal	0 <func_80890740>
 cac:	00a08025 	move	s0,a1
 cb0:	0c000000 	jal	0 <func_80890740>
 cb4:	8e240000 	lw	a0,0(s1)
 cb8:	8e0202d0 	lw	v0,720(s0)
 cbc:	3c0fda38 	lui	t7,0xda38
 cc0:	35ef0003 	ori	t7,t7,0x3
 cc4:	244e0008 	addiu	t6,v0,8
 cc8:	ae0e02d0 	sw	t6,720(s0)
 ccc:	ac4f0000 	sw	t7,0(v0)
 cd0:	8e240000 	lw	a0,0(s1)
 cd4:	3c050000 	lui	a1,0x0
 cd8:	24a50000 	addiu	a1,a1,0
 cdc:	240602ef 	li	a2,751
 ce0:	0c000000 	jal	0 <func_80890740>
 ce4:	afa20068 	sw	v0,104(sp)
 ce8:	8fa30068 	lw	v1,104(sp)
 cec:	24010001 	li	at,1
 cf0:	00003025 	move	a2,zero
 cf4:	ac620004 	sw	v0,4(v1)
 cf8:	8fa40088 	lw	a0,136(sp)
 cfc:	8482001c 	lh	v0,28(a0)
 d00:	00021203 	sra	v0,v0,0x8
 d04:	30420007 	andi	v0,v0,0x7
 d08:	10400007 	beqz	v0,d28 <BgIceShelter_Draw+0xac>
 d0c:	00000000 	nop
 d10:	10410005 	beq	v0,at,d28 <BgIceShelter_Draw+0xac>
 d14:	24010002 	li	at,2
 d18:	10410003 	beq	v0,at,d28 <BgIceShelter_Draw+0xac>
 d1c:	24010004 	li	at,4
 d20:	54410005 	bnel	v0,at,d38 <BgIceShelter_Draw+0xbc>
 d24:	8e0202d0 	lw	v0,720(s0)
 d28:	0c000000 	jal	0 <func_80890740>
 d2c:	02202825 	move	a1,s1
 d30:	8fa40088 	lw	a0,136(sp)
 d34:	8e0202d0 	lw	v0,720(s0)
 d38:	3c19fb00 	lui	t9,0xfb00
 d3c:	3c01ff00 	lui	at,0xff00
 d40:	24580008 	addiu	t8,v0,8
 d44:	ae1802d0 	sw	t8,720(s0)
 d48:	ac590000 	sw	t9,0(v0)
 d4c:	848a0200 	lh	t2,512(a0)
 d50:	314b00ff 	andi	t3,t2,0xff
 d54:	01616025 	or	t4,t3,at
 d58:	ac4c0004 	sw	t4,4(v0)
 d5c:	848d001c 	lh	t5,28(a0)
 d60:	000d7203 	sra	t6,t5,0x8
 d64:	31cf0007 	andi	t7,t6,0x7
 d68:	2de10005 	sltiu	at,t7,5
 d6c:	1020007c 	beqz	at,f60 <L80891680+0x20>
 d70:	000f7880 	sll	t7,t7,0x2
 d74:	3c010000 	lui	at,0x0
 d78:	002f0821 	addu	at,at,t7
 d7c:	8c2f0000 	lw	t7,0(at)
 d80:	01e00008 	jr	t7
 d84:	00000000 	nop

00000d88 <L808914C8>:
 d88:	8e0202d0 	lw	v0,720(s0)
 d8c:	3c19db06 	lui	t9,0xdb06
 d90:	37390020 	ori	t9,t9,0x20
 d94:	24580008 	addiu	t8,v0,8
 d98:	ae1802d0 	sw	t8,720(s0)
 d9c:	3c030001 	lui	v1,0x1
 da0:	00711821 	addu	v1,v1,s1
 da4:	ac590000 	sw	t9,0(v0)
 da8:	8c631de4 	lw	v1,7652(v1)
 dac:	8e240000 	lw	a0,0(s1)
 db0:	240a0020 	li	t2,32
 db4:	00033023 	negu	a2,v1
 db8:	30c6007f 	andi	a2,a2,0x7f
 dbc:	240b0020 	li	t3,32
 dc0:	240c0001 	li	t4,1
 dc4:	240e0020 	li	t6,32
 dc8:	240f0020 	li	t7,32
 dcc:	306d007f 	andi	t5,v1,0x7f
 dd0:	afad0020 	sw	t5,32(sp)
 dd4:	afaf0028 	sw	t7,40(sp)
 dd8:	afae0024 	sw	t6,36(sp)
 ddc:	afac0018 	sw	t4,24(sp)
 de0:	afab0014 	sw	t3,20(sp)
 de4:	00c03825 	move	a3,a2
 de8:	afa6001c 	sw	a2,28(sp)
 dec:	afaa0010 	sw	t2,16(sp)
 df0:	00002825 	move	a1,zero
 df4:	0c000000 	jal	0 <func_80890740>
 df8:	afa20060 	sw	v0,96(sp)
 dfc:	8fa80060 	lw	t0,96(sp)
 e00:	3c0a0600 	lui	t2,0x600
 e04:	254a06f0 	addiu	t2,t2,1776
 e08:	ad020004 	sw	v0,4(t0)
 e0c:	8e0202d0 	lw	v0,720(s0)
 e10:	3c19de00 	lui	t9,0xde00
 e14:	24580008 	addiu	t8,v0,8
 e18:	ae1802d0 	sw	t8,720(s0)
 e1c:	ac4a0004 	sw	t2,4(v0)
 e20:	1000004f 	b	f60 <L80891680+0x20>
 e24:	ac590000 	sw	t9,0(v0)

00000e28 <L80891568>:
 e28:	8e0202d0 	lw	v0,720(s0)
 e2c:	3c0cdb06 	lui	t4,0xdb06
 e30:	358c0020 	ori	t4,t4,0x20
 e34:	244b0008 	addiu	t3,v0,8
 e38:	ae0b02d0 	sw	t3,720(s0)
 e3c:	3c010001 	lui	at,0x1
 e40:	02214821 	addu	t1,s1,at
 e44:	ac4c0000 	sw	t4,0(v0)
 e48:	8d231de4 	lw	v1,7652(t1)
 e4c:	8e240000 	lw	a0,0(s1)
 e50:	240b0040 	li	t3,64
 e54:	0003c023 	negu	t8,v1
 e58:	331900ff 	andi	t9,t8,0xff
 e5c:	240d0040 	li	t5,64
 e60:	240e0040 	li	t6,64
 e64:	240f0001 	li	t7,1
 e68:	240a0040 	li	t2,64
 e6c:	afaa0024 	sw	t2,36(sp)
 e70:	afaf0018 	sw	t7,24(sp)
 e74:	afae0014 	sw	t6,20(sp)
 e78:	afad0010 	sw	t5,16(sp)
 e7c:	afb90020 	sw	t9,32(sp)
 e80:	afab0028 	sw	t3,40(sp)
 e84:	afa90044 	sw	t1,68(sp)
 e88:	afa0001c 	sw	zero,28(sp)
 e8c:	00002825 	move	a1,zero
 e90:	00003025 	move	a2,zero
 e94:	afa20058 	sw	v0,88(sp)
 e98:	0c000000 	jal	0 <func_80890740>
 e9c:	306700ff 	andi	a3,v1,0xff
 ea0:	8fa80058 	lw	t0,88(sp)
 ea4:	8fa90044 	lw	t1,68(sp)
 ea8:	3c0ddb06 	lui	t5,0xdb06
 eac:	ad020004 	sw	v0,4(t0)
 eb0:	8e0202d0 	lw	v0,720(s0)
 eb4:	35ad0024 	ori	t5,t5,0x24
 eb8:	240e0040 	li	t6,64
 ebc:	244c0008 	addiu	t4,v0,8
 ec0:	ae0c02d0 	sw	t4,720(s0)
 ec4:	ac4d0000 	sw	t5,0(v0)
 ec8:	8d231de4 	lw	v1,7652(t1)
 ecc:	8e240000 	lw	a0,0(s1)
 ed0:	240f0040 	li	t7,64
 ed4:	24180001 	li	t8,1
 ed8:	24190040 	li	t9,64
 edc:	240a0040 	li	t2,64
 ee0:	00033023 	negu	a2,v1
 ee4:	306700ff 	andi	a3,v1,0xff
 ee8:	afa7001c 	sw	a3,28(sp)
 eec:	afa70020 	sw	a3,32(sp)
 ef0:	30c600ff 	andi	a2,a2,0xff
 ef4:	afaa0028 	sw	t2,40(sp)
 ef8:	afb90024 	sw	t9,36(sp)
 efc:	afb80018 	sw	t8,24(sp)
 f00:	afaf0014 	sw	t7,20(sp)
 f04:	afae0010 	sw	t6,16(sp)
 f08:	00002825 	move	a1,zero
 f0c:	0c000000 	jal	0 <func_80890740>
 f10:	afa20054 	sw	v0,84(sp)
 f14:	8fa80054 	lw	t0,84(sp)
 f18:	3c0d0600 	lui	t5,0x600
 f1c:	25ad12a0 	addiu	t5,t5,4768
 f20:	ad020004 	sw	v0,4(t0)
 f24:	8e0202d0 	lw	v0,720(s0)
 f28:	3c0cde00 	lui	t4,0xde00
 f2c:	244b0008 	addiu	t3,v0,8
 f30:	ae0b02d0 	sw	t3,720(s0)
 f34:	ac4d0004 	sw	t5,4(v0)
 f38:	10000009 	b	f60 <L80891680+0x20>
 f3c:	ac4c0000 	sw	t4,0(v0)

00000f40 <L80891680>:
 f40:	8e0202d0 	lw	v0,720(s0)
 f44:	3c180600 	lui	t8,0x600
 f48:	27182640 	addiu	t8,t8,9792
 f4c:	244e0008 	addiu	t6,v0,8
 f50:	ae0e02d0 	sw	t6,720(s0)
 f54:	3c0fde00 	lui	t7,0xde00
 f58:	ac4f0000 	sw	t7,0(v0)
 f5c:	ac580004 	sw	t8,4(v0)
 f60:	3c060000 	lui	a2,0x0
 f64:	24c60000 	addiu	a2,a2,0
 f68:	27a4006c 	addiu	a0,sp,108
 f6c:	8e250000 	lw	a1,0(s1)
 f70:	0c000000 	jal	0 <func_80890740>
 f74:	2407032f 	li	a3,815
 f78:	8fbf003c 	lw	ra,60(sp)
 f7c:	8fb00034 	lw	s0,52(sp)
 f80:	8fb10038 	lw	s1,56(sp)
 f84:	03e00008 	jr	ra
 f88:	27bd0088 	addiu	sp,sp,136
 f8c:	00000000 	nop
