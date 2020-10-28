
build/src/overlays/actors/ovl_Obj_Tsubo/z_obj_tsubo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80BA0D60>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	8483001c 	lh	v1,28(a0)
  10:	00803825 	move	a3,a0
  14:	3062001f 	andi	v0,v1,0x1f
  18:	00021400 	sll	v0,v0,0x10
  1c:	00021403 	sra	v0,v0,0x10
  20:	0440000b 	bltz	v0,50 <func_80BA0D60+0x50>
  24:	2841001a 	slti	at,v0,26
  28:	10200009 	beqz	at,50 <func_80BA0D60+0x50>
  2c:	00a02025 	move	a0,a1
  30:	00037243 	sra	t6,v1,0x9
  34:	31cf003f 	andi	t7,t6,0x3f
  38:	000fc200 	sll	t8,t7,0x8
  3c:	00583025 	or	a2,v0,t8
  40:	00063400 	sll	a2,a2,0x10
  44:	00063403 	sra	a2,a2,0x10
  48:	0c000000 	jal	0 <func_80BA0D60>
  4c:	24e50024 	addiu	a1,a3,36
  50:	8fbf0014 	lw	ra,20(sp)
  54:	27bd0018 	addiu	sp,sp,24
  58:	03e00008 	jr	ra
  5c:	00000000 	nop

00000060 <func_80BA0DC0>:
  60:	c4840060 	lwc1	$f4,96(a0)
  64:	c486006c 	lwc1	$f6,108(a0)
  68:	c4800070 	lwc1	$f0,112(a0)
  6c:	46062200 	add.s	$f8,$f4,$f6
  70:	e4880060 	swc1	$f8,96(a0)
  74:	c48a0060 	lwc1	$f10,96(a0)
  78:	4600503c 	c.lt.s	$f10,$f0
  7c:	00000000 	nop
  80:	45000002 	bc1f	8c <func_80BA0DC0+0x2c>
  84:	00000000 	nop
  88:	e4800060 	swc1	$f0,96(a0)
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <func_80BA0DF4>:
  94:	27bdffc8 	addiu	sp,sp,-56
  98:	afbf001c 	sw	ra,28(sp)
  9c:	afa5003c 	sw	a1,60(sp)
  a0:	c4840024 	lwc1	$f4,36(a0)
  a4:	3c0141a0 	lui	at,0x41a0
  a8:	44814000 	mtc1	at,$f8
  ac:	e7a40028 	swc1	$f4,40(sp)
  b0:	c4860028 	lwc1	$f6,40(a0)
  b4:	00803825 	move	a3,a0
  b8:	27ae0028 	addiu	t6,sp,40
  bc:	46083280 	add.s	$f10,$f6,$f8
  c0:	27a60024 	addiu	a2,sp,36
  c4:	e7aa002c 	swc1	$f10,44(sp)
  c8:	c490002c 	lwc1	$f16,44(a0)
  cc:	24a407c0 	addiu	a0,a1,1984
  d0:	27a50034 	addiu	a1,sp,52
  d4:	afa70038 	sw	a3,56(sp)
  d8:	afae0010 	sw	t6,16(sp)
  dc:	0c000000 	jal	0 <func_80BA0D60>
  e0:	e7b00030 	swc1	$f16,48(sp)
  e4:	3c01c6fa 	lui	at,0xc6fa
  e8:	44819000 	mtc1	at,$f18
  ec:	8fa70038 	lw	a3,56(sp)
  f0:	46000086 	mov.s	$f2,$f0
  f4:	4600903c 	c.lt.s	$f18,$f0
  f8:	3c040000 	lui	a0,0x0
  fc:	24e50024 	addiu	a1,a3,36
 100:	45000006 	bc1f	11c <func_80BA0DF4+0x88>
 104:	00000000 	nop
 108:	e4e20028 	swc1	$f2,40(a3)
 10c:	0c000000 	jal	0 <func_80BA0D60>
 110:	24e40008 	addiu	a0,a3,8
 114:	10000004 	b	128 <func_80BA0DF4+0x94>
 118:	24020001 	li	v0,1
 11c:	0c000000 	jal	0 <func_80BA0D60>
 120:	24840000 	addiu	a0,a0,0
 124:	00001025 	move	v0,zero
 128:	8fbf001c 	lw	ra,28(sp)
 12c:	27bd0038 	addiu	sp,sp,56
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <func_80BA0E98>:
 138:	27bdffe0 	addiu	sp,sp,-32
 13c:	00803025 	move	a2,a0
 140:	afa50024 	sw	a1,36(sp)
 144:	00a02025 	move	a0,a1
 148:	afbf0014 	sw	ra,20(sp)
 14c:	24c50150 	addiu	a1,a2,336
 150:	afa50018 	sw	a1,24(sp)
 154:	0c000000 	jal	0 <func_80BA0D60>
 158:	afa60020 	sw	a2,32(sp)
 15c:	3c070000 	lui	a3,0x0
 160:	8fa60020 	lw	a2,32(sp)
 164:	24e70000 	addiu	a3,a3,0
 168:	8fa40024 	lw	a0,36(sp)
 16c:	0c000000 	jal	0 <func_80BA0D60>
 170:	8fa50018 	lw	a1,24(sp)
 174:	8fa40020 	lw	a0,32(sp)
 178:	0c000000 	jal	0 <func_80BA0D60>
 17c:	8fa50018 	lw	a1,24(sp)
 180:	8fbf0014 	lw	ra,20(sp)
 184:	27bd0020 	addiu	sp,sp,32
 188:	03e00008 	jr	ra
 18c:	00000000 	nop

