
build/src/overlays/actors/ovl_Elf_Msg/z_elf_msg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ElfMsg_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <ElfMsg_KillCheck>:
   8:	27bdffe0 	addiu	sp,sp,-32
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa50024 	sw	a1,36(sp)
  18:	84820032 	lh	v0,50(a0)
  1c:	00808025 	move	s0,a0
  20:	1840001b 	blez	v0,90 <ElfMsg_KillCheck+0x88>
  24:	28410041 	slti	at,v0,65
  28:	10200019 	beqz	at,90 <ElfMsg_KillCheck+0x88>
  2c:	00a02025 	move	a0,a1
  30:	0c000000 	jal	0 <ElfMsg_SetupAction>
  34:	2445ffff 	addiu	a1,v0,-1
  38:	10400015 	beqz	v0,90 <ElfMsg_KillCheck+0x88>
  3c:	3c040000 	lui	a0,0x0
  40:	24840000 	addiu	a0,a0,0
  44:	0c000000 	jal	0 <ElfMsg_SetupAction>
  48:	240500a1 	li	a1,161
  4c:	3c040000 	lui	a0,0x0
  50:	3c050000 	lui	a1,0x0
  54:	24a50020 	addiu	a1,a1,32
  58:	0c000000 	jal	0 <ElfMsg_SetupAction>
  5c:	24840010 	addiu	a0,a0,16
  60:	8605001c 	lh	a1,28(s0)
  64:	2401003f 	li	at,63
  68:	00052a03 	sra	a1,a1,0x8
  6c:	30a5003f 	andi	a1,a1,0x3f
  70:	10a10003 	beq	a1,at,80 <ElfMsg_KillCheck+0x78>
  74:	00000000 	nop
  78:	0c000000 	jal	0 <ElfMsg_SetupAction>
  7c:	8fa40024 	lw	a0,36(sp)
  80:	0c000000 	jal	0 <ElfMsg_SetupAction>
  84:	02002025 	move	a0,s0
  88:	1000002f 	b	148 <ElfMsg_KillCheck+0x140>
  8c:	24020001 	li	v0,1
  90:	860e0032 	lh	t6,50(s0)
  94:	2401ffff 	li	at,-1
  98:	8fa40024 	lw	a0,36(sp)
  9c:	55c1001a 	bnel	t6,at,108 <ElfMsg_KillCheck+0x100>
  a0:	8605001c 	lh	a1,28(s0)
  a4:	0c000000 	jal	0 <ElfMsg_SetupAction>
  a8:	82050003 	lb	a1,3(s0)
  ac:	10400015 	beqz	v0,104 <ElfMsg_KillCheck+0xfc>
  b0:	3c040000 	lui	a0,0x0
  b4:	24840028 	addiu	a0,a0,40
  b8:	0c000000 	jal	0 <ElfMsg_SetupAction>
  bc:	240500ac 	li	a1,172
  c0:	3c040000 	lui	a0,0x0
  c4:	3c050000 	lui	a1,0x0
  c8:	24a50048 	addiu	a1,a1,72
  cc:	0c000000 	jal	0 <ElfMsg_SetupAction>
  d0:	24840038 	addiu	a0,a0,56
  d4:	8605001c 	lh	a1,28(s0)
  d8:	2401003f 	li	at,63
  dc:	00052a03 	sra	a1,a1,0x8
  e0:	30a5003f 	andi	a1,a1,0x3f
  e4:	10a10003 	beq	a1,at,f4 <ElfMsg_KillCheck+0xec>
  e8:	00000000 	nop
  ec:	0c000000 	jal	0 <ElfMsg_SetupAction>
  f0:	8fa40024 	lw	a0,36(sp)
  f4:	0c000000 	jal	0 <ElfMsg_SetupAction>
  f8:	02002025 	move	a0,s0
  fc:	10000012 	b	148 <ElfMsg_KillCheck+0x140>
 100:	24020001 	li	v0,1
 104:	8605001c 	lh	a1,28(s0)
 108:	2401003f 	li	at,63
 10c:	00052a03 	sra	a1,a1,0x8
 110:	30a5003f 	andi	a1,a1,0x3f
 114:	14a10003 	bne	a1,at,124 <ElfMsg_KillCheck+0x11c>
 118:	00000000 	nop
 11c:	1000000a 	b	148 <ElfMsg_KillCheck+0x140>
 120:	00001025 	move	v0,zero
 124:	0c000000 	jal	0 <ElfMsg_SetupAction>
 128:	8fa40024 	lw	a0,36(sp)
 12c:	50400006 	beqzl	v0,148 <ElfMsg_KillCheck+0x140>
 130:	00001025 	move	v0,zero
 134:	0c000000 	jal	0 <ElfMsg_SetupAction>
 138:	02002025 	move	a0,s0
 13c:	10000002 	b	148 <ElfMsg_KillCheck+0x140>
 140:	24020001 	li	v0,1
 144:	00001025 	move	v0,zero
 148:	8fbf001c 	lw	ra,28(sp)
 14c:	8fb00018 	lw	s0,24(sp)
 150:	27bd0020 	addiu	sp,sp,32
 154:	03e00008 	jr	ra
 158:	00000000 	nop

