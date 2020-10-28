
build/src/overlays/actors/ovl_Obj_Kibako2/z_obj_kibako2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B959D0>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	00803025 	move	a2,a0
   8:	afa50024 	sw	a1,36(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf0014 	sw	ra,20(sp)
  14:	24c50164 	addiu	a1,a2,356
  18:	afa50018 	sw	a1,24(sp)
  1c:	0c000000 	jal	0 <func_80B959D0>
  20:	afa60020 	sw	a2,32(sp)
  24:	3c070000 	lui	a3,0x0
  28:	8fa60020 	lw	a2,32(sp)
  2c:	24e70000 	addiu	a3,a3,0
  30:	8fa40024 	lw	a0,36(sp)
  34:	0c000000 	jal	0 <func_80B959D0>
  38:	8fa50018 	lw	a1,24(sp)
  3c:	8fa40020 	lw	a0,32(sp)
  40:	0c000000 	jal	0 <func_80B959D0>
  44:	8fa50018 	lw	a1,24(sp)
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	27bd0020 	addiu	sp,sp,32
  50:	03e00008 	jr	ra
  54:	00000000 	nop

00000058 <func_80B95A28>:
  58:	27bdff18 	addiu	sp,sp,-232
  5c:	f7be0070 	sdc1	$f30,112(sp)
  60:	3c014000 	lui	at,0x4000
  64:	4481f000 	mtc1	at,$f30
  68:	f7bc0068 	sdc1	$f28,104(sp)
  6c:	3c014120 	lui	at,0x4120
  70:	4481e000 	mtc1	at,$f28
  74:	afb70094 	sw	s7,148(sp)
  78:	f7ba0060 	sdc1	$f26,96(sp)
  7c:	3c0141f0 	lui	at,0x41f0
  80:	afbe0098 	sw	s8,152(sp)
  84:	afb60090 	sw	s6,144(sp)
  88:	afb5008c 	sw	s5,140(sp)
  8c:	afb40088 	sw	s4,136(sp)
  90:	afb30084 	sw	s3,132(sp)
  94:	afb20080 	sw	s2,128(sp)
  98:	afb1007c 	sw	s1,124(sp)
  9c:	3c170600 	lui	s7,0x600
  a0:	4481d000 	mtc1	at,$f26
  a4:	00a0a825 	move	s5,a1
  a8:	afbf009c 	sw	ra,156(sp)
  ac:	afb00078 	sw	s0,120(sp)
  b0:	f7b80058 	sdc1	$f24,88(sp)
  b4:	f7b60050 	sdc1	$f22,80(sp)
  b8:	f7b40048 	sdc1	$f20,72(sp)
  bc:	26f71000 	addiu	s7,s7,4096
  c0:	00008825 	move	s1,zero
  c4:	24920024 	addiu	s2,a0,36
  c8:	00009825 	move	s3,zero
  cc:	27b400d0 	addiu	s4,sp,208
  d0:	27b600c4 	addiu	s6,sp,196
  d4:	241e0010 	li	s8,16
  d8:	00112400 	sll	a0,s1,0x10
  dc:	0c000000 	jal	0 <func_80B959D0>
  e0:	00042403 	sra	a0,a0,0x10
  e4:	00112400 	sll	a0,s1,0x10
  e8:	46000506 	mov.s	$f20,$f0
  ec:	0c000000 	jal	0 <func_80B959D0>
  f0:	00042403 	sra	a0,a0,0x10
  f4:	0c000000 	jal	0 <func_80B959D0>
  f8:	46000586 	mov.s	$f22,$f0
  fc:	461a0602 	mul.s	$f24,$f0,$f26
 100:	00000000 	nop
 104:	4618a102 	mul.s	$f4,$f20,$f24
 108:	0c000000 	jal	0 <func_80B959D0>
 10c:	e7a400d0 	swc1	$f4,208(sp)
 110:	461c0182 	mul.s	$f6,$f0,$f28
 114:	3c010000 	lui	at,0x0
 118:	c4320000 	lwc1	$f18,0(at)
 11c:	4618b282 	mul.s	$f10,$f22,$f24
 120:	c7b000d0 	lwc1	$f16,208(sp)
 124:	46128102 	mul.s	$f4,$f16,$f18
 128:	461e3200 	add.s	$f8,$f6,$f30
 12c:	e7aa00d8 	swc1	$f10,216(sp)
 130:	e7a800d4 	swc1	$f8,212(sp)
 134:	0c000000 	jal	0 <func_80B959D0>
 138:	e7a400c4 	swc1	$f4,196(sp)
 13c:	461c0182 	mul.s	$f6,$f0,$f28
 140:	3c010000 	lui	at,0x0
 144:	c4300000 	lwc1	$f16,0(at)
 148:	c7aa00d8 	lwc1	$f10,216(sp)
 14c:	c7a400d0 	lwc1	$f4,208(sp)
 150:	46105482 	mul.s	$f18,$f10,$f16
 154:	461e3200 	add.s	$f8,$f6,$f30
 158:	c7b000d4 	lwc1	$f16,212(sp)
 15c:	e7a800c8 	swc1	$f8,200(sp)
 160:	e7b200cc 	swc1	$f18,204(sp)
 164:	c6460000 	lwc1	$f6,0(s2)
 168:	46062200 	add.s	$f8,$f4,$f6
 16c:	e7a800d0 	swc1	$f8,208(sp)
 170:	c6520004 	lwc1	$f18,4(s2)
 174:	46128100 	add.s	$f4,$f16,$f18
 178:	e7a400d4 	swc1	$f4,212(sp)
 17c:	c6460008 	lwc1	$f6,8(s2)
 180:	46065200 	add.s	$f8,$f10,$f6
 184:	0c000000 	jal	0 <func_80B959D0>
 188:	e7a800d8 	swc1	$f8,216(sp)
 18c:	3c010000 	lui	at,0x0
 190:	c4300000 	lwc1	$f16,0(at)
 194:	3c010000 	lui	at,0x0
 198:	4610003c 	c.lt.s	$f0,$f16
 19c:	00000000 	nop
 1a0:	45000003 	bc1f	1b0 <func_80B95A28+0x158>
 1a4:	00000000 	nop
 1a8:	10000009 	b	1d0 <func_80B95A28+0x178>
 1ac:	24100060 	li	s0,96
 1b0:	c4320000 	lwc1	$f18,0(at)
 1b4:	24100020 	li	s0,32
 1b8:	4612003c 	c.lt.s	$f0,$f18
 1bc:	00000000 	nop
 1c0:	45000003 	bc1f	1d0 <func_80B95A28+0x178>
 1c4:	00000000 	nop
 1c8:	10000001 	b	1d0 <func_80B95A28+0x178>
 1cc:	24100040 	li	s0,64
 1d0:	0c000000 	jal	0 <func_80B959D0>
 1d4:	00000000 	nop
 1d8:	461a0102 	mul.s	$f4,$f0,$f26
 1dc:	3c0140a0 	lui	at,0x40a0
 1e0:	44815000 	mtc1	at,$f10
 1e4:	240eff38 	li	t6,-200
 1e8:	240f001c 	li	t7,28
 1ec:	24180002 	li	t8,2
 1f0:	24090046 	li	t1,70
 1f4:	460a2180 	add.s	$f6,$f4,$f10
 1f8:	240affff 	li	t2,-1
 1fc:	240b0170 	li	t3,368
 200:	afab0038 	sw	t3,56(sp)
 204:	4600320d 	trunc.w.s	$f8,$f6
 208:	afaa0034 	sw	t2,52(sp)
 20c:	afa90030 	sw	t1,48(sp)
 210:	afb8001c 	sw	t8,28(sp)
 214:	44084000 	mfc1	t0,$f8
 218:	afaf0018 	sw	t7,24(sp)
 21c:	afae0010 	sw	t6,16(sp)
 220:	02a02025 	move	a0,s5
 224:	02802825 	move	a1,s4
 228:	02c03025 	move	a2,s6
 22c:	02803825 	move	a3,s4
 230:	afb00014 	sw	s0,20(sp)
 234:	afa00020 	sw	zero,32(sp)
 238:	afa00028 	sw	zero,40(sp)
 23c:	afa0002c 	sw	zero,44(sp)
 240:	afb7003c 	sw	s7,60(sp)
 244:	0c000000 	jal	0 <func_80B959D0>
 248:	afa80024 	sw	t0,36(sp)
 24c:	26314e20 	addiu	s1,s1,20000
 250:	00118c00 	sll	s1,s1,0x10
 254:	26730001 	addiu	s3,s3,1
 258:	167eff9f 	bne	s3,s8,d8 <func_80B95A28+0x80>
 25c:	00118c03 	sra	s1,s1,0x10
 260:	240c0064 	li	t4,100
 264:	240d00a0 	li	t5,160
 268:	240e0001 	li	t6,1
 26c:	afae0018 	sw	t6,24(sp)
 270:	afad0014 	sw	t5,20(sp)
 274:	afac0010 	sw	t4,16(sp)
 278:	02a02025 	move	a0,s5
 27c:	02402825 	move	a1,s2
 280:	3c0642b4 	lui	a2,0x42b4
 284:	0c000000 	jal	0 <func_80B959D0>
 288:	24070006 	li	a3,6
 28c:	8fbf009c 	lw	ra,156(sp)
 290:	d7b40048 	ldc1	$f20,72(sp)
 294:	d7b60050 	ldc1	$f22,80(sp)
 298:	d7b80058 	ldc1	$f24,88(sp)
 29c:	d7ba0060 	ldc1	$f26,96(sp)
 2a0:	d7bc0068 	ldc1	$f28,104(sp)
 2a4:	d7be0070 	ldc1	$f30,112(sp)
 2a8:	8fb00078 	lw	s0,120(sp)
 2ac:	8fb1007c 	lw	s1,124(sp)
 2b0:	8fb20080 	lw	s2,128(sp)
 2b4:	8fb30084 	lw	s3,132(sp)
 2b8:	8fb40088 	lw	s4,136(sp)
 2bc:	8fb5008c 	lw	s5,140(sp)
 2c0:	8fb60090 	lw	s6,144(sp)
 2c4:	8fb70094 	lw	s7,148(sp)
 2c8:	8fbe0098 	lw	s8,152(sp)
 2cc:	03e00008 	jr	ra
 2d0:	27bd00e8 	addiu	sp,sp,232

000002d4 <func_80B95CA4>:
 2d4:	27bdffe8 	addiu	sp,sp,-24
 2d8:	afbf0014 	sw	ra,20(sp)
 2dc:	afa5001c 	sw	a1,28(sp)
 2e0:	84820014 	lh	v0,20(a0)
 2e4:	00803825 	move	a3,a0
 2e8:	848301b4 	lh	v1,436(a0)
 2ec:	04400009 	bltz	v0,314 <func_80B95CA4+0x40>
 2f0:	2841001a 	slti	at,v0,26
 2f4:	10200007 	beqz	at,314 <func_80B95CA4+0x40>
 2f8:	00a02025 	move	a0,a1
 2fc:	00037200 	sll	t6,v1,0x8
 300:	004e3025 	or	a2,v0,t6
 304:	00063400 	sll	a2,a2,0x10
 308:	00063403 	sra	a2,a2,0x10
 30c:	0c000000 	jal	0 <func_80B959D0>
 310:	24e50024 	addiu	a1,a3,36
 314:	8fbf0014 	lw	ra,20(sp)
 318:	27bd0018 	addiu	sp,sp,24
 31c:	03e00008 	jr	ra
 320:	00000000 	nop

00000324 <ObjKibako2_Init>:
 324:	27bdffc8 	addiu	sp,sp,-56
 328:	afbf001c 	sw	ra,28(sp)
 32c:	afb00018 	sw	s0,24(sp)
 330:	afa5003c 	sw	a1,60(sp)
 334:	00808025 	move	s0,a0
 338:	afa0002c 	sw	zero,44(sp)
 33c:	0c000000 	jal	0 <func_80B959D0>
 340:	00002825 	move	a1,zero
 344:	3c050000 	lui	a1,0x0
 348:	24a50000 	addiu	a1,a1,0
 34c:	0c000000 	jal	0 <func_80B959D0>
 350:	02002025 	move	a0,s0
 354:	02002025 	move	a0,s0
 358:	0c000000 	jal	0 <func_80B959D0>
 35c:	8fa5003c 	lw	a1,60(sp)
 360:	3c040600 	lui	a0,0x600
 364:	24840b70 	addiu	a0,a0,2928
 368:	0c000000 	jal	0 <func_80B959D0>
 36c:	27a5002c 	addiu	a1,sp,44
 370:	8fa4003c 	lw	a0,60(sp)
 374:	02003025 	move	a2,s0
 378:	8fa7002c 	lw	a3,44(sp)
 37c:	0c000000 	jal	0 <func_80B959D0>
 380:	24850810 	addiu	a1,a0,2064
 384:	a60000b4 	sh	zero,180(s0)
 388:	860f0018 	lh	t7,24(s0)
 38c:	860300b4 	lh	v1,180(s0)
 390:	3c190000 	lui	t9,0x0
 394:	31f8003f 	andi	t8,t7,0x3f
 398:	a61801b4 	sh	t8,436(s0)
 39c:	27390000 	addiu	t9,t9,0
 3a0:	3c040000 	lui	a0,0x0
 3a4:	ae02014c 	sw	v0,332(s0)
 3a8:	ae1901b0 	sw	t9,432(s0)
 3ac:	24840000 	addiu	a0,a0,0
 3b0:	860601b4 	lh	a2,436(s0)
 3b4:	8605001c 	lh	a1,28(s0)
 3b8:	86070014 	lh	a3,20(s0)
 3bc:	a6030030 	sh	v1,48(s0)
 3c0:	a60300b8 	sh	v1,184(s0)
 3c4:	a6030034 	sh	v1,52(s0)
 3c8:	0c000000 	jal	0 <func_80B959D0>
 3cc:	a6030018 	sh	v1,24(s0)
 3d0:	8fbf001c 	lw	ra,28(sp)
 3d4:	8fb00018 	lw	s0,24(sp)
 3d8:	27bd0038 	addiu	sp,sp,56
 3dc:	03e00008 	jr	ra
 3e0:	00000000 	nop

000003e4 <ObjKibako2_Destroy>:
 3e4:	27bdffe8 	addiu	sp,sp,-24
 3e8:	afa40018 	sw	a0,24(sp)
 3ec:	00a03825 	move	a3,a1
 3f0:	00a02025 	move	a0,a1
 3f4:	8fa50018 	lw	a1,24(sp)
 3f8:	afbf0014 	sw	ra,20(sp)
 3fc:	afa7001c 	sw	a3,28(sp)
 400:	0c000000 	jal	0 <func_80B959D0>
 404:	24a50164 	addiu	a1,a1,356
 408:	8fa4001c 	lw	a0,28(sp)
 40c:	8fae0018 	lw	t6,24(sp)
 410:	24850810 	addiu	a1,a0,2064
 414:	0c000000 	jal	0 <func_80B959D0>
 418:	8dc6014c 	lw	a2,332(t6)
 41c:	8fbf0014 	lw	ra,20(sp)
 420:	27bd0018 	addiu	sp,sp,24
 424:	03e00008 	jr	ra
 428:	00000000 	nop

0000042c <func_80B95DFC>:
 42c:	27bdffe0 	addiu	sp,sp,-32
 430:	afbf001c 	sw	ra,28(sp)
 434:	afb10018 	sw	s1,24(sp)
 438:	afb00014 	sw	s0,20(sp)
 43c:	908e0175 	lbu	t6,373(a0)
 440:	00808025 	move	s0,a0
 444:	00a08825 	move	s1,a1
 448:	31cf0002 	andi	t7,t6,0x2
 44c:	55e0000a 	bnezl	t7,478 <func_80B95DFC+0x4c>
 450:	02002025 	move	a0,s0
 454:	84980018 	lh	t8,24(a0)
 458:	00a02025 	move	a0,a1
 45c:	57000006 	bnezl	t8,478 <func_80B95DFC+0x4c>
 460:	02002025 	move	a0,s0
 464:	0c000000 	jal	0 <func_80B959D0>
 468:	02002825 	move	a1,s0
 46c:	10400015 	beqz	v0,4c4 <func_80B95DFC+0x98>
 470:	3c014416 	lui	at,0x4416
 474:	02002025 	move	a0,s0
 478:	0c000000 	jal	0 <func_80B959D0>
 47c:	02202825 	move	a1,s1
 480:	02202025 	move	a0,s1
 484:	26050024 	addiu	a1,s0,36
 488:	24060014 	li	a2,20
 48c:	0c000000 	jal	0 <func_80B959D0>
 490:	240728aa 	li	a3,10410
 494:	8e190004 	lw	t9,4(s0)
 498:	02202025 	move	a0,s1
 49c:	26250810 	addiu	a1,s1,2064
 4a0:	37280010 	ori	t0,t9,0x10
 4a4:	ae080004 	sw	t0,4(s0)
 4a8:	0c000000 	jal	0 <func_80B959D0>
 4ac:	8e06014c 	lw	a2,332(s0)
 4b0:	3c090000 	lui	t1,0x0
 4b4:	25290000 	addiu	t1,t1,0
 4b8:	ae000134 	sw	zero,308(s0)
 4bc:	1000000c 	b	4f0 <func_80B95DFC+0xc4>
 4c0:	ae0901b0 	sw	t1,432(s0)
 4c4:	c6040090 	lwc1	$f4,144(s0)
 4c8:	44813000 	mtc1	at,$f6
 4cc:	3c010001 	lui	at,0x1
 4d0:	34211e60 	ori	at,at,0x1e60
 4d4:	4606203c 	c.lt.s	$f4,$f6
 4d8:	02212821 	addu	a1,s1,at
 4dc:	02202025 	move	a0,s1
 4e0:	45020004 	bc1fl	4f4 <func_80B95DFC+0xc8>
 4e4:	8fbf001c 	lw	ra,28(sp)
 4e8:	0c000000 	jal	0 <func_80B959D0>
 4ec:	26060164 	addiu	a2,s0,356
 4f0:	8fbf001c 	lw	ra,28(sp)
 4f4:	8fb00014 	lw	s0,20(sp)
 4f8:	8fb10018 	lw	s1,24(sp)
 4fc:	03e00008 	jr	ra
 500:	27bd0020 	addiu	sp,sp,32

00000504 <func_80B95ED4>:
 504:	27bdffc8 	addiu	sp,sp,-56
 508:	afbf0034 	sw	ra,52(sp)
 50c:	afb00030 	sw	s0,48(sp)
 510:	8482001c 	lh	v0,28(a0)
 514:	00808025 	move	s0,a0
 518:	24a41c24 	addiu	a0,a1,7204
 51c:	304e8000 	andi	t6,v0,0x8000
 520:	15c00010 	bnez	t6,564 <func_80B95ED4+0x60>
 524:	00000000 	nop
 528:	c6040028 	lwc1	$f4,40(s0)
 52c:	8e070024 	lw	a3,36(s0)
 530:	34588000 	ori	t8,v0,0x8000
 534:	e7a40010 	swc1	$f4,16(sp)
 538:	c606002c 	lwc1	$f6,44(s0)
 53c:	afa00018 	sw	zero,24(sp)
 540:	24060095 	li	a2,149
 544:	e7a60014 	swc1	$f6,20(sp)
 548:	860f00b6 	lh	t7,182(s0)
 54c:	afa5003c 	sw	a1,60(sp)
 550:	afb80024 	sw	t8,36(sp)
 554:	afa00020 	sw	zero,32(sp)
 558:	0c000000 	jal	0 <func_80B959D0>
 55c:	afaf001c 	sw	t7,28(sp)
 560:	8fa5003c 	lw	a1,60(sp)
 564:	0c000000 	jal	0 <func_80B959D0>
 568:	02002025 	move	a0,s0
 56c:	0c000000 	jal	0 <func_80B959D0>
 570:	02002025 	move	a0,s0
 574:	8fbf0034 	lw	ra,52(sp)
 578:	8fb00030 	lw	s0,48(sp)
 57c:	27bd0038 	addiu	sp,sp,56
 580:	03e00008 	jr	ra
 584:	00000000 	nop

00000588 <ObjKibako2_Update>:
 588:	27bdffe8 	addiu	sp,sp,-24
 58c:	afbf0014 	sw	ra,20(sp)
 590:	8c9901b0 	lw	t9,432(a0)
 594:	0320f809 	jalr	t9
 598:	00000000 	nop
 59c:	8fbf0014 	lw	ra,20(sp)
 5a0:	27bd0018 	addiu	sp,sp,24
 5a4:	03e00008 	jr	ra
 5a8:	00000000 	nop

000005ac <ObjKibako2_Draw>:
 5ac:	27bdffe8 	addiu	sp,sp,-24
 5b0:	afa40018 	sw	a0,24(sp)
 5b4:	00a02025 	move	a0,a1
 5b8:	afbf0014 	sw	ra,20(sp)
 5bc:	3c050600 	lui	a1,0x600
 5c0:	0c000000 	jal	0 <func_80B959D0>
 5c4:	24a50960 	addiu	a1,a1,2400
 5c8:	8fbf0014 	lw	ra,20(sp)
 5cc:	27bd0018 	addiu	sp,sp,24
 5d0:	03e00008 	jr	ra
 5d4:	00000000 	nop
	...
