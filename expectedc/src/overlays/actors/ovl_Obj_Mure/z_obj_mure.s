
build/src/overlays/actors/ovl_Obj_Mure/z_obj_mure.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B98AA0>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	84820156 	lh	v0,342(a0)
  14:	24010002 	li	at,2
  18:	8fa40018 	lw	a0,24(sp)
  1c:	10410006 	beq	v0,at,38 <func_80B98AA0+0x38>
  20:	3c050000 	lui	a1,0x0
  24:	24010003 	li	at,3
  28:	10410003 	beq	v0,at,38 <func_80B98AA0+0x38>
  2c:	24010004 	li	at,4
  30:	14410005 	bne	v0,at,48 <func_80B98AA0+0x48>
  34:	240600cc 	li	a2,204
  38:	0c000000 	jal	0 <func_80B98AA0>
  3c:	24a50000 	addiu	a1,a1,0
  40:	1000000a 	b	6c <func_80B98AA0+0x6c>
  44:	24020001 	li	v0,1
  48:	8faf0018 	lw	t7,24(sp)
  4c:	3c040000 	lui	a0,0x0
  50:	3c050000 	lui	a1,0x0
  54:	24a50000 	addiu	a1,a1,0
  58:	24840000 	addiu	a0,a0,0
  5c:	0c000000 	jal	0 <func_80B98AA0>
  60:	85e7001c 	lh	a3,28(t7)
  64:	10000001 	b	6c <func_80B98AA0+0x6c>
  68:	00001025 	move	v0,zero
  6c:	8fbf0014 	lw	ra,20(sp)
  70:	27bd0018 	addiu	sp,sp,24
  74:	03e00008 	jr	ra
  78:	00000000 	nop

0000007c <func_80B98B1C>:
  7c:	27bdffe8 	addiu	sp,sp,-24
  80:	afbf0014 	sw	ra,20(sp)
  84:	0c000000 	jal	0 <func_80B98AA0>
  88:	00000000 	nop
  8c:	14400003 	bnez	v0,9c <func_80B98B1C+0x20>
  90:	8fbf0014 	lw	ra,20(sp)
  94:	10000002 	b	a0 <func_80B98B1C+0x24>
  98:	00001025 	move	v0,zero
  9c:	24020001 	li	v0,1
  a0:	03e00008 	jr	ra
  a4:	27bd0018 	addiu	sp,sp,24

000000a8 <ObjMure_Init>:
  a8:	27bdffd8 	addiu	sp,sp,-40
  ac:	afbf0024 	sw	ra,36(sp)
  b0:	afb00020 	sw	s0,32(sp)
  b4:	8487001c 	lh	a3,28(a0)
  b8:	00808025 	move	s0,a0
  bc:	240600ed 	li	a2,237
  c0:	0007c203 	sra	t8,a3,0x8
  c4:	33190007 	andi	t9,t8,0x7
  c8:	a4990152 	sh	t9,338(a0)
  cc:	848b0152 	lh	t3,338(a0)
  d0:	00077303 	sra	t6,a3,0xc
  d4:	00074143 	sra	t0,a3,0x5
  d8:	31cf000f 	andi	t7,t6,0xf
  dc:	31090003 	andi	t1,t0,0x3
  e0:	30ea001f 	andi	t2,a3,0x1f
  e4:	29610004 	slti	at,t3,4
  e8:	a48f0150 	sh	t7,336(a0)
  ec:	a4890154 	sh	t1,340(a0)
  f0:	1420000a 	bnez	at,11c <ObjMure_Init+0x74>
  f4:	a48a0156 	sh	t2,342(a0)
  f8:	3c040000 	lui	a0,0x0
  fc:	3c050000 	lui	a1,0x0
 100:	24a50000 	addiu	a1,a1,0
 104:	0c000000 	jal	0 <func_80B98AA0>
 108:	24840000 	addiu	a0,a0,0
 10c:	0c000000 	jal	0 <func_80B98AA0>
 110:	02002025 	move	a0,s0
 114:	1000002d 	b	1cc <ObjMure_Init+0x124>
 118:	8fbf0024 	lw	ra,36(sp)
 11c:	860c0156 	lh	t4,342(s0)
 120:	3c040000 	lui	a0,0x0
 124:	24840000 	addiu	a0,a0,0
 128:	29810005 	slti	at,t4,5
 12c:	14200008 	bnez	at,150 <ObjMure_Init+0xa8>
 130:	240600f5 	li	a2,245
 134:	3c050000 	lui	a1,0x0
 138:	0c000000 	jal	0 <func_80B98AA0>
 13c:	24a50000 	addiu	a1,a1,0
 140:	0c000000 	jal	0 <func_80B98AA0>
 144:	02002025 	move	a0,s0
 148:	10000020 	b	1cc <ObjMure_Init+0x124>
 14c:	8fbf0024 	lw	ra,36(sp)
 150:	0c000000 	jal	0 <func_80B98AA0>
 154:	02002025 	move	a0,s0
 158:	14400005 	bnez	v0,170 <ObjMure_Init+0xc8>
 15c:	3c0d0000 	lui	t5,0x0
 160:	0c000000 	jal	0 <func_80B98AA0>
 164:	02002025 	move	a0,s0
 168:	10000018 	b	1cc <ObjMure_Init+0x124>
 16c:	8fbf0024 	lw	ra,36(sp)
 170:	860e0154 	lh	t6,340(s0)
 174:	25ad0000 	addiu	t5,t5,0
 178:	ae0d014c 	sw	t5,332(s0)
 17c:	8605001c 	lh	a1,28(s0)
 180:	86060150 	lh	a2,336(s0)
 184:	86070152 	lh	a3,338(s0)
 188:	afae0010 	sw	t6,16(sp)
 18c:	860f0156 	lh	t7,342(s0)
 190:	3c040000 	lui	a0,0x0
 194:	24840000 	addiu	a0,a0,0
 198:	0c000000 	jal	0 <func_80B98AA0>
 19c:	afaf0014 	sw	t7,20(sp)
 1a0:	0c000000 	jal	0 <func_80B98AA0>
 1a4:	02002025 	move	a0,s0
 1a8:	1c400007 	bgtz	v0,1c8 <ObjMure_Init+0x120>
 1ac:	3c040000 	lui	a0,0x0
 1b0:	3c050000 	lui	a1,0x0
 1b4:	24a50000 	addiu	a1,a1,0
 1b8:	24840000 	addiu	a0,a0,0
 1bc:	2406010c 	li	a2,268
 1c0:	0c000000 	jal	0 <func_80B98AA0>
 1c4:	8607001c 	lh	a3,28(s0)
 1c8:	8fbf0024 	lw	ra,36(sp)
 1cc:	8fb00020 	lw	s0,32(sp)
 1d0:	27bd0028 	addiu	sp,sp,40
 1d4:	03e00008 	jr	ra
 1d8:	00000000 	nop

000001dc <ObjMure_Destroy>:
 1dc:	afa40000 	sw	a0,0(sp)
 1e0:	03e00008 	jr	ra
 1e4:	afa50004 	sw	a1,4(sp)

