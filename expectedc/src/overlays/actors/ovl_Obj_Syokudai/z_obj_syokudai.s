
build/src/overlays/actors/ovl_Obj_Syokudai/z_obj_syokudai.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjSyokudai_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afbf002c 	sw	ra,44(sp)
   8:	afb10028 	sw	s1,40(sp)
   c:	afb00024 	sw	s0,36(sp)
  10:	848e001c 	lh	t6,28(a0)
  14:	00a08825 	move	s1,a1
  18:	3c050000 	lui	a1,0x0
  1c:	31cff000 	andi	t7,t6,0xf000
  20:	00808025 	move	s0,a0
  24:	afaf0034 	sw	t7,52(sp)
  28:	0c000000 	jal	0 <ObjSyokudai_Init>
  2c:	24a50078 	addiu	a1,a1,120
  30:	44800000 	mtc1	zero,$f0
  34:	260400b4 	addiu	a0,s0,180
  38:	00003025 	move	a2,zero
  3c:	44050000 	mfc1	a1,$f0
  40:	44070000 	mfc1	a3,$f0
  44:	0c000000 	jal	0 <ObjSyokudai_Init>
  48:	00000000 	nop
  4c:	2605014c 	addiu	a1,s0,332
  50:	afa50030 	sw	a1,48(sp)
  54:	0c000000 	jal	0 <ObjSyokudai_Init>
  58:	02202025 	move	a0,s1
  5c:	3c070000 	lui	a3,0x0
  60:	8fa50030 	lw	a1,48(sp)
  64:	24e70020 	addiu	a3,a3,32
  68:	02202025 	move	a0,s1
  6c:	0c000000 	jal	0 <ObjSyokudai_Init>
  70:	02003025 	move	a2,s0
  74:	8618001c 	lh	t8,28(s0)
  78:	3c080000 	lui	t0,0x0
  7c:	26050198 	addiu	a1,s0,408
  80:	0018cb03 	sra	t9,t8,0xc
  84:	01194021 	addu	t0,t0,t9
  88:	91080088 	lbu	t0,136(t0)
  8c:	02202025 	move	a0,s1
  90:	a2080160 	sb	t0,352(s0)
  94:	0c000000 	jal	0 <ObjSyokudai_Init>
  98:	afa50030 	sw	a1,48(sp)
  9c:	3c070000 	lui	a3,0x0
  a0:	8fa50030 	lw	a1,48(sp)
  a4:	24e7004c 	addiu	a3,a3,76
  a8:	02202025 	move	a0,s1
  ac:	0c000000 	jal	0 <ObjSyokudai_Init>
  b0:	02003025 	move	a2,s0
  b4:	c6040024 	lwc1	$f4,36(s0)
  b8:	3c01428c 	lui	at,0x428c
  bc:	44815000 	mtc1	at,$f10
  c0:	c6080028 	lwc1	$f8,40(s0)
  c4:	4600218d 	trunc.w.s	$f6,$f4
  c8:	c604002c 	lwc1	$f4,44(s0)
  cc:	240900ff 	li	t1,255
  d0:	460a4400 	add.s	$f16,$f8,$f10
  d4:	44053000 	mfc1	a1,$f6
  d8:	a20900ae 	sb	t1,174(s0)
  dc:	4600218d 	trunc.w.s	$f6,$f4
  e0:	260401ec 	addiu	a0,s0,492
  e4:	240d00ff 	li	t5,255
  e8:	4600848d 	trunc.w.s	$f18,$f16
  ec:	44073000 	mfc1	a3,$f6
  f0:	240e00ff 	li	t6,255
  f4:	240f00b4 	li	t7,180
  f8:	44069000 	mfc1	a2,$f18
  fc:	2418ffff 	li	t8,-1
 100:	00052c00 	sll	a1,a1,0x10
 104:	00073c00 	sll	a3,a3,0x10
 108:	00063400 	sll	a2,a2,0x10
 10c:	00063403 	sra	a2,a2,0x10
 110:	00073c03 	sra	a3,a3,0x10
 114:	00052c03 	sra	a1,a1,0x10
 118:	afb8001c 	sw	t8,28(sp)
 11c:	afaf0018 	sw	t7,24(sp)
 120:	afae0014 	sw	t6,20(sp)
 124:	afad0010 	sw	t5,16(sp)
 128:	0c000000 	jal	0 <ObjSyokudai_Init>
 12c:	afa40030 	sw	a0,48(sp)
 130:	02202025 	move	a0,s1
 134:	262507a8 	addiu	a1,s1,1960
 138:	0c000000 	jal	0 <ObjSyokudai_Init>
 13c:	8fa60030 	lw	a2,48(sp)
 140:	8603001c 	lh	v1,28(s0)
 144:	ae0201e8 	sw	v0,488(s0)
 148:	8fa80034 	lw	t0,52(sp)
 14c:	30790400 	andi	t9,v1,0x400
 150:	17200006 	bnez	t9,16c <ObjSyokudai_Init+0x16c>
 154:	24010002 	li	at,2
 158:	11010006 	beq	t0,at,174 <ObjSyokudai_Init+0x174>
 15c:	02202025 	move	a0,s1
 160:	0c000000 	jal	0 <ObjSyokudai_Init>
 164:	3065003f 	andi	a1,v1,0x3f
 168:	10400002 	beqz	v0,174 <ObjSyokudai_Init+0x174>
 16c:	2409ffff 	li	t1,-1
 170:	a60901e4 	sh	t1,484(s0)
 174:	0c000000 	jal	0 <ObjSyokudai_Init>
 178:	00000000 	nop
 17c:	3c0141a0 	lui	at,0x41a0
 180:	44814000 	mtc1	at,$f8
 184:	3c010000 	lui	at,0x0
 188:	02002025 	move	a0,s0
 18c:	46080282 	mul.s	$f10,$f0,$f8
 190:	3c054270 	lui	a1,0x4270
 194:	4600540d 	trunc.w.s	$f16,$f10
 198:	440b8000 	mfc1	t3,$f16
 19c:	00000000 	nop
 1a0:	a20b01e6 	sb	t3,486(s0)
 1a4:	0c000000 	jal	0 <ObjSyokudai_Init>
 1a8:	ac200000 	sw	zero,0(at)
 1ac:	8fbf002c 	lw	ra,44(sp)
 1b0:	8fb00024 	lw	s0,36(sp)
 1b4:	8fb10028 	lw	s1,40(sp)
 1b8:	03e00008 	jr	ra
 1bc:	27bd0040 	addiu	sp,sp,64