00000190 <ObjTsubo_Init>:
 190:	27bdffe0 	addiu	sp,sp,-32
 194:	afa50024 	sw	a1,36(sp)
 198:	afbf001c 	sw	ra,28(sp)
 19c:	afb00018 	sw	s0,24(sp)
 1a0:	3c050000 	lui	a1,0x0
 1a4:	00808025 	move	s0,a0
 1a8:	0c000000 	jal	0 <func_80BA0D60>
 1ac:	24a50000 	addiu	a1,a1,0
 1b0:	02002025 	move	a0,s0
 1b4:	0c000000 	jal	0 <func_80BA0D60>
 1b8:	8fa50024 	lw	a1,36(sp)
 1bc:	3c060000 	lui	a2,0x0
 1c0:	24c60000 	addiu	a2,a2,0
 1c4:	26040098 	addiu	a0,s0,152
 1c8:	0c000000 	jal	0 <func_80BA0D60>
 1cc:	00002825 	move	a1,zero
 1d0:	02002025 	move	a0,s0
 1d4:	0c000000 	jal	0 <func_80BA0D60>
 1d8:	8fa50024 	lw	a1,36(sp)
 1dc:	14400005 	bnez	v0,1f4 <ObjTsubo_Init+0x64>
 1e0:	8fa40024 	lw	a0,36(sp)
 1e4:	0c000000 	jal	0 <func_80BA0D60>
 1e8:	02002025 	move	a0,s0
 1ec:	10000021 	b	274 <ObjTsubo_Init+0xe4>
 1f0:	8fbf001c 	lw	ra,28(sp)
 1f4:	860e001c 	lh	t6,28(s0)
 1f8:	3c010001 	lui	at,0x1
 1fc:	3c050000 	lui	a1,0x0
 200:	000e7a03 	sra	t7,t6,0x8
 204:	31f80001 	andi	t8,t7,0x1
 208:	0018c840 	sll	t9,t8,0x1
 20c:	00b92821 	addu	a1,a1,t9
 210:	342117a4 	ori	at,at,0x17a4
 214:	00812021 	addu	a0,a0,at
 218:	0c000000 	jal	0 <func_80BA0D60>
 21c:	84a50000 	lh	a1,0(a1)
 220:	a202019c 	sb	v0,412(s0)
 224:	8208019c 	lb	t0,412(s0)
 228:	3c040000 	lui	a0,0x0
 22c:	24840000 	addiu	a0,a0,0
 230:	05010009 	bgez	t0,258 <ObjTsubo_Init+0xc8>
 234:	3c060000 	lui	a2,0x0
 238:	8605001c 	lh	a1,28(s0)
 23c:	24c60000 	addiu	a2,a2,0
 240:	0c000000 	jal	0 <func_80BA0D60>
 244:	2407019a 	li	a3,410
 248:	0c000000 	jal	0 <func_80BA0D60>
 24c:	02002025 	move	a0,s0
 250:	10000008 	b	274 <ObjTsubo_Init+0xe4>
 254:	8fbf001c 	lw	ra,28(sp)
 258:	0c000000 	jal	0 <func_80BA0D60>
 25c:	02002025 	move	a0,s0
 260:	3c040000 	lui	a0,0x0
 264:	24840000 	addiu	a0,a0,0
 268:	0c000000 	jal	0 <func_80BA0D60>
 26c:	8605001c 	lh	a1,28(s0)
 270:	8fbf001c 	lw	ra,28(sp)
 274:	8fb00018 	lw	s0,24(sp)
 278:	27bd0020 	addiu	sp,sp,32
 27c:	03e00008 	jr	ra
 280:	00000000 	nop

00000284 <ObjTsubo_Destroy>:
 284:	27bdffe8 	addiu	sp,sp,-24
 288:	00803825 	move	a3,a0
 28c:	afbf0014 	sw	ra,20(sp)
 290:	00a02025 	move	a0,a1
 294:	0c000000 	jal	0 <func_80BA0D60>
 298:	24e50150 	addiu	a1,a3,336
 29c:	8fbf0014 	lw	ra,20(sp)
 2a0:	27bd0018 	addiu	sp,sp,24
 2a4:	03e00008 	jr	ra
 2a8:	00000000 	nop