000001e8 <func_80B98C88>:
 1e8:	84830150 	lh	v1,336(a0)
 1ec:	14600007 	bnez	v1,20c <func_80B98C88+0x24>
 1f0:	00601025 	move	v0,v1
 1f4:	848e0152 	lh	t6,338(a0)
 1f8:	3c020000 	lui	v0,0x0
 1fc:	000e7880 	sll	t7,t6,0x2
 200:	004f1021 	addu	v0,v0,t7
 204:	03e00008 	jr	ra
 208:	8c420000 	lw	v0,0(v0)
 20c:	03e00008 	jr	ra
 210:	00000000 	nop

00000214 <func_80B98CB4>:
 214:	27bdffe8 	addiu	sp,sp,-24
 218:	28c10004 	slti	at,a2,4
 21c:	afbf0014 	sw	ra,20(sp)
 220:	afa40018 	sw	a0,24(sp)
 224:	afa5001c 	sw	a1,28(sp)
 228:	14200007 	bnez	at,248 <func_80B98CB4+0x34>
 22c:	afa70024 	sw	a3,36(sp)
 230:	3c040000 	lui	a0,0x0
 234:	3c050000 	lui	a1,0x0
 238:	24a50000 	addiu	a1,a1,0
 23c:	24840000 	addiu	a0,a0,0
 240:	0c000000 	jal	0 <func_80B98AA0>
 244:	24060133 	li	a2,307
 248:	8faf001c 	lw	t7,28(sp)
 24c:	8fae0018 	lw	t6,24(sp)
 250:	8df90000 	lw	t9,0(t7)
 254:	add90000 	sw	t9,0(t6)
 258:	8df80004 	lw	t8,4(t7)
 25c:	add80004 	sw	t8,4(t6)
 260:	8df90008 	lw	t9,8(t7)
 264:	add90008 	sw	t9,8(t6)
 268:	8fbf0014 	lw	ra,20(sp)
 26c:	27bd0018 	addiu	sp,sp,24
 270:	03e00008 	jr	ra
 274:	00000000 	nop

00000278 <func_80B98D18>:
 278:	27bdff78 	addiu	sp,sp,-136
 27c:	afbf0054 	sw	ra,84(sp)
 280:	afb50044 	sw	s5,68(sp)
 284:	afb00030 	sw	s0,48(sp)
 288:	00808025 	move	s0,a0
 28c:	00a0a825 	move	s5,a1
 290:	afbe0050 	sw	s8,80(sp)
 294:	afb7004c 	sw	s7,76(sp)
 298:	afb60048 	sw	s6,72(sp)
 29c:	afb40040 	sw	s4,64(sp)
 2a0:	afb3003c 	sw	s3,60(sp)
 2a4:	afb20038 	sw	s2,56(sp)
 2a8:	0c000000 	jal	0 <func_80B98AA0>
 2ac:	afb10034 	sw	s1,52(sp)
 2b0:	afa2006c 	sw	v0,108(sp)
 2b4:	1840006c 	blez	v0,468 <func_80B98D18+0x1f0>
 2b8:	00009825 	move	s3,zero
 2bc:	3c1e0000 	lui	s8,0x0
 2c0:	3c170000 	lui	s7,0x0
 2c4:	26f70000 	addiu	s7,s7,0
 2c8:	27de0000 	addiu	s8,s8,0
 2cc:	02008825 	move	s1,s0
 2d0:	0200a025 	move	s4,s0
 2d4:	27b60074 	addiu	s6,sp,116
 2d8:	8e2e0158 	lw	t6,344(s1)
 2dc:	3c040000 	lui	a0,0x0
 2e0:	24840000 	addiu	a0,a0,0
 2e4:	11c00005 	beqz	t6,2fc <func_80B98D18+0x84>
 2e8:	3c050000 	lui	a1,0x0
 2ec:	24a50000 	addiu	a1,a1,0
 2f0:	2406014d 	li	a2,333
 2f4:	0c000000 	jal	0 <func_80B98AA0>
 2f8:	8607001c 	lh	a3,28(s0)
 2fc:	92820194 	lbu	v0,404(s4)
 300:	24010001 	li	at,1
 304:	26b21c24 	addiu	s2,s5,7204
 308:	10410051 	beq	v0,at,450 <func_80B98D18+0x1d8>
 30c:	24010002 	li	at,2
 310:	1441002b 	bne	v0,at,3c0 <func_80B98D18+0x148>
 314:	26050024 	addiu	a1,s0,36
 318:	02c02025 	move	a0,s6
 31c:	86060152 	lh	a2,338(s0)
 320:	0c000000 	jal	0 <func_80B98AA0>
 324:	02603825 	move	a3,s3
 328:	86020156 	lh	v0,342(s0)
 32c:	c7a40078 	lwc1	$f4,120(sp)
 330:	c7a6007c 	lwc1	$f6,124(sp)
 334:	00021040 	sll	v0,v0,0x1
 338:	02e27821 	addu	t7,s7,v0
 33c:	85e60000 	lh	a2,0(t7)
 340:	e7a40010 	swc1	$f4,16(sp)
 344:	e7a60014 	swc1	$f6,20(sp)
 348:	86180030 	lh	t8,48(s0)
 34c:	03c24821 	addu	t1,s8,v0
 350:	852a0000 	lh	t2,0(t1)
 354:	afb80018 	sw	t8,24(sp)
 358:	86190032 	lh	t9,50(s0)
 35c:	02402025 	move	a0,s2
 360:	02a02825 	move	a1,s5
 364:	afb9001c 	sw	t9,28(sp)
 368:	86080034 	lh	t0,52(s0)
 36c:	8fa70074 	lw	a3,116(sp)
 370:	afaa0024 	sw	t2,36(sp)
 374:	0c000000 	jal	0 <func_80B98AA0>
 378:	afa80020 	sw	t0,32(sp)
 37c:	10400008 	beqz	v0,3a0 <func_80B98D18+0x128>
 380:	ae220158 	sw	v0,344(s1)
 384:	8c4b0004 	lw	t3,4(v0)
 388:	356c0800 	ori	t4,t3,0x800
 38c:	ac4c0004 	sw	t4,4(v0)
 390:	8e2e0158 	lw	t6,344(s1)
 394:	820d0003 	lb	t5,3(s0)
 398:	1000002d 	b	450 <func_80B98D18+0x1d8>
 39c:	a1cd0003 	sb	t5,3(t6)
 3a0:	3c040000 	lui	a0,0x0
 3a4:	3c050000 	lui	a1,0x0
 3a8:	24a50000 	addiu	a1,a1,0
 3ac:	24840000 	addiu	a0,a0,0
 3b0:	0c000000 	jal	0 <func_80B98AA0>
 3b4:	24060167 	li	a2,359
 3b8:	10000026 	b	454 <func_80B98D18+0x1dc>
 3bc:	8fad006c 	lw	t5,108(sp)
 3c0:	02c02025 	move	a0,s6
 3c4:	86060152 	lh	a2,338(s0)
 3c8:	0c000000 	jal	0 <func_80B98AA0>
 3cc:	02603825 	move	a3,s3
 3d0:	86020156 	lh	v0,342(s0)
 3d4:	c7a80078 	lwc1	$f8,120(sp)
 3d8:	c7aa007c 	lwc1	$f10,124(sp)
 3dc:	00021040 	sll	v0,v0,0x1
 3e0:	02e27821 	addu	t7,s7,v0
 3e4:	85e60000 	lh	a2,0(t7)
 3e8:	e7a80010 	swc1	$f8,16(sp)
 3ec:	e7aa0014 	swc1	$f10,20(sp)
 3f0:	86180030 	lh	t8,48(s0)
 3f4:	03c24821 	addu	t1,s8,v0
 3f8:	852a0000 	lh	t2,0(t1)
 3fc:	afb80018 	sw	t8,24(sp)
 400:	86190032 	lh	t9,50(s0)
 404:	02402025 	move	a0,s2
 408:	02a02825 	move	a1,s5
 40c:	afb9001c 	sw	t9,28(sp)
 410:	86080034 	lh	t0,52(s0)
 414:	8fa70074 	lw	a3,116(sp)
 418:	afaa0024 	sw	t2,36(sp)
 41c:	0c000000 	jal	0 <func_80B98AA0>
 420:	afa80020 	sw	t0,32(sp)
 424:	10400004 	beqz	v0,438 <func_80B98D18+0x1c0>
 428:	ae220158 	sw	v0,344(s1)
 42c:	820b0003 	lb	t3,3(s0)
 430:	10000007 	b	450 <func_80B98D18+0x1d8>
 434:	a04b0003 	sb	t3,3(v0)
 438:	3c040000 	lui	a0,0x0
 43c:	3c050000 	lui	a1,0x0
 440:	24a50000 	addiu	a1,a1,0
 444:	24840000 	addiu	a0,a0,0
 448:	0c000000 	jal	0 <func_80B98AA0>
 44c:	2406017e 	li	a2,382
 450:	8fad006c 	lw	t5,108(sp)
 454:	26730001 	addiu	s3,s3,1
 458:	26310004 	addiu	s1,s1,4
 45c:	026d082a 	slt	at,s3,t5
 460:	1420ff9d 	bnez	at,2d8 <func_80B98D18+0x60>
 464:	26940001 	addiu	s4,s4,1
 468:	8fbf0054 	lw	ra,84(sp)
 46c:	8fb00030 	lw	s0,48(sp)
 470:	8fb10034 	lw	s1,52(sp)
 474:	8fb20038 	lw	s2,56(sp)
 478:	8fb3003c 	lw	s3,60(sp)
 47c:	8fb40040 	lw	s4,64(sp)
 480:	8fb50044 	lw	s5,68(sp)
 484:	8fb60048 	lw	s6,72(sp)
 488:	8fb7004c 	lw	s7,76(sp)
 48c:	8fbe0050 	lw	s8,80(sp)
 490:	03e00008 	jr	ra
 494:	27bd0088 	addiu	sp,sp,136

