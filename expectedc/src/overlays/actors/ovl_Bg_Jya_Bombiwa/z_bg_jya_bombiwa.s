
build/src/overlays/actors/ovl_Bg_Jya_Bombiwa/z_bg_jya_bombiwa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgJyaBombiwa_SetupDynaPoly>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <BgJyaBombiwa_SetupDynaPoly+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	240600ae 	li	a2,174
  6c:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgJyaBombiwa_InitCollider>:
  88:	27bdffd8 	addiu	sp,sp,-40
  8c:	00803025 	move	a2,a0
  90:	afa5002c 	sw	a1,44(sp)
  94:	00a02025 	move	a0,a1
  98:	afbf001c 	sw	ra,28(sp)
  9c:	24c50168 	addiu	a1,a2,360
  a0:	afa50020 	sw	a1,32(sp)
  a4:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
  a8:	afa60028 	sw	a2,40(sp)
  ac:	8fa60028 	lw	a2,40(sp)
  b0:	3c070000 	lui	a3,0x0
  b4:	8fa50020 	lw	a1,32(sp)
  b8:	24ce0188 	addiu	t6,a2,392
  bc:	afae0010 	sw	t6,16(sp)
  c0:	24e70044 	addiu	a3,a3,68
  c4:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
  c8:	8fa4002c 	lw	a0,44(sp)
  cc:	8fbf001c 	lw	ra,28(sp)
  d0:	27bd0028 	addiu	sp,sp,40
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop

000000dc <BgJyaBombiwa_Init>:
  dc:	27bdffe0 	addiu	sp,sp,-32
  e0:	afbf001c 	sw	ra,28(sp)
  e4:	afb00018 	sw	s0,24(sp)
  e8:	afa50024 	sw	a1,36(sp)
  ec:	848e001c 	lh	t6,28(a0)
  f0:	00808025 	move	s0,a0
  f4:	24010029 	li	at,41
  f8:	31cf003f 	andi	t7,t6,0x3f
  fc:	11e1000e 	beq	t7,at,138 <BgJyaBombiwa_Init+0x5c>
 100:	3c040000 	lui	a0,0x0
 104:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 108:	24840058 	addiu	a0,a0,88
 10c:	8607001c 	lh	a3,28(s0)
 110:	3c040000 	lui	a0,0x0
 114:	3c050000 	lui	a1,0x0
 118:	24a500a0 	addiu	a1,a1,160
 11c:	24840064 	addiu	a0,a0,100
 120:	240600da 	li	a2,218
 124:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 128:	30e7003f 	andi	a3,a3,0x3f
 12c:	3c040000 	lui	a0,0x0
 130:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 134:	248400b8 	addiu	a0,a0,184
 138:	3c060000 	lui	a2,0x0
 13c:	24c60000 	addiu	a2,a2,0
 140:	02002025 	move	a0,s0
 144:	8fa50024 	lw	a1,36(sp)
 148:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 14c:	00003825 	move	a3,zero
 150:	02002025 	move	a0,s0
 154:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 158:	8fa50024 	lw	a1,36(sp)
 15c:	8605001c 	lh	a1,28(s0)
 160:	8fa40024 	lw	a0,36(sp)
 164:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 168:	30a5003f 	andi	a1,a1,0x3f
 16c:	10400005 	beqz	v0,184 <BgJyaBombiwa_Init+0xa8>
 170:	02002025 	move	a0,s0
 174:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 178:	02002025 	move	a0,s0
 17c:	10000009 	b	1a4 <BgJyaBombiwa_Init+0xc8>
 180:	8fbf001c 	lw	ra,28(sp)
 184:	3c050000 	lui	a1,0x0
 188:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 18c:	24a50054 	addiu	a1,a1,84
 190:	3c040000 	lui	a0,0x0
 194:	248400bc 	addiu	a0,a0,188
 198:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 19c:	8605001c 	lh	a1,28(s0)
 1a0:	8fbf001c 	lw	ra,28(sp)
 1a4:	8fb00018 	lw	s0,24(sp)
 1a8:	27bd0020 	addiu	sp,sp,32
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <BgJyaBombiwa_Destroy>:
 1b4:	27bdffe8 	addiu	sp,sp,-24
 1b8:	afa40018 	sw	a0,24(sp)
 1bc:	8fae0018 	lw	t6,24(sp)
 1c0:	afbf0014 	sw	ra,20(sp)
 1c4:	00a03825 	move	a3,a1
 1c8:	00a02025 	move	a0,a1
 1cc:	8dc6014c 	lw	a2,332(t6)
 1d0:	afa7001c 	sw	a3,28(sp)
 1d4:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 1d8:	24a50810 	addiu	a1,a1,2064
 1dc:	8fa50018 	lw	a1,24(sp)
 1e0:	8fa4001c 	lw	a0,28(sp)
 1e4:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 1e8:	24a50168 	addiu	a1,a1,360
 1ec:	8fbf0014 	lw	ra,20(sp)
 1f0:	27bd0018 	addiu	sp,sp,24
 1f4:	03e00008 	jr	ra
 1f8:	00000000 	nop

