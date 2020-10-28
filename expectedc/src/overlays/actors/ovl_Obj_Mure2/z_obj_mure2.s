
build/src/overlays/actors/ovl_Obj_Mure2/z_obj_mure2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B99F40>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afb50034 	sw	s5,52(sp)
   8:	afb40030 	sw	s4,48(sp)
   c:	00a0a025 	move	s4,a1
  10:	afbf003c 	sw	ra,60(sp)
  14:	afb20028 	sw	s2,40(sp)
  18:	24b50024 	addiu	s5,a1,36
  1c:	00809025 	move	s2,a0
  20:	afb60038 	sw	s6,56(sp)
  24:	afb3002c 	sw	s3,44(sp)
  28:	afb10024 	sw	s1,36(sp)
  2c:	afb00020 	sw	s0,32(sp)
  30:	f7b40018 	sdc1	$f20,24(sp)
  34:	0c000000 	jal	0 <func_80B99F40>
  38:	02a02825 	move	a1,s5
  3c:	868e001c 	lh	t6,28(s4)
  40:	3c160000 	lui	s6,0x0
  44:	26d60000 	addiu	s6,s6,0
  48:	31cf0003 	andi	t7,t6,0x3
  4c:	000fc040 	sll	t8,t7,0x1
  50:	02d8c821 	addu	t9,s6,t8
  54:	87280000 	lh	t0,0(t9)
  58:	24130001 	li	s3,1
  5c:	2650000c 	addiu	s0,s2,12
  60:	29010002 	slti	at,t0,2
  64:	14200021 	bnez	at,ec <func_80B99F40+0xec>
  68:	3c0142a0 	lui	at,0x42a0
  6c:	4481a000 	mtc1	at,$f20
  70:	00008825 	move	s1,zero
  74:	02002025 	move	a0,s0
  78:	0c000000 	jal	0 <func_80B99F40>
  7c:	02a02825 	move	a1,s5
  80:	00119400 	sll	s2,s1,0x10
  84:	00129403 	sra	s2,s2,0x10
  88:	00122400 	sll	a0,s2,0x10
  8c:	0c000000 	jal	0 <func_80B99F40>
  90:	00042403 	sra	a0,a0,0x10
  94:	4600a182 	mul.s	$f6,$f20,$f0
  98:	c6040000 	lwc1	$f4,0(s0)
  9c:	00122400 	sll	a0,s2,0x10
  a0:	00042403 	sra	a0,a0,0x10
  a4:	46062200 	add.s	$f8,$f4,$f6
  a8:	0c000000 	jal	0 <func_80B99F40>
  ac:	e6080000 	swc1	$f8,0(s0)
  b0:	4600a402 	mul.s	$f16,$f20,$f0
  b4:	c60a0008 	lwc1	$f10,8(s0)
  b8:	26730001 	addiu	s3,s3,1
  bc:	2610000c 	addiu	s0,s0,12
  c0:	26312000 	addiu	s1,s1,8192
  c4:	46105480 	add.s	$f18,$f10,$f16
  c8:	e612fffc 	swc1	$f18,-4(s0)
  cc:	8689001c 	lh	t1,28(s4)
  d0:	312a0003 	andi	t2,t1,0x3
  d4:	000a5840 	sll	t3,t2,0x1
  d8:	02cb6021 	addu	t4,s6,t3
  dc:	858d0000 	lh	t5,0(t4)
  e0:	026d082a 	slt	at,s3,t5
  e4:	5420ffe4 	bnezl	at,78 <func_80B99F40+0x78>
  e8:	02002025 	move	a0,s0
  ec:	8fbf003c 	lw	ra,60(sp)
  f0:	d7b40018 	ldc1	$f20,24(sp)
  f4:	8fb00020 	lw	s0,32(sp)
  f8:	8fb10024 	lw	s1,36(sp)
  fc:	8fb20028 	lw	s2,40(sp)
 100:	8fb3002c 	lw	s3,44(sp)
 104:	8fb40030 	lw	s4,48(sp)
 108:	8fb50034 	lw	s5,52(sp)
 10c:	8fb60038 	lw	s6,56(sp)
 110:	03e00008 	jr	ra
 114:	27bd0040 	addiu	sp,sp,64