0000015c <ElfMsg_Init>:
 15c:	27bdffe0 	addiu	sp,sp,-32
 160:	afb00018 	sw	s0,24(sp)
 164:	00808025 	move	s0,a0
 168:	afbf001c 	sw	ra,28(sp)
 16c:	afa50024 	sw	a1,36(sp)
 170:	8605001c 	lh	a1,28(s0)
 174:	3c040000 	lui	a0,0x0
 178:	24840050 	addiu	a0,a0,80
 17c:	00052a03 	sra	a1,a1,0x8
 180:	0c000000 	jal	0 <ElfMsg_SetupAction>
 184:	30a5003f 	andi	a1,a1,0x3f
 188:	3c040000 	lui	a0,0x0
 18c:	24840074 	addiu	a0,a0,116
 190:	0c000000 	jal	0 <ElfMsg_SetupAction>
 194:	860500b6 	lh	a1,182(s0)
 198:	860200b6 	lh	v0,182(s0)
 19c:	3c040000 	lui	a0,0x0
 1a0:	2484009c 	addiu	a0,a0,156
 1a4:	28410041 	slti	at,v0,65
 1a8:	54200004 	bnezl	at,1bc <ElfMsg_Init+0x60>
 1ac:	02002025 	move	a0,s0
 1b0:	0c000000 	jal	0 <ElfMsg_SetupAction>
 1b4:	2445ffbf 	addiu	a1,v0,-65
 1b8:	02002025 	move	a0,s0
 1bc:	0c000000 	jal	0 <ElfMsg_SetupAction>
 1c0:	8fa50024 	lw	a1,36(sp)
 1c4:	14400031 	bnez	v0,28c <ElfMsg_Init+0x130>
 1c8:	02002025 	move	a0,s0
 1cc:	3c050000 	lui	a1,0x0
 1d0:	0c000000 	jal	0 <ElfMsg_SetupAction>
 1d4:	24a50020 	addiu	a1,a1,32
 1d8:	86020030 	lh	v0,48(s0)
 1dc:	3c010000 	lui	at,0x0
 1e0:	02002025 	move	a0,s0
 1e4:	14400005 	bnez	v0,1fc <ElfMsg_Init+0xa0>
 1e8:	3c050000 	lui	a1,0x0
 1ec:	c42000f0 	lwc1	$f0,240(at)
 1f0:	e6000058 	swc1	$f0,88(s0)
 1f4:	1000000a 	b	220 <ElfMsg_Init+0xc4>
 1f8:	e6000050 	swc1	$f0,80(s0)
 1fc:	44822000 	mtc1	v0,$f4
 200:	3c010000 	lui	at,0x0
 204:	c42800f4 	lwc1	$f8,244(at)
 208:	468021a0 	cvt.s.w	$f6,$f4
 20c:	3c010000 	lui	at,0x0
 210:	46083002 	mul.s	$f0,$f6,$f8
 214:	e6000058 	swc1	$f0,88(s0)
 218:	e6000050 	swc1	$f0,80(s0)
 21c:	c42000f8 	lwc1	$f0,248(at)
 220:	86020034 	lh	v0,52(s0)
 224:	54400004 	bnezl	v0,238 <ElfMsg_Init+0xdc>
 228:	44825000 	mtc1	v0,$f10
 22c:	10000007 	b	24c <ElfMsg_Init+0xf0>
 230:	e6000054 	swc1	$f0,84(s0)
 234:	44825000 	mtc1	v0,$f10
 238:	3c010000 	lui	at,0x0
 23c:	c43200fc 	lwc1	$f18,252(at)
 240:	46805420 	cvt.s.w	$f16,$f10
 244:	46128102 	mul.s	$f4,$f16,$f18
 248:	e6040054 	swc1	$f4,84(s0)
 24c:	860e001c 	lh	t6,28(s0)
 250:	31cf4000 	andi	t7,t6,0x4000
 254:	11e00007 	beqz	t7,274 <ElfMsg_Init+0x118>
 258:	00000000 	nop
 25c:	3c050000 	lui	a1,0x0
 260:	24a50000 	addiu	a1,a1,0
 264:	0c000000 	jal	0 <ElfMsg_SetupAction>
 268:	02002025 	move	a0,s0
 26c:	10000004 	b	280 <ElfMsg_Init+0x124>
 270:	a60000b8 	sh	zero,184(s0)
 274:	0c000000 	jal	0 <ElfMsg_SetupAction>
 278:	24a50000 	addiu	a1,a1,0
 27c:	a60000b8 	sh	zero,184(s0)
 280:	860200b8 	lh	v0,184(s0)
 284:	a60200b6 	sh	v0,182(s0)
 288:	a60200b4 	sh	v0,180(s0)
 28c:	8fbf001c 	lw	ra,28(sp)
 290:	8fb00018 	lw	s0,24(sp)
 294:	27bd0020 	addiu	sp,sp,32
 298:	03e00008 	jr	ra
 29c:	00000000 	nop