000001fc <BgJyaBombiwa_Break>:
 1fc:	27bdff38 	addiu	sp,sp,-200
 200:	f7be0070 	sdc1	$f30,112(sp)
 204:	3c014140 	lui	at,0x4140
 208:	4481f000 	mtc1	at,$f30
 20c:	f7bc0068 	sdc1	$f28,104(sp)
 210:	3c01430c 	lui	at,0x430c
 214:	4481e000 	mtc1	at,$f28
 218:	f7ba0060 	sdc1	$f26,96(sp)
 21c:	3c014120 	lui	at,0x4120
 220:	4481d000 	mtc1	at,$f26
 224:	f7b80058 	sdc1	$f24,88(sp)
 228:	3c013f00 	lui	at,0x3f00
 22c:	4481c000 	mtc1	at,$f24
 230:	f7b60050 	sdc1	$f22,80(sp)
 234:	3c014220 	lui	at,0x4220
 238:	4481b000 	mtc1	at,$f22
 23c:	afbe0098 	sw	s8,152(sp)
 240:	f7b40048 	sdc1	$f20,72(sp)
 244:	3c0142a0 	lui	at,0x42a0
 248:	afb70094 	sw	s7,148(sp)
 24c:	afb60090 	sw	s6,144(sp)
 250:	afb5008c 	sw	s5,140(sp)
 254:	afb20080 	sw	s2,128(sp)
 258:	3c1e0000 	lui	s8,0x0
 25c:	4481a000 	mtc1	at,$f20
 260:	0080a825 	move	s5,a0
 264:	afbf009c 	sw	ra,156(sp)
 268:	afb40088 	sw	s4,136(sp)
 26c:	afb30084 	sw	s3,132(sp)
 270:	afb1007c 	sw	s1,124(sp)
 274:	afb00078 	sw	s0,120(sp)
 278:	afa500cc 	sw	a1,204(sp)
 27c:	27de0000 	addiu	s8,s8,0
 280:	00009025 	move	s2,zero
 284:	27b600bc 	addiu	s6,sp,188
 288:	27b700b0 	addiu	s7,sp,176
 28c:	2413000c 	li	s3,12
 290:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 294:	24140008 	li	s4,8
 298:	46140102 	mul.s	$f4,$f0,$f20
 29c:	c6a60024 	lwc1	$f6,36(s5)
 2a0:	46062200 	add.s	$f8,$f4,$f6
 2a4:	46164281 	sub.s	$f10,$f8,$f22
 2a8:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 2ac:	e7aa00bc 	swc1	$f10,188(sp)
 2b0:	461c0402 	mul.s	$f16,$f0,$f28
 2b4:	c6b20028 	lwc1	$f18,40(s5)
 2b8:	46128100 	add.s	$f4,$f16,$f18
 2bc:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 2c0:	e7a400c0 	swc1	$f4,192(sp)
 2c4:	46140182 	mul.s	$f6,$f0,$f20
 2c8:	c6a8002c 	lwc1	$f8,44(s5)
 2cc:	46083280 	add.s	$f10,$f6,$f8
 2d0:	46165401 	sub.s	$f16,$f10,$f22
 2d4:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 2d8:	e7b000c4 	swc1	$f16,196(sp)
 2dc:	46180481 	sub.s	$f18,$f0,$f24
 2e0:	461a9102 	mul.s	$f4,$f18,$f26
 2e4:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 2e8:	e7a400b0 	swc1	$f4,176(sp)
 2ec:	461e0182 	mul.s	$f6,$f0,$f30
 2f0:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 2f4:	e7a600b4 	swc1	$f6,180(sp)
 2f8:	44928000 	mtc1	s2,$f16
 2fc:	46180201 	sub.s	$f8,$f0,$f24
 300:	3c010000 	lui	at,0x0
 304:	c42400e4 	lwc1	$f4,228(at)
 308:	468084a0 	cvt.s.w	$f18,$f16
 30c:	461a4282 	mul.s	$f10,$f8,$f26
 310:	24100001 	li	s0,1
 314:	46049182 	mul.s	$f6,$f18,$f4
 318:	e7aa00b8 	swc1	$f10,184(sp)
 31c:	4600320d 	trunc.w.s	$f8,$f6
 320:	44114000 	mfc1	s1,$f8
 324:	00000000 	nop
 328:	26310003 	addiu	s1,s1,3
 32c:	00118c00 	sll	s1,s1,0x10
 330:	00118c03 	sra	s1,s1,0x10
 334:	2a210010 	slti	at,s1,16
 338:	14200003 	bnez	at,348 <BgJyaBombiwa_Break+0x14c>
 33c:	00000000 	nop
 340:	10000001 	b	348 <BgJyaBombiwa_Break+0x14c>
 344:	24100005 	li	s0,5
 348:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 34c:	00000000 	nop
 350:	3c010000 	lui	at,0x0
 354:	c42a00e8 	lwc1	$f10,232(at)
 358:	8fa400cc 	lw	a0,204(sp)
 35c:	02c02825 	move	a1,s6
 360:	460a003c 	c.lt.s	$f0,$f10
 364:	02e03025 	move	a2,s7
 368:	02c03825 	move	a3,s6
 36c:	240ffe70 	li	t7,-400
 370:	45000005 	bc1f	388 <BgJyaBombiwa_Break+0x18c>
 374:	24180001 	li	t8,1
 378:	36100040 	ori	s0,s0,0x40
 37c:	00108400 	sll	s0,s0,0x10
 380:	10000008 	b	3a4 <BgJyaBombiwa_Break+0x1a8>
 384:	00108403 	sra	s0,s0,0x10
 388:	36100020 	ori	s0,s0,0x20
 38c:	00108400 	sll	s0,s0,0x10
 390:	2a21000a 	slti	at,s1,10
 394:	10200003 	beqz	at,3a4 <BgJyaBombiwa_Break+0x1a8>
 398:	00108403 	sra	s0,s0,0x10
 39c:	24130050 	li	s3,80
 3a0:	24140050 	li	s4,80
 3a4:	24190014 	li	t9,20
 3a8:	24080050 	li	t0,80
 3ac:	2409ffff 	li	t1,-1
 3b0:	240a00f1 	li	t2,241
 3b4:	afaa0038 	sw	t2,56(sp)
 3b8:	afa90034 	sw	t1,52(sp)
 3bc:	afa80030 	sw	t0,48(sp)
 3c0:	afb9002c 	sw	t9,44(sp)
 3c4:	afaf0010 	sw	t7,16(sp)
 3c8:	afb00014 	sw	s0,20(sp)
 3cc:	afb30018 	sw	s3,24(sp)
 3d0:	afb4001c 	sw	s4,28(sp)
 3d4:	afa00020 	sw	zero,32(sp)
 3d8:	afb10024 	sw	s1,36(sp)
 3dc:	afb80028 	sw	t8,40(sp)
 3e0:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 3e4:	afbe003c 	sw	s8,60(sp)
 3e8:	26520001 	addiu	s2,s2,1
 3ec:	24010010 	li	at,16
 3f0:	5641ffa7 	bnel	s2,at,290 <BgJyaBombiwa_Break+0x94>
 3f4:	2413000c 	li	s3,12
 3f8:	c6b00024 	lwc1	$f16,36(s5)
 3fc:	3c01428c 	lui	at,0x428c
 400:	44812000 	mtc1	at,$f4
 404:	e7b000bc 	swc1	$f16,188(sp)
 408:	c6b20028 	lwc1	$f18,40(s5)
 40c:	240b0064 	li	t3,100
 410:	240c00a0 	li	t4,160
 414:	46049180 	add.s	$f6,$f18,$f4
 418:	240d0001 	li	t5,1
 41c:	8fa400cc 	lw	a0,204(sp)
 420:	02c02825 	move	a1,s6
 424:	e7a600c0 	swc1	$f6,192(sp)
 428:	c6a8002c 	lwc1	$f8,44(s5)
 42c:	afad0018 	sw	t5,24(sp)
 430:	afac0014 	sw	t4,20(sp)
 434:	afab0010 	sw	t3,16(sp)
 438:	3c0642c8 	lui	a2,0x42c8
 43c:	2407000a 	li	a3,10
 440:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 444:	e7a800c4 	swc1	$f8,196(sp)
 448:	8fbf009c 	lw	ra,156(sp)
 44c:	d7b40048 	ldc1	$f20,72(sp)
 450:	d7b60050 	ldc1	$f22,80(sp)
 454:	d7b80058 	ldc1	$f24,88(sp)
 458:	d7ba0060 	ldc1	$f26,96(sp)
 45c:	d7bc0068 	ldc1	$f28,104(sp)
 460:	d7be0070 	ldc1	$f30,112(sp)
 464:	8fb00078 	lw	s0,120(sp)
 468:	8fb1007c 	lw	s1,124(sp)
 46c:	8fb20080 	lw	s2,128(sp)
 470:	8fb30084 	lw	s3,132(sp)
 474:	8fb40088 	lw	s4,136(sp)
 478:	8fb5008c 	lw	s5,140(sp)
 47c:	8fb60090 	lw	s6,144(sp)
 480:	8fb70094 	lw	s7,148(sp)
 484:	8fbe0098 	lw	s8,152(sp)
 488:	03e00008 	jr	ra
 48c:	27bd00c8 	addiu	sp,sp,200