00000118 <func_80B9A058>:
 118:	27bdffd0 	addiu	sp,sp,-48
 11c:	afbf002c 	sw	ra,44(sp)
 120:	afb50028 	sw	s5,40(sp)
 124:	afb40024 	sw	s4,36(sp)
 128:	afb30020 	sw	s3,32(sp)
 12c:	afb2001c 	sw	s2,28(sp)
 130:	afb10018 	sw	s1,24(sp)
 134:	afb00014 	sw	s0,20(sp)
 138:	84ae001c 	lh	t6,28(a1)
 13c:	3c150000 	lui	s5,0x0
 140:	26b50000 	addiu	s5,s5,0
 144:	31cf0003 	andi	t7,t6,0x3
 148:	000fc040 	sll	t8,t7,0x1
 14c:	02b8c821 	addu	t9,s5,t8
 150:	87280000 	lh	t0,0(t9)
 154:	00a0a025 	move	s4,a1
 158:	00808025 	move	s0,a0
 15c:	19000025 	blez	t0,1f4 <func_80B9A058+0xdc>
 160:	00009025 	move	s2,zero
 164:	3c110000 	lui	s1,0x0
 168:	26310000 	addiu	s1,s1,0
 16c:	24b30024 	addiu	s3,a1,36
 170:	02002025 	move	a0,s0
 174:	0c000000 	jal	0 <func_80B99F40>
 178:	02602825 	move	a1,s3
 17c:	0c000000 	jal	0 <func_80B99F40>
 180:	86240002 	lh	a0,2(s1)
 184:	86290000 	lh	t1,0(s1)
 188:	c6040000 	lwc1	$f4,0(s0)
 18c:	44893000 	mtc1	t1,$f6
 190:	00000000 	nop
 194:	46803220 	cvt.s.w	$f8,$f6
 198:	46004282 	mul.s	$f10,$f8,$f0
 19c:	460a2400 	add.s	$f16,$f4,$f10
 1a0:	e6100000 	swc1	$f16,0(s0)
 1a4:	0c000000 	jal	0 <func_80B99F40>
 1a8:	86240002 	lh	a0,2(s1)
 1ac:	862a0000 	lh	t2,0(s1)
 1b0:	c6120008 	lwc1	$f18,8(s0)
 1b4:	26520001 	addiu	s2,s2,1
 1b8:	448a3000 	mtc1	t2,$f6
 1bc:	2610000c 	addiu	s0,s0,12
 1c0:	26310004 	addiu	s1,s1,4
 1c4:	46803220 	cvt.s.w	$f8,$f6
 1c8:	46004102 	mul.s	$f4,$f8,$f0
 1cc:	46049281 	sub.s	$f10,$f18,$f4
 1d0:	e60afffc 	swc1	$f10,-4(s0)
 1d4:	868b001c 	lh	t3,28(s4)
 1d8:	316c0003 	andi	t4,t3,0x3
 1dc:	000c6840 	sll	t5,t4,0x1
 1e0:	02ad7021 	addu	t6,s5,t5
 1e4:	85cf0000 	lh	t7,0(t6)
 1e8:	024f082a 	slt	at,s2,t7
 1ec:	5420ffe1 	bnezl	at,174 <func_80B9A058+0x5c>
 1f0:	02002025 	move	a0,s0
 1f4:	8fbf002c 	lw	ra,44(sp)
 1f8:	8fb00014 	lw	s0,20(sp)
 1fc:	8fb10018 	lw	s1,24(sp)
 200:	8fb2001c 	lw	s2,28(sp)
 204:	8fb30020 	lw	s3,32(sp)
 208:	8fb40024 	lw	s4,36(sp)
 20c:	8fb50028 	lw	s5,40(sp)
 210:	03e00008 	jr	ra
 214:	27bd0030 	addiu	sp,sp,48