000002ac <func_80BA100C>:
 2ac:	27bdff20 	addiu	sp,sp,-224
 2b0:	f7be0070 	sdc1	$f30,112(sp)
 2b4:	3c010000 	lui	at,0x0
 2b8:	c43e0000 	lwc1	$f30,0(at)
 2bc:	f7bc0068 	sdc1	$f28,104(sp)
 2c0:	3c014000 	lui	at,0x4000
 2c4:	4481e000 	mtc1	at,$f28
 2c8:	f7ba0060 	sdc1	$f26,96(sp)
 2cc:	3c0140a0 	lui	at,0x40a0
 2d0:	4481d000 	mtc1	at,$f26
 2d4:	afbe0098 	sw	s8,152(sp)
 2d8:	f7b80058 	sdc1	$f24,88(sp)
 2dc:	3c014100 	lui	at,0x4100
 2e0:	afb70094 	sw	s7,148(sp)
 2e4:	afb60090 	sw	s6,144(sp)
 2e8:	afb5008c 	sw	s5,140(sp)
 2ec:	afb40088 	sw	s4,136(sp)
 2f0:	afb30084 	sw	s3,132(sp)
 2f4:	afb20080 	sw	s2,128(sp)
 2f8:	afb1007c 	sw	s1,124(sp)
 2fc:	3c1e0000 	lui	s8,0x0
 300:	4481c000 	mtc1	at,$f24
 304:	0080a825 	move	s5,a0
 308:	00a0b025 	move	s6,a1
 30c:	afbf009c 	sw	ra,156(sp)
 310:	afb00078 	sw	s0,120(sp)
 314:	f7b60050 	sdc1	$f22,80(sp)
 318:	f7b40048 	sdc1	$f20,72(sp)
 31c:	27de0000 	addiu	s8,s8,0
 320:	00008825 	move	s1,zero
 324:	00009025 	move	s2,zero
 328:	27b300c8 	addiu	s3,sp,200
 32c:	24940024 	addiu	s4,a0,36
 330:	27b700bc 	addiu	s7,sp,188
 334:	00112400 	sll	a0,s1,0x10
 338:	0c000000 	jal	0 <func_80BA0D60>
 33c:	00042403 	sra	a0,a0,0x10
 340:	00112400 	sll	a0,s1,0x10
 344:	46000506 	mov.s	$f20,$f0
 348:	0c000000 	jal	0 <func_80BA0D60>
 34c:	00042403 	sra	a0,a0,0x10
 350:	4618a102 	mul.s	$f4,$f20,$f24
 354:	46000586 	mov.s	$f22,$f0
 358:	0c000000 	jal	0 <func_80BA0D60>
 35c:	e7a400c8 	swc1	$f4,200(sp)
 360:	461a0182 	mul.s	$f6,$f0,$f26
 364:	c7b000c8 	lwc1	$f16,200(sp)
 368:	4618b282 	mul.s	$f10,$f22,$f24
 36c:	00000000 	nop
 370:	461e8482 	mul.s	$f18,$f16,$f30
 374:	461c3200 	add.s	$f8,$f6,$f28
 378:	e7aa00d0 	swc1	$f10,208(sp)
 37c:	e7a800cc 	swc1	$f8,204(sp)
 380:	0c000000 	jal	0 <func_80BA0D60>
 384:	e7b200bc 	swc1	$f18,188(sp)
 388:	461a0102 	mul.s	$f4,$f0,$f26
 38c:	c7a800d0 	lwc1	$f8,208(sp)
 390:	02602025 	move	a0,s3
 394:	02802825 	move	a1,s4
 398:	461e4282 	mul.s	$f10,$f8,$f30
 39c:	02603025 	move	a2,s3
 3a0:	461c2180 	add.s	$f6,$f4,$f28
 3a4:	e7aa00c4 	swc1	$f10,196(sp)
 3a8:	0c000000 	jal	0 <func_80BA0D60>
 3ac:	e7a600c0 	swc1	$f6,192(sp)
 3b0:	0c000000 	jal	0 <func_80BA0D60>
 3b4:	00000000 	nop
 3b8:	3c010000 	lui	at,0x0
 3bc:	c4300000 	lwc1	$f16,0(at)
 3c0:	3c010000 	lui	at,0x0
 3c4:	4610003c 	c.lt.s	$f0,$f16
 3c8:	00000000 	nop
 3cc:	45000003 	bc1f	3dc <func_80BA100C+0x130>
 3d0:	00000000 	nop
 3d4:	10000009 	b	3fc <func_80BA100C+0x150>
 3d8:	24100060 	li	s0,96
 3dc:	c4320000 	lwc1	$f18,0(at)
 3e0:	24100020 	li	s0,32
 3e4:	4612003c 	c.lt.s	$f0,$f18
 3e8:	00000000 	nop
 3ec:	45000003 	bc1f	3fc <func_80BA100C+0x150>
 3f0:	00000000 	nop
 3f4:	10000001 	b	3fc <func_80BA100C+0x150>
 3f8:	24100040 	li	s0,64
 3fc:	0c000000 	jal	0 <func_80BA0D60>
 400:	00000000 	nop
 404:	3c0142be 	lui	at,0x42be
 408:	44812000 	mtc1	at,$f4
 40c:	3c014170 	lui	at,0x4170
 410:	44814000 	mtc1	at,$f8
 414:	46040182 	mul.s	$f6,$f0,$f4
 418:	240eff10 	li	t6,-240
 41c:	240f000a 	li	t7,10
 420:	2418000a 	li	t8,10
 424:	24090020 	li	t1,32
 428:	240a003c 	li	t2,60
 42c:	240bffff 	li	t3,-1
 430:	46083280 	add.s	$f10,$f6,$f8
 434:	afab0034 	sw	t3,52(sp)
 438:	afaa0030 	sw	t2,48(sp)
 43c:	afa9002c 	sw	t1,44(sp)
 440:	4600540d 	trunc.w.s	$f16,$f10
 444:	afb8001c 	sw	t8,28(sp)
 448:	afaf0018 	sw	t7,24(sp)
 44c:	afae0010 	sw	t6,16(sp)
 450:	44088000 	mfc1	t0,$f16
 454:	afb00014 	sw	s0,20(sp)
 458:	afa00020 	sw	zero,32(sp)
 45c:	afa00028 	sw	zero,40(sp)
 460:	afa80024 	sw	t0,36(sp)
 464:	86a2001c 	lh	v0,28(s5)
 468:	3c180000 	lui	t8,0x0
 46c:	02c02025 	move	a0,s6
 470:	00021203 	sra	v0,v0,0x8
 474:	30420001 	andi	v0,v0,0x1
 478:	00026040 	sll	t4,v0,0x1
 47c:	00027880 	sll	t7,v0,0x2
 480:	030fc021 	addu	t8,t8,t7
 484:	03cc6821 	addu	t5,s8,t4
 488:	85ae0000 	lh	t6,0(t5)
 48c:	8f180000 	lw	t8,0(t8)
 490:	02602825 	move	a1,s3
 494:	02e03025 	move	a2,s7
 498:	02803825 	move	a3,s4
 49c:	afae0038 	sw	t6,56(sp)
 4a0:	0c000000 	jal	0 <func_80BA0D60>
 4a4:	afb8003c 	sw	t8,60(sp)
 4a8:	26314e20 	addiu	s1,s1,20000
 4ac:	00118c00 	sll	s1,s1,0x10
 4b0:	26520001 	addiu	s2,s2,1
 4b4:	2401000f 	li	at,15
 4b8:	1641ff9e 	bne	s2,at,334 <func_80BA100C+0x88>
 4bc:	00118c03 	sra	s1,s1,0x10
 4c0:	24190014 	li	t9,20
 4c4:	24080032 	li	t0,50
 4c8:	24090001 	li	t1,1
 4cc:	afa90018 	sw	t1,24(sp)
 4d0:	afa80014 	sw	t0,20(sp)
 4d4:	afb90010 	sw	t9,16(sp)
 4d8:	02c02025 	move	a0,s6
 4dc:	02802825 	move	a1,s4
 4e0:	3c0641f0 	lui	a2,0x41f0
 4e4:	0c000000 	jal	0 <func_80BA0D60>
 4e8:	24070004 	li	a3,4
 4ec:	8fbf009c 	lw	ra,156(sp)
 4f0:	d7b40048 	ldc1	$f20,72(sp)
 4f4:	d7b60050 	ldc1	$f22,80(sp)
 4f8:	d7b80058 	ldc1	$f24,88(sp)
 4fc:	d7ba0060 	ldc1	$f26,96(sp)
 500:	d7bc0068 	ldc1	$f28,104(sp)
 504:	d7be0070 	ldc1	$f30,112(sp)
 508:	8fb00078 	lw	s0,120(sp)
 50c:	8fb1007c 	lw	s1,124(sp)
 510:	8fb20080 	lw	s2,128(sp)
 514:	8fb30084 	lw	s3,132(sp)
 518:	8fb40088 	lw	s4,136(sp)
 51c:	8fb5008c 	lw	s5,140(sp)
 520:	8fb60090 	lw	s6,144(sp)
 524:	8fb70094 	lw	s7,148(sp)
 528:	8fbe0098 	lw	s8,152(sp)
 52c:	03e00008 	jr	ra
 530:	27bd00e0 	addiu	sp,sp,224