00000498 <func_80B98F38>:
 498:	27bdff70 	addiu	sp,sp,-144
 49c:	afbf0054 	sw	ra,84(sp)
 4a0:	afb40040 	sw	s4,64(sp)
 4a4:	afb00030 	sw	s0,48(sp)
 4a8:	00808025 	move	s0,a0
 4ac:	00a0a025 	move	s4,a1
 4b0:	afbe0050 	sw	s8,80(sp)
 4b4:	afb7004c 	sw	s7,76(sp)
 4b8:	afb60048 	sw	s6,72(sp)
 4bc:	afb50044 	sw	s5,68(sp)
 4c0:	afb3003c 	sw	s3,60(sp)
 4c4:	afb20038 	sw	s2,56(sp)
 4c8:	0c000000 	jal	0 <func_80B98AA0>
 4cc:	afb10034 	sw	s1,52(sp)
 4d0:	0040a825 	move	s5,v0
 4d4:	18400045 	blez	v0,5ec <func_80B98F38+0x154>
 4d8:	00008825 	move	s1,zero
 4dc:	3c1e0000 	lui	s8,0x0
 4e0:	27de0000 	addiu	s8,s8,0
 4e4:	02009025 	move	s2,s0
 4e8:	26961c24 	addiu	s6,s4,7204
 4ec:	02009825 	move	s3,s0
 4f0:	26170024 	addiu	s7,s0,36
 4f4:	8e4e0158 	lw	t6,344(s2)
 4f8:	3c050000 	lui	a1,0x0
 4fc:	24a50000 	addiu	a1,a1,0
 500:	11c00004 	beqz	t6,514 <func_80B98F38+0x7c>
 504:	03c02025 	move	a0,s8
 508:	24060197 	li	a2,407
 50c:	0c000000 	jal	0 <func_80B98AA0>
 510:	8607001c 	lh	a3,28(s0)
 514:	27a4007c 	addiu	a0,sp,124
 518:	02e02825 	move	a1,s7
 51c:	86060152 	lh	a2,338(s0)
 520:	0c000000 	jal	0 <func_80B98AA0>
 524:	02203825 	move	a3,s1
 528:	86020156 	lh	v0,342(s0)
 52c:	24010004 	li	at,4
 530:	02c02025 	move	a0,s6
 534:	14410005 	bne	v0,at,54c <func_80B98F38+0xb4>
 538:	c7a40080 	lwc1	$f4,128(sp)
 53c:	16200003 	bnez	s1,54c <func_80B98F38+0xb4>
 540:	24080001 	li	t0,1
 544:	10000005 	b	55c <func_80B98F38+0xc4>
 548:	00021840 	sll	v1,v0,0x1
 54c:	00021840 	sll	v1,v0,0x1
 550:	3c080000 	lui	t0,0x0
 554:	01034021 	addu	t0,t0,v1
 558:	85080000 	lh	t0,0(t0)
 55c:	c7a60084 	lwc1	$f6,132(sp)
 560:	e7a40010 	swc1	$f4,16(sp)
 564:	3c060000 	lui	a2,0x0
 568:	e7a60014 	swc1	$f6,20(sp)
 56c:	860f0030 	lh	t7,48(s0)
 570:	00c33021 	addu	a2,a2,v1
 574:	84c60000 	lh	a2,0(a2)
 578:	afaf0018 	sw	t7,24(sp)
 57c:	86180032 	lh	t8,50(s0)
 580:	02802825 	move	a1,s4
 584:	8fa7007c 	lw	a3,124(sp)
 588:	afb8001c 	sw	t8,28(sp)
 58c:	86190034 	lh	t9,52(s0)
 590:	afa80024 	sw	t0,36(sp)
 594:	0c000000 	jal	0 <func_80B98AA0>
 598:	afb90020 	sw	t9,32(sp)
 59c:	10400006 	beqz	v0,5b8 <func_80B98F38+0x120>
 5a0:	ae420158 	sw	v0,344(s2)
 5a4:	a2600194 	sb	zero,404(s3)
 5a8:	8e4a0158 	lw	t2,344(s2)
 5ac:	82090003 	lb	t1,3(s0)
 5b0:	10000009 	b	5d8 <func_80B98F38+0x140>
 5b4:	a1490003 	sb	t1,3(t2)
 5b8:	240b0001 	li	t3,1
 5bc:	3c040000 	lui	a0,0x0
 5c0:	3c050000 	lui	a1,0x0
 5c4:	a26b0194 	sb	t3,404(s3)
 5c8:	24a50000 	addiu	a1,a1,0
 5cc:	24840000 	addiu	a0,a0,0
 5d0:	0c000000 	jal	0 <func_80B98AA0>
 5d4:	240601b6 	li	a2,438
 5d8:	26310001 	addiu	s1,s1,1
 5dc:	0235082a 	slt	at,s1,s5
 5e0:	26520004 	addiu	s2,s2,4
 5e4:	1420ffc3 	bnez	at,4f4 <func_80B98F38+0x5c>
 5e8:	26730001 	addiu	s3,s3,1
 5ec:	8fbf0054 	lw	ra,84(sp)
 5f0:	8fb00030 	lw	s0,48(sp)
 5f4:	8fb10034 	lw	s1,52(sp)
 5f8:	8fb20038 	lw	s2,56(sp)
 5fc:	8fb3003c 	lw	s3,60(sp)
 600:	8fb40040 	lw	s4,64(sp)
 604:	8fb50044 	lw	s5,68(sp)
 608:	8fb60048 	lw	s6,72(sp)
 60c:	8fb7004c 	lw	s7,76(sp)
 610:	8fbe0050 	lw	s8,80(sp)
 614:	03e00008 	jr	ra
 618:	27bd0090 	addiu	sp,sp,144

