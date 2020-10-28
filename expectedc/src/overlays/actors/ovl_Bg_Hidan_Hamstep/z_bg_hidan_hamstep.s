
build/src/overlays/actors/ovl_Bg_Hidan_Hamstep/z_bg_hidan_hamstep.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80888040>:
   0:	00057080 	sll	t6,a1,0x2
   4:	3c0f0000 	lui	t7,0x0
   8:	ac850240 	sw	a1,576(a0)
   c:	01ee7821 	addu	t7,t7,t6
  10:	8def0000 	lw	t7,0(t7)
  14:	03e00008 	jr	ra
  18:	ac8f023c 	sw	t7,572(a0)

0000001c <func_8088805C>:
  1c:	27bdff78 	addiu	sp,sp,-136
  20:	afbf006c 	sw	ra,108(sp)
  24:	afb50068 	sw	s5,104(sp)
  28:	afb40064 	sw	s4,100(sp)
  2c:	afb30060 	sw	s3,96(sp)
  30:	afb2005c 	sw	s2,92(sp)
  34:	afb10058 	sw	s1,88(sp)
  38:	afb00054 	sw	s0,84(sp)
  3c:	f7ba0048 	sdc1	$f26,72(sp)
  40:	f7b80040 	sdc1	$f24,64(sp)
  44:	f7b60038 	sdc1	$f22,56(sp)
  48:	f7b40030 	sdc1	$f20,48(sp)
  4c:	3c0142c8 	lui	at,0x42c8
  50:	44813000 	mtc1	at,$f6
  54:	c484000c 	lwc1	$f4,12(a0)
  58:	00808025 	move	s0,a0
  5c:	34118000 	li	s1,0x8000
  60:	46062201 	sub.s	$f8,$f4,$f6
  64:	00809025 	move	s2,a0
  68:	00a09825 	move	s3,a1
  6c:	e7a80078 	swc1	$f8,120(sp)
  70:	848e00b6 	lh	t6,182(a0)
  74:	01d12021 	addu	a0,t6,s1
  78:	00042400 	sll	a0,a0,0x10
  7c:	0c000000 	jal	0 <func_80888040>
  80:	00042403 	sra	a0,a0,0x10
  84:	860f00b6 	lh	t7,182(s0)
  88:	46000506 	mov.s	$f20,$f0
  8c:	01f12021 	addu	a0,t7,s1
  90:	00042400 	sll	a0,a0,0x10
  94:	0c000000 	jal	0 <func_80888040>
  98:	00042403 	sra	a0,a0,0x10
  9c:	3c014270 	lui	at,0x4270
  a0:	4481d000 	mtc1	at,$f26
  a4:	3c014320 	lui	at,0x4320
  a8:	4481c000 	mtc1	at,$f24
  ac:	46000586 	mov.s	$f22,$f0
  b0:	00001025 	move	v0,zero
  b4:	26741c24 	addiu	s4,s3,7204
  b8:	24150005 	li	s5,5
  bc:	44825000 	mtc1	v0,$f10
  c0:	c6060008 	lwc1	$f6,8(s0)
  c4:	24510001 	addiu	s1,v0,1
  c8:	46805420 	cvt.s.w	$f16,$f10
  cc:	322800ff 	andi	t0,s1,0xff
  d0:	02802025 	move	a0,s4
  d4:	02402825 	move	a1,s2
  d8:	02603025 	move	a2,s3
  dc:	24070071 	li	a3,113
  e0:	46188482 	mul.s	$f18,$f16,$f24
  e4:	461a9000 	add.s	$f0,$f18,$f26
  e8:	46140102 	mul.s	$f4,$f0,$f20
  ec:	46062200 	add.s	$f8,$f4,$f6
  f0:	46160282 	mul.s	$f10,$f0,$f22
  f4:	c7a40078 	lwc1	$f4,120(sp)
  f8:	e7a80074 	swc1	$f8,116(sp)
  fc:	c6100010 	lwc1	$f16,16(s0)
 100:	46105480 	add.s	$f18,$f10,$f16
 104:	e7b2007c 	swc1	$f18,124(sp)
 108:	8609001c 	lh	t1,28(s0)
 10c:	e7b20018 	swc1	$f18,24(sp)
 110:	e7a80010 	swc1	$f8,16(sp)
 114:	e7a40014 	swc1	$f4,20(sp)
 118:	860b0030 	lh	t3,48(s0)
 11c:	312aff00 	andi	t2,t1,0xff00
 120:	010a1825 	or	v1,t0,t2
 124:	afab001c 	sw	t3,28(sp)
 128:	860c0032 	lh	t4,50(s0)
 12c:	00031c00 	sll	v1,v1,0x10
 130:	00031c03 	sra	v1,v1,0x10
 134:	afac0020 	sw	t4,32(sp)
 138:	860d0034 	lh	t5,52(s0)
 13c:	afa30028 	sw	v1,40(sp)
 140:	0c000000 	jal	0 <func_80888040>
 144:	afad0024 	sw	t5,36(sp)
 148:	14400003 	bnez	v0,158 <func_8088805C+0x13c>
 14c:	00409025 	move	s2,v0
 150:	10000004 	b	164 <func_8088805C+0x148>
 154:	00001025 	move	v0,zero
 158:	1635ffd8 	bne	s1,s5,bc <func_8088805C+0xa0>
 15c:	02201025 	move	v0,s1
 160:	24020001 	li	v0,1
 164:	8fbf006c 	lw	ra,108(sp)
 168:	d7b40030 	ldc1	$f20,48(sp)
 16c:	d7b60038 	ldc1	$f22,56(sp)
 170:	d7b80040 	ldc1	$f24,64(sp)
 174:	d7ba0048 	ldc1	$f26,72(sp)
 178:	8fb00054 	lw	s0,84(sp)
 17c:	8fb10058 	lw	s1,88(sp)
 180:	8fb2005c 	lw	s2,92(sp)
 184:	8fb30060 	lw	s3,96(sp)
 188:	8fb40064 	lw	s4,100(sp)
 18c:	8fb50068 	lw	s5,104(sp)
 190:	03e00008 	jr	ra
 194:	27bd0088 	addiu	sp,sp,136