00000534 <func_80BA1294>:
 534:	27bdff20 	addiu	sp,sp,-224
 538:	afb40088 	sw	s4,136(sp)
 53c:	afbf009c 	sw	ra,156(sp)
 540:	afbe0098 	sw	s8,152(sp)
 544:	afb70094 	sw	s7,148(sp)
 548:	afb60090 	sw	s6,144(sp)
 54c:	afb5008c 	sw	s5,140(sp)
 550:	afb30084 	sw	s3,132(sp)
 554:	afb20080 	sw	s2,128(sp)
 558:	afb1007c 	sw	s1,124(sp)
 55c:	afb00078 	sw	s0,120(sp)
 560:	f7be0070 	sdc1	$f30,112(sp)
 564:	f7bc0068 	sdc1	$f28,104(sp)
 568:	f7ba0060 	sdc1	$f26,96(sp)
 56c:	f7b80058 	sdc1	$f24,88(sp)
 570:	f7b60050 	sdc1	$f22,80(sp)
 574:	f7b40048 	sdc1	$f20,72(sp)
 578:	afa500e4 	sw	a1,228(sp)
 57c:	24940024 	addiu	s4,a0,36
 580:	8e8f0000 	lw	t7,0(s4)
 584:	27b300c8 	addiu	s3,sp,200
 588:	00808025 	move	s0,a0
 58c:	ae6f0000 	sw	t7,0(s3)
 590:	8e8e0004 	lw	t6,4(s4)
 594:	24180190 	li	t8,400
 598:	02602825 	move	a1,s3
 59c:	ae6e0004 	sw	t6,4(s3)
 5a0:	8e8f0008 	lw	t7,8(s4)
 5a4:	00003025 	move	a2,zero
 5a8:	00003825 	move	a3,zero
 5ac:	ae6f0008 	sw	t7,8(s3)
 5b0:	c7a400cc 	lwc1	$f4,204(sp)
 5b4:	c4860084 	lwc1	$f6,132(a0)
 5b8:	afb000e0 	sw	s0,224(sp)
 5bc:	afb80014 	sw	t8,20(sp)
 5c0:	46062200 	add.s	$f8,$f4,$f6
 5c4:	afa00010 	sw	zero,16(sp)
 5c8:	8fa400e4 	lw	a0,228(sp)
 5cc:	0c000000 	jal	0 <func_80BA0D60>
 5d0:	e7a800cc 	swc1	$f8,204(sp)
 5d4:	3c0140a0 	lui	at,0x40a0
 5d8:	4481f000 	mtc1	at,$f30
 5dc:	3c010000 	lui	at,0x0
 5e0:	c43c0000 	lwc1	$f28,0(at)
 5e4:	3c014000 	lui	at,0x4000
 5e8:	4481d000 	mtc1	at,$f26
 5ec:	3c014100 	lui	at,0x4100
 5f0:	3c170000 	lui	s7,0x0
 5f4:	3c160000 	lui	s6,0x0
 5f8:	4481c000 	mtc1	at,$f24
 5fc:	26d60000 	addiu	s6,s6,0
 600:	26f70000 	addiu	s7,s7,0
 604:	00009025 	move	s2,zero
 608:	00008825 	move	s1,zero
 60c:	241e000f 	li	s8,15
 610:	27b500bc 	addiu	s5,sp,188
 614:	00112400 	sll	a0,s1,0x10
 618:	0c000000 	jal	0 <func_80BA0D60>
 61c:	00042403 	sra	a0,a0,0x10
 620:	00112400 	sll	a0,s1,0x10
 624:	46000506 	mov.s	$f20,$f0
 628:	0c000000 	jal	0 <func_80BA0D60>
 62c:	00042403 	sra	a0,a0,0x10
 630:	4618a282 	mul.s	$f10,$f20,$f24
 634:	46000586 	mov.s	$f22,$f0
 638:	0c000000 	jal	0 <func_80BA0D60>
 63c:	e7aa00c8 	swc1	$f10,200(sp)
 640:	461e0402 	mul.s	$f16,$f0,$f30
 644:	c7a600c8 	lwc1	$f6,200(sp)
 648:	4618b102 	mul.s	$f4,$f22,$f24
 64c:	00000000 	nop
 650:	461c3202 	mul.s	$f8,$f6,$f28
 654:	461a8480 	add.s	$f18,$f16,$f26
 658:	e7a400d0 	swc1	$f4,208(sp)
 65c:	e7b200cc 	swc1	$f18,204(sp)
 660:	0c000000 	jal	0 <func_80BA0D60>
 664:	e7a800bc 	swc1	$f8,188(sp)
 668:	3c014080 	lui	at,0x4080
 66c:	44815000 	mtc1	at,$f10
 670:	c7a400d0 	lwc1	$f4,208(sp)
 674:	02602025 	move	a0,s3
 678:	460a0402 	mul.s	$f16,$f0,$f10
 67c:	02802825 	move	a1,s4
 680:	02603025 	move	a2,s3
 684:	461c2182 	mul.s	$f6,$f4,$f28
 688:	461a8480 	add.s	$f18,$f16,$f26
 68c:	e7a600c4 	swc1	$f6,196(sp)
 690:	0c000000 	jal	0 <func_80BA0D60>
 694:	e7b200c0 	swc1	$f18,192(sp)
 698:	0c000000 	jal	0 <func_80BA0D60>
 69c:	00000000 	nop
 6a0:	3c010000 	lui	at,0x0
 6a4:	c4280000 	lwc1	$f8,0(at)
 6a8:	24100020 	li	s0,32
 6ac:	4608003c 	c.lt.s	$f0,$f8
 6b0:	00000000 	nop
 6b4:	45000003 	bc1f	6c4 <func_80BA1294+0x190>
 6b8:	00000000 	nop
 6bc:	10000001 	b	6c4 <func_80BA1294+0x190>
 6c0:	24100040 	li	s0,64
 6c4:	0c000000 	jal	0 <func_80BA0D60>
 6c8:	00000000 	nop
 6cc:	3c0142be 	lui	at,0x42be
 6d0:	44815000 	mtc1	at,$f10
 6d4:	3c014170 	lui	at,0x4170
 6d8:	44819000 	mtc1	at,$f18
 6dc:	460a0402 	mul.s	$f16,$f0,$f10
 6e0:	8faf00e0 	lw	t7,224(sp)
 6e4:	2419ff4c 	li	t9,-180
 6e8:	2408001e 	li	t0,30
 6ec:	2409001e 	li	t1,30
 6f0:	240c0020 	li	t4,32
 6f4:	240d0046 	li	t5,70
 6f8:	46128100 	add.s	$f4,$f16,$f18
 6fc:	240effff 	li	t6,-1
 700:	afae0034 	sw	t6,52(sp)
 704:	afad0030 	sw	t5,48(sp)
 708:	4600218d 	trunc.w.s	$f6,$f4
 70c:	afac002c 	sw	t4,44(sp)
 710:	afa9001c 	sw	t1,28(sp)
 714:	afa80018 	sw	t0,24(sp)
 718:	440b3000 	mfc1	t3,$f6
 71c:	afb90010 	sw	t9,16(sp)
 720:	afb00014 	sw	s0,20(sp)
 724:	afa00020 	sw	zero,32(sp)
 728:	afa00028 	sw	zero,40(sp)
 72c:	afab0024 	sw	t3,36(sp)
 730:	85e2001c 	lh	v0,28(t7)
 734:	8fa400e4 	lw	a0,228(sp)
 738:	02602825 	move	a1,s3
 73c:	00021203 	sra	v0,v0,0x8
 740:	30420001 	andi	v0,v0,0x1
 744:	0002c040 	sll	t8,v0,0x1
 748:	00024880 	sll	t1,v0,0x2
 74c:	02e95021 	addu	t2,s7,t1
 750:	02d8c821 	addu	t9,s6,t8
 754:	87280000 	lh	t0,0(t9)
 758:	8d4b0000 	lw	t3,0(t2)
 75c:	02a03025 	move	a2,s5
 760:	02803825 	move	a3,s4
 764:	afa80038 	sw	t0,56(sp)
 768:	0c000000 	jal	0 <func_80BA0D60>
 76c:	afab003c 	sw	t3,60(sp)
 770:	26314e20 	addiu	s1,s1,20000
 774:	00118c00 	sll	s1,s1,0x10
 778:	26520001 	addiu	s2,s2,1
 77c:	165effa5 	bne	s2,s8,614 <func_80BA1294+0xe0>
 780:	00118c03 	sra	s1,s1,0x10
 784:	8fbf009c 	lw	ra,156(sp)
 788:	d7b40048 	ldc1	$f20,72(sp)
 78c:	d7b60050 	ldc1	$f22,80(sp)
 790:	d7b80058 	ldc1	$f24,88(sp)
 794:	d7ba0060 	ldc1	$f26,96(sp)
 798:	d7bc0068 	ldc1	$f28,104(sp)
 79c:	d7be0070 	ldc1	$f30,112(sp)
 7a0:	8fb00078 	lw	s0,120(sp)
 7a4:	8fb1007c 	lw	s1,124(sp)
 7a8:	8fb20080 	lw	s2,128(sp)
 7ac:	8fb30084 	lw	s3,132(sp)
 7b0:	8fb40088 	lw	s4,136(sp)
 7b4:	8fb5008c 	lw	s5,140(sp)
 7b8:	8fb60090 	lw	s6,144(sp)
 7bc:	8fb70094 	lw	s7,148(sp)
 7c0:	8fbe0098 	lw	s8,152(sp)
 7c4:	03e00008 	jr	ra
 7c8:	27bd00e0 	addiu	sp,sp,224

