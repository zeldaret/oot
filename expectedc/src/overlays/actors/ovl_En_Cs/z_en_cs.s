
build/src/overlays/actors/ovl_En_Cs/z_en_cs.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809E18B0>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afa40038 	sw	a0,56(sp)
   c:	afa60040 	sw	a2,64(sp)
  10:	8cc20000 	lw	v0,0(a2)
  14:	44803000 	mtc1	zero,$f6
  18:	00057900 	sll	t7,a1,0x4
  1c:	04400003 	bltz	v0,2c <func_809E18B0+0x2c>
  20:	3c180000 	lui	t8,0x0
  24:	14a20005 	bne	a1,v0,3c <func_809E18B0+0x3c>
  28:	0005c900 	sll	t9,a1,0x4
  2c:	44800000 	mtc1	zero,$f0
  30:	27180000 	addiu	t8,t8,0
  34:	10000005 	b	4c <func_809E18B0+0x4c>
  38:	01f81821 	addu	v1,t7,t8
  3c:	3c080000 	lui	t0,0x0
  40:	25080000 	addiu	t0,t0,0
  44:	03281821 	addu	v1,t9,t0
  48:	c460000c 	lwc1	$f0,12(v1)
  4c:	c4640004 	lwc1	$f4,4(v1)
  50:	4604303e 	c.le.s	$f6,$f4
  54:	00000000 	nop
  58:	45020017 	bc1fl	b8 <func_809E18B0+0xb8>
  5c:	8c640000 	lw	a0,0(v1)
  60:	8c640000 	lw	a0,0(v1)
  64:	afa3002c 	sw	v1,44(sp)
  68:	afa5003c 	sw	a1,60(sp)
  6c:	0c000000 	jal	0 <func_809E18B0>
  70:	e7a00034 	swc1	$f0,52(sp)
  74:	44824000 	mtc1	v0,$f8
  78:	8fa3002c 	lw	v1,44(sp)
  7c:	c7a00034 	lwc1	$f0,52(sp)
  80:	468042a0 	cvt.s.w	$f10,$f8
  84:	8fa40038 	lw	a0,56(sp)
  88:	90690008 	lbu	t1,8(v1)
  8c:	24070000 	li	a3,0
  90:	8c650000 	lw	a1,0(v1)
  94:	8c660004 	lw	a2,4(v1)
  98:	e7aa0010 	swc1	$f10,16(sp)
  9c:	e7a00018 	swc1	$f0,24(sp)
  a0:	2484014c 	addiu	a0,a0,332
  a4:	0c000000 	jal	0 <func_809E18B0>
  a8:	afa90014 	sw	t1,20(sp)
  ac:	10000016 	b	108 <func_809E18B0+0x108>
  b0:	8fab003c 	lw	t3,60(sp)
  b4:	8c640000 	lw	a0,0(v1)
  b8:	afa3002c 	sw	v1,44(sp)
  bc:	afa5003c 	sw	a1,60(sp)
  c0:	0c000000 	jal	0 <func_809E18B0>
  c4:	e7a00034 	swc1	$f0,52(sp)
  c8:	44828000 	mtc1	v0,$f16
  cc:	8fa3002c 	lw	v1,44(sp)
  d0:	c7a00034 	lwc1	$f0,52(sp)
  d4:	46808420 	cvt.s.w	$f16,$f16
  d8:	8fa40038 	lw	a0,56(sp)
  dc:	44809000 	mtc1	zero,$f18
  e0:	906a0008 	lbu	t2,8(v1)
  e4:	8c650000 	lw	a1,0(v1)
  e8:	8c660004 	lw	a2,4(v1)
  ec:	44078000 	mfc1	a3,$f16
  f0:	e7a00018 	swc1	$f0,24(sp)
  f4:	2484014c 	addiu	a0,a0,332
  f8:	afaa0014 	sw	t2,20(sp)
  fc:	0c000000 	jal	0 <func_809E18B0>
 100:	e7b20010 	swc1	$f18,16(sp)
 104:	8fab003c 	lw	t3,60(sp)
 108:	8fac0040 	lw	t4,64(sp)
 10c:	ad8b0000 	sw	t3,0(t4)
 110:	8fbf0024 	lw	ra,36(sp)
 114:	27bd0038 	addiu	sp,sp,56
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <EnCs_Init>:
 120:	3c0e0000 	lui	t6,0x0
 124:	8dce0010 	lw	t6,16(t6)
 128:	27bdffb8 	addiu	sp,sp,-72
 12c:	afb00028 	sw	s0,40(sp)
 130:	00808025 	move	s0,a0
 134:	afbf002c 	sw	ra,44(sp)
 138:	11c00005 	beqz	t6,150 <EnCs_Init+0x30>
 13c:	afa5004c 	sw	a1,76(sp)
 140:	0c000000 	jal	0 <func_809E18B0>
 144:	00000000 	nop
 148:	10000056 	b	2a4 <EnCs_Init+0x184>
 14c:	8fbf002c 	lw	ra,44(sp)
 150:	3c060000 	lui	a2,0x0
 154:	24c60000 	addiu	a2,a2,0
 158:	260400b4 	addiu	a0,s0,180
 15c:	24050000 	li	a1,0
 160:	0c000000 	jal	0 <func_809E18B0>
 164:	3c074198 	lui	a3,0x4198
 168:	2605014c 	addiu	a1,s0,332
 16c:	3c060601 	lui	a2,0x601
 170:	260f0284 	addiu	t7,s0,644
 174:	261802e4 	addiu	t8,s0,740
 178:	24190010 	li	t9,16
 17c:	afb90018 	sw	t9,24(sp)
 180:	afb80014 	sw	t8,20(sp)
 184:	afaf0010 	sw	t7,16(sp)
 188:	24c68540 	addiu	a2,a2,-31424
 18c:	afa50038 	sw	a1,56(sp)
 190:	8fa4004c 	lw	a0,76(sp)
 194:	0c000000 	jal	0 <func_809E18B0>
 198:	00003825 	move	a3,zero
 19c:	26050194 	addiu	a1,s0,404
 1a0:	afa50034 	sw	a1,52(sp)
 1a4:	0c000000 	jal	0 <func_809E18B0>
 1a8:	8fa4004c 	lw	a0,76(sp)
 1ac:	3c070000 	lui	a3,0x0
 1b0:	8fa50034 	lw	a1,52(sp)
 1b4:	24e70000 	addiu	a3,a3,0
 1b8:	8fa4004c 	lw	a0,76(sp)
 1bc:	0c000000 	jal	0 <func_809E18B0>
 1c0:	02003025 	move	a2,s0
 1c4:	3c050000 	lui	a1,0x0
 1c8:	3c060000 	lui	a2,0x0
 1cc:	24c60000 	addiu	a2,a2,0
 1d0:	24a50000 	addiu	a1,a1,0
 1d4:	0c000000 	jal	0 <func_809E18B0>
 1d8:	26040098 	addiu	a0,s0,152
 1dc:	44800000 	mtc1	zero,$f0
 1e0:	24080004 	li	t0,4
 1e4:	afa80014 	sw	t0,20(sp)
 1e8:	44060000 	mfc1	a2,$f0
 1ec:	44070000 	mfc1	a3,$f0
 1f0:	8fa4004c 	lw	a0,76(sp)
 1f4:	02002825 	move	a1,s0
 1f8:	0c000000 	jal	0 <func_809E18B0>
 1fc:	e7a00010 	swc1	$f0,16(sp)
 200:	3c030000 	lui	v1,0x0
 204:	24630000 	addiu	v1,v1,0
 208:	0c000000 	jal	0 <func_809E18B0>
 20c:	8c640000 	lw	a0,0(v1)
 210:	44822000 	mtc1	v0,$f4
 214:	3c030000 	lui	v1,0x0
 218:	24630000 	addiu	v1,v1,0
 21c:	468021a0 	cvt.s.w	$f6,$f4
 220:	90690008 	lbu	t1,8(v1)
 224:	c468000c 	lwc1	$f8,12(v1)
 228:	8c650000 	lw	a1,0(v1)
 22c:	8fa40038 	lw	a0,56(sp)
 230:	3c063f80 	lui	a2,0x3f80
 234:	e7a60010 	swc1	$f6,16(sp)
 238:	24070000 	li	a3,0
 23c:	afa90014 	sw	t1,20(sp)
 240:	0c000000 	jal	0 <func_809E18B0>
 244:	e7a80018 	swc1	$f8,24(sp)
 248:	860b001c 	lh	t3,28(s0)
 24c:	3c01bf80 	lui	at,0xbf80
 250:	44815000 	mtc1	at,$f10
 254:	240a0006 	li	t2,6
 258:	240dffff 	li	t5,-1
 25c:	316c00ff 	andi	t4,t3,0xff
 260:	a20a001f 	sb	t2,31(s0)
 264:	ae0c01f4 	sw	t4,500(s0)
 268:	ae0001ec 	sw	zero,492(s0)
 26c:	ae0001e0 	sw	zero,480(s0)
 270:	ae0d0210 	sw	t5,528(s0)
 274:	02002025 	move	a0,s0
 278:	00002825 	move	a1,zero
 27c:	26060210 	addiu	a2,s0,528
 280:	0c000000 	jal	0 <func_809E18B0>
 284:	e60a006c 	swc1	$f10,108(s0)
 288:	3c013f80 	lui	at,0x3f80
 28c:	44818000 	mtc1	at,$f16
 290:	3c0e0000 	lui	t6,0x0
 294:	25ce0000 	addiu	t6,t6,0
 298:	ae0e0190 	sw	t6,400(s0)
 29c:	e610020c 	swc1	$f16,524(s0)
 2a0:	8fbf002c 	lw	ra,44(sp)
 2a4:	8fb00028 	lw	s0,40(sp)
 2a8:	27bd0048 	addiu	sp,sp,72
 2ac:	03e00008 	jr	ra
 2b0:	00000000 	nop