00000218 <func_80B9A158>:
 218:	27bdffc0 	addiu	sp,sp,-64
 21c:	afbf003c 	sw	ra,60(sp)
 220:	afb60038 	sw	s6,56(sp)
 224:	afb50034 	sw	s5,52(sp)
 228:	afb40030 	sw	s4,48(sp)
 22c:	afb3002c 	sw	s3,44(sp)
 230:	afb20028 	sw	s2,40(sp)
 234:	afb10024 	sw	s1,36(sp)
 238:	afb00020 	sw	s0,32(sp)
 23c:	f7b40018 	sdc1	$f20,24(sp)
 240:	84ae001c 	lh	t6,28(a1)
 244:	3c160000 	lui	s6,0x0
 248:	26d60000 	addiu	s6,s6,0
 24c:	31cf0003 	andi	t7,t6,0x3
 250:	000fc040 	sll	t8,t7,0x1
 254:	02d8c821 	addu	t9,s6,t8
 258:	87280000 	lh	t0,0(t9)
 25c:	00a0a825 	move	s5,a1
 260:	00808025 	move	s0,a0
 264:	19000023 	blez	t0,2f4 <func_80B9A158+0xdc>
 268:	00009825 	move	s3,zero
 26c:	3c0142a0 	lui	at,0x42a0
 270:	4481a000 	mtc1	at,$f20
 274:	24b40024 	addiu	s4,a1,36
 278:	00008825 	move	s1,zero
 27c:	02002025 	move	a0,s0
 280:	0c000000 	jal	0 <func_80B99F40>
 284:	02802825 	move	a1,s4
 288:	00119400 	sll	s2,s1,0x10
 28c:	00129403 	sra	s2,s2,0x10
 290:	00122400 	sll	a0,s2,0x10
 294:	0c000000 	jal	0 <func_80B99F40>
 298:	00042403 	sra	a0,a0,0x10
 29c:	4600a182 	mul.s	$f6,$f20,$f0
 2a0:	c6040000 	lwc1	$f4,0(s0)
 2a4:	00122400 	sll	a0,s2,0x10
 2a8:	00042403 	sra	a0,a0,0x10
 2ac:	46062200 	add.s	$f8,$f4,$f6
 2b0:	0c000000 	jal	0 <func_80B99F40>
 2b4:	e6080000 	swc1	$f8,0(s0)
 2b8:	4600a402 	mul.s	$f16,$f20,$f0
 2bc:	c60a0008 	lwc1	$f10,8(s0)
 2c0:	26730001 	addiu	s3,s3,1
 2c4:	2610000c 	addiu	s0,s0,12
 2c8:	26312000 	addiu	s1,s1,8192
 2cc:	46105480 	add.s	$f18,$f10,$f16
 2d0:	e612fffc 	swc1	$f18,-4(s0)
 2d4:	86a9001c 	lh	t1,28(s5)
 2d8:	312a0003 	andi	t2,t1,0x3
 2dc:	000a5840 	sll	t3,t2,0x1
 2e0:	02cb6021 	addu	t4,s6,t3
 2e4:	858d0000 	lh	t5,0(t4)
 2e8:	026d082a 	slt	at,s3,t5
 2ec:	5420ffe4 	bnezl	at,280 <func_80B9A158+0x68>
 2f0:	02002025 	move	a0,s0
 2f4:	8fbf003c 	lw	ra,60(sp)
 2f8:	d7b40018 	ldc1	$f20,24(sp)
 2fc:	8fb00020 	lw	s0,32(sp)
 300:	8fb10024 	lw	s1,36(sp)
 304:	8fb20028 	lw	s2,40(sp)
 308:	8fb3002c 	lw	s3,44(sp)
 30c:	8fb40030 	lw	s4,48(sp)
 310:	8fb50034 	lw	s5,52(sp)
 314:	8fb60038 	lw	s6,56(sp)
 318:	03e00008 	jr	ra
 31c:	27bd0040 	addiu	sp,sp,64

