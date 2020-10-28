
build/src/overlays/actors/ovl_Obj_Hamishi/z_obj_hamishi.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B92F90>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	00803025 	move	a2,a0
   8:	afa50024 	sw	a1,36(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf0014 	sw	ra,20(sp)
  14:	24c5014c 	addiu	a1,a2,332
  18:	afa50018 	sw	a1,24(sp)
  1c:	0c000000 	jal	0 <func_80B92F90>
  20:	afa60020 	sw	a2,32(sp)
  24:	3c070000 	lui	a3,0x0
  28:	8fa60020 	lw	a2,32(sp)
  2c:	24e70000 	addiu	a3,a3,0
  30:	8fa40024 	lw	a0,36(sp)
  34:	0c000000 	jal	0 <func_80B92F90>
  38:	8fa50018 	lw	a1,24(sp)
  3c:	8fa40020 	lw	a0,32(sp)
  40:	0c000000 	jal	0 <func_80B92F90>
  44:	8fa50018 	lw	a1,24(sp)
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	27bd0020 	addiu	sp,sp,32
  50:	03e00008 	jr	ra
  54:	00000000 	nop

00000058 <func_80B92FE8>:
  58:	27bdffe0 	addiu	sp,sp,-32
  5c:	afbf001c 	sw	ra,28(sp)
  60:	afb00018 	sw	s0,24(sp)
  64:	848201a0 	lh	v0,416(a0)
  68:	00808025 	move	s0,a0
  6c:	3c063f80 	lui	a2,0x3f80
  70:	18400044 	blez	v0,184 <func_80B92FE8+0x12c>
  74:	244effff 	addiu	t6,v0,-1
  78:	848f01a2 	lh	t7,418(a0)
  7c:	849901a4 	lh	t9,420(a0)
  80:	3c063e19 	lui	a2,0x3e19
  84:	25f81388 	addiu	t8,t7,5000
  88:	27280e10 	addiu	t0,t9,3600
  8c:	a48e01a0 	sh	t6,416(a0)
  90:	a49801a2 	sh	t8,418(a0)
  94:	a48801a4 	sh	t0,420(a0)
  98:	34c6999a 	ori	a2,a2,0x999a
  9c:	24840198 	addiu	a0,a0,408
  a0:	0c000000 	jal	0 <func_80B92F90>
  a4:	24050000 	li	a1,0
  a8:	2604019c 	addiu	a0,s0,412
  ac:	24050000 	li	a1,0
  b0:	0c000000 	jal	0 <func_80B92F90>
  b4:	3c064220 	lui	a2,0x4220
  b8:	860401a2 	lh	a0,418(s0)
  bc:	00042080 	sll	a0,a0,0x2
  c0:	00042400 	sll	a0,a0,0x10
  c4:	0c000000 	jal	0 <func_80B92F90>
  c8:	00042403 	sra	a0,a0,0x10
  cc:	c6040198 	lwc1	$f4,408(s0)
  d0:	860401a2 	lh	a0,418(s0)
  d4:	c6080008 	lwc1	$f8,8(s0)
  d8:	46040182 	mul.s	$f6,$f0,$f4
  dc:	00800821 	move	at,a0
  e0:	000420c0 	sll	a0,a0,0x3
  e4:	00812023 	subu	a0,a0,at
  e8:	00042400 	sll	a0,a0,0x10
  ec:	00042403 	sra	a0,a0,0x10
  f0:	46083280 	add.s	$f10,$f6,$f8
  f4:	0c000000 	jal	0 <func_80B92F90>
  f8:	e60a0024 	swc1	$f10,36(s0)
  fc:	c6100198 	lwc1	$f16,408(s0)
 100:	c6040010 	lwc1	$f4,16(s0)
 104:	860401a4 	lh	a0,420(s0)
 108:	46100482 	mul.s	$f18,$f0,$f16
 10c:	00042080 	sll	a0,a0,0x2
 110:	00042400 	sll	a0,a0,0x10
 114:	00042403 	sra	a0,a0,0x10
 118:	46049180 	add.s	$f6,$f18,$f4
 11c:	0c000000 	jal	0 <func_80B92F90>
 120:	e606002c 	swc1	$f6,44(s0)
 124:	c608019c 	lwc1	$f8,412(s0)
 128:	860401a4 	lh	a0,420(s0)
 12c:	860d0014 	lh	t5,20(s0)
 130:	46080282 	mul.s	$f10,$f0,$f8
 134:	00800821 	move	at,a0
 138:	000420c0 	sll	a0,a0,0x3
 13c:	00812023 	subu	a0,a0,at
 140:	00042400 	sll	a0,a0,0x10
 144:	00042403 	sra	a0,a0,0x10
 148:	4600540d 	trunc.w.s	$f16,$f10
 14c:	440c8000 	mfc1	t4,$f16
 150:	00000000 	nop
 154:	018d7021 	addu	t6,t4,t5
 158:	0c000000 	jal	0 <func_80B92F90>
 15c:	a60e00b4 	sh	t6,180(s0)
 160:	c612019c 	lwc1	$f18,412(s0)
 164:	86090018 	lh	t1,24(s0)
 168:	46120102 	mul.s	$f4,$f0,$f18
 16c:	4600218d 	trunc.w.s	$f6,$f4
 170:	44083000 	mfc1	t0,$f6
 174:	00000000 	nop
 178:	01095021 	addu	t2,t0,t1
 17c:	10000010 	b	1c0 <func_80B92FE8+0x168>
 180:	a60a00b8 	sh	t2,184(s0)
 184:	26040024 	addiu	a0,s0,36
 188:	0c000000 	jal	0 <func_80B92F90>
 18c:	8e050008 	lw	a1,8(s0)
 190:	2604002c 	addiu	a0,s0,44
 194:	8e050010 	lw	a1,16(s0)
 198:	0c000000 	jal	0 <func_80B92F90>
 19c:	3c063f80 	lui	a2,0x3f80
 1a0:	260400b4 	addiu	a0,s0,180
 1a4:	86050014 	lh	a1,20(s0)
 1a8:	0c000000 	jal	0 <func_80B92F90>
 1ac:	24060bb8 	li	a2,3000
 1b0:	260400b8 	addiu	a0,s0,184
 1b4:	86050018 	lh	a1,24(s0)
 1b8:	0c000000 	jal	0 <func_80B92F90>
 1bc:	24060bb8 	li	a2,3000
 1c0:	8fbf001c 	lw	ra,28(sp)
 1c4:	8fb00018 	lw	s0,24(sp)
 1c8:	27bd0020 	addiu	sp,sp,32
 1cc:	03e00008 	jr	ra
 1d0:	00000000 	nop

000001d4 <func_80B93164>:
 1d4:	27bdff28 	addiu	sp,sp,-216
 1d8:	f7be0070 	sdc1	$f30,112(sp)
 1dc:	3c014000 	lui	at,0x4000
 1e0:	4481f000 	mtc1	at,$f30
 1e4:	f7bc0068 	sdc1	$f28,104(sp)
 1e8:	3c0140a0 	lui	at,0x40a0
 1ec:	4481e000 	mtc1	at,$f28
 1f0:	f7ba0060 	sdc1	$f26,96(sp)
 1f4:	3c014220 	lui	at,0x4220
 1f8:	4481d000 	mtc1	at,$f26
 1fc:	afbe0098 	sw	s8,152(sp)
 200:	afb30084 	sw	s3,132(sp)
 204:	f7b80058 	sdc1	$f24,88(sp)
 208:	3c014120 	lui	at,0x4120
 20c:	afb70094 	sw	s7,148(sp)
 210:	afb60090 	sw	s6,144(sp)
 214:	afb5008c 	sw	s5,140(sp)
 218:	afb40088 	sw	s4,136(sp)
 21c:	afb20080 	sw	s2,128(sp)
 220:	afb1007c 	sw	s1,124(sp)
 224:	afb00078 	sw	s0,120(sp)
 228:	3c130000 	lui	s3,0x0
 22c:	3c1e0501 	lui	s8,0x501
 230:	4481c000 	mtc1	at,$f24
 234:	00809025 	move	s2,a0
 238:	00a0a825 	move	s5,a1
 23c:	afbf009c 	sw	ra,156(sp)
 240:	f7b60050 	sdc1	$f22,80(sp)
 244:	f7b40048 	sdc1	$f20,72(sp)
 248:	241003e8 	li	s0,1000
 24c:	27dea5e8 	addiu	s8,s8,-23064
 250:	26730000 	addiu	s3,s3,0
 254:	00008825 	move	s1,zero
 258:	24940024 	addiu	s4,a0,36
 25c:	27b600bc 	addiu	s6,sp,188
 260:	27b700c8 	addiu	s7,sp,200
 264:	26104e20 	addiu	s0,s0,20000
 268:	00108400 	sll	s0,s0,0x10
 26c:	0c000000 	jal	0 <func_80B92F90>
 270:	00108403 	sra	s0,s0,0x10
 274:	46180502 	mul.s	$f20,$f0,$f24
 278:	00102400 	sll	a0,s0,0x10
 27c:	0c000000 	jal	0 <func_80B92F90>
 280:	00042403 	sra	a0,a0,0x10
 284:	46140102 	mul.s	$f4,$f0,$f20
 288:	c6460024 	lwc1	$f6,36(s2)
 28c:	46062200 	add.s	$f8,$f4,$f6
 290:	0c000000 	jal	0 <func_80B92F90>
 294:	e7a800bc 	swc1	$f8,188(sp)
 298:	461a0282 	mul.s	$f10,$f0,$f26
 29c:	c6500028 	lwc1	$f16,40(s2)
 2a0:	00102400 	sll	a0,s0,0x10
 2a4:	00042403 	sra	a0,a0,0x10
 2a8:	46105480 	add.s	$f18,$f10,$f16
 2ac:	461c9100 	add.s	$f4,$f18,$f28
 2b0:	0c000000 	jal	0 <func_80B92F90>
 2b4:	e7a400c0 	swc1	$f4,192(sp)
 2b8:	46140182 	mul.s	$f6,$f0,$f20
 2bc:	c648002c 	lwc1	$f8,44(s2)
 2c0:	46083280 	add.s	$f10,$f6,$f8
 2c4:	0c000000 	jal	0 <func_80B92F90>
 2c8:	e7aa00c4 	swc1	$f10,196(sp)
 2cc:	46180402 	mul.s	$f16,$f0,$f24
 2d0:	00102400 	sll	a0,s0,0x10
 2d4:	00042403 	sra	a0,a0,0x10
 2d8:	0c000000 	jal	0 <func_80B92F90>
 2dc:	461e8500 	add.s	$f20,$f16,$f30
 2e0:	46140482 	mul.s	$f18,$f0,$f20
 2e4:	0c000000 	jal	0 <func_80B92F90>
 2e8:	e7b200c8 	swc1	$f18,200(sp)
 2ec:	0c000000 	jal	0 <func_80B92F90>
 2f0:	46000586 	mov.s	$f22,$f0
 2f4:	44912000 	mtc1	s1,$f4
 2f8:	3c014020 	lui	at,0x4020
 2fc:	44815000 	mtc1	at,$f10
 300:	468021a0 	cvt.s.w	$f6,$f4
 304:	3c014170 	lui	at,0x4170
 308:	44819000 	mtc1	at,$f18
 30c:	00102400 	sll	a0,s0,0x10
 310:	00042403 	sra	a0,a0,0x10
 314:	46060202 	mul.s	$f8,$f0,$f6
 318:	00000000 	nop
 31c:	460a4402 	mul.s	$f16,$f8,$f10
 320:	00000000 	nop
 324:	4612b102 	mul.s	$f4,$f22,$f18
 328:	46048180 	add.s	$f6,$f16,$f4
 32c:	0c000000 	jal	0 <func_80B92F90>
 330:	e7a600cc 	swc1	$f6,204(sp)
 334:	46140202 	mul.s	$f8,$f0,$f20
 338:	02a02025 	move	a0,s5
 33c:	02c02825 	move	a1,s6
 340:	02e03025 	move	a2,s7
 344:	02803825 	move	a3,s4
 348:	240e001e 	li	t6,30
 34c:	16200004 	bnez	s1,360 <func_80B93164+0x18c>
 350:	e7a800d0 	swc1	$f8,208(sp)
 354:	24020029 	li	v0,41
 358:	10000008 	b	37c <func_80B93164+0x1a8>
 35c:	2403fe3e 	li	v1,-450
 360:	2a210004 	slti	at,s1,4
 364:	10200004 	beqz	at,378 <func_80B93164+0x1a4>
 368:	24020045 	li	v0,69
 36c:	24020025 	li	v0,37
 370:	10000002 	b	37c <func_80B93164+0x1a8>
 374:	2403fe84 	li	v1,-380
 378:	2403fec0 	li	v1,-320
 37c:	86780000 	lh	t8,0(s3)
 380:	240f0005 	li	t7,5
 384:	24190003 	li	t9,3
 388:	24080046 	li	t0,70
 38c:	24090001 	li	t1,1
 390:	240a0002 	li	t2,2
 394:	afaa0038 	sw	t2,56(sp)
 398:	afa90034 	sw	t1,52(sp)
 39c:	afa80030 	sw	t0,48(sp)
 3a0:	afb90028 	sw	t9,40(sp)
 3a4:	afaf001c 	sw	t7,28(sp)
 3a8:	afa30010 	sw	v1,16(sp)
 3ac:	afa20014 	sw	v0,20(sp)
 3b0:	afae0018 	sw	t6,24(sp)
 3b4:	afa00020 	sw	zero,32(sp)
 3b8:	afa0002c 	sw	zero,44(sp)
 3bc:	afbe003c 	sw	s8,60(sp)
 3c0:	0c000000 	jal	0 <func_80B92F90>
 3c4:	afb80024 	sw	t8,36(sp)
 3c8:	26310001 	addiu	s1,s1,1
 3cc:	24010009 	li	at,9
 3d0:	1621ffa4 	bne	s1,at,264 <func_80B93164+0x90>
 3d4:	26730002 	addiu	s3,s3,2
 3d8:	3c01430c 	lui	at,0x430c
 3dc:	4481a000 	mtc1	at,$f20
 3e0:	240b00b4 	li	t3,180
 3e4:	240c005a 	li	t4,90
 3e8:	240d0001 	li	t5,1
 3ec:	4406a000 	mfc1	a2,$f20
 3f0:	afad0018 	sw	t5,24(sp)
 3f4:	afac0014 	sw	t4,20(sp)
 3f8:	afab0010 	sw	t3,16(sp)
 3fc:	02a02025 	move	a0,s5
 400:	02802825 	move	a1,s4
 404:	0c000000 	jal	0 <func_80B92F90>
 408:	24070006 	li	a3,6
 40c:	4406a000 	mfc1	a2,$f20
 410:	240e0050 	li	t6,80
 414:	240f005a 	li	t7,90
 418:	24180001 	li	t8,1
 41c:	afb80018 	sw	t8,24(sp)
 420:	afaf0014 	sw	t7,20(sp)
 424:	afae0010 	sw	t6,16(sp)
 428:	02a02025 	move	a0,s5
 42c:	02802825 	move	a1,s4
 430:	0c000000 	jal	0 <func_80B92F90>
 434:	2407000c 	li	a3,12
 438:	8fbf009c 	lw	ra,156(sp)
 43c:	d7b40048 	ldc1	$f20,72(sp)
 440:	d7b60050 	ldc1	$f22,80(sp)
 444:	d7b80058 	ldc1	$f24,88(sp)
 448:	d7ba0060 	ldc1	$f26,96(sp)
 44c:	d7bc0068 	ldc1	$f28,104(sp)
 450:	d7be0070 	ldc1	$f30,112(sp)
 454:	8fb00078 	lw	s0,120(sp)
 458:	8fb1007c 	lw	s1,124(sp)
 45c:	8fb20080 	lw	s2,128(sp)
 460:	8fb30084 	lw	s3,132(sp)
 464:	8fb40088 	lw	s4,136(sp)
 468:	8fb5008c 	lw	s5,140(sp)
 46c:	8fb60090 	lw	s6,144(sp)
 470:	8fb70094 	lw	s7,148(sp)
 474:	8fbe0098 	lw	s8,152(sp)
 478:	03e00008 	jr	ra
 47c:	27bd00d8 	addiu	sp,sp,216

00000480 <ObjHamishi_Init>:
 480:	27bdffe0 	addiu	sp,sp,-32
 484:	afa50024 	sw	a1,36(sp)
 488:	afbf001c 	sw	ra,28(sp)
 48c:	afb00018 	sw	s0,24(sp)
 490:	3c050000 	lui	a1,0x0
 494:	00808025 	move	s0,a0
 498:	0c000000 	jal	0 <func_80B92F90>
 49c:	24a50000 	addiu	a1,a1,0
 4a0:	8fae0024 	lw	t6,36(sp)
 4a4:	3c01447a 	lui	at,0x447a
 4a8:	91cf1d6c 	lbu	t7,7532(t6)
 4ac:	51e00007 	beqzl	t7,4cc <ObjHamishi_Init+0x4c>
 4b0:	861800b6 	lh	t8,182(s0)
 4b4:	c60400f4 	lwc1	$f4,244(s0)
 4b8:	44813000 	mtc1	at,$f6
 4bc:	00000000 	nop
 4c0:	46062200 	add.s	$f8,$f4,$f6
 4c4:	e60800f4 	swc1	$f8,244(s0)
 4c8:	861800b6 	lh	t8,182(s0)
 4cc:	3c014780 	lui	at,0x4780
 4d0:	5700000b 	bnezl	t8,500 <ObjHamishi_Init+0x80>
 4d4:	02002025 	move	a0,s0
 4d8:	44816000 	mtc1	at,$f12
 4dc:	0c000000 	jal	0 <func_80B92F90>
 4e0:	00000000 	nop
 4e4:	4600028d 	trunc.w.s	$f10,$f0
 4e8:	44025000 	mfc1	v0,$f10
 4ec:	00000000 	nop
 4f0:	a6020016 	sh	v0,22(s0)
 4f4:	a6020032 	sh	v0,50(s0)
 4f8:	a60200b6 	sh	v0,182(s0)
 4fc:	02002025 	move	a0,s0
 500:	0c000000 	jal	0 <func_80B92F90>
 504:	8fa50024 	lw	a1,36(sp)
 508:	3c060000 	lui	a2,0x0
 50c:	24c60000 	addiu	a2,a2,0
 510:	26040098 	addiu	a0,s0,152
 514:	0c000000 	jal	0 <func_80B92F90>
 518:	00002825 	move	a1,zero
 51c:	8605001c 	lh	a1,28(s0)
 520:	8fa40024 	lw	a0,36(sp)
 524:	0c000000 	jal	0 <func_80B92F90>
 528:	30a5003f 	andi	a1,a1,0x3f
 52c:	10400005 	beqz	v0,544 <ObjHamishi_Init+0xc4>
 530:	3c0142a0 	lui	at,0x42a0
 534:	0c000000 	jal	0 <func_80B92F90>
 538:	02002025 	move	a0,s0
 53c:	10000005 	b	554 <ObjHamishi_Init+0xd4>
 540:	8fbf001c 	lw	ra,28(sp)
 544:	44818000 	mtc1	at,$f16
 548:	00000000 	nop
 54c:	e61000bc 	swc1	$f16,188(s0)
 550:	8fbf001c 	lw	ra,28(sp)
 554:	8fb00018 	lw	s0,24(sp)
 558:	27bd0020 	addiu	sp,sp,32
 55c:	03e00008 	jr	ra
 560:	00000000 	nop

00000564 <ObjHamishi_Destroy>:
 564:	27bdffe8 	addiu	sp,sp,-24
 568:	00803825 	move	a3,a0
 56c:	afbf0014 	sw	ra,20(sp)
 570:	00a02025 	move	a0,a1
 574:	0c000000 	jal	0 <func_80B92F90>
 578:	24e5014c 	addiu	a1,a3,332
 57c:	8fbf0014 	lw	ra,20(sp)
 580:	27bd0018 	addiu	sp,sp,24
 584:	03e00008 	jr	ra
 588:	00000000 	nop

0000058c <ObjHamishi_Update>:
 58c:	27bdffd0 	addiu	sp,sp,-48
 590:	afbf001c 	sw	ra,28(sp)
 594:	afb10018 	sw	s1,24(sp)
 598:	afb00014 	sw	s0,20(sp)
 59c:	00808025 	move	s0,a0
 5a0:	0c000000 	jal	0 <func_80B92F90>
 5a4:	00a08825 	move	s1,a1
 5a8:	9202015d 	lbu	v0,349(s0)
 5ac:	304e0002 	andi	t6,v0,0x2
 5b0:	51c0002a 	beqzl	t6,65c <ObjHamishi_Update+0xd0>
 5b4:	3c014416 	lui	at,0x4416
 5b8:	8e0f0188 	lw	t7,392(s0)
 5bc:	3c014000 	lui	at,0x4000
 5c0:	34210040 	ori	at,at,0x40
 5c4:	8df80000 	lw	t8,0(t7)
 5c8:	0301c824 	and	t9,t8,at
 5cc:	53200023 	beqzl	t9,65c <ObjHamishi_Update+0xd0>
 5d0:	3c014416 	lui	at,0x4416
 5d4:	860901a6 	lh	t1,422(s0)
 5d8:	3048fffd 	andi	t0,v0,0xfffd
 5dc:	a208015d 	sb	t0,349(s0)
 5e0:	252a0001 	addiu	t2,t1,1
 5e4:	a60a01a6 	sh	t2,422(s0)
 5e8:	860b01a6 	lh	t3,422(s0)
 5ec:	240c000f 	li	t4,15
 5f0:	02002025 	move	a0,s0
 5f4:	29610002 	slti	at,t3,2
 5f8:	10200008 	beqz	at,61c <ObjHamishi_Update+0x90>
 5fc:	3c014000 	lui	at,0x4000
 600:	44812000 	mtc1	at,$f4
 604:	3c0143c8 	lui	at,0x43c8
 608:	44813000 	mtc1	at,$f6
 60c:	a60c01a0 	sh	t4,416(s0)
 610:	e6040198 	swc1	$f4,408(s0)
 614:	10000023 	b	6a4 <ObjHamishi_Update+0x118>
 618:	e606019c 	swc1	$f6,412(s0)
 61c:	0c000000 	jal	0 <func_80B92F90>
 620:	02202825 	move	a1,s1
 624:	02202025 	move	a0,s1
 628:	26050024 	addiu	a1,s0,36
 62c:	24060028 	li	a2,40
 630:	0c000000 	jal	0 <func_80B92F90>
 634:	24072810 	li	a3,10256
 638:	8605001c 	lh	a1,28(s0)
 63c:	02202025 	move	a0,s1
 640:	0c000000 	jal	0 <func_80B92F90>
 644:	30a5003f 	andi	a1,a1,0x3f
 648:	0c000000 	jal	0 <func_80B92F90>
 64c:	02002025 	move	a0,s0
 650:	10000015 	b	6a8 <ObjHamishi_Update+0x11c>
 654:	8fbf001c 	lw	ra,28(sp)
 658:	3c014416 	lui	at,0x4416
 65c:	44815000 	mtc1	at,$f10
 660:	c6080090 	lwc1	$f8,144(s0)
 664:	3c010001 	lui	at,0x1
 668:	304dfffd 	andi	t5,v0,0xfffd
 66c:	460a403c 	c.lt.s	$f8,$f10
 670:	34211e60 	ori	at,at,0x1e60
 674:	a20d015d 	sb	t5,349(s0)
 678:	02212821 	addu	a1,s1,at
 67c:	45000009 	bc1f	6a4 <ObjHamishi_Update+0x118>
 680:	02202025 	move	a0,s1
 684:	2606014c 	addiu	a2,s0,332
 688:	afa60020 	sw	a2,32(sp)
 68c:	0c000000 	jal	0 <func_80B92F90>
 690:	afa50024 	sw	a1,36(sp)
 694:	8fa50024 	lw	a1,36(sp)
 698:	8fa60020 	lw	a2,32(sp)
 69c:	0c000000 	jal	0 <func_80B92F90>
 6a0:	02202025 	move	a0,s1
 6a4:	8fbf001c 	lw	ra,28(sp)
 6a8:	8fb00014 	lw	s0,20(sp)
 6ac:	8fb10018 	lw	s1,24(sp)
 6b0:	03e00008 	jr	ra
 6b4:	27bd0030 	addiu	sp,sp,48

000006b8 <ObjHamishi_Draw>:
 6b8:	27bdffb8 	addiu	sp,sp,-72
 6bc:	afbf001c 	sw	ra,28(sp)
 6c0:	afb00018 	sw	s0,24(sp)
 6c4:	afa40048 	sw	a0,72(sp)
 6c8:	afa5004c 	sw	a1,76(sp)
 6cc:	8ca50000 	lw	a1,0(a1)
 6d0:	3c060000 	lui	a2,0x0
 6d4:	24c60000 	addiu	a2,a2,0
 6d8:	27a40034 	addiu	a0,sp,52
 6dc:	2407018f 	li	a3,399
 6e0:	0c000000 	jal	0 <func_80B92F90>
 6e4:	00a08025 	move	s0,a1
 6e8:	8faf004c 	lw	t7,76(sp)
 6ec:	0c000000 	jal	0 <func_80B92F90>
 6f0:	8de40000 	lw	a0,0(t7)
 6f4:	8e0202c0 	lw	v0,704(s0)
 6f8:	3c19da38 	lui	t9,0xda38
 6fc:	37390003 	ori	t9,t9,0x3
 700:	24580008 	addiu	t8,v0,8
 704:	ae1802c0 	sw	t8,704(s0)
 708:	ac590000 	sw	t9,0(v0)
 70c:	8fa8004c 	lw	t0,76(sp)
 710:	3c050000 	lui	a1,0x0
 714:	24a50000 	addiu	a1,a1,0
 718:	8d040000 	lw	a0,0(t0)
 71c:	24060194 	li	a2,404
 720:	0c000000 	jal	0 <func_80B92F90>
 724:	afa20030 	sw	v0,48(sp)
 728:	8fa30030 	lw	v1,48(sp)
 72c:	3c0bffaa 	lui	t3,0xffaa
 730:	356b82ff 	ori	t3,t3,0x82ff
 734:	ac620004 	sw	v0,4(v1)
 738:	8e0202c0 	lw	v0,704(s0)
 73c:	3c0afa00 	lui	t2,0xfa00
 740:	3c0e0501 	lui	t6,0x501
 744:	24490008 	addiu	t1,v0,8
 748:	ae0902c0 	sw	t1,704(s0)
 74c:	ac4b0004 	sw	t3,4(v0)
 750:	ac4a0000 	sw	t2,0(v0)
 754:	8e0202c0 	lw	v0,704(s0)
 758:	25cea3b8 	addiu	t6,t6,-23624
 75c:	3c0dde00 	lui	t5,0xde00
 760:	244c0008 	addiu	t4,v0,8
 764:	ae0c02c0 	sw	t4,704(s0)
 768:	ac4e0004 	sw	t6,4(v0)
 76c:	ac4d0000 	sw	t5,0(v0)
 770:	8faf004c 	lw	t7,76(sp)
 774:	3c060000 	lui	a2,0x0
 778:	24c60000 	addiu	a2,a2,0
 77c:	27a40034 	addiu	a0,sp,52
 780:	2407019b 	li	a3,411
 784:	0c000000 	jal	0 <func_80B92F90>
 788:	8de50000 	lw	a1,0(t7)
 78c:	8fbf001c 	lw	ra,28(sp)
 790:	8fb00018 	lw	s0,24(sp)
 794:	27bd0048 	addiu	sp,sp,72
 798:	03e00008 	jr	ra
 79c:	00000000 	nop
