
build/src/overlays/actors/ovl_Bg_Gnd_Iceblock/z_bg_gnd_iceblock.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgGndIceblock_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgGndIceblock_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgGndIceblock_Init>
  2c:	00002825 	move	a1,zero
  30:	3c040600 	lui	a0,0x600
  34:	24844618 	addiu	a0,a0,17944
  38:	0c000000 	jal	0 <BgGndIceblock_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	8e0f0008 	lw	t7,8(s0)
  44:	8fa40034 	lw	a0,52(sp)
  48:	8e0e000c 	lw	t6,12(s0)
  4c:	ae0f0168 	sw	t7,360(s0)
  50:	8e0f0010 	lw	t7,16(s0)
  54:	3c180000 	lui	t8,0x0
  58:	27180000 	addiu	t8,t8,0
  5c:	ae180164 	sw	t8,356(s0)
  60:	ae0e016c 	sw	t6,364(s0)
  64:	ae0f0170 	sw	t7,368(s0)
  68:	8fa70024 	lw	a3,36(sp)
  6c:	02003025 	move	a2,s0
  70:	0c000000 	jal	0 <BgGndIceblock_Init>
  74:	24850810 	addiu	a1,a0,2064
  78:	ae02014c 	sw	v0,332(s0)
  7c:	3c010000 	lui	at,0x0
  80:	c4240000 	lwc1	$f4,0(at)
  84:	c6000024 	lwc1	$f0,36(s0)
  88:	24190007 	li	t9,7
  8c:	3c010000 	lui	at,0x0
  90:	46002032 	c.eq.s	$f4,$f0
  94:	00000000 	nop
  98:	45000005 	bc1f	b0 <BgGndIceblock_Init+0xb0>
  9c:	00000000 	nop
  a0:	a600001c 	sh	zero,28(s0)
  a4:	3c010000 	lui	at,0x0
  a8:	1000001d 	b	120 <BgGndIceblock_Init+0x120>
  ac:	a0390000 	sb	t9,0(at)
  b0:	c4260000 	lwc1	$f6,0(at)
  b4:	3c040000 	lui	a0,0x0
  b8:	24080001 	li	t0,1
  bc:	46003032 	c.eq.s	$f6,$f0
  c0:	3c010000 	lui	at,0x0
  c4:	2409000e 	li	t1,14
  c8:	24840000 	addiu	a0,a0,0
  cc:	45000004 	bc1f	e0 <BgGndIceblock_Init+0xe0>
  d0:	00000000 	nop
  d4:	a608001c 	sh	t0,28(s0)
  d8:	10000011 	b	120 <BgGndIceblock_Init+0x120>
  dc:	a0290000 	sb	t1,0(at)
  e0:	0c000000 	jal	0 <BgGndIceblock_Init>
  e4:	2405008a 	li	a1,138
  e8:	c6080024 	lwc1	$f8,36(s0)
  ec:	3c040000 	lui	a0,0x0
  f0:	24840000 	addiu	a0,a0,0
  f4:	460042a1 	cvt.d.s	$f10,$f8
  f8:	44075000 	mfc1	a3,$f10
  fc:	44065800 	mfc1	a2,$f11
 100:	0c000000 	jal	0 <BgGndIceblock_Init>
 104:	00000000 	nop
 108:	3c040000 	lui	a0,0x0
 10c:	3c050000 	lui	a1,0x0
 110:	24a50000 	addiu	a1,a1,0
 114:	24840000 	addiu	a0,a0,0
 118:	0c000000 	jal	0 <BgGndIceblock_Init>
 11c:	2406008b 	li	a2,139
 120:	8fbf001c 	lw	ra,28(sp)
 124:	8fb00018 	lw	s0,24(sp)
 128:	27bd0030 	addiu	sp,sp,48
 12c:	03e00008 	jr	ra
 130:	00000000 	nop

00000134 <BgGndIceblock_Destroy>:
 134:	27bdffe8 	addiu	sp,sp,-24
 138:	afa40018 	sw	a0,24(sp)
 13c:	8fae0018 	lw	t6,24(sp)
 140:	afbf0014 	sw	ra,20(sp)
 144:	00a02025 	move	a0,a1
 148:	24a50810 	addiu	a1,a1,2064
 14c:	0c000000 	jal	0 <BgGndIceblock_Init>
 150:	8dc6014c 	lw	a2,332(t6)
 154:	8fbf0014 	lw	ra,20(sp)
 158:	27bd0018 	addiu	sp,sp,24
 15c:	03e00008 	jr	ra
 160:	00000000 	nop

