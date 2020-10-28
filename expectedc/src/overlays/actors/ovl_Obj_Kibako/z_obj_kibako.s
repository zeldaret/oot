
build/src/overlays/actors/ovl_Obj_Kibako/z_obj_kibako.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjKibako_SpawnCollectible>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	8483001c 	lh	v1,28(a0)
  10:	00803825 	move	a3,a0
  14:	3062001f 	andi	v0,v1,0x1f
  18:	00021400 	sll	v0,v0,0x10
  1c:	00021403 	sra	v0,v0,0x10
  20:	0440000b 	bltz	v0,50 <ObjKibako_SpawnCollectible+0x50>
  24:	2841001a 	slti	at,v0,26
  28:	10200009 	beqz	at,50 <ObjKibako_SpawnCollectible+0x50>
  2c:	00a02025 	move	a0,a1
  30:	00037203 	sra	t6,v1,0x8
  34:	31cf003f 	andi	t7,t6,0x3f
  38:	000fc200 	sll	t8,t7,0x8
  3c:	00583025 	or	a2,v0,t8
  40:	00063400 	sll	a2,a2,0x10
  44:	00063403 	sra	a2,a2,0x10
  48:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
  4c:	24e50024 	addiu	a1,a3,36
  50:	8fbf0014 	lw	ra,20(sp)
  54:	27bd0018 	addiu	sp,sp,24
  58:	03e00008 	jr	ra
  5c:	00000000 	nop

00000060 <ObjKibako_ApplyGravity>:
  60:	c4840060 	lwc1	$f4,96(a0)
  64:	c486006c 	lwc1	$f6,108(a0)
  68:	c4800070 	lwc1	$f0,112(a0)
  6c:	46062200 	add.s	$f8,$f4,$f6
  70:	e4880060 	swc1	$f8,96(a0)
  74:	c48a0060 	lwc1	$f10,96(a0)
  78:	4600503c 	c.lt.s	$f10,$f0
  7c:	00000000 	nop
  80:	45000002 	bc1f	8c <ObjKibako_ApplyGravity+0x2c>
  84:	00000000 	nop
  88:	e4800060 	swc1	$f0,96(a0)
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <ObjKibako_InitCollider>:
  94:	27bdffe0 	addiu	sp,sp,-32
  98:	00803025 	move	a2,a0
  9c:	afa50024 	sw	a1,36(sp)
  a0:	00a02025 	move	a0,a1
  a4:	afbf0014 	sw	ra,20(sp)
  a8:	24c50150 	addiu	a1,a2,336
  ac:	afa50018 	sw	a1,24(sp)
  b0:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
  b4:	afa60020 	sw	a2,32(sp)
  b8:	3c070000 	lui	a3,0x0
  bc:	8fa60020 	lw	a2,32(sp)
  c0:	24e70020 	addiu	a3,a3,32
  c4:	8fa40024 	lw	a0,36(sp)
  c8:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
  cc:	8fa50018 	lw	a1,24(sp)
  d0:	8fa40020 	lw	a0,32(sp)
  d4:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
  d8:	8fa50018 	lw	a1,24(sp)
  dc:	8fbf0014 	lw	ra,20(sp)
  e0:	27bd0020 	addiu	sp,sp,32
  e4:	03e00008 	jr	ra
  e8:	00000000 	nop

000000ec <ObjKibako_Init>:
  ec:	27bdffe0 	addiu	sp,sp,-32
  f0:	afa50024 	sw	a1,36(sp)
  f4:	afbf001c 	sw	ra,28(sp)
  f8:	afb00018 	sw	s0,24(sp)
  fc:	3c050000 	lui	a1,0x0
 100:	00808025 	move	s0,a0
 104:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 108:	24a50054 	addiu	a1,a1,84
 10c:	3c010000 	lui	at,0x0
 110:	c4240028 	lwc1	$f4,40(at)
 114:	3c01c150 	lui	at,0xc150
 118:	44813000 	mtc1	at,$f6
 11c:	e604006c 	swc1	$f4,108(s0)
 120:	02002025 	move	a0,s0
 124:	e6060070 	swc1	$f6,112(s0)
 128:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 12c:	8fa50024 	lw	a1,36(sp)
 130:	3c060000 	lui	a2,0x0
 134:	24c6004c 	addiu	a2,a2,76
 138:	26040098 	addiu	a0,s0,152
 13c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 140:	00002825 	move	a1,zero
 144:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 148:	02002025 	move	a0,s0
 14c:	3c040000 	lui	a0,0x0
 150:	24840000 	addiu	a0,a0,0
 154:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 158:	8605001c 	lh	a1,28(s0)
 15c:	8fbf001c 	lw	ra,28(sp)
 160:	8fb00018 	lw	s0,24(sp)
 164:	27bd0020 	addiu	sp,sp,32
 168:	03e00008 	jr	ra
 16c:	00000000 	nop