000002b4 <EnCs_Destroy>:
 2b4:	27bdffe8 	addiu	sp,sp,-24
 2b8:	00803025 	move	a2,a0
 2bc:	afbf0014 	sw	ra,20(sp)
 2c0:	00a02025 	move	a0,a1
 2c4:	0c000000 	jal	0 <func_809E18B0>
 2c8:	24c50194 	addiu	a1,a2,404
 2cc:	8fbf0014 	lw	ra,20(sp)
 2d0:	27bd0018 	addiu	sp,sp,24
 2d4:	03e00008 	jr	ra
 2d8:	00000000 	nop

000002dc <func_809E1B8C>:
 2dc:	27bdffd0 	addiu	sp,sp,-48
 2e0:	afb00018 	sw	s0,24(sp)
 2e4:	00808025 	move	s0,a0
 2e8:	afbf001c 	sw	ra,28(sp)
 2ec:	24030001 	li	v1,1
 2f0:	afa50034 	sw	a1,52(sp)
 2f4:	afa30024 	sw	v1,36(sp)
 2f8:	0c000000 	jal	0 <func_809E18B0>
 2fc:	24a420d8 	addiu	a0,a1,8408
 300:	2c410007 	sltiu	at,v0,7
 304:	1020003b 	beqz	at,3f4 <L809E1CA4>
 308:	8fa30024 	lw	v1,36(sp)
 30c:	00027080 	sll	t6,v0,0x2
 310:	3c010000 	lui	at,0x0
 314:	002e0821 	addu	at,at,t6
 318:	8c2e0000 	lw	t6,0(at)
 31c:	01c00008 	jr	t6
 320:	00000000 	nop

00000324 <L809E1BD4>:
 324:	8fa40034 	lw	a0,52(sp)
 328:	0c000000 	jal	0 <func_809E18B0>
 32c:	afa30024 	sw	v1,36(sp)
 330:	10400030 	beqz	v0,3f4 <L809E1CA4>
 334:	8fa30024 	lw	v1,36(sp)
 338:	8faf0034 	lw	t7,52(sp)
 33c:	3c180001 	lui	t8,0x1
 340:	24082024 	li	t0,8228
 344:	030fc021 	addu	t8,t8,t7
 348:	931804bd 	lbu	t8,1213(t8)
 34c:	02002025 	move	a0,s0
 350:	24050001 	li	a1,1
 354:	17000009 	bnez	t8,37c <L809E1BD4+0x58>
 358:	26060210 	addiu	a2,s0,528
 35c:	24192026 	li	t9,8230
 360:	a619010e 	sh	t9,270(s0)
 364:	02002025 	move	a0,s0
 368:	24050003 	li	a1,3
 36c:	0c000000 	jal	0 <func_809E18B0>
 370:	26060210 	addiu	a2,s0,528
 374:	1000001f 	b	3f4 <L809E1CA4>
 378:	24030002 	li	v1,2
 37c:	0c000000 	jal	0 <func_809E18B0>
 380:	a608010e 	sh	t0,270(s0)
 384:	1000001b 	b	3f4 <L809E1CA4>
 388:	24030002 	li	v1,2

0000038c <L809E1C3C>:
 38c:	8fa40034 	lw	a0,52(sp)
 390:	0c000000 	jal	0 <func_809E18B0>
 394:	afa30024 	sw	v1,36(sp)
 398:	10400016 	beqz	v0,3f4 <L809E1CA4>
 39c:	8fa30024 	lw	v1,36(sp)
 3a0:	9609010e 	lhu	t1,270(s0)
 3a4:	24012026 	li	at,8230
 3a8:	00001825 	move	v1,zero
 3ac:	15210011 	bne	t1,at,3f4 <L809E1CA4>
 3b0:	00000000 	nop
 3b4:	0c000000 	jal	0 <func_809E18B0>
 3b8:	8fa40034 	lw	a0,52(sp)
 3bc:	8fa40034 	lw	a0,52(sp)
 3c0:	0c000000 	jal	0 <func_809E18B0>
 3c4:	2405002c 	li	a1,44
 3c8:	3c030000 	lui	v1,0x0
 3cc:	24630000 	addiu	v1,v1,0
 3d0:	946a0ef6 	lhu	t2,3830(v1)
 3d4:	2404001e 	li	a0,30
 3d8:	354b0400 	ori	t3,t2,0x400
 3dc:	0c000000 	jal	0 <func_809E18B0>
 3e0:	a46b0ef6 	sh	t3,3830(v1)
 3e4:	240c2027 	li	t4,8231
 3e8:	a60c010e 	sh	t4,270(s0)
 3ec:	10000001 	b	3f4 <L809E1CA4>
 3f0:	24030002 	li	v1,2

000003f4 <L809E1CA4>:
 3f4:	8fbf001c 	lw	ra,28(sp)
 3f8:	8fb00018 	lw	s0,24(sp)
 3fc:	27bd0030 	addiu	sp,sp,48
 400:	03e00008 	jr	ra
 404:	00601025 	move	v0,v1