00000164 <func_80879C04>:
 164:	3c0e0000 	lui	t6,0x0
 168:	25ce0000 	addiu	t6,t6,0
 16c:	8dd80000 	lw	t8,0(t6)
 170:	27bdffc8 	addiu	sp,sp,-56
 174:	27a2001c 	addiu	v0,sp,28
 178:	ac580000 	sw	t8,0(v0)
 17c:	8dcf0004 	lw	t7,4(t6)
 180:	3c190000 	lui	t9,0x0
 184:	27390000 	addiu	t9,t9,0
 188:	ac4f0004 	sw	t7,4(v0)
 18c:	8dd80008 	lw	t8,8(t6)
 190:	27a30004 	addiu	v1,sp,4
 194:	3c0142f0 	lui	at,0x42f0
 198:	ac580008 	sw	t8,8(v0)
 19c:	8dcf000c 	lw	t7,12(t6)
 1a0:	44810000 	mtc1	at,$f0
 1a4:	3c010000 	lui	at,0x0
 1a8:	ac4f000c 	sw	t7,12(v0)
 1ac:	8dd80010 	lw	t8,16(t6)
 1b0:	00455821 	addu	t3,v0,a1
 1b4:	ac580010 	sw	t8,16(v0)
 1b8:	95d80014 	lhu	t8,20(t6)
 1bc:	a4580014 	sh	t8,20(v0)
 1c0:	8f290000 	lw	t1,0(t9)
 1c4:	ac690000 	sw	t1,0(v1)
 1c8:	8f280004 	lw	t0,4(t9)
 1cc:	ac680004 	sw	t0,4(v1)
 1d0:	8f290008 	lw	t1,8(t9)
 1d4:	ac690008 	sw	t1,8(v1)
 1d8:	8f28000c 	lw	t0,12(t9)
 1dc:	ac68000c 	sw	t0,12(v1)
 1e0:	8f290010 	lw	t1,16(t9)
 1e4:	ac690010 	sw	t1,16(v1)
 1e8:	97290014 	lhu	t1,20(t9)
 1ec:	a4690014 	sh	t1,20(v1)
 1f0:	848a001c 	lh	t2,28(a0)
 1f4:	002a0821 	addu	at,at,t2
 1f8:	a0250000 	sb	a1,0(at)
 1fc:	916c0000 	lbu	t4,0(t3)
 200:	3c014f80 	lui	at,0x4f80
 204:	448c2000 	mtc1	t4,$f4
 208:	05810004 	bgez	t4,21c <func_80879C04+0xb8>
 20c:	468021a0 	cvt.s.w	$f6,$f4
 210:	44814000 	mtc1	at,$f8
 214:	00000000 	nop
 218:	46083180 	add.s	$f6,$f6,$f8
 21c:	46003282 	mul.s	$f10,$f6,$f0
 220:	3c010000 	lui	at,0x0
 224:	c4300000 	lwc1	$f16,0(at)
 228:	00656821 	addu	t5,v1,a1
 22c:	3c01c407 	lui	at,0xc407
 230:	44812000 	mtc1	at,$f4
 234:	3c014f80 	lui	at,0x4f80
 238:	46105480 	add.s	$f18,$f10,$f16
 23c:	e4920168 	swc1	$f18,360(a0)
 240:	91ae0000 	lbu	t6,0(t5)
 244:	448e4000 	mtc1	t6,$f8
 248:	05c10004 	bgez	t6,25c <func_80879C04+0xf8>
 24c:	468041a0 	cvt.s.w	$f6,$f8
 250:	44815000 	mtc1	at,$f10
 254:	00000000 	nop
 258:	460a3180 	add.s	$f6,$f6,$f10
 25c:	46003402 	mul.s	$f16,$f6,$f0
 260:	27bd0038 	addiu	sp,sp,56
 264:	46102481 	sub.s	$f18,$f4,$f16
 268:	03e00008 	jr	ra
 26c:	e4920170 	swc1	$f18,368(a0)

00000270 <func_80879D10>:
 270:	3c030000 	lui	v1,0x0
 274:	3c020000 	lui	v0,0x0
 278:	24420000 	addiu	v0,v0,0
 27c:	24630000 	addiu	v1,v1,0
 280:	906e0000 	lbu	t6,0(v1)
 284:	24630001 	addiu	v1,v1,1
 288:	148e0003 	bne	a0,t6,298 <func_80879D10+0x28>
 28c:	00000000 	nop
 290:	03e00008 	jr	ra
 294:	24020001 	li	v0,1
 298:	5462fffa 	bnel	v1,v0,284 <func_80879D10+0x14>
 29c:	906e0000 	lbu	t6,0(v1)
 2a0:	00001025 	move	v0,zero
 2a4:	03e00008 	jr	ra
 2a8:	00000000 	nop

000002ac <func_80879D4C>:
 2ac:	848e001c 	lh	t6,28(a0)
 2b0:	3c0f0000 	lui	t7,0x0
 2b4:	01ee7821 	addu	t7,t7,t6
 2b8:	91ef0000 	lbu	t7,0(t7)
 2bc:	2de10016 	sltiu	at,t7,22
 2c0:	1020000a 	beqz	at,2ec <L80879D8C>
 2c4:	000f7880 	sll	t7,t7,0x2
 2c8:	3c010000 	lui	at,0x0
 2cc:	002f0821 	addu	at,at,t7
 2d0:	8c2f0000 	lw	t7,0(at)
 2d4:	01e00008 	jr	t7
 2d8:	00000000 	nop

000002dc <L80879D7C>:
 2dc:	03e00008 	jr	ra
 2e0:	24020001 	li	v0,1

000002e4 <L80879D84>:
 2e4:	03e00008 	jr	ra
 2e8:	24020002 	li	v0,2

000002ec <L80879D8C>:
 2ec:	00001025 	move	v0,zero
 2f0:	03e00008 	jr	ra
 2f4:	00000000 	nop

000002f8 <func_80879D98>:
 2f8:	27bdffe8 	addiu	sp,sp,-24
 2fc:	afbf0014 	sw	ra,20(sp)
 300:	84820158 	lh	v0,344(a0)
 304:	00803025 	move	a2,a0
 308:	24018000 	li	at,-32768
 30c:	14400031 	bnez	v0,3d4 <L80879E60+0x14>
 310:	00000000 	nop
 314:	848e001c 	lh	t6,28(a0)
 318:	3c0f0000 	lui	t7,0x0
 31c:	01ee7821 	addu	t7,t7,t6
 320:	91ef0000 	lbu	t7,0(t7)
 324:	25f8fffd 	addiu	t8,t7,-3
 328:	2f010011 	sltiu	at,t8,17
 32c:	102000ba 	beqz	at,618 <L8087A0B8>
 330:	0018c080 	sll	t8,t8,0x2
 334:	3c010000 	lui	at,0x0
 338:	00380821 	addu	at,at,t8
 33c:	8c380000 	lw	t8,0(at)
 340:	03000008 	jr	t8
 344:	00000000 	nop

00000348 <L80879DE8>:
 348:	00c02025 	move	a0,a2
 34c:	0c000000 	jal	0 <BgGndIceblock_Init>
 350:	24050005 	li	a1,5
 354:	100000b1 	b	61c <L8087A0B8+0x4>
 358:	8fbf0014 	lw	ra,20(sp)

