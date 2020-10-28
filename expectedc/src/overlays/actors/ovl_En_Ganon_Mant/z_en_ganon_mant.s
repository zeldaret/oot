
build/src/overlays/actors/ovl_En_Ganon_Mant/z_en_ganon_mant.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnGanonMant_Init>:
   0:	afa50004 	sw	a1,4(sp)
   4:	8c8e0004 	lw	t6,4(a0)
   8:	2401fffe 	li	at,-2
   c:	01c17824 	and	t7,t6,at
  10:	03e00008 	jr	ra
  14:	ac8f0004 	sw	t7,4(a0)

00000018 <EnGanonMant_Destroy>:
  18:	afa40000 	sw	a0,0(sp)
  1c:	03e00008 	jr	ra
  20:	afa50004 	sw	a1,4(sp)

00000024 <func_80A23D84>:
  24:	27bdffa0 	addiu	sp,sp,-96
  28:	f7b80028 	sdc1	$f24,40(sp)
  2c:	3c014200 	lui	at,0x4200
  30:	4481c000 	mtc1	at,$f24
  34:	afbf0044 	sw	ra,68(sp)
  38:	afb20040 	sw	s2,64(sp)
  3c:	00809025 	move	s2,a0
  40:	afb1003c 	sw	s1,60(sp)
  44:	afb00038 	sw	s0,56(sp)
  48:	f7ba0030 	sdc1	$f26,48(sp)
  4c:	f7b60020 	sdc1	$f22,32(sp)
  50:	f7b40018 	sdc1	$f20,24(sp)
  54:	0c000000 	jal	0 <EnGanonMant_Init>
  58:	4600c306 	mov.s	$f12,$f24
  5c:	3c014280 	lui	at,0x4280
  60:	4481d000 	mtc1	at,$f26
  64:	e7a00050 	swc1	$f0,80(sp)
  68:	0c000000 	jal	0 <EnGanonMant_Init>
  6c:	4600d306 	mov.s	$f12,$f26
  70:	3c010000 	lui	at,0x0
  74:	c42c0000 	lwc1	$f12,0(at)
  78:	0c000000 	jal	0 <EnGanonMant_Init>
  7c:	e7a0004c 	swc1	$f0,76(sp)
  80:	46000586 	mov.s	$f22,$f0
  84:	0c000000 	jal	0 <EnGanonMant_Init>
  88:	46000306 	mov.s	$f12,$f0
  8c:	46000506 	mov.s	$f20,$f0
  90:	0c000000 	jal	0 <EnGanonMant_Init>
  94:	4600b306 	mov.s	$f12,$f22
  98:	3c010000 	lui	at,0x0
  9c:	46000586 	mov.s	$f22,$f0
  a0:	0c000000 	jal	0 <EnGanonMant_Init>
  a4:	c42c0000 	lwc1	$f12,0(at)
  a8:	4600010d 	trunc.w.s	$f4,$f0
  ac:	3c0c0000 	lui	t4,0x0
  b0:	258c0000 	addiu	t4,t4,0
  b4:	c7a20050 	lwc1	$f2,80(sp)
  b8:	440f2000 	mfc1	t7,$f4
  bc:	c7ae004c 	lwc1	$f14,76(sp)
  c0:	00008025 	move	s0,zero
  c4:	000fc400 	sll	t8,t7,0x10
  c8:	0018cc03 	sra	t9,t8,0x10
  cc:	001958c0 	sll	t3,t9,0x3
  d0:	016c1021 	addu	v0,t3,t4
  d4:	84490004 	lh	t1,4(v0)
  d8:	8c4a0000 	lw	t2,0(v0)
  dc:	3c070000 	lui	a3,0x0
  e0:	19200041 	blez	t1,1e8 <func_80A23D84+0x1c4>
  e4:	24110001 	li	s1,1
  e8:	44800000 	mtc1	zero,$f0
  ec:	24e70000 	addiu	a3,a3,0
  f0:	4602003e 	c.le.s	$f0,$f2
  f4:	00000000 	nop
  f8:	45020034 	bc1fl	1cc <func_80A23D84+0x1a8>
  fc:	26100001 	addiu	s0,s0,1
 100:	4618103c 	c.lt.s	$f2,$f24
 104:	00000000 	nop
 108:	45020030 	bc1fl	1cc <func_80A23D84+0x1a8>
 10c:	26100001 	addiu	s0,s0,1
 110:	460e003e 	c.le.s	$f0,$f14
 114:	00000000 	nop
 118:	4502002c 	bc1fl	1cc <func_80A23D84+0x1a8>
 11c:	26100001 	addiu	s0,s0,1
 120:	461a703c 	c.lt.s	$f14,$f26
 124:	00106840 	sll	t5,s0,0x1
 128:	014d3021 	addu	a2,t2,t5
 12c:	45020027 	bc1fl	1cc <func_80A23D84+0x1a8>
 130:	26100001 	addiu	s0,s0,1
 134:	84c40000 	lh	a0,0(a2)
 138:	00004025 	move	t0,zero
 13c:	04820023 	bltzl	a0,1cc <func_80A23D84+0x1a8>
 140:	26100001 	addiu	s0,s0,1
 144:	0480001a 	bltz	a0,1b0 <func_80A23D84+0x18c>
 148:	00001825 	move	v1,zero
 14c:	4600720d 	trunc.w.s	$f8,$f14
 150:	4600118d 	trunc.w.s	$f6,$f2
 154:	440e4000 	mfc1	t6,$f8
 158:	44193000 	mfc1	t9,$f6
 15c:	000e7940 	sll	t7,t6,0x5
 160:	032fc021 	addu	t8,t9,t7
 164:	00185c00 	sll	t3,t8,0x10
 168:	000b6403 	sra	t4,t3,0x10
 16c:	01882821 	addu	a1,t4,t0
 170:	00036940 	sll	t5,v1,0x5
 174:	00ad1021 	addu	v0,a1,t5
 178:	00021400 	sll	v0,v0,0x10
 17c:	00021403 	sra	v0,v0,0x10
 180:	28410800 	slti	at,v0,2048
 184:	10200005 	beqz	at,19c <func_80A23D84+0x178>
 188:	24630001 	addiu	v1,v1,1
 18c:	00027040 	sll	t6,v0,0x1
 190:	00eec821 	addu	t9,a3,t6
 194:	a7200000 	sh	zero,0(t9)
 198:	84c40000 	lh	a0,0(a2)
 19c:	00031c00 	sll	v1,v1,0x10
 1a0:	00031c03 	sra	v1,v1,0x10
 1a4:	0083082a 	slt	at,a0,v1
 1a8:	5020fff2 	beqzl	at,174 <func_80A23D84+0x150>
 1ac:	00036940 	sll	t5,v1,0x5
 1b0:	25080001 	addiu	t0,t0,1
 1b4:	00084400 	sll	t0,t0,0x10
 1b8:	00084403 	sra	t0,t0,0x10
 1bc:	0088082a 	slt	at,a0,t0
 1c0:	1020ffe0 	beqz	at,144 <func_80A23D84+0x120>
 1c4:	00000000 	nop
 1c8:	26100001 	addiu	s0,s0,1
 1cc:	00108400 	sll	s0,s0,0x10
 1d0:	00108403 	sra	s0,s0,0x10
 1d4:	0209082a 	slt	at,s0,t1
 1d8:	46141080 	add.s	$f2,$f2,$f20
 1dc:	1420ffc4 	bnez	at,f0 <func_80A23D84+0xcc>
 1e0:	46167380 	add.s	$f14,$f14,$f22
 1e4:	00008025 	move	s0,zero
 1e8:	3c010000 	lui	at,0x0
 1ec:	c4360000 	lwc1	$f22,0(at)
 1f0:	0c000000 	jal	0 <EnGanonMant_Init>
 1f4:	4600b306 	mov.s	$f12,$f22
 1f8:	46000506 	mov.s	$f20,$f0
 1fc:	0c000000 	jal	0 <EnGanonMant_Init>
 200:	4600b306 	mov.s	$f12,$f22
 204:	4600028d 	trunc.w.s	$f10,$f0
 208:	26100001 	addiu	s0,s0,1
 20c:	00108400 	sll	s0,s0,0x10
 210:	4600a40d 	trunc.w.s	$f16,$f20
 214:	44185000 	mfc1	t8,$f10
 218:	00108403 	sra	s0,s0,0x10
 21c:	2a010004 	slti	at,s0,4
 220:	00185c00 	sll	t3,t8,0x10
 224:	000b6403 	sra	t4,t3,0x10
 228:	000c68c0 	sll	t5,t4,0x3
 22c:	440f8000 	mfc1	t7,$f16
 230:	01ac6823 	subu	t5,t5,t4
 234:	000d68c0 	sll	t5,t5,0x3
 238:	01ac6821 	addu	t5,t5,t4
 23c:	000d68c0 	sll	t5,t5,0x3
 240:	000fc400 	sll	t8,t7,0x10
 244:	00185c03 	sra	t3,t8,0x10
 248:	024d7021 	addu	t6,s2,t5
 24c:	01cb6021 	addu	t4,t6,t3
 250:	1420ffe7 	bnez	at,1f0 <func_80A23D84+0x1cc>
 254:	a1910308 	sb	s1,776(t4)
 258:	8fbf0044 	lw	ra,68(sp)
 25c:	d7b40018 	ldc1	$f20,24(sp)
 260:	d7b60020 	ldc1	$f22,32(sp)
 264:	d7b80028 	ldc1	$f24,40(sp)
 268:	d7ba0030 	ldc1	$f26,48(sp)
 26c:	8fb00038 	lw	s0,56(sp)
 270:	8fb1003c 	lw	s1,60(sp)
 274:	8fb20040 	lw	s2,64(sp)
 278:	03e00008 	jr	ra
 27c:	27bd0060 	addiu	sp,sp,96