0000061c <func_80B990BC>:
 61c:	27bdffe8 	addiu	sp,sp,-24
 620:	afbf0014 	sw	ra,20(sp)
 624:	84820154 	lh	v0,340(a0)
 628:	24010001 	li	at,1
 62c:	10400005 	beqz	v0,644 <func_80B990BC+0x28>
 630:	00000000 	nop
 634:	10410007 	beq	v0,at,654 <func_80B990BC+0x38>
 638:	00000000 	nop
 63c:	10000008 	b	660 <func_80B990BC+0x44>
 640:	8fbf0014 	lw	ra,20(sp)
 644:	0c000000 	jal	0 <func_80B98AA0>
 648:	00000000 	nop
 64c:	10000004 	b	660 <func_80B990BC+0x44>
 650:	8fbf0014 	lw	ra,20(sp)
 654:	0c000000 	jal	0 <func_80B98AA0>
 658:	00000000 	nop
 65c:	8fbf0014 	lw	ra,20(sp)
 660:	27bd0018 	addiu	sp,sp,24
 664:	03e00008 	jr	ra
 668:	00000000 	nop

0000066c <func_80B9910C>:
 66c:	27bdffc8 	addiu	sp,sp,-56
 670:	afbf0034 	sw	ra,52(sp)
 674:	afb60030 	sw	s6,48(sp)
 678:	00a0b025 	move	s6,a1
 67c:	afb5002c 	sw	s5,44(sp)
 680:	afb40028 	sw	s4,40(sp)
 684:	afb30024 	sw	s3,36(sp)
 688:	afb20020 	sw	s2,32(sp)
 68c:	afb1001c 	sw	s1,28(sp)
 690:	afb00018 	sw	s0,24(sp)
 694:	0c000000 	jal	0 <func_80B98AA0>
 698:	afa40038 	sw	a0,56(sp)
 69c:	18400027 	blez	v0,73c <func_80B9910C+0xd0>
 6a0:	8fa40038 	lw	a0,56(sp)
 6a4:	00027080 	sll	t6,v0,0x2
 6a8:	01c49021 	addu	s2,t6,a0
 6ac:	00808825 	move	s1,a0
 6b0:	00808025 	move	s0,a0
 6b4:	24150002 	li	s5,2
 6b8:	24140001 	li	s4,1
 6bc:	92220194 	lbu	v0,404(s1)
 6c0:	10540005 	beq	v0,s4,6d8 <func_80B9910C+0x6c>
 6c4:	00000000 	nop
 6c8:	50550006 	beql	v0,s5,6e4 <func_80B9910C+0x78>
 6cc:	8e040158 	lw	a0,344(s0)
 6d0:	1000000b 	b	700 <func_80B9910C+0x94>
 6d4:	8e040158 	lw	a0,344(s0)
 6d8:	10000014 	b	72c <func_80B9910C+0xc0>
 6dc:	ae000158 	sw	zero,344(s0)
 6e0:	8e040158 	lw	a0,344(s0)
 6e4:	50800012 	beqzl	a0,730 <func_80B9910C+0xc4>
 6e8:	26100004 	addiu	s0,s0,4
 6ec:	0c000000 	jal	0 <func_80B98AA0>
 6f0:	00000000 	nop
 6f4:	1000000d 	b	72c <func_80B9910C+0xc0>
 6f8:	ae000158 	sw	zero,344(s0)
 6fc:	8e040158 	lw	a0,344(s0)
 700:	5080000b 	beqzl	a0,730 <func_80B9910C+0xc4>
 704:	26100004 	addiu	s0,s0,4
 708:	0c000000 	jal	0 <func_80B98AA0>
 70c:	02c02825 	move	a1,s6
 710:	10400003 	beqz	v0,720 <func_80B9910C+0xb4>
 714:	00000000 	nop
 718:	10000004 	b	72c <func_80B9910C+0xc0>
 71c:	ae000158 	sw	zero,344(s0)
 720:	0c000000 	jal	0 <func_80B98AA0>
 724:	8e040158 	lw	a0,344(s0)
 728:	ae000158 	sw	zero,344(s0)
 72c:	26100004 	addiu	s0,s0,4
 730:	0212082b 	sltu	at,s0,s2
 734:	1420ffe1 	bnez	at,6bc <func_80B9910C+0x50>
 738:	26310001 	addiu	s1,s1,1
 73c:	8fbf0034 	lw	ra,52(sp)
 740:	8fb00018 	lw	s0,24(sp)
 744:	8fb1001c 	lw	s1,28(sp)
 748:	8fb20020 	lw	s2,32(sp)
 74c:	8fb30024 	lw	s3,36(sp)
 750:	8fb40028 	lw	s4,40(sp)
 754:	8fb5002c 	lw	s5,44(sp)
 758:	8fb60030 	lw	s6,48(sp)
 75c:	03e00008 	jr	ra
 760:	27bd0038 	addiu	sp,sp,56

00000764 <func_80B99204>:
 764:	27bdffe8 	addiu	sp,sp,-24
 768:	afbf0014 	sw	ra,20(sp)
 76c:	0c000000 	jal	0 <func_80B98AA0>
 770:	00000000 	nop
 774:	8fbf0014 	lw	ra,20(sp)
 778:	27bd0018 	addiu	sp,sp,24
 77c:	03e00008 	jr	ra
 780:	00000000 	nop