0000035c <L80879DFC>:
 35c:	24040008 	li	a0,8
 360:	0c000000 	jal	0 <BgGndIceblock_Init>
 364:	afa60018 	sw	a2,24(sp)
 368:	10400006 	beqz	v0,384 <L80879DFC+0x28>
 36c:	8fa60018 	lw	a2,24(sp)
 370:	00c02025 	move	a0,a2
 374:	0c000000 	jal	0 <BgGndIceblock_Init>
 378:	24050009 	li	a1,9
 37c:	100000a7 	b	61c <L8087A0B8+0x4>
 380:	8fbf0014 	lw	ra,20(sp)
 384:	00c02025 	move	a0,a2
 388:	0c000000 	jal	0 <BgGndIceblock_Init>
 38c:	24050008 	li	a1,8
 390:	100000a2 	b	61c <L8087A0B8+0x4>
 394:	8fbf0014 	lw	ra,20(sp)

00000398 <L80879E38>:
 398:	00c02025 	move	a0,a2
 39c:	0c000000 	jal	0 <BgGndIceblock_Init>
 3a0:	2405000c 	li	a1,12
 3a4:	1000009d 	b	61c <L8087A0B8+0x4>
 3a8:	8fbf0014 	lw	ra,20(sp)

000003ac <L80879E4C>:
 3ac:	00c02025 	move	a0,a2
 3b0:	0c000000 	jal	0 <BgGndIceblock_Init>
 3b4:	2405000f 	li	a1,15
 3b8:	10000098 	b	61c <L8087A0B8+0x4>
 3bc:	8fbf0014 	lw	ra,20(sp)

000003c0 <L80879E60>:
 3c0:	00c02025 	move	a0,a2
 3c4:	0c000000 	jal	0 <BgGndIceblock_Init>
 3c8:	24050014 	li	a1,20
 3cc:	10000093 	b	61c <L8087A0B8+0x4>
 3d0:	8fbf0014 	lw	ra,20(sp)
 3d4:	54410032 	bnel	v0,at,4a0 <L80879F14+0x2c>
 3d8:	24014000 	li	at,16384
 3dc:	84d9001c 	lh	t9,28(a2)
 3e0:	3c080000 	lui	t0,0x0
 3e4:	01194021 	addu	t0,t0,t9
 3e8:	91080000 	lbu	t0,0(t0)
 3ec:	2509fffe 	addiu	t1,t0,-2
 3f0:	2d210011 	sltiu	at,t1,17
 3f4:	10200088 	beqz	at,618 <L8087A0B8>
 3f8:	00094880 	sll	t1,t1,0x2
 3fc:	3c010000 	lui	at,0x0
 400:	00290821 	addu	at,at,t1
 404:	8c290000 	lw	t1,0(at)
 408:	01200008 	jr	t1
 40c:	00000000 	nop

00000410 <L80879EB0>:
 410:	00c02025 	move	a0,a2
 414:	0c000000 	jal	0 <BgGndIceblock_Init>
 418:	24050001 	li	a1,1
 41c:	1000007f 	b	61c <L8087A0B8+0x4>
 420:	8fbf0014 	lw	ra,20(sp)

00000424 <L80879EC4>:
 424:	00c02025 	move	a0,a2
 428:	0c000000 	jal	0 <BgGndIceblock_Init>
 42c:	24050006 	li	a1,6
 430:	1000007a 	b	61c <L8087A0B8+0x4>
 434:	8fbf0014 	lw	ra,20(sp)

00000438 <L80879ED8>:
 438:	00c02025 	move	a0,a2
 43c:	0c000000 	jal	0 <BgGndIceblock_Init>
 440:	2405000a 	li	a1,10
 444:	10000075 	b	61c <L8087A0B8+0x4>
 448:	8fbf0014 	lw	ra,20(sp)

0000044c <L80879EEC>:
 44c:	00c02025 	move	a0,a2
 450:	0c000000 	jal	0 <BgGndIceblock_Init>
 454:	2405000d 	li	a1,13
 458:	10000070 	b	61c <L8087A0B8+0x4>
 45c:	8fbf0014 	lw	ra,20(sp)

00000460 <L80879F00>:
 460:	00c02025 	move	a0,a2
 464:	0c000000 	jal	0 <BgGndIceblock_Init>
 468:	24050010 	li	a1,16
 46c:	1000006b 	b	61c <L8087A0B8+0x4>
 470:	8fbf0014 	lw	ra,20(sp)

00000474 <L80879F14>:
 474:	24040011 	li	a0,17
 478:	0c000000 	jal	0 <BgGndIceblock_Init>
 47c:	afa60018 	sw	a2,24(sp)
 480:	14400065 	bnez	v0,618 <L8087A0B8>
 484:	8fa60018 	lw	a2,24(sp)
 488:	00c02025 	move	a0,a2
 48c:	0c000000 	jal	0 <BgGndIceblock_Init>
 490:	24050010 	li	a1,16
 494:	10000061 	b	61c <L8087A0B8+0x4>
 498:	8fbf0014 	lw	ra,20(sp)
 49c:	24014000 	li	at,16384
 4a0:	5441002d 	bnel	v0,at,558 <L80879FE0+0x18>
 4a4:	2401c000 	li	at,-16384
 4a8:	84ca001c 	lh	t2,28(a2)
 4ac:	3c0b0000 	lui	t3,0x0
 4b0:	016a5821 	addu	t3,t3,t2
 4b4:	916b0000 	lbu	t3,0(t3)
 4b8:	256cfffa 	addiu	t4,t3,-6
 4bc:	2d81000a 	sltiu	at,t4,10
 4c0:	10200055 	beqz	at,618 <L8087A0B8>
 4c4:	000c6080 	sll	t4,t4,0x2
 4c8:	3c010000 	lui	at,0x0
 4cc:	002c0821 	addu	at,at,t4
 4d0:	8c2c0000 	lw	t4,0(at)
 4d4:	01800008 	jr	t4
 4d8:	00000000 	nop

