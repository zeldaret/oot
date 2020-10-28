
build/src/overlays/actors/ovl_En_Bx/z_en_bx.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBx_Init>:
   0:	27bdffa8 	addiu	sp,sp,-88
   4:	3c0e0000 	lui	t6,0x0
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb10018 	sw	s1,24(sp)
  10:	afb00014 	sw	s0,20(sp)
  14:	25ce009c 	addiu	t6,t6,156
  18:	8dd80000 	lw	t8,0(t6)
  1c:	27a80048 	addiu	t0,sp,72
  20:	3c0b0000 	lui	t3,0x0
  24:	ad180000 	sw	t8,0(t0)
  28:	8dcf0004 	lw	t7,4(t6)
  2c:	256b00a8 	addiu	t3,t3,168
  30:	27b9003c 	addiu	t9,sp,60
  34:	ad0f0004 	sw	t7,4(t0)
  38:	8dd80008 	lw	t8,8(t6)
  3c:	00a08825 	move	s1,a1
  40:	3c050000 	lui	a1,0x0
  44:	ad180008 	sw	t8,8(t0)
  48:	8d6d0000 	lw	t5,0(t3)
  4c:	8d6c0004 	lw	t4,4(t3)
  50:	00808025 	move	s0,a0
  54:	af2d0000 	sw	t5,0(t9)
  58:	8d6d0008 	lw	t5,8(t3)
  5c:	24a500b4 	addiu	a1,a1,180
  60:	af2c0004 	sw	t4,4(t9)
  64:	0c000000 	jal	0 <EnBx_Init>
  68:	af2d0008 	sw	t5,8(t9)
  6c:	3c010000 	lui	at,0x0
  70:	c4200040 	lwc1	$f0,64(at)
  74:	3c010000 	lui	at,0x0
  78:	c6060028 	lwc1	$f6,40(s0)
  7c:	e6000058 	swc1	$f0,88(s0)
  80:	e6000050 	swc1	$f0,80(s0)
  84:	c4240044 	lwc1	$f4,68(at)
  88:	3c0142c8 	lui	at,0x42c8
  8c:	44814000 	mtc1	at,$f8
  90:	3c01430c 	lui	at,0x430c
  94:	44810000 	mtc1	at,$f0
  98:	46083281 	sub.s	$f10,$f6,$f8
  9c:	27a80048 	addiu	t0,sp,72
  a0:	00001825 	move	v1,zero
  a4:	26070024 	addiu	a3,s0,36
  a8:	e60a0028 	swc1	$f10,40(s0)
  ac:	02002025 	move	a0,s0
  b0:	26050154 	addiu	a1,s0,340
  b4:	26060184 	addiu	a2,s0,388
  b8:	240a0004 	li	t2,4
  bc:	24090006 	li	t1,6
  c0:	e6040054 	swc1	$f4,84(s0)
  c4:	8d0f0000 	lw	t7,0(t0)
  c8:	24620001 	addiu	v0,v1,1
  cc:	44829000 	mtc1	v0,$f18
  d0:	accf0000 	sw	t7,0(a2)
  d4:	8d0e0004 	lw	t6,4(t0)
  d8:	46809120 	cvt.s.w	$f4,$f18
  dc:	acce0004 	sw	t6,4(a2)
  e0:	8d0f0008 	lw	t7,8(t0)
  e4:	14600007 	bnez	v1,104 <EnBx_Init+0x104>
  e8:	accf0008 	sw	t7,8(a2)
  ec:	00690019 	multu	v1,t1
  f0:	861800b4 	lh	t8,180(s0)
  f4:	2719c000 	addiu	t9,t8,-16384
  f8:	00005812 	mflo	t3
  fc:	020b6021 	addu	t4,s0,t3
 100:	a59901b4 	sh	t9,436(t4)
 104:	8cee0000 	lw	t6,0(a3)
 108:	46002182 	mul.s	$f6,$f4,$f0
 10c:	00401825 	move	v1,v0
 110:	acae0000 	sw	t6,0(a1)
 114:	8ced0004 	lw	t5,4(a3)
 118:	2484000c 	addiu	a0,a0,12
 11c:	24a5000c 	addiu	a1,a1,12
 120:	acadfff8 	sw	t5,-8(a1)
 124:	8cee0008 	lw	t6,8(a3)
 128:	24c6000c 	addiu	a2,a2,12
 12c:	acaefffc 	sw	t6,-4(a1)
 130:	c6100028 	lwc1	$f16,40(s0)
 134:	46068200 	add.s	$f8,$f16,$f6
 138:	144affe2 	bne	v0,t2,c4 <EnBx_Init+0xc4>
 13c:	e488014c 	swc1	$f8,332(a0)
 140:	3c060000 	lui	a2,0x0
 144:	24c60000 	addiu	a2,a2,0
 148:	260400b4 	addiu	a0,s0,180
 14c:	24050000 	li	a1,0
 150:	0c000000 	jal	0 <EnBx_Init>
 154:	3c074240 	lui	a3,0x4240
 158:	260501cc 	addiu	a1,s0,460
 15c:	afa50030 	sw	a1,48(sp)
 160:	0c000000 	jal	0 <EnBx_Init>
 164:	02202025 	move	a0,s1
 168:	3c070000 	lui	a3,0x0
 16c:	8fa50030 	lw	a1,48(sp)
 170:	24e70020 	addiu	a3,a3,32
 174:	02202025 	move	a0,s1
 178:	0c000000 	jal	0 <EnBx_Init>
 17c:	02003025 	move	a2,s0
 180:	26050218 	addiu	a1,s0,536
 184:	afa50030 	sw	a1,48(sp)
 188:	0c000000 	jal	0 <EnBx_Init>
 18c:	02202025 	move	a0,s1
 190:	3c070000 	lui	a3,0x0
 194:	8fa50030 	lw	a1,48(sp)
 198:	24e7004c 	addiu	a3,a3,76
 19c:	02202025 	move	a0,s1
 1a0:	0c000000 	jal	0 <EnBx_Init>
 1a4:	02003025 	move	a2,s0
 1a8:	8605001c 	lh	a1,28(s0)
 1ac:	3c0144fa 	lui	at,0x44fa
 1b0:	44815000 	mtc1	at,$f10
 1b4:	240f00ff 	li	t7,255
 1b8:	00052a03 	sra	a1,a1,0x8
 1bc:	a20f00ae 	sb	t7,174(s0)
 1c0:	a600014c 	sh	zero,332(s0)
 1c4:	30a500ff 	andi	a1,a1,0xff
 1c8:	02202025 	move	a0,s1
 1cc:	0c000000 	jal	0 <EnBx_Init>
 1d0:	e60a00fc 	swc1	$f10,252(s0)
 1d4:	50400004 	beqzl	v0,1e8 <EnBx_Init+0x1e8>
 1d8:	8618001c 	lh	t8,28(s0)
 1dc:	0c000000 	jal	0 <EnBx_Init>
 1e0:	02002025 	move	a0,s0
 1e4:	8618001c 	lh	t8,28(s0)
 1e8:	330b00ff 	andi	t3,t8,0xff
 1ec:	a60b001c 	sh	t3,28(s0)
 1f0:	8fbf001c 	lw	ra,28(sp)
 1f4:	8fb10018 	lw	s1,24(sp)
 1f8:	8fb00014 	lw	s0,20(sp)
 1fc:	03e00008 	jr	ra
 200:	27bd0058 	addiu	sp,sp,88