000001c0 <ObjSyokudai_Destroy>:
 1c0:	27bdffe8 	addiu	sp,sp,-24
 1c4:	afa40018 	sw	a0,24(sp)
 1c8:	afa5001c 	sw	a1,28(sp)
 1cc:	00a02025 	move	a0,a1
 1d0:	8fa50018 	lw	a1,24(sp)
 1d4:	afbf0014 	sw	ra,20(sp)
 1d8:	0c000000 	jal	0 <ObjSyokudai_Init>
 1dc:	24a5014c 	addiu	a1,a1,332
 1e0:	8fa50018 	lw	a1,24(sp)
 1e4:	8fa4001c 	lw	a0,28(sp)
 1e8:	0c000000 	jal	0 <ObjSyokudai_Init>
 1ec:	24a50198 	addiu	a1,a1,408
 1f0:	8fa4001c 	lw	a0,28(sp)
 1f4:	8fae0018 	lw	t6,24(sp)
 1f8:	248507a8 	addiu	a1,a0,1960
 1fc:	0c000000 	jal	0 <ObjSyokudai_Init>
 200:	8dc601e8 	lw	a2,488(t6)
 204:	8fbf0014 	lw	ra,20(sp)
 208:	27bd0018 	addiu	sp,sp,24
 20c:	03e00008 	jr	ra
 210:	00000000 	nop