00000198 <BgHidanHamstep_Init>:
 198:	27bdff88 	addiu	sp,sp,-120
 19c:	afbf002c 	sw	ra,44(sp)
 1a0:	afb00020 	sw	s0,32(sp)
 1a4:	afa5007c 	sw	a1,124(sp)
 1a8:	00808025 	move	s0,a0
 1ac:	afb20028 	sw	s2,40(sp)
 1b0:	afb10024 	sw	s1,36(sp)
 1b4:	afa0006c 	sw	zero,108(sp)
 1b8:	0c000000 	jal	0 <func_80888040>
 1bc:	24050001 	li	a1,1
 1c0:	3c050000 	lui	a1,0x0
 1c4:	24a50000 	addiu	a1,a1,0
 1c8:	0c000000 	jal	0 <func_80888040>
 1cc:	02002025 	move	a0,s0
 1d0:	8602001c 	lh	v0,28(s0)
 1d4:	8fa4007c 	lw	a0,124(sp)
 1d8:	26120164 	addiu	s2,s0,356
 1dc:	304200ff 	andi	v0,v0,0xff
 1e0:	14400030 	bnez	v0,2a4 <BgHidanHamstep_Init+0x10c>
 1e4:	00000000 	nop
 1e8:	0c000000 	jal	0 <func_80888040>
 1ec:	02402825 	move	a1,s2
 1f0:	3c070000 	lui	a3,0x0
 1f4:	260e0184 	addiu	t6,s0,388
 1f8:	afae0010 	sw	t6,16(sp)
 1fc:	24e70000 	addiu	a3,a3,0
 200:	8fa4007c 	lw	a0,124(sp)
 204:	02402825 	move	a1,s2
 208:	0c000000 	jal	0 <func_80888040>
 20c:	02003025 	move	a2,s0
 210:	00008825 	move	s1,zero
 214:	27a8006c 	addiu	t0,sp,108
 218:	3c0f0000 	lui	t7,0x0
 21c:	8def0000 	lw	t7,0(t7)
 220:	0011c100 	sll	t8,s1,0x4
 224:	0311c023 	subu	t8,t8,s1
 228:	0018c080 	sll	t8,t8,0x2
 22c:	27a20048 	addiu	v0,sp,72
 230:	01f81821 	addu	v1,t7,t8
 234:	c4640018 	lwc1	$f4,24(v1)
 238:	c6060008 	lwc1	$f6,8(s0)
 23c:	2442000c 	addiu	v0,v0,12
 240:	2463000c 	addiu	v1,v1,12
 244:	46062200 	add.s	$f8,$f4,$f6
 248:	e448fff4 	swc1	$f8,-12(v0)
 24c:	c610000c 	lwc1	$f16,12(s0)
 250:	c46a0010 	lwc1	$f10,16(v1)
 254:	46105480 	add.s	$f18,$f10,$f16
 258:	e452fff8 	swc1	$f18,-8(v0)
 25c:	c6060010 	lwc1	$f6,16(s0)
 260:	c4640014 	lwc1	$f4,20(v1)
 264:	46062200 	add.s	$f8,$f4,$f6
 268:	1448fff2 	bne	v0,t0,234 <BgHidanHamstep_Init+0x9c>
 26c:	e448fffc 	swc1	$f8,-4(v0)
 270:	27b90060 	addiu	t9,sp,96
 274:	afb90010 	sw	t9,16(sp)
 278:	02402025 	move	a0,s2
 27c:	02202825 	move	a1,s1
 280:	27a60048 	addiu	a2,sp,72
 284:	0c000000 	jal	0 <func_80888040>
 288:	27a70054 	addiu	a3,sp,84
 28c:	26310001 	addiu	s1,s1,1
 290:	24010002 	li	at,2
 294:	1621ffe0 	bne	s1,at,218 <BgHidanHamstep_Init+0x80>
 298:	27a8006c 	addiu	t0,sp,108
 29c:	8602001c 	lh	v0,28(s0)
 2a0:	304200ff 	andi	v0,v0,0xff
 2a4:	14400007 	bnez	v0,2c4 <BgHidanHamstep_Init+0x12c>
 2a8:	3c040601 	lui	a0,0x601
 2ac:	3c040601 	lui	a0,0x601
 2b0:	2484de44 	addiu	a0,a0,-8636
 2b4:	0c000000 	jal	0 <func_80888040>
 2b8:	27a5006c 	addiu	a1,sp,108
 2bc:	10000005 	b	2d4 <BgHidanHamstep_Init+0x13c>
 2c0:	8fa4007c 	lw	a0,124(sp)
 2c4:	2484dd1c 	addiu	a0,a0,-8932
 2c8:	0c000000 	jal	0 <func_80888040>
 2cc:	27a5006c 	addiu	a1,sp,108
 2d0:	8fa4007c 	lw	a0,124(sp)
 2d4:	02003025 	move	a2,s0
 2d8:	8fa7006c 	lw	a3,108(sp)
 2dc:	0c000000 	jal	0 <func_80888040>
 2e0:	24850810 	addiu	a1,a0,2064
 2e4:	8605001c 	lh	a1,28(s0)
 2e8:	ae02014c 	sw	v0,332(s0)
 2ec:	8fa4007c 	lw	a0,124(sp)
 2f0:	00052a03 	sra	a1,a1,0x8
 2f4:	0c000000 	jal	0 <func_80888040>
 2f8:	30a500ff 	andi	a1,a1,0xff
 2fc:	5040001b 	beqzl	v0,36c <BgHidanHamstep_Init+0x1d4>
 300:	860a001c 	lh	t2,28(s0)
 304:	8602001c 	lh	v0,28(s0)
 308:	3c010000 	lui	at,0x0
 30c:	304200ff 	andi	v0,v0,0xff
 310:	1440000b 	bnez	v0,340 <BgHidanHamstep_Init+0x1a8>
 314:	00024880 	sll	t1,v0,0x2
 318:	3c01c1a0 	lui	at,0xc1a0
 31c:	44818000 	mtc1	at,$f16
 320:	c60a000c 	lwc1	$f10,12(s0)
 324:	02002025 	move	a0,s0
 328:	24050004 	li	a1,4
 32c:	46105480 	add.s	$f18,$f10,$f16
 330:	0c000000 	jal	0 <func_80888040>
 334:	e6120028 	swc1	$f18,40(s0)
 338:	10000017 	b	398 <BgHidanHamstep_Init+0x200>
 33c:	00000000 	nop
 340:	00290821 	addu	at,at,t1
 344:	c4240d2c 	lwc1	$f4,3372(at)
 348:	c606000c 	lwc1	$f6,12(s0)
 34c:	02002025 	move	a0,s0
 350:	24050004 	li	a1,4
 354:	46062200 	add.s	$f8,$f4,$f6
 358:	0c000000 	jal	0 <func_80888040>
 35c:	e6080028 	swc1	$f8,40(s0)
 360:	1000000d 	b	398 <BgHidanHamstep_Init+0x200>
 364:	00000000 	nop
 368:	860a001c 	lh	t2,28(s0)
 36c:	00002825 	move	a1,zero
 370:	02002025 	move	a0,s0
 374:	314b00ff 	andi	t3,t2,0xff
 378:	15600005 	bnez	t3,390 <BgHidanHamstep_Init+0x1f8>
 37c:	00000000 	nop
 380:	0c000000 	jal	0 <func_80888040>
 384:	02002025 	move	a0,s0
 388:	10000003 	b	398 <BgHidanHamstep_Init+0x200>
 38c:	00000000 	nop
 390:	0c000000 	jal	0 <func_80888040>
 394:	24050002 	li	a1,2
 398:	3c010000 	lui	at,0x0
 39c:	c42a0000 	lwc1	$f10,0(at)
 3a0:	860c001c 	lh	t4,28(s0)
 3a4:	3c01c140 	lui	at,0xc140
 3a8:	44818000 	mtc1	at,$f16
 3ac:	318d00ff 	andi	t5,t4,0xff
 3b0:	e60a006c 	swc1	$f10,108(s0)
 3b4:	15a00019 	bnez	t5,41c <BgHidanHamstep_Init+0x284>
 3b8:	e6100070 	swc1	$f16,112(s0)
 3bc:	3c040000 	lui	a0,0x0
 3c0:	0c000000 	jal	0 <func_80888040>
 3c4:	24840000 	addiu	a0,a0,0
 3c8:	02002025 	move	a0,s0
 3cc:	0c000000 	jal	0 <func_80888040>
 3d0:	8fa5007c 	lw	a1,124(sp)
 3d4:	14400011 	bnez	v0,41c <BgHidanHamstep_Init+0x284>
 3d8:	02008825 	move	s1,s0
 3dc:	3c040000 	lui	a0,0x0
 3e0:	0c000000 	jal	0 <func_80888040>
 3e4:	24840000 	addiu	a0,a0,0
 3e8:	3c040000 	lui	a0,0x0
 3ec:	3c050000 	lui	a1,0x0
 3f0:	24a50000 	addiu	a1,a1,0
 3f4:	24840000 	addiu	a0,a0,0
 3f8:	0c000000 	jal	0 <func_80888040>
 3fc:	240601a9 	li	a2,425
 400:	52000007 	beqzl	s0,420 <BgHidanHamstep_Init+0x288>
 404:	8fbf002c 	lw	ra,44(sp)
 408:	0c000000 	jal	0 <func_80888040>
 40c:	02202025 	move	a0,s1
 410:	8e31011c 	lw	s1,284(s1)
 414:	1620fffc 	bnez	s1,408 <BgHidanHamstep_Init+0x270>
 418:	00000000 	nop
 41c:	8fbf002c 	lw	ra,44(sp)
 420:	8fb00020 	lw	s0,32(sp)
 424:	8fb10024 	lw	s1,36(sp)
 428:	8fb20028 	lw	s2,40(sp)
 42c:	03e00008 	jr	ra
 430:	27bd0078 	addiu	sp,sp,120

