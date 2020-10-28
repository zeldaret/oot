
build/src/overlays/actors/ovl_Obj_Lift/z_obj_lift.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B960D0>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <func_80B960D8>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb00020 	sw	s0,32(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	00808025 	move	s0,a0
  1c:	afa60040 	sw	a2,64(sp)
  20:	afa00030 	sw	zero,48(sp)
  24:	0c000000 	jal	0 <func_80B960D0>
  28:	00e02825 	move	a1,a3
  2c:	8fa40040 	lw	a0,64(sp)
  30:	0c000000 	jal	0 <func_80B960D0>
  34:	27a50030 	addiu	a1,sp,48
  38:	8fa4003c 	lw	a0,60(sp)
  3c:	02003025 	move	a2,s0
  40:	8fa70030 	lw	a3,48(sp)
  44:	0c000000 	jal	0 <func_80B960D0>
  48:	24850810 	addiu	a1,a0,2064
  4c:	24010032 	li	at,50
  50:	1441000a 	bne	v0,at,7c <func_80B960D8+0x74>
  54:	ae02014c 	sw	v0,332(s0)
  58:	860e001c 	lh	t6,28(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	3c050000 	lui	a1,0x0
  64:	86070000 	lh	a3,0(s0)
  68:	24a50000 	addiu	a1,a1,0
  6c:	24840000 	addiu	a0,a0,0
  70:	240600bc 	li	a2,188
  74:	0c000000 	jal	0 <func_80B960D0>
  78:	afae0010 	sw	t6,16(sp)
  7c:	8fbf0024 	lw	ra,36(sp)
  80:	8fb00020 	lw	s0,32(sp)
  84:	27bd0038 	addiu	sp,sp,56
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <func_80B96160>:
  90:	27bdff30 	addiu	sp,sp,-208
  94:	f7bc0068 	sdc1	$f28,104(sp)
  98:	3c013f00 	lui	at,0x3f00
  9c:	4481e000 	mtc1	at,$f28
  a0:	f7ba0060 	sdc1	$f26,96(sp)
  a4:	3c0140c0 	lui	at,0x40c0
  a8:	4481d000 	mtc1	at,$f26
  ac:	f7b80058 	sdc1	$f24,88(sp)
  b0:	3c014120 	lui	at,0x4120
  b4:	4481c000 	mtc1	at,$f24
  b8:	f7b60050 	sdc1	$f22,80(sp)
  bc:	3c014248 	lui	at,0x4248
  c0:	afb7008c 	sw	s7,140(sp)
  c4:	afb60088 	sw	s6,136(sp)
  c8:	afb00070 	sw	s0,112(sp)
  cc:	4481b000 	mtc1	at,$f22
  d0:	afbe0090 	sw	s8,144(sp)
  d4:	afb50084 	sw	s5,132(sp)
  d8:	afb40080 	sw	s4,128(sp)
  dc:	afb3007c 	sw	s3,124(sp)
  e0:	afb20078 	sw	s2,120(sp)
  e4:	f7b40048 	sdc1	$f20,72(sp)
  e8:	3c010000 	lui	at,0x0
  ec:	3c100000 	lui	s0,0x0
  f0:	3c160600 	lui	s6,0x600
  f4:	3c170000 	lui	s7,0x0
  f8:	00809025 	move	s2,a0
  fc:	00a0f025 	move	s8,a1
 100:	afbf0094 	sw	ra,148(sp)
 104:	afb10074 	sw	s1,116(sp)
 108:	26f70000 	addiu	s7,s7,0
 10c:	26d60140 	addiu	s6,s6,320
 110:	26100000 	addiu	s0,s0,0
 114:	c4340000 	lwc1	$f20,0(at)
 118:	24930024 	addiu	s3,a0,36
 11c:	27b400c4 	addiu	s4,sp,196
 120:	27b500b8 	addiu	s5,sp,184
 124:	860e0000 	lh	t6,0(s0)
 128:	c6460050 	lwc1	$f6,80(s2)
 12c:	c66a0000 	lwc1	$f10,0(s3)
 130:	448e2000 	mtc1	t6,$f4
 134:	860f0002 	lh	t7,2(s0)
 138:	46802020 	cvt.s.w	$f0,$f4
 13c:	448f2000 	mtc1	t7,$f4
 140:	46060202 	mul.s	$f8,$f0,$f6
 144:	468021a0 	cvt.s.w	$f6,$f4
 148:	460a4400 	add.s	$f16,$f8,$f10
 14c:	e7b000c4 	swc1	$f16,196(sp)
 150:	c6720004 	lwc1	$f18,4(s3)
 154:	e7b200c8 	swc1	$f18,200(sp)
 158:	c6480058 	lwc1	$f8,88(s2)
 15c:	c6700008 	lwc1	$f16,8(s3)
 160:	46083282 	mul.s	$f10,$f6,$f8
 164:	46105480 	add.s	$f18,$f10,$f16
 168:	e7b200cc 	swc1	$f18,204(sp)
 16c:	c6440050 	lwc1	$f4,80(s2)
 170:	46040182 	mul.s	$f6,$f0,$f4
 174:	00000000 	nop
 178:	46143202 	mul.s	$f8,$f6,$f20
 17c:	0c000000 	jal	0 <func_80B960D0>
 180:	e7a800b8 	swc1	$f8,184(sp)
 184:	46180282 	mul.s	$f10,$f0,$f24
 188:	86180002 	lh	t8,2(s0)
 18c:	44989000 	mtc1	t8,$f18
 190:	461a5400 	add.s	$f16,$f10,$f26
 194:	46809120 	cvt.s.w	$f4,$f18
 198:	e7b000bc 	swc1	$f16,188(sp)
 19c:	c6460058 	lwc1	$f6,88(s2)
 1a0:	46062202 	mul.s	$f8,$f4,$f6
 1a4:	00000000 	nop
 1a8:	46144282 	mul.s	$f10,$f8,$f20
 1ac:	0c000000 	jal	0 <func_80B960D0>
 1b0:	e7aa00c0 	swc1	$f10,192(sp)
 1b4:	461c003c 	c.lt.s	$f0,$f28
 1b8:	24110020 	li	s1,32
 1bc:	45000003 	bc1f	1cc <func_80B96160+0x13c>
 1c0:	00000000 	nop
 1c4:	10000001 	b	1cc <func_80B96160+0x13c>
 1c8:	24110040 	li	s1,64
 1cc:	0c000000 	jal	0 <func_80B960D0>
 1d0:	00000000 	nop
 1d4:	46160402 	mul.s	$f16,$f0,$f22
 1d8:	2419ff00 	li	t9,-256
 1dc:	2408000f 	li	t0,15
 1e0:	2409000f 	li	t1,15
 1e4:	afa9001c 	sw	t1,28(sp)
 1e8:	afa80018 	sw	t0,24(sp)
 1ec:	afb90010 	sw	t9,16(sp)
 1f0:	46168480 	add.s	$f18,$f16,$f22
 1f4:	afb10014 	sw	s1,20(sp)
 1f8:	afa00020 	sw	zero,32(sp)
 1fc:	c6440050 	lwc1	$f4,80(s2)
 200:	240c0020 	li	t4,32
 204:	240d0032 	li	t5,50
 208:	46049182 	mul.s	$f6,$f18,$f4
 20c:	240effff 	li	t6,-1
 210:	240f011d 	li	t7,285
 214:	afaf0038 	sw	t7,56(sp)
 218:	afae0034 	sw	t6,52(sp)
 21c:	afad0030 	sw	t5,48(sp)
 220:	afac002c 	sw	t4,44(sp)
 224:	4600320d 	trunc.w.s	$f8,$f6
 228:	afb6003c 	sw	s6,60(sp)
 22c:	afa00028 	sw	zero,40(sp)
 230:	03c02025 	move	a0,s8
 234:	440b4000 	mfc1	t3,$f8
 238:	02802825 	move	a1,s4
 23c:	02a03025 	move	a2,s5
 240:	02603825 	move	a3,s3
 244:	0c000000 	jal	0 <func_80B960D0>
 248:	afab0024 	sw	t3,36(sp)
 24c:	26100004 	addiu	s0,s0,4
 250:	5617ffb5 	bnel	s0,s7,128 <func_80B96160+0x98>
 254:	860e0000 	lh	t6,0(s0)
 258:	8642001c 	lh	v0,28(s2)
 25c:	03c02025 	move	a0,s8
 260:	02602825 	move	a1,s3
 264:	00021043 	sra	v0,v0,0x1
 268:	30420001 	andi	v0,v0,0x1
 26c:	1440000c 	bnez	v0,2a0 <func_80B96160+0x210>
 270:	24010001 	li	at,1
 274:	24180078 	li	t8,120
 278:	24190064 	li	t9,100
 27c:	24080001 	li	t0,1
 280:	afa80018 	sw	t0,24(sp)
 284:	afb90014 	sw	t9,20(sp)
 288:	afb80010 	sw	t8,16(sp)
 28c:	3c0642f0 	lui	a2,0x42f0
 290:	0c000000 	jal	0 <func_80B960D0>
 294:	2407000c 	li	a3,12
 298:	1000000e 	b	2d4 <func_80B96160+0x244>
 29c:	8fbf0094 	lw	ra,148(sp)
 2a0:	1441000b 	bne	v0,at,2d0 <func_80B96160+0x240>
 2a4:	03c02025 	move	a0,s8
 2a8:	2409003c 	li	t1,60
 2ac:	240a0064 	li	t2,100
 2b0:	240b0001 	li	t3,1
 2b4:	afab0018 	sw	t3,24(sp)
 2b8:	afaa0014 	sw	t2,20(sp)
 2bc:	afa90010 	sw	t1,16(sp)
 2c0:	02602825 	move	a1,s3
 2c4:	3c064270 	lui	a2,0x4270
 2c8:	0c000000 	jal	0 <func_80B960D0>
 2cc:	24070008 	li	a3,8
 2d0:	8fbf0094 	lw	ra,148(sp)
 2d4:	d7b40048 	ldc1	$f20,72(sp)
 2d8:	d7b60050 	ldc1	$f22,80(sp)
 2dc:	d7b80058 	ldc1	$f24,88(sp)
 2e0:	d7ba0060 	ldc1	$f26,96(sp)
 2e4:	d7bc0068 	ldc1	$f28,104(sp)
 2e8:	8fb00070 	lw	s0,112(sp)
 2ec:	8fb10074 	lw	s1,116(sp)
 2f0:	8fb20078 	lw	s2,120(sp)
 2f4:	8fb3007c 	lw	s3,124(sp)
 2f8:	8fb40080 	lw	s4,128(sp)
 2fc:	8fb50084 	lw	s5,132(sp)
 300:	8fb60088 	lw	s6,136(sp)
 304:	8fb7008c 	lw	s7,140(sp)
 308:	8fbe0090 	lw	s8,144(sp)
 30c:	03e00008 	jr	ra
 310:	27bd00d0 	addiu	sp,sp,208

00000314 <ObjLift_Init>:
 314:	27bdffe0 	addiu	sp,sp,-32
 318:	afbf001c 	sw	ra,28(sp)
 31c:	afb00018 	sw	s0,24(sp)
 320:	3c060600 	lui	a2,0x600
 324:	00808025 	move	s0,a0
 328:	afa50024 	sw	a1,36(sp)
 32c:	24c603d0 	addiu	a2,a2,976
 330:	0c000000 	jal	0 <func_80B960D0>
 334:	24070001 	li	a3,1
 338:	8605001c 	lh	a1,28(s0)
 33c:	8fa40024 	lw	a0,36(sp)
 340:	00052883 	sra	a1,a1,0x2
 344:	0c000000 	jal	0 <func_80B960D0>
 348:	30a5003f 	andi	a1,a1,0x3f
 34c:	50400006 	beqzl	v0,368 <ObjLift_Init+0x54>
 350:	860e001c 	lh	t6,28(s0)
 354:	0c000000 	jal	0 <func_80B960D0>
 358:	02002025 	move	a0,s0
 35c:	1000002b 	b	40c <ObjLift_Init+0xf8>
 360:	8fbf001c 	lw	ra,28(sp)
 364:	860e001c 	lh	t6,28(s0)
 368:	3c050000 	lui	a1,0x0
 36c:	02002025 	move	a0,s0
 370:	000e7843 	sra	t7,t6,0x1
 374:	31f80001 	andi	t8,t7,0x1
 378:	0018c880 	sll	t9,t8,0x2
 37c:	00b92821 	addu	a1,a1,t9
 380:	0c000000 	jal	0 <func_80B960D0>
 384:	8ca50000 	lw	a1,0(a1)
 388:	3c050000 	lui	a1,0x0
 38c:	24a50000 	addiu	a1,a1,0
 390:	0c000000 	jal	0 <func_80B960D0>
 394:	02002025 	move	a0,s0
 398:	0c000000 	jal	0 <func_80B960D0>
 39c:	00000000 	nop
 3a0:	3c010000 	lui	at,0x0
 3a4:	c4240000 	lwc1	$f4,0(at)
 3a8:	46040182 	mul.s	$f6,$f0,$f4
 3ac:	4600320d 	trunc.w.s	$f8,$f6
 3b0:	44094000 	mfc1	t1,$f8
 3b4:	0c000000 	jal	0 <func_80B960D0>
 3b8:	a6090168 	sh	t1,360(s0)
 3bc:	3c010000 	lui	at,0x0
 3c0:	c42a0000 	lwc1	$f10,0(at)
 3c4:	460a0402 	mul.s	$f16,$f0,$f10
 3c8:	4600848d 	trunc.w.s	$f18,$f16
 3cc:	440b9000 	mfc1	t3,$f18
 3d0:	0c000000 	jal	0 <func_80B960D0>
 3d4:	a60b016a 	sh	t3,362(s0)
 3d8:	3c010000 	lui	at,0x0
 3dc:	c4240000 	lwc1	$f4,0(at)
 3e0:	02002025 	move	a0,s0
 3e4:	46040182 	mul.s	$f6,$f0,$f4
 3e8:	4600320d 	trunc.w.s	$f8,$f6
 3ec:	440d4000 	mfc1	t5,$f8
 3f0:	0c000000 	jal	0 <func_80B960D0>
 3f4:	a60d016c 	sh	t5,364(s0)
 3f8:	3c040000 	lui	a0,0x0
 3fc:	24840000 	addiu	a0,a0,0
 400:	0c000000 	jal	0 <func_80B960D0>
 404:	8605001c 	lh	a1,28(s0)
 408:	8fbf001c 	lw	ra,28(sp)
 40c:	8fb00018 	lw	s0,24(sp)
 410:	27bd0020 	addiu	sp,sp,32
 414:	03e00008 	jr	ra
 418:	00000000 	nop

0000041c <ObjLift_Destroy>:
 41c:	27bdffe8 	addiu	sp,sp,-24
 420:	afa40018 	sw	a0,24(sp)
 424:	8fae0018 	lw	t6,24(sp)
 428:	afbf0014 	sw	ra,20(sp)
 42c:	00a02025 	move	a0,a1
 430:	24a50810 	addiu	a1,a1,2064
 434:	0c000000 	jal	0 <func_80B960D0>
 438:	8dc6014c 	lw	a2,332(t6)
 43c:	8fbf0014 	lw	ra,20(sp)
 440:	27bd0018 	addiu	sp,sp,24
 444:	03e00008 	jr	ra
 448:	00000000 	nop

0000044c <func_80B9651C>:
 44c:	27bdffe8 	addiu	sp,sp,-24
 450:	afbf0014 	sw	ra,20(sp)
 454:	848e001c 	lh	t6,28(a0)
 458:	3c080000 	lui	t0,0x0
 45c:	3c050000 	lui	a1,0x0
 460:	000e7a03 	sra	t7,t6,0x8
 464:	31f80007 	andi	t8,t7,0x7
 468:	0018c840 	sll	t9,t8,0x1
 46c:	01194021 	addu	t0,t0,t9
 470:	85080000 	lh	t0,0(t0)
 474:	24a50000 	addiu	a1,a1,0
 478:	0c000000 	jal	0 <func_80B960D0>
 47c:	a488016e 	sh	t0,366(a0)
 480:	8fbf0014 	lw	ra,20(sp)
 484:	27bd0018 	addiu	sp,sp,24
 488:	03e00008 	jr	ra
 48c:	00000000 	nop

00000490 <func_80B96560>:
 490:	27bdffc8 	addiu	sp,sp,-56
 494:	afbf0024 	sw	ra,36(sp)
 498:	afb00020 	sw	s0,32(sp)
 49c:	00808025 	move	s0,a0
 4a0:	0c000000 	jal	0 <func_80B960D0>
 4a4:	afa5003c 	sw	a1,60(sp)
 4a8:	10400027 	beqz	v0,548 <func_80B96560+0xb8>
 4ac:	8fa3003c 	lw	v1,60(sp)
 4b0:	860e016e 	lh	t6,366(s0)
 4b4:	5dc0002d 	bgtzl	t6,56c <func_80B96560+0xdc>
 4b8:	8fbf0024 	lw	ra,36(sp)
 4bc:	860f001c 	lh	t7,28(s0)
 4c0:	24010007 	li	at,7
 4c4:	000fc203 	sra	t8,t7,0x8
 4c8:	33190007 	andi	t9,t8,0x7
 4cc:	57210006 	bnel	t9,at,4e8 <func_80B96560+0x58>
 4d0:	846807a0 	lh	t0,1952(v1)
 4d4:	0c000000 	jal	0 <func_80B960D0>
 4d8:	02002025 	move	a0,s0
 4dc:	10000023 	b	56c <func_80B96560+0xdc>
 4e0:	8fbf0024 	lw	ra,36(sp)
 4e4:	846807a0 	lh	t0,1952(v1)
 4e8:	24050001 	li	a1,1
 4ec:	00084880 	sll	t1,t0,0x2
 4f0:	00695021 	addu	t2,v1,t1
 4f4:	0c000000 	jal	0 <func_80B960D0>
 4f8:	8d440790 	lw	a0,1936(t2)
 4fc:	00022400 	sll	a0,v0,0x10
 500:	afa20030 	sw	v0,48(sp)
 504:	00042403 	sra	a0,a0,0x10
 508:	0c000000 	jal	0 <func_80B960D0>
 50c:	24052710 	li	a1,10000
 510:	87a40032 	lh	a0,50(sp)
 514:	24050002 	li	a1,2
 518:	00003025 	move	a2,zero
 51c:	00003825 	move	a3,zero
 520:	afa00010 	sw	zero,16(sp)
 524:	0c000000 	jal	0 <func_80B960D0>
 528:	afa4002c 	sw	a0,44(sp)
 52c:	8fa4002c 	lw	a0,44(sp)
 530:	0c000000 	jal	0 <func_80B960D0>
 534:	24050014 	li	a1,20
 538:	0c000000 	jal	0 <func_80B960D0>
 53c:	02002025 	move	a0,s0
 540:	1000000a 	b	56c <func_80B96560+0xdc>
 544:	8fbf0024 	lw	ra,36(sp)
 548:	860b001c 	lh	t3,28(s0)
 54c:	3c0f0000 	lui	t7,0x0
 550:	000b6203 	sra	t4,t3,0x8
 554:	318d0007 	andi	t5,t4,0x7
 558:	000d7040 	sll	t6,t5,0x1
 55c:	01ee7821 	addu	t7,t7,t6
 560:	85ef0000 	lh	t7,0(t7)
 564:	a60f016e 	sh	t7,366(s0)
 568:	8fbf0024 	lw	ra,36(sp)
 56c:	8fb00020 	lw	s0,32(sp)
 570:	27bd0038 	addiu	sp,sp,56
 574:	03e00008 	jr	ra
 578:	00000000 	nop

0000057c <func_80B9664C>:
 57c:	27bdffe8 	addiu	sp,sp,-24
 580:	afbf0014 	sw	ra,20(sp)
 584:	240e0014 	li	t6,20
 588:	3c050000 	lui	a1,0x0
 58c:	a48e016e 	sh	t6,366(a0)
 590:	0c000000 	jal	0 <func_80B960D0>
 594:	24a50000 	addiu	a1,a1,0
 598:	8fbf0014 	lw	ra,20(sp)
 59c:	27bd0018 	addiu	sp,sp,24
 5a0:	03e00008 	jr	ra
 5a4:	00000000 	nop

000005a8 <func_80B96678>:
 5a8:	27bdffe0 	addiu	sp,sp,-32
 5ac:	afbf001c 	sw	ra,28(sp)
 5b0:	afb00018 	sw	s0,24(sp)
 5b4:	afa50024 	sw	a1,36(sp)
 5b8:	848e016e 	lh	t6,366(a0)
 5bc:	00808025 	move	s0,a0
 5c0:	5dc00006 	bgtzl	t6,5dc <func_80B96678+0x34>
 5c4:	860f0168 	lh	t7,360(s0)
 5c8:	0c000000 	jal	0 <func_80B960D0>
 5cc:	00000000 	nop
 5d0:	1000003a 	b	6bc <func_80B96678+0x114>
 5d4:	860f016e 	lh	t7,366(s0)
 5d8:	860f0168 	lh	t7,360(s0)
 5dc:	25f82710 	addiu	t8,t7,10000
 5e0:	a6180168 	sh	t8,360(s0)
 5e4:	0c000000 	jal	0 <func_80B960D0>
 5e8:	86040168 	lh	a0,360(s0)
 5ec:	3c014396 	lui	at,0x4396
 5f0:	44812000 	mtc1	at,$f4
 5f4:	860b0014 	lh	t3,20(s0)
 5f8:	86040168 	lh	a0,360(s0)
 5fc:	46040182 	mul.s	$f6,$f0,$f4
 600:	4600320d 	trunc.w.s	$f8,$f6
 604:	440a4000 	mfc1	t2,$f8
 608:	00000000 	nop
 60c:	014b6021 	addu	t4,t2,t3
 610:	0c000000 	jal	0 <func_80B960D0>
 614:	a60c0030 	sh	t4,48(s0)
 618:	3c014396 	lui	at,0x4396
 61c:	44815000 	mtc1	at,$f10
 620:	86190018 	lh	t9,24(s0)
 624:	860b016a 	lh	t3,362(s0)
 628:	460a0402 	mul.s	$f16,$f0,$f10
 62c:	86090030 	lh	t1,48(s0)
 630:	256c4650 	addiu	t4,t3,18000
 634:	a60c016a 	sh	t4,362(s0)
 638:	8604016a 	lh	a0,362(s0)
 63c:	a60900b4 	sh	t1,180(s0)
 640:	4600848d 	trunc.w.s	$f18,$f16
 644:	44189000 	mfc1	t8,$f18
 648:	00000000 	nop
 64c:	03194021 	addu	t0,t8,t9
 650:	a6080034 	sh	t0,52(s0)
 654:	860a0034 	lh	t2,52(s0)
 658:	0c000000 	jal	0 <func_80B960D0>
 65c:	a60a00b8 	sh	t2,184(s0)
 660:	c604000c 	lwc1	$f4,12(s0)
 664:	860d016c 	lh	t5,364(s0)
 668:	46040180 	add.s	$f6,$f0,$f4
 66c:	25ae4650 	addiu	t6,t5,18000
 670:	a60e016c 	sh	t6,364(s0)
 674:	8604016c 	lh	a0,364(s0)
 678:	0c000000 	jal	0 <func_80B960D0>
 67c:	e6060028 	swc1	$f6,40(s0)
 680:	3c014040 	lui	at,0x4040
 684:	44814000 	mtc1	at,$f8
 688:	c6100008 	lwc1	$f16,8(s0)
 68c:	8604016c 	lh	a0,364(s0)
 690:	46080282 	mul.s	$f10,$f0,$f8
 694:	46105480 	add.s	$f18,$f10,$f16
 698:	0c000000 	jal	0 <func_80B960D0>
 69c:	e6120024 	swc1	$f18,36(s0)
 6a0:	3c014040 	lui	at,0x4040
 6a4:	44812000 	mtc1	at,$f4
 6a8:	c6080010 	lwc1	$f8,16(s0)
 6ac:	46040182 	mul.s	$f6,$f0,$f4
 6b0:	46083280 	add.s	$f10,$f6,$f8
 6b4:	e60a002c 	swc1	$f10,44(s0)
 6b8:	860f016e 	lh	t7,366(s0)
 6bc:	24010003 	li	at,3
 6c0:	8fa40024 	lw	a0,36(sp)
 6c4:	31f80003 	andi	t8,t7,0x3
 6c8:	17010004 	bne	t8,at,6dc <func_80B96678+0x134>
 6cc:	26050024 	addiu	a1,s0,36
 6d0:	24060010 	li	a2,16
 6d4:	0c000000 	jal	0 <func_80B960D0>
 6d8:	24072838 	li	a3,10296
 6dc:	8fbf001c 	lw	ra,28(sp)
 6e0:	8fb00018 	lw	s0,24(sp)
 6e4:	27bd0020 	addiu	sp,sp,32
 6e8:	03e00008 	jr	ra
 6ec:	00000000 	nop

000006f0 <func_80B967C0>:
 6f0:	27bdffe0 	addiu	sp,sp,-32
 6f4:	afbf0014 	sw	ra,20(sp)
 6f8:	3c050000 	lui	a1,0x0
 6fc:	24a50000 	addiu	a1,a1,0
 700:	0c000000 	jal	0 <func_80B960D0>
 704:	afa40020 	sw	a0,32(sp)
 708:	8fa60020 	lw	a2,32(sp)
 70c:	24c40024 	addiu	a0,a2,36
 710:	0c000000 	jal	0 <func_80B960D0>
 714:	24c50008 	addiu	a1,a2,8
 718:	8fa60020 	lw	a2,32(sp)
 71c:	27a20018 	addiu	v0,sp,24
 720:	88cf0014 	lwl	t7,20(a2)
 724:	98cf0017 	lwr	t7,23(a2)
 728:	ac4f0000 	sw	t7,0(v0)
 72c:	94cf0018 	lhu	t7,24(a2)
 730:	8c590000 	lw	t9,0(v0)
 734:	a44f0004 	sh	t7,4(v0)
 738:	a8d90030 	swl	t9,48(a2)
 73c:	b8d90033 	swr	t9,51(a2)
 740:	94590004 	lhu	t9,4(v0)
 744:	a4d90034 	sh	t9,52(a2)
 748:	88490000 	lwl	t1,0(v0)
 74c:	98490003 	lwr	t1,3(v0)
 750:	a8c900b4 	swl	t1,180(a2)
 754:	b8c900b7 	swr	t1,183(a2)
 758:	94490004 	lhu	t1,4(v0)
 75c:	a4c900b8 	sh	t1,184(a2)
 760:	8fbf0014 	lw	ra,20(sp)
 764:	27bd0020 	addiu	sp,sp,32
 768:	03e00008 	jr	ra
 76c:	00000000 	nop

00000770 <func_80B96840>:
 770:	27bdffc0 	addiu	sp,sp,-64
 774:	afbf0024 	sw	ra,36(sp)
 778:	afb00020 	sw	s0,32(sp)
 77c:	00808025 	move	s0,a0
 780:	0c000000 	jal	0 <func_80B960D0>
 784:	afa50044 	sw	a1,68(sp)
 788:	27a4002c 	addiu	a0,sp,44
 78c:	0c000000 	jal	0 <func_80B960D0>
 790:	26050100 	addiu	a1,s0,256
 794:	860e001c 	lh	t6,28(s0)
 798:	3c010000 	lui	at,0x0
 79c:	c7a40030 	lwc1	$f4,48(sp)
 7a0:	000e7843 	sra	t7,t6,0x1
 7a4:	31f80001 	andi	t8,t7,0x1
 7a8:	0018c880 	sll	t9,t8,0x2
 7ac:	00390821 	addu	at,at,t9
 7b0:	c4260000 	lwc1	$f6,0(at)
 7b4:	8fa40044 	lw	a0,68(sp)
 7b8:	27a8002c 	addiu	t0,sp,44
 7bc:	46062200 	add.s	$f8,$f4,$f6
 7c0:	afa80010 	sw	t0,16(sp)
 7c4:	26050078 	addiu	a1,s0,120
 7c8:	27a60038 	addiu	a2,sp,56
 7cc:	e7a80030 	swc1	$f8,48(sp)
 7d0:	02003825 	move	a3,s0
 7d4:	0c000000 	jal	0 <func_80B960D0>
 7d8:	248407c0 	addiu	a0,a0,1984
 7dc:	8609001c 	lh	t1,28(s0)
 7e0:	3c010000 	lui	at,0x0
 7e4:	e6000080 	swc1	$f0,128(s0)
 7e8:	00095043 	sra	t2,t1,0x1
 7ec:	314b0001 	andi	t3,t2,0x1
 7f0:	000b6080 	sll	t4,t3,0x2
 7f4:	002c0821 	addu	at,at,t4
 7f8:	c4320000 	lwc1	$f18,0(at)
 7fc:	3c010000 	lui	at,0x0
 800:	c4240000 	lwc1	$f4,0(at)
 804:	c60a0028 	lwc1	$f10,40(s0)
 808:	02002025 	move	a0,s0
 80c:	46049181 	sub.s	$f6,$f18,$f4
 810:	460a0401 	sub.s	$f16,$f0,$f10
 814:	4610303e 	c.le.s	$f6,$f16
 818:	00000000 	nop
 81c:	45020010 	bc1fl	860 <func_80B96840+0xf0>
 820:	8fbf0024 	lw	ra,36(sp)
 824:	0c000000 	jal	0 <func_80B960D0>
 828:	8fa50044 	lw	a1,68(sp)
 82c:	8fa40044 	lw	a0,68(sp)
 830:	26050024 	addiu	a1,s0,36
 834:	24060014 	li	a2,20
 838:	0c000000 	jal	0 <func_80B960D0>
 83c:	24072839 	li	a3,10297
 840:	8605001c 	lh	a1,28(s0)
 844:	8fa40044 	lw	a0,68(sp)
 848:	00052883 	sra	a1,a1,0x2
 84c:	0c000000 	jal	0 <func_80B960D0>
 850:	30a5003f 	andi	a1,a1,0x3f
 854:	0c000000 	jal	0 <func_80B960D0>
 858:	02002025 	move	a0,s0
 85c:	8fbf0024 	lw	ra,36(sp)
 860:	8fb00020 	lw	s0,32(sp)
 864:	27bd0040 	addiu	sp,sp,64
 868:	03e00008 	jr	ra
 86c:	00000000 	nop

00000870 <ObjLift_Update>:
 870:	27bdffe8 	addiu	sp,sp,-24
 874:	afbf0014 	sw	ra,20(sp)
 878:	8482016e 	lh	v0,366(a0)
 87c:	18400002 	blez	v0,888 <ObjLift_Update+0x18>
 880:	244effff 	addiu	t6,v0,-1
 884:	a48e016e 	sh	t6,366(a0)
 888:	8c990164 	lw	t9,356(a0)
 88c:	0320f809 	jalr	t9
 890:	00000000 	nop
 894:	8fbf0014 	lw	ra,20(sp)
 898:	27bd0018 	addiu	sp,sp,24
 89c:	03e00008 	jr	ra
 8a0:	00000000 	nop

000008a4 <ObjLift_Draw>:
 8a4:	27bdffe8 	addiu	sp,sp,-24
 8a8:	afa40018 	sw	a0,24(sp)
 8ac:	00a02025 	move	a0,a1
 8b0:	afbf0014 	sw	ra,20(sp)
 8b4:	3c050600 	lui	a1,0x600
 8b8:	0c000000 	jal	0 <func_80B960D0>
 8bc:	24a50140 	addiu	a1,a1,320
 8c0:	8fbf0014 	lw	ra,20(sp)
 8c4:	27bd0018 	addiu	sp,sp,24
 8c8:	03e00008 	jr	ra
 8cc:	00000000 	nop