00000408 <func_809E1CB8>:
 408:	27bdffe0 	addiu	sp,sp,-32
 40c:	afbf0014 	sw	ra,20(sp)
 410:	afa40020 	sw	a0,32(sp)
 414:	8cae1c44 	lw	t6,7236(a1)
 418:	00a02025 	move	a0,a1
 41c:	2405000f 	li	a1,15
 420:	0c000000 	jal	0 <func_809E18B0>
 424:	afae001c 	sw	t6,28(sp)
 428:	3c0f0000 	lui	t7,0x0
 42c:	95ef0ef6 	lhu	t7,3830(t7)
 430:	00401825 	move	v1,v0
 434:	00402025 	move	a0,v0
 438:	31f80400 	andi	t8,t7,0x400
 43c:	13000005 	beqz	t8,454 <func_809E1CB8+0x4c>
 440:	8fbf0014 	lw	ra,20(sp)
 444:	5440000e 	bnezl	v0,480 <func_809E1CB8+0x78>
 448:	00801025 	move	v0,a0
 44c:	1000000b 	b	47c <func_809E1CB8+0x74>
 450:	24042028 	li	a0,8232
 454:	8fb9001c 	lw	t9,28(sp)
 458:	24010003 	li	at,3
 45c:	9328015f 	lbu	t0,351(t9)
 460:	15010003 	bne	t0,at,470 <func_809E1CB8+0x68>
 464:	00000000 	nop
 468:	10000004 	b	47c <func_809E1CB8+0x74>
 46c:	24042023 	li	a0,8227
 470:	54600003 	bnezl	v1,480 <func_809E1CB8+0x78>
 474:	00801025 	move	v0,a0
 478:	24042022 	li	a0,8226
 47c:	00801025 	move	v0,a0
 480:	03e00008 	jr	ra
 484:	27bd0020 	addiu	sp,sp,32

00000488 <func_809E1D38>:
 488:	27bdffd0 	addiu	sp,sp,-48
 48c:	afbf001c 	sw	ra,28(sp)
 490:	afb00018 	sw	s0,24(sp)
 494:	8c8201e0 	lw	v0,480(a0)
 498:	24010002 	li	at,2
 49c:	00808025 	move	s0,a0
 4a0:	14410007 	bne	v0,at,4c0 <func_809E1D38+0x38>
 4a4:	00a03025 	move	a2,a1
 4a8:	00a02025 	move	a0,a1
 4ac:	0c000000 	jal	0 <func_809E18B0>
 4b0:	9605010e 	lhu	a1,270(s0)
 4b4:	240e0001 	li	t6,1
 4b8:	10000040 	b	5bc <func_809E1D38+0x134>
 4bc:	ae0e01e0 	sw	t6,480(s0)
 4c0:	24010001 	li	at,1
 4c4:	14410006 	bne	v0,at,4e0 <func_809E1D38+0x58>
 4c8:	02002025 	move	a0,s0
 4cc:	02002025 	move	a0,s0
 4d0:	0c000000 	jal	0 <func_809E18B0>
 4d4:	00c02825 	move	a1,a2
 4d8:	10000038 	b	5bc <func_809E1D38+0x134>
 4dc:	ae0201e0 	sw	v0,480(s0)
 4e0:	00c02825 	move	a1,a2
 4e4:	0c000000 	jal	0 <func_809E18B0>
 4e8:	afa60034 	sw	a2,52(sp)
 4ec:	1040001e 	beqz	v0,568 <func_809E1D38+0xe0>
 4f0:	8fa40034 	lw	a0,52(sp)
 4f4:	9602010e 	lhu	v0,270(s0)
 4f8:	24032022 	li	v1,8226
 4fc:	02002025 	move	a0,s0
 500:	10620005 	beq	v1,v0,518 <func_809E1D38+0x90>
 504:	24050003 	li	a1,3
 508:	10620006 	beq	v1,v0,524 <func_809E1D38+0x9c>
 50c:	24012028 	li	at,8232
 510:	50410005 	beql	v0,at,528 <func_809E1D38+0xa0>
 514:	24012023 	li	at,8227
 518:	0c000000 	jal	0 <func_809E18B0>
 51c:	26060210 	addiu	a2,s0,528
 520:	9602010e 	lhu	v0,270(s0)
 524:	24012023 	li	at,8227
 528:	10410003 	beq	v0,at,538 <func_809E1D38+0xb0>
 52c:	02002025 	move	a0,s0
 530:	24012028 	li	at,8232
 534:	14410004 	bne	v0,at,548 <func_809E1D38+0xc0>
 538:	24050001 	li	a1,1
 53c:	0c000000 	jal	0 <func_809E18B0>
 540:	26060210 	addiu	a2,s0,528
 544:	9602010e 	lhu	v0,270(s0)
 548:	24012023 	li	at,8227
 54c:	54410004 	bnel	v0,at,560 <func_809E1D38+0xd8>
 550:	240f0001 	li	t7,1
 554:	0c000000 	jal	0 <func_809E18B0>
 558:	24044807 	li	a0,18439
 55c:	240f0001 	li	t7,1
 560:	10000016 	b	5bc <func_809E1D38+0x134>
 564:	ae0f01e0 	sw	t7,480(s0)
 568:	02002825 	move	a1,s0
 56c:	27a6002a 	addiu	a2,sp,42
 570:	0c000000 	jal	0 <func_809E18B0>
 574:	27a70028 	addiu	a3,sp,40
 578:	87a2002a 	lh	v0,42(sp)
 57c:	0440000f 	bltz	v0,5bc <func_809E1D38+0x134>
 580:	28410141 	slti	at,v0,321
 584:	1020000d 	beqz	at,5bc <func_809E1D38+0x134>
 588:	87a20028 	lh	v0,40(sp)
 58c:	0440000b 	bltz	v0,5bc <func_809E1D38+0x134>
 590:	284100f1 	slti	at,v0,241
 594:	10200009 	beqz	at,5bc <func_809E1D38+0x134>
 598:	02002025 	move	a0,s0
 59c:	8fa50034 	lw	a1,52(sp)
 5a0:	0c000000 	jal	0 <func_809E18B0>
 5a4:	3c0642c8 	lui	a2,0x42c8
 5a8:	10400004 	beqz	v0,5bc <func_809E1D38+0x134>
 5ac:	02002025 	move	a0,s0
 5b0:	0c000000 	jal	0 <func_809E18B0>
 5b4:	8fa50034 	lw	a1,52(sp)
 5b8:	a602010e 	sh	v0,270(s0)
 5bc:	8fbf001c 	lw	ra,28(sp)
 5c0:	8fb00018 	lw	s0,24(sp)
 5c4:	27bd0030 	addiu	sp,sp,48
 5c8:	03e00008 	jr	ra
 5cc:	00000000 	nop

000005d0 <func_809E1E80>:
 5d0:	000570c0 	sll	t6,a1,0x3
 5d4:	01c47821 	addu	t7,t6,a0
 5d8:	03e00008 	jr	ra
 5dc:	91e20000 	lbu	v0,0(t7)