00000434 <BgHidanHamstep_Destroy>:
 434:	27bdffe8 	addiu	sp,sp,-24
 438:	00803825 	move	a3,a0
 43c:	afbf0014 	sw	ra,20(sp)
 440:	afa5001c 	sw	a1,28(sp)
 444:	8ce6014c 	lw	a2,332(a3)
 448:	00a02025 	move	a0,a1
 44c:	24a50810 	addiu	a1,a1,2064
 450:	0c000000 	jal	0 <func_80888040>
 454:	afa70018 	sw	a3,24(sp)
 458:	8fa70018 	lw	a3,24(sp)
 45c:	8fa4001c 	lw	a0,28(sp)
 460:	84ef001c 	lh	t7,28(a3)
 464:	31f800ff 	andi	t8,t7,0xff
 468:	57000004 	bnezl	t8,47c <BgHidanHamstep_Destroy+0x48>
 46c:	8fbf0014 	lw	ra,20(sp)
 470:	0c000000 	jal	0 <func_80888040>
 474:	24e50164 	addiu	a1,a3,356
 478:	8fbf0014 	lw	ra,20(sp)
 47c:	27bd0018 	addiu	sp,sp,24
 480:	03e00008 	jr	ra
 484:	00000000 	nop

00000488 <func_808884C8>:
 488:	27bdff88 	addiu	sp,sp,-120
 48c:	afbf0054 	sw	ra,84(sp)
 490:	afb40050 	sw	s4,80(sp)
 494:	afb3004c 	sw	s3,76(sp)
 498:	afb20048 	sw	s2,72(sp)
 49c:	afb10044 	sw	s1,68(sp)
 4a0:	afb00040 	sw	s0,64(sp)
 4a4:	f7b80038 	sdc1	$f24,56(sp)
 4a8:	f7b60030 	sdc1	$f22,48(sp)
 4ac:	f7b40028 	sdc1	$f20,40(sp)
 4b0:	8c8f0024 	lw	t7,36(a0)
 4b4:	27b4006c 	addiu	s4,sp,108
 4b8:	3c0141a0 	lui	at,0x41a0
 4bc:	ae8f0000 	sw	t7,0(s4)
 4c0:	8c8e0028 	lw	t6,40(a0)
 4c4:	44813000 	mtc1	at,$f6
 4c8:	4480c000 	mtc1	zero,$f24
 4cc:	ae8e0004 	sw	t6,4(s4)
 4d0:	8c8f002c 	lw	t7,44(a0)
 4d4:	00808825 	move	s1,a0
 4d8:	00a09825 	move	s3,a1
 4dc:	ae8f0008 	sw	t7,8(s4)
 4e0:	c7a40070 	lwc1	$f4,112(sp)
 4e4:	00a02025 	move	a0,a1
 4e8:	24180258 	li	t8,600
 4ec:	46062201 	sub.s	$f8,$f4,$f6
 4f0:	2419012c 	li	t9,300
 4f4:	4406c000 	mfc1	a2,$f24
 4f8:	afb90014 	sw	t9,20(sp)
 4fc:	e7a80070 	swc1	$f8,112(sp)
 500:	afb80010 	sw	t8,16(sp)
 504:	02802825 	move	a1,s4
 508:	afa00018 	sw	zero,24(sp)
 50c:	0c000000 	jal	0 <func_80888040>
 510:	00003825 	move	a3,zero
 514:	862800b6 	lh	t0,182(s1)
 518:	34108000 	li	s0,0x8000
 51c:	01102021 	addu	a0,t0,s0
 520:	00042400 	sll	a0,a0,0x10
 524:	0c000000 	jal	0 <func_80888040>
 528:	00042403 	sra	a0,a0,0x10
 52c:	862900b6 	lh	t1,182(s1)
 530:	46000506 	mov.s	$f20,$f0
 534:	01302021 	addu	a0,t1,s0
 538:	00042400 	sll	a0,a0,0x10
 53c:	0c000000 	jal	0 <func_80888040>
 540:	00042403 	sra	a0,a0,0x10
 544:	c62a0028 	lwc1	$f10,40(s1)
 548:	3c100000 	lui	s0,0x0
 54c:	3c120000 	lui	s2,0x0
 550:	46000586 	mov.s	$f22,$f0
 554:	26520000 	addiu	s2,s2,0
 558:	26100000 	addiu	s0,s0,0
 55c:	e7aa0070 	swc1	$f10,112(sp)
 560:	c6000000 	lwc1	$f0,0(s0)
 564:	c6020004 	lwc1	$f2,4(s0)
 568:	c6260024 	lwc1	$f6,36(s1)
 56c:	46160402 	mul.s	$f16,$f0,$f22
 570:	4406c000 	mfc1	a2,$f24
 574:	240a0096 	li	t2,150
 578:	46141482 	mul.s	$f18,$f2,$f20
 57c:	240b0096 	li	t3,150
 580:	02602025 	move	a0,s3
 584:	46161282 	mul.s	$f10,$f2,$f22
 588:	02802825 	move	a1,s4
 58c:	00003825 	move	a3,zero
 590:	46128100 	add.s	$f4,$f16,$f18
 594:	46140402 	mul.s	$f16,$f0,$f20
 598:	46062200 	add.s	$f8,$f4,$f6
 59c:	46105481 	sub.s	$f18,$f10,$f16
 5a0:	e7a8006c 	swc1	$f8,108(sp)
 5a4:	c624002c 	lwc1	$f4,44(s1)
 5a8:	afa00018 	sw	zero,24(sp)
 5ac:	afab0014 	sw	t3,20(sp)
 5b0:	46049180 	add.s	$f6,$f18,$f4
 5b4:	afaa0010 	sw	t2,16(sp)
 5b8:	0c000000 	jal	0 <func_80888040>
 5bc:	e7a60074 	swc1	$f6,116(sp)
 5c0:	26100008 	addiu	s0,s0,8
 5c4:	5612ffe7 	bnel	s0,s2,564 <func_808884C8+0xdc>
 5c8:	c6000000 	lwc1	$f0,0(s0)
 5cc:	8fbf0054 	lw	ra,84(sp)
 5d0:	d7b40028 	ldc1	$f20,40(sp)
 5d4:	d7b60030 	ldc1	$f22,48(sp)
 5d8:	d7b80038 	ldc1	$f24,56(sp)
 5dc:	8fb00040 	lw	s0,64(sp)
 5e0:	8fb10044 	lw	s1,68(sp)
 5e4:	8fb20048 	lw	s2,72(sp)
 5e8:	8fb3004c 	lw	s3,76(sp)
 5ec:	8fb40050 	lw	s4,80(sp)
 5f0:	03e00008 	jr	ra
 5f4:	27bd0078 	addiu	sp,sp,120