00000170 <ObjKibako_Destroy>:
 170:	27bdffe8 	addiu	sp,sp,-24
 174:	00803825 	move	a3,a0
 178:	afbf0014 	sw	ra,20(sp)
 17c:	00a02025 	move	a0,a1
 180:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 184:	24e50150 	addiu	a1,a3,336
 188:	8fbf0014 	lw	ra,20(sp)
 18c:	27bd0018 	addiu	sp,sp,24
 190:	03e00008 	jr	ra
 194:	00000000 	nop

00000198 <ObjKibako_AirBreak>:
 198:	27bdff20 	addiu	sp,sp,-224
 19c:	f7be0070 	sdc1	$f30,112(sp)
 1a0:	3c0140a0 	lui	at,0x40a0
 1a4:	4481f000 	mtc1	at,$f30
 1a8:	f7bc0068 	sdc1	$f28,104(sp)
 1ac:	3c010000 	lui	at,0x0
 1b0:	c43c002c 	lwc1	$f28,44(at)
 1b4:	f7ba0060 	sdc1	$f26,96(sp)
 1b8:	3c014000 	lui	at,0x4000
 1bc:	4481d000 	mtc1	at,$f26
 1c0:	afb60090 	sw	s6,144(sp)
 1c4:	f7b80058 	sdc1	$f24,88(sp)
 1c8:	3c014180 	lui	at,0x4180
 1cc:	afbe0098 	sw	s8,152(sp)
 1d0:	afb70094 	sw	s7,148(sp)
 1d4:	afb5008c 	sw	s5,140(sp)
 1d8:	afb40088 	sw	s4,136(sp)
 1dc:	afb30084 	sw	s3,132(sp)
 1e0:	afb20080 	sw	s2,128(sp)
 1e4:	afb1007c 	sw	s1,124(sp)
 1e8:	3c160000 	lui	s6,0x0
 1ec:	4481c000 	mtc1	at,$f24
 1f0:	00a0f025 	move	s8,a1
 1f4:	afbf009c 	sw	ra,156(sp)
 1f8:	afb00078 	sw	s0,120(sp)
 1fc:	f7b60050 	sdc1	$f22,80(sp)
 200:	f7b40048 	sdc1	$f20,72(sp)
 204:	26d60000 	addiu	s6,s6,0
 208:	24910024 	addiu	s1,a0,36
 20c:	00009025 	move	s2,zero
 210:	00009825 	move	s3,zero
 214:	27b400c8 	addiu	s4,sp,200
 218:	27b500bc 	addiu	s5,sp,188
 21c:	2417000c 	li	s7,12
 220:	00122400 	sll	a0,s2,0x10
 224:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 228:	00042403 	sra	a0,a0,0x10
 22c:	00122400 	sll	a0,s2,0x10
 230:	46000506 	mov.s	$f20,$f0
 234:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 238:	00042403 	sra	a0,a0,0x10
 23c:	4618a102 	mul.s	$f4,$f20,$f24
 240:	46000586 	mov.s	$f22,$f0
 244:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 248:	e7a400c8 	swc1	$f4,200(sp)
 24c:	461e0182 	mul.s	$f6,$f0,$f30
 250:	c7b000c8 	lwc1	$f16,200(sp)
 254:	4618b282 	mul.s	$f10,$f22,$f24
 258:	00000000 	nop
 25c:	461c8482 	mul.s	$f18,$f16,$f28
 260:	461a3200 	add.s	$f8,$f6,$f26
 264:	e7aa00d0 	swc1	$f10,208(sp)
 268:	e7a800cc 	swc1	$f8,204(sp)
 26c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 270:	e7b200bc 	swc1	$f18,188(sp)
 274:	3c0140c0 	lui	at,0x40c0
 278:	44812000 	mtc1	at,$f4
 27c:	c7aa00d0 	lwc1	$f10,208(sp)
 280:	c7b200c8 	lwc1	$f18,200(sp)
 284:	46040182 	mul.s	$f6,$f0,$f4
 288:	461a3200 	add.s	$f8,$f6,$f26
 28c:	461c5402 	mul.s	$f16,$f10,$f28
 290:	e7a800c0 	swc1	$f8,192(sp)
 294:	c7a800cc 	lwc1	$f8,204(sp)
 298:	e7b000c4 	swc1	$f16,196(sp)
 29c:	c6240000 	lwc1	$f4,0(s1)
 2a0:	46049180 	add.s	$f6,$f18,$f4
 2a4:	e7a600c8 	swc1	$f6,200(sp)
 2a8:	c6300004 	lwc1	$f16,4(s1)
 2ac:	46104480 	add.s	$f18,$f8,$f16
 2b0:	e7b200cc 	swc1	$f18,204(sp)
 2b4:	c6240008 	lwc1	$f4,8(s1)
 2b8:	46045180 	add.s	$f6,$f10,$f4
 2bc:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 2c0:	e7a600d0 	swc1	$f6,208(sp)
 2c4:	3c010000 	lui	at,0x0
 2c8:	c4280030 	lwc1	$f8,48(at)
 2cc:	3c010000 	lui	at,0x0
 2d0:	4608003c 	c.lt.s	$f0,$f8
 2d4:	00000000 	nop
 2d8:	45000003 	bc1f	2e8 <ObjKibako_AirBreak+0x150>
 2dc:	00000000 	nop
 2e0:	10000009 	b	308 <ObjKibako_AirBreak+0x170>
 2e4:	24100060 	li	s0,96
 2e8:	c4300034 	lwc1	$f16,52(at)
 2ec:	24100020 	li	s0,32
 2f0:	4610003c 	c.lt.s	$f0,$f16
 2f4:	00000000 	nop
 2f8:	45000003 	bc1f	308 <ObjKibako_AirBreak+0x170>
 2fc:	00000000 	nop
 300:	10000001 	b	308 <ObjKibako_AirBreak+0x170>
 304:	24100040 	li	s0,64
 308:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 30c:	00000000 	nop
 310:	3c0141f0 	lui	at,0x41f0
 314:	44819000 	mtc1	at,$f18
 318:	3c014120 	lui	at,0x4120
 31c:	44812000 	mtc1	at,$f4
 320:	46120282 	mul.s	$f10,$f0,$f18
 324:	240eff38 	li	t6,-200
 328:	240f000a 	li	t7,10
 32c:	2418000a 	li	t8,10
 330:	24090020 	li	t1,32
 334:	240a003c 	li	t2,60
 338:	240bffff 	li	t3,-1
 33c:	46045180 	add.s	$f6,$f10,$f4
 340:	240c0003 	li	t4,3
 344:	afac0038 	sw	t4,56(sp)
 348:	afab0034 	sw	t3,52(sp)
 34c:	4600320d 	trunc.w.s	$f8,$f6
 350:	afaa0030 	sw	t2,48(sp)
 354:	afa9002c 	sw	t1,44(sp)
 358:	afb8001c 	sw	t8,28(sp)
 35c:	44084000 	mfc1	t0,$f8
 360:	afaf0018 	sw	t7,24(sp)
 364:	afae0010 	sw	t6,16(sp)
 368:	03c02025 	move	a0,s8
 36c:	02802825 	move	a1,s4
 370:	02a03025 	move	a2,s5
 374:	02203825 	move	a3,s1
 378:	afb00014 	sw	s0,20(sp)
 37c:	afa00020 	sw	zero,32(sp)
 380:	afa00028 	sw	zero,40(sp)
 384:	afb6003c 	sw	s6,60(sp)
 388:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 38c:	afa80024 	sw	t0,36(sp)
 390:	26524e20 	addiu	s2,s2,20000
 394:	00129400 	sll	s2,s2,0x10
 398:	26730001 	addiu	s3,s3,1
 39c:	1677ffa0 	bne	s3,s7,220 <ObjKibako_AirBreak+0x88>
 3a0:	00129403 	sra	s2,s2,0x10
 3a4:	240d0032 	li	t5,50
 3a8:	240e008c 	li	t6,140
 3ac:	240f0001 	li	t7,1
 3b0:	afaf0018 	sw	t7,24(sp)
 3b4:	afae0014 	sw	t6,20(sp)
 3b8:	afad0010 	sw	t5,16(sp)
 3bc:	03c02025 	move	a0,s8
 3c0:	02202825 	move	a1,s1
 3c4:	3c064220 	lui	a2,0x4220
 3c8:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 3cc:	24070003 	li	a3,3
 3d0:	8fbf009c 	lw	ra,156(sp)
 3d4:	d7b40048 	ldc1	$f20,72(sp)
 3d8:	d7b60050 	ldc1	$f22,80(sp)
 3dc:	d7b80058 	ldc1	$f24,88(sp)
 3e0:	d7ba0060 	ldc1	$f26,96(sp)
 3e4:	d7bc0068 	ldc1	$f28,104(sp)
 3e8:	d7be0070 	ldc1	$f30,112(sp)
 3ec:	8fb00078 	lw	s0,120(sp)
 3f0:	8fb1007c 	lw	s1,124(sp)
 3f4:	8fb20080 	lw	s2,128(sp)
 3f8:	8fb30084 	lw	s3,132(sp)
 3fc:	8fb40088 	lw	s4,136(sp)
 400:	8fb5008c 	lw	s5,140(sp)
 404:	8fb60090 	lw	s6,144(sp)
 408:	8fb70094 	lw	s7,148(sp)
 40c:	8fbe0098 	lw	s8,152(sp)
 410:	03e00008 	jr	ra
 414:	27bd00e0 	addiu	sp,sp,224