000002a0 <ElfMsg_Destroy>:
 2a0:	afa40000 	sw	a0,0(sp)
 2a4:	03e00008 	jr	ra
 2a8:	afa50004 	sw	a1,4(sp)

000002ac <ElfMsg_GetMessageId>:
 2ac:	8483001c 	lh	v1,28(a0)
 2b0:	2418ff00 	li	t8,-256
 2b4:	306e8000 	andi	t6,v1,0x8000
 2b8:	11c00004 	beqz	t6,2cc <ElfMsg_GetMessageId+0x20>
 2bc:	306f00ff 	andi	t7,v1,0xff
 2c0:	306200ff 	andi	v0,v1,0xff
 2c4:	03e00008 	jr	ra
 2c8:	24420100 	addiu	v0,v0,256
 2cc:	030f1023 	subu	v0,t8,t7
 2d0:	03e00008 	jr	ra
 2d4:	00000000 	nop

000002d8 <ElfMsg_CallNaviCuboid>:
 2d8:	27bdffe0 	addiu	sp,sp,-32
 2dc:	afbf0014 	sw	ra,20(sp)
 2e0:	8ca31c44 	lw	v1,7236(a1)
 2e4:	3c0142c8 	lui	at,0x42c8
 2e8:	44816000 	mtc1	at,$f12
 2ec:	c4880050 	lwc1	$f8,80(a0)
 2f0:	c4860024 	lwc1	$f6,36(a0)
 2f4:	c4640024 	lwc1	$f4,36(v1)
 2f8:	46086282 	mul.s	$f10,$f12,$f8
 2fc:	8c66068c 	lw	a2,1676(v1)
 300:	46062001 	sub.s	$f0,$f4,$f6
 304:	46000005 	abs.s	$f0,$f0
 308:	460a003c 	c.lt.s	$f0,$f10
 30c:	00000000 	nop
 310:	45020022 	bc1fl	39c <ElfMsg_CallNaviCuboid+0xc4>
 314:	8fbf0014 	lw	ra,20(sp)
 318:	c4600028 	lwc1	$f0,40(v1)
 31c:	c4820028 	lwc1	$f2,40(a0)
 320:	4600103e 	c.le.s	$f2,$f0
 324:	00000000 	nop
 328:	4502001c 	bc1fl	39c <ElfMsg_CallNaviCuboid+0xc4>
 32c:	8fbf0014 	lw	ra,20(sp)
 330:	c4920054 	lwc1	$f18,84(a0)
 334:	46020401 	sub.s	$f16,$f0,$f2
 338:	46126102 	mul.s	$f4,$f12,$f18
 33c:	4604803c 	c.lt.s	$f16,$f4
 340:	00000000 	nop
 344:	45020015 	bc1fl	39c <ElfMsg_CallNaviCuboid+0xc4>
 348:	8fbf0014 	lw	ra,20(sp)
 34c:	c48a0058 	lwc1	$f10,88(a0)
 350:	c466002c 	lwc1	$f6,44(v1)
 354:	c488002c 	lwc1	$f8,44(a0)
 358:	460a6482 	mul.s	$f18,$f12,$f10
 35c:	46083001 	sub.s	$f0,$f6,$f8
 360:	46000005 	abs.s	$f0,$f0
 364:	4612003c 	c.lt.s	$f0,$f18
 368:	00000000 	nop
 36c:	4502000b 	bc1fl	39c <ElfMsg_CallNaviCuboid+0xc4>
 370:	8fbf0014 	lw	ra,20(sp)
 374:	afa3001c 	sw	v1,28(sp)
 378:	afa40020 	sw	a0,32(sp)
 37c:	0c000000 	jal	0 <ElfMsg_SetupAction>
 380:	afa60018 	sw	a2,24(sp)
 384:	8fa3001c 	lw	v1,28(sp)
 388:	8fa40020 	lw	a0,32(sp)
 38c:	8fa60018 	lw	a2,24(sp)
 390:	a4620690 	sh	v0,1680(v1)
 394:	acc40298 	sw	a0,664(a2)
 398:	8fbf0014 	lw	ra,20(sp)
 39c:	27bd0020 	addiu	sp,sp,32
 3a0:	03e00008 	jr	ra
 3a4:	00000000 	nop