00000280 <func_80A23FE0>:
 280:	27bdff20 	addiu	sp,sp,-224
 284:	44802000 	mtc1	zero,$f4
 288:	afbf006c 	sw	ra,108(sp)
 28c:	afbe0068 	sw	s8,104(sp)
 290:	afb70064 	sw	s7,100(sp)
 294:	afb60060 	sw	s6,96(sp)
 298:	afb5005c 	sw	s5,92(sp)
 29c:	afb40058 	sw	s4,88(sp)
 2a0:	afb30054 	sw	s3,84(sp)
 2a4:	afb20050 	sw	s2,80(sp)
 2a8:	afb1004c 	sw	s1,76(sp)
 2ac:	afb00048 	sw	s0,72(sp)
 2b0:	f7be0040 	sdc1	$f30,64(sp)
 2b4:	f7bc0038 	sdc1	$f28,56(sp)
 2b8:	f7ba0030 	sdc1	$f26,48(sp)
 2bc:	f7b80028 	sdc1	$f24,40(sp)
 2c0:	f7b60020 	sdc1	$f22,32(sp)
 2c4:	f7b40018 	sdc1	$f20,24(sp)
 2c8:	afa400e0 	sw	a0,224(sp)
 2cc:	e7a400a4 	swc1	$f4,164(sp)
 2d0:	84ae001c 	lh	t6,28(a1)
 2d4:	24010023 	li	at,35
 2d8:	00e08025 	move	s0,a3
 2dc:	00a09025 	move	s2,a1
 2e0:	15c1002c 	bne	t6,at,394 <func_80A23FE0+0x114>
 2e4:	00c0f025 	move	s8,a2
 2e8:	3c01c1f0 	lui	at,0xc1f0
 2ec:	44803000 	mtc1	zero,$f6
 2f0:	44814000 	mtc1	at,$f8
 2f4:	3c014700 	lui	at,0x4700
 2f8:	e7a600a0 	swc1	$f6,160(sp)
 2fc:	e7a800a8 	swc1	$f8,168(sp)
 300:	84af00b6 	lh	t7,182(a1)
 304:	44819000 	mtc1	at,$f18
 308:	3c010000 	lui	at,0x0
 30c:	448f5000 	mtc1	t7,$f10
 310:	c4260000 	lwc1	$f6,0(at)
 314:	00002825 	move	a1,zero
 318:	46805420 	cvt.s.w	$f16,$f10
 31c:	46128103 	div.s	$f4,$f16,$f18
 320:	46062302 	mul.s	$f12,$f4,$f6
 324:	0c000000 	jal	0 <EnGanonMant_Init>
 328:	00000000 	nop
 32c:	27b500a0 	addiu	s5,sp,160
 330:	02a02025 	move	a0,s5
 334:	0c000000 	jal	0 <EnGanonMant_Init>
 338:	27a50094 	addiu	a1,sp,148
 33c:	0000a025 	move	s4,zero
 340:	2403000c 	li	v1,12
 344:	02830019 	multu	s4,v1
 348:	c7aa0094 	lwc1	$f10,148(sp)
 34c:	26940001 	addiu	s4,s4,1
 350:	0014a400 	sll	s4,s4,0x10
 354:	0014a403 	sra	s4,s4,0x10
 358:	2a81000c 	slti	at,s4,12
 35c:	0000c012 	mflo	t8
 360:	03101021 	addu	v0,t8,s0
 364:	c4480000 	lwc1	$f8,0(v0)
 368:	c4520008 	lwc1	$f18,8(v0)
 36c:	460a4400 	add.s	$f16,$f8,$f10
 370:	e4500000 	swc1	$f16,0(v0)
 374:	c7a4009c 	lwc1	$f4,156(sp)
 378:	46049180 	add.s	$f6,$f18,$f4
 37c:	1420fff1 	bnez	at,344 <func_80A23FE0+0xc4>
 380:	e4460008 	swc1	$f6,8(v0)
 384:	3c0140d0 	lui	at,0x40d0
 388:	44814000 	mtc1	at,$f8
 38c:	10000005 	b	3a4 <func_80A23FE0+0x124>
 390:	e7a800ac 	swc1	$f8,172(sp)
 394:	3c014118 	lui	at,0x4118
 398:	44815000 	mtc1	at,$f10
 39c:	27b500a0 	addiu	s5,sp,160
 3a0:	e7aa00ac 	swc1	$f10,172(sp)
 3a4:	3c01c0a0 	lui	at,0xc0a0
 3a8:	4481f000 	mtc1	at,$f30
 3ac:	3c0140a0 	lui	at,0x40a0
 3b0:	4481e000 	mtc1	at,$f28
 3b4:	0000a025 	move	s4,zero
 3b8:	8fb700f0 	lw	s7,240(sp)
 3bc:	8fb600f4 	lw	s6,244(sp)
 3c0:	8fb100f8 	lw	s1,248(sp)
 3c4:	16800008 	bnez	s4,3e8 <func_80A23FE0+0x168>
 3c8:	87a200fe 	lh	v0,254(sp)
 3cc:	c7d00000 	lwc1	$f16,0(s8)
 3d0:	e6100000 	swc1	$f16,0(s0)
 3d4:	c7d20004 	lwc1	$f18,4(s8)
 3d8:	e6120004 	swc1	$f18,4(s0)
 3dc:	c7c40008 	lwc1	$f4,8(s8)
 3e0:	100000f7 	b	7c0 <func_80A23FE0+0x540>
 3e4:	e6040008 	swc1	$f4,8(s0)
 3e8:	44823000 	mtc1	v0,$f6
 3ec:	44822000 	mtc1	v0,$f4
 3f0:	3c010000 	lui	at,0x0
 3f4:	46803220 	cvt.s.w	$f8,$f6
 3f8:	c42a0000 	lwc1	$f10,0(at)
 3fc:	3c010000 	lui	at,0x0
 400:	c4320000 	lwc1	$f18,0(at)
 404:	3c010000 	lui	at,0x0
 408:	468021a0 	cvt.s.w	$f6,$f4
 40c:	460a4402 	mul.s	$f16,$f8,$f10
 410:	c4280000 	lwc1	$f8,0(at)
 414:	3c014130 	lui	at,0x4130
 418:	3c063dcc 	lui	a2,0x3dcc
 41c:	34c6cccd 	ori	a2,a2,0xcccd
 420:	46083282 	mul.s	$f10,$f6,$f8
 424:	02202025 	move	a0,s1
 428:	3c053f80 	lui	a1,0x3f80
 42c:	46128503 	div.s	$f20,$f16,$f18
 430:	44818000 	mtc1	at,$f16
 434:	0c000000 	jal	0 <EnGanonMant_Init>
 438:	46105583 	div.s	$f22,$f10,$f16
 43c:	3c063dcc 	lui	a2,0x3dcc
 440:	34c6cccd 	ori	a2,a2,0xcccd
 444:	26240004 	addiu	a0,s1,4
 448:	0c000000 	jal	0 <EnGanonMant_Init>
 44c:	3c053f80 	lui	a1,0x3f80
 450:	3c063dcc 	lui	a2,0x3dcc
 454:	34c6cccd 	ori	a2,a2,0xcccd
 458:	26240008 	addiu	a0,s1,8
 45c:	0c000000 	jal	0 <EnGanonMant_Init>
 460:	3c053f80 	lui	a1,0x3f80
 464:	44809000 	mtc1	zero,$f18
 468:	4600a306 	mov.s	$f12,$f20
 46c:	0c000000 	jal	0 <EnGanonMant_Init>
 470:	e7b200a0 	swc1	$f18,160(sp)
 474:	c64616b4 	lwc1	$f6,5812(s2)
 478:	c64416b0 	lwc1	$f4,5808(s2)
 47c:	00149880 	sll	s3,s4,0x2
 480:	46060202 	mul.s	$f8,$f0,$f6
 484:	3c010000 	lui	at,0x0
 488:	00330821 	addu	at,at,s3
 48c:	c4300000 	lwc1	$f16,0(at)
 490:	00002825 	move	a1,zero
 494:	46082280 	add.s	$f10,$f4,$f8
 498:	460a8482 	mul.s	$f18,$f16,$f10
 49c:	e7b200a8 	swc1	$f18,168(sp)
 4a0:	0c000000 	jal	0 <EnGanonMant_Init>
 4a4:	c64c16cc 	lwc1	$f12,5836(s2)
 4a8:	02a02025 	move	a0,s5
 4ac:	0c000000 	jal	0 <EnGanonMant_Init>
 4b0:	27a50088 	addiu	a1,sp,136
 4b4:	0c000000 	jal	0 <EnGanonMant_Init>
 4b8:	4600b306 	mov.s	$f12,$f22
 4bc:	c64416b8 	lwc1	$f4,5816(s2)
 4c0:	3c010000 	lui	at,0x0
 4c4:	00330821 	addu	at,at,s3
 4c8:	46040202 	mul.s	$f8,$f0,$f4
 4cc:	c4260000 	lwc1	$f6,0(at)
 4d0:	44805000 	mtc1	zero,$f10
 4d4:	02a02025 	move	a0,s5
 4d8:	27a5007c 	addiu	a1,sp,124
 4dc:	e7aa00a8 	swc1	$f10,168(sp)
 4e0:	46083402 	mul.s	$f16,$f6,$f8
 4e4:	0c000000 	jal	0 <EnGanonMant_Init>
 4e8:	e7b000a0 	swc1	$f16,160(sp)
 4ec:	c6120000 	lwc1	$f18,0(s0)
 4f0:	c6240000 	lwc1	$f4,0(s1)
 4f4:	c608fff4 	lwc1	$f8,-12(s0)
 4f8:	c7aa0088 	lwc1	$f10,136(sp)
 4fc:	46049180 	add.s	$f6,$f18,$f4
 500:	c7b2007c 	lwc1	$f18,124(sp)
 504:	c64016c8 	lwc1	$f0,5832(s2)
 508:	46083401 	sub.s	$f16,$f6,$f8
 50c:	c6280004 	lwc1	$f8,4(s1)
 510:	c6060004 	lwc1	$f6,4(s0)
 514:	46125100 	add.s	$f4,$f10,$f18
 518:	c612fff8 	lwc1	$f18,-8(s0)
 51c:	46083280 	add.s	$f10,$f6,$f8
 520:	c6260008 	lwc1	$f6,8(s1)
 524:	46048500 	add.s	$f20,$f16,$f4
 528:	c6040008 	lwc1	$f4,8(s0)
 52c:	46125401 	sub.s	$f16,$f10,$f18
 530:	c60afffc 	lwc1	$f10,-4(s0)
 534:	4600a386 	mov.s	$f14,$f20
 538:	46062200 	add.s	$f8,$f4,$f6
 53c:	c7a40084 	lwc1	$f4,132(sp)
 540:	46008600 	add.s	$f24,$f16,$f0
 544:	c7b00090 	lwc1	$f16,144(sp)
 548:	460a4481 	sub.s	$f18,$f8,$f10
 54c:	46048180 	add.s	$f6,$f16,$f4
 550:	46069580 	add.s	$f22,$f18,$f6
 554:	0c000000 	jal	0 <EnGanonMant_Init>
 558:	4600b306 	mov.s	$f12,$f22
 55c:	4614a202 	mul.s	$f8,$f20,$f20
 560:	46000686 	mov.s	$f26,$f0
 564:	4600c386 	mov.s	$f14,$f24
 568:	4616b282 	mul.s	$f10,$f22,$f22
 56c:	460a4000 	add.s	$f0,$f8,$f10
 570:	0c000000 	jal	0 <EnGanonMant_Init>
 574:	46000304 	sqrt.s	$f12,$f0
 578:	46000507 	neg.s	$f20,$f0
 57c:	44808000 	mtc1	zero,$f16
 580:	e6d4fff4 	swc1	$f20,-12(s6)
 584:	c7a400ac 	lwc1	$f4,172(sp)
 588:	4600d306 	mov.s	$f12,$f26
 58c:	00002825 	move	a1,zero
 590:	e7b000a0 	swc1	$f16,160(sp)
 594:	0c000000 	jal	0 <EnGanonMant_Init>
 598:	e7a400a8 	swc1	$f4,168(sp)
 59c:	4600a306 	mov.s	$f12,$f20
 5a0:	0c000000 	jal	0 <EnGanonMant_Init>
 5a4:	24050001 	li	a1,1
 5a8:	02a02025 	move	a0,s5
 5ac:	0c000000 	jal	0 <EnGanonMant_Init>
 5b0:	27a50094 	addiu	a1,sp,148
 5b4:	c612fff4 	lwc1	$f18,-12(s0)
 5b8:	c7a60094 	lwc1	$f6,148(sp)
 5bc:	c6140000 	lwc1	$f20,0(s0)
 5c0:	c60afff8 	lwc1	$f10,-8(s0)
 5c4:	46069200 	add.s	$f8,$f18,$f6
 5c8:	c6180004 	lwc1	$f24,4(s0)
 5cc:	c612fffc 	lwc1	$f18,-4(s0)
 5d0:	c6160008 	lwc1	$f22,8(s0)
 5d4:	e6080000 	swc1	$f8,0(s0)
 5d8:	c7b00098 	lwc1	$f16,152(sp)
 5dc:	3c190000 	lui	t9,0x0
 5e0:	27390000 	addiu	t9,t9,0
 5e4:	46105100 	add.s	$f4,$f10,$f16
 5e8:	c60a0000 	lwc1	$f10,0(s0)
 5ec:	02791021 	addu	v0,s3,t9
 5f0:	e6040004 	swc1	$f4,4(s0)
 5f4:	c7a6009c 	lwc1	$f6,156(sp)
 5f8:	46069200 	add.s	$f8,$f18,$f6
 5fc:	e6080008 	swc1	$f8,8(s0)
 600:	c6500024 	lwc1	$f16,36(s2)
 604:	c652002c 	lwc1	$f18,44(s2)
 608:	c6040008 	lwc1	$f4,8(s0)
 60c:	46105381 	sub.s	$f14,$f10,$f16
 610:	c65016d0 	lwc1	$f16,5840(s2)
 614:	c44a0000 	lwc1	$f10,0(v0)
 618:	46122301 	sub.s	$f12,$f4,$f18
 61c:	460e7182 	mul.s	$f6,$f14,$f14
 620:	00000000 	nop
 624:	460c6202 	mul.s	$f8,$f12,$f12
 628:	46083000 	add.s	$f0,$f6,$f8
 62c:	46105102 	mul.s	$f4,$f10,$f16
 630:	46000004 	sqrt.s	$f0,$f0
 634:	4604003c 	c.lt.s	$f0,$f4
 638:	00000000 	nop
 63c:	45000016 	bc1f	698 <func_80A23FE0+0x418>
 640:	00000000 	nop
 644:	0c000000 	jal	0 <EnGanonMant_Init>
 648:	afa20070 	sw	v0,112(sp)
 64c:	8fa20070 	lw	v0,112(sp)
 650:	c64616d0 	lwc1	$f6,5840(s2)
 654:	46000306 	mov.s	$f12,$f0
 658:	c4520000 	lwc1	$f18,0(v0)
 65c:	00002825 	move	a1,zero
 660:	46069202 	mul.s	$f8,$f18,$f6
 664:	0c000000 	jal	0 <EnGanonMant_Init>
 668:	e7a800a8 	swc1	$f8,168(sp)
 66c:	02a02025 	move	a0,s5
 670:	0c000000 	jal	0 <EnGanonMant_Init>
 674:	27a50094 	addiu	a1,sp,148
 678:	c64a0024 	lwc1	$f10,36(s2)
 67c:	c7b00094 	lwc1	$f16,148(sp)
 680:	46105100 	add.s	$f4,$f10,$f16
 684:	e6040000 	swc1	$f4,0(s0)
 688:	c7a6009c 	lwc1	$f6,156(sp)
 68c:	c652002c 	lwc1	$f18,44(s2)
 690:	46069200 	add.s	$f8,$f18,$f6
 694:	e6080008 	swc1	$f8,8(s0)
 698:	c64016ac 	lwc1	$f0,5804(s2)
 69c:	c60a0004 	lwc1	$f10,4(s0)
 6a0:	3c0142c8 	lui	at,0x42c8
 6a4:	4600503c 	c.lt.s	$f10,$f0
 6a8:	00000000 	nop
 6ac:	45020003 	bc1fl	6bc <func_80A23FE0+0x43c>
 6b0:	c6100000 	lwc1	$f16,0(s0)
 6b4:	e6000004 	swc1	$f0,4(s0)
 6b8:	c6100000 	lwc1	$f16,0(s0)
 6bc:	44810000 	mtc1	at,$f0
 6c0:	3c0142a0 	lui	at,0x42a0
 6c4:	46148101 	sub.s	$f4,$f16,$f20
 6c8:	44811000 	mtc1	at,$f2
 6cc:	24010023 	li	at,35
 6d0:	46022482 	mul.s	$f18,$f4,$f2
 6d4:	46009183 	div.s	$f6,$f18,$f0
 6d8:	e6260000 	swc1	$f6,0(s1)
 6dc:	c6080004 	lwc1	$f8,4(s0)
 6e0:	46184281 	sub.s	$f10,$f8,$f24
 6e4:	46025402 	mul.s	$f16,$f10,$f2
 6e8:	46008103 	div.s	$f4,$f16,$f0
 6ec:	e6240004 	swc1	$f4,4(s1)
 6f0:	c6120008 	lwc1	$f18,8(s0)
 6f4:	46169181 	sub.s	$f6,$f18,$f22
 6f8:	46023202 	mul.s	$f8,$f6,$f2
 6fc:	46004283 	div.s	$f10,$f8,$f0
 700:	e62a0008 	swc1	$f10,8(s1)
 704:	8648001c 	lh	t0,28(s2)
 708:	51010026 	beql	t0,at,7a4 <func_80A23FE0+0x524>
 70c:	c6100000 	lwc1	$f16,0(s0)
 710:	c6200000 	lwc1	$f0,0(s1)
 714:	4600e03c 	c.lt.s	$f28,$f0
 718:	00000000 	nop
 71c:	45020004 	bc1fl	730 <func_80A23FE0+0x4b0>
 720:	461e003c 	c.lt.s	$f0,$f30
 724:	10000006 	b	740 <func_80A23FE0+0x4c0>
 728:	e63c0000 	swc1	$f28,0(s1)
 72c:	461e003c 	c.lt.s	$f0,$f30
 730:	00000000 	nop
 734:	45020003 	bc1fl	744 <func_80A23FE0+0x4c4>
 738:	c6200004 	lwc1	$f0,4(s1)
 73c:	e63e0000 	swc1	$f30,0(s1)
 740:	c6200004 	lwc1	$f0,4(s1)
 744:	4600e03c 	c.lt.s	$f28,$f0
 748:	00000000 	nop
 74c:	45020004 	bc1fl	760 <func_80A23FE0+0x4e0>
 750:	461e003c 	c.lt.s	$f0,$f30
 754:	10000006 	b	770 <func_80A23FE0+0x4f0>
 758:	e63c0004 	swc1	$f28,4(s1)
 75c:	461e003c 	c.lt.s	$f0,$f30
 760:	00000000 	nop
 764:	45020003 	bc1fl	774 <func_80A23FE0+0x4f4>
 768:	c6200008 	lwc1	$f0,8(s1)
 76c:	e63e0004 	swc1	$f30,4(s1)
 770:	c6200008 	lwc1	$f0,8(s1)
 774:	4600e03c 	c.lt.s	$f28,$f0
 778:	00000000 	nop
 77c:	45020004 	bc1fl	790 <func_80A23FE0+0x510>
 780:	461e003c 	c.lt.s	$f0,$f30
 784:	10000006 	b	7a0 <func_80A23FE0+0x520>
 788:	e63c0008 	swc1	$f28,8(s1)
 78c:	461e003c 	c.lt.s	$f0,$f30
 790:	00000000 	nop
 794:	45020003 	bc1fl	7a4 <func_80A23FE0+0x524>
 798:	c6100000 	lwc1	$f16,0(s0)
 79c:	e63e0008 	swc1	$f30,8(s1)
 7a0:	c6100000 	lwc1	$f16,0(s0)
 7a4:	c6e40000 	lwc1	$f4,0(s7)
 7a8:	c6120008 	lwc1	$f18,8(s0)
 7ac:	c6e60008 	lwc1	$f6,8(s7)
 7b0:	46048381 	sub.s	$f14,$f16,$f4
 7b4:	0c000000 	jal	0 <EnGanonMant_Init>
 7b8:	46069301 	sub.s	$f12,$f18,$f6
 7bc:	e6c0fff8 	swc1	$f0,-8(s6)
 7c0:	26940001 	addiu	s4,s4,1
 7c4:	0014a400 	sll	s4,s4,0x10
 7c8:	0014a403 	sra	s4,s4,0x10
 7cc:	2a81000c 	slti	at,s4,12
 7d0:	2610000c 	addiu	s0,s0,12
 7d4:	2631000c 	addiu	s1,s1,12
 7d8:	26d6000c 	addiu	s6,s6,12
 7dc:	1420fef9 	bnez	at,3c4 <func_80A23FE0+0x144>
 7e0:	26f7000c 	addiu	s7,s7,12
 7e4:	afb700f0 	sw	s7,240(sp)
 7e8:	afb100f8 	sw	s1,248(sp)
 7ec:	c6c8007c 	lwc1	$f8,124(s6)
 7f0:	c6ca0078 	lwc1	$f10,120(s6)
 7f4:	e6c80088 	swc1	$f8,136(s6)
 7f8:	e6ca0084 	swc1	$f10,132(s6)
 7fc:	8fbf006c 	lw	ra,108(sp)
 800:	8fbe0068 	lw	s8,104(sp)
 804:	8fb70064 	lw	s7,100(sp)
 808:	8fb60060 	lw	s6,96(sp)
 80c:	8fb5005c 	lw	s5,92(sp)
 810:	8fb40058 	lw	s4,88(sp)
 814:	8fb30054 	lw	s3,84(sp)
 818:	8fb20050 	lw	s2,80(sp)
 81c:	8fb1004c 	lw	s1,76(sp)
 820:	8fb00048 	lw	s0,72(sp)
 824:	d7be0040 	ldc1	$f30,64(sp)
 828:	d7bc0038 	ldc1	$f28,56(sp)
 82c:	d7ba0030 	ldc1	$f26,48(sp)
 830:	d7b80028 	ldc1	$f24,40(sp)
 834:	d7b60020 	ldc1	$f22,32(sp)
 838:	d7b40018 	ldc1	$f20,24(sp)
 83c:	03e00008 	jr	ra
 840:	27bd00e0 	addiu	sp,sp,224