000007cc <func_80BA152C>:
 7cc:	3c0e0000 	lui	t6,0x0
 7d0:	25ce0000 	addiu	t6,t6,0
 7d4:	03e00008 	jr	ra
 7d8:	ac8e014c 	sw	t6,332(a0)

000007dc <func_80BA153C>:
 7dc:	3c010001 	lui	at,0x1
 7e0:	27bdffe8 	addiu	sp,sp,-24
 7e4:	00803025 	move	a2,a0
 7e8:	342117a4 	ori	at,at,0x17a4
 7ec:	afbf0014 	sw	ra,20(sp)
 7f0:	00a12021 	addu	a0,a1,at
 7f4:	80c5019c 	lb	a1,412(a2)
 7f8:	0c000000 	jal	0 <func_80BA0D60>
 7fc:	afa60018 	sw	a2,24(sp)
 800:	1040000e 	beqz	v0,83c <func_80BA153C+0x60>
 804:	8fa60018 	lw	a2,24(sp)
 808:	80cf019c 	lb	t7,412(a2)
 80c:	3c0e0000 	lui	t6,0x0
 810:	25ce0000 	addiu	t6,t6,0
 814:	acce0134 	sw	t6,308(a2)
 818:	a0cf001e 	sb	t7,30(a2)
 81c:	afa60018 	sw	a2,24(sp)
 820:	0c000000 	jal	0 <func_80BA0D60>
 824:	00c02025 	move	a0,a2
 828:	8fa60018 	lw	a2,24(sp)
 82c:	2401ffef 	li	at,-17
 830:	8cd80004 	lw	t8,4(a2)
 834:	0301c824 	and	t9,t8,at
 838:	acd90004 	sw	t9,4(a2)
 83c:	8fbf0014 	lw	ra,20(sp)
 840:	27bd0018 	addiu	sp,sp,24
 844:	03e00008 	jr	ra
 848:	00000000 	nop

0000084c <func_80BA15AC>:
 84c:	3c0e0000 	lui	t6,0x0
 850:	25ce0000 	addiu	t6,t6,0
 854:	03e00008 	jr	ra
 858:	ac8e014c 	sw	t6,332(a0)

