
build/src/overlays/actors/ovl_En_Tubo_Trap/z_en_tubo_trap.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnTuboTrap_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	afbf001c 	sw	ra,28(sp)
  10:	afa5002c 	sw	a1,44(sp)
  14:	3c060000 	lui	a2,0x0
  18:	24c60000 	addiu	a2,a2,0
  1c:	24050000 	li	a1,0
  20:	248400b4 	addiu	a0,a0,180
  24:	0c000000 	jal	0 <EnTuboTrap_Init>
  28:	3c074000 	lui	a3,0x4000
  2c:	3c040000 	lui	a0,0x0
  30:	0c000000 	jal	0 <EnTuboTrap_Init>
  34:	24840000 	addiu	a0,a0,0
  38:	3c040000 	lui	a0,0x0
  3c:	24840004 	addiu	a0,a0,4
  40:	0c000000 	jal	0 <EnTuboTrap_Init>
  44:	8605001c 	lh	a1,28(s0)
  48:	26050160 	addiu	a1,s0,352
  4c:	afa50020 	sw	a1,32(sp)
  50:	0c000000 	jal	0 <EnTuboTrap_Init>
  54:	8fa4002c 	lw	a0,44(sp)
  58:	3c070000 	lui	a3,0x0
  5c:	8fa50020 	lw	a1,32(sp)
  60:	24e70000 	addiu	a3,a3,0
  64:	8fa4002c 	lw	a0,44(sp)
  68:	0c000000 	jal	0 <EnTuboTrap_Init>
  6c:	02003025 	move	a2,s0
  70:	3c053dcc 	lui	a1,0x3dcc
  74:	34a5cccd 	ori	a1,a1,0xcccd
  78:	0c000000 	jal	0 <EnTuboTrap_Init>
  7c:	02002025 	move	a0,s0
  80:	3c0e0000 	lui	t6,0x0
  84:	25ce0000 	addiu	t6,t6,0
  88:	ae0e014c 	sw	t6,332(s0)
  8c:	8fbf001c 	lw	ra,28(sp)
  90:	8fb00018 	lw	s0,24(sp)
  94:	27bd0028 	addiu	sp,sp,40
  98:	03e00008 	jr	ra
  9c:	00000000 	nop

000000a0 <EnTuboTrap_Destroy>:
  a0:	27bdffe8 	addiu	sp,sp,-24
  a4:	00803025 	move	a2,a0
  a8:	afbf0014 	sw	ra,20(sp)
  ac:	00a02025 	move	a0,a1
  b0:	0c000000 	jal	0 <EnTuboTrap_Init>
  b4:	24c50160 	addiu	a1,a2,352
  b8:	8fbf0014 	lw	ra,20(sp)
  bc:	27bd0018 	addiu	sp,sp,24
  c0:	03e00008 	jr	ra
  c4:	00000000 	nop

000000c8 <EnTuboTrap_DropCollectible>:
  c8:	27bdffe8 	addiu	sp,sp,-24
  cc:	afbf0014 	sw	ra,20(sp)
  d0:	afa5001c 	sw	a1,28(sp)
  d4:	8483001c 	lh	v1,28(a0)
  d8:	00803825 	move	a3,a0
  dc:	00031183 	sra	v0,v1,0x6
  e0:	304203ff 	andi	v0,v0,0x3ff
  e4:	00021400 	sll	v0,v0,0x10
  e8:	00021403 	sra	v0,v0,0x10
  ec:	0440000a 	bltz	v0,118 <EnTuboTrap_DropCollectible+0x50>
  f0:	2841001a 	slti	at,v0,26
  f4:	10200008 	beqz	at,118 <EnTuboTrap_DropCollectible+0x50>
  f8:	00a02025 	move	a0,a1
  fc:	306e003f 	andi	t6,v1,0x3f
 100:	000e7a00 	sll	t7,t6,0x8
 104:	004f3025 	or	a2,v0,t7
 108:	00063400 	sll	a2,a2,0x10
 10c:	00063403 	sra	a2,a2,0x10
 110:	0c000000 	jal	0 <EnTuboTrap_Init>
 114:	24e50024 	addiu	a1,a3,36
 118:	8fbf0014 	lw	ra,20(sp)
 11c:	27bd0018 	addiu	sp,sp,24
 120:	03e00008 	jr	ra
 124:	00000000 	nop