00000418 <ObjKibako_WaterBreak>:
 418:	27bdff20 	addiu	sp,sp,-224
 41c:	afb1007c 	sw	s1,124(sp)
 420:	afbf009c 	sw	ra,156(sp)
 424:	afbe0098 	sw	s8,152(sp)
 428:	afb70094 	sw	s7,148(sp)
 42c:	afb60090 	sw	s6,144(sp)
 430:	afb5008c 	sw	s5,140(sp)
 434:	afb40088 	sw	s4,136(sp)
 438:	afb30084 	sw	s3,132(sp)
 43c:	afb20080 	sw	s2,128(sp)
 440:	afb00078 	sw	s0,120(sp)
 444:	f7be0070 	sdc1	$f30,112(sp)
 448:	f7bc0068 	sdc1	$f28,104(sp)
 44c:	f7ba0060 	sdc1	$f26,96(sp)
 450:	f7b80058 	sdc1	$f24,88(sp)
 454:	f7b60050 	sdc1	$f22,80(sp)
 458:	f7b40048 	sdc1	$f20,72(sp)
 45c:	24910024 	addiu	s1,a0,36
 460:	8e2f0000 	lw	t7,0(s1)
 464:	27b500c8 	addiu	s5,sp,200
 468:	00a0a025 	move	s4,a1
 46c:	aeaf0000 	sw	t7,0(s5)
 470:	8e2e0004 	lw	t6,4(s1)
 474:	241801f4 	li	t8,500
 478:	00003025 	move	a2,zero
 47c:	aeae0004 	sw	t6,4(s5)
 480:	8e2f0008 	lw	t7,8(s1)
 484:	00003825 	move	a3,zero
 488:	aeaf0008 	sw	t7,8(s5)
 48c:	c7a400cc 	lwc1	$f4,204(sp)
 490:	c4860084 	lwc1	$f6,132(a0)
 494:	00a02025 	move	a0,a1
 498:	02a02825 	move	a1,s5
 49c:	46062200 	add.s	$f8,$f4,$f6
 4a0:	afb80014 	sw	t8,20(sp)
 4a4:	afa00010 	sw	zero,16(sp)
 4a8:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 4ac:	e7a800cc 	swc1	$f8,204(sp)
 4b0:	3c0140a0 	lui	at,0x40a0
 4b4:	4481f000 	mtc1	at,$f30
 4b8:	3c010000 	lui	at,0x0
 4bc:	c43c0038 	lwc1	$f28,56(at)
 4c0:	3c014000 	lui	at,0x4000
 4c4:	4481d000 	mtc1	at,$f26
 4c8:	3c014180 	lui	at,0x4180
 4cc:	3c170000 	lui	s7,0x0
 4d0:	4481c000 	mtc1	at,$f24
 4d4:	26f70000 	addiu	s7,s7,0
 4d8:	00009825 	move	s3,zero
 4dc:	00009025 	move	s2,zero
 4e0:	241e000c 	li	s8,12
 4e4:	27b600bc 	addiu	s6,sp,188
 4e8:	00122400 	sll	a0,s2,0x10
 4ec:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 4f0:	00042403 	sra	a0,a0,0x10
 4f4:	00122400 	sll	a0,s2,0x10
 4f8:	46000506 	mov.s	$f20,$f0
 4fc:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 500:	00042403 	sra	a0,a0,0x10
 504:	4618a282 	mul.s	$f10,$f20,$f24
 508:	46000586 	mov.s	$f22,$f0
 50c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 510:	e7aa00c8 	swc1	$f10,200(sp)
 514:	461e0402 	mul.s	$f16,$f0,$f30
 518:	c7a600c8 	lwc1	$f6,200(sp)
 51c:	4618b102 	mul.s	$f4,$f22,$f24
 520:	00000000 	nop
 524:	461c3202 	mul.s	$f8,$f6,$f28
 528:	461a8480 	add.s	$f18,$f16,$f26
 52c:	e7a400d0 	swc1	$f4,208(sp)
 530:	e7b200cc 	swc1	$f18,204(sp)
 534:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 538:	e7a800bc 	swc1	$f8,188(sp)
 53c:	3c014080 	lui	at,0x4080
 540:	44815000 	mtc1	at,$f10
 544:	c7a400d0 	lwc1	$f4,208(sp)
 548:	c7a800c8 	lwc1	$f8,200(sp)
 54c:	460a0402 	mul.s	$f16,$f0,$f10
 550:	461a8480 	add.s	$f18,$f16,$f26
 554:	461c2182 	mul.s	$f6,$f4,$f28
 558:	e7b200c0 	swc1	$f18,192(sp)
 55c:	c7b200cc 	lwc1	$f18,204(sp)
 560:	e7a600c4 	swc1	$f6,196(sp)
 564:	c62a0000 	lwc1	$f10,0(s1)
 568:	460a4400 	add.s	$f16,$f8,$f10
 56c:	e7b000c8 	swc1	$f16,200(sp)
 570:	c6260004 	lwc1	$f6,4(s1)
 574:	46069200 	add.s	$f8,$f18,$f6
 578:	e7a800cc 	swc1	$f8,204(sp)
 57c:	c62a0008 	lwc1	$f10,8(s1)
 580:	460a2400 	add.s	$f16,$f4,$f10
 584:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 588:	e7b000d0 	swc1	$f16,208(sp)
 58c:	3c010000 	lui	at,0x0
 590:	c432003c 	lwc1	$f18,60(at)
 594:	24100020 	li	s0,32
 598:	4612003c 	c.lt.s	$f0,$f18
 59c:	00000000 	nop
 5a0:	45000003 	bc1f	5b0 <ObjKibako_WaterBreak+0x198>
 5a4:	00000000 	nop
 5a8:	10000001 	b	5b0 <ObjKibako_WaterBreak+0x198>
 5ac:	24100040 	li	s0,64
 5b0:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 5b4:	00000000 	nop
 5b8:	3c0141f0 	lui	at,0x41f0
 5bc:	44813000 	mtc1	at,$f6
 5c0:	3c014120 	lui	at,0x4120
 5c4:	44812000 	mtc1	at,$f4
 5c8:	46060202 	mul.s	$f8,$f0,$f6
 5cc:	2419ff4c 	li	t9,-180
 5d0:	2408001e 	li	t0,30
 5d4:	2409001e 	li	t1,30
 5d8:	240c0020 	li	t4,32
 5dc:	240d0046 	li	t5,70
 5e0:	240effff 	li	t6,-1
 5e4:	46044280 	add.s	$f10,$f8,$f4
 5e8:	240f0003 	li	t7,3
 5ec:	afaf0038 	sw	t7,56(sp)
 5f0:	afae0034 	sw	t6,52(sp)
 5f4:	4600540d 	trunc.w.s	$f16,$f10
 5f8:	afad0030 	sw	t5,48(sp)
 5fc:	afac002c 	sw	t4,44(sp)
 600:	afa9001c 	sw	t1,28(sp)
 604:	440b8000 	mfc1	t3,$f16
 608:	afa80018 	sw	t0,24(sp)
 60c:	afb90010 	sw	t9,16(sp)
 610:	02802025 	move	a0,s4
 614:	02a02825 	move	a1,s5
 618:	02c03025 	move	a2,s6
 61c:	02203825 	move	a3,s1
 620:	afb00014 	sw	s0,20(sp)
 624:	afa00020 	sw	zero,32(sp)
 628:	afa00028 	sw	zero,40(sp)
 62c:	afb7003c 	sw	s7,60(sp)
 630:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 634:	afab0024 	sw	t3,36(sp)
 638:	26524e20 	addiu	s2,s2,20000
 63c:	00129400 	sll	s2,s2,0x10
 640:	26730001 	addiu	s3,s3,1
 644:	167effa8 	bne	s3,s8,4e8 <ObjKibako_WaterBreak+0xd0>
 648:	00129403 	sra	s2,s2,0x10
 64c:	8fbf009c 	lw	ra,156(sp)
 650:	d7b40048 	ldc1	$f20,72(sp)
 654:	d7b60050 	ldc1	$f22,80(sp)
 658:	d7b80058 	ldc1	$f24,88(sp)
 65c:	d7ba0060 	ldc1	$f26,96(sp)
 660:	d7bc0068 	ldc1	$f28,104(sp)
 664:	d7be0070 	ldc1	$f30,112(sp)
 668:	8fb00078 	lw	s0,120(sp)
 66c:	8fb1007c 	lw	s1,124(sp)
 670:	8fb20080 	lw	s2,128(sp)
 674:	8fb30084 	lw	s3,132(sp)
 678:	8fb40088 	lw	s4,136(sp)
 67c:	8fb5008c 	lw	s5,140(sp)
 680:	8fb60090 	lw	s6,144(sp)
 684:	8fb70094 	lw	s7,148(sp)
 688:	8fbe0098 	lw	s8,152(sp)
 68c:	03e00008 	jr	ra
 690:	27bd00e0 	addiu	sp,sp,224

