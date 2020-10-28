
build/src/overlays/actors/ovl_Bg_Haka_Gate/z_bg_haka_gate.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaGate_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afa5003c 	sw	a1,60(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa0002c 	sw	zero,44(sp)
  1c:	0c000000 	jal	0 <BgHakaGate_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	860e001c 	lh	t6,28(s0)
  28:	8619001c 	lh	t9,28(s0)
  2c:	02002025 	move	a0,s0
  30:	000ec203 	sra	t8,t6,0x8
  34:	332800ff 	andi	t0,t9,0xff
  38:	a2180168 	sb	t8,360(s0)
  3c:	a608001c 	sh	t0,28(s0)
  40:	0c000000 	jal	0 <BgHakaGate_Init>
  44:	00002825 	move	a1,zero
  48:	8602001c 	lh	v0,28(s0)
  4c:	24010003 	li	at,3
  50:	3c090000 	lui	t1,0x0
  54:	14410051 	bne	v0,at,19c <BgHakaGate_Init+0x19c>
  58:	00000000 	nop
  5c:	85290000 	lh	t1,0(t1)
  60:	24010100 	li	at,256
  64:	3c0a0000 	lui	t2,0x0
  68:	11210003 	beq	t1,at,78 <BgHakaGate_Init+0x78>
  6c:	254a0000 	addiu	t2,t2,0
  70:	10000037 	b	150 <BgHakaGate_Init+0x150>
  74:	ae0a0164 	sw	t2,356(s0)
  78:	860200b6 	lh	v0,182(s0)
  7c:	3c080000 	lui	t0,0x0
  80:	25080000 	addiu	t0,t0,0
  84:	04400003 	bltz	v0,94 <BgHakaGate_Init+0x94>
  88:	00021823 	negu	v1,v0
  8c:	10000001 	b	94 <BgHakaGate_Init+0x94>
  90:	00401825 	move	v1,v0
  94:	28614000 	slti	at,v1,16384
  98:	5020002d 	beqzl	at,150 <BgHakaGate_Init+0x150>
  9c:	ae080164 	sw	t0,356(s0)
  a0:	0c000000 	jal	0 <BgHakaGate_Init>
  a4:	00000000 	nop
  a8:	3c030000 	lui	v1,0x0
  ac:	24630000 	addiu	v1,v1,0
  b0:	90620000 	lbu	v0,0(v1)
  b4:	3c014040 	lui	at,0x4040
  b8:	44812000 	mtc1	at,$f4
  bc:	44824000 	mtc1	v0,$f8
  c0:	3c190000 	lui	t9,0x0
  c4:	46040182 	mul.s	$f6,$f0,$f4
  c8:	3c014f80 	lui	at,0x4f80
  cc:	240b0001 	li	t3,1
  d0:	27390000 	addiu	t9,t9,0
  d4:	24580001 	addiu	t8,v0,1
  d8:	04410004 	bgez	v0,ec <BgHakaGate_Init+0xec>
  dc:	468042a0 	cvt.s.w	$f10,$f8
  e0:	44818000 	mtc1	at,$f16
  e4:	00000000 	nop
  e8:	46105280 	add.s	$f10,$f10,$f16
  ec:	460a303c 	c.lt.s	$f6,$f10
  f0:	34018000 	li	at,0x8000
  f4:	45020013 	bc1fl	144 <BgHakaGate_Init+0x144>
  f8:	a0780000 	sb	t8,0(v1)
  fc:	860c00b6 	lh	t4,182(s0)
 100:	a60b0170 	sh	t3,368(s0)
 104:	8fa4003c 	lw	a0,60(sp)
 108:	01816821 	addu	t5,t4,at
 10c:	3c010000 	lui	at,0x0
 110:	a42d0000 	sh	t5,0(at)
 114:	0c000000 	jal	0 <BgHakaGate_Init>
 118:	92050168 	lbu	a1,360(s0)
 11c:	10400005 	beqz	v0,134 <BgHakaGate_Init+0x134>
 120:	3c0f0000 	lui	t7,0x0
 124:	3c0e0000 	lui	t6,0x0
 128:	25ce0000 	addiu	t6,t6,0
 12c:	10000008 	b	150 <BgHakaGate_Init+0x150>
 130:	ae0e0164 	sw	t6,356(s0)
 134:	25ef0000 	addiu	t7,t7,0
 138:	10000005 	b	150 <BgHakaGate_Init+0x150>
 13c:	ae0f0164 	sw	t7,356(s0)
 140:	a0780000 	sb	t8,0(v1)
 144:	10000002 	b	150 <BgHakaGate_Init+0x150>
 148:	ae190164 	sw	t9,356(s0)
 14c:	ae080164 	sw	t0,356(s0)
 150:	0c000000 	jal	0 <BgHakaGate_Init>
 154:	00000000 	nop
 158:	3c0141a0 	lui	at,0x41a0
 15c:	44819000 	mtc1	at,$f18
 160:	8e0b0004 	lw	t3,4(s0)
 164:	92050168 	lbu	a1,360(s0)
 168:	46120102 	mul.s	$f4,$f0,$f18
 16c:	356c0010 	ori	t4,t3,0x10
 170:	ae0c0004 	sw	t4,4(s0)
 174:	4600220d 	trunc.w.s	$f8,$f4
 178:	440a4000 	mfc1	t2,$f8
 17c:	00000000 	nop
 180:	a60a0172 	sh	t2,370(s0)
 184:	0c000000 	jal	0 <BgHakaGate_Init>
 188:	8fa4003c 	lw	a0,60(sp)
 18c:	1040004a 	beqz	v0,2b8 <BgHakaGate_Init+0x2b8>
 190:	240d015e 	li	t5,350
 194:	10000048 	b	2b8 <BgHakaGate_Init+0x2b8>
 198:	a60d016e 	sh	t5,366(s0)
 19c:	14400015 	bnez	v0,1f4 <BgHakaGate_Init+0x1f4>
 1a0:	24010001 	li	at,1
 1a4:	3c040601 	lui	a0,0x601
 1a8:	248431c4 	addiu	a0,a0,12740
 1ac:	0c000000 	jal	0 <BgHakaGate_Init>
 1b0:	27a5002c 	addiu	a1,sp,44
 1b4:	44808000 	mtc1	zero,$f16
 1b8:	a600016a 	sh	zero,362(s0)
 1bc:	3c010000 	lui	at,0x0
 1c0:	e4300000 	swc1	$f16,0(at)
 1c4:	92050168 	lbu	a1,360(s0)
 1c8:	0c000000 	jal	0 <BgHakaGate_Init>
 1cc:	8fa4003c 	lw	a0,60(sp)
 1d0:	10400005 	beqz	v0,1e8 <BgHakaGate_Init+0x1e8>
 1d4:	3c0f0000 	lui	t7,0x0
 1d8:	3c0e0000 	lui	t6,0x0
 1dc:	25ce0000 	addiu	t6,t6,0
 1e0:	1000002f 	b	2a0 <BgHakaGate_Init+0x2a0>
 1e4:	ae0e0164 	sw	t6,356(s0)
 1e8:	25ef0000 	addiu	t7,t7,0
 1ec:	1000002c 	b	2a0 <BgHakaGate_Init+0x2a0>
 1f0:	ae0f0164 	sw	t7,356(s0)
 1f4:	14410011 	bne	v0,at,23c <BgHakaGate_Init+0x23c>
 1f8:	3c040601 	lui	a0,0x601
 1fc:	3c040601 	lui	a0,0x601
 200:	24840e10 	addiu	a0,a0,3600
 204:	0c000000 	jal	0 <BgHakaGate_Init>
 208:	27a5002c 	addiu	a1,sp,44
 20c:	8fa4003c 	lw	a0,60(sp)
 210:	0c000000 	jal	0 <BgHakaGate_Init>
 214:	92050168 	lbu	a1,360(s0)
 218:	10400005 	beqz	v0,230 <BgHakaGate_Init+0x230>
 21c:	3c190000 	lui	t9,0x0
 220:	3c180000 	lui	t8,0x0
 224:	27180000 	addiu	t8,t8,0
 228:	1000001d 	b	2a0 <BgHakaGate_Init+0x2a0>
 22c:	ae180164 	sw	t8,356(s0)
 230:	27390000 	addiu	t9,t9,0
 234:	1000001a 	b	2a0 <BgHakaGate_Init+0x2a0>
 238:	ae190164 	sw	t9,356(s0)
 23c:	2484a938 	addiu	a0,a0,-22216
 240:	0c000000 	jal	0 <BgHakaGate_Init>
 244:	27a5002c 	addiu	a1,sp,44
 248:	8fa4003c 	lw	a0,60(sp)
 24c:	0c000000 	jal	0 <BgHakaGate_Init>
 250:	92050168 	lbu	a1,360(s0)
 254:	10400009 	beqz	v0,27c <BgHakaGate_Init+0x27c>
 258:	3c0142a0 	lui	at,0x42a0
 25c:	c6060028 	lwc1	$f6,40(s0)
 260:	44815000 	mtc1	at,$f10
 264:	3c080000 	lui	t0,0x0
 268:	25080000 	addiu	t0,t0,0
 26c:	460a3480 	add.s	$f18,$f6,$f10
 270:	ae080164 	sw	t0,356(s0)
 274:	1000000a 	b	2a0 <BgHakaGate_Init+0x2a0>
 278:	e6120028 	swc1	$f18,40(s0)
 27c:	8e090004 	lw	t1,4(s0)
 280:	02002025 	move	a0,s0
 284:	3c0541f0 	lui	a1,0x41f0
 288:	352a0010 	ori	t2,t1,0x10
 28c:	0c000000 	jal	0 <BgHakaGate_Init>
 290:	ae0a0004 	sw	t2,4(s0)
 294:	3c0b0000 	lui	t3,0x0
 298:	256b0000 	addiu	t3,t3,0
 29c:	ae0b0164 	sw	t3,356(s0)
 2a0:	8fa4003c 	lw	a0,60(sp)
 2a4:	02003025 	move	a2,s0
 2a8:	8fa7002c 	lw	a3,44(sp)
 2ac:	0c000000 	jal	0 <BgHakaGate_Init>
 2b0:	24850810 	addiu	a1,a0,2064
 2b4:	ae02014c 	sw	v0,332(s0)
 2b8:	8fbf001c 	lw	ra,28(sp)
 2bc:	8fb00018 	lw	s0,24(sp)
 2c0:	27bd0038 	addiu	sp,sp,56
 2c4:	03e00008 	jr	ra
 2c8:	00000000 	nop

000002cc <BgHakaGate_Destroy>:
 2cc:	27bdffe8 	addiu	sp,sp,-24
 2d0:	afa40018 	sw	a0,24(sp)
 2d4:	8fae0018 	lw	t6,24(sp)
 2d8:	afbf0014 	sw	ra,20(sp)
 2dc:	00a02025 	move	a0,a1
 2e0:	24a50810 	addiu	a1,a1,2064
 2e4:	0c000000 	jal	0 <BgHakaGate_Init>
 2e8:	8dc6014c 	lw	a2,332(t6)
 2ec:	8faf0018 	lw	t7,24(sp)
 2f0:	24190100 	li	t9,256
 2f4:	3c010000 	lui	at,0x0
 2f8:	85f8001c 	lh	t8,28(t7)
 2fc:	24080001 	li	t0,1
 300:	57000005 	bnezl	t8,318 <BgHakaGate_Destroy+0x4c>
 304:	8fbf0014 	lw	ra,20(sp)
 308:	a4390000 	sh	t9,0(at)
 30c:	3c010000 	lui	at,0x0
 310:	a0280000 	sb	t0,0(at)
 314:	8fbf0014 	lw	ra,20(sp)
 318:	27bd0018 	addiu	sp,sp,24
 31c:	03e00008 	jr	ra
 320:	00000000 	nop

00000324 <func_8087C114>:
 324:	afa40000 	sw	a0,0(sp)
 328:	03e00008 	jr	ra
 32c:	afa50004 	sw	a1,4(sp)

00000330 <func_8087C120>:
 330:	44800000 	mtc1	zero,$f0
 334:	c4840150 	lwc1	$f4,336(a0)
 338:	8ca21c44 	lw	v0,7236(a1)
 33c:	46040032 	c.eq.s	$f0,$f4
 340:	00000000 	nop
 344:	45010006 	bc1t	360 <func_8087C120+0x30>
 348:	00000000 	nop
 34c:	8c4e0680 	lw	t6,1664(v0)
 350:	2401ffef 	li	at,-17
 354:	01c17824 	and	t7,t6,at
 358:	ac4f0680 	sw	t7,1664(v0)
 35c:	e4800150 	swc1	$f0,336(a0)
 360:	03e00008 	jr	ra
 364:	00000000 	nop

00000368 <func_8087C158>:
 368:	44800000 	mtc1	zero,$f0
 36c:	c4840150 	lwc1	$f4,336(a0)
 370:	8ca21c44 	lw	v0,7236(a1)
 374:	3c090000 	lui	t1,0x0
 378:	46040032 	c.eq.s	$f0,$f4
 37c:	00000000 	nop
 380:	45010035 	bc1t	458 <func_8087C158+0xf0>
 384:	00000000 	nop
 388:	848e016a 	lh	t6,362(a0)
 38c:	55c00029 	bnezl	t6,434 <func_8087C158+0xcc>
 390:	8c580680 	lw	t8,1664(v0)
 394:	848f00b6 	lh	t7,182(a0)
 398:	8498008a 	lh	t8,138(a0)
 39c:	c4860090 	lwc1	$f6,144(a0)
 3a0:	3c010000 	lui	at,0x0
 3a4:	01f8c823 	subu	t9,t7,t8
 3a8:	a4990172 	sh	t9,370(a0)
 3ac:	e4260000 	swc1	$f6,0(at)
 3b0:	c4880150 	lwc1	$f8,336(a0)
 3b4:	3c01bf80 	lui	at,0xbf80
 3b8:	4608003e 	c.le.s	$f0,$f8
 3bc:	00000000 	nop
 3c0:	45020006 	bc1fl	3dc <func_8087C158+0x74>
 3c4:	44810000 	mtc1	at,$f0
 3c8:	3c013f80 	lui	at,0x3f80
 3cc:	44810000 	mtc1	at,$f0
 3d0:	10000004 	b	3e4 <func_8087C158+0x7c>
 3d4:	8488008a 	lh	t0,138(a0)
 3d8:	44810000 	mtc1	at,$f0
 3dc:	00000000 	nop
 3e0:	8488008a 	lh	t0,138(a0)
 3e4:	844900b6 	lh	t1,182(v0)
 3e8:	24020001 	li	v0,1
 3ec:	01095023 	subu	t2,t0,t1
 3f0:	000a5c00 	sll	t3,t2,0x10
 3f4:	000b6403 	sra	t4,t3,0x10
 3f8:	19800003 	blez	t4,408 <func_8087C158+0xa0>
 3fc:	00000000 	nop
 400:	10000001 	b	408 <func_8087C158+0xa0>
 404:	2402ffff 	li	v0,-1
 408:	44825000 	mtc1	v0,$f10
 40c:	3c0f0000 	lui	t7,0x0
 410:	25ef0000 	addiu	t7,t7,0
 414:	46805420 	cvt.s.w	$f16,$f10
 418:	ac8f0164 	sw	t7,356(a0)
 41c:	46008482 	mul.s	$f18,$f16,$f0
 420:	4600910d 	trunc.w.s	$f4,$f18
 424:	440e2000 	mfc1	t6,$f4
 428:	03e00008 	jr	ra
 42c:	a48e016a 	sh	t6,362(a0)
 430:	8c580680 	lw	t8,1664(v0)
 434:	2401ffef 	li	at,-17
 438:	0301c824 	and	t9,t8,at
 43c:	ac590680 	sw	t9,1664(v0)
 440:	8483016a 	lh	v1,362(a0)
 444:	e4800150 	swc1	$f0,336(a0)
 448:	1060000b 	beqz	v1,478 <func_8087C158+0x110>
 44c:	2468ffff 	addiu	t0,v1,-1
 450:	03e00008 	jr	ra
 454:	a488016a 	sh	t0,362(a0)
 458:	91290000 	lbu	t1,0(t1)
 45c:	24010064 	li	at,100
 460:	3c0a0000 	lui	t2,0x0
 464:	15210003 	bne	t1,at,474 <func_8087C158+0x10c>
 468:	254a0000 	addiu	t2,t2,0
 46c:	03e00008 	jr	ra
 470:	ac8a0164 	sw	t2,356(a0)
 474:	a480016a 	sh	zero,362(a0)
 478:	03e00008 	jr	ra
 47c:	00000000 	nop

00000480 <func_8087C270>:
 480:	27bdffd0 	addiu	sp,sp,-48
 484:	afbf001c 	sw	ra,28(sp)
 488:	afb00018 	sw	s0,24(sp)
 48c:	848e016c 	lh	t6,364(a0)
 490:	8ca31c44 	lw	v1,7236(a1)
 494:	00808025 	move	s0,a0
 498:	25cf0001 	addiu	t7,t6,1
 49c:	a48f016c 	sh	t7,364(a0)
 4a0:	8482016c 	lh	v0,364(a0)
 4a4:	24180005 	li	t8,5
 4a8:	24050258 	li	a1,600
 4ac:	28410006 	slti	at,v0,6
 4b0:	54200004 	bnezl	at,4c4 <func_8087C270+0x44>
 4b4:	a602016c 	sh	v0,364(s0)
 4b8:	10000002 	b	4c4 <func_8087C270+0x44>
 4bc:	a498016c 	sh	t8,364(a0)
 4c0:	a602016c 	sh	v0,364(s0)
 4c4:	8606016c 	lh	a2,364(s0)
 4c8:	afa3002c 	sw	v1,44(sp)
 4cc:	0c000000 	jal	0 <BgHakaGate_Init>
 4d0:	2604016e 	addiu	a0,s0,366
 4d4:	afa20028 	sw	v0,40(sp)
 4d8:	8608016a 	lh	t0,362(s0)
 4dc:	8619016e 	lh	t9,366(s0)
 4e0:	86090170 	lh	t1,368(s0)
 4e4:	3c010000 	lui	at,0x0
 4e8:	03280019 	multu	t9,t0
 4ec:	c4280000 	lwc1	$f8,0(at)
 4f0:	3c010000 	lui	at,0x0
 4f4:	c4300000 	lwc1	$f16,0(at)
 4f8:	8fa3002c 	lw	v1,44(sp)
 4fc:	3c010000 	lui	at,0x0
 500:	00002812 	mflo	a1
 504:	00052c00 	sll	a1,a1,0x10
 508:	00052c03 	sra	a1,a1,0x10
 50c:	01255021 	addu	t2,t1,a1
 510:	448a2000 	mtc1	t2,$f4
 514:	00000000 	nop
 518:	468021a0 	cvt.s.w	$f6,$f4
 51c:	46083282 	mul.s	$f10,$f6,$f8
 520:	00000000 	nop
 524:	46105482 	mul.s	$f18,$f10,$f16
 528:	4600910d 	trunc.w.s	$f4,$f18
 52c:	440c2000 	mfc1	t4,$f4
 530:	00000000 	nop
 534:	a60c00b6 	sh	t4,182(s0)
 538:	8c6d0680 	lw	t5,1664(v1)
 53c:	31ae0010 	andi	t6,t5,0x10
 540:	11c00025 	beqz	t6,5d8 <func_8087C270+0x158>
 544:	00000000 	nop
 548:	44803000 	mtc1	zero,$f6
 54c:	c4280000 	lwc1	$f8,0(at)
 550:	4608303c 	c.lt.s	$f6,$f8
 554:	00000000 	nop
 558:	45020020 	bc1fl	5dc <func_8087C270+0x15c>
 55c:	44809000 	mtc1	zero,$f18
 560:	860f00b6 	lh	t7,182(s0)
 564:	86180172 	lh	t8,370(s0)
 568:	a7a50026 	sh	a1,38(sp)
 56c:	afa3002c 	sw	v1,44(sp)
 570:	01f82023 	subu	a0,t7,t8
 574:	00042400 	sll	a0,a0,0x10
 578:	0c000000 	jal	0 <BgHakaGate_Init>
 57c:	00042403 	sra	a0,a0,0x10
 580:	3c010000 	lui	at,0x0
 584:	c42a0000 	lwc1	$f10,0(at)
 588:	c6120008 	lwc1	$f18,8(s0)
 58c:	8fa3002c 	lw	v1,44(sp)
 590:	460a0402 	mul.s	$f16,$f0,$f10
 594:	46128100 	add.s	$f4,$f16,$f18
 598:	e4640024 	swc1	$f4,36(v1)
 59c:	86080172 	lh	t0,370(s0)
 5a0:	861900b6 	lh	t9,182(s0)
 5a4:	03282023 	subu	a0,t9,t0
 5a8:	00042400 	sll	a0,a0,0x10
 5ac:	0c000000 	jal	0 <BgHakaGate_Init>
 5b0:	00042403 	sra	a0,a0,0x10
 5b4:	3c010000 	lui	at,0x0
 5b8:	c4260000 	lwc1	$f6,0(at)
 5bc:	c60a0010 	lwc1	$f10,16(s0)
 5c0:	8fa3002c 	lw	v1,44(sp)
 5c4:	46060202 	mul.s	$f8,$f0,$f6
 5c8:	87a50026 	lh	a1,38(sp)
 5cc:	460a4400 	add.s	$f16,$f8,$f10
 5d0:	10000004 	b	5e4 <func_8087C270+0x164>
 5d4:	e470002c 	swc1	$f16,44(v1)
 5d8:	44809000 	mtc1	zero,$f18
 5dc:	3c010000 	lui	at,0x0
 5e0:	e4320000 	swc1	$f18,0(at)
 5e4:	8faa0028 	lw	t2,40(sp)
 5e8:	860900b6 	lh	t1,182(s0)
 5ec:	3c010000 	lui	at,0x0
 5f0:	11400014 	beqz	t2,644 <func_8087C270+0x1c4>
 5f4:	a4290000 	sh	t1,0(at)
 5f8:	8c6b0680 	lw	t3,1664(v1)
 5fc:	2401ffef 	li	at,-17
 600:	44802000 	mtc1	zero,$f4
 604:	01616024 	and	t4,t3,at
 608:	ac6c0680 	sw	t4,1664(v1)
 60c:	860d0170 	lh	t5,368(s0)
 610:	24010e10 	li	at,3600
 614:	3c190000 	lui	t9,0x0
 618:	01a57021 	addu	t6,t5,a1
 61c:	01c1001a 	div	zero,t6,at
 620:	00007810 	mfhi	t7
 624:	24180005 	li	t8,5
 628:	27390000 	addiu	t9,t9,0
 62c:	a60f0170 	sh	t7,368(s0)
 630:	a600016c 	sh	zero,364(s0)
 634:	a600016e 	sh	zero,366(s0)
 638:	a618016a 	sh	t8,362(s0)
 63c:	ae190164 	sw	t9,356(s0)
 640:	e6040150 	swc1	$f4,336(s0)
 644:	02002025 	move	a0,s0
 648:	0c000000 	jal	0 <BgHakaGate_Init>
 64c:	2405200a 	li	a1,8202
 650:	8fbf001c 	lw	ra,28(sp)
 654:	8fb00018 	lw	s0,24(sp)
 658:	27bd0030 	addiu	sp,sp,48
 65c:	03e00008 	jr	ra
 660:	00000000 	nop

00000664 <func_8087C454>:
 664:	3c013f80 	lui	at,0x3f80
 668:	44812000 	mtc1	at,$f4
 66c:	3c010000 	lui	at,0x0
 670:	c4260000 	lwc1	$f6,0(at)
 674:	27bdffd0 	addiu	sp,sp,-48
 678:	afb00018 	sw	s0,24(sp)
 67c:	4606203c 	c.lt.s	$f4,$f6
 680:	00808025 	move	s0,a0
 684:	afbf001c 	sw	ra,28(sp)
 688:	afa50034 	sw	a1,52(sp)
 68c:	4500004f 	bc1f	7cc <func_8087C454+0x168>
 690:	3c040000 	lui	a0,0x0
 694:	84840000 	lh	a0,0(a0)
 698:	5080004d 	beqzl	a0,7d0 <func_8087C454+0x16c>
 69c:	8fbf001c 	lw	ra,28(sp)
 6a0:	8caf1c44 	lw	t7,7236(a1)
 6a4:	0c000000 	jal	0 <BgHakaGate_Init>
 6a8:	afaf002c 	sw	t7,44(sp)
 6ac:	3c040000 	lui	a0,0x0
 6b0:	84840000 	lh	a0,0(a0)
 6b4:	0c000000 	jal	0 <BgHakaGate_Init>
 6b8:	e7a00020 	swc1	$f0,32(sp)
 6bc:	8fa2002c 	lw	v0,44(sp)
 6c0:	c60a0024 	lwc1	$f10,36(s0)
 6c4:	c604002c 	lwc1	$f4,44(s0)
 6c8:	c4480024 	lwc1	$f8,36(v0)
 6cc:	c452002c 	lwc1	$f18,44(v0)
 6d0:	c7ae0020 	lwc1	$f14,32(sp)
 6d4:	460a4081 	sub.s	$f2,$f8,$f10
 6d8:	3c0142dc 	lui	at,0x42dc
 6dc:	44815000 	mtc1	at,$f10
 6e0:	46049301 	sub.s	$f12,$f18,$f4
 6e4:	46001182 	mul.s	$f6,$f2,$f0
 6e8:	3c014220 	lui	at,0x4220
 6ec:	3c180000 	lui	t8,0x0
 6f0:	460e6202 	mul.s	$f8,$f12,$f14
 6f4:	3c190000 	lui	t9,0x0
 6f8:	460e1482 	mul.s	$f18,$f2,$f14
 6fc:	00000000 	nop
 700:	46006102 	mul.s	$f4,$f12,$f0
 704:	46083400 	add.s	$f16,$f6,$f8
 708:	46049181 	sub.s	$f6,$f18,$f4
 70c:	4606503c 	c.lt.s	$f10,$f6
 710:	00000000 	nop
 714:	45010007 	bc1t	734 <func_8087C454+0xd0>
 718:	00000000 	nop
 71c:	44814000 	mtc1	at,$f8
 720:	46008005 	abs.s	$f0,$f16
 724:	4600403c 	c.lt.s	$f8,$f0
 728:	00000000 	nop
 72c:	45020028 	bc1fl	7d0 <func_8087C454+0x16c>
 730:	8fbf001c 	lw	ra,28(sp)
 734:	87180000 	lh	t8,0(t8)
 738:	87390000 	lh	t9,0(t9)
 73c:	44809000 	mtc1	zero,$f18
 740:	3c010000 	lui	at,0x0
 744:	03191023 	subu	v0,t8,t9
 748:	00021400 	sll	v0,v0,0x10
 74c:	00021403 	sra	v0,v0,0x10
 750:	04400003 	bltz	v0,760 <func_8087C454+0xfc>
 754:	e4320000 	swc1	$f18,0(at)
 758:	10000002 	b	764 <func_8087C454+0x100>
 75c:	00401825 	move	v1,v0
 760:	00021823 	negu	v1,v0
 764:	28610080 	slti	at,v1,128
 768:	1020000a 	beqz	at,794 <func_8087C454+0x130>
 76c:	8fa40034 	lw	a0,52(sp)
 770:	0c000000 	jal	0 <BgHakaGate_Init>
 774:	92050168 	lbu	a1,360(s0)
 778:	24080064 	li	t0,100
 77c:	3c010000 	lui	at,0x0
 780:	3c090000 	lui	t1,0x0
 784:	a0280000 	sb	t0,0(at)
 788:	25290000 	addiu	t1,t1,0
 78c:	1000000f 	b	7cc <func_8087C454+0x168>
 790:	ae090164 	sw	t1,356(s0)
 794:	0c000000 	jal	0 <BgHakaGate_Init>
 798:	24044806 	li	a0,18438
 79c:	02002025 	move	a0,s0
 7a0:	0c000000 	jal	0 <BgHakaGate_Init>
 7a4:	240528ce 	li	a1,10446
 7a8:	8fa40034 	lw	a0,52(sp)
 7ac:	8e06014c 	lw	a2,332(s0)
 7b0:	0c000000 	jal	0 <BgHakaGate_Init>
 7b4:	24850810 	addiu	a1,a0,2064
 7b8:	3c0b0000 	lui	t3,0x0
 7bc:	240a003c 	li	t2,60
 7c0:	256b0000 	addiu	t3,t3,0
 7c4:	a60a016a 	sh	t2,362(s0)
 7c8:	ae0b0164 	sw	t3,356(s0)
 7cc:	8fbf001c 	lw	ra,28(sp)
 7d0:	8fb00018 	lw	s0,24(sp)
 7d4:	27bd0030 	addiu	sp,sp,48
 7d8:	03e00008 	jr	ra
 7dc:	00000000 	nop

000007e0 <func_8087C5D0>:
 7e0:	27bdffe8 	addiu	sp,sp,-24
 7e4:	afbf0014 	sw	ra,20(sp)
 7e8:	afa5001c 	sw	a1,28(sp)
 7ec:	8482016a 	lh	v0,362(a0)
 7f0:	00803825 	move	a3,a0
 7f4:	24053000 	li	a1,12288
 7f8:	10400003 	beqz	v0,808 <func_8087C5D0+0x28>
 7fc:	244effff 	addiu	t6,v0,-1
 800:	a48e016a 	sh	t6,362(a0)
 804:	8482016a 	lh	v0,362(a0)
 808:	14400012 	bnez	v0,854 <func_8087C5D0+0x74>
 80c:	24e4016c 	addiu	a0,a3,364
 810:	24e4016c 	addiu	a0,a3,364
 814:	00002825 	move	a1,zero
 818:	24060800 	li	a2,2048
 81c:	0c000000 	jal	0 <BgHakaGate_Init>
 820:	afa70018 	sw	a3,24(sp)
 824:	8fa4001c 	lw	a0,28(sp)
 828:	1040000c 	beqz	v0,85c <func_8087C5D0+0x7c>
 82c:	8fa70018 	lw	a3,24(sp)
 830:	8ce6014c 	lw	a2,332(a3)
 834:	afa70018 	sw	a3,24(sp)
 838:	0c000000 	jal	0 <BgHakaGate_Init>
 83c:	24850810 	addiu	a1,a0,2064
 840:	8fa70018 	lw	a3,24(sp)
 844:	3c0f0000 	lui	t7,0x0
 848:	25ef0000 	addiu	t7,t7,0
 84c:	10000003 	b	85c <func_8087C5D0+0x7c>
 850:	acef0164 	sw	t7,356(a3)
 854:	0c000000 	jal	0 <BgHakaGate_Init>
 858:	24060800 	li	a2,2048
 85c:	8fbf0014 	lw	ra,20(sp)
 860:	27bd0018 	addiu	sp,sp,24
 864:	03e00008 	jr	ra
 868:	00000000 	nop

0000086c <func_8087C65C>:
 86c:	27bdffe8 	addiu	sp,sp,-24
 870:	afa40018 	sw	a0,24(sp)
 874:	8fae0018 	lw	t6,24(sp)
 878:	afbf0014 	sw	ra,20(sp)
 87c:	afa5001c 	sw	a1,28(sp)
 880:	00a02025 	move	a0,a1
 884:	0c000000 	jal	0 <BgHakaGate_Init>
 888:	91c50168 	lbu	a1,360(t6)
 88c:	10400007 	beqz	v0,8ac <func_8087C65C+0x40>
 890:	8fa4001c 	lw	a0,28(sp)
 894:	0c000000 	jal	0 <BgHakaGate_Init>
 898:	8fa50018 	lw	a1,24(sp)
 89c:	8fb80018 	lw	t8,24(sp)
 8a0:	3c0f0000 	lui	t7,0x0
 8a4:	25ef0000 	addiu	t7,t7,0
 8a8:	af0f0164 	sw	t7,356(t8)
 8ac:	8fbf0014 	lw	ra,20(sp)
 8b0:	27bd0018 	addiu	sp,sp,24
 8b4:	03e00008 	jr	ra
 8b8:	00000000 	nop

000008bc <func_8087C6AC>:
 8bc:	27bdffe8 	addiu	sp,sp,-24
 8c0:	afbf0014 	sw	ra,20(sp)
 8c4:	afa5001c 	sw	a1,28(sp)
 8c8:	00803825 	move	a3,a0
 8cc:	3c0142a0 	lui	at,0x42a0
 8d0:	44813000 	mtc1	at,$f6
 8d4:	c4e4000c 	lwc1	$f4,12(a3)
 8d8:	afa70018 	sw	a3,24(sp)
 8dc:	24840028 	addiu	a0,a0,40
 8e0:	46062200 	add.s	$f8,$f4,$f6
 8e4:	3c063f80 	lui	a2,0x3f80
 8e8:	44054000 	mfc1	a1,$f8
 8ec:	0c000000 	jal	0 <BgHakaGate_Init>
 8f0:	00000000 	nop
 8f4:	1040000e 	beqz	v0,930 <func_8087C6AC+0x74>
 8f8:	8fa70018 	lw	a3,24(sp)
 8fc:	00e02025 	move	a0,a3
 900:	24052837 	li	a1,10295
 904:	0c000000 	jal	0 <BgHakaGate_Init>
 908:	afa70018 	sw	a3,24(sp)
 90c:	8fa70018 	lw	a3,24(sp)
 910:	2401ffef 	li	at,-17
 914:	3c180000 	lui	t8,0x0
 918:	8cee0004 	lw	t6,4(a3)
 91c:	27180000 	addiu	t8,t8,0
 920:	acf80164 	sw	t8,356(a3)
 924:	01c17824 	and	t7,t6,at
 928:	10000004 	b	93c <func_8087C6AC+0x80>
 92c:	acef0004 	sw	t7,4(a3)
 930:	00e02025 	move	a0,a3
 934:	0c000000 	jal	0 <BgHakaGate_Init>
 938:	24052036 	li	a1,8246
 93c:	8fbf0014 	lw	ra,20(sp)
 940:	27bd0018 	addiu	sp,sp,24
 944:	03e00008 	jr	ra
 948:	00000000 	nop

0000094c <func_8087C73C>:
 94c:	27bdffe8 	addiu	sp,sp,-24
 950:	afa40018 	sw	a0,24(sp)
 954:	8fae0018 	lw	t6,24(sp)
 958:	afbf0014 	sw	ra,20(sp)
 95c:	00a02025 	move	a0,a1
 960:	0c000000 	jal	0 <BgHakaGate_Init>
 964:	91c50168 	lbu	a1,360(t6)
 968:	1040000a 	beqz	v0,994 <func_8087C73C+0x48>
 96c:	8fa40018 	lw	a0,24(sp)
 970:	2484016e 	addiu	a0,a0,366
 974:	2405015e 	li	a1,350
 978:	0c000000 	jal	0 <BgHakaGate_Init>
 97c:	24060014 	li	a2,20
 980:	10400004 	beqz	v0,994 <func_8087C73C+0x48>
 984:	8fb80018 	lw	t8,24(sp)
 988:	3c0f0000 	lui	t7,0x0
 98c:	25ef0000 	addiu	t7,t7,0
 990:	af0f0164 	sw	t7,356(t8)
 994:	8fbf0014 	lw	ra,20(sp)
 998:	27bd0018 	addiu	sp,sp,24
 99c:	03e00008 	jr	ra
 9a0:	00000000 	nop

000009a4 <func_8087C794>:
 9a4:	27bdffe8 	addiu	sp,sp,-24
 9a8:	00803825 	move	a3,a0
 9ac:	afbf0014 	sw	ra,20(sp)
 9b0:	afa5001c 	sw	a1,28(sp)
 9b4:	00a02025 	move	a0,a1
 9b8:	90e50168 	lbu	a1,360(a3)
 9bc:	0c000000 	jal	0 <BgHakaGate_Init>
 9c0:	afa70018 	sw	a3,24(sp)
 9c4:	10400007 	beqz	v0,9e4 <func_8087C794+0x40>
 9c8:	8fa70018 	lw	a3,24(sp)
 9cc:	24e4016e 	addiu	a0,a3,366
 9d0:	2405015e 	li	a1,350
 9d4:	24060014 	li	a2,20
 9d8:	0c000000 	jal	0 <BgHakaGate_Init>
 9dc:	afa70018 	sw	a3,24(sp)
 9e0:	8fa70018 	lw	a3,24(sp)
 9e4:	8fae001c 	lw	t6,28(sp)
 9e8:	91cf1c27 	lbu	t7,7207(t6)
 9ec:	51e00006 	beqzl	t7,a08 <func_8087C794+0x64>
 9f0:	8ce80004 	lw	t0,4(a3)
 9f4:	8cf80004 	lw	t8,4(a3)
 9f8:	37190080 	ori	t9,t8,0x80
 9fc:	10000005 	b	a14 <func_8087C794+0x70>
 a00:	acf90004 	sw	t9,4(a3)
 a04:	8ce80004 	lw	t0,4(a3)
 a08:	2401ff7f 	li	at,-129
 a0c:	01014824 	and	t1,t0,at
 a10:	ace90004 	sw	t1,4(a3)
 a14:	8fbf0014 	lw	ra,20(sp)
 a18:	27bd0018 	addiu	sp,sp,24
 a1c:	03e00008 	jr	ra
 a20:	00000000 	nop

00000a24 <BgHakaGate_Update>:
 a24:	27bdffe8 	addiu	sp,sp,-24
 a28:	afbf0014 	sw	ra,20(sp)
 a2c:	afa40018 	sw	a0,24(sp)
 a30:	8c990164 	lw	t9,356(a0)
 a34:	0320f809 	jalr	t9
 a38:	00000000 	nop
 a3c:	8fa40018 	lw	a0,24(sp)
 a40:	24010003 	li	at,3
 a44:	848e001c 	lh	t6,28(a0)
 a48:	55c10005 	bnel	t6,at,a60 <BgHakaGate_Update+0x3c>
 a4c:	8fbf0014 	lw	ra,20(sp)
 a50:	848f0172 	lh	t7,370(a0)
 a54:	25f80001 	addiu	t8,t7,1
 a58:	a4980172 	sh	t8,370(a0)
 a5c:	8fbf0014 	lw	ra,20(sp)
 a60:	27bd0018 	addiu	sp,sp,24
 a64:	03e00008 	jr	ra
 a68:	00000000 	nop

00000a6c <func_8087C85C>:
 a6c:	27bdff88 	addiu	sp,sp,-120
 a70:	afbf003c 	sw	ra,60(sp)
 a74:	afb10038 	sw	s1,56(sp)
 a78:	afb00034 	sw	s0,52(sp)
 a7c:	afa40078 	sw	a0,120(sp)
 a80:	848f016e 	lh	t7,366(a0)
 a84:	00a08825 	move	s1,a1
 a88:	27a4005c 	addiu	a0,sp,92
 a8c:	19e00077 	blez	t7,c6c <func_8087C85C+0x200>
 a90:	3c060000 	lui	a2,0x0
 a94:	8ca50000 	lw	a1,0(a1)
 a98:	24c60000 	addiu	a2,a2,0
 a9c:	240702cc 	li	a3,716
 aa0:	0c000000 	jal	0 <BgHakaGate_Init>
 aa4:	00a08025 	move	s0,a1
 aa8:	0c000000 	jal	0 <BgHakaGate_Init>
 aac:	8e240000 	lw	a0,0(s1)
 ab0:	8e0202d0 	lw	v0,720(s0)
 ab4:	3c19db06 	lui	t9,0xdb06
 ab8:	37390020 	ori	t9,t9,0x20
 abc:	24580008 	addiu	t8,v0,8
 ac0:	ae1802d0 	sw	t8,720(s0)
 ac4:	ac590000 	sw	t9,0(v0)
 ac8:	8e240000 	lw	a0,0(s1)
 acc:	8fab0078 	lw	t3,120(sp)
 ad0:	24080020 	li	t0,32
 ad4:	24090040 	li	t1,64
 ad8:	240a0001 	li	t2,1
 adc:	afaa0018 	sw	t2,24(sp)
 ae0:	afa90014 	sw	t1,20(sp)
 ae4:	afa80010 	sw	t0,16(sp)
 ae8:	afa0001c 	sw	zero,28(sp)
 aec:	856c0172 	lh	t4,370(t3)
 af0:	24180080 	li	t8,128
 af4:	240f0020 	li	t7,32
 af8:	000c0823 	negu	at,t4
 afc:	00016880 	sll	t5,at,0x2
 b00:	01a16821 	addu	t5,t5,at
 b04:	000d6880 	sll	t5,t5,0x2
 b08:	31ae01ff 	andi	t6,t5,0x1ff
 b0c:	afae0020 	sw	t6,32(sp)
 b10:	afaf0024 	sw	t7,36(sp)
 b14:	afb80028 	sw	t8,40(sp)
 b18:	00002825 	move	a1,zero
 b1c:	00003025 	move	a2,zero
 b20:	00003825 	move	a3,zero
 b24:	0c000000 	jal	0 <BgHakaGate_Init>
 b28:	afa20058 	sw	v0,88(sp)
 b2c:	8fa30058 	lw	v1,88(sp)
 b30:	3c08fa00 	lui	t0,0xfa00
 b34:	3c09ffff 	lui	t1,0xffff
 b38:	ac620004 	sw	v0,4(v1)
 b3c:	8e0202d0 	lw	v0,720(s0)
 b40:	352900ff 	ori	t1,t1,0xff
 b44:	35088080 	ori	t0,t0,0x8080
 b48:	24590008 	addiu	t9,v0,8
 b4c:	ae1902d0 	sw	t9,720(s0)
 b50:	ac490004 	sw	t1,4(v0)
 b54:	ac480000 	sw	t0,0(v0)
 b58:	8e0202d0 	lw	v0,720(s0)
 b5c:	3c0bfb00 	lui	t3,0xfb00
 b60:	3c0cff00 	lui	t4,0xff00
 b64:	244a0008 	addiu	t2,v0,8
 b68:	ae0a02d0 	sw	t2,720(s0)
 b6c:	ac4c0004 	sw	t4,4(v0)
 b70:	ac4b0000 	sw	t3,0(v0)
 b74:	8fa20078 	lw	v0,120(sp)
 b78:	3c014170 	lui	at,0x4170
 b7c:	44813000 	mtc1	at,$f6
 b80:	c4440028 	lwc1	$f4,40(v0)
 b84:	00003825 	move	a3,zero
 b88:	c44c0024 	lwc1	$f12,36(v0)
 b8c:	8c46002c 	lw	a2,44(v0)
 b90:	0c000000 	jal	0 <BgHakaGate_Init>
 b94:	46062380 	add.s	$f14,$f4,$f6
 b98:	862d07a0 	lh	t5,1952(s1)
 b9c:	000d7080 	sll	t6,t5,0x2
 ba0:	022e7821 	addu	t7,s1,t6
 ba4:	0c000000 	jal	0 <BgHakaGate_Init>
 ba8:	8de40790 	lw	a0,1936(t7)
 bac:	44824000 	mtc1	v0,$f8
 bb0:	3c010000 	lui	at,0x0
 bb4:	c4300000 	lwc1	$f16,0(at)
 bb8:	468042a0 	cvt.s.w	$f10,$f8
 bbc:	24050001 	li	a1,1
 bc0:	46105302 	mul.s	$f12,$f10,$f16
 bc4:	0c000000 	jal	0 <BgHakaGate_Init>
 bc8:	00000000 	nop
 bcc:	8fb80078 	lw	t8,120(sp)
 bd0:	3c010000 	lui	at,0x0
 bd4:	c4260000 	lwc1	$f6,0(at)
 bd8:	8719016e 	lh	t9,366(t8)
 bdc:	24070001 	li	a3,1
 be0:	44999000 	mtc1	t9,$f18
 be4:	00000000 	nop
 be8:	46809120 	cvt.s.w	$f4,$f18
 bec:	46062302 	mul.s	$f12,$f4,$f6
 bf0:	44066000 	mfc1	a2,$f12
 bf4:	0c000000 	jal	0 <BgHakaGate_Init>
 bf8:	46006386 	mov.s	$f14,$f12
 bfc:	8e0202d0 	lw	v0,720(s0)
 c00:	3c09da38 	lui	t1,0xda38
 c04:	35290003 	ori	t1,t1,0x3
 c08:	24480008 	addiu	t0,v0,8
 c0c:	ae0802d0 	sw	t0,720(s0)
 c10:	ac490000 	sw	t1,0(v0)
 c14:	8e240000 	lw	a0,0(s1)
 c18:	3c050000 	lui	a1,0x0
 c1c:	24a50000 	addiu	a1,a1,0
 c20:	240602e8 	li	a2,744
 c24:	0c000000 	jal	0 <BgHakaGate_Init>
 c28:	afa2004c 	sw	v0,76(sp)
 c2c:	8fa3004c 	lw	v1,76(sp)
 c30:	3c0c0405 	lui	t4,0x405
 c34:	258cd4e0 	addiu	t4,t4,-11040
 c38:	ac620004 	sw	v0,4(v1)
 c3c:	8e0202d0 	lw	v0,720(s0)
 c40:	3c0bde00 	lui	t3,0xde00
 c44:	3c060000 	lui	a2,0x0
 c48:	244a0008 	addiu	t2,v0,8
 c4c:	ae0a02d0 	sw	t2,720(s0)
 c50:	ac4c0004 	sw	t4,4(v0)
 c54:	ac4b0000 	sw	t3,0(v0)
 c58:	8e250000 	lw	a1,0(s1)
 c5c:	24c60000 	addiu	a2,a2,0
 c60:	27a4005c 	addiu	a0,sp,92
 c64:	0c000000 	jal	0 <BgHakaGate_Init>
 c68:	240702ed 	li	a3,749
 c6c:	8fbf003c 	lw	ra,60(sp)
 c70:	8fb00034 	lw	s0,52(sp)
 c74:	8fb10038 	lw	s1,56(sp)
 c78:	03e00008 	jr	ra
 c7c:	27bd0078 	addiu	sp,sp,120

00000c80 <BgHakaGate_Draw>:
 c80:	27bdff70 	addiu	sp,sp,-144
 c84:	afbf001c 	sw	ra,28(sp)
 c88:	afb00018 	sw	s0,24(sp)
 c8c:	afa40090 	sw	a0,144(sp)
 c90:	afa50094 	sw	a1,148(sp)
 c94:	8c8f0004 	lw	t7,4(a0)
 c98:	24010080 	li	at,128
 c9c:	00a02025 	move	a0,a1
 ca0:	31f80080 	andi	t8,t7,0x80
 ca4:	17010006 	bne	t8,at,cc0 <BgHakaGate_Draw+0x40>
 ca8:	8fb90094 	lw	t9,148(sp)
 cac:	3c050601 	lui	a1,0x601
 cb0:	0c000000 	jal	0 <BgHakaGate_Init>
 cb4:	24a5f1b0 	addiu	a1,a1,-3664
 cb8:	1000007c 	b	eac <BgHakaGate_Draw+0x22c>
 cbc:	8fa40090 	lw	a0,144(sp)
 cc0:	0c000000 	jal	0 <BgHakaGate_Init>
 cc4:	8f240000 	lw	a0,0(t9)
 cc8:	8fa80090 	lw	t0,144(sp)
 ccc:	24010001 	li	at,1
 cd0:	8fa90094 	lw	t1,148(sp)
 cd4:	8502001c 	lh	v0,28(t0)
 cd8:	8fa40094 	lw	a0,148(sp)
 cdc:	3c050000 	lui	a1,0x0
 ce0:	1441006e 	bne	v0,at,e9c <BgHakaGate_Draw+0x21c>
 ce4:	00024080 	sll	t0,v0,0x2
 ce8:	8d250000 	lw	a1,0(t1)
 cec:	3c060000 	lui	a2,0x0
 cf0:	24c60000 	addiu	a2,a2,0
 cf4:	27a40038 	addiu	a0,sp,56
 cf8:	2407030d 	li	a3,781
 cfc:	0c000000 	jal	0 <BgHakaGate_Init>
 d00:	00a08025 	move	s0,a1
 d04:	0c000000 	jal	0 <BgHakaGate_Init>
 d08:	27a4004c 	addiu	a0,sp,76
 d0c:	44806000 	mtc1	zero,$f12
 d10:	3c06c4fa 	lui	a2,0xc4fa
 d14:	24070001 	li	a3,1
 d18:	0c000000 	jal	0 <BgHakaGate_Init>
 d1c:	46006386 	mov.s	$f14,$f12
 d20:	8faa0090 	lw	t2,144(sp)
 d24:	3c010000 	lui	at,0x0
 d28:	c4280000 	lwc1	$f8,0(at)
 d2c:	854b016c 	lh	t3,364(t2)
 d30:	24050001 	li	a1,1
 d34:	448b2000 	mtc1	t3,$f4
 d38:	00000000 	nop
 d3c:	468021a0 	cvt.s.w	$f6,$f4
 d40:	46083302 	mul.s	$f12,$f6,$f8
 d44:	0c000000 	jal	0 <BgHakaGate_Init>
 d48:	00000000 	nop
 d4c:	44806000 	mtc1	zero,$f12
 d50:	3c0644fa 	lui	a2,0x44fa
 d54:	24070001 	li	a3,1
 d58:	0c000000 	jal	0 <BgHakaGate_Init>
 d5c:	46006386 	mov.s	$f14,$f12
 d60:	8e0202c0 	lw	v0,704(s0)
 d64:	3c0dda38 	lui	t5,0xda38
 d68:	35ad0003 	ori	t5,t5,0x3
 d6c:	244c0008 	addiu	t4,v0,8
 d70:	ae0c02c0 	sw	t4,704(s0)
 d74:	ac4d0000 	sw	t5,0(v0)
 d78:	8fae0094 	lw	t6,148(sp)
 d7c:	3c050000 	lui	a1,0x0
 d80:	24a50000 	addiu	a1,a1,0
 d84:	8dc40000 	lw	a0,0(t6)
 d88:	24060314 	li	a2,788
 d8c:	0c000000 	jal	0 <BgHakaGate_Init>
 d90:	afa20034 	sw	v0,52(sp)
 d94:	8fa30034 	lw	v1,52(sp)
 d98:	3c190601 	lui	t9,0x601
 d9c:	27390a10 	addiu	t9,t9,2576
 da0:	ac620004 	sw	v0,4(v1)
 da4:	8e0202c0 	lw	v0,704(s0)
 da8:	3c18de00 	lui	t8,0xde00
 dac:	27a4004c 	addiu	a0,sp,76
 db0:	244f0008 	addiu	t7,v0,8
 db4:	ae0f02c0 	sw	t7,704(s0)
 db8:	ac590004 	sw	t9,4(v0)
 dbc:	0c000000 	jal	0 <BgHakaGate_Init>
 dc0:	ac580000 	sw	t8,0(v0)
 dc4:	44806000 	mtc1	zero,$f12
 dc8:	3c0644fa 	lui	a2,0x44fa
 dcc:	24070001 	li	a3,1
 dd0:	0c000000 	jal	0 <BgHakaGate_Init>
 dd4:	46006386 	mov.s	$f14,$f12
 dd8:	8fa80090 	lw	t0,144(sp)
 ddc:	3c010000 	lui	at,0x0
 de0:	c4320000 	lwc1	$f18,0(at)
 de4:	8509016c 	lh	t1,364(t0)
 de8:	24050001 	li	a1,1
 dec:	00095023 	negu	t2,t1
 df0:	448a5000 	mtc1	t2,$f10
 df4:	00000000 	nop
 df8:	46805420 	cvt.s.w	$f16,$f10
 dfc:	46128302 	mul.s	$f12,$f16,$f18
 e00:	0c000000 	jal	0 <BgHakaGate_Init>
 e04:	00000000 	nop
 e08:	44806000 	mtc1	zero,$f12
 e0c:	44807000 	mtc1	zero,$f14
 e10:	3c06c4fa 	lui	a2,0xc4fa
 e14:	0c000000 	jal	0 <BgHakaGate_Init>
 e18:	24070001 	li	a3,1
 e1c:	8e0202c0 	lw	v0,704(s0)
 e20:	3c0cda38 	lui	t4,0xda38
 e24:	358c0003 	ori	t4,t4,0x3
 e28:	244b0008 	addiu	t3,v0,8
 e2c:	ae0b02c0 	sw	t3,704(s0)
 e30:	ac4c0000 	sw	t4,0(v0)
 e34:	8fad0094 	lw	t5,148(sp)
 e38:	3c050000 	lui	a1,0x0
 e3c:	24a50000 	addiu	a1,a1,0
 e40:	8da40000 	lw	a0,0(t5)
 e44:	2406031c 	li	a2,796
 e48:	0c000000 	jal	0 <BgHakaGate_Init>
 e4c:	afa2002c 	sw	v0,44(sp)
 e50:	8fa3002c 	lw	v1,44(sp)
 e54:	3c180601 	lui	t8,0x601
 e58:	27180c10 	addiu	t8,t8,3088
 e5c:	ac620004 	sw	v0,4(v1)
 e60:	8e0202c0 	lw	v0,704(s0)
 e64:	3c0fde00 	lui	t7,0xde00
 e68:	3c060000 	lui	a2,0x0
 e6c:	244e0008 	addiu	t6,v0,8
 e70:	ae0e02c0 	sw	t6,704(s0)
 e74:	ac580004 	sw	t8,4(v0)
 e78:	ac4f0000 	sw	t7,0(v0)
 e7c:	8fb90094 	lw	t9,148(sp)
 e80:	24c60000 	addiu	a2,a2,0
 e84:	27a40038 	addiu	a0,sp,56
 e88:	24070320 	li	a3,800
 e8c:	0c000000 	jal	0 <BgHakaGate_Init>
 e90:	8f250000 	lw	a1,0(t9)
 e94:	10000005 	b	eac <BgHakaGate_Draw+0x22c>
 e98:	8fa40090 	lw	a0,144(sp)
 e9c:	00a82821 	addu	a1,a1,t0
 ea0:	0c000000 	jal	0 <BgHakaGate_Init>
 ea4:	8ca50000 	lw	a1,0(a1)
 ea8:	8fa40090 	lw	a0,144(sp)
 eac:	24010003 	li	at,3
 eb0:	8489001c 	lh	t1,28(a0)
 eb4:	55210004 	bnel	t1,at,ec8 <BgHakaGate_Draw+0x248>
 eb8:	8fbf001c 	lw	ra,28(sp)
 ebc:	0c000000 	jal	0 <BgHakaGate_Init>
 ec0:	8fa50094 	lw	a1,148(sp)
 ec4:	8fbf001c 	lw	ra,28(sp)
 ec8:	8fb00018 	lw	s0,24(sp)
 ecc:	27bd0090 	addiu	sp,sp,144
 ed0:	03e00008 	jr	ra
 ed4:	00000000 	nop
	...