00000128 <EnTuboTrap_SpawnEffectsOnLand>:
 128:	27bdff20 	addiu	sp,sp,-224
 12c:	f7be0070 	sdc1	$f30,112(sp)
 130:	3c010000 	lui	at,0x0
 134:	c43e0090 	lwc1	$f30,144(at)
 138:	f7bc0068 	sdc1	$f28,104(sp)
 13c:	3c014000 	lui	at,0x4000
 140:	4481e000 	mtc1	at,$f28
 144:	f7ba0060 	sdc1	$f26,96(sp)
 148:	3c0140a0 	lui	at,0x40a0
 14c:	4481d000 	mtc1	at,$f26
 150:	afb60090 	sw	s6,144(sp)
 154:	f7b80058 	sdc1	$f24,88(sp)
 158:	3c014100 	lui	at,0x4100
 15c:	afbe0098 	sw	s8,152(sp)
 160:	afb70094 	sw	s7,148(sp)
 164:	afb5008c 	sw	s5,140(sp)
 168:	afb40088 	sw	s4,136(sp)
 16c:	afb30084 	sw	s3,132(sp)
 170:	afb20080 	sw	s2,128(sp)
 174:	afb1007c 	sw	s1,124(sp)
 178:	3c160000 	lui	s6,0x0
 17c:	4481c000 	mtc1	at,$f24
 180:	00a0f025 	move	s8,a1
 184:	afbf009c 	sw	ra,156(sp)
 188:	afb00078 	sw	s0,120(sp)
 18c:	f7b60050 	sdc1	$f22,80(sp)
 190:	f7b40048 	sdc1	$f20,72(sp)
 194:	26d60000 	addiu	s6,s6,0
 198:	24910024 	addiu	s1,a0,36
 19c:	00009025 	move	s2,zero
 1a0:	00009825 	move	s3,zero
 1a4:	27b400c8 	addiu	s4,sp,200
 1a8:	27b500bc 	addiu	s5,sp,188
 1ac:	2417000f 	li	s7,15
 1b0:	00122400 	sll	a0,s2,0x10
 1b4:	0c000000 	jal	0 <EnTuboTrap_Init>
 1b8:	00042403 	sra	a0,a0,0x10
 1bc:	00122400 	sll	a0,s2,0x10
 1c0:	46000506 	mov.s	$f20,$f0
 1c4:	0c000000 	jal	0 <EnTuboTrap_Init>
 1c8:	00042403 	sra	a0,a0,0x10
 1cc:	4618a102 	mul.s	$f4,$f20,$f24
 1d0:	46000586 	mov.s	$f22,$f0
 1d4:	0c000000 	jal	0 <EnTuboTrap_Init>
 1d8:	e7a400c8 	swc1	$f4,200(sp)
 1dc:	461a0182 	mul.s	$f6,$f0,$f26
 1e0:	c7b000c8 	lwc1	$f16,200(sp)
 1e4:	4618b282 	mul.s	$f10,$f22,$f24
 1e8:	00000000 	nop
 1ec:	461e8482 	mul.s	$f18,$f16,$f30
 1f0:	461c3200 	add.s	$f8,$f6,$f28
 1f4:	e7aa00d0 	swc1	$f10,208(sp)
 1f8:	e7a800cc 	swc1	$f8,204(sp)
 1fc:	0c000000 	jal	0 <EnTuboTrap_Init>
 200:	e7b200bc 	swc1	$f18,188(sp)
 204:	461a0102 	mul.s	$f4,$f0,$f26
 208:	c7a800d0 	lwc1	$f8,208(sp)
 20c:	c7b000c8 	lwc1	$f16,200(sp)
 210:	461e4282 	mul.s	$f10,$f8,$f30
 214:	461c2180 	add.s	$f6,$f4,$f28
 218:	e7aa00c4 	swc1	$f10,196(sp)
 21c:	e7a600c0 	swc1	$f6,192(sp)
 220:	c6320000 	lwc1	$f18,0(s1)
 224:	c7a600cc 	lwc1	$f6,204(sp)
 228:	46128100 	add.s	$f4,$f16,$f18
 22c:	e7a400c8 	swc1	$f4,200(sp)
 230:	c62a0004 	lwc1	$f10,4(s1)
 234:	460a3400 	add.s	$f16,$f6,$f10
 238:	e7b000cc 	swc1	$f16,204(sp)
 23c:	c6320008 	lwc1	$f18,8(s1)
 240:	46124100 	add.s	$f4,$f8,$f18
 244:	0c000000 	jal	0 <EnTuboTrap_Init>
 248:	e7a400d0 	swc1	$f4,208(sp)
 24c:	3c010000 	lui	at,0x0
 250:	c4260094 	lwc1	$f6,148(at)
 254:	3c010000 	lui	at,0x0
 258:	4606003c 	c.lt.s	$f0,$f6
 25c:	00000000 	nop
 260:	45000003 	bc1f	270 <EnTuboTrap_SpawnEffectsOnLand+0x148>
 264:	00000000 	nop
 268:	10000009 	b	290 <EnTuboTrap_SpawnEffectsOnLand+0x168>
 26c:	24100060 	li	s0,96
 270:	c42a0098 	lwc1	$f10,152(at)
 274:	24100020 	li	s0,32
 278:	460a003c 	c.lt.s	$f0,$f10
 27c:	00000000 	nop
 280:	45000003 	bc1f	290 <EnTuboTrap_SpawnEffectsOnLand+0x168>
 284:	00000000 	nop
 288:	10000001 	b	290 <EnTuboTrap_SpawnEffectsOnLand+0x168>
 28c:	24100040 	li	s0,64
 290:	0c000000 	jal	0 <EnTuboTrap_Init>
 294:	00000000 	nop
 298:	3c014282 	lui	at,0x4282
 29c:	44818000 	mtc1	at,$f16
 2a0:	3c014170 	lui	at,0x4170
 2a4:	44819000 	mtc1	at,$f18
 2a8:	46100202 	mul.s	$f8,$f0,$f16
 2ac:	240eff10 	li	t6,-240
 2b0:	240f000a 	li	t7,10
 2b4:	2418000a 	li	t8,10
 2b8:	24090020 	li	t1,32
 2bc:	240a003c 	li	t2,60
 2c0:	240bffff 	li	t3,-1
 2c4:	46124100 	add.s	$f4,$f8,$f18
 2c8:	240c0003 	li	t4,3
 2cc:	afac0038 	sw	t4,56(sp)
 2d0:	afab0034 	sw	t3,52(sp)
 2d4:	4600218d 	trunc.w.s	$f6,$f4
 2d8:	afaa0030 	sw	t2,48(sp)
 2dc:	afa9002c 	sw	t1,44(sp)
 2e0:	afb8001c 	sw	t8,28(sp)
 2e4:	44083000 	mfc1	t0,$f6
 2e8:	afaf0018 	sw	t7,24(sp)
 2ec:	afae0010 	sw	t6,16(sp)
 2f0:	03c02025 	move	a0,s8
 2f4:	02802825 	move	a1,s4
 2f8:	02a03025 	move	a2,s5
 2fc:	02203825 	move	a3,s1
 300:	afb00014 	sw	s0,20(sp)
 304:	afa00020 	sw	zero,32(sp)
 308:	afa00028 	sw	zero,40(sp)
 30c:	afb6003c 	sw	s6,60(sp)
 310:	0c000000 	jal	0 <EnTuboTrap_Init>
 314:	afa80024 	sw	t0,36(sp)
 318:	26524e20 	addiu	s2,s2,20000
 31c:	00129400 	sll	s2,s2,0x10
 320:	26730001 	addiu	s3,s3,1
 324:	1677ffa2 	bne	s3,s7,1b0 <EnTuboTrap_SpawnEffectsOnLand+0x88>
 328:	00129403 	sra	s2,s2,0x10
 32c:	240d0014 	li	t5,20
 330:	240e0032 	li	t6,50
 334:	afae0014 	sw	t6,20(sp)
 338:	afad0010 	sw	t5,16(sp)
 33c:	03c02025 	move	a0,s8
 340:	02202825 	move	a1,s1
 344:	3c0641f0 	lui	a2,0x41f0
 348:	24070004 	li	a3,4
 34c:	0c000000 	jal	0 <EnTuboTrap_Init>
 350:	afa00018 	sw	zero,24(sp)
 354:	8fbf009c 	lw	ra,156(sp)
 358:	d7b40048 	ldc1	$f20,72(sp)
 35c:	d7b60050 	ldc1	$f22,80(sp)
 360:	d7b80058 	ldc1	$f24,88(sp)
 364:	d7ba0060 	ldc1	$f26,96(sp)
 368:	d7bc0068 	ldc1	$f28,104(sp)
 36c:	d7be0070 	ldc1	$f30,112(sp)
 370:	8fb00078 	lw	s0,120(sp)
 374:	8fb1007c 	lw	s1,124(sp)
 378:	8fb20080 	lw	s2,128(sp)
 37c:	8fb30084 	lw	s3,132(sp)
 380:	8fb40088 	lw	s4,136(sp)
 384:	8fb5008c 	lw	s5,140(sp)
 388:	8fb60090 	lw	s6,144(sp)
 38c:	8fb70094 	lw	s7,148(sp)
 390:	8fbe0098 	lw	s8,152(sp)
 394:	03e00008 	jr	ra
 398:	27bd00e0 	addiu	sp,sp,224