00000694 <ObjKibako_SetupIdle>:
 694:	3c0e0000 	lui	t6,0x0
 698:	25ce0000 	addiu	t6,t6,0
 69c:	240f00fe 	li	t7,254
 6a0:	ac8e014c 	sw	t6,332(a0)
 6a4:	03e00008 	jr	ra
 6a8:	a08f00ae 	sb	t7,174(a0)

000006ac <ObjKibako_Idle>:
 6ac:	27bdffc8 	addiu	sp,sp,-56
 6b0:	afbf0024 	sw	ra,36(sp)
 6b4:	afb10020 	sw	s1,32(sp)
 6b8:	afb0001c 	sw	s0,28(sp)
 6bc:	00808025 	move	s0,a0
 6c0:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 6c4:	00a08825 	move	s1,a1
 6c8:	50400006 	beqzl	v0,6e4 <ObjKibako_Idle+0x38>
 6cc:	960e0088 	lhu	t6,136(s0)
 6d0:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 6d4:	02002025 	move	a0,s0
 6d8:	1000006d 	b	890 <ObjKibako_Idle+0x1e4>
 6dc:	8fbf0024 	lw	ra,36(sp)
 6e0:	960e0088 	lhu	t6,136(s0)
 6e4:	3c014198 	lui	at,0x4198
 6e8:	31cf0020 	andi	t7,t6,0x20
 6ec:	51e00017 	beqzl	t7,74c <ObjKibako_Idle+0xa0>
 6f0:	92180161 	lbu	t8,353(s0)
 6f4:	44812000 	mtc1	at,$f4
 6f8:	c6060084 	lwc1	$f6,132(s0)
 6fc:	02002025 	move	a0,s0
 700:	4606203c 	c.lt.s	$f4,$f6
 704:	00000000 	nop
 708:	45020010 	bc1fl	74c <ObjKibako_Idle+0xa0>
 70c:	92180161 	lbu	t8,353(s0)
 710:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 714:	02202825 	move	a1,s1
 718:	02202025 	move	a0,s1
 71c:	26050024 	addiu	a1,s0,36
 720:	24060014 	li	a2,20
 724:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 728:	240728aa 	li	a3,10410
 72c:	02002025 	move	a0,s0
 730:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 734:	02202825 	move	a1,s1
 738:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 73c:	02002025 	move	a0,s0
 740:	10000053 	b	890 <ObjKibako_Idle+0x1e4>
 744:	8fbf0024 	lw	ra,36(sp)
 748:	92180161 	lbu	t8,353(s0)
 74c:	02002025 	move	a0,s0
 750:	33190002 	andi	t9,t8,0x2
 754:	1320000f 	beqz	t9,794 <ObjKibako_Idle+0xe8>
 758:	00000000 	nop
 75c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 760:	02202825 	move	a1,s1
 764:	02202025 	move	a0,s1
 768:	26050024 	addiu	a1,s0,36
 76c:	24060014 	li	a2,20
 770:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 774:	240728aa 	li	a3,10410
 778:	02002025 	move	a0,s0
 77c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 780:	02202825 	move	a1,s1
 784:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 788:	02002025 	move	a0,s0
 78c:	10000040 	b	890 <ObjKibako_Idle+0x1e4>
 790:	8fbf0024 	lw	ra,36(sp)
 794:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 798:	02002025 	move	a0,s0
 79c:	44804000 	mtc1	zero,$f8
 7a0:	24080005 	li	t0,5
 7a4:	afa80014 	sw	t0,20(sp)
 7a8:	02202025 	move	a0,s1
 7ac:	02002825 	move	a1,s0
 7b0:	3c064198 	lui	a2,0x4198
 7b4:	3c0741a0 	lui	a3,0x41a0
 7b8:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 7bc:	e7a80010 	swc1	$f8,16(sp)
 7c0:	92020162 	lbu	v0,354(s0)
 7c4:	3c0141e0 	lui	at,0x41e0
 7c8:	02002025 	move	a0,s0
 7cc:	30490008 	andi	t1,v0,0x8
 7d0:	15200009 	bnez	t1,7f8 <ObjKibako_Idle+0x14c>
 7d4:	26050150 	addiu	a1,s0,336
 7d8:	44815000 	mtc1	at,$f10
 7dc:	c6100090 	lwc1	$f16,144(s0)
 7e0:	344a0008 	ori	t2,v0,0x8
 7e4:	4610503c 	c.lt.s	$f10,$f16
 7e8:	00000000 	nop
 7ec:	45020003 	bc1fl	7fc <ObjKibako_Idle+0x150>
 7f0:	3c014416 	lui	at,0x4416
 7f4:	a20a0162 	sb	t2,354(s0)
 7f8:	3c014416 	lui	at,0x4416
 7fc:	44819000 	mtc1	at,$f18
 800:	c6000090 	lwc1	$f0,144(s0)
 804:	4612003c 	c.lt.s	$f0,$f18
 808:	00000000 	nop
 80c:	45020017 	bc1fl	86c <ObjKibako_Idle+0x1c0>
 810:	3c0142c8 	lui	at,0x42c8
 814:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 818:	afa5002c 	sw	a1,44(sp)
 81c:	3c010001 	lui	at,0x1
 820:	34211e60 	ori	at,at,0x1e60
 824:	02212821 	addu	a1,s1,at
 828:	afa50028 	sw	a1,40(sp)
 82c:	02202025 	move	a0,s1
 830:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 834:	8fa6002c 	lw	a2,44(sp)
 838:	3c014334 	lui	at,0x4334
 83c:	44812000 	mtc1	at,$f4
 840:	c6000090 	lwc1	$f0,144(s0)
 844:	8fa50028 	lw	a1,40(sp)
 848:	02202025 	move	a0,s1
 84c:	4604003c 	c.lt.s	$f0,$f4
 850:	00000000 	nop
 854:	45020005 	bc1fl	86c <ObjKibako_Idle+0x1c0>
 858:	3c0142c8 	lui	at,0x42c8
 85c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 860:	8fa6002c 	lw	a2,44(sp)
 864:	c6000090 	lwc1	$f0,144(s0)
 868:	3c0142c8 	lui	at,0x42c8
 86c:	44813000 	mtc1	at,$f6
 870:	02002025 	move	a0,s0
 874:	4606003c 	c.lt.s	$f0,$f6
 878:	00000000 	nop
 87c:	45020004 	bc1fl	890 <ObjKibako_Idle+0x1e4>
 880:	8fbf0024 	lw	ra,36(sp)
 884:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 888:	02202825 	move	a1,s1
 88c:	8fbf0024 	lw	ra,36(sp)
 890:	8fb0001c 	lw	s0,28(sp)
 894:	8fb10020 	lw	s1,32(sp)
 898:	03e00008 	jr	ra
 89c:	27bd0038 	addiu	sp,sp,56