0000085c <func_80BA15BC>:
 85c:	27bdffc0 	addiu	sp,sp,-64
 860:	afbf0024 	sw	ra,36(sp)
 864:	afb10020 	sw	s1,32(sp)
 868:	afb0001c 	sw	s0,28(sp)
 86c:	00808025 	move	s0,a0
 870:	0c000000 	jal	0 <func_80BA0D60>
 874:	00a08825 	move	s1,a1
 878:	50400006 	beqzl	v0,894 <func_80BA15BC+0x38>
 87c:	960e0088 	lhu	t6,136(s0)
 880:	0c000000 	jal	0 <func_80BA0D60>
 884:	02002025 	move	a0,s0
 888:	10000072 	b	a54 <func_80BA15BC+0x1f8>
 88c:	8fbf0024 	lw	ra,36(sp)
 890:	960e0088 	lhu	t6,136(s0)
 894:	3c014170 	lui	at,0x4170
 898:	31cf0020 	andi	t7,t6,0x20
 89c:	51e00017 	beqzl	t7,8fc <func_80BA15BC+0xa0>
 8a0:	92180161 	lbu	t8,353(s0)
 8a4:	44812000 	mtc1	at,$f4
 8a8:	c6060084 	lwc1	$f6,132(s0)
 8ac:	02002025 	move	a0,s0
 8b0:	4606203c 	c.lt.s	$f4,$f6
 8b4:	00000000 	nop
 8b8:	45020010 	bc1fl	8fc <func_80BA15BC+0xa0>
 8bc:	92180161 	lbu	t8,353(s0)
 8c0:	0c000000 	jal	0 <func_80BA0D60>
 8c4:	02202825 	move	a1,s1
 8c8:	02202025 	move	a0,s1
 8cc:	26050024 	addiu	a1,s0,36
 8d0:	24060014 	li	a2,20
 8d4:	0c000000 	jal	0 <func_80BA0D60>
 8d8:	24072887 	li	a3,10375
 8dc:	02002025 	move	a0,s0
 8e0:	0c000000 	jal	0 <func_80BA0D60>
 8e4:	02202825 	move	a1,s1
 8e8:	0c000000 	jal	0 <func_80BA0D60>
 8ec:	02002025 	move	a0,s0
 8f0:	10000058 	b	a54 <func_80BA15BC+0x1f8>
 8f4:	8fbf0024 	lw	ra,36(sp)
 8f8:	92180161 	lbu	t8,353(s0)
 8fc:	33190002 	andi	t9,t8,0x2
 900:	53200018 	beqzl	t9,964 <func_80BA15BC+0x108>
 904:	3c014416 	lui	at,0x4416
 908:	8e08018c 	lw	t0,396(s0)
 90c:	3c014fc1 	lui	at,0x4fc1
 910:	3421fffc 	ori	at,at,0xfffc
 914:	8d090000 	lw	t1,0(t0)
 918:	02002025 	move	a0,s0
 91c:	01215024 	and	t2,t1,at
 920:	51400010 	beqzl	t2,964 <func_80BA15BC+0x108>
 924:	3c014416 	lui	at,0x4416
 928:	0c000000 	jal	0 <func_80BA0D60>
 92c:	02202825 	move	a1,s1
 930:	02002025 	move	a0,s0
 934:	0c000000 	jal	0 <func_80BA0D60>
 938:	02202825 	move	a1,s1
 93c:	02202025 	move	a0,s1
 940:	26050024 	addiu	a1,s0,36
 944:	24060014 	li	a2,20
 948:	0c000000 	jal	0 <func_80BA0D60>
 94c:	24072887 	li	a3,10375
 950:	0c000000 	jal	0 <func_80BA0D60>
 954:	02002025 	move	a0,s0
 958:	1000003e 	b	a54 <func_80BA15BC+0x1f8>
 95c:	8fbf0024 	lw	ra,36(sp)
 960:	3c014416 	lui	at,0x4416
 964:	44814000 	mtc1	at,$f8
 968:	c6000090 	lwc1	$f0,144(s0)
 96c:	02002025 	move	a0,s0
 970:	26050150 	addiu	a1,s0,336
 974:	4608003c 	c.lt.s	$f0,$f8
 978:	00000000 	nop
 97c:	4502001a 	bc1fl	9e8 <func_80BA15BC+0x18c>
 980:	3c0142c8 	lui	at,0x42c8
 984:	0c000000 	jal	0 <func_80BA0D60>
 988:	afa5002c 	sw	a1,44(sp)
 98c:	920b0161 	lbu	t3,353(s0)
 990:	3c010001 	lui	at,0x1
 994:	34211e60 	ori	at,at,0x1e60
 998:	316cfffd 	andi	t4,t3,0xfffd
 99c:	a20c0161 	sb	t4,353(s0)
 9a0:	02212821 	addu	a1,s1,at
 9a4:	afa50028 	sw	a1,40(sp)
 9a8:	8fa6002c 	lw	a2,44(sp)
 9ac:	0c000000 	jal	0 <func_80BA0D60>
 9b0:	02202025 	move	a0,s1
 9b4:	3c014316 	lui	at,0x4316
 9b8:	44815000 	mtc1	at,$f10
 9bc:	c6000090 	lwc1	$f0,144(s0)
 9c0:	8fa50028 	lw	a1,40(sp)
 9c4:	02202025 	move	a0,s1
 9c8:	460a003c 	c.lt.s	$f0,$f10
 9cc:	00000000 	nop
 9d0:	45020005 	bc1fl	9e8 <func_80BA15BC+0x18c>
 9d4:	3c0142c8 	lui	at,0x42c8
 9d8:	0c000000 	jal	0 <func_80BA0D60>
 9dc:	8fa6002c 	lw	a2,44(sp)
 9e0:	c6000090 	lwc1	$f0,144(s0)
 9e4:	3c0142c8 	lui	at,0x42c8
 9e8:	44818000 	mtc1	at,$f16
 9ec:	00000000 	nop
 9f0:	4610003c 	c.lt.s	$f0,$f16
 9f4:	00000000 	nop
 9f8:	45020016 	bc1fl	a54 <func_80BA15BC+0x1f8>
 9fc:	8fbf0024 	lw	ra,36(sp)
 a00:	8e2e1c44 	lw	t6,7236(s1)
 a04:	860d008a 	lh	t5,138(s0)
 a08:	02002025 	move	a0,s0
 a0c:	85cf0032 	lh	t7,50(t6)
 a10:	01af1023 	subu	v0,t5,t7
 a14:	00021400 	sll	v0,v0,0x10
 a18:	00021403 	sra	v0,v0,0x10
 a1c:	04400003 	bltz	v0,a2c <func_80BA15BC+0x1d0>
 a20:	00021823 	negu	v1,v0
 a24:	10000001 	b	a2c <func_80BA15BC+0x1d0>
 a28:	00401825 	move	v1,v0
 a2c:	28615556 	slti	at,v1,21846
 a30:	14200007 	bnez	at,a50 <func_80BA15BC+0x1f4>
 a34:	3c0141f0 	lui	at,0x41f0
 a38:	44810000 	mtc1	at,$f0
 a3c:	02202825 	move	a1,s1
 a40:	00003025 	move	a2,zero
 a44:	44070000 	mfc1	a3,$f0
 a48:	0c000000 	jal	0 <func_80BA0D60>
 a4c:	e7a00010 	swc1	$f0,16(sp)
 a50:	8fbf0024 	lw	ra,36(sp)
 a54:	8fb0001c 	lw	s0,28(sp)
 a58:	8fb10020 	lw	s1,32(sp)
 a5c:	03e00008 	jr	ra
 a60:	27bd0040 	addiu	sp,sp,64