000004dc <L80879F7C>:
 4dc:	00c02025 	move	a0,a2
 4e0:	0c000000 	jal	0 <BgGndIceblock_Init>
 4e4:	2405000d 	li	a1,13
 4e8:	1000004c 	b	61c <L8087A0B8+0x4>
 4ec:	8fbf0014 	lw	ra,20(sp)

000004f0 <L80879F90>:
 4f0:	00c02025 	move	a0,a2
 4f4:	0c000000 	jal	0 <BgGndIceblock_Init>
 4f8:	24050011 	li	a1,17
 4fc:	10000047 	b	61c <L8087A0B8+0x4>
 500:	8fbf0014 	lw	ra,20(sp)

00000504 <L80879FA4>:
 504:	00c02025 	move	a0,a2
 508:	0c000000 	jal	0 <BgGndIceblock_Init>
 50c:	2405000b 	li	a1,11
 510:	10000042 	b	61c <L8087A0B8+0x4>
 514:	8fbf0014 	lw	ra,20(sp)

00000518 <L80879FB8>:
 518:	00c02025 	move	a0,a2
 51c:	0c000000 	jal	0 <BgGndIceblock_Init>
 520:	24050015 	li	a1,21
 524:	1000003d 	b	61c <L8087A0B8+0x4>
 528:	8fbf0014 	lw	ra,20(sp)

0000052c <L80879FCC>:
 52c:	00c02025 	move	a0,a2
 530:	0c000000 	jal	0 <BgGndIceblock_Init>
 534:	24050012 	li	a1,18
 538:	10000038 	b	61c <L8087A0B8+0x4>
 53c:	8fbf0014 	lw	ra,20(sp)

00000540 <L80879FE0>:
 540:	00c02025 	move	a0,a2
 544:	0c000000 	jal	0 <BgGndIceblock_Init>
 548:	24050013 	li	a1,19
 54c:	10000033 	b	61c <L8087A0B8+0x4>
 550:	8fbf0014 	lw	ra,20(sp)
 554:	2401c000 	li	at,-16384
 558:	54410030 	bnel	v0,at,61c <L8087A0B8+0x4>
 55c:	8fbf0014 	lw	ra,20(sp)
 560:	84cd001c 	lh	t5,28(a2)
 564:	3c0e0000 	lui	t6,0x0
 568:	01cd7021 	addu	t6,t6,t5
 56c:	91ce0000 	lbu	t6,0(t6)
 570:	25cffffa 	addiu	t7,t6,-6
 574:	2de1000a 	sltiu	at,t7,10
 578:	10200027 	beqz	at,618 <L8087A0B8>
 57c:	000f7880 	sll	t7,t7,0x2
 580:	3c010000 	lui	at,0x0
 584:	002f0821 	addu	at,at,t7
 588:	8c2f0000 	lw	t7,0(at)
 58c:	01e00008 	jr	t7
 590:	00000000 	nop

00000594 <L8087A034>:
 594:	00c02025 	move	a0,a2
 598:	0c000000 	jal	0 <BgGndIceblock_Init>
 59c:	00002825 	move	a1,zero
 5a0:	1000001e 	b	61c <L8087A0B8+0x4>
 5a4:	8fbf0014 	lw	ra,20(sp)

000005a8 <L8087A048>:
 5a8:	00c02025 	move	a0,a2
 5ac:	0c000000 	jal	0 <BgGndIceblock_Init>
 5b0:	24050001 	li	a1,1
 5b4:	10000019 	b	61c <L8087A0B8+0x4>
 5b8:	8fbf0014 	lw	ra,20(sp)

000005bc <L8087A05C>:
 5bc:	00c02025 	move	a0,a2
 5c0:	0c000000 	jal	0 <BgGndIceblock_Init>
 5c4:	24050004 	li	a1,4
 5c8:	10000014 	b	61c <L8087A0B8+0x4>
 5cc:	8fbf0014 	lw	ra,20(sp)

000005d0 <L8087A070>:
 5d0:	00c02025 	move	a0,a2
 5d4:	0c000000 	jal	0 <BgGndIceblock_Init>
 5d8:	24050002 	li	a1,2
 5dc:	1000000f 	b	61c <L8087A0B8+0x4>
 5e0:	8fbf0014 	lw	ra,20(sp)

000005e4 <L8087A084>:
 5e4:	24040008 	li	a0,8
 5e8:	0c000000 	jal	0 <BgGndIceblock_Init>
 5ec:	afa60018 	sw	a2,24(sp)
 5f0:	10400006 	beqz	v0,60c <L8087A084+0x28>
 5f4:	8fa60018 	lw	a2,24(sp)
 5f8:	00c02025 	move	a0,a2
 5fc:	0c000000 	jal	0 <BgGndIceblock_Init>
 600:	24050003 	li	a1,3
 604:	10000005 	b	61c <L8087A0B8+0x4>
 608:	8fbf0014 	lw	ra,20(sp)
 60c:	00c02025 	move	a0,a2
 610:	0c000000 	jal	0 <BgGndIceblock_Init>
 614:	24050008 	li	a1,8

00000618 <L8087A0B8>:
 618:	8fbf0014 	lw	ra,20(sp)
 61c:	27bd0018 	addiu	sp,sp,24
 620:	03e00008 	jr	ra
 624:	00000000 	nop