00000204 <EnBx_Destroy>:
 204:	27bdffe8 	addiu	sp,sp,-24
 208:	00803025 	move	a2,a0
 20c:	afbf0014 	sw	ra,20(sp)
 210:	00a02025 	move	a0,a1
 214:	0c000000 	jal	0 <EnBx_Init>
 218:	24c501cc 	addiu	a1,a2,460
 21c:	8fbf0014 	lw	ra,20(sp)
 220:	27bd0018 	addiu	sp,sp,24
 224:	03e00008 	jr	ra
 228:	00000000 	nop

0000022c <func_809D1D0C>:
 22c:	27bdff98 	addiu	sp,sp,-104
 230:	3c0f0000 	lui	t7,0x0
 234:	afbf0024 	sw	ra,36(sp)
 238:	afb00020 	sw	s0,32(sp)
 23c:	afa5006c 	sw	a1,108(sp)
 240:	25ef00b8 	addiu	t7,t7,184
 244:	8df90000 	lw	t9,0(t7)
 248:	27ae005c 	addiu	t6,sp,92
 24c:	8df80004 	lw	t8,4(t7)
 250:	add90000 	sw	t9,0(t6)
 254:	8df90008 	lw	t9,8(t7)
 258:	3c090000 	lui	t1,0x0
 25c:	252900c4 	addiu	t1,t1,196
 260:	add80004 	sw	t8,4(t6)
 264:	add90008 	sw	t9,8(t6)
 268:	8d2b0000 	lw	t3,0(t1)
 26c:	27a80050 	addiu	t0,sp,80
 270:	8d2a0004 	lw	t2,4(t1)
 274:	ad0b0000 	sw	t3,0(t0)
 278:	8d2b0008 	lw	t3,8(t1)
 27c:	00808025 	move	s0,a0
 280:	3c040000 	lui	a0,0x0
 284:	248400d0 	addiu	a0,a0,208
 288:	27a50044 	addiu	a1,sp,68
 28c:	ad0a0004 	sw	t2,4(t0)
 290:	0c000000 	jal	0 <EnBx_Init>
 294:	ad0b0008 	sw	t3,8(t0)
 298:	3c040000 	lui	a0,0x0
 29c:	248400dc 	addiu	a0,a0,220
 2a0:	0c000000 	jal	0 <EnBx_Init>
 2a4:	27a50038 	addiu	a1,sp,56
 2a8:	26050264 	addiu	a1,s0,612
 2ac:	afa5002c 	sw	a1,44(sp)
 2b0:	0c000000 	jal	0 <EnBx_Init>
 2b4:	27a4005c 	addiu	a0,sp,92
 2b8:	26070258 	addiu	a3,s0,600
 2bc:	00e02825 	move	a1,a3
 2c0:	afa70030 	sw	a3,48(sp)
 2c4:	0c000000 	jal	0 <EnBx_Init>
 2c8:	27a40050 	addiu	a0,sp,80
 2cc:	8fac002c 	lw	t4,44(sp)
 2d0:	8fa70030 	lw	a3,48(sp)
 2d4:	26040218 	addiu	a0,s0,536
 2d8:	27a50038 	addiu	a1,sp,56
 2dc:	27a60044 	addiu	a2,sp,68
 2e0:	0c000000 	jal	0 <EnBx_Init>
 2e4:	afac0010 	sw	t4,16(sp)
 2e8:	8fbf0024 	lw	ra,36(sp)
 2ec:	8fb00020 	lw	s0,32(sp)
 2f0:	27bd0068 	addiu	sp,sp,104
 2f4:	03e00008 	jr	ra
 2f8:	00000000 	nop