000003a8 <ElfMsg_WithinXZDistance>:
 3a8:	c4a40000 	lwc1	$f4,0(a1)
 3ac:	c4860000 	lwc1	$f6,0(a0)
 3b0:	c4a80008 	lwc1	$f8,8(a1)
 3b4:	c48a0008 	lwc1	$f10,8(a0)
 3b8:	46062001 	sub.s	$f0,$f4,$f6
 3bc:	44866000 	mtc1	a2,$f12
 3c0:	00001025 	move	v0,zero
 3c4:	460a4081 	sub.s	$f2,$f8,$f10
 3c8:	46000402 	mul.s	$f16,$f0,$f0
 3cc:	00000000 	nop
 3d0:	46021482 	mul.s	$f18,$f2,$f2
 3d4:	46128100 	add.s	$f4,$f16,$f18
 3d8:	460c6182 	mul.s	$f6,$f12,$f12
 3dc:	4606203c 	c.lt.s	$f4,$f6
 3e0:	00000000 	nop
 3e4:	45000002 	bc1f	3f0 <ElfMsg_WithinXZDistance+0x48>
 3e8:	00000000 	nop
 3ec:	24020001 	li	v0,1
 3f0:	03e00008 	jr	ra
 3f4:	00000000 	nop

000003f8 <ElfMsg_CallNaviCylinder>:
 3f8:	27bdffe0 	addiu	sp,sp,-32
 3fc:	afbf0014 	sw	ra,20(sp)
 400:	afa50024 	sw	a1,36(sp)
 404:	8ca31c44 	lw	v1,7236(a1)
 408:	00803825 	move	a3,a0
 40c:	3c0142c8 	lui	at,0x42c8
 410:	8c6f068c 	lw	t7,1676(v1)
 414:	44813000 	mtc1	at,$f6
 418:	24e50024 	addiu	a1,a3,36
 41c:	afaf0018 	sw	t7,24(sp)
 420:	c4e40050 	lwc1	$f4,80(a3)
 424:	afa70020 	sw	a3,32(sp)
 428:	afa3001c 	sw	v1,28(sp)
 42c:	46062202 	mul.s	$f8,$f4,$f6
 430:	24640024 	addiu	a0,v1,36
 434:	44064000 	mfc1	a2,$f8
 438:	0c000000 	jal	0 <ElfMsg_SetupAction>
 43c:	00000000 	nop
 440:	8fa3001c 	lw	v1,28(sp)
 444:	10400019 	beqz	v0,4ac <ElfMsg_CallNaviCylinder+0xb4>
 448:	8fa70020 	lw	a3,32(sp)
 44c:	c4600028 	lwc1	$f0,40(v1)
 450:	c4e20028 	lwc1	$f2,40(a3)
 454:	3c0142c8 	lui	at,0x42c8
 458:	4600103e 	c.le.s	$f2,$f0
 45c:	00000000 	nop
 460:	45020013 	bc1fl	4b0 <ElfMsg_CallNaviCylinder+0xb8>
 464:	8fbf0014 	lw	ra,20(sp)
 468:	44818000 	mtc1	at,$f16
 46c:	c4f20054 	lwc1	$f18,84(a3)
 470:	46020281 	sub.s	$f10,$f0,$f2
 474:	00e02025 	move	a0,a3
 478:	46128102 	mul.s	$f4,$f16,$f18
 47c:	4604503c 	c.lt.s	$f10,$f4
 480:	00000000 	nop
 484:	4502000a 	bc1fl	4b0 <ElfMsg_CallNaviCylinder+0xb8>
 488:	8fbf0014 	lw	ra,20(sp)
 48c:	afa3001c 	sw	v1,28(sp)
 490:	0c000000 	jal	0 <ElfMsg_SetupAction>
 494:	afa70020 	sw	a3,32(sp)
 498:	8fa3001c 	lw	v1,28(sp)
 49c:	8fa70020 	lw	a3,32(sp)
 4a0:	a4620690 	sh	v0,1680(v1)
 4a4:	8fb80018 	lw	t8,24(sp)
 4a8:	af070298 	sw	a3,664(t8)
 4ac:	8fbf0014 	lw	ra,20(sp)
 4b0:	27bd0020 	addiu	sp,sp,32
 4b4:	03e00008 	jr	ra
 4b8:	00000000 	nop