0000039c <EnTuboTrap_SpawnEffectsInWater>:
 39c:	27bdff20 	addiu	sp,sp,-224
 3a0:	afb1007c 	sw	s1,124(sp)
 3a4:	afbf009c 	sw	ra,156(sp)
 3a8:	afbe0098 	sw	s8,152(sp)
 3ac:	afb70094 	sw	s7,148(sp)
 3b0:	afb60090 	sw	s6,144(sp)
 3b4:	afb5008c 	sw	s5,140(sp)
 3b8:	afb40088 	sw	s4,136(sp)
 3bc:	afb30084 	sw	s3,132(sp)
 3c0:	afb20080 	sw	s2,128(sp)
 3c4:	afb00078 	sw	s0,120(sp)
 3c8:	f7be0070 	sdc1	$f30,112(sp)
 3cc:	f7bc0068 	sdc1	$f28,104(sp)
 3d0:	f7ba0060 	sdc1	$f26,96(sp)
 3d4:	f7b80058 	sdc1	$f24,88(sp)
 3d8:	f7b60050 	sdc1	$f22,80(sp)
 3dc:	f7b40048 	sdc1	$f20,72(sp)
 3e0:	24910024 	addiu	s1,a0,36
 3e4:	8e2f0000 	lw	t7,0(s1)
 3e8:	27b500c8 	addiu	s5,sp,200
 3ec:	00a0a025 	move	s4,a1
 3f0:	aeaf0000 	sw	t7,0(s5)
 3f4:	8e2e0004 	lw	t6,4(s1)
 3f8:	24180190 	li	t8,400
 3fc:	00003025 	move	a2,zero
 400:	aeae0004 	sw	t6,4(s5)
 404:	8e2f0008 	lw	t7,8(s1)
 408:	00003825 	move	a3,zero
 40c:	aeaf0008 	sw	t7,8(s5)
 410:	c7a400cc 	lwc1	$f4,204(sp)
 414:	c4860084 	lwc1	$f6,132(a0)
 418:	00a02025 	move	a0,a1
 41c:	02a02825 	move	a1,s5
 420:	46062200 	add.s	$f8,$f4,$f6
 424:	afb80014 	sw	t8,20(sp)
 428:	afa00010 	sw	zero,16(sp)
 42c:	0c000000 	jal	0 <EnTuboTrap_Init>
 430:	e7a800cc 	swc1	$f8,204(sp)
 434:	3c0140a0 	lui	at,0x40a0
 438:	4481f000 	mtc1	at,$f30
 43c:	3c010000 	lui	at,0x0
 440:	c43c009c 	lwc1	$f28,156(at)
 444:	3c014000 	lui	at,0x4000
 448:	4481d000 	mtc1	at,$f26
 44c:	3c014100 	lui	at,0x4100
 450:	3c170000 	lui	s7,0x0
 454:	4481c000 	mtc1	at,$f24
 458:	26f70000 	addiu	s7,s7,0
 45c:	00009825 	move	s3,zero
 460:	00009025 	move	s2,zero
 464:	241e000f 	li	s8,15
 468:	27b600bc 	addiu	s6,sp,188
 46c:	00122400 	sll	a0,s2,0x10
 470:	0c000000 	jal	0 <EnTuboTrap_Init>
 474:	00042403 	sra	a0,a0,0x10
 478:	00122400 	sll	a0,s2,0x10
 47c:	46000506 	mov.s	$f20,$f0
 480:	0c000000 	jal	0 <EnTuboTrap_Init>
 484:	00042403 	sra	a0,a0,0x10
 488:	4618a282 	mul.s	$f10,$f20,$f24
 48c:	46000586 	mov.s	$f22,$f0
 490:	0c000000 	jal	0 <EnTuboTrap_Init>
 494:	e7aa00c8 	swc1	$f10,200(sp)
 498:	461e0402 	mul.s	$f16,$f0,$f30
 49c:	c7a600c8 	lwc1	$f6,200(sp)
 4a0:	4618b102 	mul.s	$f4,$f22,$f24
 4a4:	00000000 	nop
 4a8:	461c3202 	mul.s	$f8,$f6,$f28
 4ac:	461a8480 	add.s	$f18,$f16,$f26
 4b0:	e7a400d0 	swc1	$f4,208(sp)
 4b4:	e7b200cc 	swc1	$f18,204(sp)
 4b8:	0c000000 	jal	0 <EnTuboTrap_Init>
 4bc:	e7a800bc 	swc1	$f8,188(sp)
 4c0:	3c014080 	lui	at,0x4080
 4c4:	44815000 	mtc1	at,$f10
 4c8:	c7a400d0 	lwc1	$f4,208(sp)
 4cc:	c7a800c8 	lwc1	$f8,200(sp)
 4d0:	460a0402 	mul.s	$f16,$f0,$f10
 4d4:	461a8480 	add.s	$f18,$f16,$f26
 4d8:	461c2182 	mul.s	$f6,$f4,$f28
 4dc:	e7b200c0 	swc1	$f18,192(sp)
 4e0:	c7b200cc 	lwc1	$f18,204(sp)
 4e4:	e7a600c4 	swc1	$f6,196(sp)
 4e8:	c62a0000 	lwc1	$f10,0(s1)
 4ec:	460a4400 	add.s	$f16,$f8,$f10
 4f0:	e7b000c8 	swc1	$f16,200(sp)
 4f4:	c6260004 	lwc1	$f6,4(s1)
 4f8:	46069200 	add.s	$f8,$f18,$f6
 4fc:	e7a800cc 	swc1	$f8,204(sp)
 500:	c62a0008 	lwc1	$f10,8(s1)
 504:	460a2400 	add.s	$f16,$f4,$f10
 508:	0c000000 	jal	0 <EnTuboTrap_Init>
 50c:	e7b000d0 	swc1	$f16,208(sp)
 510:	3c010000 	lui	at,0x0
 514:	c43200a0 	lwc1	$f18,160(at)
 518:	24100020 	li	s0,32
 51c:	4612003c 	c.lt.s	$f0,$f18
 520:	00000000 	nop
 524:	45000003 	bc1f	534 <EnTuboTrap_SpawnEffectsInWater+0x198>
 528:	00000000 	nop
 52c:	10000001 	b	534 <EnTuboTrap_SpawnEffectsInWater+0x198>
 530:	24100040 	li	s0,64
 534:	0c000000 	jal	0 <EnTuboTrap_Init>
 538:	00000000 	nop
 53c:	3c014282 	lui	at,0x4282
 540:	44813000 	mtc1	at,$f6
 544:	3c014170 	lui	at,0x4170
 548:	44812000 	mtc1	at,$f4
 54c:	46060202 	mul.s	$f8,$f0,$f6
 550:	2419ff4c 	li	t9,-180
 554:	2408001e 	li	t0,30
 558:	2409001e 	li	t1,30
 55c:	240c0020 	li	t4,32
 560:	240d0046 	li	t5,70
 564:	240effff 	li	t6,-1
 568:	46044280 	add.s	$f10,$f8,$f4
 56c:	240f0003 	li	t7,3
 570:	afaf0038 	sw	t7,56(sp)
 574:	afae0034 	sw	t6,52(sp)
 578:	4600540d 	trunc.w.s	$f16,$f10
 57c:	afad0030 	sw	t5,48(sp)
 580:	afac002c 	sw	t4,44(sp)
 584:	afa9001c 	sw	t1,28(sp)
 588:	440b8000 	mfc1	t3,$f16
 58c:	afa80018 	sw	t0,24(sp)
 590:	afb90010 	sw	t9,16(sp)
 594:	02802025 	move	a0,s4
 598:	02a02825 	move	a1,s5
 59c:	02c03025 	move	a2,s6
 5a0:	02203825 	move	a3,s1
 5a4:	afb00014 	sw	s0,20(sp)
 5a8:	afa00020 	sw	zero,32(sp)
 5ac:	afa00028 	sw	zero,40(sp)
 5b0:	afb7003c 	sw	s7,60(sp)
 5b4:	0c000000 	jal	0 <EnTuboTrap_Init>
 5b8:	afab0024 	sw	t3,36(sp)
 5bc:	26524e20 	addiu	s2,s2,20000
 5c0:	00129400 	sll	s2,s2,0x10
 5c4:	26730001 	addiu	s3,s3,1
 5c8:	167effa8 	bne	s3,s8,46c <EnTuboTrap_SpawnEffectsInWater+0xd0>
 5cc:	00129403 	sra	s2,s2,0x10
 5d0:	8fbf009c 	lw	ra,156(sp)
 5d4:	d7b40048 	ldc1	$f20,72(sp)
 5d8:	d7b60050 	ldc1	$f22,80(sp)
 5dc:	d7b80058 	ldc1	$f24,88(sp)
 5e0:	d7ba0060 	ldc1	$f26,96(sp)
 5e4:	d7bc0068 	ldc1	$f28,104(sp)
 5e8:	d7be0070 	ldc1	$f30,112(sp)
 5ec:	8fb00078 	lw	s0,120(sp)
 5f0:	8fb1007c 	lw	s1,124(sp)
 5f4:	8fb20080 	lw	s2,128(sp)
 5f8:	8fb30084 	lw	s3,132(sp)
 5fc:	8fb40088 	lw	s4,136(sp)
 600:	8fb5008c 	lw	s5,140(sp)
 604:	8fb60090 	lw	s6,144(sp)
 608:	8fb70094 	lw	s7,148(sp)
 60c:	8fbe0098 	lw	s8,152(sp)
 610:	03e00008 	jr	ra
 614:	27bd00e0 	addiu	sp,sp,224