000005f8 <func_80888638>:
 5f8:	27bdffe0 	addiu	sp,sp,-32
 5fc:	afbf001c 	sw	ra,28(sp)
 600:	afb10018 	sw	s1,24(sp)
 604:	afb00014 	sw	s0,20(sp)
 608:	8c90011c 	lw	s0,284(a0)
 60c:	00a08825 	move	s1,a1
 610:	5200000c 	beqzl	s0,644 <func_80888638+0x4c>
 614:	8fbf001c 	lw	ra,28(sp)
 618:	860e001c 	lh	t6,28(s0)
 61c:	02002025 	move	a0,s0
 620:	31cf00ff 	andi	t7,t6,0xff
 624:	51e00004 	beqzl	t7,638 <func_80888638+0x40>
 628:	8e10011c 	lw	s0,284(s0)
 62c:	0c000000 	jal	0 <func_80888040>
 630:	02202825 	move	a1,s1
 634:	8e10011c 	lw	s0,284(s0)
 638:	5600fff8 	bnezl	s0,61c <func_80888638+0x24>
 63c:	860e001c 	lh	t6,28(s0)
 640:	8fbf001c 	lw	ra,28(sp)
 644:	8fb00014 	lw	s0,20(sp)
 648:	8fb10018 	lw	s1,24(sp)
 64c:	03e00008 	jr	ra
 650:	27bd0020 	addiu	sp,sp,32