000002fc <EnBx_Update>:
 2fc:	27bdff88 	addiu	sp,sp,-120
 300:	afbf0044 	sw	ra,68(sp)
 304:	afb40040 	sw	s4,64(sp)
 308:	afb3003c 	sw	s3,60(sp)
 30c:	afb20038 	sw	s2,56(sp)
 310:	afb10034 	sw	s1,52(sp)
 314:	afb00030 	sw	s0,48(sp)
 318:	f7b40028 	sdc1	$f20,40(sp)
 31c:	3c01428c 	lui	at,0x428c
 320:	44811000 	mtc1	at,$f2
 324:	c4800090 	lwc1	$f0,144(a0)
 328:	00809825 	move	s3,a0
 32c:	00a0a025 	move	s4,a1
 330:	4602003e 	c.le.s	$f0,$f2
 334:	8cb01c44 	lw	s0,7236(a1)
 338:	4503000e 	bc1tl	374 <EnBx_Update+0x78>
 33c:	4602003e 	c.le.s	$f0,$f2
 340:	908e01dc 	lbu	t6,476(a0)
 344:	31cf0002 	andi	t7,t6,0x2
 348:	55e0000a 	bnezl	t7,374 <EnBx_Update+0x78>
 34c:	4602003e 	c.le.s	$f0,$f2
 350:	909801dd 	lbu	t8,477(a0)
 354:	33190002 	andi	t9,t8,0x2
 358:	57200006 	bnezl	t9,374 <EnBx_Update+0x78>
 35c:	4602003e 	c.le.s	$f0,$f2
 360:	90880228 	lbu	t0,552(a0)
 364:	31090002 	andi	t1,t0,0x2
 368:	51200044 	beqzl	t1,47c <EnBx_Update+0x180>
 36c:	8662014c 	lh	v0,332(s3)
 370:	4602003e 	c.le.s	$f0,$f2
 374:	00000000 	nop
 378:	4503000b 	bc1tl	3a8 <EnBx_Update+0xac>
 37c:	866d001c 	lh	t5,28(s3)
 380:	8e6a01d0 	lw	t2,464(s3)
 384:	520a0008 	beql	s0,t2,3a8 <EnBx_Update+0xac>
 388:	866d001c 	lh	t5,28(s3)
 38c:	8e6b01d4 	lw	t3,468(s3)
 390:	520b0005 	beql	s0,t3,3a8 <EnBx_Update+0xac>
 394:	866d001c 	lh	t5,28(s3)
 398:	8e6c021c 	lw	t4,540(s3)
 39c:	560c0029 	bnel	s0,t4,444 <EnBx_Update+0x148>
 3a0:	926801dc 	lbu	t0,476(s3)
 3a4:	866d001c 	lh	t5,28(s3)
 3a8:	82020a78 	lb	v0,2680(s0)
 3ac:	86710032 	lh	s1,50(s3)
 3b0:	31ae0080 	andi	t6,t5,0x80
 3b4:	8e6301d0 	lw	v1,464(s3)
 3b8:	15c00002 	bnez	t6,3c4 <EnBx_Update+0xc8>
 3bc:	305200ff 	andi	s2,v0,0xff
 3c0:	8671008a 	lh	s1,138(s3)
 3c4:	52030015 	beql	s0,v1,41c <EnBx_Update+0x120>
 3c8:	3c0140c0 	lui	at,0x40c0
 3cc:	8e6f01d4 	lw	t7,468(s3)
 3d0:	520f0012 	beql	s0,t7,41c <EnBx_Update+0x120>
 3d4:	3c0140c0 	lui	at,0x40c0
 3d8:	8e78021c 	lw	t8,540(s3)
 3dc:	5218000f 	beql	s0,t8,41c <EnBx_Update+0x120>
 3e0:	3c0140c0 	lui	at,0x40c0
 3e4:	1c40000c 	bgtz	v0,418 <EnBx_Update+0x11c>
 3e8:	2841ffd9 	slti	at,v0,-39
 3ec:	10200003 	beqz	at,3fc <EnBx_Update+0x100>
 3f0:	3c190001 	lui	t9,0x1
 3f4:	10000008 	b	418 <EnBx_Update+0x11c>
 3f8:	a2000a78 	sb	zero,2680(s0)
 3fc:	a2000a78 	sb	zero,2680(s0)
 400:	0334c821 	addu	t9,t9,s4
 404:	8f391d58 	lw	t9,7512(t9)
 408:	02802025 	move	a0,s4
 40c:	2405fffc 	li	a1,-4
 410:	0320f809 	jalr	t9
 414:	00000000 	nop
 418:	3c0140c0 	lui	at,0x40c0
 41c:	44810000 	mtc1	at,$f0
 420:	00113c00 	sll	a3,s1,0x10
 424:	00073c03 	sra	a3,a3,0x10
 428:	44060000 	mfc1	a2,$f0
 42c:	02802025 	move	a0,s4
 430:	02602825 	move	a1,s3
 434:	0c000000 	jal	0 <EnBx_Init>
 438:	e7a00010 	swc1	$f0,16(sp)
 43c:	a2120a78 	sb	s2,2680(s0)
 440:	926801dc 	lbu	t0,476(s3)
 444:	926a01dd 	lbu	t2,477(s3)
 448:	926c0228 	lbu	t4,552(s3)
 44c:	240e0014 	li	t6,20
 450:	3109fffd 	andi	t1,t0,0xfffd
 454:	314bfffd 	andi	t3,t2,0xfffd
 458:	318dfffd 	andi	t5,t4,0xfffd
 45c:	a26901dc 	sb	t1,476(s3)
 460:	a26b01dd 	sb	t3,477(s3)
 464:	a26d0228 	sb	t5,552(s3)
 468:	ae60021c 	sw	zero,540(s3)
 46c:	ae6001d4 	sw	zero,468(s3)
 470:	ae6001d0 	sw	zero,464(s3)
 474:	a66e014c 	sh	t6,332(s3)
 478:	8662014c 	lh	v0,332(s3)
 47c:	00008025 	move	s0,zero
 480:	3c0140a0 	lui	at,0x40a0
 484:	1040003f 	beqz	v0,584 <EnBx_Update+0x288>
 488:	244fffff 	addiu	t7,v0,-1
 48c:	4481a000 	mtc1	at,$f20
 490:	a66f014c 	sh	t7,332(s3)
 494:	8678014c 	lh	t8,332(s3)
 498:	0010c840 	sll	t9,s0,0x1
 49c:	3c014640 	lui	at,0x4640
 4a0:	03194021 	addu	t0,t8,t9
 4a4:	05010004 	bgez	t0,4b8 <EnBx_Update+0x1bc>
 4a8:	31090003 	andi	t1,t0,0x3
 4ac:	11200002 	beqz	t1,4b8 <EnBx_Update+0x1bc>
 4b0:	00000000 	nop
 4b4:	2529fffc 	addiu	t1,t1,-4
 4b8:	5520002c 	bnezl	t1,56c <EnBx_Update+0x270>
 4bc:	26100001 	addiu	s0,s0,1
 4c0:	44816000 	mtc1	at,$f12
 4c4:	0c000000 	jal	0 <EnBx_Init>
 4c8:	00109380 	sll	s2,s0,0xe
 4cc:	4600010d 	trunc.w.s	$f4,$f0
 4d0:	4600a306 	mov.s	$f12,$f20
 4d4:	440d2000 	mfc1	t5,$f4
 4d8:	00000000 	nop
 4dc:	01b28821 	addu	s1,t5,s2
 4e0:	26312000 	addiu	s1,s1,8192
 4e4:	00118c00 	sll	s1,s1,0x10
 4e8:	0c000000 	jal	0 <EnBx_Init>
 4ec:	00118c03 	sra	s1,s1,0x10
 4f0:	c6660024 	lwc1	$f6,36(s3)
 4f4:	3c0141f0 	lui	at,0x41f0
 4f8:	44816000 	mtc1	at,$f12
 4fc:	46060200 	add.s	$f8,$f0,$f6
 500:	0c000000 	jal	0 <EnBx_Init>
 504:	e7a80058 	swc1	$f8,88(sp)
 508:	c66a0028 	lwc1	$f10,40(s3)
 50c:	3c01432a 	lui	at,0x432a
 510:	44819000 	mtc1	at,$f18
 514:	460a0400 	add.s	$f16,$f0,$f10
 518:	4600a306 	mov.s	$f12,$f20
 51c:	46128100 	add.s	$f4,$f16,$f18
 520:	0c000000 	jal	0 <EnBx_Init>
 524:	e7a4005c 	swc1	$f4,92(sp)
 528:	c666002c 	lwc1	$f6,44(s3)
 52c:	3c060000 	lui	a2,0x0
 530:	3c070000 	lui	a3,0x0
 534:	46060200 	add.s	$f8,$f0,$f6
 538:	240e00e6 	li	t6,230
 53c:	240f0006 	li	t7,6
 540:	afaf0018 	sw	t7,24(sp)
 544:	e7a80060 	swc1	$f8,96(sp)
 548:	afae0010 	sw	t6,16(sp)
 54c:	24e700ec 	addiu	a3,a3,236
 550:	24c600e8 	addiu	a2,a2,232
 554:	afa0001c 	sw	zero,28(sp)
 558:	afb10014 	sw	s1,20(sp)
 55c:	02802025 	move	a0,s4
 560:	0c000000 	jal	0 <EnBx_Init>
 564:	27a50058 	addiu	a1,sp,88
 568:	26100001 	addiu	s0,s0,1
 56c:	24010004 	li	at,4
 570:	5601ffc9 	bnel	s0,at,498 <EnBx_Update+0x19c>
 574:	8678014c 	lh	t8,332(s3)
 578:	02602025 	move	a0,s3
 57c:	0c000000 	jal	0 <EnBx_Init>
 580:	2405309a 	li	a1,12442
 584:	8e790024 	lw	t9,36(s3)
 588:	8e780028 	lw	t8,40(s3)
 58c:	267101cc 	addiu	s1,s3,460
 590:	ae790038 	sw	t9,56(s3)
 594:	8e79002c 	lw	t9,44(s3)
 598:	02202825 	move	a1,s1
 59c:	02602025 	move	a0,s3
 5a0:	ae78003c 	sw	t8,60(s3)
 5a4:	0c000000 	jal	0 <EnBx_Init>
 5a8:	ae790040 	sw	t9,64(s3)
 5ac:	3c010001 	lui	at,0x1
 5b0:	34211e60 	ori	at,at,0x1e60
 5b4:	02818021 	addu	s0,s4,at
 5b8:	02002825 	move	a1,s0
 5bc:	02802025 	move	a0,s4
 5c0:	0c000000 	jal	0 <EnBx_Init>
 5c4:	02203025 	move	a2,s1
 5c8:	02802025 	move	a0,s4
 5cc:	02002825 	move	a1,s0
 5d0:	0c000000 	jal	0 <EnBx_Init>
 5d4:	02203025 	move	a2,s1
 5d8:	8668001c 	lh	t0,28(s3)
 5dc:	02802025 	move	a0,s4
 5e0:	02002825 	move	a1,s0
 5e4:	31090080 	andi	t1,t0,0x80
 5e8:	51200004 	beqzl	t1,5fc <EnBx_Update+0x300>
 5ec:	8fbf0044 	lw	ra,68(sp)
 5f0:	0c000000 	jal	0 <EnBx_Init>
 5f4:	26660218 	addiu	a2,s3,536
 5f8:	8fbf0044 	lw	ra,68(sp)
 5fc:	d7b40028 	ldc1	$f20,40(sp)
 600:	8fb00030 	lw	s0,48(sp)
 604:	8fb10034 	lw	s1,52(sp)
 608:	8fb20038 	lw	s2,56(sp)
 60c:	8fb3003c 	lw	s3,60(sp)
 610:	8fb40040 	lw	s4,64(sp)
 614:	03e00008 	jr	ra
 618:	27bd0078 	addiu	sp,sp,120