00000320 <func_80B9A260>:
 320:	84a3001c 	lh	v1,28(a1)
 324:	3c180000 	lui	t8,0x0
 328:	00031203 	sra	v0,v1,0x8
 32c:	3042000f 	andi	v0,v0,0xf
 330:	00021400 	sll	v0,v0,0x10
 334:	00021403 	sra	v0,v0,0x10
 338:	2841000d 	slti	at,v0,13
 33c:	14200002 	bnez	at,348 <func_80B9A260+0x28>
 340:	306e0003 	andi	t6,v1,0x3
 344:	00001025 	move	v0,zero
 348:	000e7840 	sll	t7,t6,0x1
 34c:	030fc021 	addu	t8,t8,t7
 350:	87180000 	lh	t8,0(t8)
 354:	00024a00 	sll	t1,v0,0x8
 358:	3319f0ff 	andi	t9,t8,0xf0ff
 35c:	a4990000 	sh	t9,0(a0)
 360:	84880000 	lh	t0,0(a0)
 364:	01095025 	or	t2,t0,t1
 368:	03e00008 	jr	ra
 36c:	a48a0000 	sh	t2,0(a0)

00000370 <func_80B9A2B0>:
 370:	27bdfef8 	addiu	sp,sp,-264
 374:	afbf0054 	sw	ra,84(sp)
 378:	afbe0050 	sw	s8,80(sp)
 37c:	afb7004c 	sw	s7,76(sp)
 380:	afb60048 	sw	s6,72(sp)
 384:	afb50044 	sw	s5,68(sp)
 388:	afb40040 	sw	s4,64(sp)
 38c:	afb3003c 	sw	s3,60(sp)
 390:	afb20038 	sw	s2,56(sp)
 394:	afb10034 	sw	s1,52(sp)
 398:	afb00030 	sw	s0,48(sp)
 39c:	8492001c 	lh	s2,28(a0)
 3a0:	3c190000 	lui	t9,0x0
 3a4:	00808025 	move	s0,a0
 3a8:	32520003 	andi	s2,s2,0x3
 3ac:	00127080 	sll	t6,s2,0x2
 3b0:	032ec821 	addu	t9,t9,t6
 3b4:	8f390000 	lw	t9,0(t9)
 3b8:	00a0a025 	move	s4,a1
 3bc:	02002825 	move	a1,s0
 3c0:	0320f809 	jalr	t9
 3c4:	27a40070 	addiu	a0,sp,112
 3c8:	27a4006e 	addiu	a0,sp,110
 3cc:	0c000000 	jal	0 <func_80B99F40>
 3d0:	02002825 	move	a1,s0
 3d4:	3c080000 	lui	t0,0x0
 3d8:	25080000 	addiu	t0,t0,0
 3dc:	00127840 	sll	t7,s2,0x1
 3e0:	01e89821 	addu	s3,t7,t0
 3e4:	86690000 	lh	t1,0(s3)
 3e8:	afaf0068 	sw	t7,104(sp)
 3ec:	02009025 	move	s2,s0
 3f0:	19200035 	blez	t1,4c8 <func_80B9A2B0+0x158>
 3f4:	00008825 	move	s1,zero
 3f8:	3c170000 	lui	s7,0x0
 3fc:	3c160000 	lui	s6,0x0
 400:	3c150000 	lui	s5,0x0
 404:	26b50000 	addiu	s5,s5,0
 408:	26d60000 	addiu	s6,s6,0
 40c:	26f70000 	addiu	s7,s7,0
 410:	241e000c 	li	s8,12
 414:	8e4a0150 	lw	t2,336(s2)
 418:	02a02025 	move	a0,s5
 41c:	02c02825 	move	a1,s6
 420:	11400005 	beqz	t2,438 <func_80B9A2B0+0xc8>
 424:	2406010d 	li	a2,269
 428:	0c000000 	jal	0 <func_80B99F40>
 42c:	8607001c 	lh	a3,28(s0)
 430:	10000021 	b	4b8 <func_80B9A2B0+0x148>
 434:	86620000 	lh	v0,0(s3)
 438:	960b0180 	lhu	t3,384(s0)
 43c:	022b6007 	srav	t4,t3,s1
 440:	318d0001 	andi	t5,t4,0x1
 444:	55a0001c 	bnezl	t5,4b8 <func_80B9A2B0+0x148>
 448:	86620000 	lh	v0,0(s3)
 44c:	023e0019 	multu	s1,s8
 450:	8fae0068 	lw	t6,104(sp)
 454:	27b80070 	addiu	t8,sp,112
 458:	87aa006e 	lh	t2,110(sp)
 45c:	02eec821 	addu	t9,s7,t6
 460:	87260000 	lh	a2,0(t9)
 464:	26841c24 	addiu	a0,s4,7204
 468:	02802825 	move	a1,s4
 46c:	00007812 	mflo	t7
 470:	01f81021 	addu	v0,t7,t8
 474:	c4440004 	lwc1	$f4,4(v0)
 478:	8c470000 	lw	a3,0(v0)
 47c:	e7a40010 	swc1	$f4,16(sp)
 480:	c4460008 	lwc1	$f6,8(v0)
 484:	e7a60014 	swc1	$f6,20(sp)
 488:	86080030 	lh	t0,48(s0)
 48c:	afa0001c 	sw	zero,28(sp)
 490:	afa80018 	sw	t0,24(sp)
 494:	86090034 	lh	t1,52(s0)
 498:	afaa0024 	sw	t2,36(sp)
 49c:	0c000000 	jal	0 <func_80B99F40>
 4a0:	afa90020 	sw	t1,32(sp)
 4a4:	10400003 	beqz	v0,4b4 <func_80B9A2B0+0x144>
 4a8:	ae420150 	sw	v0,336(s2)
 4ac:	820b0003 	lb	t3,3(s0)
 4b0:	a04b0003 	sb	t3,3(v0)
 4b4:	86620000 	lh	v0,0(s3)
 4b8:	26310001 	addiu	s1,s1,1
 4bc:	0222082a 	slt	at,s1,v0
 4c0:	1420ffd4 	bnez	at,414 <func_80B9A2B0+0xa4>
 4c4:	26520004 	addiu	s2,s2,4
 4c8:	8fbf0054 	lw	ra,84(sp)
 4cc:	8fb00030 	lw	s0,48(sp)
 4d0:	8fb10034 	lw	s1,52(sp)
 4d4:	8fb20038 	lw	s2,56(sp)
 4d8:	8fb3003c 	lw	s3,60(sp)
 4dc:	8fb40040 	lw	s4,64(sp)
 4e0:	8fb50044 	lw	s5,68(sp)
 4e4:	8fb60048 	lw	s6,72(sp)
 4e8:	8fb7004c 	lw	s7,76(sp)
 4ec:	8fbe0050 	lw	s8,80(sp)
 4f0:	03e00008 	jr	ra
 4f4:	27bd0108 	addiu	sp,sp,264

