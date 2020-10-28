
build/src/overlays/actors/ovl_Bg_Gnd_Soulmeiro/z_bg_gnd_soulmeiro.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgGndSoulmeiro_Init>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	afb10030 	sw	s1,48(sp)
   8:	00a08825 	move	s1,a1
   c:	afbf0034 	sw	ra,52(sp)
  10:	afb0002c 	sw	s0,44(sp)
  14:	3c050000 	lui	a1,0x0
  18:	00808025 	move	s0,a0
  1c:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
  20:	24a5004c 	addiu	a1,a1,76
  24:	8603001c 	lh	v1,28(s0)
  28:	ae00019c 	sw	zero,412(s0)
  2c:	02202025 	move	a0,s1
  30:	306200ff 	andi	v0,v1,0xff
  34:	10400009 	beqz	v0,5c <BgGndSoulmeiro_Init+0x5c>
  38:	2605014c 	addiu	a1,s0,332
  3c:	24010001 	li	at,1
  40:	1041002e 	beq	v0,at,fc <BgGndSoulmeiro_Init+0xfc>
  44:	02202025 	move	a0,s1
  48:	24010002 	li	at,2
  4c:	5041002c 	beql	v0,at,100 <BgGndSoulmeiro_Init+0x100>
  50:	00032a03 	sra	a1,v1,0x8
  54:	10000036 	b	130 <BgGndSoulmeiro_Init+0x130>
  58:	8fbf0034 	lw	ra,52(sp)
  5c:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
  60:	afa50038 	sw	a1,56(sp)
  64:	3c070000 	lui	a3,0x0
  68:	8fa50038 	lw	a1,56(sp)
  6c:	24e70020 	addiu	a3,a3,32
  70:	02202025 	move	a0,s1
  74:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
  78:	02003025 	move	a2,s0
  7c:	8605001c 	lh	a1,28(s0)
  80:	3c0e0000 	lui	t6,0x0
  84:	25ce0000 	addiu	t6,t6,0
  88:	00052a03 	sra	a1,a1,0x8
  8c:	ae0e019c 	sw	t6,412(s0)
  90:	30a5003f 	andi	a1,a1,0x3f
  94:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
  98:	02202025 	move	a0,s1
  9c:	10400014 	beqz	v0,f0 <BgGndSoulmeiro_Init+0xf0>
  a0:	3c180000 	lui	t8,0x0
  a4:	c6040028 	lwc1	$f4,40(s0)
  a8:	8e070024 	lw	a3,36(s0)
  ac:	240f0009 	li	t7,9
  b0:	e7a40010 	swc1	$f4,16(sp)
  b4:	c606002c 	lwc1	$f6,44(s0)
  b8:	afaf0024 	sw	t7,36(sp)
  bc:	afa00020 	sw	zero,32(sp)
  c0:	afa0001c 	sw	zero,28(sp)
  c4:	afa00018 	sw	zero,24(sp)
  c8:	26241c24 	addiu	a0,s1,7204
  cc:	02202825 	move	a1,s1
  d0:	240600b7 	li	a2,183
  d4:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
  d8:	e7a60014 	swc1	$f6,20(sp)
  dc:	ae000134 	sw	zero,308(s0)
  e0:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
  e4:	02002025 	move	a0,s0
  e8:	10000011 	b	130 <BgGndSoulmeiro_Init+0x130>
  ec:	8fbf0034 	lw	ra,52(sp)
  f0:	27180000 	addiu	t8,t8,0
  f4:	1000000d 	b	12c <BgGndSoulmeiro_Init+0x12c>
  f8:	ae180134 	sw	t8,308(s0)
  fc:	00032a03 	sra	a1,v1,0x8
 100:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 104:	30a5003f 	andi	a1,a1,0x3f
 108:	10400005 	beqz	v0,120 <BgGndSoulmeiro_Init+0x120>
 10c:	3c080000 	lui	t0,0x0
 110:	3c190000 	lui	t9,0x0
 114:	27390000 	addiu	t9,t9,0
 118:	10000002 	b	124 <BgGndSoulmeiro_Init+0x124>
 11c:	ae190134 	sw	t9,308(s0)
 120:	ae000134 	sw	zero,308(s0)
 124:	25080000 	addiu	t0,t0,0
 128:	ae08019c 	sw	t0,412(s0)
 12c:	8fbf0034 	lw	ra,52(sp)
 130:	8fb0002c 	lw	s0,44(sp)
 134:	8fb10030 	lw	s1,48(sp)
 138:	03e00008 	jr	ra
 13c:	27bd0048 	addiu	sp,sp,72