00000784 <func_80B99224>:
 784:	27bdffe0 	addiu	sp,sp,-32
 788:	afbf001c 	sw	ra,28(sp)
 78c:	afb00018 	sw	s0,24(sp)
 790:	00808025 	move	s0,a0
 794:	0c000000 	jal	0 <func_80B98AA0>
 798:	afa50024 	sw	a1,36(sp)
 79c:	00405025 	move	t2,v0
 7a0:	18400023 	blez	v0,830 <func_80B99224+0xac>
 7a4:	00003025 	move	a2,zero
 7a8:	02002825 	move	a1,s0
 7ac:	24090002 	li	t1,2
 7b0:	24080002 	li	t0,2
 7b4:	24070001 	li	a3,1
 7b8:	8ca20158 	lw	v0,344(a1)
 7bc:	02061821 	addu	v1,s0,a2
 7c0:	50400018 	beqzl	v0,824 <func_80B99224+0xa0>
 7c4:	24c60001 	addiu	a2,a2,1
 7c8:	90640194 	lbu	a0,404(v1)
 7cc:	1480000d 	bnez	a0,804 <func_80B99224+0x80>
 7d0:	00000000 	nop
 7d4:	8c4e0130 	lw	t6,304(v0)
 7d8:	51c00008 	beqzl	t6,7fc <func_80B99224+0x78>
 7dc:	a0670194 	sb	a3,404(v1)
 7e0:	8c4f0004 	lw	t7,4(v0)
 7e4:	31f80800 	andi	t8,t7,0x800
 7e8:	5300000e 	beqzl	t8,824 <func_80B99224+0xa0>
 7ec:	24c60001 	addiu	a2,a2,1
 7f0:	1000000b 	b	820 <func_80B99224+0x9c>
 7f4:	a0680194 	sb	t0,404(v1)
 7f8:	a0670194 	sb	a3,404(v1)
 7fc:	10000008 	b	820 <func_80B99224+0x9c>
 800:	aca00158 	sw	zero,344(a1)
 804:	55240007 	bnel	t1,a0,824 <func_80B99224+0xa0>
 808:	24c60001 	addiu	a2,a2,1
 80c:	8c590130 	lw	t9,304(v0)
 810:	57200004 	bnezl	t9,824 <func_80B99224+0xa0>
 814:	24c60001 	addiu	a2,a2,1
 818:	a0670194 	sb	a3,404(v1)
 81c:	aca00158 	sw	zero,344(a1)
 820:	24c60001 	addiu	a2,a2,1
 824:	00ca082a 	slt	at,a2,t2
 828:	1420ffe3 	bnez	at,7b8 <func_80B99224+0x34>
 82c:	24a50004 	addiu	a1,a1,4
 830:	8fbf001c 	lw	ra,28(sp)
 834:	8fb00018 	lw	s0,24(sp)
 838:	27bd0020 	addiu	sp,sp,32
 83c:	03e00008 	jr	ra
 840:	00000000 	nop

00000844 <func_80B992E4>:
 844:	3c0e0000 	lui	t6,0x0
 848:	afa50004 	sw	a1,4(sp)
 84c:	25ce0000 	addiu	t6,t6,0
 850:	03e00008 	jr	ra
 854:	ac8e014c 	sw	t6,332(a0)

00000858 <func_80B992F8>:
 858:	27bdffe8 	addiu	sp,sp,-24
 85c:	afbf0014 	sw	ra,20(sp)
 860:	848e0156 	lh	t6,342(a0)
 864:	c48000ec 	lwc1	$f0,236(a0)
 868:	3c010000 	lui	at,0x0
 86c:	000e7880 	sll	t7,t6,0x2
 870:	002f0821 	addu	at,at,t7
 874:	c4240000 	lwc1	$f4,0(at)
 878:	46000005 	abs.s	$f0,$f0
 87c:	3c180000 	lui	t8,0x0
 880:	4604003c 	c.lt.s	$f0,$f4
 884:	00000000 	nop
 888:	45020008 	bc1fl	8ac <func_80B992F8+0x54>
 88c:	8fbf0014 	lw	ra,20(sp)
 890:	8c990004 	lw	t9,4(a0)
 894:	27180000 	addiu	t8,t8,0
 898:	ac98014c 	sw	t8,332(a0)
 89c:	37280010 	ori	t0,t9,0x10
 8a0:	0c000000 	jal	0 <func_80B98AA0>
 8a4:	ac880004 	sw	t0,4(a0)
 8a8:	8fbf0014 	lw	ra,20(sp)
 8ac:	27bd0018 	addiu	sp,sp,24
 8b0:	03e00008 	jr	ra
 8b4:	00000000 	nop

000008b8 <func_80B99358>:
 8b8:	27bdffc8 	addiu	sp,sp,-56
 8bc:	f7b60018 	sdc1	$f22,24(sp)
 8c0:	4485b000 	mtc1	a1,$f22
 8c4:	afbf0034 	sw	ra,52(sp)
 8c8:	afb30030 	sw	s3,48(sp)
 8cc:	00809825 	move	s3,a0
 8d0:	afb2002c 	sw	s2,44(sp)
 8d4:	afb10028 	sw	s1,40(sp)
 8d8:	afb00024 	sw	s0,36(sp)
 8dc:	0c000000 	jal	0 <func_80B98AA0>
 8e0:	f7b40010 	sdc1	$f20,16(sp)
 8e4:	00409025 	move	s2,v0
 8e8:	1840001f 	blez	v0,968 <func_80B99358+0xb0>
 8ec:	00008025 	move	s0,zero
 8f0:	02608825 	move	s1,s3
 8f4:	8e220158 	lw	v0,344(s1)
 8f8:	50400018 	beqzl	v0,95c <func_80B99358+0xa4>
 8fc:	26100001 	addiu	s0,s0,1
 900:	0c000000 	jal	0 <func_80B98AA0>
 904:	ac40011c 	sw	zero,284(v0)
 908:	4616003e 	c.le.s	$f0,$f22
 90c:	00000000 	nop
 910:	45020012 	bc1fl	95c <func_80B99358+0xa4>
 914:	26100001 	addiu	s0,s0,1
 918:	44922000 	mtc1	s2,$f4
 91c:	3c013f00 	lui	at,0x3f00
 920:	44814000 	mtc1	at,$f8
 924:	468021a0 	cvt.s.w	$f6,$f4
 928:	0c000000 	jal	0 <func_80B98AA0>
 92c:	46083501 	sub.s	$f20,$f6,$f8
 930:	46140282 	mul.s	$f10,$f0,$f20
 934:	4600540d 	trunc.w.s	$f16,$f10
 938:	44028000 	mfc1	v0,$f16
 93c:	00000000 	nop
 940:	12020005 	beq	s0,v0,958 <func_80B99358+0xa0>
 944:	00027880 	sll	t7,v0,0x2
 948:	026fc021 	addu	t8,s3,t7
 94c:	8f190158 	lw	t9,344(t8)
 950:	8e280158 	lw	t0,344(s1)
 954:	ad19011c 	sw	t9,284(t0)
 958:	26100001 	addiu	s0,s0,1
 95c:	0212082a 	slt	at,s0,s2
 960:	1420ffe4 	bnez	at,8f4 <func_80B99358+0x3c>
 964:	26310004 	addiu	s1,s1,4
 968:	8fbf0034 	lw	ra,52(sp)
 96c:	d7b40010 	ldc1	$f20,16(sp)
 970:	d7b60018 	ldc1	$f22,24(sp)
 974:	8fb00024 	lw	s0,36(sp)
 978:	8fb10028 	lw	s1,40(sp)
 97c:	8fb2002c 	lw	s2,44(sp)
 980:	8fb30030 	lw	s3,48(sp)
 984:	03e00008 	jr	ra
 988:	27bd0038 	addiu	sp,sp,56