000004f8 <func_80B9A438>:
 4f8:	27bdffd8 	addiu	sp,sp,-40
 4fc:	afbf0024 	sw	ra,36(sp)
 500:	afb30020 	sw	s3,32(sp)
 504:	afb2001c 	sw	s2,28(sp)
 508:	afb10018 	sw	s1,24(sp)
 50c:	afb00014 	sw	s0,20(sp)
 510:	848e001c 	lh	t6,28(a0)
 514:	3c020000 	lui	v0,0x0
 518:	00808825 	move	s1,a0
 51c:	31cf0003 	andi	t7,t6,0x3
 520:	000fc040 	sll	t8,t7,0x1
 524:	00581021 	addu	v0,v0,t8
 528:	84420000 	lh	v0,0(v0)
 52c:	00a09825 	move	s3,a1
 530:	00808025 	move	s0,a0
 534:	18400028 	blez	v0,5d8 <func_80B9A438+0xe0>
 538:	00009025 	move	s2,zero
 53c:	96390180 	lhu	t9,384(s1)
 540:	02594007 	srav	t0,t9,s2
 544:	31090001 	andi	t1,t0,0x1
 548:	55200019 	bnezl	t1,5b0 <func_80B9A438+0xb8>
 54c:	ae000150 	sw	zero,336(s0)
 550:	8e040150 	lw	a0,336(s0)
 554:	5080001d 	beqzl	a0,5cc <func_80B9A438+0xd4>
 558:	26520001 	addiu	s2,s2,1
 55c:	0c000000 	jal	0 <func_80B99F40>
 560:	02602825 	move	a1,s3
 564:	10400007 	beqz	v0,584 <func_80B9A438+0x8c>
 568:	00000000 	nop
 56c:	962a0180 	lhu	t2,384(s1)
 570:	240b0001 	li	t3,1
 574:	024b6004 	sllv	t4,t3,s2
 578:	014c6825 	or	t5,t2,t4
 57c:	10000003 	b	58c <func_80B9A438+0x94>
 580:	a62d0180 	sh	t5,384(s1)
 584:	0c000000 	jal	0 <func_80B99F40>
 588:	8e040150 	lw	a0,336(s0)
 58c:	ae000150 	sw	zero,336(s0)
 590:	862e001c 	lh	t6,28(s1)
 594:	3c020000 	lui	v0,0x0
 598:	31cf0003 	andi	t7,t6,0x3
 59c:	000fc040 	sll	t8,t7,0x1
 5a0:	00581021 	addu	v0,v0,t8
 5a4:	10000008 	b	5c8 <func_80B9A438+0xd0>
 5a8:	84420000 	lh	v0,0(v0)
 5ac:	ae000150 	sw	zero,336(s0)
 5b0:	8639001c 	lh	t9,28(s1)
 5b4:	3c020000 	lui	v0,0x0
 5b8:	33280003 	andi	t0,t9,0x3
 5bc:	00084840 	sll	t1,t0,0x1
 5c0:	00491021 	addu	v0,v0,t1
 5c4:	84420000 	lh	v0,0(v0)
 5c8:	26520001 	addiu	s2,s2,1
 5cc:	0242082a 	slt	at,s2,v0
 5d0:	1420ffda 	bnez	at,53c <func_80B9A438+0x44>
 5d4:	26100004 	addiu	s0,s0,4
 5d8:	8fbf0024 	lw	ra,36(sp)
 5dc:	8fb00014 	lw	s0,20(sp)
 5e0:	8fb10018 	lw	s1,24(sp)
 5e4:	8fb2001c 	lw	s2,28(sp)
 5e8:	8fb30020 	lw	s3,32(sp)
 5ec:	03e00008 	jr	ra
 5f0:	27bd0028 	addiu	sp,sp,40