00000654 <func_80888694>:
 654:	848e001c 	lh	t6,28(a0)
 658:	31cf00ff 	andi	t7,t6,0xff
 65c:	29e10002 	slti	at,t7,2
 660:	54200016 	bnezl	at,6bc <func_80888694+0x68>
 664:	8c82011c 	lw	v0,284(a0)
 668:	c4a00028 	lwc1	$f0,40(a1)
 66c:	c4820028 	lwc1	$f2,40(a0)
 670:	3c01c2c8 	lui	at,0xc2c8
 674:	4602003c 	c.lt.s	$f0,$f2
 678:	00000000 	nop
 67c:	45020004 	bc1fl	690 <func_80888694+0x3c>
 680:	46001101 	sub.s	$f4,$f2,$f0
 684:	1000000c 	b	6b8 <func_80888694+0x64>
 688:	e4800028 	swc1	$f0,40(a0)
 68c:	46001101 	sub.s	$f4,$f2,$f0
 690:	44813000 	mtc1	at,$f6
 694:	3c0142c8 	lui	at,0x42c8
 698:	4606203c 	c.lt.s	$f4,$f6
 69c:	00000000 	nop
 6a0:	45020006 	bc1fl	6bc <func_80888694+0x68>
 6a4:	8c82011c 	lw	v0,284(a0)
 6a8:	44814000 	mtc1	at,$f8
 6ac:	00000000 	nop
 6b0:	46080281 	sub.s	$f10,$f0,$f8
 6b4:	e48a0028 	swc1	$f10,40(a0)
 6b8:	8c82011c 	lw	v0,284(a0)
 6bc:	1040000b 	beqz	v0,6ec <func_80888694+0x98>
 6c0:	00000000 	nop
 6c4:	c4820028 	lwc1	$f2,40(a0)
 6c8:	c4500028 	lwc1	$f16,40(v0)
 6cc:	4610103c 	c.lt.s	$f2,$f16
 6d0:	00000000 	nop
 6d4:	45020003 	bc1fl	6e4 <func_80888694+0x90>
 6d8:	8c42011c 	lw	v0,284(v0)
 6dc:	e4420028 	swc1	$f2,40(v0)
 6e0:	8c42011c 	lw	v0,284(v0)
 6e4:	5440fff8 	bnezl	v0,6c8 <func_80888694+0x74>
 6e8:	c4820028 	lwc1	$f2,40(a0)
 6ec:	03e00008 	jr	ra
 6f0:	00000000 	nop

000006f4 <func_80888734>:
 6f4:	3c0e0000 	lui	t6,0x0
 6f8:	8dce0000 	lw	t6,0(t6)
 6fc:	27bdffe8 	addiu	sp,sp,-24
 700:	afbf0014 	sw	ra,20(sp)
 704:	85cf0110 	lh	t7,272(t6)
 708:	3c013f00 	lui	at,0x3f00
 70c:	44814000 	mtc1	at,$f8
 710:	448f2000 	mtc1	t7,$f4
 714:	8c850118 	lw	a1,280(a0)
 718:	468021a0 	cvt.s.w	$f6,$f4
 71c:	46083002 	mul.s	$f0,$f6,$f8
 720:	50a00015 	beqzl	a1,778 <func_80888734+0x84>
 724:	8fbf0014 	lw	ra,20(sp)
 728:	8498001c 	lh	t8,28(a0)
 72c:	c4aa0060 	lwc1	$f10,96(a1)
 730:	24010001 	li	at,1
 734:	331900ff 	andi	t9,t8,0xff
 738:	17210007 	bne	t9,at,758 <func_80888734+0x64>
 73c:	e48a0060 	swc1	$f10,96(a0)
 740:	3c0142c8 	lui	at,0x42c8
 744:	44819000 	mtc1	at,$f18
 748:	c4b00028 	lwc1	$f16,40(a1)
 74c:	46128101 	sub.s	$f4,$f16,$f18
 750:	10000006 	b	76c <func_80888734+0x78>
 754:	e4840028 	swc1	$f4,40(a0)
 758:	c4880060 	lwc1	$f8,96(a0)
 75c:	c4860028 	lwc1	$f6,40(a0)
 760:	46004282 	mul.s	$f10,$f8,$f0
 764:	460a3400 	add.s	$f16,$f6,$f10
 768:	e4900028 	swc1	$f16,40(a0)
 76c:	0c000000 	jal	0 <func_80888040>
 770:	00000000 	nop
 774:	8fbf0014 	lw	ra,20(sp)
 778:	27bd0018 	addiu	sp,sp,24
 77c:	03e00008 	jr	ra
 780:	00000000 	nop

00000784 <func_808887C4>:
 784:	27bdffd8 	addiu	sp,sp,-40
 788:	afbf0024 	sw	ra,36(sp)
 78c:	afb00020 	sw	s0,32(sp)
 790:	afa5002c 	sw	a1,44(sp)
 794:	908e0175 	lbu	t6,373(a0)
 798:	00808025 	move	s0,a0
 79c:	8fa4002c 	lw	a0,44(sp)
 7a0:	31cf0002 	andi	t7,t6,0x2
 7a4:	11e00015 	beqz	t7,7fc <func_808887C4+0x78>
 7a8:	3c010001 	lui	at,0x1
 7ac:	00a02025 	move	a0,a1
 7b0:	24050cee 	li	a1,3310
 7b4:	24060064 	li	a2,100
 7b8:	02003825 	move	a3,s0
 7bc:	0c000000 	jal	0 <func_80888040>
 7c0:	afa00010 	sw	zero,16(sp)
 7c4:	02002025 	move	a0,s0
 7c8:	0c000000 	jal	0 <func_80888040>
 7cc:	2405283a 	li	a1,10298
 7d0:	a2000175 	sb	zero,373(s0)
 7d4:	02002025 	move	a0,s0
 7d8:	0c000000 	jal	0 <func_80888040>
 7dc:	24050001 	li	a1,1
 7e0:	8605001c 	lh	a1,28(s0)
 7e4:	8fa4002c 	lw	a0,44(sp)
 7e8:	00052a03 	sra	a1,a1,0x8
 7ec:	0c000000 	jal	0 <func_80888040>
 7f0:	30a500ff 	andi	a1,a1,0xff
 7f4:	10000006 	b	810 <func_808887C4+0x8c>
 7f8:	8fbf0024 	lw	ra,36(sp)
 7fc:	34211e60 	ori	at,at,0x1e60
 800:	00812821 	addu	a1,a0,at
 804:	0c000000 	jal	0 <func_80888040>
 808:	26060164 	addiu	a2,s0,356
 80c:	8fbf0024 	lw	ra,36(sp)
 810:	8fb00020 	lw	s0,32(sp)
 814:	27bd0028 	addiu	sp,sp,40
 818:	03e00008 	jr	ra
 81c:	00000000 	nop