00000140 <BgGndSoulmeiro_Destroy>:
 140:	27bdffe8 	addiu	sp,sp,-24
 144:	afbf0014 	sw	ra,20(sp)
 148:	848e001c 	lh	t6,28(a0)
 14c:	00803025 	move	a2,a0
 150:	00a02025 	move	a0,a1
 154:	31cf00ff 	andi	t7,t6,0xff
 158:	55e00004 	bnezl	t7,16c <BgGndSoulmeiro_Destroy+0x2c>
 15c:	8fbf0014 	lw	ra,20(sp)
 160:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 164:	24c5014c 	addiu	a1,a2,332
 168:	8fbf0014 	lw	ra,20(sp)
 16c:	27bd0018 	addiu	sp,sp,24
 170:	03e00008 	jr	ra
 174:	00000000 	nop

00000178 <func_8087AF38>:
 178:	27bdff28 	addiu	sp,sp,-216
 17c:	afbf009c 	sw	ra,156(sp)
 180:	afbe0098 	sw	s8,152(sp)
 184:	afb70094 	sw	s7,148(sp)
 188:	afb60090 	sw	s6,144(sp)
 18c:	afb5008c 	sw	s5,140(sp)
 190:	afb40088 	sw	s4,136(sp)
 194:	afb30084 	sw	s3,132(sp)
 198:	afb20080 	sw	s2,128(sp)
 19c:	afb1007c 	sw	s1,124(sp)
 1a0:	afb00078 	sw	s0,120(sp)
 1a4:	f7be0070 	sdc1	$f30,112(sp)
 1a8:	f7bc0068 	sdc1	$f28,104(sp)
 1ac:	f7ba0060 	sdc1	$f26,96(sp)
 1b0:	f7b80058 	sdc1	$f24,88(sp)
 1b4:	f7b60050 	sdc1	$f22,80(sp)
 1b8:	f7b40048 	sdc1	$f20,72(sp)
 1bc:	afa500dc 	sw	a1,220(sp)
 1c0:	94820198 	lhu	v0,408(a0)
 1c4:	00809025 	move	s2,a0
 1c8:	24010014 	li	at,20
 1cc:	10400005 	beqz	v0,1e4 <func_8087AF38+0x6c>
 1d0:	00401825 	move	v1,v0
 1d4:	244effff 	addiu	t6,v0,-1
 1d8:	31c2ffff 	andi	v0,t6,0xffff
 1dc:	00401825 	move	v1,v0
 1e0:	a48e0198 	sh	t6,408(a0)
 1e4:	14610008 	bne	v1,at,208 <func_8087AF38+0x90>
 1e8:	00000000 	nop
 1ec:	8645001c 	lh	a1,28(s2)
 1f0:	8fa400dc 	lw	a0,220(sp)
 1f4:	00052a03 	sra	a1,a1,0x8
 1f8:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 1fc:	30a5003f 	andi	a1,a1,0x3f
 200:	ae400134 	sw	zero,308(s2)
 204:	96420198 	lhu	v0,408(s2)
 208:	14400018 	bnez	v0,26c <func_8087AF38+0xf4>
 20c:	24010006 	li	at,6
 210:	8645001c 	lh	a1,28(s2)
 214:	8fa400dc 	lw	a0,220(sp)
 218:	00052a03 	sra	a1,a1,0x8
 21c:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 220:	30a5003f 	andi	a1,a1,0x3f
 224:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 228:	02402025 	move	a0,s2
 22c:	c6440028 	lwc1	$f4,40(s2)
 230:	8e470024 	lw	a3,36(s2)
 234:	8fa500dc 	lw	a1,220(sp)
 238:	e7a40010 	swc1	$f4,16(sp)
 23c:	c646002c 	lwc1	$f6,44(s2)
 240:	240f0009 	li	t7,9
 244:	afaf0024 	sw	t7,36(sp)
 248:	afa00020 	sw	zero,32(sp)
 24c:	afa0001c 	sw	zero,28(sp)
 250:	afa00018 	sw	zero,24(sp)
 254:	240600b7 	li	a2,183
 258:	24a41c24 	addiu	a0,a1,7204
 25c:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 260:	e7a60014 	swc1	$f6,20(sp)
 264:	10000086 	b	480 <func_8087AF38+0x308>
 268:	8fbf009c 	lw	ra,156(sp)
 26c:	0041001a 	div	zero,v0,at
 270:	0000c010 	mfhi	t8
 274:	57000082 	bnezl	t8,480 <func_8087AF38+0x308>
 278:	8fbf009c 	lw	ra,156(sp)
 27c:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 280:	00000000 	nop
 284:	3c010000 	lui	at,0x0
 288:	c4280048 	lwc1	$f8,72(at)
 28c:	4480f000 	mtc1	zero,$f30
 290:	3c014080 	lui	at,0x4080
 294:	46080282 	mul.s	$f10,$f0,$f8
 298:	4481e000 	mtc1	at,$f28
 29c:	3c010000 	lui	at,0x0
 2a0:	e7be00d0 	swc1	$f30,208(sp)
 2a4:	c6520028 	lwc1	$f18,40(s2)
 2a8:	c43a004c 	lwc1	$f26,76(at)
 2ac:	3c0142f0 	lui	at,0x42f0
 2b0:	4600540d 	trunc.w.s	$f16,$f10
 2b4:	4481c000 	mtc1	at,$f24
 2b8:	0000a025 	move	s4,zero
 2bc:	26550008 	addiu	s5,s2,8
 2c0:	44138000 	mfc1	s3,$f16
 2c4:	27be00cc 	addiu	s8,sp,204
 2c8:	34178000 	li	s7,0x8000
 2cc:	00139c00 	sll	s3,s3,0x10
 2d0:	00139c03 	sra	s3,s3,0x10
 2d4:	27b600c0 	addiu	s6,sp,192
 2d8:	e7b200c4 	swc1	$f18,196(sp)
 2dc:	3c014620 	lui	at,0x4620
 2e0:	44816000 	mtc1	at,$f12
 2e4:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 2e8:	00000000 	nop
 2ec:	44932000 	mtc1	s3,$f4
 2f0:	00000000 	nop
 2f4:	468021a0 	cvt.s.w	$f6,$f4
 2f8:	46060200 	add.s	$f8,$f0,$f6
 2fc:	4600428d 	trunc.w.s	$f10,$f8
 300:	44025000 	mfc1	v0,$f10
 304:	00000000 	nop
 308:	00028400 	sll	s0,v0,0x10
 30c:	00022400 	sll	a0,v0,0x10
 310:	00108403 	sra	s0,s0,0x10
 314:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 318:	00042403 	sra	a0,a0,0x10
 31c:	00102400 	sll	a0,s0,0x10
 320:	46000506 	mov.s	$f20,$f0
 324:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 328:	00042403 	sra	a0,a0,0x10
 32c:	4614c482 	mul.s	$f18,$f24,$f20
 330:	c6500024 	lwc1	$f16,36(s2)
 334:	46000586 	mov.s	$f22,$f0
 338:	4600c202 	mul.s	$f8,$f24,$f0
 33c:	02a02025 	move	a0,s5
 340:	02c02825 	move	a1,s6
 344:	46128100 	add.s	$f4,$f16,$f18
 348:	e7a400c0 	swc1	$f4,192(sp)
 34c:	c646002c 	lwc1	$f6,44(s2)
 350:	46083280 	add.s	$f10,$f6,$f8
 354:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 358:	e7aa00c8 	swc1	$f10,200(sp)
 35c:	461a0302 	mul.s	$f12,$f0,$f26
 360:	3c010000 	lui	at,0x0
 364:	c4300050 	lwc1	$f16,80(at)
 368:	02178821 	addu	s1,s0,s7
 36c:	00118c00 	sll	s1,s1,0x10
 370:	00118c03 	sra	s1,s1,0x10
 374:	00112400 	sll	a0,s1,0x10
 378:	4610603c 	c.lt.s	$f12,$f16
 37c:	00000000 	nop
 380:	45000015 	bc1f	3d8 <func_8087AF38+0x260>
 384:	00000000 	nop
 388:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 38c:	00042403 	sra	a0,a0,0x10
 390:	00112400 	sll	a0,s1,0x10
 394:	46000506 	mov.s	$f20,$f0
 398:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 39c:	00042403 	sra	a0,a0,0x10
 3a0:	4614c102 	mul.s	$f4,$f24,$f20
 3a4:	c6520024 	lwc1	$f18,36(s2)
 3a8:	46000586 	mov.s	$f22,$f0
 3ac:	4600c282 	mul.s	$f10,$f24,$f0
 3b0:	02a02025 	move	a0,s5
 3b4:	02c02825 	move	a1,s6
 3b8:	46049180 	add.s	$f6,$f18,$f4
 3bc:	e7a600c0 	swc1	$f6,192(sp)
 3c0:	c648002c 	lwc1	$f8,44(s2)
 3c4:	460a4400 	add.s	$f16,$f8,$f10
 3c8:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 3cc:	e7b000c8 	swc1	$f16,200(sp)
 3d0:	461a0302 	mul.s	$f12,$f0,$f26
 3d4:	00000000 	nop
 3d8:	4614e482 	mul.s	$f18,$f28,$f20
 3dc:	3c070000 	lui	a3,0x0
 3e0:	2409003c 	li	t1,60
 3e4:	240a0006 	li	t2,6
 3e8:	240b00ff 	li	t3,255
 3ec:	240c00ff 	li	t4,255
 3f0:	240d0096 	li	t5,150
 3f4:	460c9102 	mul.s	$f4,$f18,$f12
 3f8:	240e00aa 	li	t6,170
 3fc:	240f00ff 	li	t7,255
 400:	4616e182 	mul.s	$f6,$f28,$f22
 404:	24180001 	li	t8,1
 408:	2419000e 	li	t9,14
 40c:	24080001 	li	t0,1
 410:	e7a400cc 	swc1	$f4,204(sp)
 414:	e7be00d0 	swc1	$f30,208(sp)
 418:	afa8003c 	sw	t0,60(sp)
 41c:	460c3202 	mul.s	$f8,$f6,$f12
 420:	afb90038 	sw	t9,56(sp)
 424:	afb80034 	sw	t8,52(sp)
 428:	afaf0028 	sw	t7,40(sp)
 42c:	afae0024 	sw	t6,36(sp)
 430:	afad0020 	sw	t5,32(sp)
 434:	afac001c 	sw	t4,28(sp)
 438:	e7a800d4 	swc1	$f8,212(sp)
 43c:	afab0018 	sw	t3,24(sp)
 440:	afaa0014 	sw	t2,20(sp)
 444:	afa90010 	sw	t1,16(sp)
 448:	24e7005c 	addiu	a3,a3,92
 44c:	8fa400dc 	lw	a0,220(sp)
 450:	02a02825 	move	a1,s5
 454:	03c03025 	move	a2,s8
 458:	afa0002c 	sw	zero,44(sp)
 45c:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 460:	afa00030 	sw	zero,48(sp)
 464:	26732aaa 	addiu	s3,s3,10922
 468:	26940001 	addiu	s4,s4,1
 46c:	24010006 	li	at,6
 470:	00139c00 	sll	s3,s3,0x10
 474:	1681ff99 	bne	s4,at,2dc <func_8087AF38+0x164>
 478:	00139c03 	sra	s3,s3,0x10
 47c:	8fbf009c 	lw	ra,156(sp)
 480:	d7b40048 	ldc1	$f20,72(sp)
 484:	d7b60050 	ldc1	$f22,80(sp)
 488:	d7b80058 	ldc1	$f24,88(sp)
 48c:	d7ba0060 	ldc1	$f26,96(sp)
 490:	d7bc0068 	ldc1	$f28,104(sp)
 494:	d7be0070 	ldc1	$f30,112(sp)
 498:	8fb00078 	lw	s0,120(sp)
 49c:	8fb1007c 	lw	s1,124(sp)
 4a0:	8fb20080 	lw	s2,128(sp)
 4a4:	8fb30084 	lw	s3,132(sp)
 4a8:	8fb40088 	lw	s4,136(sp)
 4ac:	8fb5008c 	lw	s5,140(sp)
 4b0:	8fb60090 	lw	s6,144(sp)
 4b4:	8fb70094 	lw	s7,148(sp)
 4b8:	8fbe0098 	lw	s8,152(sp)
 4bc:	03e00008 	jr	ra
 4c0:	27bd00d8 	addiu	sp,sp,216