00000214 <ObjSyokudai_Update>:
 214:	27bdff80 	addiu	sp,sp,-128
 218:	afbf0024 	sw	ra,36(sp)
 21c:	afb00020 	sw	s0,32(sp)
 220:	afa50084 	sw	a1,132(sp)
 224:	8482001c 	lh	v0,28(a0)
 228:	2418ffff 	li	t8,-1
 22c:	2401000a 	li	at,10
 230:	00024983 	sra	t1,v0,0x6
 234:	3129000f 	andi	t1,t1,0xf
 238:	304e003f 	andi	t6,v0,0x3f
 23c:	304ff000 	andi	t7,v0,0xf000
 240:	00808025 	move	s0,a0
 244:	afae0070 	sw	t6,112(sp)
 248:	afaf006c 	sw	t7,108(sp)
 24c:	afb8005c 	sw	t8,92(sp)
 250:	a3a0005b 	sb	zero,91(sp)
 254:	15210002 	bne	t1,at,260 <ObjSyokudai_Update+0x4c>
 258:	afa90068 	sw	t1,104(sp)
 25c:	24090018 	li	t1,24
 260:	8fa40084 	lw	a0,132(sp)
 264:	8e060024 	lw	a2,36(s0)
 268:	8e07002c 	lw	a3,44(s0)
 26c:	27aa0060 	addiu	t2,sp,96
 270:	27ab0064 	addiu	t3,sp,100
 274:	afab0014 	sw	t3,20(sp)
 278:	afaa0010 	sw	t2,16(sp)
 27c:	afa90074 	sw	t1,116(sp)
 280:	0c000000 	jal	0 <ObjSyokudai_Init>
 284:	248507c0 	addiu	a1,a0,1984
 288:	10400018 	beqz	v0,2ec <ObjSyokudai_Update+0xd8>
 28c:	8fa90074 	lw	t1,116(sp)
 290:	c7a60060 	lwc1	$f6,96(sp)
 294:	c6080028 	lwc1	$f8,40(s0)
 298:	3c014250 	lui	at,0x4250
 29c:	44812000 	mtc1	at,$f4
 2a0:	46083281 	sub.s	$f10,$f6,$f8
 2a4:	460a203c 	c.lt.s	$f4,$f10
 2a8:	00000000 	nop
 2ac:	45020010 	bc1fl	2f0 <ObjSyokudai_Update+0xdc>
 2b0:	860f001c 	lh	t7,28(s0)
 2b4:	a60001e4 	sh	zero,484(s0)
 2b8:	8fac006c 	lw	t4,108(sp)
 2bc:	24010001 	li	at,1
 2c0:	8fa50070 	lw	a1,112(sp)
 2c4:	158100e6 	bne	t4,at,660 <ObjSyokudai_Update+0x44c>
 2c8:	8fa40084 	lw	a0,132(sp)
 2cc:	0c000000 	jal	0 <ObjSyokudai_Init>
 2d0:	afa90074 	sw	t1,116(sp)
 2d4:	8fa90074 	lw	t1,116(sp)
 2d8:	240d0001 	li	t5,1
 2dc:	512000e1 	beqzl	t1,664 <ObjSyokudai_Update+0x450>
 2e0:	2605014c 	addiu	a1,s0,332
 2e4:	100000de 	b	660 <ObjSyokudai_Update+0x44c>
 2e8:	a60d01e4 	sh	t5,484(s0)
 2ec:	860f001c 	lh	t7,28(s0)
 2f0:	8fae0084 	lw	t6,132(sp)
 2f4:	00003825 	move	a3,zero
 2f8:	31f80400 	andi	t8,t7,0x400
 2fc:	13000003 	beqz	t8,30c <ObjSyokudai_Update+0xf8>
 300:	8dc81c44 	lw	t0,7236(t6)
 304:	2419ffff 	li	t9,-1
 308:	a61901e4 	sh	t9,484(s0)
 30c:	11200025 	beqz	t1,3a4 <ObjSyokudai_Update+0x190>
 310:	8fa40084 	lw	a0,132(sp)
 314:	8fa50070 	lw	a1,112(sp)
 318:	afa7004c 	sw	a3,76(sp)
 31c:	afa80054 	sw	t0,84(sp)
 320:	0c000000 	jal	0 <ObjSyokudai_Init>
 324:	afa90074 	sw	t1,116(sp)
 328:	8fa7004c 	lw	a3,76(sp)
 32c:	8fa80054 	lw	t0,84(sp)
 330:	10400017 	beqz	v0,390 <ObjSyokudai_Update+0x17c>
 334:	8fa90074 	lw	t1,116(sp)
 338:	860301e4 	lh	v1,484(s0)
 33c:	240affff 	li	t2,-1
 340:	1460000f 	bnez	v1,380 <ObjSyokudai_Update+0x16c>
 344:	00000000 	nop
 348:	a60a01e4 	sh	t2,484(s0)
 34c:	8fab006c 	lw	t3,108(sp)
 350:	8fa40084 	lw	a0,132(sp)
 354:	02002825 	move	a1,s0
 358:	55600013 	bnezl	t3,3a8 <ObjSyokudai_Update+0x194>
 35c:	920f01a9 	lbu	t7,425(s0)
 360:	afa7004c 	sw	a3,76(sp)
 364:	afa80054 	sw	t0,84(sp)
 368:	0c000000 	jal	0 <ObjSyokudai_Init>
 36c:	afa90074 	sw	t1,116(sp)
 370:	8fa7004c 	lw	a3,76(sp)
 374:	8fa80054 	lw	t0,84(sp)
 378:	1000000a 	b	3a4 <ObjSyokudai_Update+0x190>
 37c:	8fa90074 	lw	t1,116(sp)
 380:	18600008 	blez	v1,3a4 <ObjSyokudai_Update+0x190>
 384:	240cffff 	li	t4,-1
 388:	10000006 	b	3a4 <ObjSyokudai_Update+0x190>
 38c:	a60c01e4 	sh	t4,484(s0)
 390:	860d01e4 	lh	t5,484(s0)
 394:	240e0014 	li	t6,20
 398:	05a30003 	bgezl	t5,3a8 <ObjSyokudai_Update+0x194>
 39c:	920f01a9 	lbu	t7,425(s0)
 3a0:	a60e01e4 	sh	t6,484(s0)
 3a4:	920f01a9 	lbu	t7,425(s0)
 3a8:	31f80002 	andi	t8,t7,0x2
 3ac:	5300000c 	beqzl	t8,3e0 <ObjSyokudai_Update+0x1cc>
 3b0:	810b0151 	lb	t3,337(t0)
 3b4:	8e1901d4 	lw	t9,468(s0)
 3b8:	3c010002 	lui	at,0x2
 3bc:	34210820 	ori	at,at,0x820
 3c0:	8f220000 	lw	v0,0(t9)
 3c4:	00415024 	and	t2,v0,at
 3c8:	11400002 	beqz	t2,3d4 <ObjSyokudai_Update+0x1c0>
 3cc:	00000000 	nop
 3d0:	24070001 	li	a3,1
 3d4:	10000021 	b	45c <ObjSyokudai_Update+0x248>
 3d8:	afa20048 	sw	v0,72(sp)
 3dc:	810b0151 	lb	t3,337(t0)
 3e0:	24010006 	li	at,6
 3e4:	250408b8 	addiu	a0,t0,2232
 3e8:	1561001c 	bne	t3,at,45c <ObjSyokudai_Update+0x248>
 3ec:	26050024 	addiu	a1,s0,36
 3f0:	27a6003c 	addiu	a2,sp,60
 3f4:	afa7004c 	sw	a3,76(sp)
 3f8:	afa80054 	sw	t0,84(sp)
 3fc:	0c000000 	jal	0 <ObjSyokudai_Init>
 400:	afa90074 	sw	t1,116(sp)
 404:	3c014286 	lui	at,0x4286
 408:	c7a00040 	lwc1	$f0,64(sp)
 40c:	44818000 	mtc1	at,$f16
 410:	c7a2003c 	lwc1	$f2,60(sp)
 414:	c7ac0044 	lwc1	$f12,68(sp)
 418:	46100001 	sub.s	$f0,$f0,$f16
 41c:	46021482 	mul.s	$f18,$f2,$f2
 420:	3c0143c8 	lui	at,0x43c8
 424:	44818000 	mtc1	at,$f16
 428:	46000182 	mul.s	$f6,$f0,$f0
 42c:	8fa7004c 	lw	a3,76(sp)
 430:	8fa80054 	lw	t0,84(sp)
 434:	460c6102 	mul.s	$f4,$f12,$f12
 438:	8fa90074 	lw	t1,116(sp)
 43c:	e7a00040 	swc1	$f0,64(sp)
 440:	46069200 	add.s	$f8,$f18,$f6
 444:	46044280 	add.s	$f10,$f8,$f4
 448:	4610503c 	c.lt.s	$f10,$f16
 44c:	00000000 	nop
 450:	45000002 	bc1f	45c <ObjSyokudai_Update+0x248>
 454:	00000000 	nop
 458:	2407ffff 	li	a3,-1
 45c:	10e00080 	beqz	a3,660 <ObjSyokudai_Update+0x44c>
 460:	8fa20048 	lw	v0,72(sp)
 464:	860301e4 	lh	v1,484(s0)
 468:	8fac006c 	lw	t4,108(sp)
 46c:	10600037 	beqz	v1,54c <ObjSyokudai_Update+0x338>
 470:	00000000 	nop
 474:	04e10017 	bgez	a3,4d4 <ObjSyokudai_Update+0x2c0>
 478:	304f0020 	andi	t7,v0,0x20
 47c:	85020860 	lh	v0,2144(t0)
 480:	3c070000 	lui	a3,0x0
 484:	24e70000 	addiu	a3,a3,0
 488:	1440000d 	bnez	v0,4c0 <ObjSyokudai_Update+0x2ac>
 48c:	284100c8 	slti	at,v0,200
 490:	240c00d2 	li	t4,210
 494:	3c0d0000 	lui	t5,0x0
 498:	a50c0860 	sh	t4,2144(t0)
 49c:	25ad0000 	addiu	t5,t5,0
 4a0:	afad0014 	sw	t5,20(sp)
 4a4:	afa70010 	sw	a3,16(sp)
 4a8:	24042822 	li	a0,10274
 4ac:	260500e4 	addiu	a1,s0,228
 4b0:	0c000000 	jal	0 <ObjSyokudai_Init>
 4b4:	24060004 	li	a2,4
 4b8:	10000014 	b	50c <ObjSyokudai_Update+0x2f8>
 4bc:	860301e4 	lh	v1,484(s0)
 4c0:	10200012 	beqz	at,50c <ObjSyokudai_Update+0x2f8>
 4c4:	240e00c8 	li	t6,200
 4c8:	a50e0860 	sh	t6,2144(t0)
 4cc:	1000000f 	b	50c <ObjSyokudai_Update+0x2f8>
 4d0:	860301e4 	lh	v1,484(s0)
 4d4:	11e0000d 	beqz	t7,50c <ObjSyokudai_Update+0x2f8>
 4d8:	00000000 	nop
 4dc:	8e0201a0 	lw	v0,416(s0)
 4e0:	8c580130 	lw	t8,304(v0)
 4e4:	13000009 	beqz	t8,50c <ObjSyokudai_Update+0x2f8>
 4e8:	00000000 	nop
 4ec:	84590000 	lh	t9,0(v0)
 4f0:	24010016 	li	at,22
 4f4:	240a0800 	li	t2,2048
 4f8:	17210004 	bne	t9,at,50c <ObjSyokudai_Update+0x2f8>
 4fc:	00000000 	nop
 500:	a440001c 	sh	zero,28(v0)
 504:	ac4a01a8 	sw	t2,424(v0)
 508:	860301e4 	lh	v1,484(s0)
 50c:	04600054 	bltz	v1,660 <ObjSyokudai_Update+0x44c>
 510:	8fa20068 	lw	v0,104(sp)
 514:	00400821 	move	at,v0
 518:	00021080 	sll	v0,v0,0x2
 51c:	00411023 	subu	v0,v0,at
 520:	000210c0 	sll	v0,v0,0x3
 524:	00411021 	addu	v0,v0,at
 528:	00021040 	sll	v0,v0,0x1
 52c:	24420064 	addiu	v0,v0,100
 530:	0062082a 	slt	at,v1,v0
 534:	1020004a 	beqz	at,660 <ObjSyokudai_Update+0x44c>
 538:	8fab006c 	lw	t3,108(sp)
 53c:	51600049 	beqzl	t3,664 <ObjSyokudai_Update+0x450>
 540:	2605014c 	addiu	a1,s0,332
 544:	10000046 	b	660 <ObjSyokudai_Update+0x44c>
 548:	a60201e4 	sh	v0,484(s0)
 54c:	51800045 	beqzl	t4,664 <ObjSyokudai_Update+0x450>
 550:	2605014c 	addiu	a1,s0,332
 554:	18e00005 	blez	a3,56c <ObjSyokudai_Update+0x358>
 558:	3c010002 	lui	at,0x2
 55c:	34210800 	ori	at,at,0x800
 560:	00416824 	and	t5,v0,at
 564:	15a00006 	bnez	t5,580 <ObjSyokudai_Update+0x36c>
 568:	00000000 	nop
 56c:	04e3003d 	bgezl	a3,664 <ObjSyokudai_Update+0x450>
 570:	2605014c 	addiu	a1,s0,332
 574:	850e0860 	lh	t6,2144(t0)
 578:	51c0003a 	beqzl	t6,664 <ObjSyokudai_Update+0x450>
 57c:	2605014c 	addiu	a1,s0,332
 580:	04e10007 	bgez	a3,5a0 <ObjSyokudai_Update+0x38c>
 584:	3c0b0000 	lui	t3,0x0
 588:	850f0860 	lh	t7,2144(t0)
 58c:	241800c8 	li	t8,200
 590:	29e100c8 	slti	at,t7,200
 594:	10200002 	beqz	at,5a0 <ObjSyokudai_Update+0x38c>
 598:	00000000 	nop
 59c:	a5180860 	sh	t8,2144(t0)
 5a0:	1520000e 	bnez	t1,5dc <ObjSyokudai_Update+0x3c8>
 5a4:	2419ffff 	li	t9,-1
 5a8:	a61901e4 	sh	t9,484(s0)
 5ac:	8faa006c 	lw	t2,108(sp)
 5b0:	24010002 	li	at,2
 5b4:	8fa40084 	lw	a0,132(sp)
 5b8:	1141001f 	beq	t2,at,638 <ObjSyokudai_Update+0x424>
 5bc:	00000000 	nop
 5c0:	0c000000 	jal	0 <ObjSyokudai_Init>
 5c4:	8fa50070 	lw	a1,112(sp)
 5c8:	8fa40084 	lw	a0,132(sp)
 5cc:	0c000000 	jal	0 <ObjSyokudai_Init>
 5d0:	02002825 	move	a1,s0
 5d4:	10000018 	b	638 <ObjSyokudai_Update+0x424>
 5d8:	00000000 	nop
 5dc:	8d6b0000 	lw	t3,0(t3)
 5e0:	3c010000 	lui	at,0x0
 5e4:	8fae0068 	lw	t6,104(sp)
 5e8:	256c0001 	addiu	t4,t3,1
 5ec:	ac2c0000 	sw	t4,0(at)
 5f0:	0189082a 	slt	at,t4,t1
 5f4:	1420000a 	bnez	at,620 <ObjSyokudai_Update+0x40c>
 5f8:	000e7880 	sll	t7,t6,0x2
 5fc:	8fa40084 	lw	a0,132(sp)
 600:	0c000000 	jal	0 <ObjSyokudai_Init>
 604:	8fa50070 	lw	a1,112(sp)
 608:	8fa40084 	lw	a0,132(sp)
 60c:	0c000000 	jal	0 <ObjSyokudai_Init>
 610:	02002825 	move	a1,s0
 614:	240dffff 	li	t5,-1
 618:	10000007 	b	638 <ObjSyokudai_Update+0x424>
 61c:	a60d01e4 	sh	t5,484(s0)
 620:	01ee7823 	subu	t7,t7,t6
 624:	000f78c0 	sll	t7,t7,0x3
 628:	01ee7821 	addu	t7,t7,t6
 62c:	000f7840 	sll	t7,t7,0x1
 630:	25f8006e 	addiu	t8,t7,110
 634:	a61801e4 	sh	t8,484(s0)
 638:	3c070000 	lui	a3,0x0
 63c:	3c190000 	lui	t9,0x0
 640:	24e70000 	addiu	a3,a3,0
 644:	27390000 	addiu	t9,t9,0
 648:	afb90014 	sw	t9,20(sp)
 64c:	afa70010 	sw	a3,16(sp)
 650:	24042822 	li	a0,10274
 654:	260500e4 	addiu	a1,s0,228
 658:	0c000000 	jal	0 <ObjSyokudai_Init>
 65c:	24060004 	li	a2,4
 660:	2605014c 	addiu	a1,s0,332
 664:	afa5002c 	sw	a1,44(sp)
 668:	0c000000 	jal	0 <ObjSyokudai_Init>
 66c:	02002025 	move	a0,s0
 670:	8fa40084 	lw	a0,132(sp)
 674:	3c010001 	lui	at,0x1
 678:	34211e60 	ori	at,at,0x1e60
 67c:	00812821 	addu	a1,a0,at
 680:	afa50030 	sw	a1,48(sp)
 684:	0c000000 	jal	0 <ObjSyokudai_Init>
 688:	8fa6002c 	lw	a2,44(sp)
 68c:	8fa40084 	lw	a0,132(sp)
 690:	8fa50030 	lw	a1,48(sp)
 694:	0c000000 	jal	0 <ObjSyokudai_Init>
 698:	8fa6002c 	lw	a2,44(sp)
 69c:	26060198 	addiu	a2,s0,408
 6a0:	00c02825 	move	a1,a2
 6a4:	afa6002c 	sw	a2,44(sp)
 6a8:	0c000000 	jal	0 <ObjSyokudai_Init>
 6ac:	02002025 	move	a0,s0
 6b0:	8fa40084 	lw	a0,132(sp)
 6b4:	8fa6002c 	lw	a2,44(sp)
 6b8:	0c000000 	jal	0 <ObjSyokudai_Init>
 6bc:	8fa50030 	lw	a1,48(sp)
 6c0:	860301e4 	lh	v1,484(s0)
 6c4:	1860000d 	blez	v1,6fc <ObjSyokudai_Update+0x4e8>
 6c8:	246affff 	addiu	t2,v1,-1
 6cc:	a60a01e4 	sh	t2,484(s0)
 6d0:	860301e4 	lh	v1,484(s0)
 6d4:	8fab006c 	lw	t3,108(sp)
 6d8:	14600008 	bnez	v1,6fc <ObjSyokudai_Update+0x4e8>
 6dc:	00000000 	nop
 6e0:	11600006 	beqz	t3,6fc <ObjSyokudai_Update+0x4e8>
 6e4:	3c020000 	lui	v0,0x0
 6e8:	24420000 	addiu	v0,v0,0
 6ec:	8c4c0000 	lw	t4,0(v0)
 6f0:	258dffff 	addiu	t5,t4,-1
 6f4:	ac4d0000 	sw	t5,0(v0)
 6f8:	860301e4 	lh	v1,484(s0)
 6fc:	5060003f 	beqzl	v1,7fc <ObjSyokudai_Update+0x5e8>
 700:	93a6005b 	lbu	a2,91(sp)
 704:	04600002 	bltz	v1,710 <ObjSyokudai_Update+0x4fc>
 708:	28610014 	slti	at,v1,20
 70c:	14200003 	bnez	at,71c <ObjSyokudai_Update+0x508>
 710:	240e00c8 	li	t6,200
 714:	1000000d 	b	74c <ObjSyokudai_Update+0x538>
 718:	afae005c 	sw	t6,92(sp)
 71c:	44839000 	mtc1	v1,$f18
 720:	3c014348 	lui	at,0x4348
 724:	44814000 	mtc1	at,$f8
 728:	468091a0 	cvt.s.w	$f6,$f18
 72c:	3c0141a0 	lui	at,0x41a0
 730:	44815000 	mtc1	at,$f10
 734:	46083102 	mul.s	$f4,$f6,$f8
 738:	460a2403 	div.s	$f16,$f4,$f10
 73c:	4600848d 	trunc.w.s	$f18,$f16
 740:	44189000 	mfc1	t8,$f18
 744:	00000000 	nop
 748:	afb8005c 	sw	t8,92(sp)
 74c:	0c000000 	jal	0 <ObjSyokudai_Init>
 750:	00000000 	nop
 754:	3c0142fe 	lui	at,0x42fe
 758:	44813000 	mtc1	at,$f6
 75c:	240a0001 	li	t2,1
 760:	3c014f00 	lui	at,0x4f00
 764:	46060202 	mul.s	$f8,$f0,$f6
 768:	02002025 	move	a0,s0
 76c:	24052031 	li	a1,8241
 770:	4459f800 	cfc1	t9,$31
 774:	44caf800 	ctc1	t2,$31
 778:	00000000 	nop
 77c:	46004124 	cvt.w.s	$f4,$f8
 780:	444af800 	cfc1	t2,$31
 784:	00000000 	nop
 788:	314a0078 	andi	t2,t2,0x78
 78c:	51400013 	beqzl	t2,7dc <ObjSyokudai_Update+0x5c8>
 790:	440a2000 	mfc1	t2,$f4
 794:	44812000 	mtc1	at,$f4
 798:	240a0001 	li	t2,1
 79c:	46044101 	sub.s	$f4,$f8,$f4
 7a0:	44caf800 	ctc1	t2,$31
 7a4:	00000000 	nop
 7a8:	46002124 	cvt.w.s	$f4,$f4
 7ac:	444af800 	cfc1	t2,$31
 7b0:	00000000 	nop
 7b4:	314a0078 	andi	t2,t2,0x78
 7b8:	15400005 	bnez	t2,7d0 <ObjSyokudai_Update+0x5bc>
 7bc:	00000000 	nop
 7c0:	440a2000 	mfc1	t2,$f4
 7c4:	3c018000 	lui	at,0x8000
 7c8:	10000007 	b	7e8 <ObjSyokudai_Update+0x5d4>
 7cc:	01415025 	or	t2,t2,at
 7d0:	10000005 	b	7e8 <ObjSyokudai_Update+0x5d4>
 7d4:	240affff 	li	t2,-1
 7d8:	440a2000 	mfc1	t2,$f4
 7dc:	00000000 	nop
 7e0:	0540fffb 	bltz	t2,7d0 <ObjSyokudai_Update+0x5bc>
 7e4:	00000000 	nop
 7e8:	44d9f800 	ctc1	t9,$31
 7ec:	254c0080 	addiu	t4,t2,128
 7f0:	0c000000 	jal	0 <ObjSyokudai_Init>
 7f4:	a3ac005b 	sb	t4,91(sp)
 7f8:	93a6005b 	lbu	a2,91(sp)
 7fc:	8fae005c 	lw	t6,92(sp)
 800:	260401ec 	addiu	a0,s0,492
 804:	00003825 	move	a3,zero
 808:	00c02825 	move	a1,a2
 80c:	0c000000 	jal	0 <ObjSyokudai_Init>
 810:	afae0010 	sw	t6,16(sp)
 814:	920f01e6 	lbu	t7,486(s0)
 818:	25f80001 	addiu	t8,t7,1
 81c:	a21801e6 	sb	t8,486(s0)
 820:	8fbf0024 	lw	ra,36(sp)
 824:	8fb00020 	lw	s0,32(sp)
 828:	27bd0080 	addiu	sp,sp,128
 82c:	03e00008 	jr	ra
 830:	00000000 	nop