0000098c <func_80B9942C>:
 98c:	27bdffe8 	addiu	sp,sp,-24
 990:	afbf0014 	sw	ra,20(sp)
 994:	afa5001c 	sw	a1,28(sp)
 998:	0c000000 	jal	0 <func_80B98AA0>
 99c:	afa40018 	sw	a0,24(sp)
 9a0:	8fa70018 	lw	a3,24(sp)
 9a4:	8fab001c 	lw	t3,28(sp)
 9a8:	00404825 	move	t1,v0
 9ac:	00002825 	move	a1,zero
 9b0:	18400050 	blez	v0,af4 <func_80B9942C+0x168>
 9b4:	00005025 	move	t2,zero
 9b8:	00e03025 	move	a2,a3
 9bc:	8cc30158 	lw	v1,344(a2)
 9c0:	014b082a 	slt	at,t2,t3
 9c4:	50600048 	beqzl	v1,ae8 <func_80B9942C+0x15c>
 9c8:	24a50001 	addiu	a1,a1,1
 9cc:	10200041 	beqz	at,ad4 <func_80B9942C+0x148>
 9d0:	00002025 	move	a0,zero
 9d4:	254a0001 	addiu	t2,t2,1
 9d8:	18400042 	blez	v0,ae4 <func_80B9942C+0x158>
 9dc:	ac63011c 	sw	v1,284(v1)
 9e0:	30430003 	andi	v1,v0,0x3
 9e4:	1060000f 	beqz	v1,a24 <func_80B9942C+0x98>
 9e8:	00604025 	move	t0,v1
 9ec:	10a40008 	beq	a1,a0,a10 <func_80B9942C+0x84>
 9f0:	00047080 	sll	t6,a0,0x2
 9f4:	00ee7821 	addu	t7,a3,t6
 9f8:	8de30158 	lw	v1,344(t7)
 9fc:	8cd90158 	lw	t9,344(a2)
 a00:	8c78011c 	lw	t8,284(v1)
 a04:	57190003 	bnel	t8,t9,a14 <func_80B9942C+0x88>
 a08:	24840001 	addiu	a0,a0,1
 a0c:	ac60011c 	sw	zero,284(v1)
 a10:	24840001 	addiu	a0,a0,1
 a14:	1504fff5 	bne	t0,a0,9ec <func_80B9942C+0x60>
 a18:	00000000 	nop
 a1c:	50820032 	beql	a0,v0,ae8 <func_80B9942C+0x15c>
 a20:	24a50001 	addiu	a1,a1,1
 a24:	10a40009 	beq	a1,a0,a4c <func_80B9942C+0xc0>
 a28:	24980001 	addiu	t8,a0,1
 a2c:	00046080 	sll	t4,a0,0x2
 a30:	00ec6821 	addu	t5,a3,t4
 a34:	8da30158 	lw	v1,344(t5)
 a38:	8ccf0158 	lw	t7,344(a2)
 a3c:	8c6e011c 	lw	t6,284(v1)
 a40:	15cf0002 	bne	t6,t7,a4c <func_80B9942C+0xc0>
 a44:	00000000 	nop
 a48:	ac60011c 	sw	zero,284(v1)
 a4c:	10b80009 	beq	a1,t8,a74 <func_80B9942C+0xe8>
 a50:	248f0002 	addiu	t7,a0,2
 a54:	0004c880 	sll	t9,a0,0x2
 a58:	00f96021 	addu	t4,a3,t9
 a5c:	8d83015c 	lw	v1,348(t4)
 a60:	8cce0158 	lw	t6,344(a2)
 a64:	8c6d011c 	lw	t5,284(v1)
 a68:	15ae0002 	bne	t5,t6,a74 <func_80B9942C+0xe8>
 a6c:	00000000 	nop
 a70:	ac60011c 	sw	zero,284(v1)
 a74:	10af0009 	beq	a1,t7,a9c <func_80B9942C+0x110>
 a78:	248e0003 	addiu	t6,a0,3
 a7c:	0004c080 	sll	t8,a0,0x2
 a80:	00f8c821 	addu	t9,a3,t8
 a84:	8f230160 	lw	v1,352(t9)
 a88:	8ccd0158 	lw	t5,344(a2)
 a8c:	8c6c011c 	lw	t4,284(v1)
 a90:	158d0002 	bne	t4,t5,a9c <func_80B9942C+0x110>
 a94:	00000000 	nop
 a98:	ac60011c 	sw	zero,284(v1)
 a9c:	10ae0008 	beq	a1,t6,ac0 <func_80B9942C+0x134>
 aa0:	00047880 	sll	t7,a0,0x2
 aa4:	00efc021 	addu	t8,a3,t7
 aa8:	8f030164 	lw	v1,356(t8)
 aac:	8ccc0158 	lw	t4,344(a2)
 ab0:	8c79011c 	lw	t9,284(v1)
 ab4:	572c0003 	bnel	t9,t4,ac4 <func_80B9942C+0x138>
 ab8:	24840004 	addiu	a0,a0,4
 abc:	ac60011c 	sw	zero,284(v1)
 ac0:	24840004 	addiu	a0,a0,4
 ac4:	1489ffd7 	bne	a0,t1,a24 <func_80B9942C+0x98>
 ac8:	00000000 	nop
 acc:	10000006 	b	ae8 <func_80B9942C+0x15c>
 ad0:	24a50001 	addiu	a1,a1,1
 ad4:	8c6d011c 	lw	t5,284(v1)
 ad8:	55a30003 	bnel	t5,v1,ae8 <func_80B9942C+0x15c>
 adc:	24a50001 	addiu	a1,a1,1
 ae0:	ac60011c 	sw	zero,284(v1)
 ae4:	24a50001 	addiu	a1,a1,1
 ae8:	00a9082a 	slt	at,a1,t1
 aec:	1420ffb3 	bnez	at,9bc <func_80B9942C+0x30>
 af0:	24c60004 	addiu	a2,a2,4
 af4:	8fbf0014 	lw	ra,20(sp)
 af8:	27bd0018 	addiu	sp,sp,24
 afc:	03e00008 	jr	ra
 b00:	00000000 	nop