000005e0 <func_809E1E90>:
 5e0:	000670c0 	sll	t6,a2,0x3
 5e4:	008e7821 	addu	t7,a0,t6
 5e8:	8de80004 	lw	t0,4(t7)
 5ec:	3c0a0000 	lui	t2,0x0
 5f0:	3c0100ff 	lui	at,0xff
 5f4:	0008c100 	sll	t8,t0,0x4
 5f8:	0018cf02 	srl	t9,t8,0x1c
 5fc:	00194880 	sll	t1,t9,0x2
 600:	01495021 	addu	t2,t2,t1
 604:	8d4a0000 	lw	t2,0(t2)
 608:	3421ffff 	ori	at,at,0xffff
 60c:	00076880 	sll	t5,a3,0x2
 610:	01a76823 	subu	t5,t5,a3
 614:	01015824 	and	t3,t0,at
 618:	000d6840 	sll	t5,t5,0x1
 61c:	014b6021 	addu	t4,t2,t3
 620:	018d1821 	addu	v1,t4,t5
 624:	3c018000 	lui	at,0x8000
 628:	00611821 	addu	v1,v1,at
 62c:	846e0000 	lh	t6,0(v1)
 630:	00001025 	move	v0,zero
 634:	448e2000 	mtc1	t6,$f4
 638:	00000000 	nop
 63c:	468021a0 	cvt.s.w	$f6,$f4
 640:	e4a60000 	swc1	$f6,0(a1)
 644:	846f0002 	lh	t7,2(v1)
 648:	448f4000 	mtc1	t7,$f8
 64c:	00000000 	nop
 650:	468042a0 	cvt.s.w	$f10,$f8
 654:	e4aa0004 	swc1	$f10,4(a1)
 658:	84780004 	lh	t8,4(v1)
 65c:	44988000 	mtc1	t8,$f16
 660:	00000000 	nop
 664:	468084a0 	cvt.s.w	$f18,$f16
 668:	03e00008 	jr	ra
 66c:	e4b20008 	swc1	$f18,8(a1)

00000670 <func_809E1F20>:
 670:	27bdff88 	addiu	sp,sp,-120
 674:	afbf004c 	sw	ra,76(sp)
 678:	afb20048 	sw	s2,72(sp)
 67c:	afb10044 	sw	s1,68(sp)
 680:	afb00040 	sw	s0,64(sp)
 684:	afa5007c 	sw	a1,124(sp)
 688:	00808025 	move	s0,a0
 68c:	f7ba0038 	sdc1	$f26,56(sp)
 690:	f7b80030 	sdc1	$f24,48(sp)
 694:	f7b60028 	sdc1	$f22,40(sp)
 698:	f7b40020 	sdc1	$f20,32(sp)
 69c:	3c010001 	lui	at,0x1
 6a0:	27b20064 	addiu	s2,sp,100
 6a4:	00a18821 	addu	s1,a1,at
 6a8:	8e241e08 	lw	a0,7688(s1)
 6ac:	02402825 	move	a1,s2
 6b0:	8e0701fc 	lw	a3,508(s0)
 6b4:	0c000000 	jal	0 <func_809E18B0>
 6b8:	8e0601f4 	lw	a2,500(s0)
 6bc:	c7a40064 	lwc1	$f4,100(sp)
 6c0:	c6060024 	lwc1	$f6,36(s0)
 6c4:	c7a8006c 	lwc1	$f8,108(sp)
 6c8:	c60a002c 	lwc1	$f10,44(s0)
 6cc:	46062501 	sub.s	$f20,$f4,$f6
 6d0:	460a4581 	sub.s	$f22,$f8,$f10
 6d4:	4600a306 	mov.s	$f12,$f20
 6d8:	0c000000 	jal	0 <func_809E18B0>
 6dc:	4600b386 	mov.s	$f14,$f22
 6e0:	3c010000 	lui	at,0x0
 6e4:	c4380000 	lwc1	$f24,0(at)
 6e8:	3c010000 	lui	at,0x0
 6ec:	c43a0000 	lwc1	$f26,0(at)
 6f0:	46180402 	mul.s	$f16,$f0,$f24
 6f4:	00000000 	nop
 6f8:	4614a202 	mul.s	$f8,$f20,$f20
 6fc:	00000000 	nop
 700:	4616b282 	mul.s	$f10,$f22,$f22
 704:	4600848d 	trunc.w.s	$f18,$f16
 708:	460a4000 	add.s	$f0,$f8,$f10
 70c:	440f9000 	mfc1	t7,$f18
 710:	46000004 	sqrt.s	$f0,$f0
 714:	000fc400 	sll	t8,t7,0x10
 718:	0018cc03 	sra	t9,t8,0x10
 71c:	44992000 	mtc1	t9,$f4
 720:	00000000 	nop
 724:	468021a0 	cvt.s.w	$f6,$f4
 728:	e6000208 	swc1	$f0,520(s0)
 72c:	461a003e 	c.le.s	$f0,$f26
 730:	e6060204 	swc1	$f6,516(s0)
 734:	4500002e 	bc1f	7f0 <func_809E1F20+0x180>
 738:	00000000 	nop
 73c:	8e0801fc 	lw	t0,508(s0)
 740:	8e0501f4 	lw	a1,500(s0)
 744:	25090001 	addiu	t1,t0,1
 748:	ae0901fc 	sw	t1,508(s0)
 74c:	0c000000 	jal	0 <func_809E18B0>
 750:	8e241e08 	lw	a0,7688(s1)
 754:	8e0701fc 	lw	a3,508(s0)
 758:	02402825 	move	a1,s2
 75c:	04e00003 	bltz	a3,76c <func_809E1F20+0xfc>
 760:	00e2082a 	slt	at,a3,v0
 764:	54200004 	bnezl	at,778 <func_809E1F20+0x108>
 768:	8e241e08 	lw	a0,7688(s1)
 76c:	ae0001fc 	sw	zero,508(s0)
 770:	00003825 	move	a3,zero
 774:	8e241e08 	lw	a0,7688(s1)
 778:	0c000000 	jal	0 <func_809E18B0>
 77c:	8e0601f4 	lw	a2,500(s0)
 780:	c7b00064 	lwc1	$f16,100(sp)
 784:	c6120024 	lwc1	$f18,36(s0)
 788:	c7a4006c 	lwc1	$f4,108(sp)
 78c:	c606002c 	lwc1	$f6,44(s0)
 790:	46128501 	sub.s	$f20,$f16,$f18
 794:	46062581 	sub.s	$f22,$f4,$f6
 798:	4600a306 	mov.s	$f12,$f20
 79c:	0c000000 	jal	0 <func_809E18B0>
 7a0:	4600b386 	mov.s	$f14,$f22
 7a4:	46180202 	mul.s	$f8,$f0,$f24
 7a8:	00000000 	nop
 7ac:	4614a102 	mul.s	$f4,$f20,$f20
 7b0:	00000000 	nop
 7b4:	4616b182 	mul.s	$f6,$f22,$f22
 7b8:	4600428d 	trunc.w.s	$f10,$f8
 7bc:	46062000 	add.s	$f0,$f4,$f6
 7c0:	440b5000 	mfc1	t3,$f10
 7c4:	46000004 	sqrt.s	$f0,$f0
 7c8:	000b6400 	sll	t4,t3,0x10
 7cc:	000c6c03 	sra	t5,t4,0x10
 7d0:	448d8000 	mtc1	t5,$f16
 7d4:	00000000 	nop
 7d8:	468084a0 	cvt.s.w	$f18,$f16
 7dc:	e6000208 	swc1	$f0,520(s0)
 7e0:	461a003e 	c.le.s	$f0,$f26
 7e4:	e6120204 	swc1	$f18,516(s0)
 7e8:	4501ffd4 	bc1t	73c <func_809E1F20+0xcc>
 7ec:	00000000 	nop
 7f0:	c6080204 	lwc1	$f8,516(s0)
 7f4:	afa00010 	sw	zero,16(sp)
 7f8:	260400b6 	addiu	a0,s0,182
 7fc:	4600428d 	trunc.w.s	$f10,$f8
 800:	24060001 	li	a2,1
 804:	240709c4 	li	a3,2500
 808:	44055000 	mfc1	a1,$f10
 80c:	00000000 	nop
 810:	00052c00 	sll	a1,a1,0x10
 814:	0c000000 	jal	0 <func_809E18B0>
 818:	00052c03 	sra	a1,a1,0x10
 81c:	860f00b6 	lh	t7,182(s0)
 820:	c610020c 	lwc1	$f16,524(s0)
 824:	02002025 	move	a0,s0
 828:	a60f0032 	sh	t7,50(s0)
 82c:	0c000000 	jal	0 <func_809E18B0>
 830:	e6100068 	swc1	$f16,104(s0)
 834:	44800000 	mtc1	zero,$f0
 838:	24180004 	li	t8,4
 83c:	afb80014 	sw	t8,20(sp)
 840:	44060000 	mfc1	a2,$f0
 844:	44070000 	mfc1	a3,$f0
 848:	8fa4007c 	lw	a0,124(sp)
 84c:	02002825 	move	a1,s0
 850:	0c000000 	jal	0 <func_809E18B0>
 854:	e7a00010 	swc1	$f0,16(sp)
 858:	8fbf004c 	lw	ra,76(sp)
 85c:	d7b40020 	ldc1	$f20,32(sp)
 860:	d7b60028 	ldc1	$f22,40(sp)
 864:	d7b80030 	ldc1	$f24,48(sp)
 868:	d7ba0038 	ldc1	$f26,56(sp)
 86c:	8fb00040 	lw	s0,64(sp)
 870:	8fb10044 	lw	s1,68(sp)
 874:	8fb20048 	lw	s2,72(sp)
 878:	27bd0078 	addiu	sp,sp,120
 87c:	03e00008 	jr	ra
 880:	00001025 	move	v0,zero

