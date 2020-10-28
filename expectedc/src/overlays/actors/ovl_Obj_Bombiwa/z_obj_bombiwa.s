
build/src/overlays/actors/ovl_Obj_Bombiwa/z_obj_bombiwa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjBombiwa_InitCollision>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	00803025 	move	a2,a0
   8:	afa50024 	sw	a1,36(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf0014 	sw	ra,20(sp)
  14:	24c5014c 	addiu	a1,a2,332
  18:	afa50018 	sw	a1,24(sp)
  1c:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  20:	afa60020 	sw	a2,32(sp)
  24:	3c070000 	lui	a3,0x0
  28:	8fa60020 	lw	a2,32(sp)
  2c:	24e70020 	addiu	a3,a3,32
  30:	8fa40024 	lw	a0,36(sp)
  34:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  38:	8fa50018 	lw	a1,24(sp)
  3c:	8fa40020 	lw	a0,32(sp)
  40:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  44:	8fa50018 	lw	a1,24(sp)
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	27bd0020 	addiu	sp,sp,32
  50:	03e00008 	jr	ra
  54:	00000000 	nop

00000058 <ObjBombiwa_Init>:
  58:	27bdffe0 	addiu	sp,sp,-32
  5c:	afa50024 	sw	a1,36(sp)
  60:	afbf001c 	sw	ra,28(sp)
  64:	afb00018 	sw	s0,24(sp)
  68:	3c050000 	lui	a1,0x0
  6c:	00808025 	move	s0,a0
  70:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  74:	24a50054 	addiu	a1,a1,84
  78:	02002025 	move	a0,s0
  7c:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  80:	8fa50024 	lw	a1,36(sp)
  84:	8605001c 	lh	a1,28(s0)
  88:	8fa40024 	lw	a0,36(sp)
  8c:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  90:	30a5003f 	andi	a1,a1,0x3f
  94:	10400005 	beqz	v0,ac <ObjBombiwa_Init+0x54>
  98:	26040098 	addiu	a0,s0,152
  9c:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  a0:	02002025 	move	a0,s0
  a4:	1000001a 	b	110 <ObjBombiwa_Init+0xb8>
  a8:	8fbf001c 	lw	ra,28(sp)
  ac:	3c060000 	lui	a2,0x0
  b0:	24c6004c 	addiu	a2,a2,76
  b4:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  b8:	00002825 	move	a1,zero
  bc:	860e00b6 	lh	t6,182(s0)
  c0:	3c014780 	lui	at,0x4780
  c4:	55c0000a 	bnezl	t6,f0 <ObjBombiwa_Init+0x98>
  c8:	3c01c348 	lui	at,0xc348
  cc:	44816000 	mtc1	at,$f12
  d0:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
  d4:	00000000 	nop
  d8:	4600010d 	trunc.w.s	$f4,$f0
  dc:	44022000 	mfc1	v0,$f4
  e0:	00000000 	nop
  e4:	a6020032 	sh	v0,50(s0)
  e8:	a60200b6 	sh	v0,182(s0)
  ec:	3c01c348 	lui	at,0xc348
  f0:	44813000 	mtc1	at,$f6
  f4:	3c0141a0 	lui	at,0x41a0
  f8:	44815000 	mtc1	at,$f10
  fc:	c608000c 	lwc1	$f8,12(s0)
 100:	e60600bc 	swc1	$f6,188(s0)
 104:	460a4400 	add.s	$f16,$f8,$f10
 108:	e6100028 	swc1	$f16,40(s0)
 10c:	8fbf001c 	lw	ra,28(sp)
 110:	8fb00018 	lw	s0,24(sp)
 114:	27bd0020 	addiu	sp,sp,32
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <ObjBombiwa_Destroy>:
 120:	27bdffe8 	addiu	sp,sp,-24
 124:	00803825 	move	a3,a0
 128:	afbf0014 	sw	ra,20(sp)
 12c:	00a02025 	move	a0,a1
 130:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 134:	24e5014c 	addiu	a1,a3,332
 138:	8fbf0014 	lw	ra,20(sp)
 13c:	27bd0018 	addiu	sp,sp,24
 140:	03e00008 	jr	ra
 144:	00000000 	nop

00000148 <ObjBombiwa_Break>:
 148:	27bdff40 	addiu	sp,sp,-192
 14c:	f7be0070 	sdc1	$f30,112(sp)
 150:	3c014180 	lui	at,0x4180
 154:	4481f000 	mtc1	at,$f30
 158:	f7bc0068 	sdc1	$f28,104(sp)
 15c:	3c014100 	lui	at,0x4100
 160:	4481e000 	mtc1	at,$f28
 164:	f7ba0060 	sdc1	$f26,96(sp)
 168:	3c014170 	lui	at,0x4170
 16c:	4481d000 	mtc1	at,$f26
 170:	f7b80058 	sdc1	$f24,88(sp)
 174:	3c0140a0 	lui	at,0x40a0
 178:	4481c000 	mtc1	at,$f24
 17c:	f7b60050 	sdc1	$f22,80(sp)
 180:	3c014120 	lui	at,0x4120
 184:	4481b000 	mtc1	at,$f22
 188:	afb5008c 	sw	s5,140(sp)
 18c:	afb40088 	sw	s4,136(sp)
 190:	afb00078 	sw	s0,120(sp)
 194:	f7b40048 	sdc1	$f20,72(sp)
 198:	3c013f00 	lui	at,0x3f00
 19c:	afb60090 	sw	s6,144(sp)
 1a0:	afb30084 	sw	s3,132(sp)
 1a4:	afb20080 	sw	s2,128(sp)
 1a8:	afb1007c 	sw	s1,124(sp)
 1ac:	3c100000 	lui	s0,0x0
 1b0:	3c140000 	lui	s4,0x0
 1b4:	3c150000 	lui	s5,0x0
 1b8:	4481a000 	mtc1	at,$f20
 1bc:	00808825 	move	s1,a0
 1c0:	00a0b025 	move	s6,a1
 1c4:	afbf0094 	sw	ra,148(sp)
 1c8:	26b50074 	addiu	s5,s5,116
 1cc:	26940000 	addiu	s4,s4,0
 1d0:	26100064 	addiu	s0,s0,100
 1d4:	27b200b4 	addiu	s2,sp,180
 1d8:	27b300a8 	addiu	s3,sp,168
 1dc:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 1e0:	00000000 	nop
 1e4:	46140101 	sub.s	$f4,$f0,$f20
 1e8:	c6280008 	lwc1	$f8,8(s1)
 1ec:	46162182 	mul.s	$f6,$f4,$f22
 1f0:	46083280 	add.s	$f10,$f6,$f8
 1f4:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 1f8:	e7aa00b4 	swc1	$f10,180(sp)
 1fc:	46180402 	mul.s	$f16,$f0,$f24
 200:	c632000c 	lwc1	$f18,12(s1)
 204:	46128100 	add.s	$f4,$f16,$f18
 208:	461c2180 	add.s	$f6,$f4,$f28
 20c:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 210:	e7a600b8 	swc1	$f6,184(sp)
 214:	46140201 	sub.s	$f8,$f0,$f20
 218:	c6300010 	lwc1	$f16,16(s1)
 21c:	46164282 	mul.s	$f10,$f8,$f22
 220:	46105480 	add.s	$f18,$f10,$f16
 224:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 228:	e7b200bc 	swc1	$f18,188(sp)
 22c:	46140101 	sub.s	$f4,$f0,$f20
 230:	461a2182 	mul.s	$f6,$f4,$f26
 234:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 238:	e7a600a8 	swc1	$f6,168(sp)
 23c:	461e0202 	mul.s	$f8,$f0,$f30
 240:	46184280 	add.s	$f10,$f8,$f24
 244:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 248:	e7aa00ac 	swc1	$f10,172(sp)
 24c:	46140401 	sub.s	$f16,$f0,$f20
 250:	86020000 	lh	v0,0(s0)
 254:	02c02025 	move	a0,s6
 258:	02402825 	move	a1,s2
 25c:	461a8482 	mul.s	$f18,$f16,$f26
 260:	2841000b 	slti	at,v0,11
 264:	02603025 	move	a2,s3
 268:	02403825 	move	a3,s2
 26c:	240efe70 	li	t6,-400
 270:	240f000a 	li	t7,10
 274:	14200003 	bnez	at,284 <ObjBombiwa_Break+0x13c>
 278:	e7b200b0 	swc1	$f18,176(sp)
 27c:	10000002 	b	288 <ObjBombiwa_Break+0x140>
 280:	24030025 	li	v1,37
 284:	24030021 	li	v1,33
 288:	24180002 	li	t8,2
 28c:	24190001 	li	t9,1
 290:	24080050 	li	t0,80
 294:	2409ffff 	li	t1,-1
 298:	240a0163 	li	t2,355
 29c:	afaa0038 	sw	t2,56(sp)
 2a0:	afa90034 	sw	t1,52(sp)
 2a4:	afa80030 	sw	t0,48(sp)
 2a8:	afb90028 	sw	t9,40(sp)
 2ac:	afb8001c 	sw	t8,28(sp)
 2b0:	afae0010 	sw	t6,16(sp)
 2b4:	afa30014 	sw	v1,20(sp)
 2b8:	afaf0018 	sw	t7,24(sp)
 2bc:	afa00020 	sw	zero,32(sp)
 2c0:	afa20024 	sw	v0,36(sp)
 2c4:	afa0002c 	sw	zero,44(sp)
 2c8:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 2cc:	afb4003c 	sw	s4,60(sp)
 2d0:	26100002 	addiu	s0,s0,2
 2d4:	1615ffc1 	bne	s0,s5,1dc <ObjBombiwa_Break+0x94>
 2d8:	00000000 	nop
 2dc:	240b0064 	li	t3,100
 2e0:	240c00a0 	li	t4,160
 2e4:	240d0001 	li	t5,1
 2e8:	afad0018 	sw	t5,24(sp)
 2ec:	afac0014 	sw	t4,20(sp)
 2f0:	afab0010 	sw	t3,16(sp)
 2f4:	02c02025 	move	a0,s6
 2f8:	26250024 	addiu	a1,s1,36
 2fc:	3c064270 	lui	a2,0x4270
 300:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 304:	24070008 	li	a3,8
 308:	8fbf0094 	lw	ra,148(sp)
 30c:	d7b40048 	ldc1	$f20,72(sp)
 310:	d7b60050 	ldc1	$f22,80(sp)
 314:	d7b80058 	ldc1	$f24,88(sp)
 318:	d7ba0060 	ldc1	$f26,96(sp)
 31c:	d7bc0068 	ldc1	$f28,104(sp)
 320:	d7be0070 	ldc1	$f30,112(sp)
 324:	8fb00078 	lw	s0,120(sp)
 328:	8fb1007c 	lw	s1,124(sp)
 32c:	8fb20080 	lw	s2,128(sp)
 330:	8fb30084 	lw	s3,132(sp)
 334:	8fb40088 	lw	s4,136(sp)
 338:	8fb5008c 	lw	s5,140(sp)
 33c:	8fb60090 	lw	s6,144(sp)
 340:	03e00008 	jr	ra
 344:	27bd00c0 	addiu	sp,sp,192

00000348 <ObjBombiwa_Update>:
 348:	27bdffd0 	addiu	sp,sp,-48
 34c:	afb00014 	sw	s0,20(sp)
 350:	00808025 	move	s0,a0
 354:	afb10018 	sw	s1,24(sp)
 358:	00a08825 	move	s1,a1
 35c:	afbf001c 	sw	ra,28(sp)
 360:	00a02025 	move	a0,a1
 364:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 368:	02002825 	move	a1,s0
 36c:	1440000c 	bnez	v0,3a0 <ObjBombiwa_Update+0x58>
 370:	02002025 	move	a0,s0
 374:	9202015d 	lbu	v0,349(s0)
 378:	304e0002 	andi	t6,v0,0x2
 37c:	51c0001f 	beqzl	t6,3fc <ObjBombiwa_Update+0xb4>
 380:	3c014448 	lui	at,0x4448
 384:	8e0f0188 	lw	t7,392(s0)
 388:	3c014000 	lui	at,0x4000
 38c:	34210040 	ori	at,at,0x40
 390:	8df80000 	lw	t8,0(t7)
 394:	0301c824 	and	t9,t8,at
 398:	53200018 	beqzl	t9,3fc <ObjBombiwa_Update+0xb4>
 39c:	3c014448 	lui	at,0x4448
 3a0:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 3a4:	02202825 	move	a1,s1
 3a8:	8605001c 	lh	a1,28(s0)
 3ac:	02202025 	move	a0,s1
 3b0:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 3b4:	30a5003f 	andi	a1,a1,0x3f
 3b8:	02202025 	move	a0,s1
 3bc:	26050024 	addiu	a1,s0,36
 3c0:	24060050 	li	a2,80
 3c4:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 3c8:	24072810 	li	a3,10256
 3cc:	8608001c 	lh	t0,28(s0)
 3d0:	00084bc3 	sra	t1,t0,0xf
 3d4:	312a0001 	andi	t2,t1,0x1
 3d8:	11400003 	beqz	t2,3e8 <ObjBombiwa_Update+0xa0>
 3dc:	00000000 	nop
 3e0:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 3e4:	24044802 	li	a0,18434
 3e8:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 3ec:	02002025 	move	a0,s0
 3f0:	10000015 	b	448 <ObjBombiwa_Update+0x100>
 3f4:	8fbf001c 	lw	ra,28(sp)
 3f8:	3c014448 	lui	at,0x4448
 3fc:	44813000 	mtc1	at,$f6
 400:	c6040090 	lwc1	$f4,144(s0)
 404:	3c010001 	lui	at,0x1
 408:	304bfffd 	andi	t3,v0,0xfffd
 40c:	4606203c 	c.lt.s	$f4,$f6
 410:	34211e60 	ori	at,at,0x1e60
 414:	a20b015d 	sb	t3,349(s0)
 418:	02212821 	addu	a1,s1,at
 41c:	45000009 	bc1f	444 <ObjBombiwa_Update+0xfc>
 420:	02202025 	move	a0,s1
 424:	2606014c 	addiu	a2,s0,332
 428:	afa60020 	sw	a2,32(sp)
 42c:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 430:	afa50024 	sw	a1,36(sp)
 434:	8fa50024 	lw	a1,36(sp)
 438:	8fa60020 	lw	a2,32(sp)
 43c:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 440:	02202025 	move	a0,s1
 444:	8fbf001c 	lw	ra,28(sp)
 448:	8fb00014 	lw	s0,20(sp)
 44c:	8fb10018 	lw	s1,24(sp)
 450:	03e00008 	jr	ra
 454:	27bd0030 	addiu	sp,sp,48

00000458 <ObjBombiwa_Draw>:
 458:	27bdffe8 	addiu	sp,sp,-24
 45c:	afa40018 	sw	a0,24(sp)
 460:	00a02025 	move	a0,a1
 464:	afbf0014 	sw	ra,20(sp)
 468:	3c050000 	lui	a1,0x0
 46c:	0c000000 	jal	0 <ObjBombiwa_InitCollision>
 470:	24a50000 	addiu	a1,a1,0
 474:	8fbf0014 	lw	ra,20(sp)
 478:	27bd0018 	addiu	sp,sp,24
 47c:	03e00008 	jr	ra
 480:	00000000 	nop
	...