00000b04 <func_80B995A4>:
 b04:	27bdffe0 	addiu	sp,sp,-32
 b08:	afbf001c 	sw	ra,28(sp)
 b0c:	afb00018 	sw	s0,24(sp)
 b10:	afa50024 	sw	a1,36(sp)
 b14:	848e01a4 	lh	t6,420(a0)
 b18:	00808025 	move	s0,a0
 b1c:	5dc00067 	bgtzl	t6,cbc <func_80B995A4+0x1b8>
 b20:	3c0142f0 	lui	at,0x42f0
 b24:	848f01a6 	lh	t7,422(a0)
 b28:	3c014270 	lui	at,0x4270
 b2c:	51e0002d 	beqzl	t7,be4 <func_80B995A4+0xe0>
 b30:	c6040090 	lwc1	$f4,144(s0)
 b34:	0c000000 	jal	0 <func_80B98AA0>
 b38:	a48001a6 	sh	zero,422(a0)
 b3c:	3c013f00 	lui	at,0x3f00
 b40:	44812000 	mtc1	at,$f4
 b44:	3c010000 	lui	at,0x0
 b48:	c4280000 	lwc1	$f8,0(at)
 b4c:	46040182 	mul.s	$f6,$f0,$f4
 b50:	02002025 	move	a0,s0
 b54:	46083280 	add.s	$f10,$f6,$f8
 b58:	44055000 	mfc1	a1,$f10
 b5c:	0c000000 	jal	0 <func_80B98AA0>
 b60:	00000000 	nop
 b64:	3c014270 	lui	at,0x4270
 b68:	44819000 	mtc1	at,$f18
 b6c:	c6100090 	lwc1	$f16,144(s0)
 b70:	4612803c 	c.lt.s	$f16,$f18
 b74:	00000000 	nop
 b78:	4500000d 	bc1f	bb0 <func_80B995A4+0xac>
 b7c:	00000000 	nop
 b80:	0c000000 	jal	0 <func_80B98AA0>
 b84:	00000000 	nop
 b88:	3c0140b0 	lui	at,0x40b0
 b8c:	44812000 	mtc1	at,$f4
 b90:	00000000 	nop
 b94:	46040182 	mul.s	$f6,$f0,$f4
 b98:	4600320d 	trunc.w.s	$f8,$f6
 b9c:	44094000 	mfc1	t1,$f8
 ba0:	00000000 	nop
 ba4:	252a0004 	addiu	t2,t1,4
 ba8:	10000043 	b	cb8 <func_80B995A4+0x1b4>
 bac:	a60a01a4 	sh	t2,420(s0)
 bb0:	0c000000 	jal	0 <func_80B98AA0>
 bb4:	00000000 	nop
 bb8:	3c014222 	lui	at,0x4222
 bbc:	44815000 	mtc1	at,$f10
 bc0:	00000000 	nop
 bc4:	460a0402 	mul.s	$f16,$f0,$f10
 bc8:	4600848d 	trunc.w.s	$f18,$f16
 bcc:	440e9000 	mfc1	t6,$f18
 bd0:	00000000 	nop
 bd4:	25cf0004 	addiu	t7,t6,4
 bd8:	10000037 	b	cb8 <func_80B995A4+0x1b4>
 bdc:	a60f01a4 	sh	t7,420(s0)
 be0:	c6040090 	lwc1	$f4,144(s0)
 be4:	44813000 	mtc1	at,$f6
 be8:	24180001 	li	t8,1
 bec:	a61801a6 	sh	t8,422(s0)
 bf0:	4606203c 	c.lt.s	$f4,$f6
 bf4:	00000000 	nop
 bf8:	45000019 	bc1f	c60 <func_80B995A4+0x15c>
 bfc:	00000000 	nop
 c00:	0c000000 	jal	0 <func_80B98AA0>
 c04:	00000000 	nop
 c08:	3c014128 	lui	at,0x4128
 c0c:	44814000 	mtc1	at,$f8
 c10:	00000000 	nop
 c14:	46080282 	mul.s	$f10,$f0,$f8
 c18:	4600540d 	trunc.w.s	$f16,$f10
 c1c:	440a8000 	mfc1	t2,$f16
 c20:	00000000 	nop
 c24:	254b0004 	addiu	t3,t2,4
 c28:	0c000000 	jal	0 <func_80B98AA0>
 c2c:	a60b01a4 	sh	t3,420(s0)
 c30:	3c010000 	lui	at,0x0
 c34:	c4320000 	lwc1	$f18,0(at)
 c38:	3c010000 	lui	at,0x0
 c3c:	c4260000 	lwc1	$f6,0(at)
 c40:	46120102 	mul.s	$f4,$f0,$f18
 c44:	02002025 	move	a0,s0
 c48:	46062200 	add.s	$f8,$f4,$f6
 c4c:	44054000 	mfc1	a1,$f8
 c50:	0c000000 	jal	0 <func_80B98AA0>
 c54:	00000000 	nop
 c58:	10000018 	b	cbc <func_80B995A4+0x1b8>
 c5c:	3c0142f0 	lui	at,0x42f0
 c60:	0c000000 	jal	0 <func_80B98AA0>
 c64:	00000000 	nop
 c68:	3c014128 	lui	at,0x4128
 c6c:	44815000 	mtc1	at,$f10
 c70:	00000000 	nop
 c74:	460a0402 	mul.s	$f16,$f0,$f10
 c78:	4600848d 	trunc.w.s	$f18,$f16
 c7c:	440f9000 	mfc1	t7,$f18
 c80:	00000000 	nop
 c84:	25f80004 	addiu	t8,t7,4
 c88:	0c000000 	jal	0 <func_80B98AA0>
 c8c:	a61801a4 	sh	t8,420(s0)
 c90:	3c010000 	lui	at,0x0
 c94:	c4240000 	lwc1	$f4,0(at)
 c98:	3c010000 	lui	at,0x0
 c9c:	c4280000 	lwc1	$f8,0(at)
 ca0:	46040182 	mul.s	$f6,$f0,$f4
 ca4:	02002025 	move	a0,s0
 ca8:	46083280 	add.s	$f10,$f6,$f8
 cac:	44055000 	mfc1	a1,$f10
 cb0:	0c000000 	jal	0 <func_80B98AA0>
 cb4:	00000000 	nop
 cb8:	3c0142f0 	lui	at,0x42f0
 cbc:	44819000 	mtc1	at,$f18
 cc0:	c6100090 	lwc1	$f16,144(s0)
 cc4:	24050001 	li	a1,1
 cc8:	02002025 	move	a0,s0
 ccc:	4612803c 	c.lt.s	$f16,$f18
 cd0:	00000000 	nop
 cd4:	45020006 	bc1fl	cf0 <func_80B995A4+0x1ec>
 cd8:	a60001a8 	sh	zero,424(s0)
 cdc:	861901a8 	lh	t9,424(s0)
 ce0:	27280001 	addiu	t0,t9,1
 ce4:	10000002 	b	cf0 <func_80B995A4+0x1ec>
 ce8:	a60801a8 	sh	t0,424(s0)
 cec:	a60001a8 	sh	zero,424(s0)
 cf0:	860901a8 	lh	t1,424(s0)
 cf4:	29210050 	slti	at,t1,80
 cf8:	14200005 	bnez	at,d10 <func_80B995A4+0x20c>
 cfc:	00000000 	nop
 d00:	0c000000 	jal	0 <func_80B98AA0>
 d04:	02002025 	move	a0,s0
 d08:	10000004 	b	d1c <func_80B995A4+0x218>
 d0c:	8fbf001c 	lw	ra,28(sp)
 d10:	0c000000 	jal	0 <func_80B98AA0>
 d14:	00002825 	move	a1,zero
 d18:	8fbf001c 	lw	ra,28(sp)
 d1c:	8fb00018 	lw	s0,24(sp)
 d20:	27bd0020 	addiu	sp,sp,32
 d24:	03e00008 	jr	ra
 d28:	00000000 	nop