00000628 <func_8087A0C8>:
 628:	27bdffe0 	addiu	sp,sp,-32
 62c:	afbf001c 	sw	ra,28(sp)
 630:	afb00018 	sw	s0,24(sp)
 634:	afa50024 	sw	a1,36(sp)
 638:	44800000 	mtc1	zero,$f0
 63c:	c4840150 	lwc1	$f4,336(a0)
 640:	00808025 	move	s0,a0
 644:	8ca21c44 	lw	v0,7236(a1)
 648:	46040032 	c.eq.s	$f0,$f4
 64c:	00000000 	nop
 650:	45030020 	bc1tl	6d4 <func_8087A0C8+0xac>
 654:	8fbf001c 	lw	ra,28(sp)
 658:	8c4f0680 	lw	t7,1664(v0)
 65c:	2401ffef 	li	at,-17
 660:	01e1c024 	and	t8,t7,at
 664:	ac580680 	sw	t8,1664(v0)
 668:	c4860150 	lwc1	$f6,336(a0)
 66c:	4606003c 	c.lt.s	$f0,$f6
 670:	00000000 	nop
 674:	45020014 	bc1fl	6c8 <func_8087A0C8+0xa0>
 678:	44800000 	mtc1	zero,$f0
 67c:	0c000000 	jal	0 <BgGndIceblock_Init>
 680:	00000000 	nop
 684:	02002025 	move	a0,s0
 688:	0c000000 	jal	0 <BgGndIceblock_Init>
 68c:	26050168 	addiu	a1,s0,360
 690:	3c013f80 	lui	at,0x3f80
 694:	44814000 	mtc1	at,$f8
 698:	8fa40024 	lw	a0,36(sp)
 69c:	02002825 	move	a1,s0
 6a0:	4600403c 	c.lt.s	$f8,$f0
 6a4:	00000000 	nop
 6a8:	45020007 	bc1fl	6c8 <func_8087A0C8+0xa0>
 6ac:	44800000 	mtc1	zero,$f0
 6b0:	0c000000 	jal	0 <BgGndIceblock_Init>
 6b4:	24060008 	li	a2,8
 6b8:	3c190000 	lui	t9,0x0
 6bc:	27390000 	addiu	t9,t9,0
 6c0:	ae190164 	sw	t9,356(s0)
 6c4:	44800000 	mtc1	zero,$f0
 6c8:	00000000 	nop
 6cc:	e6000150 	swc1	$f0,336(s0)
 6d0:	8fbf001c 	lw	ra,28(sp)
 6d4:	8fb00018 	lw	s0,24(sp)
 6d8:	27bd0020 	addiu	sp,sp,32
 6dc:	03e00008 	jr	ra
 6e0:	00000000 	nop

000006e4 <func_8087A184>:
 6e4:	27bdffe8 	addiu	sp,sp,-24
 6e8:	afbf0014 	sw	ra,20(sp)
 6ec:	44800000 	mtc1	zero,$f0
 6f0:	c4840150 	lwc1	$f4,336(a0)
 6f4:	00803825 	move	a3,a0
 6f8:	8ca21c44 	lw	v0,7236(a1)
 6fc:	46040032 	c.eq.s	$f0,$f4
 700:	3c063f80 	lui	a2,0x3f80
 704:	45030007 	bc1tl	724 <func_8087A184+0x40>
 708:	8ce5000c 	lw	a1,12(a3)
 70c:	8c4e0680 	lw	t6,1664(v0)
 710:	2401ffef 	li	at,-17
 714:	01c17824 	and	t7,t6,at
 718:	ac4f0680 	sw	t7,1664(v0)
 71c:	e4800150 	swc1	$f0,336(a0)
 720:	8ce5000c 	lw	a1,12(a3)
 724:	afa70018 	sw	a3,24(sp)
 728:	0c000000 	jal	0 <BgGndIceblock_Init>
 72c:	24e40028 	addiu	a0,a3,40
 730:	44800000 	mtc1	zero,$f0
 734:	10400018 	beqz	v0,798 <func_8087A184+0xb4>
 738:	8fa70018 	lw	a3,24(sp)
 73c:	8cf90008 	lw	t9,8(a3)
 740:	84e2001c 	lh	v0,28(a3)
 744:	8cf8000c 	lw	t8,12(a3)
 748:	acf90168 	sw	t9,360(a3)
 74c:	8cf90010 	lw	t9,16(a3)
 750:	3c080000 	lui	t0,0x0
 754:	25080000 	addiu	t0,t0,0
 758:	e4e00068 	swc1	$f0,104(a3)
 75c:	ace80164 	sw	t0,356(a3)
 760:	acf8016c 	sw	t8,364(a3)
 764:	10400006 	beqz	v0,780 <func_8087A184+0x9c>
 768:	acf90170 	sw	t9,368(a3)
 76c:	24010001 	li	at,1
 770:	10410007 	beq	v0,at,790 <func_8087A184+0xac>
 774:	240a000e 	li	t2,14
 778:	10000008 	b	79c <func_8087A184+0xb8>
 77c:	8fbf0014 	lw	ra,20(sp)
 780:	24090007 	li	t1,7
 784:	3c010000 	lui	at,0x0
 788:	10000003 	b	798 <func_8087A184+0xb4>
 78c:	a0290000 	sb	t1,0(at)
 790:	3c010000 	lui	at,0x0
 794:	a02a0000 	sb	t2,0(at)
 798:	8fbf0014 	lw	ra,20(sp)
 79c:	27bd0018 	addiu	sp,sp,24
 7a0:	03e00008 	jr	ra
 7a4:	00000000 	nop