00000820 <func_80888860>:
 820:	27bdffc8 	addiu	sp,sp,-56
 824:	afbf0024 	sw	ra,36(sp)
 828:	afb00020 	sw	s0,32(sp)
 82c:	00808025 	move	s0,a0
 830:	0c000000 	jal	0 <func_80888040>
 834:	afa5003c 	sw	a1,60(sp)
 838:	3c01c1a0 	lui	at,0xc1a0
 83c:	44810000 	mtc1	at,$f0
 840:	c6040028 	lwc1	$f4,40(s0)
 844:	c606000c 	lwc1	$f6,12(s0)
 848:	c60a0070 	lwc1	$f10,112(s0)
 84c:	46062201 	sub.s	$f8,$f4,$f6
 850:	460a0401 	sub.s	$f16,$f0,$f10
 854:	4610403c 	c.lt.s	$f8,$f16
 858:	00000000 	nop
 85c:	45020042 	bc1fl	968 <func_80888860+0x148>
 860:	8fbf0024 	lw	ra,36(sp)
 864:	44809000 	mtc1	zero,$f18
 868:	c6040060 	lwc1	$f4,96(s0)
 86c:	4612203e 	c.le.s	$f4,$f18
 870:	00000000 	nop
 874:	4502003c 	bc1fl	968 <func_80888860+0x148>
 878:	8fbf0024 	lw	ra,36(sp)
 87c:	8e0e0244 	lw	t6,580(s0)
 880:	25cf0001 	addiu	t7,t6,1
 884:	29e10007 	slti	at,t7,7
 888:	14200009 	bnez	at,8b0 <func_80888860+0x90>
 88c:	ae0f0244 	sw	t7,580(s0)
 890:	c606000c 	lwc1	$f6,12(s0)
 894:	02002025 	move	a0,s0
 898:	24050004 	li	a1,4
 89c:	46003280 	add.s	$f10,$f6,$f0
 8a0:	0c000000 	jal	0 <func_80888040>
 8a4:	e60a0028 	swc1	$f10,40(s0)
 8a8:	1000002f 	b	968 <func_80888860+0x148>
 8ac:	8fbf0024 	lw	ra,36(sp)
 8b0:	3c010000 	lui	at,0x0
 8b4:	c4300000 	lwc1	$f16,0(at)
 8b8:	c6080060 	lwc1	$f8,96(s0)
 8bc:	8e190244 	lw	t9,580(s0)
 8c0:	24010001 	li	at,1
 8c4:	46104482 	mul.s	$f18,$f8,$f16
 8c8:	17210026 	bne	t9,at,964 <func_80888860+0x144>
 8cc:	e6120060 	swc1	$f18,96(s0)
 8d0:	8fa2003c 	lw	v0,60(sp)
 8d4:	24050003 	li	a1,3
 8d8:	844807a0 	lh	t0,1952(v0)
 8dc:	00084880 	sll	t1,t0,0x2
 8e0:	00495021 	addu	t2,v0,t1
 8e4:	0c000000 	jal	0 <func_80888040>
 8e8:	8d440790 	lw	a0,1936(t2)
 8ec:	00022400 	sll	a0,v0,0x10
 8f0:	afa2002c 	sw	v0,44(sp)
 8f4:	00042403 	sra	a0,a0,0x10
 8f8:	0c000000 	jal	0 <func_80888040>
 8fc:	2405c350 	li	a1,-15536
 900:	87a4002e 	lh	a0,46(sp)
 904:	00002825 	move	a1,zero
 908:	00003025 	move	a2,zero
 90c:	240701f4 	li	a3,500
 910:	afa00010 	sw	zero,16(sp)
 914:	0c000000 	jal	0 <func_80888040>
 918:	afa40028 	sw	a0,40(sp)
 91c:	8fa40028 	lw	a0,40(sp)
 920:	0c000000 	jal	0 <func_80888040>
 924:	24050014 	li	a1,20
 928:	02002025 	move	a0,s0
 92c:	0c000000 	jal	0 <func_80888040>
 930:	24052835 	li	a1,10293
 934:	c60c008c 	lwc1	$f12,140(s0)
 938:	240500ff 	li	a1,255
 93c:	24060014 	li	a2,20
 940:	0c000000 	jal	0 <func_80888040>
 944:	24070096 	li	a3,150
 948:	02002025 	move	a0,s0
 94c:	0c000000 	jal	0 <func_80888040>
 950:	8fa5003c 	lw	a1,60(sp)
 954:	3c040000 	lui	a0,0x0
 958:	24840000 	addiu	a0,a0,0
 95c:	0c000000 	jal	0 <func_80888040>
 960:	8605001c 	lh	a1,28(s0)
 964:	8fbf0024 	lw	ra,36(sp)
 968:	8fb00020 	lw	s0,32(sp)
 96c:	27bd0038 	addiu	sp,sp,56
 970:	03e00008 	jr	ra
 974:	00000000 	nop

00000978 <func_808889B8>:
 978:	27bdffe0 	addiu	sp,sp,-32
 97c:	afbf0014 	sw	ra,20(sp)
 980:	afa50024 	sw	a1,36(sp)
 984:	8c820118 	lw	v0,280(a0)
 988:	afa40020 	sw	a0,32(sp)
 98c:	0c000000 	jal	0 <func_80888040>
 990:	afa20018 	sw	v0,24(sp)
 994:	8fa20018 	lw	v0,24(sp)
 998:	24010004 	li	at,4
 99c:	8fa40020 	lw	a0,32(sp)
 9a0:	8c430240 	lw	v1,576(v0)
 9a4:	10610007 	beq	v1,at,9c4 <func_808889B8+0x4c>
 9a8:	24010003 	li	at,3
 9ac:	54610017 	bnel	v1,at,a0c <func_808889B8+0x94>
 9b0:	8fbf0014 	lw	ra,20(sp)
 9b4:	8c4e0244 	lw	t6,580(v0)
 9b8:	29c10005 	slti	at,t6,5
 9bc:	54200013 	bnezl	at,a0c <func_808889B8+0x94>
 9c0:	8fbf0014 	lw	ra,20(sp)
 9c4:	8482001c 	lh	v0,28(a0)
 9c8:	24010001 	li	at,1
 9cc:	304200ff 	andi	v0,v0,0xff
 9d0:	1441000b 	bne	v0,at,a00 <func_808889B8+0x88>
 9d4:	00027880 	sll	t7,v0,0x2
 9d8:	3c010000 	lui	at,0x0
 9dc:	002f0821 	addu	at,at,t7
 9e0:	c4240d2c 	lwc1	$f4,3372(at)
 9e4:	c486000c 	lwc1	$f6,12(a0)
 9e8:	24050004 	li	a1,4
 9ec:	46062200 	add.s	$f8,$f4,$f6
 9f0:	0c000000 	jal	0 <func_80888040>
 9f4:	e4880028 	swc1	$f8,40(a0)
 9f8:	10000004 	b	a0c <func_808889B8+0x94>
 9fc:	8fbf0014 	lw	ra,20(sp)
 a00:	0c000000 	jal	0 <func_80888040>
 a04:	24050003 	li	a1,3
 a08:	8fbf0014 	lw	ra,20(sp)
 a0c:	27bd0020 	addiu	sp,sp,32
 a10:	03e00008 	jr	ra
 a14:	00000000 	nop