00000d2c <func_80B997CC>:
 d2c:	27bdffe0 	addiu	sp,sp,-32
 d30:	afbf001c 	sw	ra,28(sp)
 d34:	afb00018 	sw	s0,24(sp)
 d38:	afa50024 	sw	a1,36(sp)
 d3c:	848e01a4 	lh	t6,420(a0)
 d40:	00808025 	move	s0,a0
 d44:	1dc00041 	bgtz	t6,e4c <func_80B997CC+0x120>
 d48:	00000000 	nop
 d4c:	848f01a6 	lh	t7,422(a0)
 d50:	24180001 	li	t8,1
 d54:	11e00029 	beqz	t7,dfc <func_80B997CC+0xd0>
 d58:	00000000 	nop
 d5c:	0c000000 	jal	0 <func_80B98AA0>
 d60:	a48001a6 	sh	zero,422(a0)
 d64:	3c010000 	lui	at,0x0
 d68:	c4240000 	lwc1	$f4,0(at)
 d6c:	02002025 	move	a0,s0
 d70:	46040182 	mul.s	$f6,$f0,$f4
 d74:	44053000 	mfc1	a1,$f6
 d78:	0c000000 	jal	0 <func_80B98AA0>
 d7c:	00000000 	nop
 d80:	3c014270 	lui	at,0x4270
 d84:	44815000 	mtc1	at,$f10
 d88:	c6080090 	lwc1	$f8,144(s0)
 d8c:	460a403c 	c.lt.s	$f8,$f10
 d90:	00000000 	nop
 d94:	4500000d 	bc1f	dcc <func_80B997CC+0xa0>
 d98:	00000000 	nop
 d9c:	0c000000 	jal	0 <func_80B98AA0>
 da0:	00000000 	nop
 da4:	3c0140b0 	lui	at,0x40b0
 da8:	44818000 	mtc1	at,$f16
 dac:	00000000 	nop
 db0:	46100482 	mul.s	$f18,$f0,$f16
 db4:	4600910d 	trunc.w.s	$f4,$f18
 db8:	44092000 	mfc1	t1,$f4
 dbc:	00000000 	nop
 dc0:	252a0004 	addiu	t2,t1,4
 dc4:	10000021 	b	e4c <func_80B997CC+0x120>
 dc8:	a60a01a4 	sh	t2,420(s0)
 dcc:	0c000000 	jal	0 <func_80B98AA0>
 dd0:	00000000 	nop
 dd4:	3c014222 	lui	at,0x4222
 dd8:	44813000 	mtc1	at,$f6
 ddc:	00000000 	nop
 de0:	46060202 	mul.s	$f8,$f0,$f6
 de4:	4600428d 	trunc.w.s	$f10,$f8
 de8:	440e5000 	mfc1	t6,$f10
 dec:	00000000 	nop
 df0:	25cf0004 	addiu	t7,t6,4
 df4:	10000015 	b	e4c <func_80B997CC+0x120>
 df8:	a60f01a4 	sh	t7,420(s0)
 dfc:	0c000000 	jal	0 <func_80B98AA0>
 e00:	a61801a6 	sh	t8,422(s0)
 e04:	3c010000 	lui	at,0x0
 e08:	c4300000 	lwc1	$f16,0(at)
 e0c:	02002025 	move	a0,s0
 e10:	46100482 	mul.s	$f18,$f0,$f16
 e14:	44059000 	mfc1	a1,$f18
 e18:	0c000000 	jal	0 <func_80B98AA0>
 e1c:	00000000 	nop
 e20:	0c000000 	jal	0 <func_80B98AA0>
 e24:	00000000 	nop
 e28:	3c014128 	lui	at,0x4128
 e2c:	44812000 	mtc1	at,$f4
 e30:	00000000 	nop
 e34:	46040182 	mul.s	$f6,$f0,$f4
 e38:	4600320d 	trunc.w.s	$f8,$f6
 e3c:	440a4000 	mfc1	t2,$f8
 e40:	00000000 	nop
 e44:	254b0004 	addiu	t3,t2,4
 e48:	a60b01a4 	sh	t3,420(s0)
 e4c:	0c000000 	jal	0 <func_80B98AA0>
 e50:	02002025 	move	a0,s0
 e54:	18400011 	blez	v0,e9c <func_80B997CC+0x170>
 e58:	02002025 	move	a0,s0
 e5c:	00026080 	sll	t4,v0,0x2
 e60:	01903021 	addu	a2,t4,s0
 e64:	8c820158 	lw	v0,344(a0)
 e68:	24840004 	addiu	a0,a0,4
 e6c:	0086082b 	sltu	at,a0,a2
 e70:	10400008 	beqz	v0,e94 <func_80B997CC+0x168>
 e74:	00000000 	nop
 e78:	8c43011c 	lw	v1,284(v0)
 e7c:	10600005 	beqz	v1,e94 <func_80B997CC+0x168>
 e80:	00000000 	nop
 e84:	8c6d0130 	lw	t5,304(v1)
 e88:	15a00002 	bnez	t5,e94 <func_80B997CC+0x168>
 e8c:	00000000 	nop
 e90:	ac40011c 	sw	zero,284(v0)
 e94:	5420fff4 	bnezl	at,e68 <func_80B997CC+0x13c>
 e98:	8c820158 	lw	v0,344(a0)
 e9c:	8fbf001c 	lw	ra,28(sp)
 ea0:	8fb00018 	lw	s0,24(sp)
 ea4:	27bd0020 	addiu	sp,sp,32
 ea8:	03e00008 	jr	ra
 eac:	00000000 	nop

00000eb0 <func_80B99950>:
 eb0:	27bdffe8 	addiu	sp,sp,-24
 eb4:	afbf0014 	sw	ra,20(sp)
 eb8:	afa40018 	sw	a0,24(sp)
 ebc:	0c000000 	jal	0 <func_80B98AA0>
 ec0:	afa5001c 	sw	a1,28(sp)
 ec4:	8fa40018 	lw	a0,24(sp)
 ec8:	3c010000 	lui	at,0x0
 ecc:	3c0e0000 	lui	t6,0x0
 ed0:	84820156 	lh	v0,342(a0)
 ed4:	c48000ec 	lwc1	$f0,236(a0)
 ed8:	3c030000 	lui	v1,0x0
 edc:	00021080 	sll	v0,v0,0x2
 ee0:	00220821 	addu	at,at,v0
 ee4:	c4240000 	lwc1	$f4,0(at)
 ee8:	3c014220 	lui	at,0x4220
 eec:	44813000 	mtc1	at,$f6
 ef0:	46000005 	abs.s	$f0,$f0
 ef4:	8fa5001c 	lw	a1,28(sp)
 ef8:	46062200 	add.s	$f8,$f4,$f6
 efc:	25ce0000 	addiu	t6,t6,0
 f00:	00621821 	addu	v1,v1,v0
 f04:	4600403e 	c.le.s	$f8,$f0
 f08:	00000000 	nop
 f0c:	45000009 	bc1f	f34 <func_80B99950+0x84>
 f10:	00000000 	nop
 f14:	8c8f0004 	lw	t7,4(a0)
 f18:	2401ffef 	li	at,-17
 f1c:	ac8e014c 	sw	t6,332(a0)
 f20:	01e1c024 	and	t8,t7,at
 f24:	0c000000 	jal	0 <func_80B98AA0>
 f28:	ac980004 	sw	t8,4(a0)
 f2c:	10000007 	b	f4c <func_80B99950+0x9c>
 f30:	8fbf0014 	lw	ra,20(sp)
 f34:	8c630000 	lw	v1,0(v1)
 f38:	50600004 	beqzl	v1,f4c <func_80B99950+0x9c>
 f3c:	8fbf0014 	lw	ra,20(sp)
 f40:	0060f809 	jalr	v1
 f44:	00000000 	nop
 f48:	8fbf0014 	lw	ra,20(sp)
 f4c:	27bd0018 	addiu	sp,sp,24
 f50:	03e00008 	jr	ra
 f54:	00000000 	nop

00000f58 <ObjMure_Update>:
 f58:	27bdffe8 	addiu	sp,sp,-24
 f5c:	afbf0014 	sw	ra,20(sp)
 f60:	848201a4 	lh	v0,420(a0)
 f64:	18400002 	blez	v0,f70 <ObjMure_Update+0x18>
 f68:	244effff 	addiu	t6,v0,-1
 f6c:	a48e01a4 	sh	t6,420(a0)
 f70:	8c99014c 	lw	t9,332(a0)
 f74:	0320f809 	jalr	t9
 f78:	00000000 	nop
 f7c:	8fbf0014 	lw	ra,20(sp)
 f80:	27bd0018 	addiu	sp,sp,24
 f84:	03e00008 	jr	ra
 f88:	00000000 	nop
 f8c:	00000000 	nop