000005f4 <func_80B9A534>:
 5f4:	848e001c 	lh	t6,28(a0)
 5f8:	3c030000 	lui	v1,0x0
 5fc:	00001025 	move	v0,zero
 600:	31cf0003 	andi	t7,t6,0x3
 604:	000fc040 	sll	t8,t7,0x1
 608:	00781821 	addu	v1,v1,t8
 60c:	84630000 	lh	v1,0(v1)
 610:	00802825 	move	a1,a0
 614:	1860001a 	blez	v1,680 <func_80B9A534+0x8c>
 618:	00000000 	nop
 61c:	8ca60150 	lw	a2,336(a1)
 620:	50c00014 	beqzl	a2,674 <func_80B9A534+0x80>
 624:	24420001 	addiu	v0,v0,1
 628:	94870180 	lhu	a3,384(a0)
 62c:	0047c807 	srav	t9,a3,v0
 630:	33280001 	andi	t0,t9,0x1
 634:	5500000f 	bnezl	t0,674 <func_80B9A534+0x80>
 638:	24420001 	addiu	v0,v0,1
 63c:	8cc90130 	lw	t1,304(a2)
 640:	240a0001 	li	t2,1
 644:	004a5804 	sllv	t3,t2,v0
 648:	15200009 	bnez	t1,670 <func_80B9A534+0x7c>
 64c:	00eb6025 	or	t4,a3,t3
 650:	a48c0180 	sh	t4,384(a0)
 654:	aca00150 	sw	zero,336(a1)
 658:	848d001c 	lh	t5,28(a0)
 65c:	3c030000 	lui	v1,0x0
 660:	31ae0003 	andi	t6,t5,0x3
 664:	000e7840 	sll	t7,t6,0x1
 668:	006f1821 	addu	v1,v1,t7
 66c:	84630000 	lh	v1,0(v1)
 670:	24420001 	addiu	v0,v0,1
 674:	0043082a 	slt	at,v0,v1
 678:	1420ffe8 	bnez	at,61c <func_80B9A534+0x28>
 67c:	24a50004 	addiu	a1,a1,4
 680:	03e00008 	jr	ra
 684:	00000000 	nop