00000884 <func_809E2134>:
 884:	27bdffe8 	addiu	sp,sp,-24
 888:	afbf0014 	sw	ra,20(sp)
 88c:	afa5001c 	sw	a1,28(sp)
 890:	8c8e01e0 	lw	t6,480(a0)
 894:	3c0f0000 	lui	t7,0x0
 898:	00803825 	move	a3,a0
 89c:	11c00003 	beqz	t6,8ac <func_809E2134+0x28>
 8a0:	25ef0000 	addiu	t7,t7,0
 8a4:	1000005b 	b	a14 <func_809E2134+0x190>
 8a8:	ac8f0190 	sw	t7,400(a0)
 8ac:	24e4014c 	addiu	a0,a3,332
 8b0:	0c000000 	jal	0 <func_809E18B0>
 8b4:	afa70018 	sw	a3,24(sp)
 8b8:	1040003b 	beqz	v0,9a8 <func_809E2134+0x124>
 8bc:	8fa70018 	lw	a3,24(sp)
 8c0:	8cf801e0 	lw	t8,480(a3)
 8c4:	8ce50210 	lw	a1,528(a3)
 8c8:	3c190000 	lui	t9,0x0
 8cc:	57000032 	bnezl	t8,998 <func_809E2134+0x114>
 8d0:	00e02025 	move	a0,a3
 8d4:	97390ef6 	lhu	t9,3830(t9)
 8d8:	33280400 	andi	t0,t9,0x400
 8dc:	1100000b 	beqz	t0,90c <func_809E2134+0x88>
 8e0:	00000000 	nop
 8e4:	0c000000 	jal	0 <func_809E18B0>
 8e8:	afa70018 	sw	a3,24(sp)
 8ec:	3c014120 	lui	at,0x4120
 8f0:	44812000 	mtc1	at,$f4
 8f4:	8fa70018 	lw	a3,24(sp)
 8f8:	46040182 	mul.s	$f6,$f0,$f4
 8fc:	4600320d 	trunc.w.s	$f8,$f6
 900:	44024000 	mfc1	v0,$f8
 904:	1000000a 	b	930 <func_809E2134+0xac>
 908:	00000000 	nop
 90c:	0c000000 	jal	0 <func_809E18B0>
 910:	afa70018 	sw	a3,24(sp)
 914:	3c0140a0 	lui	at,0x40a0
 918:	44815000 	mtc1	at,$f10
 91c:	8fa70018 	lw	a3,24(sp)
 920:	460a0402 	mul.s	$f16,$f0,$f10
 924:	4600848d 	trunc.w.s	$f18,$f16
 928:	44029000 	mfc1	v0,$f18
 92c:	00000000 	nop
 930:	14400018 	bnez	v0,994 <func_809E2134+0x110>
 934:	00002825 	move	a1,zero
 938:	3c0b0000 	lui	t3,0x0
 93c:	956b0ef6 	lhu	t3,3830(t3)
 940:	24050002 	li	a1,2
 944:	316c0400 	andi	t4,t3,0x400
 948:	1180000e 	beqz	t4,984 <func_809E2134+0x100>
 94c:	00000000 	nop
 950:	0c000000 	jal	0 <func_809E18B0>
 954:	afa70018 	sw	a3,24(sp)
 958:	46000100 	add.s	$f4,$f0,$f0
 95c:	8fa70018 	lw	a3,24(sp)
 960:	4600218d 	trunc.w.s	$f6,$f4
 964:	440e3000 	mfc1	t6,$f6
 968:	00000000 	nop
 96c:	15c00003 	bnez	t6,97c <func_809E2134+0xf8>
 970:	00000000 	nop
 974:	10000003 	b	984 <func_809E2134+0x100>
 978:	24050002 	li	a1,2
 97c:	10000001 	b	984 <func_809E2134+0x100>
 980:	24050001 	li	a1,1
 984:	3c0f0000 	lui	t7,0x0
 988:	25ef0000 	addiu	t7,t7,0
 98c:	10000001 	b	994 <func_809E2134+0x110>
 990:	acef0190 	sw	t7,400(a3)
 994:	00e02025 	move	a0,a3
 998:	24e60210 	addiu	a2,a3,528
 99c:	0c000000 	jal	0 <func_809E18B0>
 9a0:	afa70018 	sw	a3,24(sp)
 9a4:	8fa70018 	lw	a3,24(sp)
 9a8:	8cf801e0 	lw	t8,480(a3)
 9ac:	00e02025 	move	a0,a3
 9b0:	57000019 	bnezl	t8,a18 <func_809E2134+0x194>
 9b4:	8fbf0014 	lw	ra,20(sp)
 9b8:	c4e80164 	lwc1	$f8,356(a3)
 9bc:	4600428d 	trunc.w.s	$f10,$f8
 9c0:	44025000 	mfc1	v0,$f10
 9c4:	00000000 	nop
 9c8:	28410008 	slti	at,v0,8
 9cc:	14200002 	bnez	at,9d8 <func_809E2134+0x154>
 9d0:	28410010 	slti	at,v0,16
 9d4:	14200007 	bnez	at,9f4 <func_809E2134+0x170>
 9d8:	28410017 	slti	at,v0,23
 9dc:	14200003 	bnez	at,9ec <func_809E2134+0x168>
 9e0:	2841001e 	slti	at,v0,30
 9e4:	54200004 	bnezl	at,9f8 <func_809E2134+0x174>
 9e8:	44808000 	mtc1	zero,$f16
 9ec:	14400004 	bnez	v0,a00 <func_809E2134+0x17c>
 9f0:	3c013f80 	lui	at,0x3f80
 9f4:	44808000 	mtc1	zero,$f16
 9f8:	10000004 	b	a0c <func_809E2134+0x188>
 9fc:	e4f0020c 	swc1	$f16,524(a3)
 a00:	44819000 	mtc1	at,$f18
 a04:	00000000 	nop
 a08:	e4f2020c 	swc1	$f18,524(a3)
 a0c:	0c000000 	jal	0 <func_809E18B0>
 a10:	8fa5001c 	lw	a1,28(sp)
 a14:	8fbf0014 	lw	ra,20(sp)
 a18:	27bd0018 	addiu	sp,sp,24
 a1c:	03e00008 	jr	ra
 a20:	00000000 	nop