00000834 <ObjSyokudai_Draw>:
 834:	27bdff70 	addiu	sp,sp,-144
 838:	afbf0044 	sw	ra,68(sp)
 83c:	afb20040 	sw	s2,64(sp)
 840:	afb1003c 	sw	s1,60(sp)
 844:	afb00038 	sw	s0,56(sp)
 848:	848e001c 	lh	t6,28(a0)
 84c:	00a09025 	move	s2,a1
 850:	00808825 	move	s1,a0
 854:	000e7983 	sra	t7,t6,0x6
 858:	31f8000f 	andi	t8,t7,0xf
 85c:	0018c880 	sll	t9,t8,0x2
 860:	0338c823 	subu	t9,t9,t8
 864:	0019c8c0 	sll	t9,t9,0x3
 868:	0338c821 	addu	t9,t9,t8
 86c:	0019c840 	sll	t9,t9,0x1
 870:	27280064 	addiu	t0,t9,100
 874:	afa80084 	sw	t0,132(sp)
 878:	8ca50000 	lw	a1,0(a1)
 87c:	3c060000 	lui	a2,0x0
 880:	24c60000 	addiu	a2,a2,0
 884:	27a40070 	addiu	a0,sp,112
 888:	240702c3 	li	a3,707
 88c:	0c000000 	jal	0 <ObjSyokudai_Init>
 890:	00a08025 	move	s0,a1
 894:	0c000000 	jal	0 <ObjSyokudai_Init>
 898:	8e440000 	lw	a0,0(s2)
 89c:	8e0202c0 	lw	v0,704(s0)
 8a0:	3c0ada38 	lui	t2,0xda38
 8a4:	354a0003 	ori	t2,t2,0x3
 8a8:	24490008 	addiu	t1,v0,8
 8ac:	ae0902c0 	sw	t1,704(s0)
 8b0:	ac4a0000 	sw	t2,0(v0)
 8b4:	8e440000 	lw	a0,0(s2)
 8b8:	3c050000 	lui	a1,0x0
 8bc:	24a50014 	addiu	a1,a1,20
 8c0:	240602ca 	li	a2,714
 8c4:	0c000000 	jal	0 <ObjSyokudai_Init>
 8c8:	afa2006c 	sw	v0,108(sp)
 8cc:	8fa3006c 	lw	v1,108(sp)
 8d0:	3c0cde00 	lui	t4,0xde00
 8d4:	3c180000 	lui	t8,0x0
 8d8:	ac620004 	sw	v0,4(v1)
 8dc:	8e0202c0 	lw	v0,704(s0)
 8e0:	3c013f80 	lui	at,0x3f80
 8e4:	244b0008 	addiu	t3,v0,8
 8e8:	ae0b02c0 	sw	t3,704(s0)
 8ec:	ac4c0000 	sw	t4,0(v0)
 8f0:	962d001c 	lhu	t5,28(s1)
 8f4:	000d7303 	sra	t6,t5,0xc
 8f8:	000e7880 	sll	t7,t6,0x2
 8fc:	030fc021 	addu	t8,t8,t7
 900:	8f18008c 	lw	t8,140(t8)
 904:	ac580004 	sw	t8,4(v0)
 908:	862201e4 	lh	v0,484(s1)
 90c:	8fa30084 	lw	v1,132(sp)
 910:	1040007f 	beqz	v0,b10 <ObjSyokudai_Draw+0x2dc>
 914:	00000000 	nop
 918:	44810000 	mtc1	at,$f0
 91c:	0062082a 	slt	at,v1,v0
 920:	10200008 	beqz	at,944 <ObjSyokudai_Draw+0x110>
 924:	0062c823 	subu	t9,v1,v0
 928:	2728000a 	addiu	t0,t9,10
 92c:	44882000 	mtc1	t0,$f4
 930:	3c014120 	lui	at,0x4120
 934:	44814000 	mtc1	at,$f8
 938:	468021a0 	cvt.s.w	$f6,$f4
 93c:	1000000a 	b	968 <ObjSyokudai_Draw+0x134>
 940:	46083003 	div.s	$f0,$f6,$f8
 944:	18400008 	blez	v0,968 <ObjSyokudai_Draw+0x134>
 948:	28410014 	slti	at,v0,20
 94c:	10200006 	beqz	at,968 <ObjSyokudai_Draw+0x134>
 950:	00000000 	nop
 954:	44825000 	mtc1	v0,$f10
 958:	3c0141a0 	lui	at,0x41a0
 95c:	44819000 	mtc1	at,$f18
 960:	46805420 	cvt.s.w	$f16,$f10
 964:	46128003 	div.s	$f0,$f16,$f18
 968:	3c010000 	lui	at,0x0
 96c:	c4240050 	lwc1	$f4,80(at)
 970:	8e440000 	lw	a0,0(s2)
 974:	46040002 	mul.s	$f0,$f0,$f4
 978:	0c000000 	jal	0 <ObjSyokudai_Init>
 97c:	e7a00064 	swc1	$f0,100(sp)
 980:	8e0202d0 	lw	v0,720(s0)
 984:	3c0adb06 	lui	t2,0xdb06
 988:	354a0020 	ori	t2,t2,0x20
 98c:	24490008 	addiu	t1,v0,8
 990:	ae0902d0 	sw	t1,720(s0)
 994:	ac4a0000 	sw	t2,0(v0)
 998:	8e440000 	lw	a0,0(s2)
 99c:	240b0020 	li	t3,32
 9a0:	240c0040 	li	t4,64
 9a4:	240d0001 	li	t5,1
 9a8:	afad0018 	sw	t5,24(sp)
 9ac:	afac0014 	sw	t4,20(sp)
 9b0:	afab0010 	sw	t3,16(sp)
 9b4:	afa0001c 	sw	zero,28(sp)
 9b8:	922e01e6 	lbu	t6,486(s1)
 9bc:	24190020 	li	t9,32
 9c0:	24080080 	li	t0,128
 9c4:	000e0823 	negu	at,t6
 9c8:	00017880 	sll	t7,at,0x2
 9cc:	01e17821 	addu	t7,t7,at
 9d0:	000f7880 	sll	t7,t7,0x2
 9d4:	31f801ff 	andi	t8,t7,0x1ff
 9d8:	afb80020 	sw	t8,32(sp)
 9dc:	afa80028 	sw	t0,40(sp)
 9e0:	afb90024 	sw	t9,36(sp)
 9e4:	00002825 	move	a1,zero
 9e8:	00003025 	move	a2,zero
 9ec:	00003825 	move	a3,zero
 9f0:	0c000000 	jal	0 <ObjSyokudai_Init>
 9f4:	afa20060 	sw	v0,96(sp)
 9f8:	8fa30060 	lw	v1,96(sp)
 9fc:	3c0afa00 	lui	t2,0xfa00
 a00:	3c0bffff 	lui	t3,0xffff
 a04:	ac620004 	sw	v0,4(v1)
 a08:	8e0202d0 	lw	v0,720(s0)
 a0c:	356b00ff 	ori	t3,t3,0xff
 a10:	354a8080 	ori	t2,t2,0x8080
 a14:	24490008 	addiu	t1,v0,8
 a18:	ae0902d0 	sw	t1,720(s0)
 a1c:	ac4b0004 	sw	t3,4(v0)
 a20:	ac4a0000 	sw	t2,0(v0)
 a24:	8e0202d0 	lw	v0,720(s0)
 a28:	44806000 	mtc1	zero,$f12
 a2c:	3c014250 	lui	at,0x4250
 a30:	244c0008 	addiu	t4,v0,8
 a34:	ae0c02d0 	sw	t4,720(s0)
 a38:	3c0dfb00 	lui	t5,0xfb00
 a3c:	3c0eff00 	lui	t6,0xff00
 a40:	44817000 	mtc1	at,$f14
 a44:	44066000 	mfc1	a2,$f12
 a48:	24070001 	li	a3,1
 a4c:	ac4e0004 	sw	t6,4(v0)
 a50:	0c000000 	jal	0 <ObjSyokudai_Init>
 a54:	ac4d0000 	sw	t5,0(v0)
 a58:	864f07a0 	lh	t7,1952(s2)
 a5c:	000fc080 	sll	t8,t7,0x2
 a60:	0258c821 	addu	t9,s2,t8
 a64:	0c000000 	jal	0 <ObjSyokudai_Init>
 a68:	8f240790 	lw	a0,1936(t9)
 a6c:	862800b6 	lh	t0,182(s1)
 a70:	34018000 	li	at,0x8000
 a74:	24050001 	li	a1,1
 a78:	00484823 	subu	t1,v0,t0
 a7c:	01215021 	addu	t2,t1,at
 a80:	000a5c00 	sll	t3,t2,0x10
 a84:	000b6403 	sra	t4,t3,0x10
 a88:	448c3000 	mtc1	t4,$f6
 a8c:	3c010000 	lui	at,0x0
 a90:	c42a0054 	lwc1	$f10,84(at)
 a94:	46803220 	cvt.s.w	$f8,$f6
 a98:	460a4302 	mul.s	$f12,$f8,$f10
 a9c:	0c000000 	jal	0 <ObjSyokudai_Init>
 aa0:	00000000 	nop
 aa4:	c7ac0064 	lwc1	$f12,100(sp)
 aa8:	24070001 	li	a3,1
 aac:	44066000 	mfc1	a2,$f12
 ab0:	0c000000 	jal	0 <ObjSyokudai_Init>
 ab4:	46006386 	mov.s	$f14,$f12
 ab8:	8e0202d0 	lw	v0,720(s0)
 abc:	3c0eda38 	lui	t6,0xda38
 ac0:	35ce0003 	ori	t6,t6,0x3
 ac4:	244d0008 	addiu	t5,v0,8
 ac8:	ae0d02d0 	sw	t5,720(s0)
 acc:	ac4e0000 	sw	t6,0(v0)
 ad0:	8e440000 	lw	a0,0(s2)
 ad4:	3c050000 	lui	a1,0x0
 ad8:	24a50028 	addiu	a1,a1,40
 adc:	240602e9 	li	a2,745
 ae0:	0c000000 	jal	0 <ObjSyokudai_Init>
 ae4:	afa20054 	sw	v0,84(sp)
 ae8:	8fa30054 	lw	v1,84(sp)
 aec:	3c190000 	lui	t9,0x0
 af0:	27390000 	addiu	t9,t9,0
 af4:	ac620004 	sw	v0,4(v1)
 af8:	8e0202d0 	lw	v0,720(s0)
 afc:	3c18de00 	lui	t8,0xde00
 b00:	244f0008 	addiu	t7,v0,8
 b04:	ae0f02d0 	sw	t7,720(s0)
 b08:	ac590004 	sw	t9,4(v0)
 b0c:	ac580000 	sw	t8,0(v0)
 b10:	3c060000 	lui	a2,0x0
 b14:	24c6003c 	addiu	a2,a2,60
 b18:	27a40070 	addiu	a0,sp,112
 b1c:	8e450000 	lw	a1,0(s2)
 b20:	0c000000 	jal	0 <ObjSyokudai_Init>
 b24:	240702ed 	li	a3,749
 b28:	8fbf0044 	lw	ra,68(sp)
 b2c:	8fb00038 	lw	s0,56(sp)
 b30:	8fb1003c 	lw	s1,60(sp)
 b34:	8fb20040 	lw	s2,64(sp)
 b38:	03e00008 	jr	ra
 b3c:	27bd0090 	addiu	sp,sp,144