000007a8 <func_8087A248>:
 7a8:	27bdffe0 	addiu	sp,sp,-32
 7ac:	afbf001c 	sw	ra,28(sp)
 7b0:	afb00018 	sw	s0,24(sp)
 7b4:	afa50024 	sw	a1,36(sp)
 7b8:	3c013f80 	lui	at,0x3f80
 7bc:	44813000 	mtc1	at,$f6
 7c0:	c4840060 	lwc1	$f4,96(a0)
 7c4:	00808025 	move	s0,a0
 7c8:	3c014396 	lui	at,0x4396
 7cc:	46062200 	add.s	$f8,$f4,$f6
 7d0:	44818000 	mtc1	at,$f16
 7d4:	24840028 	addiu	a0,a0,40
 7d8:	e4880038 	swc1	$f8,56(a0)
 7dc:	c60a000c 	lwc1	$f10,12(s0)
 7e0:	8e060060 	lw	a2,96(s0)
 7e4:	46105481 	sub.s	$f18,$f10,$f16
 7e8:	44059000 	mfc1	a1,$f18
 7ec:	0c000000 	jal	0 <BgGndIceblock_Init>
 7f0:	00000000 	nop
 7f4:	10400015 	beqz	v0,84c <func_8087A248+0xa4>
 7f8:	3c0142c8 	lui	at,0x42c8
 7fc:	c608000c 	lwc1	$f8,12(s0)
 800:	44815000 	mtc1	at,$f10
 804:	44802000 	mtc1	zero,$f4
 808:	c6060008 	lwc1	$f6,8(s0)
 80c:	460a4401 	sub.s	$f16,$f8,$f10
 810:	c6120010 	lwc1	$f18,16(s0)
 814:	e6040060 	swc1	$f4,96(s0)
 818:	e6060024 	swc1	$f6,36(s0)
 81c:	e6100028 	swc1	$f16,40(s0)
 820:	e612002c 	swc1	$f18,44(s0)
 824:	0c000000 	jal	0 <BgGndIceblock_Init>
 828:	8fa40024 	lw	a0,36(sp)
 82c:	10400004 	beqz	v0,840 <func_8087A248+0x98>
 830:	8fa40024 	lw	a0,36(sp)
 834:	02002825 	move	a1,s0
 838:	0c000000 	jal	0 <BgGndIceblock_Init>
 83c:	24060007 	li	a2,7
 840:	3c0e0000 	lui	t6,0x0
 844:	25ce0000 	addiu	t6,t6,0
 848:	ae0e0164 	sw	t6,356(s0)
 84c:	8fbf001c 	lw	ra,28(sp)
 850:	8fb00018 	lw	s0,24(sp)
 854:	27bd0020 	addiu	sp,sp,32
 858:	03e00008 	jr	ra
 85c:	00000000 	nop

00000860 <func_8087A300>:
 860:	27bdffe0 	addiu	sp,sp,-32
 864:	afbf001c 	sw	ra,28(sp)
 868:	afb00018 	sw	s0,24(sp)
 86c:	afa50024 	sw	a1,36(sp)
 870:	3c013f80 	lui	at,0x3f80
 874:	44813000 	mtc1	at,$f6
 878:	c4840060 	lwc1	$f4,96(a0)
 87c:	00808025 	move	s0,a0
 880:	3c0142c8 	lui	at,0x42c8
 884:	46062200 	add.s	$f8,$f4,$f6
 888:	44818000 	mtc1	at,$f16
 88c:	24840028 	addiu	a0,a0,40
 890:	e4880038 	swc1	$f8,56(a0)
 894:	c60a000c 	lwc1	$f10,12(s0)
 898:	8e060060 	lw	a2,96(s0)
 89c:	46105481 	sub.s	$f18,$f10,$f16
 8a0:	44059000 	mfc1	a1,$f18
 8a4:	0c000000 	jal	0 <BgGndIceblock_Init>
 8a8:	00000000 	nop
 8ac:	5040000f 	beqzl	v0,8ec <func_8087A300+0x8c>
 8b0:	8fbf001c 	lw	ra,28(sp)
 8b4:	44802000 	mtc1	zero,$f4
 8b8:	00000000 	nop
 8bc:	e6040060 	swc1	$f4,96(s0)
 8c0:	0c000000 	jal	0 <BgGndIceblock_Init>
 8c4:	8fa40024 	lw	a0,36(sp)
 8c8:	10400004 	beqz	v0,8dc <func_8087A300+0x7c>
 8cc:	8fa40024 	lw	a0,36(sp)
 8d0:	02002825 	move	a1,s0
 8d4:	0c000000 	jal	0 <BgGndIceblock_Init>
 8d8:	24060007 	li	a2,7
 8dc:	3c0e0000 	lui	t6,0x0
 8e0:	25ce0000 	addiu	t6,t6,0
 8e4:	ae0e0164 	sw	t6,356(s0)
 8e8:	8fbf001c 	lw	ra,28(sp)
 8ec:	8fb00018 	lw	s0,24(sp)
 8f0:	27bd0020 	addiu	sp,sp,32
 8f4:	03e00008 	jr	ra
 8f8:	00000000 	nop