00000618 <EnTuboTrap_HandleImpact>:
 618:	27bdffd0 	addiu	sp,sp,-48
 61c:	afbf001c 	sw	ra,28(sp)
 620:	afb10018 	sw	s1,24(sp)
 624:	afb00014 	sw	s0,20(sp)
 628:	8ca61c44 	lw	a2,7236(a1)
 62c:	00808025 	move	s0,a0
 630:	00a08825 	move	s1,a1
 634:	afa60028 	sw	a2,40(sp)
 638:	948e0088 	lhu	t6,136(a0)
 63c:	3c014170 	lui	at,0x4170
 640:	31cf0020 	andi	t7,t6,0x20
 644:	51e00016 	beqzl	t7,6a0 <EnTuboTrap_HandleImpact+0x88>
 648:	92020170 	lbu	v0,368(s0)
 64c:	44812000 	mtc1	at,$f4
 650:	c4860084 	lwc1	$f6,132(a0)
 654:	4606203c 	c.lt.s	$f4,$f6
 658:	00000000 	nop
 65c:	45020010 	bc1fl	6a0 <EnTuboTrap_HandleImpact+0x88>
 660:	92020170 	lbu	v0,368(s0)
 664:	0c000000 	jal	0 <EnTuboTrap_Init>
 668:	00000000 	nop
 66c:	02202025 	move	a0,s1
 670:	26050024 	addiu	a1,s0,36
 674:	24060028 	li	a2,40
 678:	0c000000 	jal	0 <EnTuboTrap_Init>
 67c:	24072817 	li	a3,10263
 680:	02002025 	move	a0,s0
 684:	0c000000 	jal	0 <EnTuboTrap_Init>
 688:	02202825 	move	a1,s1
 68c:	0c000000 	jal	0 <EnTuboTrap_Init>
 690:	02002025 	move	a0,s0
 694:	10000065 	b	82c <EnTuboTrap_HandleImpact+0x214>
 698:	8fbf001c 	lw	ra,28(sp)
 69c:	92020170 	lbu	v0,368(s0)
 6a0:	02002025 	move	a0,s0
 6a4:	02202825 	move	a1,s1
 6a8:	30580004 	andi	t8,v0,0x4
 6ac:	13000015 	beqz	t8,704 <EnTuboTrap_HandleImpact+0xec>
 6b0:	3059fffb 	andi	t9,v0,0xfffb
 6b4:	0c000000 	jal	0 <EnTuboTrap_Init>
 6b8:	a2190170 	sb	t9,368(s0)
 6bc:	26050024 	addiu	a1,s0,36
 6c0:	afa50024 	sw	a1,36(sp)
 6c4:	02202025 	move	a0,s1
 6c8:	24060028 	li	a2,40
 6cc:	0c000000 	jal	0 <EnTuboTrap_Init>
 6d0:	24071808 	li	a3,6152
 6d4:	8fa50024 	lw	a1,36(sp)
 6d8:	02202025 	move	a0,s1
 6dc:	24060028 	li	a2,40
 6e0:	0c000000 	jal	0 <EnTuboTrap_Init>
 6e4:	24072887 	li	a3,10375
 6e8:	02002025 	move	a0,s0
 6ec:	0c000000 	jal	0 <EnTuboTrap_Init>
 6f0:	02202825 	move	a1,s1
 6f4:	0c000000 	jal	0 <EnTuboTrap_Init>
 6f8:	02002025 	move	a0,s0
 6fc:	1000004b 	b	82c <EnTuboTrap_HandleImpact+0x214>
 700:	8fbf001c 	lw	ra,28(sp)
 704:	92030171 	lbu	v1,369(s0)
 708:	02002025 	move	a0,s0
 70c:	304a0002 	andi	t2,v0,0x2
 710:	30680002 	andi	t0,v1,0x2
 714:	11000016 	beqz	t0,770 <EnTuboTrap_HandleImpact+0x158>
 718:	3069fffd 	andi	t1,v1,0xfffd
 71c:	a2090171 	sb	t1,369(s0)
 720:	0c000000 	jal	0 <EnTuboTrap_Init>
 724:	02202825 	move	a1,s1
 728:	26050024 	addiu	a1,s0,36
 72c:	afa50024 	sw	a1,36(sp)
 730:	02202025 	move	a0,s1
 734:	24060028 	li	a2,40
 738:	0c000000 	jal	0 <EnTuboTrap_Init>
 73c:	24072802 	li	a3,10242
 740:	8fa50024 	lw	a1,36(sp)
 744:	02202025 	move	a0,s1
 748:	24060028 	li	a2,40
 74c:	0c000000 	jal	0 <EnTuboTrap_Init>
 750:	24072887 	li	a3,10375
 754:	02002025 	move	a0,s0
 758:	0c000000 	jal	0 <EnTuboTrap_Init>
 75c:	02202825 	move	a1,s1
 760:	0c000000 	jal	0 <EnTuboTrap_Init>
 764:	02002025 	move	a0,s0
 768:	10000030 	b	82c <EnTuboTrap_HandleImpact+0x214>
 76c:	8fbf001c 	lw	ra,28(sp)
 770:	5140001b 	beqzl	t2,7e0 <EnTuboTrap_HandleImpact+0x1c8>
 774:	96020088 	lhu	v0,136(s0)
 778:	8e0c0164 	lw	t4,356(s0)
 77c:	304bfffd 	andi	t3,v0,0xfffd
 780:	a20b0170 	sb	t3,368(s0)
 784:	14cc0015 	bne	a2,t4,7dc <EnTuboTrap_HandleImpact+0x1c4>
 788:	02002025 	move	a0,s0
 78c:	0c000000 	jal	0 <EnTuboTrap_Init>
 790:	02202825 	move	a1,s1
 794:	02202025 	move	a0,s1
 798:	26050024 	addiu	a1,s0,36
 79c:	24060028 	li	a2,40
 7a0:	0c000000 	jal	0 <EnTuboTrap_Init>
 7a4:	24072887 	li	a3,10375
 7a8:	8fa50028 	lw	a1,40(sp)
 7ac:	02202025 	move	a0,s1
 7b0:	24060028 	li	a2,40
 7b4:	2407083e 	li	a3,2110
 7b8:	0c000000 	jal	0 <EnTuboTrap_Init>
 7bc:	24a50024 	addiu	a1,a1,36
 7c0:	02002025 	move	a0,s0
 7c4:	0c000000 	jal	0 <EnTuboTrap_Init>
 7c8:	02202825 	move	a1,s1
 7cc:	0c000000 	jal	0 <EnTuboTrap_Init>
 7d0:	02002025 	move	a0,s0
 7d4:	10000015 	b	82c <EnTuboTrap_HandleImpact+0x214>
 7d8:	8fbf001c 	lw	ra,28(sp)
 7dc:	96020088 	lhu	v0,136(s0)
 7e0:	02002025 	move	a0,s0
 7e4:	304d0008 	andi	t5,v0,0x8
 7e8:	15a00003 	bnez	t5,7f8 <EnTuboTrap_HandleImpact+0x1e0>
 7ec:	304e0001 	andi	t6,v0,0x1
 7f0:	51c0000e 	beqzl	t6,82c <EnTuboTrap_HandleImpact+0x214>
 7f4:	8fbf001c 	lw	ra,28(sp)
 7f8:	0c000000 	jal	0 <EnTuboTrap_Init>
 7fc:	02202825 	move	a1,s1
 800:	02202025 	move	a0,s1
 804:	26050024 	addiu	a1,s0,36
 808:	24060028 	li	a2,40
 80c:	0c000000 	jal	0 <EnTuboTrap_Init>
 810:	24072887 	li	a3,10375
 814:	02002025 	move	a0,s0
 818:	0c000000 	jal	0 <EnTuboTrap_Init>
 81c:	02202825 	move	a1,s1
 820:	0c000000 	jal	0 <EnTuboTrap_Init>
 824:	02002025 	move	a0,s0
 828:	8fbf001c 	lw	ra,28(sp)
 82c:	8fb00014 	lw	s0,20(sp)
 830:	8fb10018 	lw	s1,24(sp)
 834:	03e00008 	jr	ra
 838:	27bd0030 	addiu	sp,sp,48