000008a0 <ObjKibako_SetupHeld>:
 8a0:	27bdffe8 	addiu	sp,sp,-24
 8a4:	afbf0014 	sw	ra,20(sp)
 8a8:	3c0e0000 	lui	t6,0x0
 8ac:	25ce0000 	addiu	t6,t6,0
 8b0:	240fffff 	li	t7,-1
 8b4:	ac8e014c 	sw	t6,332(a0)
 8b8:	a08f0003 	sb	t7,3(a0)
 8bc:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 8c0:	24050878 	li	a1,2168
 8c4:	8fbf0014 	lw	ra,20(sp)
 8c8:	27bd0018 	addiu	sp,sp,24
 8cc:	03e00008 	jr	ra
 8d0:	00000000 	nop

000008d4 <ObjKibako_Held>:
 8d4:	27bdffd8 	addiu	sp,sp,-40
 8d8:	afbf0024 	sw	ra,36(sp)
 8dc:	afb00020 	sw	s0,32(sp)
 8e0:	00808025 	move	s0,a0
 8e4:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 8e8:	afa5002c 	sw	a1,44(sp)
 8ec:	10400025 	beqz	v0,984 <ObjKibako_Held+0xb0>
 8f0:	8fae002c 	lw	t6,44(sp)
 8f4:	3c0f0001 	lui	t7,0x1
 8f8:	01ee7821 	addu	t7,t7,t6
 8fc:	81ef1cbc 	lb	t7,7356(t7)
 900:	c6000068 	lwc1	$f0,104(s0)
 904:	3c010000 	lui	at,0x0
 908:	a20f0003 	sb	t7,3(s0)
 90c:	c4240040 	lwc1	$f4,64(at)
 910:	46000005 	abs.s	$f0,$f0
 914:	02002025 	move	a0,s0
 918:	4604003c 	c.lt.s	$f0,$f4
 91c:	00000000 	nop
 920:	45000009 	bc1f	948 <ObjKibako_Held+0x74>
 924:	00000000 	nop
 928:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 92c:	240528ab 	li	a1,10411
 930:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 934:	02002025 	move	a0,s0
 938:	92180162 	lbu	t8,354(s0)
 93c:	3319fff7 	andi	t9,t8,0xfff7
 940:	10000007 	b	960 <ObjKibako_Held+0x8c>
 944:	a2190162 	sb	t9,354(s0)
 948:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 94c:	02002025 	move	a0,s0
 950:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 954:	02002025 	move	a0,s0
 958:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 95c:	02002025 	move	a0,s0
 960:	44803000 	mtc1	zero,$f6
 964:	24080005 	li	t0,5
 968:	afa80014 	sw	t0,20(sp)
 96c:	8fa4002c 	lw	a0,44(sp)
 970:	02002825 	move	a1,s0
 974:	3c064198 	lui	a2,0x4198
 978:	3c0741a0 	lui	a3,0x41a0
 97c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 980:	e7a60010 	swc1	$f6,16(sp)
 984:	8fbf0024 	lw	ra,36(sp)
 988:	8fb00020 	lw	s0,32(sp)
 98c:	27bd0028 	addiu	sp,sp,40
 990:	03e00008 	jr	ra
 994:	00000000 	nop