00000a64 <func_80BA17C4>:
 a64:	27bdffe8 	addiu	sp,sp,-24
 a68:	afbf0014 	sw	ra,20(sp)
 a6c:	3c0e0000 	lui	t6,0x0
 a70:	25ce0000 	addiu	t6,t6,0
 a74:	240fffff 	li	t7,-1
 a78:	ac8e014c 	sw	t6,332(a0)
 a7c:	a08f0003 	sb	t7,3(a0)
 a80:	afa40018 	sw	a0,24(sp)
 a84:	0c000000 	jal	0 <func_80BA0D60>
 a88:	2405086f 	li	a1,2159
 a8c:	8fa40018 	lw	a0,24(sp)
 a90:	8c980004 	lw	t8,4(a0)
 a94:	37190010 	ori	t9,t8,0x10
 a98:	ac990004 	sw	t9,4(a0)
 a9c:	8fbf0014 	lw	ra,20(sp)
 aa0:	27bd0018 	addiu	sp,sp,24
 aa4:	03e00008 	jr	ra
 aa8:	00000000 	nop

00000aac <func_80BA180C>:
 aac:	27bdffd8 	addiu	sp,sp,-40
 ab0:	afbf0024 	sw	ra,36(sp)
 ab4:	afb00020 	sw	s0,32(sp)
 ab8:	00808025 	move	s0,a0
 abc:	0c000000 	jal	0 <func_80BA0D60>
 ac0:	afa5002c 	sw	a1,44(sp)
 ac4:	10400014 	beqz	v0,b18 <func_80BA180C+0x6c>
 ac8:	8fae002c 	lw	t6,44(sp)
 acc:	3c0f0001 	lui	t7,0x1
 ad0:	01ee7821 	addu	t7,t7,t6
 ad4:	81ef1cbc 	lb	t7,7356(t7)
 ad8:	02002025 	move	a0,s0
 adc:	0c000000 	jal	0 <func_80BA0D60>
 ae0:	a20f0003 	sb	t7,3(s0)
 ae4:	0c000000 	jal	0 <func_80BA0D60>
 ae8:	02002025 	move	a0,s0
 aec:	0c000000 	jal	0 <func_80BA0D60>
 af0:	02002025 	move	a0,s0
 af4:	44802000 	mtc1	zero,$f4
 af8:	24180085 	li	t8,133
 afc:	afb80014 	sw	t8,20(sp)
 b00:	8fa4002c 	lw	a0,44(sp)
 b04:	02002825 	move	a1,s0
 b08:	3c0640a0 	lui	a2,0x40a0
 b0c:	3c074170 	lui	a3,0x4170
 b10:	0c000000 	jal	0 <func_80BA0D60>
 b14:	e7a40010 	swc1	$f4,16(sp)
 b18:	8fbf0024 	lw	ra,36(sp)
 b1c:	8fb00020 	lw	s0,32(sp)
 b20:	27bd0028 	addiu	sp,sp,40
 b24:	03e00008 	jr	ra
 b28:	00000000 	nop

00000b2c <func_80BA188C>:
 b2c:	27bdffe0 	addiu	sp,sp,-32
 b30:	afb00018 	sw	s0,24(sp)
 b34:	00808025 	move	s0,a0
 b38:	afbf001c 	sw	ra,28(sp)
 b3c:	0c000000 	jal	0 <func_80BA0D60>
 b40:	84840032 	lh	a0,50(a0)
 b44:	c6040068 	lwc1	$f4,104(s0)
 b48:	86040032 	lh	a0,50(s0)
 b4c:	46040182 	mul.s	$f6,$f0,$f4
 b50:	0c000000 	jal	0 <func_80BA0D60>
 b54:	e606005c 	swc1	$f6,92(s0)
 b58:	c6080068 	lwc1	$f8,104(s0)
 b5c:	240e00f0 	li	t6,240
 b60:	a20e00ae 	sb	t6,174(s0)
 b64:	46080282 	mul.s	$f10,$f0,$f8
 b68:	0c000000 	jal	0 <func_80BA0D60>
 b6c:	e60a0064 	swc1	$f10,100(s0)
 b70:	3c010000 	lui	at,0x0
 b74:	c4300000 	lwc1	$f16,0(at)
 b78:	3c01452f 	lui	at,0x452f
 b7c:	44812000 	mtc1	at,$f4
 b80:	46100481 	sub.s	$f18,$f0,$f16
 b84:	3c010000 	lui	at,0x0
 b88:	46049182 	mul.s	$f6,$f18,$f4
 b8c:	4600320d 	trunc.w.s	$f8,$f6
 b90:	44184000 	mfc1	t8,$f8
 b94:	0c000000 	jal	0 <func_80BA0D60>
 b98:	a4380000 	sh	t8,0(at)
 b9c:	3c013f00 	lui	at,0x3f00
 ba0:	44815000 	mtc1	at,$f10
 ba4:	3c0144fa 	lui	at,0x44fa
 ba8:	44819000 	mtc1	at,$f18
 bac:	460a0401 	sub.s	$f16,$f0,$f10
 bb0:	3c010000 	lui	at,0x0
 bb4:	3c090000 	lui	t1,0x0
 bb8:	25290000 	addiu	t1,t1,0
 bbc:	46128102 	mul.s	$f4,$f16,$f18
 bc0:	4600218d 	trunc.w.s	$f6,$f4
 bc4:	44083000 	mfc1	t0,$f6
 bc8:	00000000 	nop
 bcc:	a4280000 	sh	t0,0(at)
 bd0:	3c010000 	lui	at,0x0
 bd4:	a4200000 	sh	zero,0(at)
 bd8:	3c010000 	lui	at,0x0
 bdc:	a4200000 	sh	zero,0(at)
 be0:	ae09014c 	sw	t1,332(s0)
 be4:	8fbf001c 	lw	ra,28(sp)
 be8:	8fb00018 	lw	s0,24(sp)
 bec:	27bd0020 	addiu	sp,sp,32
 bf0:	03e00008 	jr	ra
 bf4:	00000000 	nop