000004c4 <func_8087B284>:
 4c4:	27bdffd0 	addiu	sp,sp,-48
 4c8:	afb00020 	sw	s0,32(sp)
 4cc:	00808025 	move	s0,a0
 4d0:	afbf0024 	sw	ra,36(sp)
 4d4:	afa50034 	sw	a1,52(sp)
 4d8:	00a02025 	move	a0,a1
 4dc:	8605001c 	lh	a1,28(s0)
 4e0:	00052a03 	sra	a1,a1,0x8
 4e4:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 4e8:	30a5003f 	andi	a1,a1,0x3f
 4ec:	54400024 	bnezl	v0,580 <func_8087B284+0xbc>
 4f0:	8fbf0024 	lw	ra,36(sp)
 4f4:	920f015d 	lbu	t7,349(s0)
 4f8:	3c0e0000 	lui	t6,0x0
 4fc:	25ce0000 	addiu	t6,t6,0
 500:	31f80002 	andi	t8,t7,0x2
 504:	13000012 	beqz	t8,550 <func_8087B284+0x8c>
 508:	ae0e0134 	sw	t6,308(s0)
 50c:	3c070000 	lui	a3,0x0
 510:	3c190000 	lui	t9,0x0
 514:	24e70000 	addiu	a3,a3,0
 518:	27390000 	addiu	t9,t9,0
 51c:	3c050000 	lui	a1,0x0
 520:	24a50000 	addiu	a1,a1,0
 524:	afb90014 	sw	t9,20(sp)
 528:	afa70010 	sw	a3,16(sp)
 52c:	24044802 	li	a0,18434
 530:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 534:	24060004 	li	a2,4
 538:	3c090000 	lui	t1,0x0
 53c:	24080028 	li	t0,40
 540:	25290000 	addiu	t1,t1,0
 544:	a6080198 	sh	t0,408(s0)
 548:	1000000c 	b	57c <func_8087B284+0xb8>
 54c:	ae09019c 	sw	t1,412(s0)
 550:	2606014c 	addiu	a2,s0,332
 554:	00c02825 	move	a1,a2
 558:	afa60028 	sw	a2,40(sp)
 55c:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 560:	02002025 	move	a0,s0
 564:	8fa40034 	lw	a0,52(sp)
 568:	3c010001 	lui	at,0x1
 56c:	34211e60 	ori	at,at,0x1e60
 570:	8fa60028 	lw	a2,40(sp)
 574:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 578:	00812821 	addu	a1,a0,at
 57c:	8fbf0024 	lw	ra,36(sp)
 580:	8fb00020 	lw	s0,32(sp)
 584:	27bd0030 	addiu	sp,sp,48
 588:	03e00008 	jr	ra
 58c:	00000000 	nop