00000490 <BgJyaBombiwa_Update>:
 490:	27bdffe0 	addiu	sp,sp,-32
 494:	afbf001c 	sw	ra,28(sp)
 498:	afb10018 	sw	s1,24(sp)
 49c:	afb00014 	sw	s0,20(sp)
 4a0:	908e0179 	lbu	t6,377(a0)
 4a4:	00a08025 	move	s0,a1
 4a8:	00808825 	move	s1,a0
 4ac:	31cf0002 	andi	t7,t6,0x2
 4b0:	11e00010 	beqz	t7,4f4 <BgJyaBombiwa_Update+0x64>
 4b4:	3c010001 	lui	at,0x1
 4b8:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 4bc:	00000000 	nop
 4c0:	8625001c 	lh	a1,28(s1)
 4c4:	02002025 	move	a0,s0
 4c8:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 4cc:	30a5003f 	andi	a1,a1,0x3f
 4d0:	02002025 	move	a0,s0
 4d4:	26250024 	addiu	a1,s1,36
 4d8:	24060028 	li	a2,40
 4dc:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 4e0:	24072810 	li	a3,10256
 4e4:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 4e8:	02202025 	move	a0,s1
 4ec:	10000007 	b	50c <BgJyaBombiwa_Update+0x7c>
 4f0:	8fbf001c 	lw	ra,28(sp)
 4f4:	34211e60 	ori	at,at,0x1e60
 4f8:	02012821 	addu	a1,s0,at
 4fc:	02002025 	move	a0,s0
 500:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 504:	26260168 	addiu	a2,s1,360
 508:	8fbf001c 	lw	ra,28(sp)
 50c:	8fb00014 	lw	s0,20(sp)
 510:	8fb10018 	lw	s1,24(sp)
 514:	03e00008 	jr	ra
 518:	27bd0020 	addiu	sp,sp,32

0000051c <BgJyaBombiwa_Draw>:
 51c:	27bdffe8 	addiu	sp,sp,-24
 520:	afa40018 	sw	a0,24(sp)
 524:	00a02025 	move	a0,a1
 528:	afbf0014 	sw	ra,20(sp)
 52c:	3c050000 	lui	a1,0x0
 530:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 534:	24a50000 	addiu	a1,a1,0
 538:	8fa50018 	lw	a1,24(sp)
 53c:	00002025 	move	a0,zero
 540:	0c000000 	jal	0 <BgJyaBombiwa_SetupDynaPoly>
 544:	24a50168 	addiu	a1,a1,360
 548:	8fbf0014 	lw	ra,20(sp)
 54c:	27bd0018 	addiu	sp,sp,24
 550:	03e00008 	jr	ra
 554:	00000000 	nop
	...