000004bc <ElfMsg_Update>:
 4bc:	27bdffe0 	addiu	sp,sp,-32
 4c0:	afbf001c 	sw	ra,28(sp)
 4c4:	afb10018 	sw	s1,24(sp)
 4c8:	afb00014 	sw	s0,20(sp)
 4cc:	00808025 	move	s0,a0
 4d0:	0c000000 	jal	0 <ElfMsg_SetupAction>
 4d4:	00a08825 	move	s1,a1
 4d8:	14400020 	bnez	v0,55c <ElfMsg_Update+0xa0>
 4dc:	02002025 	move	a0,s0
 4e0:	0c000000 	jal	0 <ElfMsg_SetupAction>
 4e4:	02202825 	move	a1,s1
 4e8:	5040000e 	beqzl	v0,524 <ElfMsg_Update+0x68>
 4ec:	86020032 	lh	v0,50(s0)
 4f0:	8605001c 	lh	a1,28(s0)
 4f4:	2401003f 	li	at,63
 4f8:	00052a03 	sra	a1,a1,0x8
 4fc:	30a5003f 	andi	a1,a1,0x3f
 500:	10a10003 	beq	a1,at,510 <ElfMsg_Update+0x54>
 504:	00000000 	nop
 508:	0c000000 	jal	0 <ElfMsg_SetupAction>
 50c:	02202025 	move	a0,s1
 510:	0c000000 	jal	0 <ElfMsg_SetupAction>
 514:	02002025 	move	a0,s0
 518:	10000011 	b	560 <ElfMsg_Update+0xa4>
 51c:	8fbf001c 	lw	ra,28(sp)
 520:	86020032 	lh	v0,50(s0)
 524:	28410042 	slti	at,v0,66
 528:	14200007 	bnez	at,548 <ElfMsg_Update+0x8c>
 52c:	28410081 	slti	at,v0,129
 530:	10200005 	beqz	at,548 <ElfMsg_Update+0x8c>
 534:	02202025 	move	a0,s1
 538:	0c000000 	jal	0 <ElfMsg_SetupAction>
 53c:	2445ffbf 	addiu	a1,v0,-65
 540:	50400007 	beqzl	v0,560 <ElfMsg_Update+0xa4>
 544:	8fbf001c 	lw	ra,28(sp)
 548:	8e19014c 	lw	t9,332(s0)
 54c:	02002025 	move	a0,s0
 550:	02202825 	move	a1,s1
 554:	0320f809 	jalr	t9
 558:	00000000 	nop
 55c:	8fbf001c 	lw	ra,28(sp)
 560:	8fb00014 	lw	s0,20(sp)
 564:	8fb10018 	lw	s1,24(sp)
 568:	03e00008 	jr	ra
 56c:	27bd0020 	addiu	sp,sp,32