00000844 <func_80A245A4>:
 844:	27bdff88 	addiu	sp,sp,-120
 848:	afbf003c 	sw	ra,60(sp)
 84c:	afbe0038 	sw	s8,56(sp)
 850:	afb70034 	sw	s7,52(sp)
 854:	afb60030 	sw	s6,48(sp)
 858:	afb5002c 	sw	s5,44(sp)
 85c:	afb40028 	sw	s4,40(sp)
 860:	afb30024 	sw	s3,36(sp)
 864:	afb20020 	sw	s2,32(sp)
 868:	afb1001c 	sw	s1,28(sp)
 86c:	afb00018 	sw	s0,24(sp)
 870:	908e1706 	lbu	t6,5894(a0)
 874:	44800000 	mtc1	zero,$f0
 878:	2495014c 	addiu	s5,a0,332
 87c:	31cf0001 	andi	t7,t6,0x1
 880:	11e00011 	beqz	t7,8c8 <func_80A245A4+0x84>
 884:	27be004c 	addiu	s8,sp,76
 888:	3c030000 	lui	v1,0x0
 88c:	24630000 	addiu	v1,v1,0
 890:	0003c100 	sll	t8,v1,0x4
 894:	0018cf02 	srl	t9,t8,0x1c
 898:	00194080 	sll	t0,t9,0x2
 89c:	3c090000 	lui	t1,0x0
 8a0:	01284821 	addu	t1,t1,t0
 8a4:	3c0100ff 	lui	at,0xff
 8a8:	8d290000 	lw	t1,0(t1)
 8ac:	3421ffff 	ori	at,at,0xffff
 8b0:	00615024 	and	t2,v1,at
 8b4:	3c018000 	lui	at,0x8000
 8b8:	012a1021 	addu	v0,t1,t2
 8bc:	00411021 	addu	v0,v0,at
 8c0:	10000010 	b	904 <func_80A245A4+0xc0>
 8c4:	afa2006c 	sw	v0,108(sp)
 8c8:	3c020000 	lui	v0,0x0
 8cc:	24420000 	addiu	v0,v0,0
 8d0:	00025900 	sll	t3,v0,0x4
 8d4:	000b6702 	srl	t4,t3,0x1c
 8d8:	000c6880 	sll	t5,t4,0x2
 8dc:	3c0e0000 	lui	t6,0x0
 8e0:	01cd7021 	addu	t6,t6,t5
 8e4:	3c0100ff 	lui	at,0xff
 8e8:	8dce0000 	lw	t6,0(t6)
 8ec:	3421ffff 	ori	at,at,0xffff
 8f0:	00417824 	and	t7,v0,at
 8f4:	3c018000 	lui	at,0x8000
 8f8:	01cfc021 	addu	t8,t6,t7
 8fc:	0301c821 	addu	t9,t8,at
 900:	afb9006c 	sw	t9,108(sp)
 904:	3c0141f0 	lui	at,0x41f0
 908:	44812000 	mtc1	at,$f4
 90c:	e7a00058 	swc1	$f0,88(sp)
 910:	e7a00060 	swc1	$f0,96(sp)
 914:	a7a00076 	sh	zero,118(sp)
 918:	27b70058 	addiu	s7,sp,88
 91c:	2416000c 	li	s6,12
 920:	e7a4005c 	swc1	$f4,92(sp)
 924:	87a30076 	lh	v1,118(sp)
 928:	3c090000 	lui	t1,0x0
 92c:	25290000 	addiu	t1,t1,0
 930:	00034040 	sll	t0,v1,0x1
 934:	0109a021 	addu	s4,t0,t1
 938:	00009025 	move	s2,zero
 93c:	00009825 	move	s3,zero
 940:	02560019 	multu	s2,s6
 944:	00135040 	sll	t2,s3,0x1
 948:	028a5821 	addu	t3,s4,t2
 94c:	956c0000 	lhu	t4,0(t3)
 950:	8fa2006c 	lw	v0,108(sp)
 954:	00002825 	move	a1,zero
 958:	000c6900 	sll	t5,t4,0x4
 95c:	01a28021 	addu	s0,t5,v0
 960:	00007012 	mflo	t6
 964:	02ae8821 	addu	s1,s5,t6
 968:	c626000c 	lwc1	$f6,12(s1)
 96c:	4600320d 	trunc.w.s	$f8,$f6
 970:	44184000 	mfc1	t8,$f8
 974:	00000000 	nop
 978:	a6180000 	sh	t8,0(s0)
 97c:	c62a0010 	lwc1	$f10,16(s1)
 980:	4600540d 	trunc.w.s	$f16,$f10
 984:	44088000 	mfc1	t0,$f16
 988:	00000000 	nop
 98c:	a6080002 	sh	t0,2(s0)
 990:	c6320014 	lwc1	$f18,20(s1)
 994:	4600910d 	trunc.w.s	$f4,$f18
 998:	440a2000 	mfc1	t2,$f4
 99c:	00000000 	nop
 9a0:	a60a0004 	sh	t2,4(s0)
 9a4:	0c000000 	jal	0 <EnGanonMant_Init>
 9a8:	c62c00a0 	lwc1	$f12,160(s1)
 9ac:	c62c009c 	lwc1	$f12,156(s1)
 9b0:	0c000000 	jal	0 <EnGanonMant_Init>
 9b4:	24050001 	li	a1,1
 9b8:	02e02025 	move	a0,s7
 9bc:	0c000000 	jal	0 <EnGanonMant_Init>
 9c0:	03c02825 	move	a1,s8
 9c4:	c7a6004c 	lwc1	$f6,76(sp)
 9c8:	26520001 	addiu	s2,s2,1
 9cc:	00129400 	sll	s2,s2,0x10
 9d0:	4600320d 	trunc.w.s	$f8,$f6
 9d4:	00129403 	sra	s2,s2,0x10
 9d8:	2673000c 	addiu	s3,s3,12
 9dc:	00139c00 	sll	s3,s3,0x10
 9e0:	440c4000 	mfc1	t4,$f8
 9e4:	2a41000c 	slti	at,s2,12
 9e8:	00139c03 	sra	s3,s3,0x10
 9ec:	a20c000c 	sb	t4,12(s0)
 9f0:	c7aa0050 	lwc1	$f10,80(sp)
 9f4:	4600540d 	trunc.w.s	$f16,$f10
 9f8:	440e8000 	mfc1	t6,$f16
 9fc:	00000000 	nop
 a00:	a20e000d 	sb	t6,13(s0)
 a04:	c7b20054 	lwc1	$f18,84(sp)
 a08:	4600910d 	trunc.w.s	$f4,$f18
 a0c:	44182000 	mfc1	t8,$f4
 a10:	1420ffcb 	bnez	at,940 <func_80A245A4+0xfc>
 a14:	a218000e 	sb	t8,14(s0)
 a18:	87b90076 	lh	t9,118(sp)
 a1c:	26b501c8 	addiu	s5,s5,456
 a20:	27280001 	addiu	t0,t9,1
 a24:	00084c00 	sll	t1,t0,0x10
 a28:	00095403 	sra	t2,t1,0x10
 a2c:	2941000c 	slti	at,t2,12
 a30:	1420ffbc 	bnez	at,924 <func_80A245A4+0xe0>
 a34:	a7a80076 	sh	t0,118(sp)
 a38:	8fbf003c 	lw	ra,60(sp)
 a3c:	8fb00018 	lw	s0,24(sp)
 a40:	8fb1001c 	lw	s1,28(sp)
 a44:	8fb20020 	lw	s2,32(sp)
 a48:	8fb30024 	lw	s3,36(sp)
 a4c:	8fb40028 	lw	s4,40(sp)
 a50:	8fb5002c 	lw	s5,44(sp)
 a54:	8fb60030 	lw	s6,48(sp)
 a58:	8fb70034 	lw	s7,52(sp)
 a5c:	8fbe0038 	lw	s8,56(sp)
 a60:	03e00008 	jr	ra
 a64:	27bd0078 	addiu	sp,sp,120