0000061c <EnBx_Draw>:
 61c:	27bdff50 	addiu	sp,sp,-176
 620:	afb2004c 	sw	s2,76(sp)
 624:	00809025 	move	s2,a0
 628:	afbf0064 	sw	ra,100(sp)
 62c:	afb70060 	sw	s7,96(sp)
 630:	afb6005c 	sw	s6,92(sp)
 634:	afb50058 	sw	s5,88(sp)
 638:	afb40054 	sw	s4,84(sp)
 63c:	afb30050 	sw	s3,80(sp)
 640:	afb10048 	sw	s1,72(sp)
 644:	afb00044 	sw	s0,68(sp)
 648:	f7b60038 	sdc1	$f22,56(sp)
 64c:	f7b40030 	sdc1	$f20,48(sp)
 650:	afa500b4 	sw	a1,180(sp)
 654:	8ca40000 	lw	a0,0(a1)
 658:	0c000000 	jal	0 <EnBx_Init>
 65c:	24050100 	li	a1,256
 660:	8faf00b4 	lw	t7,180(sp)
 664:	3c060000 	lui	a2,0x0
 668:	0040b025 	move	s6,v0
 66c:	8de50000 	lw	a1,0(t7)
 670:	24c60000 	addiu	a2,a2,0
 674:	27a4008c 	addiu	a0,sp,140
 678:	240701d0 	li	a3,464
 67c:	0c000000 	jal	0 <EnBx_Init>
 680:	00a0b825 	move	s7,a1
 684:	8fb800b4 	lw	t8,180(sp)
 688:	0c000000 	jal	0 <EnBx_Init>
 68c:	8f040000 	lw	a0,0(t8)
 690:	8ee202c0 	lw	v0,704(s7)
 694:	3c08db06 	lui	t0,0xdb06
 698:	35080030 	ori	t0,t0,0x30
 69c:	24590008 	addiu	t9,v0,8
 6a0:	aef902c0 	sw	t9,704(s7)
 6a4:	ac480000 	sw	t0,0(v0)
 6a8:	ac560004 	sw	s6,4(v0)
 6ac:	8ee202c0 	lw	v0,704(s7)
 6b0:	3c0adb06 	lui	t2,0xdb06
 6b4:	354a0020 	ori	t2,t2,0x20
 6b8:	24490008 	addiu	t1,v0,8
 6bc:	aee902c0 	sw	t1,704(s7)
 6c0:	ac4a0000 	sw	t2,0(v0)
 6c4:	864b001c 	lh	t3,28(s2)
 6c8:	3c040000 	lui	a0,0x0
 6cc:	3c080000 	lui	t0,0x0
 6d0:	316c007f 	andi	t4,t3,0x7f
 6d4:	000c6880 	sll	t5,t4,0x2
 6d8:	008d2021 	addu	a0,a0,t5
 6dc:	8c8400f0 	lw	a0,240(a0)
 6e0:	3c0100ff 	lui	at,0xff
 6e4:	3421ffff 	ori	at,at,0xffff
 6e8:	00047900 	sll	t7,a0,0x4
 6ec:	000fc702 	srl	t8,t7,0x1c
 6f0:	0018c880 	sll	t9,t8,0x2
 6f4:	01194021 	addu	t0,t0,t9
 6f8:	8d080000 	lw	t0,0(t0)
 6fc:	00817024 	and	t6,a0,at
 700:	3c018000 	lui	at,0x8000
 704:	01c84821 	addu	t1,t6,t0
 708:	01215021 	addu	t2,t1,at
 70c:	ac4a0004 	sw	t2,4(v0)
 710:	8ee202c0 	lw	v0,704(s7)
 714:	8fa300b4 	lw	v1,180(sp)
 718:	3c0cdb06 	lui	t4,0xdb06
 71c:	244b0008 	addiu	t3,v0,8
 720:	aeeb02c0 	sw	t3,704(s7)
 724:	358c0024 	ori	t4,t4,0x24
 728:	ac4c0000 	sw	t4,0(v0)
 72c:	8c640000 	lw	a0,0(v1)
 730:	3c190001 	lui	t9,0x1
 734:	24180001 	li	t8,1
 738:	240f0010 	li	t7,16
 73c:	240d0010 	li	t5,16
 740:	afad0010 	sw	t5,16(sp)
 744:	afaf0014 	sw	t7,20(sp)
 748:	afb80018 	sw	t8,24(sp)
 74c:	afa0001c 	sw	zero,28(sp)
 750:	0323c821 	addu	t9,t9,v1
 754:	8f391de4 	lw	t9,7652(t9)
 758:	240a0020 	li	t2,32
 75c:	24090020 	li	t1,32
 760:	00190823 	negu	at,t9
 764:	00017080 	sll	t6,at,0x2
 768:	01c17021 	addu	t6,t6,at
 76c:	000e7040 	sll	t6,t6,0x1
 770:	31c8007f 	andi	t0,t6,0x7f
 774:	afa80020 	sw	t0,32(sp)
 778:	afa90024 	sw	t1,36(sp)
 77c:	afaa0028 	sw	t2,40(sp)
 780:	00002825 	move	a1,zero
 784:	00003025 	move	a2,zero
 788:	00003825 	move	a3,zero
 78c:	0c000000 	jal	0 <EnBx_Init>
 790:	00408025 	move	s0,v0
 794:	ae020004 	sw	v0,4(s0)
 798:	8ee202c0 	lw	v0,704(s7)
 79c:	3c0cda38 	lui	t4,0xda38
 7a0:	358c0003 	ori	t4,t4,0x3
 7a4:	244b0008 	addiu	t3,v0,8
 7a8:	aeeb02c0 	sw	t3,704(s7)
 7ac:	ac4c0000 	sw	t4,0(v0)
 7b0:	8fad00b4 	lw	t5,180(sp)
 7b4:	3c050000 	lui	a1,0x0
 7b8:	24a50010 	addiu	a1,a1,16
 7bc:	240601de 	li	a2,478
 7c0:	00408025 	move	s0,v0
 7c4:	0c000000 	jal	0 <EnBx_Init>
 7c8:	8da40000 	lw	a0,0(t5)
 7cc:	ae020004 	sw	v0,4(s0)
 7d0:	864f001c 	lh	t7,28(s2)
 7d4:	02402025 	move	a0,s2
 7d8:	31f80080 	andi	t8,t7,0x80
 7dc:	53000004 	beqzl	t8,7f0 <EnBx_Draw+0x1d4>
 7e0:	8659014e 	lh	t9,334(s2)
 7e4:	0c000000 	jal	0 <EnBx_Init>
 7e8:	8fa500b4 	lw	a1,180(sp)
 7ec:	8659014e 	lh	t9,334(s2)
 7f0:	272ef448 	addiu	t6,t9,-3000
 7f4:	a64e014e 	sh	t6,334(s2)
 7f8:	0c000000 	jal	0 <EnBx_Init>
 7fc:	8644014e 	lh	a0,334(s2)
 800:	3c010000 	lui	at,0x0
 804:	c4340048 	lwc1	$f20,72(at)
 808:	3c010000 	lui	at,0x0
 80c:	c436004c 	lwc1	$f22,76(at)
 810:	46140102 	mul.s	$f4,$f0,$f20
 814:	24110003 	li	s1,3
 818:	24140006 	li	s4,6
 81c:	2413000c 	li	s3,12
 820:	46162080 	add.s	$f2,$f4,$f22
 824:	e6420050 	swc1	$f2,80(s2)
 828:	e6420058 	swc1	$f2,88(s2)
 82c:	8648014e 	lh	t0,334(s2)
 830:	00115b40 	sll	t3,s1,0xd
 834:	010b2021 	addu	a0,t0,t3
 838:	00042400 	sll	a0,a0,0x10
 83c:	0c000000 	jal	0 <EnBx_Init>
 840:	00042403 	sra	a0,a0,0x10
 844:	02330019 	multu	s1,s3
 848:	46140182 	mul.s	$f6,$f0,$f20
 84c:	46163080 	add.s	$f2,$f6,$f22
 850:	00006012 	mflo	t4
 854:	024c8021 	addu	s0,s2,t4
 858:	e6020184 	swc1	$f2,388(s0)
 85c:	02340019 	multu	s1,s4
 860:	e602018c 	swc1	$f2,396(s0)
 864:	864f00b4 	lh	t7,180(s2)
 868:	2631ffff 	addiu	s1,s1,-1
 86c:	00118c00 	sll	s1,s1,0x10
 870:	00118c03 	sra	s1,s1,0x10
 874:	00006812 	mflo	t5
 878:	024d1021 	addu	v0,s2,t5
 87c:	a44f01b4 	sh	t7,436(v0)
 880:	865800b6 	lh	t8,182(s2)
 884:	a45801b6 	sh	t8,438(v0)
 888:	865900b8 	lh	t9,184(s2)
 88c:	0621ffe7 	bgez	s1,82c <EnBx_Draw+0x210>
 890:	a45901b8 	sh	t9,440(v0)
 894:	3c150000 	lui	s5,0x0
 898:	26b50020 	addiu	s5,s5,32
 89c:	00008825 	move	s1,zero
 8a0:	02330019 	multu	s1,s3
 8a4:	00003825 	move	a3,zero
 8a8:	00007012 	mflo	t6
 8ac:	024e8021 	addu	s0,s2,t6
 8b0:	c60c0154 	lwc1	$f12,340(s0)
 8b4:	c60e0158 	lwc1	$f14,344(s0)
 8b8:	0c000000 	jal	0 <EnBx_Init>
 8bc:	8e06015c 	lw	a2,348(s0)
 8c0:	02340019 	multu	s1,s4
 8c4:	24070001 	li	a3,1
 8c8:	00004812 	mflo	t1
 8cc:	02491021 	addu	v0,s2,t1
 8d0:	844401b4 	lh	a0,436(v0)
 8d4:	844501b6 	lh	a1,438(v0)
 8d8:	0c000000 	jal	0 <EnBx_Init>
 8dc:	844601b8 	lh	a2,440(v0)
 8e0:	c60c0184 	lwc1	$f12,388(s0)
 8e4:	c60e0188 	lwc1	$f14,392(s0)
 8e8:	8e06018c 	lw	a2,396(s0)
 8ec:	0c000000 	jal	0 <EnBx_Init>
 8f0:	24070001 	li	a3,1
 8f4:	02c02025 	move	a0,s6
 8f8:	02a02825 	move	a1,s5
 8fc:	0c000000 	jal	0 <EnBx_Init>
 900:	240601fb 	li	a2,507
 904:	26310001 	addiu	s1,s1,1
 908:	00118c00 	sll	s1,s1,0x10
 90c:	00118c03 	sra	s1,s1,0x10
 910:	2a210004 	slti	at,s1,4
 914:	1420ffe2 	bnez	at,8a0 <EnBx_Draw+0x284>
 918:	26d60040 	addiu	s6,s6,64
 91c:	8ee202c0 	lw	v0,704(s7)
 920:	3c0b0000 	lui	t3,0x0
 924:	256b0000 	addiu	t3,t3,0
 928:	244a0008 	addiu	t2,v0,8
 92c:	aeea02c0 	sw	t2,704(s7)
 930:	3c08de00 	lui	t0,0xde00
 934:	ac480000 	sw	t0,0(v0)
 938:	ac4b0004 	sw	t3,4(v0)
 93c:	8fac00b4 	lw	t4,180(sp)
 940:	3c060000 	lui	a2,0x0
 944:	24c60030 	addiu	a2,a2,48
 948:	27a4008c 	addiu	a0,sp,140
 94c:	240701ff 	li	a3,511
 950:	0c000000 	jal	0 <EnBx_Init>
 954:	8d850000 	lw	a1,0(t4)
 958:	8fbf0064 	lw	ra,100(sp)
 95c:	d7b40030 	ldc1	$f20,48(sp)
 960:	d7b60038 	ldc1	$f22,56(sp)
 964:	8fb00044 	lw	s0,68(sp)
 968:	8fb10048 	lw	s1,72(sp)
 96c:	8fb2004c 	lw	s2,76(sp)
 970:	8fb30050 	lw	s3,80(sp)
 974:	8fb40054 	lw	s4,84(sp)
 978:	8fb50058 	lw	s5,88(sp)
 97c:	8fb6005c 	lw	s6,92(sp)
 980:	8fb70060 	lw	s7,96(sp)
 984:	03e00008 	jr	ra
 988:	27bd00b0 	addiu	sp,sp,176
 98c:	00000000 	nop