00000a24 <func_809E22D4>:
 a24:	27bdffe8 	addiu	sp,sp,-24
 a28:	afbf0014 	sw	ra,20(sp)
 a2c:	afa5001c 	sw	a1,28(sp)
 a30:	8c8e01e0 	lw	t6,480(a0)
 a34:	3c0f0000 	lui	t7,0x0
 a38:	00803825 	move	a3,a0
 a3c:	11c00003 	beqz	t6,a4c <func_809E22D4+0x28>
 a40:	25ef0000 	addiu	t7,t7,0
 a44:	10000016 	b	aa0 <func_809E22D4+0x7c>
 a48:	ac8f0190 	sw	t7,400(a0)
 a4c:	24e4014c 	addiu	a0,a3,332
 a50:	0c000000 	jal	0 <func_809E18B0>
 a54:	afa70018 	sw	a3,24(sp)
 a58:	10400011 	beqz	v0,aa0 <func_809E22D4+0x7c>
 a5c:	8fa70018 	lw	a3,24(sp)
 a60:	8cf801e0 	lw	t8,480(a3)
 a64:	8ce50210 	lw	a1,528(a3)
 a68:	00e02025 	move	a0,a3
 a6c:	1700000a 	bnez	t8,a98 <func_809E22D4+0x74>
 a70:	00000000 	nop
 a74:	8ce20200 	lw	v0,512(a3)
 a78:	3c080000 	lui	t0,0x0
 a7c:	25080000 	addiu	t0,t0,0
 a80:	18400003 	blez	v0,a90 <func_809E22D4+0x6c>
 a84:	2459ffff 	addiu	t9,v0,-1
 a88:	10000003 	b	a98 <func_809E22D4+0x74>
 a8c:	acf90200 	sw	t9,512(a3)
 a90:	00002825 	move	a1,zero
 a94:	ace80190 	sw	t0,400(a3)
 a98:	0c000000 	jal	0 <func_809E18B0>
 a9c:	24e60210 	addiu	a2,a3,528
 aa0:	8fbf0014 	lw	ra,20(sp)
 aa4:	27bd0018 	addiu	sp,sp,24
 aa8:	03e00008 	jr	ra
 aac:	00000000 	nop

00000ab0 <func_809E2360>:
 ab0:	27bdffd8 	addiu	sp,sp,-40
 ab4:	afbf001c 	sw	ra,28(sp)
 ab8:	afb00018 	sw	s0,24(sp)
 abc:	8ca31c44 	lw	v1,7236(a1)
 ac0:	00808025 	move	s0,a0
 ac4:	2484014c 	addiu	a0,a0,332
 ac8:	0c000000 	jal	0 <func_809E18B0>
 acc:	afa30024 	sw	v1,36(sp)
 ad0:	10400007 	beqz	v0,af0 <func_809E2360+0x40>
 ad4:	8fa30024 	lw	v1,36(sp)
 ad8:	8e050210 	lw	a1,528(s0)
 adc:	afa30024 	sw	v1,36(sp)
 ae0:	02002025 	move	a0,s0
 ae4:	0c000000 	jal	0 <func_809E18B0>
 ae8:	26060210 	addiu	a2,s0,528
 aec:	8fa30024 	lw	v1,36(sp)
 af0:	8e0e0280 	lw	t6,640(s0)
 af4:	02002025 	move	a0,s0
 af8:	26050258 	addiu	a1,s0,600
 afc:	35cf0001 	ori	t7,t6,0x1
 b00:	ae0f0280 	sw	t7,640(s0)
 b04:	c4640038 	lwc1	$f4,56(v1)
 b08:	00003025 	move	a2,zero
 b0c:	24070004 	li	a3,4
 b10:	e6040270 	swc1	$f4,624(s0)
 b14:	c466003c 	lwc1	$f6,60(v1)
 b18:	e6060274 	swc1	$f6,628(s0)
 b1c:	c4680040 	lwc1	$f8,64(v1)
 b20:	0c000000 	jal	0 <func_809E18B0>
 b24:	e6080278 	swc1	$f8,632(s0)
 b28:	8e1801e0 	lw	t8,480(s0)
 b2c:	02002025 	move	a0,s0
 b30:	00002825 	move	a1,zero
 b34:	5700000b 	bnezl	t8,b64 <func_809E2360+0xb4>
 b38:	8fbf001c 	lw	ra,28(sp)
 b3c:	0c000000 	jal	0 <func_809E18B0>
 b40:	26060210 	addiu	a2,s0,528
 b44:	8e080280 	lw	t0,640(s0)
 b48:	3c190000 	lui	t9,0x0
 b4c:	2401fffe 	li	at,-2
 b50:	27390000 	addiu	t9,t9,0
 b54:	01014824 	and	t1,t0,at
 b58:	ae190190 	sw	t9,400(s0)
 b5c:	ae090280 	sw	t1,640(s0)
 b60:	8fbf001c 	lw	ra,28(sp)
 b64:	8fb00018 	lw	s0,24(sp)
 b68:	27bd0028 	addiu	sp,sp,40
 b6c:	03e00008 	jr	ra
 b70:	00000000 	nop