00000998 <ObjKibako_SetupThrown>:
 998:	27bdffe8 	addiu	sp,sp,-24
 99c:	afbf0014 	sw	ra,20(sp)
 9a0:	00802825 	move	a1,a0
 9a4:	84840032 	lh	a0,50(a0)
 9a8:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 9ac:	afa50018 	sw	a1,24(sp)
 9b0:	8fa50018 	lw	a1,24(sp)
 9b4:	c4a40068 	lwc1	$f4,104(a1)
 9b8:	84a40032 	lh	a0,50(a1)
 9bc:	46040182 	mul.s	$f6,$f0,$f4
 9c0:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 9c4:	e4a6005c 	swc1	$f6,92(a1)
 9c8:	8fa50018 	lw	a1,24(sp)
 9cc:	3c0f0000 	lui	t7,0x0
 9d0:	240e00f0 	li	t6,240
 9d4:	c4a80068 	lwc1	$f8,104(a1)
 9d8:	25ef0000 	addiu	t7,t7,0
 9dc:	a0ae00ae 	sb	t6,174(a1)
 9e0:	46080282 	mul.s	$f10,$f0,$f8
 9e4:	acaf014c 	sw	t7,332(a1)
 9e8:	e4aa0064 	swc1	$f10,100(a1)
 9ec:	8fbf0014 	lw	ra,20(sp)
 9f0:	27bd0018 	addiu	sp,sp,24
 9f4:	03e00008 	jr	ra
 9f8:	00000000 	nop