00000688 <ObjMure2_Init>:
 688:	27bdffe8 	addiu	sp,sp,-24
 68c:	afa5001c 	sw	a1,28(sp)
 690:	afbf0014 	sw	ra,20(sp)
 694:	3c050000 	lui	a1,0x0
 698:	24a50000 	addiu	a1,a1,0
 69c:	0c000000 	jal	0 <func_80B99F40>
 6a0:	afa40018 	sw	a0,24(sp)
 6a4:	8fae001c 	lw	t6,28(sp)
 6a8:	8fa40018 	lw	a0,24(sp)
 6ac:	3c014496 	lui	at,0x4496
 6b0:	91cf1d6c 	lbu	t7,7532(t6)
 6b4:	11e00006 	beqz	t7,6d0 <ObjMure2_Init+0x48>
 6b8:	00000000 	nop
 6bc:	c48400f4 	lwc1	$f4,244(a0)
 6c0:	44813000 	mtc1	at,$f6
 6c4:	00000000 	nop
 6c8:	46062200 	add.s	$f8,$f4,$f6
 6cc:	e48800f4 	swc1	$f8,244(a0)
 6d0:	0c000000 	jal	0 <func_80B99F40>
 6d4:	00000000 	nop
 6d8:	8fbf0014 	lw	ra,20(sp)
 6dc:	27bd0018 	addiu	sp,sp,24
 6e0:	03e00008 	jr	ra
 6e4:	00000000 	nop

000006e8 <func_80B9A628>:
 6e8:	3c0e0000 	lui	t6,0x0
 6ec:	25ce0000 	addiu	t6,t6,0
 6f0:	03e00008 	jr	ra
 6f4:	ac8e014c 	sw	t6,332(a0)

000006f8 <func_80B9A638>:
 6f8:	27bdffe8 	addiu	sp,sp,-24
 6fc:	afbf0014 	sw	ra,20(sp)
 700:	0c000000 	jal	0 <func_80B99F40>
 704:	afa5001c 	sw	a1,28(sp)
 708:	8fbf0014 	lw	ra,20(sp)
 70c:	27bd0018 	addiu	sp,sp,24
 710:	03e00008 	jr	ra
 714:	00000000 	nop

00000718 <func_80B9A658>:
 718:	3c0e0000 	lui	t6,0x0
 71c:	25ce0000 	addiu	t6,t6,0
 720:	03e00008 	jr	ra
 724:	ac8e014c 	sw	t6,332(a0)

00000728 <func_80B9A668>:
 728:	27bdffe8 	addiu	sp,sp,-24
 72c:	afbf0014 	sw	ra,20(sp)
 730:	afa5001c 	sw	a1,28(sp)
 734:	c48e00ec 	lwc1	$f14,236(a0)
 738:	c48c00e4 	lwc1	$f12,228(a0)
 73c:	0c000000 	jal	0 <func_80B99F40>
 740:	afa40018 	sw	a0,24(sp)
 744:	8fa40018 	lw	a0,24(sp)
 748:	3c010000 	lui	at,0x0
 74c:	848e001c 	lh	t6,28(a0)
 750:	c4860184 	lwc1	$f6,388(a0)
 754:	31cf0003 	andi	t7,t6,0x3
 758:	000fc080 	sll	t8,t7,0x2
 75c:	00380821 	addu	at,at,t8
 760:	c4240000 	lwc1	$f4,0(at)
 764:	46062202 	mul.s	$f8,$f4,$f6
 768:	4608003c 	c.lt.s	$f0,$f8
 76c:	00000000 	nop
 770:	4502000a 	bc1fl	79c <func_80B9A668+0x74>
 774:	8fbf0014 	lw	ra,20(sp)
 778:	8c990004 	lw	t9,4(a0)
 77c:	37280010 	ori	t0,t9,0x10
 780:	ac880004 	sw	t0,4(a0)
 784:	afa40018 	sw	a0,24(sp)
 788:	0c000000 	jal	0 <func_80B99F40>
 78c:	8fa5001c 	lw	a1,28(sp)
 790:	0c000000 	jal	0 <func_80B99F40>
 794:	8fa40018 	lw	a0,24(sp)
 798:	8fbf0014 	lw	ra,20(sp)
 79c:	27bd0018 	addiu	sp,sp,24
 7a0:	03e00008 	jr	ra
 7a4:	00000000 	nop