0000083c <EnTuboTrap_WaitForProximity>:
 83c:	27bdffd8 	addiu	sp,sp,-40
 840:	afbf001c 	sw	ra,28(sp)
 844:	afb00018 	sw	s0,24(sp)
 848:	afa5002c 	sw	a1,44(sp)
 84c:	8caf1c44 	lw	t7,7236(a1)
 850:	3c180000 	lui	t8,0x0
 854:	8f180000 	lw	t8,0(t8)
 858:	afaf0024 	sw	t7,36(sp)
 85c:	00808025 	move	s0,a0
 860:	871912d8 	lh	t9,4824(t8)
 864:	53200016 	beqzl	t9,8c0 <EnTuboTrap_WaitForProximity+0x84>
 868:	3c014348 	lui	at,0x4348
 86c:	c6040028 	lwc1	$f4,40(s0)
 870:	3c040000 	lui	a0,0x0
 874:	24840034 	addiu	a0,a0,52
 878:	460021a1 	cvt.d.s	$f6,$f4
 87c:	44073000 	mfc1	a3,$f6
 880:	44063800 	mfc1	a2,$f7
 884:	0c000000 	jal	0 <EnTuboTrap_Init>
 888:	00000000 	nop
 88c:	8fa80024 	lw	t0,36(sp)
 890:	3c040000 	lui	a0,0x0
 894:	24840060 	addiu	a0,a0,96
 898:	c5080028 	lwc1	$f8,40(t0)
 89c:	460042a1 	cvt.d.s	$f10,$f8
 8a0:	44075000 	mfc1	a3,$f10
 8a4:	44065800 	mfc1	a2,$f11
 8a8:	0c000000 	jal	0 <EnTuboTrap_Init>
 8ac:	00000000 	nop
 8b0:	3c040000 	lui	a0,0x0
 8b4:	0c000000 	jal	0 <EnTuboTrap_Init>
 8b8:	2484008c 	addiu	a0,a0,140
 8bc:	3c014348 	lui	at,0x4348
 8c0:	44819000 	mtc1	at,$f18
 8c4:	c6100090 	lwc1	$f16,144(s0)
 8c8:	8fa90024 	lw	t1,36(sp)
 8cc:	4612803c 	c.lt.s	$f16,$f18
 8d0:	00000000 	nop
 8d4:	45020031 	bc1fl	99c <EnTuboTrap_WaitForProximity+0x160>
 8d8:	8fbf001c 	lw	ra,28(sp)
 8dc:	c5240028 	lwc1	$f4,40(t1)
 8e0:	c6060028 	lwc1	$f6,40(s0)
 8e4:	8fa4002c 	lw	a0,44(sp)
 8e8:	02003025 	move	a2,s0
 8ec:	4604303e 	c.le.s	$f6,$f4
 8f0:	24851c24 	addiu	a1,a0,7204
 8f4:	45020029 	bc1fl	99c <EnTuboTrap_WaitForProximity+0x160>
 8f8:	8fbf001c 	lw	ra,28(sp)
 8fc:	0c000000 	jal	0 <EnTuboTrap_Init>
 900:	24070005 	li	a3,5
 904:	8e0b0004 	lw	t3,4(s0)
 908:	3c0d0000 	lui	t5,0x0
 90c:	3c01c120 	lui	at,0xc120
 910:	356c0001 	ori	t4,t3,0x1
 914:	ae0c0004 	sw	t4,4(s0)
 918:	8dad0004 	lw	t5,4(t5)
 91c:	44818000 	mtc1	at,$f16
 920:	3c014220 	lui	at,0x4220
 924:	448d4000 	mtc1	t5,$f8
 928:	44812000 	mtc1	at,$f4
 92c:	8fae0024 	lw	t6,36(sp)
 930:	468042a0 	cvt.s.w	$f10,$f8
 934:	c6000028 	lwc1	$f0,40(s0)
 938:	c5c60028 	lwc1	$f6,40(t6)
 93c:	02002025 	move	a0,s0
 940:	46105482 	mul.s	$f18,$f10,$f16
 944:	46049080 	add.s	$f2,$f18,$f4
 948:	46023200 	add.s	$f8,$f6,$f2
 94c:	e6080150 	swc1	$f8,336(s0)
 950:	c60a0150 	lwc1	$f10,336(s0)
 954:	4600503c 	c.lt.s	$f10,$f0
 958:	00000000 	nop
 95c:	45020004 	bc1fl	970 <EnTuboTrap_WaitForProximity+0x134>
 960:	8e180024 	lw	t8,36(s0)
 964:	46020400 	add.s	$f16,$f0,$f2
 968:	e6100150 	swc1	$f16,336(s0)
 96c:	8e180024 	lw	t8,36(s0)
 970:	8e0f0028 	lw	t7,40(s0)
 974:	240528c4 	li	a1,10436
 978:	ae180154 	sw	t8,340(s0)
 97c:	8e18002c 	lw	t8,44(s0)
 980:	ae0f0158 	sw	t7,344(s0)
 984:	0c000000 	jal	0 <EnTuboTrap_Init>
 988:	ae18015c 	sw	t8,348(s0)
 98c:	3c190000 	lui	t9,0x0
 990:	27390000 	addiu	t9,t9,0
 994:	ae19014c 	sw	t9,332(s0)
 998:	8fbf001c 	lw	ra,28(sp)
 99c:	8fb00018 	lw	s0,24(sp)
 9a0:	27bd0028 	addiu	sp,sp,40
 9a4:	03e00008 	jr	ra
 9a8:	00000000 	nop