00000a68 <EnGanonMant_Update>:
 a68:	27bdffe8 	addiu	sp,sp,-24
 a6c:	afbf0014 	sw	ra,20(sp)
 a70:	afa5001c 	sw	a1,28(sp)
 a74:	44801000 	mtc1	zero,$f2
 a78:	c48016c0 	lwc1	$f0,5824(a0)
 a7c:	908f1706 	lbu	t7,5894(a0)
 a80:	240e0001 	li	t6,1
 a84:	46001032 	c.eq.s	$f2,$f0
 a88:	25f80001 	addiu	t8,t7,1
 a8c:	8c830118 	lw	v1,280(a0)
 a90:	a08e1705 	sb	t6,5893(a0)
 a94:	45000005 	bc1f	aac <EnGanonMant_Update+0x44>
 a98:	a0981706 	sb	t8,5894(a0)
 a9c:	3c013f80 	lui	at,0x3f80
 aa0:	44816000 	mtc1	at,$f12
 aa4:	10000007 	b	ac4 <EnGanonMant_Update+0x5c>
 aa8:	c48016bc 	lwc1	$f0,5820(a0)
 aac:	3c013f80 	lui	at,0x3f80
 ab0:	44816000 	mtc1	at,$f12
 ab4:	00000000 	nop
 ab8:	460c0101 	sub.s	$f4,$f0,$f12
 abc:	e48416c0 	swc1	$f4,5824(a0)
 ac0:	c48016bc 	lwc1	$f0,5820(a0)
 ac4:	46001032 	c.eq.s	$f2,$f0
 ac8:	00000000 	nop
 acc:	45030004 	bc1tl	ae0 <EnGanonMant_Update+0x78>
 ad0:	c48016c4 	lwc1	$f0,5828(a0)
 ad4:	460c0181 	sub.s	$f6,$f0,$f12
 ad8:	e48616bc 	swc1	$f6,5820(a0)
 adc:	c48016c4 	lwc1	$f0,5828(a0)
 ae0:	46001032 	c.eq.s	$f2,$f0
 ae4:	00000000 	nop
 ae8:	45030004 	bc1tl	afc <EnGanonMant_Update+0x94>
 aec:	90821704 	lbu	v0,5892(a0)
 af0:	460c0201 	sub.s	$f8,$f0,$f12
 af4:	e48816c4 	swc1	$f8,5828(a0)
 af8:	90821704 	lbu	v0,5892(a0)
 afc:	847900b6 	lh	t9,182(v1)
 b00:	10400004 	beqz	v0,b14 <EnGanonMant_Update+0xac>
 b04:	a49900b6 	sh	t9,182(a0)
 b08:	2448ffff 	addiu	t0,v0,-1
 b0c:	0c000000 	jal	0 <EnGanonMant_Init>
 b10:	a0881704 	sb	t0,5892(a0)
 b14:	8fbf0014 	lw	ra,20(sp)
 b18:	27bd0018 	addiu	sp,sp,24
 b1c:	03e00008 	jr	ra
 b20:	00000000 	nop