00000b74 <EnCs_Update>:
 b74:	27bdffd0 	addiu	sp,sp,-48
 b78:	afbf001c 	sw	ra,28(sp)
 b7c:	afb00018 	sw	s0,24(sp)
 b80:	afa50034 	sw	a1,52(sp)
 b84:	8c820210 	lw	v0,528(a0)
 b88:	00808025 	move	s0,a0
 b8c:	24010001 	li	at,1
 b90:	1440000f 	bnez	v0,bd0 <EnCs_Update+0x5c>
 b94:	00000000 	nop
 b98:	c4840164 	lwc1	$f4,356(a0)
 b9c:	24010009 	li	at,9
 ba0:	02002025 	move	a0,s0
 ba4:	4600218d 	trunc.w.s	$f6,$f4
 ba8:	44023000 	mfc1	v0,$f6
 bac:	00000000 	nop
 bb0:	10410003 	beq	v0,at,bc0 <EnCs_Update+0x4c>
 bb4:	24010017 	li	at,23
 bb8:	54410023 	bnel	v0,at,c48 <EnCs_Update+0xd4>
 bbc:	26060194 	addiu	a2,s0,404
 bc0:	0c000000 	jal	0 <func_809E18B0>
 bc4:	240528ef 	li	a1,10479
 bc8:	1000001f 	b	c48 <EnCs_Update+0xd4>
 bcc:	26060194 	addiu	a2,s0,404
 bd0:	54410010 	bnel	v0,at,c14 <EnCs_Update+0xa0>
 bd4:	24010002 	li	at,2
 bd8:	c6080164 	lwc1	$f8,356(s0)
 bdc:	2401000a 	li	at,10
 be0:	02002025 	move	a0,s0
 be4:	4600428d 	trunc.w.s	$f10,$f8
 be8:	44025000 	mfc1	v0,$f10
 bec:	00000000 	nop
 bf0:	10410003 	beq	v0,at,c00 <EnCs_Update+0x8c>
 bf4:	24010019 	li	at,25
 bf8:	54410013 	bnel	v0,at,c48 <EnCs_Update+0xd4>
 bfc:	26060194 	addiu	a2,s0,404
 c00:	0c000000 	jal	0 <func_809E18B0>
 c04:	240528ef 	li	a1,10479
 c08:	1000000f 	b	c48 <EnCs_Update+0xd4>
 c0c:	26060194 	addiu	a2,s0,404
 c10:	24010002 	li	at,2
 c14:	5441000c 	bnel	v0,at,c48 <EnCs_Update+0xd4>
 c18:	26060194 	addiu	a2,s0,404
 c1c:	c6100164 	lwc1	$f16,356(s0)
 c20:	24010014 	li	at,20
 c24:	02002025 	move	a0,s0
 c28:	4600848d 	trunc.w.s	$f18,$f16
 c2c:	44199000 	mfc1	t9,$f18
 c30:	00000000 	nop
 c34:	57210004 	bnel	t9,at,c48 <EnCs_Update+0xd4>
 c38:	26060194 	addiu	a2,s0,404
 c3c:	0c000000 	jal	0 <func_809E18B0>
 c40:	240528ef 	li	a1,10479
 c44:	26060194 	addiu	a2,s0,404
 c48:	00c02825 	move	a1,a2
 c4c:	afa60024 	sw	a2,36(sp)
 c50:	0c000000 	jal	0 <func_809E18B0>
 c54:	02002025 	move	a0,s0
 c58:	8fa40034 	lw	a0,52(sp)
 c5c:	3c010001 	lui	at,0x1
 c60:	34211e60 	ori	at,at,0x1e60
 c64:	8fa60024 	lw	a2,36(sp)
 c68:	0c000000 	jal	0 <func_809E18B0>
 c6c:	00812821 	addu	a1,a0,at
 c70:	8e190190 	lw	t9,400(s0)
 c74:	02002025 	move	a0,s0
 c78:	8fa50034 	lw	a1,52(sp)
 c7c:	0320f809 	jalr	t9
 c80:	00000000 	nop
 c84:	02002025 	move	a0,s0
 c88:	0c000000 	jal	0 <func_809E18B0>
 c8c:	8fa50034 	lw	a1,52(sp)
 c90:	8e0901e8 	lw	t1,488(s0)
 c94:	3c0f0000 	lui	t7,0x0
 c98:	252affff 	addiu	t2,t1,-1
 c9c:	0541000c 	bgez	t2,cd0 <EnCs_Update+0x15c>
 ca0:	ae0a01e8 	sw	t2,488(s0)
 ca4:	8e0c01e4 	lw	t4,484(s0)
 ca8:	25820001 	addiu	v0,t4,1
 cac:	28410003 	slti	at,v0,3
 cb0:	14200003 	bnez	at,cc0 <EnCs_Update+0x14c>
 cb4:	ae0201e4 	sw	v0,484(s0)
 cb8:	ae0001e4 	sw	zero,484(s0)
 cbc:	00001025 	move	v0,zero
 cc0:	00027080 	sll	t6,v0,0x2
 cc4:	01ee7821 	addu	t7,t7,t6
 cc8:	8def0000 	lw	t7,0(t7)
 ccc:	ae0f01e8 	sw	t7,488(s0)
 cd0:	8fbf001c 	lw	ra,28(sp)
 cd4:	8fb00018 	lw	s0,24(sp)
 cd8:	27bd0030 	addiu	sp,sp,48
 cdc:	03e00008 	jr	ra
 ce0:	00000000 	nop

00000ce4 <EnCs_Draw>:
 ce4:	27bdff88 	addiu	sp,sp,-120
 ce8:	afb1002c 	sw	s1,44(sp)
 cec:	00a08825 	move	s1,a1
 cf0:	afbf0034 	sw	ra,52(sp)
 cf4:	afb20030 	sw	s2,48(sp)
 cf8:	afb00028 	sw	s0,40(sp)
 cfc:	8ca50000 	lw	a1,0(a1)
 d00:	00809025 	move	s2,a0
 d04:	3c060000 	lui	a2,0x0
 d08:	24c60000 	addiu	a2,a2,0
 d0c:	27a4005c 	addiu	a0,sp,92
 d10:	240703c8 	li	a3,968
 d14:	0c000000 	jal	0 <func_809E18B0>
 d18:	00a08025 	move	s0,a1
 d1c:	0c000000 	jal	0 <func_809E18B0>
 d20:	8e240000 	lw	a0,0(s1)
 d24:	8e0302c0 	lw	v1,704(s0)
 d28:	3c0fdb06 	lui	t7,0xdb06
 d2c:	35ef0020 	ori	t7,t7,0x20
 d30:	246e0008 	addiu	t6,v1,8
 d34:	ae0e02c0 	sw	t6,704(s0)
 d38:	ac6f0000 	sw	t7,0(v1)
 d3c:	8e5801e4 	lw	t8,484(s2)
 d40:	3c040000 	lui	a0,0x0
 d44:	3c0c0000 	lui	t4,0x0
 d48:	0018c880 	sll	t9,t8,0x2
 d4c:	00992021 	addu	a0,a0,t9
 d50:	8c840000 	lw	a0,0(a0)
 d54:	3c0100ff 	lui	at,0xff
 d58:	3421ffff 	ori	at,at,0xffff
 d5c:	00044900 	sll	t1,a0,0x4
 d60:	00095702 	srl	t2,t1,0x1c
 d64:	000a5880 	sll	t3,t2,0x2
 d68:	018b6021 	addu	t4,t4,t3
 d6c:	8d8c0000 	lw	t4,0(t4)
 d70:	00814024 	and	t0,a0,at
 d74:	3c018000 	lui	at,0x8000
 d78:	010c6821 	addu	t5,t0,t4
 d7c:	01a17021 	addu	t6,t5,at
 d80:	ac6e0004 	sw	t6,4(v1)
 d84:	9247014e 	lbu	a3,334(s2)
 d88:	8e46016c 	lw	a2,364(s2)
 d8c:	8e450150 	lw	a1,336(s2)
 d90:	3c180000 	lui	t8,0x0
 d94:	3c0f0000 	lui	t7,0x0
 d98:	25ef0000 	addiu	t7,t7,0
 d9c:	27180000 	addiu	t8,t8,0
 da0:	afb80014 	sw	t8,20(sp)
 da4:	afaf0010 	sw	t7,16(sp)
 da8:	afb20018 	sw	s2,24(sp)
 dac:	0c000000 	jal	0 <func_809E18B0>
 db0:	02202025 	move	a0,s1
 db4:	3c190000 	lui	t9,0x0
 db8:	97390ef6 	lhu	t9,3830(t9)
 dbc:	3c010001 	lui	at,0x1
 dc0:	342117a4 	ori	at,at,0x17a4
 dc4:	33290400 	andi	t1,t9,0x400
 dc8:	11200036 	beqz	t1,ea4 <EnCs_Draw+0x1c0>
 dcc:	02212021 	addu	a0,s1,at
 dd0:	0c000000 	jal	0 <func_809E18B0>
 dd4:	24050015 	li	a1,21
 dd8:	04400032 	bltz	v0,ea4 <EnCs_Draw+0x1c0>
 ddc:	afa20054 	sw	v0,84(sp)
 de0:	0c000000 	jal	0 <func_809E18B0>
 de4:	26440218 	addiu	a0,s2,536
 de8:	3c050000 	lui	a1,0x0
 dec:	24a50000 	addiu	a1,a1,0
 df0:	8e240000 	lw	a0,0(s1)
 df4:	0c000000 	jal	0 <func_809E18B0>
 df8:	240603e8 	li	a2,1000
 dfc:	8e0302c0 	lw	v1,704(s0)
 e00:	3c05db06 	lui	a1,0xdb06
 e04:	34a50018 	ori	a1,a1,0x18
 e08:	246a0008 	addiu	t2,v1,8
 e0c:	ae0a02c0 	sw	t2,704(s0)
 e10:	ac650000 	sw	a1,0(v1)
 e14:	8fab0054 	lw	t3,84(sp)
 e18:	24060044 	li	a2,68
 e1c:	3c070001 	lui	a3,0x1
 e20:	01660019 	multu	t3,a2
 e24:	3c18db06 	lui	t8,0xdb06
 e28:	37180034 	ori	t8,t8,0x34
 e2c:	2459fe40 	addiu	t9,v0,-448
 e30:	3c0b0603 	lui	t3,0x603
 e34:	256baf70 	addiu	t3,t3,-20624
 e38:	3c0ade00 	lui	t2,0xde00
 e3c:	00004012 	mflo	t0
 e40:	02286021 	addu	t4,s1,t0
 e44:	01876821 	addu	t5,t4,a3
 e48:	8dae17b4 	lw	t6,6068(t5)
 e4c:	ac6e0004 	sw	t6,4(v1)
 e50:	8e0302c0 	lw	v1,704(s0)
 e54:	246f0008 	addiu	t7,v1,8
 e58:	ae0f02c0 	sw	t7,704(s0)
 e5c:	ac790004 	sw	t9,4(v1)
 e60:	ac780000 	sw	t8,0(v1)
 e64:	8e0302c0 	lw	v1,704(s0)
 e68:	24690008 	addiu	t1,v1,8
 e6c:	ae0902c0 	sw	t1,704(s0)
 e70:	ac6b0004 	sw	t3,4(v1)
 e74:	ac6a0000 	sw	t2,0(v1)
 e78:	8e0302c0 	lw	v1,704(s0)
 e7c:	24680008 	addiu	t0,v1,8
 e80:	ae0802c0 	sw	t0,704(s0)
 e84:	ac650000 	sw	a1,0(v1)
 e88:	824c001e 	lb	t4,30(s2)
 e8c:	01860019 	multu	t4,a2
 e90:	00006812 	mflo	t5
 e94:	022d7021 	addu	t6,s1,t5
 e98:	01c77821 	addu	t7,t6,a3
 e9c:	8df817b4 	lw	t8,6068(t7)
 ea0:	ac780004 	sw	t8,4(v1)
 ea4:	3c060000 	lui	a2,0x0
 ea8:	24c60000 	addiu	a2,a2,0
 eac:	27a4005c 	addiu	a0,sp,92
 eb0:	8e250000 	lw	a1,0(s1)
 eb4:	0c000000 	jal	0 <func_809E18B0>
 eb8:	240703f7 	li	a3,1015
 ebc:	8fbf0034 	lw	ra,52(sp)
 ec0:	8fb00028 	lw	s0,40(sp)
 ec4:	8fb1002c 	lw	s1,44(sp)
 ec8:	8fb20030 	lw	s2,48(sp)
 ecc:	03e00008 	jr	ra
 ed0:	27bd0078 	addiu	sp,sp,120