000008fc <func_8087A39C>:
 8fc:	27bdff98 	addiu	sp,sp,-104
 900:	afb00030 	sw	s0,48(sp)
 904:	00808025 	move	s0,a0
 908:	afbf0034 	sw	ra,52(sp)
 90c:	afa5006c 	sw	a1,108(sp)
 910:	f7b40028 	sdc1	$f20,40(sp)
 914:	3c054120 	lui	a1,0x4120
 918:	24840068 	addiu	a0,a0,104
 91c:	0c000000 	jal	0 <BgGndIceblock_Init>
 920:	3c063f00 	lui	a2,0x3f00
 924:	26040024 	addiu	a0,s0,36
 928:	8e050168 	lw	a1,360(s0)
 92c:	0c000000 	jal	0 <BgGndIceblock_Init>
 930:	8e060068 	lw	a2,104(s0)
 934:	8e050170 	lw	a1,368(s0)
 938:	8e060068 	lw	a2,104(s0)
 93c:	afa20064 	sw	v0,100(sp)
 940:	0c000000 	jal	0 <BgGndIceblock_Init>
 944:	2604002c 	addiu	a0,s0,44
 948:	8fa30064 	lw	v1,100(sp)
 94c:	02002025 	move	a0,s0
 950:	24052835 	li	a1,10293
 954:	00621824 	and	v1,v1,v0
 958:	10600022 	beqz	v1,9e4 <func_8087A39C+0xe8>
 95c:	3c0140c0 	lui	at,0x40c0
 960:	44802000 	mtc1	zero,$f4
 964:	c6060024 	lwc1	$f6,36(s0)
 968:	c608002c 	lwc1	$f8,44(s0)
 96c:	e6040068 	swc1	$f4,104(s0)
 970:	e6060168 	swc1	$f6,360(s0)
 974:	0c000000 	jal	0 <BgGndIceblock_Init>
 978:	e6080170 	swc1	$f8,368(s0)
 97c:	0c000000 	jal	0 <BgGndIceblock_Init>
 980:	02002025 	move	a0,s0
 984:	10400009 	beqz	v0,9ac <func_8087A39C+0xb0>
 988:	3c0e0000 	lui	t6,0x0
 98c:	24010001 	li	at,1
 990:	1041000e 	beq	v0,at,9cc <func_8087A39C+0xd0>
 994:	3c0f0000 	lui	t7,0x0
 998:	24010002 	li	at,2
 99c:	1041000e 	beq	v0,at,9d8 <func_8087A39C+0xdc>
 9a0:	3c180000 	lui	t8,0x0
 9a4:	1000009d 	b	c1c <func_8087A39C+0x320>
 9a8:	8fbf0034 	lw	ra,52(sp)
 9ac:	25ce0000 	addiu	t6,t6,0
 9b0:	ae0e0164 	sw	t6,356(s0)
 9b4:	8fa4006c 	lw	a0,108(sp)
 9b8:	02002825 	move	a1,s0
 9bc:	0c000000 	jal	0 <BgGndIceblock_Init>
 9c0:	24060007 	li	a2,7
 9c4:	10000095 	b	c1c <func_8087A39C+0x320>
 9c8:	8fbf0034 	lw	ra,52(sp)
 9cc:	25ef0000 	addiu	t7,t7,0
 9d0:	10000091 	b	c18 <func_8087A39C+0x31c>
 9d4:	ae0f0164 	sw	t7,356(s0)
 9d8:	27180000 	addiu	t8,t8,0
 9dc:	1000008e 	b	c18 <func_8087A39C+0x31c>
 9e0:	ae180164 	sw	t8,356(s0)
 9e4:	44815000 	mtc1	at,$f10
 9e8:	c6100068 	lwc1	$f16,104(s0)
 9ec:	3c0142f0 	lui	at,0x42f0
 9f0:	4610503c 	c.lt.s	$f10,$f16
 9f4:	00000000 	nop
 9f8:	45020088 	bc1fl	c1c <func_8087A39C+0x320>
 9fc:	8fbf0034 	lw	ra,52(sp)
 a00:	44816000 	mtc1	at,$f12
 a04:	0c000000 	jal	0 <BgGndIceblock_Init>
 a08:	00000000 	nop
 a0c:	0c000000 	jal	0 <BgGndIceblock_Init>
 a10:	e7a00048 	swc1	$f0,72(sp)
 a14:	46000506 	mov.s	$f20,$f0
 a18:	0c000000 	jal	0 <BgGndIceblock_Init>
 a1c:	86040158 	lh	a0,344(s0)
 a20:	3c013fc0 	lui	at,0x3fc0
 a24:	44819000 	mtc1	at,$f18
 a28:	00000000 	nop
 a2c:	46149100 	add.s	$f4,$f18,$f20
 a30:	46002187 	neg.s	$f6,$f4
 a34:	46060202 	mul.s	$f8,$f0,$f6
 a38:	0c000000 	jal	0 <BgGndIceblock_Init>
 a3c:	e7a8004c 	swc1	$f8,76(sp)
 a40:	3c013f80 	lui	at,0x3f80
 a44:	44815000 	mtc1	at,$f10
 a48:	00000000 	nop
 a4c:	460a0400 	add.s	$f16,$f0,$f10
 a50:	0c000000 	jal	0 <BgGndIceblock_Init>
 a54:	e7b00050 	swc1	$f16,80(sp)
 a58:	46000506 	mov.s	$f20,$f0
 a5c:	0c000000 	jal	0 <BgGndIceblock_Init>
 a60:	86040158 	lh	a0,344(s0)
 a64:	3c013fc0 	lui	at,0x3fc0
 a68:	44819000 	mtc1	at,$f18
 a6c:	00000000 	nop
 a70:	46149100 	add.s	$f4,$f18,$f20
 a74:	46002187 	neg.s	$f6,$f4
 a78:	46060202 	mul.s	$f8,$f0,$f6
 a7c:	e7a80054 	swc1	$f8,84(sp)
 a80:	0c000000 	jal	0 <BgGndIceblock_Init>
 a84:	86040158 	lh	a0,344(s0)
 a88:	46000506 	mov.s	$f20,$f0
 a8c:	0c000000 	jal	0 <BgGndIceblock_Init>
 a90:	86040158 	lh	a0,344(s0)
 a94:	3c014270 	lui	at,0x4270
 a98:	44818000 	mtc1	at,$f16
 a9c:	c7a60048 	lwc1	$f6,72(sp)
 aa0:	c60a0024 	lwc1	$f10,36(s0)
 aa4:	46148482 	mul.s	$f18,$f16,$f20
 aa8:	46125101 	sub.s	$f4,$f10,$f18
 aac:	46060202 	mul.s	$f8,$f0,$f6
 ab0:	46082401 	sub.s	$f16,$f4,$f8
 ab4:	e7b00058 	swc1	$f16,88(sp)
 ab8:	0c000000 	jal	0 <BgGndIceblock_Init>
 abc:	86040158 	lh	a0,344(s0)
 ac0:	46000506 	mov.s	$f20,$f0
 ac4:	0c000000 	jal	0 <BgGndIceblock_Init>
 ac8:	86040158 	lh	a0,344(s0)
 acc:	3c014270 	lui	at,0x4270
 ad0:	44819000 	mtc1	at,$f18
 ad4:	c7a80048 	lwc1	$f8,72(sp)
 ad8:	c60a002c 	lwc1	$f10,44(s0)
 adc:	46149182 	mul.s	$f6,$f18,$f20
 ae0:	24040028 	li	a0,40
 ae4:	2405000f 	li	a1,15
 ae8:	46080402 	mul.s	$f16,$f0,$f8
 aec:	46065101 	sub.s	$f4,$f10,$f6
 af0:	46048480 	add.s	$f18,$f16,$f4
 af4:	e7b20060 	swc1	$f18,96(sp)
 af8:	c60a0028 	lwc1	$f10,40(s0)
 afc:	0c000000 	jal	0 <BgGndIceblock_Init>
 b00:	e7aa005c 	swc1	$f10,92(sp)
 b04:	3c190000 	lui	t9,0x0
 b08:	3c080000 	lui	t0,0x0
 b0c:	25080000 	addiu	t0,t0,0
 b10:	27390000 	addiu	t9,t9,0
 b14:	3c070000 	lui	a3,0x0
 b18:	240900fa 	li	t1,250
 b1c:	afa90018 	sw	t1,24(sp)
 b20:	24e70000 	addiu	a3,a3,0
 b24:	afb90010 	sw	t9,16(sp)
 b28:	afa80014 	sw	t0,20(sp)
 b2c:	8fa4006c 	lw	a0,108(sp)
 b30:	27a50058 	addiu	a1,sp,88
 b34:	27a6004c 	addiu	a2,sp,76
 b38:	0c000000 	jal	0 <BgGndIceblock_Init>
 b3c:	afa2001c 	sw	v0,28(sp)
 b40:	3c0142f0 	lui	at,0x42f0
 b44:	44816000 	mtc1	at,$f12
 b48:	0c000000 	jal	0 <BgGndIceblock_Init>
 b4c:	00000000 	nop
 b50:	e7a00048 	swc1	$f0,72(sp)
 b54:	0c000000 	jal	0 <BgGndIceblock_Init>
 b58:	86040158 	lh	a0,344(s0)
 b5c:	46000506 	mov.s	$f20,$f0
 b60:	0c000000 	jal	0 <BgGndIceblock_Init>
 b64:	86040158 	lh	a0,344(s0)
 b68:	3c014270 	lui	at,0x4270
 b6c:	44814000 	mtc1	at,$f8
 b70:	c7b20048 	lwc1	$f18,72(sp)
 b74:	c6060024 	lwc1	$f6,36(s0)
 b78:	46144402 	mul.s	$f16,$f8,$f20
 b7c:	46103101 	sub.s	$f4,$f6,$f16
 b80:	46120282 	mul.s	$f10,$f0,$f18
 b84:	46045200 	add.s	$f8,$f10,$f4
 b88:	e7a80058 	swc1	$f8,88(sp)
 b8c:	0c000000 	jal	0 <BgGndIceblock_Init>
 b90:	86040158 	lh	a0,344(s0)
 b94:	46000506 	mov.s	$f20,$f0
 b98:	0c000000 	jal	0 <BgGndIceblock_Init>
 b9c:	86040158 	lh	a0,344(s0)
 ba0:	3c014270 	lui	at,0x4270
 ba4:	44818000 	mtc1	at,$f16
 ba8:	c7a40048 	lwc1	$f4,72(sp)
 bac:	c606002c 	lwc1	$f6,44(s0)
 bb0:	46148482 	mul.s	$f18,$f16,$f20
 bb4:	24040028 	li	a0,40
 bb8:	2405000f 	li	a1,15
 bbc:	46040202 	mul.s	$f8,$f0,$f4
 bc0:	46123281 	sub.s	$f10,$f6,$f18
 bc4:	46085401 	sub.s	$f16,$f10,$f8
 bc8:	0c000000 	jal	0 <BgGndIceblock_Init>
 bcc:	e7b00060 	swc1	$f16,96(sp)
 bd0:	3c0a0000 	lui	t2,0x0
 bd4:	3c0b0000 	lui	t3,0x0
 bd8:	256b0000 	addiu	t3,t3,0
 bdc:	254a0000 	addiu	t2,t2,0
 be0:	3c070000 	lui	a3,0x0
 be4:	240c00fa 	li	t4,250
 be8:	afac0018 	sw	t4,24(sp)
 bec:	24e70000 	addiu	a3,a3,0
 bf0:	afaa0010 	sw	t2,16(sp)
 bf4:	afab0014 	sw	t3,20(sp)
 bf8:	8fa4006c 	lw	a0,108(sp)
 bfc:	27a50058 	addiu	a1,sp,88
 c00:	27a6004c 	addiu	a2,sp,76
 c04:	0c000000 	jal	0 <BgGndIceblock_Init>
 c08:	afa2001c 	sw	v0,28(sp)
 c0c:	02002025 	move	a0,s0
 c10:	0c000000 	jal	0 <BgGndIceblock_Init>
 c14:	240500df 	li	a1,223
 c18:	8fbf0034 	lw	ra,52(sp)
 c1c:	d7b40028 	ldc1	$f20,40(sp)
 c20:	8fb00030 	lw	s0,48(sp)
 c24:	03e00008 	jr	ra
 c28:	27bd0068 	addiu	sp,sp,104

00000c2c <BgGndIceblock_Update>:
 c2c:	27bdffe8 	addiu	sp,sp,-24
 c30:	afbf0014 	sw	ra,20(sp)
 c34:	8c990164 	lw	t9,356(a0)
 c38:	0320f809 	jalr	t9
 c3c:	00000000 	nop
 c40:	8fbf0014 	lw	ra,20(sp)
 c44:	27bd0018 	addiu	sp,sp,24
 c48:	03e00008 	jr	ra
 c4c:	00000000 	nop

00000c50 <BgGndIceblock_Draw>:
 c50:	27bdffe8 	addiu	sp,sp,-24
 c54:	afa40018 	sw	a0,24(sp)
 c58:	00a02025 	move	a0,a1
 c5c:	afbf0014 	sw	ra,20(sp)
 c60:	3c050600 	lui	a1,0x600
 c64:	0c000000 	jal	0 <BgGndIceblock_Init>
 c68:	24a54420 	addiu	a1,a1,17440
 c6c:	8fbf0014 	lw	ra,20(sp)
 c70:	27bd0018 	addiu	sp,sp,24
 c74:	03e00008 	jr	ra
 c78:	00000000 	nop
 c7c:	00000000 	nop