00000a18 <func_80888A58>:
 a18:	27bdffc8 	addiu	sp,sp,-56
 a1c:	afbf0024 	sw	ra,36(sp)
 a20:	afb00020 	sw	s0,32(sp)
 a24:	00808025 	move	s0,a0
 a28:	0c000000 	jal	0 <func_80888040>
 a2c:	afa5003c 	sw	a1,60(sp)
 a30:	02002025 	move	a0,s0
 a34:	0c000000 	jal	0 <func_80888040>
 a38:	8e050118 	lw	a1,280(s0)
 a3c:	8605001c 	lh	a1,28(s0)
 a40:	3c040000 	lui	a0,0x0
 a44:	30a200ff 	andi	v0,a1,0xff
 a48:	18400003 	blez	v0,a58 <func_80888A58+0x40>
 a4c:	28410006 	slti	at,v0,6
 a50:	5420000c 	bnezl	at,a84 <func_80888A58+0x6c>
 a54:	c6060028 	lwc1	$f6,40(s0)
 a58:	0c000000 	jal	0 <func_80888040>
 a5c:	24840000 	addiu	a0,a0,0
 a60:	3c040000 	lui	a0,0x0
 a64:	3c050000 	lui	a1,0x0
 a68:	24a50000 	addiu	a1,a1,0
 a6c:	24840000 	addiu	a0,a0,0
 a70:	0c000000 	jal	0 <func_80888040>
 a74:	240602b8 	li	a2,696
 a78:	8602001c 	lh	v0,28(s0)
 a7c:	304200ff 	andi	v0,v0,0xff
 a80:	c6060028 	lwc1	$f6,40(s0)
 a84:	c608000c 	lwc1	$f8,12(s0)
 a88:	3c030000 	lui	v1,0x0
 a8c:	24630000 	addiu	v1,v1,0
 a90:	00027080 	sll	t6,v0,0x2
 a94:	46083281 	sub.s	$f10,$f6,$f8
 a98:	006e7821 	addu	t7,v1,t6
 a9c:	c5e4fffc 	lwc1	$f4,-4(t7)
 aa0:	4604503e 	c.le.s	$f10,$f4
 aa4:	00000000 	nop
 aa8:	4502004f 	bc1fl	be8 <func_80888A58+0x1d0>
 aac:	8fbf0024 	lw	ra,36(sp)
 ab0:	44808000 	mtc1	zero,$f16
 ab4:	c6120060 	lwc1	$f18,96(s0)
 ab8:	4610903e 	c.le.s	$f18,$f16
 abc:	00000000 	nop
 ac0:	45020049 	bc1fl	be8 <func_80888A58+0x1d0>
 ac4:	8fbf0024 	lw	ra,36(sp)
 ac8:	8e180244 	lw	t8,580(s0)
 acc:	27190001 	addiu	t9,t8,1
 ad0:	2b210007 	slti	at,t9,7
 ad4:	1420000e 	bnez	at,b10 <func_80888A58+0xf8>
 ad8:	ae190244 	sw	t9,580(s0)
 adc:	8609001c 	lh	t1,28(s0)
 ae0:	c608000c 	lwc1	$f8,12(s0)
 ae4:	02002025 	move	a0,s0
 ae8:	312a00ff 	andi	t2,t1,0xff
 aec:	000a5880 	sll	t3,t2,0x2
 af0:	006b6021 	addu	t4,v1,t3
 af4:	c586fffc 	lwc1	$f6,-4(t4)
 af8:	24050003 	li	a1,3
 afc:	46083100 	add.s	$f4,$f6,$f8
 b00:	0c000000 	jal	0 <func_80888040>
 b04:	e6040028 	swc1	$f4,40(s0)
 b08:	10000037 	b	be8 <func_80888A58+0x1d0>
 b0c:	8fbf0024 	lw	ra,36(sp)
 b10:	3c010000 	lui	at,0x0
 b14:	c4300000 	lwc1	$f16,0(at)
 b18:	c60a0060 	lwc1	$f10,96(s0)
 b1c:	8e0d0244 	lw	t5,580(s0)
 b20:	24010001 	li	at,1
 b24:	46105482 	mul.s	$f18,$f10,$f16
 b28:	15a1002e 	bne	t5,at,be4 <func_80888A58+0x1cc>
 b2c:	e6120060 	swc1	$f18,96(s0)
 b30:	8fa2003c 	lw	v0,60(sp)
 b34:	24050003 	li	a1,3
 b38:	844e07a0 	lh	t6,1952(v0)
 b3c:	000e7880 	sll	t7,t6,0x2
 b40:	004fc021 	addu	t8,v0,t7
 b44:	0c000000 	jal	0 <func_80888040>
 b48:	8f040790 	lw	a0,1936(t8)
 b4c:	00022400 	sll	a0,v0,0x10
 b50:	afa2002c 	sw	v0,44(sp)
 b54:	00042403 	sra	a0,a0,0x10
 b58:	0c000000 	jal	0 <func_80888040>
 b5c:	2405c350 	li	a1,-15536
 b60:	87a4002e 	lh	a0,46(sp)
 b64:	24050014 	li	a1,20
 b68:	24060001 	li	a2,1
 b6c:	00003825 	move	a3,zero
 b70:	afa00010 	sw	zero,16(sp)
 b74:	0c000000 	jal	0 <func_80888040>
 b78:	afa40028 	sw	a0,40(sp)
 b7c:	8fa40028 	lw	a0,40(sp)
 b80:	0c000000 	jal	0 <func_80888040>
 b84:	24050007 	li	a1,7
 b88:	02002025 	move	a0,s0
 b8c:	0c000000 	jal	0 <func_80888040>
 b90:	24052835 	li	a1,10293
 b94:	3c010000 	lui	at,0x0
 b98:	c42c0000 	lwc1	$f12,0(at)
 b9c:	240500ff 	li	a1,255
 ba0:	24060014 	li	a2,20
 ba4:	0c000000 	jal	0 <func_80888040>
 ba8:	24070096 	li	a3,150
 bac:	02002025 	move	a0,s0
 bb0:	0c000000 	jal	0 <func_80888040>
 bb4:	8fa5003c 	lw	a1,60(sp)
 bb8:	8605001c 	lh	a1,28(s0)
 bbc:	24010005 	li	at,5
 bc0:	30b900ff 	andi	t9,a1,0xff
 bc4:	17210004 	bne	t9,at,bd8 <func_80888A58+0x1c0>
 bc8:	00000000 	nop
 bcc:	0c000000 	jal	0 <func_80888040>
 bd0:	24044802 	li	a0,18434
 bd4:	8605001c 	lh	a1,28(s0)
 bd8:	3c040000 	lui	a0,0x0
 bdc:	0c000000 	jal	0 <func_80888040>
 be0:	24840000 	addiu	a0,a0,0
 be4:	8fbf0024 	lw	ra,36(sp)
 be8:	8fb00020 	lw	s0,32(sp)
 bec:	27bd0038 	addiu	sp,sp,56
 bf0:	03e00008 	jr	ra
 bf4:	00000000 	nop