00000bf8 <func_80BA1958>:
 bf8:	27bdffc8 	addiu	sp,sp,-56
 bfc:	afbf0024 	sw	ra,36(sp)
 c00:	afb10020 	sw	s1,32(sp)
 c04:	afb0001c 	sw	s0,28(sp)
 c08:	94820088 	lhu	v0,136(a0)
 c0c:	00a08825 	move	s1,a1
 c10:	00808025 	move	s0,a0
 c14:	304e000b 	andi	t6,v0,0xb
 c18:	15c00006 	bnez	t6,c34 <func_80BA1958+0x3c>
 c1c:	02202825 	move	a1,s1
 c20:	908f0160 	lbu	t7,352(a0)
 c24:	30590040 	andi	t9,v0,0x40
 c28:	31f80002 	andi	t8,t7,0x2
 c2c:	1300000f 	beqz	t8,c6c <func_80BA1958+0x74>
 c30:	00000000 	nop
 c34:	0c000000 	jal	0 <func_80BA0D60>
 c38:	02002025 	move	a0,s0
 c3c:	02002025 	move	a0,s0
 c40:	0c000000 	jal	0 <func_80BA0D60>
 c44:	02202825 	move	a1,s1
 c48:	02202025 	move	a0,s1
 c4c:	26050024 	addiu	a1,s0,36
 c50:	24060014 	li	a2,20
 c54:	0c000000 	jal	0 <func_80BA0D60>
 c58:	24072887 	li	a3,10375
 c5c:	0c000000 	jal	0 <func_80BA0D60>
 c60:	02002025 	move	a0,s0
 c64:	10000044 	b	d78 <func_80BA1958+0x180>
 c68:	8fbf0024 	lw	ra,36(sp)
 c6c:	1320000f 	beqz	t9,cac <func_80BA1958+0xb4>
 c70:	02002025 	move	a0,s0
 c74:	0c000000 	jal	0 <func_80BA0D60>
 c78:	02202825 	move	a1,s1
 c7c:	02002025 	move	a0,s0
 c80:	0c000000 	jal	0 <func_80BA0D60>
 c84:	02202825 	move	a1,s1
 c88:	02202025 	move	a0,s1
 c8c:	26050024 	addiu	a1,s0,36
 c90:	24060014 	li	a2,20
 c94:	0c000000 	jal	0 <func_80BA0D60>
 c98:	24072887 	li	a3,10375
 c9c:	0c000000 	jal	0 <func_80BA0D60>
 ca0:	02002025 	move	a0,s0
 ca4:	10000034 	b	d78 <func_80BA1958+0x180>
 ca8:	8fbf0024 	lw	ra,36(sp)
 cac:	0c000000 	jal	0 <func_80BA0D60>
 cb0:	02002025 	move	a0,s0
 cb4:	0c000000 	jal	0 <func_80BA0D60>
 cb8:	02002025 	move	a0,s0
 cbc:	3c040000 	lui	a0,0x0
 cc0:	3c050000 	lui	a1,0x0
 cc4:	84a50000 	lh	a1,0(a1)
 cc8:	24840000 	addiu	a0,a0,0
 ccc:	0c000000 	jal	0 <func_80BA0D60>
 cd0:	24060064 	li	a2,100
 cd4:	3c040000 	lui	a0,0x0
 cd8:	3c050000 	lui	a1,0x0
 cdc:	84a50000 	lh	a1,0(a1)
 ce0:	24840000 	addiu	a0,a0,0
 ce4:	0c000000 	jal	0 <func_80BA0D60>
 ce8:	24060064 	li	a2,100
 cec:	3c090000 	lui	t1,0x0
 cf0:	85290000 	lh	t1,0(t1)
 cf4:	860800b4 	lh	t0,180(s0)
 cf8:	3c0c0000 	lui	t4,0x0
 cfc:	860b00b6 	lh	t3,182(s0)
 d00:	01095021 	addu	t2,t0,t1
 d04:	a60a00b4 	sh	t2,180(s0)
 d08:	858c0000 	lh	t4,0(t4)
 d0c:	44802000 	mtc1	zero,$f4
 d10:	240e0085 	li	t6,133
 d14:	016c6821 	addu	t5,t3,t4
 d18:	a60d00b6 	sh	t5,182(s0)
 d1c:	afae0014 	sw	t6,20(sp)
 d20:	02202025 	move	a0,s1
 d24:	02002825 	move	a1,s0
 d28:	3c0640a0 	lui	a2,0x40a0
 d2c:	3c074170 	lui	a3,0x4170
 d30:	0c000000 	jal	0 <func_80BA0D60>
 d34:	e7a40010 	swc1	$f4,16(sp)
 d38:	26050150 	addiu	a1,s0,336
 d3c:	afa5002c 	sw	a1,44(sp)
 d40:	0c000000 	jal	0 <func_80BA0D60>
 d44:	02002025 	move	a0,s0
 d48:	3c010001 	lui	at,0x1
 d4c:	34211e60 	ori	at,at,0x1e60
 d50:	02218021 	addu	s0,s1,at
 d54:	02002825 	move	a1,s0
 d58:	02202025 	move	a0,s1
 d5c:	0c000000 	jal	0 <func_80BA0D60>
 d60:	8fa6002c 	lw	a2,44(sp)
 d64:	02202025 	move	a0,s1
 d68:	02002825 	move	a1,s0
 d6c:	0c000000 	jal	0 <func_80BA0D60>
 d70:	8fa6002c 	lw	a2,44(sp)
 d74:	8fbf0024 	lw	ra,36(sp)
 d78:	8fb0001c 	lw	s0,28(sp)
 d7c:	8fb10020 	lw	s1,32(sp)
 d80:	03e00008 	jr	ra
 d84:	27bd0038 	addiu	sp,sp,56

00000d88 <ObjTsubo_Update>:
 d88:	27bdffe8 	addiu	sp,sp,-24
 d8c:	afbf0014 	sw	ra,20(sp)
 d90:	8c99014c 	lw	t9,332(a0)
 d94:	0320f809 	jalr	t9
 d98:	00000000 	nop
 d9c:	8fbf0014 	lw	ra,20(sp)
 da0:	27bd0018 	addiu	sp,sp,24
 da4:	03e00008 	jr	ra
 da8:	00000000 	nop

00000dac <func_80BA1B0C>:
 dac:	27bdffe8 	addiu	sp,sp,-24
 db0:	afbf0014 	sw	ra,20(sp)
 db4:	00803825 	move	a3,a0
 db8:	84ee001c 	lh	t6,28(a3)
 dbc:	00a02025 	move	a0,a1
 dc0:	3c050000 	lui	a1,0x0
 dc4:	000e7a03 	sra	t7,t6,0x8
 dc8:	31f80001 	andi	t8,t7,0x1
 dcc:	0018c880 	sll	t9,t8,0x2
 dd0:	00b92821 	addu	a1,a1,t9
 dd4:	0c000000 	jal	0 <func_80BA0D60>
 dd8:	8ca50000 	lw	a1,0(a1)
 ddc:	8fbf0014 	lw	ra,20(sp)
 de0:	27bd0018 	addiu	sp,sp,24
 de4:	03e00008 	jr	ra
 de8:	00000000 	nop
 dec:	00000000 	nop