00000ed4 <func_809E2784>:
 ed4:	afa40000 	sw	a0,0(sp)
 ed8:	8fa40014 	lw	a0,20(sp)
 edc:	afa60008 	sw	a2,8(sp)
 ee0:	afa7000c 	sw	a3,12(sp)
 ee4:	8c8e0280 	lw	t6,640(a0)
 ee8:	24010008 	li	at,8
 eec:	31cf0001 	andi	t7,t6,0x1
 ef0:	11e0001a 	beqz	t7,f5c <func_809E2784+0x88>
 ef4:	00000000 	nop
 ef8:	10a10006 	beq	a1,at,f14 <func_809E2784+0x40>
 efc:	8fa20010 	lw	v0,16(sp)
 f00:	2401000f 	li	at,15
 f04:	10a1000d 	beq	a1,at,f3c <func_809E2784+0x68>
 f08:	8fa20010 	lw	v0,16(sp)
 f0c:	03e00008 	jr	ra
 f10:	00001025 	move	v0,zero
 f14:	84580000 	lh	t8,0(v0)
 f18:	84990268 	lh	t9,616(a0)
 f1c:	84490002 	lh	t1,2(v0)
 f20:	03194021 	addu	t0,t8,t9
 f24:	a4480000 	sh	t0,0(v0)
 f28:	848a0266 	lh	t2,614(a0)
 f2c:	012a5823 	subu	t3,t1,t2
 f30:	a44b0002 	sh	t3,2(v0)
 f34:	03e00008 	jr	ra
 f38:	00001025 	move	v0,zero
 f3c:	844c0000 	lh	t4,0(v0)
 f40:	848d0262 	lh	t5,610(a0)
 f44:	844f0004 	lh	t7,4(v0)
 f48:	018d7021 	addu	t6,t4,t5
 f4c:	a44e0000 	sh	t6,0(v0)
 f50:	84980260 	lh	t8,608(a0)
 f54:	01f8c821 	addu	t9,t7,t8
 f58:	a4590004 	sh	t9,4(v0)
 f5c:	03e00008 	jr	ra
 f60:	00001025 	move	v0,zero

00000f64 <func_809E2814>:
 f64:	27bdffe8 	addiu	sp,sp,-24
 f68:	2401000f 	li	at,15
 f6c:	afbf0014 	sw	ra,20(sp)
 f70:	afa40018 	sw	a0,24(sp)
 f74:	afa60020 	sw	a2,32(sp)
 f78:	14a10019 	bne	a1,at,fe0 <func_809E2814+0x7c>
 f7c:	afa70024 	sw	a3,36(sp)
 f80:	8fa50028 	lw	a1,40(sp)
 f84:	3c040000 	lui	a0,0x0
 f88:	24840000 	addiu	a0,a0,0
 f8c:	0c000000 	jal	0 <func_809E18B0>
 f90:	24a50038 	addiu	a1,a1,56
 f94:	44806000 	mtc1	zero,$f12
 f98:	3c01c348 	lui	at,0xc348
 f9c:	44817000 	mtc1	at,$f14
 fa0:	44066000 	mfc1	a2,$f12
 fa4:	0c000000 	jal	0 <func_809E18B0>
 fa8:	24070001 	li	a3,1
 fac:	44806000 	mtc1	zero,$f12
 fb0:	0c000000 	jal	0 <func_809E18B0>
 fb4:	24050001 	li	a1,1
 fb8:	44806000 	mtc1	zero,$f12
 fbc:	0c000000 	jal	0 <func_809E18B0>
 fc0:	24050001 	li	a1,1
 fc4:	3c010000 	lui	at,0x0
 fc8:	c42c0000 	lwc1	$f12,0(at)
 fcc:	0c000000 	jal	0 <func_809E18B0>
 fd0:	24050001 	li	a1,1
 fd4:	8fa40028 	lw	a0,40(sp)
 fd8:	0c000000 	jal	0 <func_809E18B0>
 fdc:	24840218 	addiu	a0,a0,536
 fe0:	8fbf0014 	lw	ra,20(sp)
 fe4:	27bd0018 	addiu	sp,sp,24
 fe8:	03e00008 	jr	ra
 fec:	00000000 	nop