00000bf8 <func_80888C38>:
 bf8:	afa40000 	sw	a0,0(sp)
 bfc:	03e00008 	jr	ra
 c00:	afa50004 	sw	a1,4(sp)

00000c04 <BgHidanHamstep_Update>:
 c04:	27bdffe8 	addiu	sp,sp,-24
 c08:	afbf0014 	sw	ra,20(sp)
 c0c:	8c99023c 	lw	t9,572(a0)
 c10:	0320f809 	jalr	t9
 c14:	00000000 	nop
 c18:	8fbf0014 	lw	ra,20(sp)
 c1c:	27bd0018 	addiu	sp,sp,24
 c20:	03e00008 	jr	ra
 c24:	00000000 	nop

00000c28 <BgHidanHamstep_Draw>:
 c28:	27bdffb8 	addiu	sp,sp,-72
 c2c:	afbf001c 	sw	ra,28(sp)
 c30:	afb00018 	sw	s0,24(sp)
 c34:	afa40048 	sw	a0,72(sp)
 c38:	afa5004c 	sw	a1,76(sp)
 c3c:	8ca50000 	lw	a1,0(a1)
 c40:	3c060000 	lui	a2,0x0
 c44:	24c60000 	addiu	a2,a2,0
 c48:	27a40034 	addiu	a0,sp,52
 c4c:	2407030e 	li	a3,782
 c50:	0c000000 	jal	0 <func_80888040>
 c54:	00a08025 	move	s0,a1
 c58:	8faf004c 	lw	t7,76(sp)
 c5c:	0c000000 	jal	0 <func_80888040>
 c60:	8de40000 	lw	a0,0(t7)
 c64:	8e0202c0 	lw	v0,704(s0)
 c68:	3c19da38 	lui	t9,0xda38
 c6c:	37390003 	ori	t9,t9,0x3
 c70:	24580008 	addiu	t8,v0,8
 c74:	ae1802c0 	sw	t8,704(s0)
 c78:	ac590000 	sw	t9,0(v0)
 c7c:	8fa8004c 	lw	t0,76(sp)
 c80:	3c050000 	lui	a1,0x0
 c84:	24a50000 	addiu	a1,a1,0
 c88:	8d040000 	lw	a0,0(t0)
 c8c:	24060313 	li	a2,787
 c90:	0c000000 	jal	0 <func_80888040>
 c94:	afa20030 	sw	v0,48(sp)
 c98:	8fa30030 	lw	v1,48(sp)
 c9c:	3c060000 	lui	a2,0x0
 ca0:	3c0dde00 	lui	t5,0xde00
 ca4:	ac620004 	sw	v0,4(v1)
 ca8:	8fa90048 	lw	t1,72(sp)
 cac:	3c18de00 	lui	t8,0xde00
 cb0:	24c60000 	addiu	a2,a2,0
 cb4:	852a001c 	lh	t2,28(t1)
 cb8:	27a40034 	addiu	a0,sp,52
 cbc:	314b00ff 	andi	t3,t2,0xff
 cc0:	5560000a 	bnezl	t3,cec <BgHidanHamstep_Draw+0xc4>
 cc4:	8e0202c0 	lw	v0,704(s0)
 cc8:	8e0202c0 	lw	v0,704(s0)
 ccc:	3c0e0601 	lui	t6,0x601
 cd0:	25cea668 	addiu	t6,t6,-22936
 cd4:	244c0008 	addiu	t4,v0,8
 cd8:	ae0c02c0 	sw	t4,704(s0)
 cdc:	ac4e0004 	sw	t6,4(v0)
 ce0:	10000008 	b	d04 <BgHidanHamstep_Draw+0xdc>
 ce4:	ac4d0000 	sw	t5,0(v0)
 ce8:	8e0202c0 	lw	v0,704(s0)
 cec:	3c190601 	lui	t9,0x601
 cf0:	2739a548 	addiu	t9,t9,-23224
 cf4:	244f0008 	addiu	t7,v0,8
 cf8:	ae0f02c0 	sw	t7,704(s0)
 cfc:	ac590004 	sw	t9,4(v0)
 d00:	ac580000 	sw	t8,0(v0)
 d04:	8fa8004c 	lw	t0,76(sp)
 d08:	2407031c 	li	a3,796
 d0c:	0c000000 	jal	0 <func_80888040>
 d10:	8d050000 	lw	a1,0(t0)
 d14:	8fbf001c 	lw	ra,28(sp)
 d18:	8fb00018 	lw	s0,24(sp)
 d1c:	27bd0048 	addiu	sp,sp,72
 d20:	03e00008 	jr	ra
 d24:	00000000 	nop
	...