000009ac <EnTuboTrap_Levitate>:
 9ac:	27bdffe0 	addiu	sp,sp,-32
 9b0:	afbf001c 	sw	ra,28(sp)
 9b4:	afb00018 	sw	s0,24(sp)
 9b8:	afa50024 	sw	a1,36(sp)
 9bc:	848e00b6 	lh	t6,182(a0)
 9c0:	00808025 	move	s0,a0
 9c4:	3c063f4c 	lui	a2,0x3f4c
 9c8:	25cf1388 	addiu	t7,t6,5000
 9cc:	a48f00b6 	sh	t7,182(a0)
 9d0:	8e050150 	lw	a1,336(s0)
 9d4:	34c6cccd 	ori	a2,a2,0xcccd
 9d8:	24840028 	addiu	a0,a0,40
 9dc:	0c000000 	jal	0 <EnTuboTrap_Init>
 9e0:	3c074040 	lui	a3,0x4040
 9e4:	c6040028 	lwc1	$f4,40(s0)
 9e8:	c6060150 	lwc1	$f6,336(s0)
 9ec:	3c014120 	lui	at,0x4120
 9f0:	44811000 	mtc1	at,$f2
 9f4:	46062001 	sub.s	$f0,$f4,$f6
 9f8:	3c190000 	lui	t9,0x0
 9fc:	27390000 	addiu	t9,t9,0
 a00:	46000005 	abs.s	$f0,$f0
 a04:	4602003c 	c.lt.s	$f0,$f2
 a08:	00000000 	nop
 a0c:	45020006 	bc1fl	a28 <EnTuboTrap_Levitate+0x7c>
 a10:	8fbf001c 	lw	ra,28(sp)
 a14:	8618008a 	lh	t8,138(s0)
 a18:	e6020068 	swc1	$f2,104(s0)
 a1c:	ae19014c 	sw	t9,332(s0)
 a20:	a6180032 	sh	t8,50(s0)
 a24:	8fbf001c 	lw	ra,28(sp)
 a28:	8fb00018 	lw	s0,24(sp)
 a2c:	27bd0020 	addiu	sp,sp,32
 a30:	03e00008 	jr	ra
 a34:	00000000 	nop