00000570 <ElfMsg_Draw>:
 570:	27bdffb8 	addiu	sp,sp,-72
 574:	afbf0014 	sw	ra,20(sp)
 578:	afa40048 	sw	a0,72(sp)
 57c:	afa5004c 	sw	a1,76(sp)
 580:	8ca50000 	lw	a1,0(a1)
 584:	3c060000 	lui	a2,0x0
 588:	24c600c0 	addiu	a2,a2,192
 58c:	27a40034 	addiu	a0,sp,52
 590:	240701b4 	li	a3,436
 594:	0c000000 	jal	0 <ElfMsg_SetupAction>
 598:	afa50044 	sw	a1,68(sp)
 59c:	3c050000 	lui	a1,0x0
 5a0:	24a50000 	addiu	a1,a1,0
 5a4:	8caf0000 	lw	t7,0(a1)
 5a8:	8fa80044 	lw	t0,68(sp)
 5ac:	8fb9004c 	lw	t9,76(sp)
 5b0:	85f812c2 	lh	t8,4802(t7)
 5b4:	53000059 	beqzl	t8,71c <ElfMsg_Draw+0x1ac>
 5b8:	8fbf0014 	lw	ra,20(sp)
 5bc:	8f240000 	lw	a0,0(t9)
 5c0:	0c000000 	jal	0 <ElfMsg_SetupAction>
 5c4:	afa80044 	sw	t0,68(sp)
 5c8:	8fa90048 	lw	t1,72(sp)
 5cc:	3c050000 	lui	a1,0x0
 5d0:	24a50000 	addiu	a1,a1,0
 5d4:	852a001c 	lh	t2,28(t1)
 5d8:	8fa80044 	lw	t0,68(sp)
 5dc:	240601c0 	li	a2,448
 5e0:	314b8000 	andi	t3,t2,0x8000
 5e4:	5160000f 	beqzl	t3,624 <ElfMsg_Draw+0xb4>
 5e8:	8d0202d0 	lw	v0,720(t0)
 5ec:	8d0202d0 	lw	v0,720(t0)
 5f0:	3c0dfa00 	lui	t5,0xfa00
 5f4:	3c01ff64 	lui	at,0xff64
 5f8:	244c0008 	addiu	t4,v0,8
 5fc:	ad0c02d0 	sw	t4,720(t0)
 600:	ac4d0000 	sw	t5,0(v0)
 604:	8cae0000 	lw	t6,0(a1)
 608:	34216400 	ori	at,at,0x6400
 60c:	85cf12c2 	lh	t7,4802(t6)
 610:	31f800ff 	andi	t8,t7,0xff
 614:	0301c825 	or	t9,t8,at
 618:	1000000c 	b	64c <ElfMsg_Draw+0xdc>
 61c:	ac590004 	sw	t9,4(v0)
 620:	8d0202d0 	lw	v0,720(t0)
 624:	3c0afa00 	lui	t2,0xfa00
 628:	2401ff00 	li	at,-256
 62c:	24490008 	addiu	t1,v0,8
 630:	ad0902d0 	sw	t1,720(t0)
 634:	ac4a0000 	sw	t2,0(v0)
 638:	8cab0000 	lw	t3,0(a1)
 63c:	856c12c2 	lh	t4,4802(t3)
 640:	318d00ff 	andi	t5,t4,0xff
 644:	01a17025 	or	t6,t5,at
 648:	ac4e0004 	sw	t6,4(v0)
 64c:	8d0202d0 	lw	v0,720(t0)
 650:	3c18da38 	lui	t8,0xda38
 654:	37180003 	ori	t8,t8,0x3
 658:	244f0008 	addiu	t7,v0,8
 65c:	ad0f02d0 	sw	t7,720(t0)
 660:	ac580000 	sw	t8,0(v0)
 664:	8fb9004c 	lw	t9,76(sp)
 668:	3c050000 	lui	a1,0x0
 66c:	24a500d0 	addiu	a1,a1,208
 670:	8f240000 	lw	a0,0(t9)
 674:	afa80044 	sw	t0,68(sp)
 678:	0c000000 	jal	0 <ElfMsg_SetupAction>
 67c:	afa20028 	sw	v0,40(sp)
 680:	8fa30028 	lw	v1,40(sp)
 684:	8fa80044 	lw	t0,68(sp)
 688:	3c0a0000 	lui	t2,0x0
 68c:	ac620004 	sw	v0,4(v1)
 690:	8d0202d0 	lw	v0,720(t0)
 694:	254a0000 	addiu	t2,t2,0
 698:	3c04de00 	lui	a0,0xde00
 69c:	24490008 	addiu	t1,v0,8
 6a0:	ad0902d0 	sw	t1,720(t0)
 6a4:	ac4a0004 	sw	t2,4(v0)
 6a8:	ac440000 	sw	a0,0(v0)
 6ac:	8fab0048 	lw	t3,72(sp)
 6b0:	3c060000 	lui	a2,0x0
 6b4:	24c600e0 	addiu	a2,a2,224
 6b8:	856c001c 	lh	t4,28(t3)
 6bc:	240701c9 	li	a3,457
 6c0:	318d4000 	andi	t5,t4,0x4000
 6c4:	51a0000a 	beqzl	t5,6f0 <ElfMsg_Draw+0x180>
 6c8:	8d0202d0 	lw	v0,720(t0)
 6cc:	8d0202d0 	lw	v0,720(t0)
 6d0:	3c0f0000 	lui	t7,0x0
 6d4:	25ef0000 	addiu	t7,t7,0
 6d8:	244e0008 	addiu	t6,v0,8
 6dc:	ad0e02d0 	sw	t6,720(t0)
 6e0:	ac4f0004 	sw	t7,4(v0)
 6e4:	10000008 	b	708 <ElfMsg_Draw+0x198>
 6e8:	ac440000 	sw	a0,0(v0)
 6ec:	8d0202d0 	lw	v0,720(t0)
 6f0:	3c190000 	lui	t9,0x0
 6f4:	27390000 	addiu	t9,t9,0
 6f8:	24580008 	addiu	t8,v0,8
 6fc:	ad1802d0 	sw	t8,720(t0)
 700:	ac590004 	sw	t9,4(v0)
 704:	ac440000 	sw	a0,0(v0)
 708:	8fa9004c 	lw	t1,76(sp)
 70c:	27a40034 	addiu	a0,sp,52
 710:	0c000000 	jal	0 <ElfMsg_SetupAction>
 714:	8d250000 	lw	a1,0(t1)
 718:	8fbf0014 	lw	ra,20(sp)
 71c:	27bd0048 	addiu	sp,sp,72
 720:	03e00008 	jr	ra
 724:	00000000 	nop
	...
