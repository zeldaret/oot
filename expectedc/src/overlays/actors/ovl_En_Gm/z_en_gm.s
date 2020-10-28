
build/src/overlays/actors/ovl_En_Gm/z_en_gm.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnGm_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afa50024 	sw	a1,36(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <EnGm_Init>
  1c:	24a50000 	addiu	a1,a1,0
  20:	3c040000 	lui	a0,0x0
  24:	3c050000 	lui	a1,0x0
  28:	24a50000 	addiu	a1,a1,0
  2c:	24840000 	addiu	a0,a0,0
  30:	24060085 	li	a2,133
  34:	0c000000 	jal	0 <EnGm_Init>
  38:	8607001c 	lh	a3,28(s0)
  3c:	8fa40024 	lw	a0,36(sp)
  40:	3c010001 	lui	at,0x1
  44:	342117a4 	ori	at,at,0x17a4
  48:	24050126 	li	a1,294
  4c:	0c000000 	jal	0 <EnGm_Init>
  50:	00812021 	addu	a0,a0,at
  54:	a20202bc 	sb	v0,700(s0)
  58:	820e02bc 	lb	t6,700(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	05c1000f 	bgez	t6,a0 <EnGm_Init+0xa0>
  64:	00000000 	nop
  68:	0c000000 	jal	0 <EnGm_Init>
  6c:	24840000 	addiu	a0,a0,0
  70:	3c040000 	lui	a0,0x0
  74:	0c000000 	jal	0 <EnGm_Init>
  78:	24840000 	addiu	a0,a0,0
  7c:	3c040000 	lui	a0,0x0
  80:	0c000000 	jal	0 <EnGm_Init>
  84:	24840000 	addiu	a0,a0,0
  88:	3c040000 	lui	a0,0x0
  8c:	3c050000 	lui	a1,0x0
  90:	24a50000 	addiu	a1,a1,0
  94:	24840000 	addiu	a0,a0,0
  98:	0c000000 	jal	0 <EnGm_Init>
  9c:	24060091 	li	a2,145
  a0:	3c0f0000 	lui	t7,0x0
  a4:	25ef0000 	addiu	t7,t7,0
  a8:	ae0f0268 	sw	t7,616(s0)
  ac:	8fbf001c 	lw	ra,28(sp)
  b0:	8fb00018 	lw	s0,24(sp)
  b4:	27bd0020 	addiu	sp,sp,32
  b8:	03e00008 	jr	ra
  bc:	00000000 	nop

000000c0 <EnGm_Destroy>:
  c0:	27bdffe8 	addiu	sp,sp,-24
  c4:	00803025 	move	a2,a0
  c8:	afbf0014 	sw	ra,20(sp)
  cc:	00a02025 	move	a0,a1
  d0:	0c000000 	jal	0 <EnGm_Init>
  d4:	24c50270 	addiu	a1,a2,624
  d8:	8fbf0014 	lw	ra,20(sp)
  dc:	27bd0018 	addiu	sp,sp,24
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop

000000e8 <func_80A3D7C8>:
  e8:	3c030000 	lui	v1,0x0
  ec:	24630000 	addiu	v1,v1,0
  f0:	8c6e0004 	lw	t6,4(v1)
  f4:	24010005 	li	at,5
  f8:	24020011 	li	v0,17
  fc:	11c00003 	beqz	t6,10c <func_80A3D7C8+0x24>
 100:	3c040000 	lui	a0,0x0
 104:	10000001 	b	10c <func_80A3D7C8+0x24>
 108:	24020005 	li	v0,5
 10c:	14410003 	bne	v0,at,11c <func_80A3D7C8+0x34>
 110:	24840000 	addiu	a0,a0,0
 114:	03e00008 	jr	ra
 118:	00001025 	move	v0,zero
 11c:	9462009c 	lhu	v0,156(v1)
 120:	8c8f0008 	lw	t7,8(a0)
 124:	01e2c024 	and	t8,t7,v0
 128:	57000004 	bnezl	t8,13c <func_80A3D7C8+0x54>
 12c:	8c99000c 	lw	t9,12(a0)
 130:	03e00008 	jr	ra
 134:	24020001 	li	v0,1
 138:	8c99000c 	lw	t9,12(a0)
 13c:	03224024 	and	t0,t9,v0
 140:	11000003 	beqz	t0,150 <func_80A3D7C8+0x68>
 144:	24020003 	li	v0,3
 148:	03e00008 	jr	ra
 14c:	24020002 	li	v0,2
 150:	03e00008 	jr	ra
 154:	00000000 	nop

00000158 <func_80A3D838>:
 158:	27bdffc8 	addiu	sp,sp,-56
 15c:	afb00024 	sw	s0,36(sp)
 160:	3c010001 	lui	at,0x1
 164:	00808025 	move	s0,a0
 168:	afb10028 	sw	s1,40(sp)
 16c:	342117a4 	ori	at,at,0x17a4
 170:	00a08825 	move	s1,a1
 174:	afbf002c 	sw	ra,44(sp)
 178:	00a12021 	addu	a0,a1,at
 17c:	0c000000 	jal	0 <EnGm_Init>
 180:	820502bc 	lb	a1,700(s0)
 184:	10400057 	beqz	v0,2e4 <func_80A3D838+0x18c>
 188:	2401ffef 	li	at,-17
 18c:	8e0e0004 	lw	t6,4(s0)
 190:	2605014c 	addiu	a1,s0,332
 194:	3c060601 	lui	a2,0x601
 198:	01c17824 	and	t7,t6,at
 19c:	ae0f0004 	sw	t7,4(s0)
 1a0:	26180190 	addiu	t8,s0,400
 1a4:	261901fc 	addiu	t9,s0,508
 1a8:	24080012 	li	t0,18
 1ac:	afa80018 	sw	t0,24(sp)
 1b0:	afb90014 	sw	t9,20(sp)
 1b4:	afb80010 	sw	t8,16(sp)
 1b8:	afa50030 	sw	a1,48(sp)
 1bc:	24c6fef0 	addiu	a2,a2,-272
 1c0:	02202025 	move	a0,s1
 1c4:	0c000000 	jal	0 <EnGm_Init>
 1c8:	00003825 	move	a3,zero
 1cc:	820902bc 	lb	t1,700(s0)
 1d0:	3c0c0001 	lui	t4,0x1
 1d4:	3c018000 	lui	at,0x8000
 1d8:	00095100 	sll	t2,t1,0x4
 1dc:	01495021 	addu	t2,t2,t1
 1e0:	000a5080 	sll	t2,t2,0x2
 1e4:	022a5821 	addu	t3,s1,t2
 1e8:	018b6021 	addu	t4,t4,t3
 1ec:	8d8c17b4 	lw	t4,6068(t4)
 1f0:	3c040600 	lui	a0,0x600
 1f4:	248402b8 	addiu	a0,a0,696
 1f8:	01816821 	addu	t5,t4,at
 1fc:	3c010000 	lui	at,0x0
 200:	0c000000 	jal	0 <EnGm_Init>
 204:	ac2d0018 	sw	t5,24(at)
 208:	44822000 	mtc1	v0,$f4
 20c:	44800000 	mtc1	zero,$f0
 210:	3c050600 	lui	a1,0x600
 214:	468021a0 	cvt.s.w	$f6,$f4
 218:	44070000 	mfc1	a3,$f0
 21c:	24a502b8 	addiu	a1,a1,696
 220:	8fa40030 	lw	a0,48(sp)
 224:	3c063f80 	lui	a2,0x3f80
 228:	afa00014 	sw	zero,20(sp)
 22c:	e7a60010 	swc1	$f6,16(sp)
 230:	0c000000 	jal	0 <EnGm_Init>
 234:	e7a00018 	swc1	$f0,24(sp)
 238:	3c0e0000 	lui	t6,0x0
 23c:	25ce0000 	addiu	t6,t6,0
 240:	ae0e0134 	sw	t6,308(s0)
 244:	26050270 	addiu	a1,s0,624
 248:	afa50030 	sw	a1,48(sp)
 24c:	0c000000 	jal	0 <EnGm_Init>
 250:	02202025 	move	a0,s1
 254:	3c070000 	lui	a3,0x0
 258:	8fa50030 	lw	a1,48(sp)
 25c:	24e70000 	addiu	a3,a3,0
 260:	02202025 	move	a0,s1
 264:	0c000000 	jal	0 <EnGm_Init>
 268:	02003025 	move	a2,s0
 26c:	3c060000 	lui	a2,0x0
 270:	24c60000 	addiu	a2,a2,0
 274:	260400b4 	addiu	a0,s0,180
 278:	24050000 	li	a1,0
 27c:	0c000000 	jal	0 <EnGm_Init>
 280:	3c07420c 	lui	a3,0x420c
 284:	3c053d4c 	lui	a1,0x3d4c
 288:	34a5cccd 	ori	a1,a1,0xcccd
 28c:	0c000000 	jal	0 <EnGm_Init>
 290:	02002025 	move	a0,s0
 294:	3c01bf80 	lui	at,0xbf80
 298:	44804000 	mtc1	zero,$f8
 29c:	44815000 	mtc1	at,$f10
 2a0:	44808000 	mtc1	zero,$f16
 2a4:	3c080000 	lui	t0,0x0
 2a8:	3c090000 	lui	t1,0x0
 2ac:	240f00ff 	li	t7,255
 2b0:	24180014 	li	t8,20
 2b4:	24193049 	li	t9,12361
 2b8:	25080000 	addiu	t0,t0,0
 2bc:	25290000 	addiu	t1,t1,0
 2c0:	a20f00ae 	sb	t7,174(s0)
 2c4:	a20002c2 	sb	zero,706(s0)
 2c8:	a61802c0 	sh	t8,704(s0)
 2cc:	a619010e 	sh	t9,270(s0)
 2d0:	ae080268 	sw	t0,616(s0)
 2d4:	ae09026c 	sw	t1,620(s0)
 2d8:	e6080068 	swc1	$f8,104(s0)
 2dc:	e60a006c 	swc1	$f10,108(s0)
 2e0:	e6100060 	swc1	$f16,96(s0)
 2e4:	8fbf002c 	lw	ra,44(sp)
 2e8:	8fb00024 	lw	s0,36(sp)
 2ec:	8fb10028 	lw	s1,40(sp)
 2f0:	03e00008 	jr	ra
 2f4:	27bd0038 	addiu	sp,sp,56

000002f8 <func_80A3D9D8>:
 2f8:	27bdffe8 	addiu	sp,sp,-24
 2fc:	afbf0014 	sw	ra,20(sp)
 300:	848202c0 	lh	v0,704(a0)
 304:	10400003 	beqz	v0,314 <func_80A3D9D8+0x1c>
 308:	244effff 	addiu	t6,v0,-1
 30c:	10000014 	b	360 <func_80A3D9D8+0x68>
 310:	a48e02c0 	sh	t6,704(a0)
 314:	908f02c2 	lbu	t7,706(a0)
 318:	25f80001 	addiu	t8,t7,1
 31c:	331900ff 	andi	t9,t8,0xff
 320:	2b210003 	slti	at,t9,3
 324:	1420000e 	bnez	at,360 <func_80A3D9D8+0x68>
 328:	a09802c2 	sb	t8,706(a0)
 32c:	3c014270 	lui	at,0x4270
 330:	a08002c2 	sb	zero,706(a0)
 334:	44816000 	mtc1	at,$f12
 338:	0c000000 	jal	0 <EnGm_Init>
 33c:	afa40018 	sw	a0,24(sp)
 340:	3c0141a0 	lui	at,0x41a0
 344:	44812000 	mtc1	at,$f4
 348:	8fa40018 	lw	a0,24(sp)
 34c:	46040180 	add.s	$f6,$f0,$f4
 350:	4600320d 	trunc.w.s	$f8,$f6
 354:	44094000 	mfc1	t1,$f8
 358:	00000000 	nop
 35c:	a48902c0 	sh	t1,704(a0)
 360:	8fbf0014 	lw	ra,20(sp)
 364:	27bd0018 	addiu	sp,sp,24
 368:	03e00008 	jr	ra
 36c:	00000000 	nop

00000370 <func_80A3DA50>:
 370:	27bdffe8 	addiu	sp,sp,-24
 374:	afbf0014 	sw	ra,20(sp)
 378:	0c000000 	jal	0 <EnGm_Init>
 37c:	afa40018 	sw	a0,24(sp)
 380:	1040000c 	beqz	v0,3b4 <func_80A3DA50+0x44>
 384:	8fa40018 	lw	a0,24(sp)
 388:	24010001 	li	at,1
 38c:	10410014 	beq	v0,at,3e0 <func_80A3DA50+0x70>
 390:	3c080000 	lui	t0,0x0
 394:	24010002 	li	at,2
 398:	1041001b 	beq	v0,at,408 <func_80A3DA50+0x98>
 39c:	240c304e 	li	t4,12366
 3a0:	24010003 	li	at,3
 3a4:	1041001a 	beq	v0,at,410 <func_80A3DA50+0xa0>
 3a8:	240d304d 	li	t5,12365
 3ac:	1000001a 	b	418 <func_80A3DA50+0xa8>
 3b0:	8fbf0014 	lw	ra,20(sp)
 3b4:	3c0e0000 	lui	t6,0x0
 3b8:	95ce0f0e 	lhu	t6,3854(t6)
 3bc:	2418304b 	li	t8,12363
 3c0:	2419304a 	li	t9,12362
 3c4:	31cf0001 	andi	t7,t6,0x1
 3c8:	11e00003 	beqz	t7,3d8 <func_80A3DA50+0x68>
 3cc:	00000000 	nop
 3d0:	10000010 	b	414 <func_80A3DA50+0xa4>
 3d4:	a498010e 	sh	t8,270(a0)
 3d8:	1000000e 	b	414 <func_80A3DA50+0xa4>
 3dc:	a499010e 	sh	t9,270(a0)
 3e0:	95080f0e 	lhu	t0,3854(t0)
 3e4:	240a304f 	li	t2,12367
 3e8:	240b304c 	li	t3,12364
 3ec:	31090002 	andi	t1,t0,0x2
 3f0:	11200003 	beqz	t1,400 <func_80A3DA50+0x90>
 3f4:	00000000 	nop
 3f8:	10000006 	b	414 <func_80A3DA50+0xa4>
 3fc:	a48a010e 	sh	t2,270(a0)
 400:	10000004 	b	414 <func_80A3DA50+0xa4>
 404:	a48b010e 	sh	t3,270(a0)
 408:	10000002 	b	414 <func_80A3DA50+0xa4>
 40c:	a48c010e 	sh	t4,270(a0)
 410:	a48d010e 	sh	t5,270(a0)
 414:	8fbf0014 	lw	ra,20(sp)
 418:	27bd0018 	addiu	sp,sp,24
 41c:	03e00008 	jr	ra
 420:	00000000 	nop

00000424 <func_80A3DB04>:
 424:	27bdffd8 	addiu	sp,sp,-40
 428:	afbf001c 	sw	ra,28(sp)
 42c:	afb00018 	sw	s0,24(sp)
 430:	8ca21c44 	lw	v0,7236(a1)
 434:	c48402c4 	lwc1	$f4,708(a0)
 438:	00808025 	move	s0,a0
 43c:	c4460024 	lwc1	$f6,36(v0)
 440:	00a03025 	move	a2,a1
 444:	46062201 	sub.s	$f8,$f4,$f6
 448:	e7a80024 	swc1	$f8,36(sp)
 44c:	c48a02cc 	lwc1	$f10,716(a0)
 450:	c450002c 	lwc1	$f16,44(v0)
 454:	00a02025 	move	a0,a1
 458:	46105481 	sub.s	$f18,$f10,$f16
 45c:	e7b20020 	swc1	$f18,32(sp)
 460:	8605001c 	lh	a1,28(s0)
 464:	0c000000 	jal	0 <EnGm_Init>
 468:	afa6002c 	sw	a2,44(sp)
 46c:	10400007 	beqz	v0,48c <func_80A3DB04+0x68>
 470:	02002025 	move	a0,s0
 474:	0c000000 	jal	0 <EnGm_Init>
 478:	02002025 	move	a0,s0
 47c:	3c0e0000 	lui	t6,0x0
 480:	25ce0000 	addiu	t6,t6,0
 484:	1000001e 	b	500 <func_80A3DB04+0xdc>
 488:	ae0e026c 	sw	t6,620(s0)
 48c:	0c000000 	jal	0 <EnGm_Init>
 490:	8fa5002c 	lw	a1,44(sp)
 494:	10400004 	beqz	v0,4a8 <func_80A3DB04+0x84>
 498:	3c0f0000 	lui	t7,0x0
 49c:	25ef0000 	addiu	t7,t7,0
 4a0:	10000017 	b	500 <func_80A3DB04+0xdc>
 4a4:	ae0f026c 	sw	t7,620(s0)
 4a8:	92180282 	lbu	t8,642(s0)
 4ac:	c7a00024 	lwc1	$f0,36(sp)
 4b0:	c7a20020 	lwc1	$f2,32(sp)
 4b4:	33190002 	andi	t9,t8,0x2
 4b8:	1720000a 	bnez	t9,4e4 <func_80A3DB04+0xc0>
 4bc:	02002025 	move	a0,s0
 4c0:	46000102 	mul.s	$f4,$f0,$f0
 4c4:	3c010000 	lui	at,0x0
 4c8:	c42a0000 	lwc1	$f10,0(at)
 4cc:	46021182 	mul.s	$f6,$f2,$f2
 4d0:	46062200 	add.s	$f8,$f4,$f6
 4d4:	460a403c 	c.lt.s	$f8,$f10
 4d8:	00000000 	nop
 4dc:	45020009 	bc1fl	504 <func_80A3DB04+0xe0>
 4e0:	8fbf001c 	lw	ra,28(sp)
 4e4:	92080281 	lbu	t0,641(s0)
 4e8:	3c0643cf 	lui	a2,0x43cf
 4ec:	34c68000 	ori	a2,a2,0x8000
 4f0:	3109fffd 	andi	t1,t0,0xfffd
 4f4:	a2090281 	sb	t1,641(s0)
 4f8:	0c000000 	jal	0 <EnGm_Init>
 4fc:	8fa5002c 	lw	a1,44(sp)
 500:	8fbf001c 	lw	ra,28(sp)
 504:	8fb00018 	lw	s0,24(sp)
 508:	27bd0028 	addiu	sp,sp,40
 50c:	03e00008 	jr	ra
 510:	00000000 	nop

00000514 <func_80A3DBF4>:
 514:	27bdffe8 	addiu	sp,sp,-24
 518:	afbf0014 	sw	ra,20(sp)
 51c:	afa40018 	sw	a0,24(sp)
 520:	afa5001c 	sw	a1,28(sp)
 524:	0c000000 	jal	0 <EnGm_Init>
 528:	24a420d8 	addiu	a0,a1,8408
 52c:	24010006 	li	at,6
 530:	54410009 	bnel	v0,at,558 <func_80A3DBF4+0x44>
 534:	8fbf0014 	lw	ra,20(sp)
 538:	0c000000 	jal	0 <EnGm_Init>
 53c:	8fa4001c 	lw	a0,28(sp)
 540:	10400004 	beqz	v0,554 <func_80A3DBF4+0x40>
 544:	8faf0018 	lw	t7,24(sp)
 548:	3c0e0000 	lui	t6,0x0
 54c:	25ce0000 	addiu	t6,t6,0
 550:	adee026c 	sw	t6,620(t7)
 554:	8fbf0014 	lw	ra,20(sp)
 558:	27bd0018 	addiu	sp,sp,24
 55c:	03e00008 	jr	ra
 560:	00000000 	nop

00000564 <func_80A3DC44>:
 564:	27bdffd8 	addiu	sp,sp,-40
 568:	afbf0014 	sw	ra,20(sp)
 56c:	afa5002c 	sw	a1,44(sp)
 570:	8ca21c44 	lw	v0,7236(a1)
 574:	afa40028 	sw	a0,40(sp)
 578:	0c000000 	jal	0 <EnGm_Init>
 57c:	afa20018 	sw	v0,24(sp)
 580:	8fa20018 	lw	v0,24(sp)
 584:	8fa40028 	lw	a0,40(sp)
 588:	8fa5002c 	lw	a1,44(sp)
 58c:	c4460024 	lwc1	$f6,36(v0)
 590:	c44a002c 	lwc1	$f10,44(v0)
 594:	c48402c4 	lwc1	$f4,708(a0)
 598:	c48802cc 	lwc1	$f8,716(a0)
 59c:	46062001 	sub.s	$f0,$f4,$f6
 5a0:	460a4081 	sub.s	$f2,$f8,$f10
 5a4:	e7a00024 	swc1	$f0,36(sp)
 5a8:	0c000000 	jal	0 <EnGm_Init>
 5ac:	e7a20020 	swc1	$f2,32(sp)
 5b0:	8fa40028 	lw	a0,40(sp)
 5b4:	c7a00024 	lwc1	$f0,36(sp)
 5b8:	10400020 	beqz	v0,63c <func_80A3DC44+0xd8>
 5bc:	c7a20020 	lwc1	$f2,32(sp)
 5c0:	0c000000 	jal	0 <EnGm_Init>
 5c4:	afa40028 	sw	a0,40(sp)
 5c8:	1040000b 	beqz	v0,5f8 <func_80A3DC44+0x94>
 5cc:	8fa40028 	lw	a0,40(sp)
 5d0:	24010001 	li	at,1
 5d4:	10410011 	beq	v0,at,61c <func_80A3DC44+0xb8>
 5d8:	3c0a0000 	lui	t2,0x0
 5dc:	24010002 	li	at,2
 5e0:	10410013 	beq	v0,at,630 <func_80A3DC44+0xcc>
 5e4:	24010003 	li	at,3
 5e8:	10410008 	beq	v0,at,60c <func_80A3DC44+0xa8>
 5ec:	00000000 	nop
 5f0:	10000027 	b	690 <func_80A3DC44+0x12c>
 5f4:	8fbf0014 	lw	ra,20(sp)
 5f8:	3c020000 	lui	v0,0x0
 5fc:	24420000 	addiu	v0,v0,0
 600:	944f0f0e 	lhu	t7,3854(v0)
 604:	35f80001 	ori	t8,t7,0x1
 608:	a4580f0e 	sh	t8,3854(v0)
 60c:	3c190000 	lui	t9,0x0
 610:	27390000 	addiu	t9,t9,0
 614:	1000001d 	b	68c <func_80A3DC44+0x128>
 618:	ac99026c 	sw	t9,620(a0)
 61c:	3c020000 	lui	v0,0x0
 620:	24420000 	addiu	v0,v0,0
 624:	94480f0e 	lhu	t0,3854(v0)
 628:	35090002 	ori	t1,t0,0x2
 62c:	a4490f0e 	sh	t1,3854(v0)
 630:	254a0000 	addiu	t2,t2,0
 634:	10000015 	b	68c <func_80A3DC44+0x128>
 638:	ac8a026c 	sw	t2,620(a0)
 63c:	908b0282 	lbu	t3,642(a0)
 640:	316c0002 	andi	t4,t3,0x2
 644:	5580000b 	bnezl	t4,674 <func_80A3DC44+0x110>
 648:	908d0281 	lbu	t5,641(a0)
 64c:	46000402 	mul.s	$f16,$f0,$f0
 650:	3c010000 	lui	at,0x0
 654:	c4260000 	lwc1	$f6,0(at)
 658:	46021482 	mul.s	$f18,$f2,$f2
 65c:	46128100 	add.s	$f4,$f16,$f18
 660:	4606203c 	c.lt.s	$f4,$f6
 664:	00000000 	nop
 668:	45020009 	bc1fl	690 <func_80A3DC44+0x12c>
 66c:	8fbf0014 	lw	ra,20(sp)
 670:	908d0281 	lbu	t5,641(a0)
 674:	3c0643cf 	lui	a2,0x43cf
 678:	34c68000 	ori	a2,a2,0x8000
 67c:	31aefffd 	andi	t6,t5,0xfffd
 680:	a08e0281 	sb	t6,641(a0)
 684:	0c000000 	jal	0 <EnGm_Init>
 688:	8fa5002c 	lw	a1,44(sp)
 68c:	8fbf0014 	lw	ra,20(sp)
 690:	27bd0028 	addiu	sp,sp,40
 694:	03e00008 	jr	ra
 698:	00000000 	nop

0000069c <func_80A3DD7C>:
 69c:	27bdffe0 	addiu	sp,sp,-32
 6a0:	afbf0014 	sw	ra,20(sp)
 6a4:	afa40020 	sw	a0,32(sp)
 6a8:	afa50024 	sw	a1,36(sp)
 6ac:	0c000000 	jal	0 <EnGm_Init>
 6b0:	24a420d8 	addiu	a0,a1,8408
 6b4:	24010006 	li	at,6
 6b8:	10410004 	beq	v0,at,6cc <func_80A3DD7C+0x30>
 6bc:	304500ff 	andi	a1,v0,0xff
 6c0:	24010005 	li	at,5
 6c4:	54410017 	bnel	v0,at,724 <func_80A3DD7C+0x88>
 6c8:	8fbf0014 	lw	ra,20(sp)
 6cc:	8fa40024 	lw	a0,36(sp)
 6d0:	0c000000 	jal	0 <EnGm_Init>
 6d4:	a3a5001f 	sb	a1,31(sp)
 6d8:	10400011 	beqz	v0,720 <func_80A3DD7C+0x84>
 6dc:	93a5001f 	lbu	a1,31(sp)
 6e0:	8faf0020 	lw	t7,32(sp)
 6e4:	3c0e0000 	lui	t6,0x0
 6e8:	25ce0000 	addiu	t6,t6,0
 6ec:	24010005 	li	at,5
 6f0:	14a1000b 	bne	a1,at,720 <func_80A3DD7C+0x84>
 6f4:	adee026c 	sw	t6,620(t7)
 6f8:	8fb90024 	lw	t9,36(sp)
 6fc:	3c010001 	lui	at,0x1
 700:	24180036 	li	t8,54
 704:	00390821 	addu	at,at,t9
 708:	a03803dc 	sb	t8,988(at)
 70c:	8fa90024 	lw	t1,36(sp)
 710:	3c010001 	lui	at,0x1
 714:	24080004 	li	t0,4
 718:	00290821 	addu	at,at,t1
 71c:	a02804bf 	sb	t0,1215(at)
 720:	8fbf0014 	lw	ra,20(sp)
 724:	27bd0020 	addiu	sp,sp,32
 728:	03e00008 	jr	ra
 72c:	00000000 	nop

00000730 <func_80A3DE10>:
 730:	27bdffd8 	addiu	sp,sp,-40
 734:	afbf0024 	sw	ra,36(sp)
 738:	afb00020 	sw	s0,32(sp)
 73c:	afa40028 	sw	a0,40(sp)
 740:	00a08025 	move	s0,a1
 744:	0c000000 	jal	0 <EnGm_Init>
 748:	24a420d8 	addiu	a0,a1,8408
 74c:	24010004 	li	at,4
 750:	5441002f 	bnel	v0,at,810 <func_80A3DE10+0xe0>
 754:	8fbf0024 	lw	ra,36(sp)
 758:	0c000000 	jal	0 <EnGm_Init>
 75c:	02002025 	move	a0,s0
 760:	1040002a 	beqz	v0,80c <func_80A3DE10+0xdc>
 764:	3c020001 	lui	v0,0x1
 768:	00501021 	addu	v0,v0,s0
 76c:	904204bd 	lbu	v0,1213(v0)
 770:	24010001 	li	at,1
 774:	3c0e0000 	lui	t6,0x0
 778:	10400005 	beqz	v0,790 <func_80A3DE10+0x60>
 77c:	00000000 	nop
 780:	1041001c 	beq	v0,at,7f4 <func_80A3DE10+0xc4>
 784:	02002025 	move	a0,s0
 788:	10000021 	b	810 <func_80A3DE10+0xe0>
 78c:	8fbf0024 	lw	ra,36(sp)
 790:	85ce0034 	lh	t6,52(t6)
 794:	8fa40028 	lw	a0,40(sp)
 798:	02002825 	move	a1,s0
 79c:	29c100c8 	slti	at,t6,200
 7a0:	10200009 	beqz	at,7c8 <func_80A3DE10+0x98>
 7a4:	24060028 	li	a2,40
 7a8:	02002025 	move	a0,s0
 7ac:	0c000000 	jal	0 <EnGm_Init>
 7b0:	240500c8 	li	a1,200
 7b4:	8fb80028 	lw	t8,40(sp)
 7b8:	3c0f0000 	lui	t7,0x0
 7bc:	25ef0000 	addiu	t7,t7,0
 7c0:	10000012 	b	80c <func_80A3DE10+0xdc>
 7c4:	af0f026c 	sw	t7,620(t8)
 7c8:	3c014120 	lui	at,0x4120
 7cc:	44812000 	mtc1	at,$f4
 7d0:	3c0743cf 	lui	a3,0x43cf
 7d4:	34e78000 	ori	a3,a3,0x8000
 7d8:	0c000000 	jal	0 <EnGm_Init>
 7dc:	e7a40010 	swc1	$f4,16(sp)
 7e0:	8fa80028 	lw	t0,40(sp)
 7e4:	3c190000 	lui	t9,0x0
 7e8:	27390000 	addiu	t9,t9,0
 7ec:	10000007 	b	80c <func_80A3DE10+0xdc>
 7f0:	ad19026c 	sw	t9,620(t0)
 7f4:	0c000000 	jal	0 <EnGm_Init>
 7f8:	24053050 	li	a1,12368
 7fc:	8faa0028 	lw	t2,40(sp)
 800:	3c090000 	lui	t1,0x0
 804:	25290000 	addiu	t1,t1,0
 808:	ad49026c 	sw	t1,620(t2)
 80c:	8fbf0024 	lw	ra,36(sp)
 810:	8fb00020 	lw	s0,32(sp)
 814:	27bd0028 	addiu	sp,sp,40
 818:	03e00008 	jr	ra
 81c:	00000000 	nop

00000820 <func_80A3DF00>:
 820:	27bdffe0 	addiu	sp,sp,-32
 824:	afbf001c 	sw	ra,28(sp)
 828:	afa50024 	sw	a1,36(sp)
 82c:	0c000000 	jal	0 <EnGm_Init>
 830:	afa40020 	sw	a0,32(sp)
 834:	10400006 	beqz	v0,850 <func_80A3DF00+0x30>
 838:	8fa40020 	lw	a0,32(sp)
 83c:	3c0e0000 	lui	t6,0x0
 840:	25ce0000 	addiu	t6,t6,0
 844:	ac800118 	sw	zero,280(a0)
 848:	10000009 	b	870 <func_80A3DF00+0x50>
 84c:	ac8e026c 	sw	t6,620(a0)
 850:	3c014120 	lui	at,0x4120
 854:	44812000 	mtc1	at,$f4
 858:	3c0743cf 	lui	a3,0x43cf
 85c:	34e78000 	ori	a3,a3,0x8000
 860:	8fa50024 	lw	a1,36(sp)
 864:	24060028 	li	a2,40
 868:	0c000000 	jal	0 <EnGm_Init>
 86c:	e7a40010 	swc1	$f4,16(sp)
 870:	8fbf001c 	lw	ra,28(sp)
 874:	27bd0020 	addiu	sp,sp,32
 878:	03e00008 	jr	ra
 87c:	00000000 	nop

00000880 <func_80A3DF60>:
 880:	27bdffe8 	addiu	sp,sp,-24
 884:	afbf0014 	sw	ra,20(sp)
 888:	afa40018 	sw	a0,24(sp)
 88c:	afa5001c 	sw	a1,28(sp)
 890:	0c000000 	jal	0 <EnGm_Init>
 894:	24a420d8 	addiu	a0,a1,8408
 898:	24010006 	li	at,6
 89c:	5441000c 	bnel	v0,at,8d0 <func_80A3DF60+0x50>
 8a0:	8fbf0014 	lw	ra,20(sp)
 8a4:	0c000000 	jal	0 <EnGm_Init>
 8a8:	8fa4001c 	lw	a0,28(sp)
 8ac:	50400008 	beqzl	v0,8d0 <func_80A3DF60+0x50>
 8b0:	8fbf0014 	lw	ra,20(sp)
 8b4:	0c000000 	jal	0 <EnGm_Init>
 8b8:	2404ff38 	li	a0,-200
 8bc:	8faf0018 	lw	t7,24(sp)
 8c0:	3c0e0000 	lui	t6,0x0
 8c4:	25ce0000 	addiu	t6,t6,0
 8c8:	adee026c 	sw	t6,620(t7)
 8cc:	8fbf0014 	lw	ra,20(sp)
 8d0:	27bd0018 	addiu	sp,sp,24
 8d4:	03e00008 	jr	ra
 8d8:	00000000 	nop

000008dc <func_80A3DFBC>:
 8dc:	27bdffe0 	addiu	sp,sp,-32
 8e0:	afbf001c 	sw	ra,28(sp)
 8e4:	afb00018 	sw	s0,24(sp)
 8e8:	808e02bc 	lb	t6,700(a0)
 8ec:	3c190001 	lui	t9,0x1
 8f0:	3c018000 	lui	at,0x8000
 8f4:	000e7900 	sll	t7,t6,0x4
 8f8:	01ee7821 	addu	t7,t7,t6
 8fc:	000f7880 	sll	t7,t7,0x2
 900:	00afc021 	addu	t8,a1,t7
 904:	0338c821 	addu	t9,t9,t8
 908:	8f3917b4 	lw	t9,6068(t9)
 90c:	00808025 	move	s0,a0
 910:	03214021 	addu	t0,t9,at
 914:	3c010000 	lui	at,0x0
 918:	ac280018 	sw	t0,24(at)
 91c:	848902be 	lh	t1,702(a0)
 920:	252a0001 	addiu	t2,t1,1
 924:	a48a02be 	sh	t2,702(a0)
 928:	afa50024 	sw	a1,36(sp)
 92c:	8e19026c 	lw	t9,620(s0)
 930:	0320f809 	jalr	t9
 934:	00000000 	nop
 938:	860b0030 	lh	t3,48(s0)
 93c:	860c0032 	lh	t4,50(s0)
 940:	860d0034 	lh	t5,52(s0)
 944:	02002025 	move	a0,s0
 948:	a60b0044 	sh	t3,68(s0)
 94c:	a60c0046 	sh	t4,70(s0)
 950:	0c000000 	jal	0 <EnGm_Init>
 954:	a60d0048 	sh	t5,72(s0)
 958:	0c000000 	jal	0 <EnGm_Init>
 95c:	2604014c 	addiu	a0,s0,332
 960:	8fa40024 	lw	a0,36(sp)
 964:	3c010001 	lui	at,0x1
 968:	34211e60 	ori	at,at,0x1e60
 96c:	26060270 	addiu	a2,s0,624
 970:	0c000000 	jal	0 <EnGm_Init>
 974:	00812821 	addu	a1,a0,at
 978:	8fbf001c 	lw	ra,28(sp)
 97c:	8fb00018 	lw	s0,24(sp)
 980:	27bd0020 	addiu	sp,sp,32
 984:	03e00008 	jr	ra
 988:	00000000 	nop

0000098c <EnGm_Update>:
 98c:	27bdffe8 	addiu	sp,sp,-24
 990:	afbf0014 	sw	ra,20(sp)
 994:	8c990268 	lw	t9,616(a0)
 998:	0320f809 	jalr	t9
 99c:	00000000 	nop
 9a0:	8fbf0014 	lw	ra,20(sp)
 9a4:	27bd0018 	addiu	sp,sp,24
 9a8:	03e00008 	jr	ra
 9ac:	00000000 	nop

000009b0 <func_80A3E090>:
 9b0:	27bdffc0 	addiu	sp,sp,-64
 9b4:	afbf0024 	sw	ra,36(sp)
 9b8:	afb00020 	sw	s0,32(sp)
 9bc:	00808025 	move	s0,a0
 9c0:	0c000000 	jal	0 <EnGm_Init>
 9c4:	f7b40018 	sdc1	$f20,24(sp)
 9c8:	4480a000 	mtc1	zero,$f20
 9cc:	3c064522 	lui	a2,0x4522
 9d0:	34c68000 	ori	a2,a2,0x8000
 9d4:	24070001 	li	a3,1
 9d8:	4600a306 	mov.s	$f12,$f20
 9dc:	0c000000 	jal	0 <EnGm_Init>
 9e0:	4600a386 	mov.s	$f14,$f20
 9e4:	86040030 	lh	a0,48(s0)
 9e8:	86050032 	lh	a1,50(s0)
 9ec:	86060034 	lh	a2,52(s0)
 9f0:	0c000000 	jal	0 <EnGm_Init>
 9f4:	24070001 	li	a3,1
 9f8:	e7b4003c 	swc1	$f20,60(sp)
 9fc:	e7b40038 	swc1	$f20,56(sp)
 a00:	e7b40034 	swc1	$f20,52(sp)
 a04:	27a40034 	addiu	a0,sp,52
 a08:	0c000000 	jal	0 <EnGm_Init>
 a0c:	27a50028 	addiu	a1,sp,40
 a10:	c7a40028 	lwc1	$f4,40(sp)
 a14:	4600218d 	trunc.w.s	$f6,$f4
 a18:	440f3000 	mfc1	t7,$f6
 a1c:	00000000 	nop
 a20:	a60f02b6 	sh	t7,694(s0)
 a24:	c7a8002c 	lwc1	$f8,44(sp)
 a28:	4600428d 	trunc.w.s	$f10,$f8
 a2c:	44195000 	mfc1	t9,$f10
 a30:	00000000 	nop
 a34:	a61902b8 	sh	t9,696(s0)
 a38:	c7b00030 	lwc1	$f16,48(sp)
 a3c:	4600848d 	trunc.w.s	$f18,$f16
 a40:	44099000 	mfc1	t1,$f18
 a44:	0c000000 	jal	0 <EnGm_Init>
 a48:	a60902ba 	sh	t1,698(s0)
 a4c:	0c000000 	jal	0 <EnGm_Init>
 a50:	00000000 	nop
 a54:	3c064586 	lui	a2,0x4586
 a58:	34c66000 	ori	a2,a2,0x6000
 a5c:	4600a306 	mov.s	$f12,$f20
 a60:	4600a386 	mov.s	$f14,$f20
 a64:	0c000000 	jal	0 <EnGm_Init>
 a68:	24070001 	li	a3,1
 a6c:	86040030 	lh	a0,48(s0)
 a70:	86050032 	lh	a1,50(s0)
 a74:	86060034 	lh	a2,52(s0)
 a78:	0c000000 	jal	0 <EnGm_Init>
 a7c:	24070001 	li	a3,1
 a80:	e7b4003c 	swc1	$f20,60(sp)
 a84:	e7b40038 	swc1	$f20,56(sp)
 a88:	e7b40034 	swc1	$f20,52(sp)
 a8c:	27a40034 	addiu	a0,sp,52
 a90:	0c000000 	jal	0 <EnGm_Init>
 a94:	260502c4 	addiu	a1,s0,708
 a98:	0c000000 	jal	0 <EnGm_Init>
 a9c:	00000000 	nop
 aa0:	3c06456d 	lui	a2,0x456d
 aa4:	34c68000 	ori	a2,a2,0x8000
 aa8:	4600a306 	mov.s	$f12,$f20
 aac:	4600a386 	mov.s	$f14,$f20
 ab0:	0c000000 	jal	0 <EnGm_Init>
 ab4:	24070001 	li	a3,1
 ab8:	86040030 	lh	a0,48(s0)
 abc:	86050032 	lh	a1,50(s0)
 ac0:	86060034 	lh	a2,52(s0)
 ac4:	0c000000 	jal	0 <EnGm_Init>
 ac8:	24070001 	li	a3,1
 acc:	e7b4003c 	swc1	$f20,60(sp)
 ad0:	e7b40038 	swc1	$f20,56(sp)
 ad4:	e7b40034 	swc1	$f20,52(sp)
 ad8:	27a40034 	addiu	a0,sp,52
 adc:	0c000000 	jal	0 <EnGm_Init>
 ae0:	26050038 	addiu	a1,s0,56
 ae4:	3c0142c8 	lui	at,0x42c8
 ae8:	44813000 	mtc1	at,$f6
 aec:	c604003c 	lwc1	$f4,60(s0)
 af0:	46062200 	add.s	$f8,$f4,$f6
 af4:	e608003c 	swc1	$f8,60(s0)
 af8:	8fbf0024 	lw	ra,36(sp)
 afc:	8fb00020 	lw	s0,32(sp)
 b00:	d7b40018 	ldc1	$f20,24(sp)
 b04:	03e00008 	jr	ra
 b08:	27bd0040 	addiu	sp,sp,64

00000b0c <func_80A3E1EC>:
 b0c:	27bdffa8 	addiu	sp,sp,-88
 b10:	afbf002c 	sw	ra,44(sp)
 b14:	afb00028 	sw	s0,40(sp)
 b18:	afa5005c 	sw	a1,92(sp)
 b1c:	8ca50000 	lw	a1,0(a1)
 b20:	00808025 	move	s0,a0
 b24:	3c060000 	lui	a2,0x0
 b28:	24c60000 	addiu	a2,a2,0
 b2c:	27a4003c 	addiu	a0,sp,60
 b30:	24070265 	li	a3,613
 b34:	0c000000 	jal	0 <EnGm_Init>
 b38:	afa5004c 	sw	a1,76(sp)
 b3c:	8faf005c 	lw	t7,92(sp)
 b40:	0c000000 	jal	0 <EnGm_Init>
 b44:	8de40000 	lw	a0,0(t7)
 b48:	8fa8004c 	lw	t0,76(sp)
 b4c:	3c19db06 	lui	t9,0xdb06
 b50:	37390020 	ori	t9,t9,0x20
 b54:	8d0302c0 	lw	v1,704(t0)
 b58:	3c040000 	lui	a0,0x0
 b5c:	3c060000 	lui	a2,0x0
 b60:	24780008 	addiu	t8,v1,8
 b64:	ad1802c0 	sw	t8,704(t0)
 b68:	ac790000 	sw	t9,0(v1)
 b6c:	920902c2 	lbu	t1,706(s0)
 b70:	24c60000 	addiu	a2,a2,0
 b74:	3c0500ff 	lui	a1,0xff
 b78:	00095080 	sll	t2,t1,0x2
 b7c:	008a2021 	addu	a0,a0,t2
 b80:	8c840000 	lw	a0,0(a0)
 b84:	34a5ffff 	ori	a1,a1,0xffff
 b88:	3c078000 	lui	a3,0x8000
 b8c:	00046100 	sll	t4,a0,0x4
 b90:	000c6f02 	srl	t5,t4,0x1c
 b94:	000d7080 	sll	t6,t5,0x2
 b98:	00ce7821 	addu	t7,a2,t6
 b9c:	8df80000 	lw	t8,0(t7)
 ba0:	00855824 	and	t3,a0,a1
 ba4:	3c040601 	lui	a0,0x601
 ba8:	0178c821 	addu	t9,t3,t8
 bac:	03274821 	addu	t1,t9,a3
 bb0:	ac690004 	sw	t1,4(v1)
 bb4:	8d0302c0 	lw	v1,704(t0)
 bb8:	2484de80 	addiu	a0,a0,-8576
 bbc:	00046900 	sll	t5,a0,0x4
 bc0:	000d7702 	srl	t6,t5,0x1c
 bc4:	3c0cdb06 	lui	t4,0xdb06
 bc8:	246a0008 	addiu	t2,v1,8
 bcc:	358c0024 	ori	t4,t4,0x24
 bd0:	000e7880 	sll	t7,t6,0x2
 bd4:	ad0a02c0 	sw	t2,704(t0)
 bd8:	00cf5821 	addu	t3,a2,t7
 bdc:	ac6c0000 	sw	t4,0(v1)
 be0:	8d780000 	lw	t8,0(t3)
 be4:	0085c824 	and	t9,a0,a1
 be8:	03194821 	addu	t1,t8,t9
 bec:	01275021 	addu	t2,t1,a3
 bf0:	ac6a0004 	sw	t2,4(v1)
 bf4:	9207014e 	lbu	a3,334(s0)
 bf8:	8e06016c 	lw	a2,364(s0)
 bfc:	8e050150 	lw	a1,336(s0)
 c00:	afb00018 	sw	s0,24(sp)
 c04:	afa00014 	sw	zero,20(sp)
 c08:	afa00010 	sw	zero,16(sp)
 c0c:	0c000000 	jal	0 <EnGm_Init>
 c10:	8fa4005c 	lw	a0,92(sp)
 c14:	8fac005c 	lw	t4,92(sp)
 c18:	3c060000 	lui	a2,0x0
 c1c:	24c60000 	addiu	a2,a2,0
 c20:	27a4003c 	addiu	a0,sp,60
 c24:	24070275 	li	a3,629
 c28:	0c000000 	jal	0 <EnGm_Init>
 c2c:	8d850000 	lw	a1,0(t4)
 c30:	0c000000 	jal	0 <EnGm_Init>
 c34:	02002025 	move	a0,s0
 c38:	8fbf002c 	lw	ra,44(sp)
 c3c:	8fb00028 	lw	s0,40(sp)
 c40:	27bd0058 	addiu	sp,sp,88
 c44:	03e00008 	jr	ra
 c48:	00000000 	nop
 c4c:	00000000 	nop