00000590 <func_8087B350>:
 590:	27bdffe8 	addiu	sp,sp,-24
 594:	00803025 	move	a2,a0
 598:	afbf0014 	sw	ra,20(sp)
 59c:	00a02025 	move	a0,a1
 5a0:	84c5001c 	lh	a1,28(a2)
 5a4:	afa60018 	sw	a2,24(sp)
 5a8:	00052a03 	sra	a1,a1,0x8
 5ac:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 5b0:	30a5003f 	andi	a1,a1,0x3f
 5b4:	10400005 	beqz	v0,5cc <func_8087B350+0x3c>
 5b8:	8fa60018 	lw	a2,24(sp)
 5bc:	3c0e0000 	lui	t6,0x0
 5c0:	25ce0000 	addiu	t6,t6,0
 5c4:	10000002 	b	5d0 <func_8087B350+0x40>
 5c8:	acce0134 	sw	t6,308(a2)
 5cc:	acc00134 	sw	zero,308(a2)
 5d0:	8fbf0014 	lw	ra,20(sp)
 5d4:	27bd0018 	addiu	sp,sp,24
 5d8:	03e00008 	jr	ra
 5dc:	00000000 	nop

000005e0 <BgGndSoulmeiro_Update>:
 5e0:	27bdffe8 	addiu	sp,sp,-24
 5e4:	afbf0014 	sw	ra,20(sp)
 5e8:	8c82019c 	lw	v0,412(a0)
 5ec:	50400004 	beqzl	v0,600 <BgGndSoulmeiro_Update+0x20>
 5f0:	8fbf0014 	lw	ra,20(sp)
 5f4:	0040f809 	jalr	v0
 5f8:	00000000 	nop
 5fc:	8fbf0014 	lw	ra,20(sp)
 600:	27bd0018 	addiu	sp,sp,24
 604:	03e00008 	jr	ra
 608:	00000000 	nop