000007a8 <func_80B9A6E8>:
 7a8:	3c0e0000 	lui	t6,0x0
 7ac:	25ce0000 	addiu	t6,t6,0
 7b0:	03e00008 	jr	ra
 7b4:	ac8e014c 	sw	t6,332(a0)

000007b8 <func_80B9A6F8>:
 7b8:	27bdffe0 	addiu	sp,sp,-32
 7bc:	afbf001c 	sw	ra,28(sp)
 7c0:	afb00018 	sw	s0,24(sp)
 7c4:	00808025 	move	s0,a0
 7c8:	0c000000 	jal	0 <func_80B99F40>
 7cc:	afa50024 	sw	a1,36(sp)
 7d0:	c60c00e4 	lwc1	$f12,228(s0)
 7d4:	0c000000 	jal	0 <func_80B99F40>
 7d8:	c60e00ec 	lwc1	$f14,236(s0)
 7dc:	860e001c 	lh	t6,28(s0)
 7e0:	3c010000 	lui	at,0x0
 7e4:	c6060184 	lwc1	$f6,388(s0)
 7e8:	31cf0003 	andi	t7,t6,0x3
 7ec:	000fc080 	sll	t8,t7,0x2
 7f0:	00380821 	addu	at,at,t8
 7f4:	c4240000 	lwc1	$f4,0(at)
 7f8:	46062202 	mul.s	$f8,$f4,$f6
 7fc:	4600403e 	c.le.s	$f8,$f0
 800:	00000000 	nop
 804:	4502000b 	bc1fl	834 <func_80B9A6F8+0x7c>
 808:	8fbf001c 	lw	ra,28(sp)
 80c:	8e190004 	lw	t9,4(s0)
 810:	2401ffef 	li	at,-17
 814:	02002025 	move	a0,s0
 818:	03214024 	and	t0,t9,at
 81c:	ae080004 	sw	t0,4(s0)
 820:	0c000000 	jal	0 <func_80B99F40>
 824:	8fa50024 	lw	a1,36(sp)
 828:	0c000000 	jal	0 <func_80B99F40>
 82c:	02002025 	move	a0,s0
 830:	8fbf001c 	lw	ra,28(sp)
 834:	8fb00018 	lw	s0,24(sp)
 838:	27bd0020 	addiu	sp,sp,32
 83c:	03e00008 	jr	ra
 840:	00000000 	nop

00000844 <ObjMure2_Update>:
 844:	27bdffe8 	addiu	sp,sp,-24
 848:	afbf0014 	sw	ra,20(sp)
 84c:	90ae1d6c 	lbu	t6,7532(a1)
 850:	3c014080 	lui	at,0x4080
 854:	55c00006 	bnezl	t6,870 <ObjMure2_Update+0x2c>
 858:	44813000 	mtc1	at,$f6
 85c:	3c013f80 	lui	at,0x3f80
 860:	44812000 	mtc1	at,$f4
 864:	10000004 	b	878 <ObjMure2_Update+0x34>
 868:	e4840184 	swc1	$f4,388(a0)
 86c:	44813000 	mtc1	at,$f6
 870:	00000000 	nop
 874:	e4860184 	swc1	$f6,388(a0)
 878:	8c99014c 	lw	t9,332(a0)
 87c:	0320f809 	jalr	t9
 880:	00000000 	nop
 884:	8fbf0014 	lw	ra,20(sp)
 888:	27bd0018 	addiu	sp,sp,24
 88c:	03e00008 	jr	ra
 890:	00000000 	nop
	...