00000b24 <func_80A24884>:
 b24:	27bdffb0 	addiu	sp,sp,-80
 b28:	afbf001c 	sw	ra,28(sp)
 b2c:	afb00018 	sw	s0,24(sp)
 b30:	afa40050 	sw	a0,80(sp)
 b34:	afa50054 	sw	a1,84(sp)
 b38:	8c850000 	lw	a1,0(a0)
 b3c:	3c060000 	lui	a2,0x0
 b40:	24c60000 	addiu	a2,a2,0
 b44:	27a40038 	addiu	a0,sp,56
 b48:	24070234 	li	a3,564
 b4c:	0c000000 	jal	0 <EnGanonMant_Init>
 b50:	00a08025 	move	s0,a1
 b54:	44806000 	mtc1	zero,$f12
 b58:	00003825 	move	a3,zero
 b5c:	44066000 	mfc1	a2,$f12
 b60:	0c000000 	jal	0 <EnGanonMant_Init>
 b64:	46006386 	mov.s	$f14,$f12
 b68:	8e0202c0 	lw	v0,704(s0)
 b6c:	3c18da38 	lui	t8,0xda38
 b70:	37180003 	ori	t8,t8,0x3
 b74:	244f0008 	addiu	t7,v0,8
 b78:	ae0f02c0 	sw	t7,704(s0)
 b7c:	ac580000 	sw	t8,0(v0)
 b80:	8fb90050 	lw	t9,80(sp)
 b84:	3c050000 	lui	a1,0x0
 b88:	24a50000 	addiu	a1,a1,0
 b8c:	8f240000 	lw	a0,0(t9)
 b90:	2406023c 	li	a2,572
 b94:	0c000000 	jal	0 <EnGanonMant_Init>
 b98:	afa20034 	sw	v0,52(sp)
 b9c:	8fa30034 	lw	v1,52(sp)
 ba0:	3c090000 	lui	t1,0x0
 ba4:	25290000 	addiu	t1,t1,0
 ba8:	ac620004 	sw	v0,4(v1)
 bac:	8e0202c0 	lw	v0,704(s0)
 bb0:	3c04de00 	lui	a0,0xde00
 bb4:	3c19db06 	lui	t9,0xdb06
 bb8:	24480008 	addiu	t0,v0,8
 bbc:	ae0802c0 	sw	t0,704(s0)
 bc0:	ac490004 	sw	t1,4(v0)
 bc4:	ac440000 	sw	a0,0(v0)
 bc8:	8faa0054 	lw	t2,84(sp)
 bcc:	3c0edb06 	lui	t6,0xdb06
 bd0:	37390030 	ori	t9,t9,0x30
 bd4:	914b1706 	lbu	t3,5894(t2)
 bd8:	3c0a0000 	lui	t2,0x0
 bdc:	254a0000 	addiu	t2,t2,0
 be0:	316c0001 	andi	t4,t3,0x1
 be4:	1180000a 	beqz	t4,c10 <func_80A24884+0xec>
 be8:	3c060000 	lui	a2,0x0
 bec:	8e0202c0 	lw	v0,704(s0)
 bf0:	3c0f0000 	lui	t7,0x0
 bf4:	25ef0000 	addiu	t7,t7,0
 bf8:	244d0008 	addiu	t5,v0,8
 bfc:	ae0d02c0 	sw	t5,704(s0)
 c00:	35ce0030 	ori	t6,t6,0x30
 c04:	ac4e0000 	sw	t6,0(v0)
 c08:	10000008 	b	c2c <func_80A24884+0x108>
 c0c:	ac4f0004 	sw	t7,4(v0)
 c10:	8e0202c0 	lw	v0,704(s0)
 c14:	3c080000 	lui	t0,0x0
 c18:	25080000 	addiu	t0,t0,0
 c1c:	24580008 	addiu	t8,v0,8
 c20:	ae1802c0 	sw	t8,704(s0)
 c24:	ac480004 	sw	t0,4(v0)
 c28:	ac590000 	sw	t9,0(v0)
 c2c:	8e0202c0 	lw	v0,704(s0)
 c30:	24c60000 	addiu	a2,a2,0
 c34:	24070248 	li	a3,584
 c38:	24490008 	addiu	t1,v0,8
 c3c:	ae0902c0 	sw	t1,704(s0)
 c40:	ac4a0004 	sw	t2,4(v0)
 c44:	ac440000 	sw	a0,0(v0)
 c48:	8fab0050 	lw	t3,80(sp)
 c4c:	27a40038 	addiu	a0,sp,56
 c50:	0c000000 	jal	0 <EnGanonMant_Init>
 c54:	8d650000 	lw	a1,0(t3)
 c58:	8fbf001c 	lw	ra,28(sp)
 c5c:	8fb00018 	lw	s0,24(sp)
 c60:	27bd0050 	addiu	sp,sp,80
 c64:	03e00008 	jr	ra
 c68:	00000000 	nop