00000a38 <EnTuboTrap_Fly>:
 a38:	27bdffd0 	addiu	sp,sp,-48
 a3c:	afbf001c 	sw	ra,28(sp)
 a40:	afb00018 	sw	s0,24(sp)
 a44:	afa50034 	sw	a1,52(sp)
 a48:	c4920154 	lwc1	$f18,340(a0)
 a4c:	c4900024 	lwc1	$f16,36(a0)
 a50:	c48e0158 	lwc1	$f14,344(a0)
 a54:	c48c0028 	lwc1	$f12,40(a0)
 a58:	46109401 	sub.s	$f16,$f18,$f16
 a5c:	c492015c 	lwc1	$f18,348(a0)
 a60:	c48a002c 	lwc1	$f10,44(a0)
 a64:	460c7301 	sub.s	$f12,$f14,$f12
 a68:	00808025 	move	s0,a0
 a6c:	e7b0002c 	swc1	$f16,44(sp)
 a70:	460a9281 	sub.s	$f10,$f18,$f10
 a74:	e7ac0028 	swc1	$f12,40(sp)
 a78:	24053037 	li	a1,12343
 a7c:	0c000000 	jal	0 <EnTuboTrap_Init>
 a80:	e7aa0024 	swc1	$f10,36(sp)
 a84:	c7a2002c 	lwc1	$f2,44(sp)
 a88:	c7ac0028 	lwc1	$f12,40(sp)
 a8c:	c7ae0024 	lwc1	$f14,36(sp)
 a90:	46021102 	mul.s	$f4,$f2,$f2
 a94:	3c014370 	lui	at,0x4370
 a98:	44818000 	mtc1	at,$f16
 a9c:	460c6182 	mul.s	$f6,$f12,$f12
 aa0:	3c063e4c 	lui	a2,0x3e4c
 aa4:	34c6cccd 	ori	a2,a2,0xcccd
 aa8:	460e7282 	mul.s	$f10,$f14,$f14
 aac:	2604006c 	addiu	a0,s0,108
 ab0:	3c05c040 	lui	a1,0xc040
 ab4:	46062200 	add.s	$f8,$f4,$f6
 ab8:	460a4000 	add.s	$f0,$f8,$f10
 abc:	46000004 	sqrt.s	$f0,$f0
 ac0:	4600803c 	c.lt.s	$f16,$f0
 ac4:	00000000 	nop
 ac8:	45020004 	bc1fl	adc <EnTuboTrap_Fly+0xa4>
 acc:	860e00b6 	lh	t6,182(s0)
 ad0:	0c000000 	jal	0 <EnTuboTrap_Init>
 ad4:	3c073f00 	lui	a3,0x3f00
 ad8:	860e00b6 	lh	t6,182(s0)
 adc:	02002025 	move	a0,s0
 ae0:	25cf1388 	addiu	t7,t6,5000
 ae4:	a60f00b6 	sh	t7,182(s0)
 ae8:	0c000000 	jal	0 <EnTuboTrap_Init>
 aec:	8fa50034 	lw	a1,52(sp)
 af0:	8fbf001c 	lw	ra,28(sp)
 af4:	8fb00018 	lw	s0,24(sp)
 af8:	27bd0030 	addiu	sp,sp,48
 afc:	03e00008 	jr	ra
 b00:	00000000 	nop