000009fc <ObjKibako_Thrown>:
 9fc:	27bdffc8 	addiu	sp,sp,-56
 a00:	afbf0024 	sw	ra,36(sp)
 a04:	afb10020 	sw	s1,32(sp)
 a08:	afb0001c 	sw	s0,28(sp)
 a0c:	94820088 	lhu	v0,136(a0)
 a10:	00a08825 	move	s1,a1
 a14:	00808025 	move	s0,a0
 a18:	304e000b 	andi	t6,v0,0xb
 a1c:	15c00006 	bnez	t6,a38 <ObjKibako_Thrown+0x3c>
 a20:	02202825 	move	a1,s1
 a24:	908f0160 	lbu	t7,352(a0)
 a28:	30590040 	andi	t9,v0,0x40
 a2c:	31f80002 	andi	t8,t7,0x2
 a30:	1300000f 	beqz	t8,a70 <ObjKibako_Thrown+0x74>
 a34:	00000000 	nop
 a38:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 a3c:	02002025 	move	a0,s0
 a40:	02202025 	move	a0,s1
 a44:	26050024 	addiu	a1,s0,36
 a48:	24060014 	li	a2,20
 a4c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 a50:	240728aa 	li	a3,10410
 a54:	02002025 	move	a0,s0
 a58:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 a5c:	02202825 	move	a1,s1
 a60:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 a64:	02002025 	move	a0,s0
 a68:	1000002e 	b	b24 <ObjKibako_Thrown+0x128>
 a6c:	8fbf0024 	lw	ra,36(sp)
 a70:	1320000f 	beqz	t9,ab0 <ObjKibako_Thrown+0xb4>
 a74:	02002025 	move	a0,s0
 a78:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 a7c:	02202825 	move	a1,s1
 a80:	02202025 	move	a0,s1
 a84:	26050024 	addiu	a1,s0,36
 a88:	24060014 	li	a2,20
 a8c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 a90:	240728aa 	li	a3,10410
 a94:	02002025 	move	a0,s0
 a98:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 a9c:	02202825 	move	a1,s1
 aa0:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 aa4:	02002025 	move	a0,s0
 aa8:	1000001e 	b	b24 <ObjKibako_Thrown+0x128>
 aac:	8fbf0024 	lw	ra,36(sp)
 ab0:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 ab4:	02002025 	move	a0,s0
 ab8:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 abc:	02002025 	move	a0,s0
 ac0:	44802000 	mtc1	zero,$f4
 ac4:	24080005 	li	t0,5
 ac8:	afa80014 	sw	t0,20(sp)
 acc:	02202025 	move	a0,s1
 ad0:	02002825 	move	a1,s0
 ad4:	3c064198 	lui	a2,0x4198
 ad8:	3c0741a0 	lui	a3,0x41a0
 adc:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 ae0:	e7a40010 	swc1	$f4,16(sp)
 ae4:	26050150 	addiu	a1,s0,336
 ae8:	afa5002c 	sw	a1,44(sp)
 aec:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 af0:	02002025 	move	a0,s0
 af4:	3c010001 	lui	at,0x1
 af8:	34211e60 	ori	at,at,0x1e60
 afc:	02218021 	addu	s0,s1,at
 b00:	02002825 	move	a1,s0
 b04:	02202025 	move	a0,s1
 b08:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 b0c:	8fa6002c 	lw	a2,44(sp)
 b10:	02202025 	move	a0,s1
 b14:	02002825 	move	a1,s0
 b18:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 b1c:	8fa6002c 	lw	a2,44(sp)
 b20:	8fbf0024 	lw	ra,36(sp)
 b24:	8fb0001c 	lw	s0,28(sp)
 b28:	8fb10020 	lw	s1,32(sp)
 b2c:	03e00008 	jr	ra
 b30:	27bd0038 	addiu	sp,sp,56

00000b34 <ObjKibako_Update>:
 b34:	27bdffe8 	addiu	sp,sp,-24
 b38:	afbf0014 	sw	ra,20(sp)
 b3c:	8c99014c 	lw	t9,332(a0)
 b40:	0320f809 	jalr	t9
 b44:	00000000 	nop
 b48:	8fbf0014 	lw	ra,20(sp)
 b4c:	27bd0018 	addiu	sp,sp,24
 b50:	03e00008 	jr	ra
 b54:	00000000 	nop

00000b58 <ObjKibako_Draw>:
 b58:	27bdffe8 	addiu	sp,sp,-24
 b5c:	afa40018 	sw	a0,24(sp)
 b60:	00a02025 	move	a0,a1
 b64:	afbf0014 	sw	ra,20(sp)
 b68:	3c050000 	lui	a1,0x0
 b6c:	0c000000 	jal	0 <ObjKibako_SpawnCollectible>
 b70:	24a50000 	addiu	a1,a1,0
 b74:	8fbf0014 	lw	ra,20(sp)
 b78:	27bd0018 	addiu	sp,sp,24
 b7c:	03e00008 	jr	ra
 b80:	00000000 	nop
	...