00000c6c <EnGanonMant_Draw>:
 c6c:	27bdff28 	addiu	sp,sp,-216
 c70:	afbf0074 	sw	ra,116(sp)
 c74:	afb60070 	sw	s6,112(sp)
 c78:	afb5006c 	sw	s5,108(sp)
 c7c:	afb40068 	sw	s4,104(sp)
 c80:	afb30064 	sw	s3,100(sp)
 c84:	afb20060 	sw	s2,96(sp)
 c88:	afb1005c 	sw	s1,92(sp)
 c8c:	afb00058 	sw	s0,88(sp)
 c90:	f7be0050 	sdc1	$f30,80(sp)
 c94:	f7bc0048 	sdc1	$f28,72(sp)
 c98:	f7ba0040 	sdc1	$f26,64(sp)
 c9c:	f7b80038 	sdc1	$f24,56(sp)
 ca0:	f7b60030 	sdc1	$f22,48(sp)
 ca4:	f7b40028 	sdc1	$f20,40(sp)
 ca8:	908e1705 	lbu	t6,5893(a0)
 cac:	00809025 	move	s2,a0
 cb0:	00a0b025 	move	s6,a1
 cb4:	51c000a6 	beqzl	t6,f50 <EnGanonMant_Draw+0x2e4>
 cb8:	02c02025 	move	a0,s6
 cbc:	44800000 	mtc1	zero,$f0
 cc0:	c48416bc 	lwc1	$f4,5820(a0)
 cc4:	248216d4 	addiu	v0,a0,5844
 cc8:	3c01c150 	lui	at,0xc150
 ccc:	46040032 	c.eq.s	$f0,$f4
 cd0:	00000000 	nop
 cd4:	45030006 	bc1tl	cf0 <EnGanonMant_Draw+0x84>
 cd8:	c64816c0 	lwc1	$f8,5824(s2)
 cdc:	44813000 	mtc1	at,$f6
 ce0:	248316f8 	addiu	v1,a0,5880
 ce4:	10000018 	b	d48 <EnGanonMant_Draw+0xdc>
 ce8:	e48616c8 	swc1	$f6,5832(a0)
 cec:	c64816c0 	lwc1	$f8,5824(s2)
 cf0:	264216ec 	addiu	v0,s2,5868
 cf4:	3c01c150 	lui	at,0xc150
 cf8:	46080032 	c.eq.s	$f0,$f8
 cfc:	00000000 	nop
 d00:	45030006 	bc1tl	d1c <EnGanonMant_Draw+0xb0>
 d04:	c64416c4 	lwc1	$f4,5828(s2)
 d08:	44815000 	mtc1	at,$f10
 d0c:	264316e0 	addiu	v1,s2,5856
 d10:	1000000d 	b	d48 <EnGanonMant_Draw+0xdc>
 d14:	e64a16c8 	swc1	$f10,5832(s2)
 d18:	c64416c4 	lwc1	$f4,5828(s2)
 d1c:	3c01c040 	lui	at,0xc040
 d20:	264216d4 	addiu	v0,s2,5844
 d24:	46040032 	c.eq.s	$f0,$f4
 d28:	264316e0 	addiu	v1,s2,5856
 d2c:	45010006 	bc1t	d48 <EnGanonMant_Draw+0xdc>
 d30:	00000000 	nop
 d34:	44813000 	mtc1	at,$f6
 d38:	264216ec 	addiu	v0,s2,5868
 d3c:	264316f8 	addiu	v1,s2,5880
 d40:	10000001 	b	d48 <EnGanonMant_Draw+0xdc>
 d44:	e64616c8 	swc1	$f6,5832(s2)
 d48:	c4400000 	lwc1	$f0,0(v0)
 d4c:	c4680000 	lwc1	$f8,0(v1)
 d50:	c4420004 	lwc1	$f2,4(v0)
 d54:	c46a0004 	lwc1	$f10,4(v1)
 d58:	46004501 	sub.s	$f20,$f8,$f0
 d5c:	3c013f00 	lui	at,0x3f00
 d60:	44819000 	mtc1	at,$f18
 d64:	46025601 	sub.s	$f24,$f10,$f2
 d68:	c4500008 	lwc1	$f16,8(v0)
 d6c:	c4640008 	lwc1	$f4,8(v1)
 d70:	4612a182 	mul.s	$f6,$f20,$f18
 d74:	4600a386 	mov.s	$f14,$f20
 d78:	46102581 	sub.s	$f22,$f4,$f16
 d7c:	4612c202 	mul.s	$f8,$f24,$f18
 d80:	00000000 	nop
 d84:	4612b102 	mul.s	$f4,$f22,$f18
 d88:	4600b306 	mov.s	$f12,$f22
 d8c:	46060780 	add.s	$f30,$f0,$f6
 d90:	46081280 	add.s	$f10,$f2,$f8
 d94:	46048180 	add.s	$f6,$f16,$f4
 d98:	e7aa0090 	swc1	$f10,144(sp)
 d9c:	0c000000 	jal	0 <EnGanonMant_Init>
 da0:	e7a60094 	swc1	$f6,148(sp)
 da4:	4614a702 	mul.s	$f28,$f20,$f20
 da8:	46000686 	mov.s	$f26,$f0
 dac:	4600c386 	mov.s	$f14,$f24
 db0:	4616b082 	mul.s	$f2,$f22,$f22
 db4:	4602e000 	add.s	$f0,$f28,$f2
 db8:	e7a2007c 	swc1	$f2,124(sp)
 dbc:	0c000000 	jal	0 <EnGanonMant_Init>
 dc0:	46000304 	sqrt.s	$f12,$f0
 dc4:	4618c202 	mul.s	$f8,$f24,$f24
 dc8:	c7a2007c 	lwc1	$f2,124(sp)
 dcc:	46000507 	neg.s	$f20,$f0
 dd0:	3c013f00 	lui	at,0x3f00
 dd4:	44812000 	mtc1	at,$f4
 dd8:	4600d306 	mov.s	$f12,$f26
 ddc:	00002825 	move	a1,zero
 de0:	4608e280 	add.s	$f10,$f28,$f8
 de4:	46025000 	add.s	$f0,$f10,$f2
 de8:	46000004 	sqrt.s	$f0,$f0
 dec:	46040582 	mul.s	$f22,$f0,$f4
 df0:	0c000000 	jal	0 <EnGanonMant_Init>
 df4:	00000000 	nop
 df8:	4600a306 	mov.s	$f12,$f20
 dfc:	0c000000 	jal	0 <EnGanonMant_Init>
 e00:	24050001 	li	a1,1
 e04:	3c010000 	lui	at,0x0
 e08:	c4260000 	lwc1	$f6,0(at)
 e0c:	3c014130 	lui	at,0x4130
 e10:	4480e000 	mtc1	zero,$f28
 e14:	4606d201 	sub.s	$f8,$f26,$f6
 e18:	4481d000 	mtc1	at,$f26
 e1c:	3c010000 	lui	at,0x0
 e20:	00008025 	move	s0,zero
 e24:	e64816cc 	swc1	$f8,5836(s2)
 e28:	c4380000 	lwc1	$f24,0(at)
 e2c:	27b500b4 	addiu	s5,sp,180
 e30:	27b400c0 	addiu	s4,sp,192
 e34:	241301c8 	li	s3,456
 e38:	0c000000 	jal	0 <EnGanonMant_Init>
 e3c:	00000000 	nop
 e40:	44905000 	mtc1	s0,$f10
 e44:	00000000 	nop
 e48:	46805120 	cvt.s.w	$f4,$f10
 e4c:	46182182 	mul.s	$f6,$f4,$f24
 e50:	461a3503 	div.s	$f20,$f6,$f26
 e54:	0c000000 	jal	0 <EnGanonMant_Init>
 e58:	4600a306 	mov.s	$f12,$f20
 e5c:	46160202 	mul.s	$f8,$f0,$f22
 e60:	e7bc00c4 	swc1	$f28,196(sp)
 e64:	4600a306 	mov.s	$f12,$f20
 e68:	0c000000 	jal	0 <EnGanonMant_Init>
 e6c:	e7a800c0 	swc1	$f8,192(sp)
 e70:	46000287 	neg.s	$f10,$f0
 e74:	02802025 	move	a0,s4
 e78:	46165102 	mul.s	$f4,$f10,$f22
 e7c:	02a02825 	move	a1,s5
 e80:	0c000000 	jal	0 <EnGanonMant_Init>
 e84:	e7a400c8 	swc1	$f4,200(sp)
 e88:	02130019 	multu	s0,s3
 e8c:	c7a600b4 	lwc1	$f6,180(sp)
 e90:	26110001 	addiu	s1,s0,1
 e94:	0011c400 	sll	t8,s1,0x10
 e98:	4606f200 	add.s	$f8,$f30,$f6
 e9c:	0018cc03 	sra	t9,t8,0x10
 ea0:	00111c00 	sll	v1,s1,0x10
 ea4:	2b21000c 	slti	at,t9,12
 ea8:	00031c03 	sra	v1,v1,0x10
 eac:	00007812 	mflo	t7
 eb0:	024f1021 	addu	v0,s2,t7
 eb4:	e448014c 	swc1	$f8,332(v0)
 eb8:	c7a400b8 	lwc1	$f4,184(sp)
 ebc:	c7aa0090 	lwc1	$f10,144(sp)
 ec0:	46045180 	add.s	$f6,$f10,$f4
 ec4:	e4460150 	swc1	$f6,336(v0)
 ec8:	c7aa00bc 	lwc1	$f10,188(sp)
 ecc:	c7a80094 	lwc1	$f8,148(sp)
 ed0:	460a4100 	add.s	$f4,$f8,$f10
 ed4:	14200004 	bnez	at,ee8 <EnGanonMant_Draw+0x27c>
 ed8:	e4440154 	swc1	$f4,340(v0)
 edc:	2603ffff 	addiu	v1,s0,-1
 ee0:	00031c00 	sll	v1,v1,0x10
 ee4:	00031c03 	sra	v1,v1,0x10
 ee8:	00730019 	multu	v1,s3
 eec:	244b01e8 	addiu	t3,v0,488
 ef0:	244c0278 	addiu	t4,v0,632
 ef4:	afac0018 	sw	t4,24(sp)
 ef8:	afab0014 	sw	t3,20(sp)
 efc:	02c02025 	move	a0,s6
 f00:	02402825 	move	a1,s2
 f04:	2446014c 	addiu	a2,v0,332
 f08:	24470158 	addiu	a3,v0,344
 f0c:	afb0001c 	sw	s0,28(sp)
 f10:	00004012 	mflo	t0
 f14:	02484821 	addu	t1,s2,t0
 f18:	252a0158 	addiu	t2,t1,344
 f1c:	0c000000 	jal	0 <EnGanonMant_Init>
 f20:	afaa0010 	sw	t2,16(sp)
 f24:	0c000000 	jal	0 <EnGanonMant_Init>
 f28:	00000000 	nop
 f2c:	00118400 	sll	s0,s1,0x10
 f30:	00108403 	sra	s0,s0,0x10
 f34:	2a01000c 	slti	at,s0,12
 f38:	1420ffbf 	bnez	at,e38 <EnGanonMant_Draw+0x1cc>
 f3c:	00000000 	nop
 f40:	0c000000 	jal	0 <EnGanonMant_Init>
 f44:	02402025 	move	a0,s2
 f48:	a2401705 	sb	zero,5893(s2)
 f4c:	02c02025 	move	a0,s6
 f50:	0c000000 	jal	0 <EnGanonMant_Init>
 f54:	02402825 	move	a1,s2
 f58:	8fbf0074 	lw	ra,116(sp)
 f5c:	d7b40028 	ldc1	$f20,40(sp)
 f60:	d7b60030 	ldc1	$f22,48(sp)
 f64:	d7b80038 	ldc1	$f24,56(sp)
 f68:	d7ba0040 	ldc1	$f26,64(sp)
 f6c:	d7bc0048 	ldc1	$f28,72(sp)
 f70:	d7be0050 	ldc1	$f30,80(sp)
 f74:	8fb00058 	lw	s0,88(sp)
 f78:	8fb1005c 	lw	s1,92(sp)
 f7c:	8fb20060 	lw	s2,96(sp)
 f80:	8fb30064 	lw	s3,100(sp)
 f84:	8fb40068 	lw	s4,104(sp)
 f88:	8fb5006c 	lw	s5,108(sp)
 f8c:	8fb60070 	lw	s6,112(sp)
 f90:	03e00008 	jr	ra
 f94:	27bd00d8 	addiu	sp,sp,216
	...