00000b04 <EnTuboTrap_Update>:
 b04:	27bdffc8 	addiu	sp,sp,-56
 b08:	afb0001c 	sw	s0,28(sp)
 b0c:	00808025 	move	s0,a0
 b10:	afbf0024 	sw	ra,36(sp)
 b14:	afb10020 	sw	s1,32(sp)
 b18:	8e19014c 	lw	t9,332(s0)
 b1c:	00a08825 	move	s1,a1
 b20:	0320f809 	jalr	t9
 b24:	00000000 	nop
 b28:	0c000000 	jal	0 <EnTuboTrap_Init>
 b2c:	02002025 	move	a0,s0
 b30:	3c014120 	lui	at,0x4120
 b34:	44810000 	mtc1	at,$f0
 b38:	3c0141a0 	lui	at,0x41a0
 b3c:	44812000 	mtc1	at,$f4
 b40:	240e001d 	li	t6,29
 b44:	44060000 	mfc1	a2,$f0
 b48:	44070000 	mfc1	a3,$f0
 b4c:	afae0014 	sw	t6,20(sp)
 b50:	02202025 	move	a0,s1
 b54:	02002825 	move	a1,s0
 b58:	0c000000 	jal	0 <EnTuboTrap_Init>
 b5c:	e7a40010 	swc1	$f4,16(sp)
 b60:	02002025 	move	a0,s0
 b64:	0c000000 	jal	0 <EnTuboTrap_Init>
 b68:	24050000 	li	a1,0
 b6c:	26050160 	addiu	a1,s0,352
 b70:	afa50028 	sw	a1,40(sp)
 b74:	0c000000 	jal	0 <EnTuboTrap_Init>
 b78:	02002025 	move	a0,s0
 b7c:	3c010001 	lui	at,0x1
 b80:	34211e60 	ori	at,at,0x1e60
 b84:	02212821 	addu	a1,s1,at
 b88:	afa5002c 	sw	a1,44(sp)
 b8c:	02202025 	move	a0,s1
 b90:	0c000000 	jal	0 <EnTuboTrap_Init>
 b94:	8fa60028 	lw	a2,40(sp)
 b98:	8fa5002c 	lw	a1,44(sp)
 b9c:	02202025 	move	a0,s1
 ba0:	0c000000 	jal	0 <EnTuboTrap_Init>
 ba4:	8fa60028 	lw	a2,40(sp)
 ba8:	8fbf0024 	lw	ra,36(sp)
 bac:	8fb0001c 	lw	s0,28(sp)
 bb0:	8fb10020 	lw	s1,32(sp)
 bb4:	03e00008 	jr	ra
 bb8:	27bd0038 	addiu	sp,sp,56

00000bbc <EnTuboTrap_Draw>:
 bbc:	27bdffe8 	addiu	sp,sp,-24
 bc0:	afa40018 	sw	a0,24(sp)
 bc4:	00a02025 	move	a0,a1
 bc8:	afbf0014 	sw	ra,20(sp)
 bcc:	3c050000 	lui	a1,0x0
 bd0:	0c000000 	jal	0 <EnTuboTrap_Init>
 bd4:	24a50000 	addiu	a1,a1,0
 bd8:	8fbf0014 	lw	ra,20(sp)
 bdc:	27bd0018 	addiu	sp,sp,24
 be0:	03e00008 	jr	ra
 be4:	00000000 	nop
	...