0000060c <BgGndSoulmeiro_Draw>:
 60c:	27bdffb8 	addiu	sp,sp,-72
 610:	afbf001c 	sw	ra,28(sp)
 614:	afb00018 	sw	s0,24(sp)
 618:	8488001c 	lh	t0,28(a0)
 61c:	00a08025 	move	s0,a1
 620:	27a40030 	addiu	a0,sp,48
 624:	310800ff 	andi	t0,t0,0xff
 628:	11000009 	beqz	t0,650 <BgGndSoulmeiro_Draw+0x44>
 62c:	3c060000 	lui	a2,0x0
 630:	24010001 	li	at,1
 634:	11010033 	beq	t0,at,704 <BgGndSoulmeiro_Draw+0xf8>
 638:	02002025 	move	a0,s0
 63c:	24010002 	li	at,2
 640:	11010037 	beq	t0,at,720 <BgGndSoulmeiro_Draw+0x114>
 644:	02002025 	move	a0,s0
 648:	1000003b 	b	738 <BgGndSoulmeiro_Draw+0x12c>
 64c:	8fbf001c 	lw	ra,28(sp)
 650:	8e050000 	lw	a1,0(s0)
 654:	afa80044 	sw	t0,68(sp)
 658:	24c60000 	addiu	a2,a2,0
 65c:	2407018e 	li	a3,398
 660:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 664:	afa50040 	sw	a1,64(sp)
 668:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 66c:	8e040000 	lw	a0,0(s0)
 670:	8fa70040 	lw	a3,64(sp)
 674:	8fa80044 	lw	t0,68(sp)
 678:	3c0fda38 	lui	t7,0xda38
 67c:	8ce202d0 	lw	v0,720(a3)
 680:	35ef0003 	ori	t7,t7,0x3
 684:	3c050000 	lui	a1,0x0
 688:	244e0008 	addiu	t6,v0,8
 68c:	acee02d0 	sw	t6,720(a3)
 690:	ac4f0000 	sw	t7,0(v0)
 694:	8e040000 	lw	a0,0(s0)
 698:	24a50018 	addiu	a1,a1,24
 69c:	24060190 	li	a2,400
 6a0:	afa80044 	sw	t0,68(sp)
 6a4:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 6a8:	afa2002c 	sw	v0,44(sp)
 6ac:	8fa3002c 	lw	v1,44(sp)
 6b0:	8fa80044 	lw	t0,68(sp)
 6b4:	3c09de00 	lui	t1,0xde00
 6b8:	ac620004 	sw	v0,4(v1)
 6bc:	8fb80040 	lw	t8,64(sp)
 6c0:	3c0b0000 	lui	t3,0x0
 6c4:	00085080 	sll	t2,t0,0x2
 6c8:	8f0202d0 	lw	v0,720(t8)
 6cc:	016a5821 	addu	t3,t3,t2
 6d0:	3c060000 	lui	a2,0x0
 6d4:	24590008 	addiu	t9,v0,8
 6d8:	af1902d0 	sw	t9,720(t8)
 6dc:	ac490000 	sw	t1,0(v0)
 6e0:	8d6b0000 	lw	t3,0(t3)
 6e4:	24c60030 	addiu	a2,a2,48
 6e8:	27a40030 	addiu	a0,sp,48
 6ec:	ac4b0004 	sw	t3,4(v0)
 6f0:	8e050000 	lw	a1,0(s0)
 6f4:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 6f8:	24070193 	li	a3,403
 6fc:	1000000e 	b	738 <BgGndSoulmeiro_Draw+0x12c>
 700:	8fbf001c 	lw	ra,28(sp)
 704:	00086080 	sll	t4,t0,0x2
 708:	3c050000 	lui	a1,0x0
 70c:	00ac2821 	addu	a1,a1,t4
 710:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 714:	8ca50000 	lw	a1,0(a1)
 718:	10000007 	b	738 <BgGndSoulmeiro_Draw+0x12c>
 71c:	8fbf001c 	lw	ra,28(sp)
 720:	00086880 	sll	t5,t0,0x2
 724:	3c050000 	lui	a1,0x0
 728:	00ad2821 	addu	a1,a1,t5
 72c:	0c000000 	jal	0 <BgGndSoulmeiro_Init>
 730:	8ca50000 	lw	a1,0(a1)
 734:	8fbf001c 	lw	ra,28(sp)
 738:	8fb00018 	lw	s0,24(sp)
 73c:	27bd0048 	addiu	sp,sp,72
 740:	03e00008 	jr	ra
 744:	00000000 	nop
	...
