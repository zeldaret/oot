
build/src/overlays/actors/ovl_Bg_Mori_Hineri/z_bg_mori_hineri.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMoriHineri_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afa5003c 	sw	a1,60(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <BgMoriHineri_Init>
  1c:	24a50024 	addiu	a1,a1,36
  20:	02002025 	move	a0,s0
  24:	0c000000 	jal	0 <BgMoriHineri_Init>
  28:	24050001 	li	a1,1
  2c:	8602001c 	lh	v0,28(s0)
  30:	304e4000 	andi	t6,v0,0x4000
  34:	afae0028 	sw	t6,40(sp)
  38:	11c00003 	beqz	t6,48 <BgMoriHineri_Init+0x48>
  3c:	3046003f 	andi	a2,v0,0x3f
  40:	1000000e 	b	7c <BgMoriHineri_Init+0x7c>
  44:	a206016b 	sb	a2,363(s0)
  48:	0002c203 	sra	t8,v0,0x8
  4c:	3319003f 	andi	t9,t8,0x3f
  50:	a219016b 	sb	t9,363(s0)
  54:	8205016b 	lb	a1,363(s0)
  58:	afa6002c 	sw	a2,44(sp)
  5c:	0c000000 	jal	0 <BgMoriHineri_Init>
  60:	8fa4003c 	lw	a0,60(sp)
  64:	10400004 	beqz	v0,78 <BgMoriHineri_Init+0x78>
  68:	8fa6002c 	lw	a2,44(sp)
  6c:	24080001 	li	t0,1
  70:	10000002 	b	7c <BgMoriHineri_Init+0x7c>
  74:	a208016b 	sb	t0,363(s0)
  78:	a200016b 	sb	zero,363(s0)
  7c:	8609001c 	lh	t1,28(s0)
  80:	00c02825 	move	a1,a2
  84:	312a8000 	andi	t2,t1,0x8000
  88:	000a5b83 	sra	t3,t2,0xe
  8c:	a60b001c 	sh	t3,28(s0)
  90:	0c000000 	jal	0 <BgMoriHineri_Init>
  94:	8fa4003c 	lw	a0,60(sp)
  98:	1040000b 	beqz	v0,c8 <BgMoriHineri_Init+0xc8>
  9c:	2405005c 	li	a1,92
  a0:	8602001c 	lh	v0,28(s0)
  a4:	240c0001 	li	t4,1
  a8:	24010002 	li	at,2
  ac:	14400003 	bnez	v0,bc <BgMoriHineri_Init+0xbc>
  b0:	00000000 	nop
  b4:	10000004 	b	c8 <BgMoriHineri_Init+0xc8>
  b8:	a60c001c 	sh	t4,28(s0)
  bc:	14410002 	bne	v0,at,c8 <BgMoriHineri_Init+0xc8>
  c0:	240d0003 	li	t5,3
  c4:	a60d001c 	sh	t5,28(s0)
  c8:	8602001c 	lh	v0,28(s0)
  cc:	240effff 	li	t6,-1
  d0:	a20e016a 	sb	t6,362(s0)
  d4:	14400010 	bnez	v0,118 <BgMoriHineri_Init+0x118>
  d8:	24010001 	li	at,1
  dc:	8fa4003c 	lw	a0,60(sp)
  e0:	3c010001 	lui	at,0x1
  e4:	342117a4 	ori	at,at,0x17a4
  e8:	00812021 	addu	a0,a0,at
  ec:	0c000000 	jal	0 <BgMoriHineri_Init>
  f0:	afa40024 	sw	a0,36(sp)
  f4:	a2020168 	sb	v0,360(s0)
  f8:	8faf0028 	lw	t7,40(sp)
  fc:	8fa40024 	lw	a0,36(sp)
 100:	55e00023 	bnezl	t7,190 <BgMoriHineri_Init+0x190>
 104:	8fa40024 	lw	a0,36(sp)
 108:	0c000000 	jal	0 <BgMoriHineri_Init>
 10c:	2405000e 	li	a1,14
 110:	1000001e 	b	18c <BgMoriHineri_Init+0x18c>
 114:	a202016a 	sb	v0,362(s0)
 118:	14410009 	bne	v0,at,140 <BgMoriHineri_Init+0x140>
 11c:	8fa4003c 	lw	a0,60(sp)
 120:	3c010001 	lui	at,0x1
 124:	342117a4 	ori	at,at,0x17a4
 128:	00812021 	addu	a0,a0,at
 12c:	afa40024 	sw	a0,36(sp)
 130:	0c000000 	jal	0 <BgMoriHineri_Init>
 134:	2405006f 	li	a1,111
 138:	10000014 	b	18c <BgMoriHineri_Init+0x18c>
 13c:	a2020168 	sb	v0,360(s0)
 140:	24010002 	li	at,2
 144:	1441000a 	bne	v0,at,170 <BgMoriHineri_Init+0x170>
 148:	8fa4003c 	lw	a0,60(sp)
 14c:	8fa4003c 	lw	a0,60(sp)
 150:	3c010001 	lui	at,0x1
 154:	342117a4 	ori	at,at,0x17a4
 158:	00812021 	addu	a0,a0,at
 15c:	afa40024 	sw	a0,36(sp)
 160:	0c000000 	jal	0 <BgMoriHineri_Init>
 164:	24050070 	li	a1,112
 168:	10000008 	b	18c <BgMoriHineri_Init+0x18c>
 16c:	a2020168 	sb	v0,360(s0)
 170:	3c010001 	lui	at,0x1
 174:	342117a4 	ori	at,at,0x17a4
 178:	00812021 	addu	a0,a0,at
 17c:	afa40024 	sw	a0,36(sp)
 180:	0c000000 	jal	0 <BgMoriHineri_Init>
 184:	24050071 	li	a1,113
 188:	a2020168 	sb	v0,360(s0)
 18c:	8fa40024 	lw	a0,36(sp)
 190:	0c000000 	jal	0 <BgMoriHineri_Init>
 194:	24050073 	li	a1,115
 198:	a2020169 	sb	v0,361(s0)
 19c:	8fb80028 	lw	t8,40(sp)
 1a0:	53000005 	beqzl	t8,1b8 <BgMoriHineri_Init+0x1b8>
 1a4:	82090168 	lb	t1,360(s0)
 1a8:	8619001c 	lh	t9,28(s0)
 1ac:	27280004 	addiu	t0,t9,4
 1b0:	a608001c 	sh	t0,28(s0)
 1b4:	82090168 	lb	t1,360(s0)
 1b8:	05200006 	bltz	t1,1d4 <BgMoriHineri_Init+0x1d4>
 1bc:	00000000 	nop
 1c0:	820a0169 	lb	t2,361(s0)
 1c4:	3c0b0000 	lui	t3,0x0
 1c8:	256b0000 	addiu	t3,t3,0
 1cc:	05430006 	bgezl	t2,1e8 <BgMoriHineri_Init+0x1e8>
 1d0:	ae0b0164 	sw	t3,356(s0)
 1d4:	0c000000 	jal	0 <BgMoriHineri_Init>
 1d8:	02002025 	move	a0,s0
 1dc:	10000003 	b	1ec <BgMoriHineri_Init+0x1ec>
 1e0:	8fbf001c 	lw	ra,28(sp)
 1e4:	ae0b0164 	sw	t3,356(s0)
 1e8:	8fbf001c 	lw	ra,28(sp)
 1ec:	8fb00018 	lw	s0,24(sp)
 1f0:	27bd0038 	addiu	sp,sp,56
 1f4:	03e00008 	jr	ra
 1f8:	00000000 	nop

000001fc <BgMoriHineri_Destroy>:
 1fc:	27bdffe8 	addiu	sp,sp,-24
 200:	afa40018 	sw	a0,24(sp)
 204:	8fae0018 	lw	t6,24(sp)
 208:	afbf0014 	sw	ra,20(sp)
 20c:	00a02025 	move	a0,a1
 210:	24a50810 	addiu	a1,a1,2064
 214:	0c000000 	jal	0 <BgMoriHineri_Init>
 218:	8dc6014c 	lw	a2,332(t6)
 21c:	8fbf0014 	lw	ra,20(sp)
 220:	27bd0018 	addiu	sp,sp,24
 224:	03e00008 	jr	ra
 228:	00000000 	nop

0000022c <func_808A39FC>:
 22c:	27bdffd0 	addiu	sp,sp,-48
 230:	afb00018 	sw	s0,24(sp)
 234:	3c010001 	lui	at,0x1
 238:	00808025 	move	s0,a0
 23c:	342117a4 	ori	at,at,0x17a4
 240:	afbf001c 	sw	ra,28(sp)
 244:	afa50034 	sw	a1,52(sp)
 248:	00a12021 	addu	a0,a1,at
 24c:	82050168 	lb	a1,360(s0)
 250:	0c000000 	jal	0 <BgMoriHineri_Init>
 254:	afa40028 	sw	a0,40(sp)
 258:	1040006c 	beqz	v0,40c <func_808A39FC+0x1e0>
 25c:	8fa40028 	lw	a0,40(sp)
 260:	82050169 	lb	a1,361(s0)
 264:	0c000000 	jal	0 <BgMoriHineri_Init>
 268:	afa40028 	sw	a0,40(sp)
 26c:	10400067 	beqz	v0,40c <func_808A39FC+0x1e0>
 270:	8fa40028 	lw	a0,40(sp)
 274:	8205016a 	lb	a1,362(s0)
 278:	04a20006 	bltzl	a1,294 <func_808A39FC+0x68>
 27c:	8602001c 	lh	v0,28(s0)
 280:	0c000000 	jal	0 <BgMoriHineri_Init>
 284:	afa40028 	sw	a0,40(sp)
 288:	10400060 	beqz	v0,40c <func_808A39FC+0x1e0>
 28c:	8fa40028 	lw	a0,40(sp)
 290:	8602001c 	lh	v0,28(s0)
 294:	820e0168 	lb	t6,360(s0)
 298:	02002825 	move	a1,s0
 29c:	28410004 	slti	at,v0,4
 2a0:	14200026 	bnez	at,33c <func_808A39FC+0x110>
 2a4:	a20e001e 	sb	t6,30(s0)
 2a8:	244ffffc 	addiu	t7,v0,-4
 2ac:	a60f001c 	sh	t7,28(s0)
 2b0:	8602001c 	lh	v0,28(s0)
 2b4:	24010001 	li	at,1
 2b8:	14400005 	bnez	v0,2d0 <func_808A39FC+0xa4>
 2bc:	00000000 	nop
 2c0:	0c000000 	jal	0 <BgMoriHineri_Init>
 2c4:	2405006f 	li	a1,111
 2c8:	10000011 	b	310 <func_808A39FC+0xe4>
 2cc:	a2020168 	sb	v0,360(s0)
 2d0:	54410006 	bnel	v0,at,2ec <func_808A39FC+0xc0>
 2d4:	24010002 	li	at,2
 2d8:	0c000000 	jal	0 <BgMoriHineri_Init>
 2dc:	2405005c 	li	a1,92
 2e0:	1000000b 	b	310 <func_808A39FC+0xe4>
 2e4:	a2020168 	sb	v0,360(s0)
 2e8:	24010002 	li	at,2
 2ec:	14410005 	bne	v0,at,304 <func_808A39FC+0xd8>
 2f0:	00000000 	nop
 2f4:	0c000000 	jal	0 <BgMoriHineri_Init>
 2f8:	24050071 	li	a1,113
 2fc:	10000004 	b	310 <func_808A39FC+0xe4>
 300:	a2020168 	sb	v0,360(s0)
 304:	0c000000 	jal	0 <BgMoriHineri_Init>
 308:	24050070 	li	a1,112
 30c:	a2020168 	sb	v0,360(s0)
 310:	82180168 	lb	t8,360(s0)
 314:	3c190000 	lui	t9,0x0
 318:	27390000 	addiu	t9,t9,0
 31c:	07010005 	bgez	t8,334 <func_808A39FC+0x108>
 320:	00000000 	nop
 324:	0c000000 	jal	0 <BgMoriHineri_Init>
 328:	02002025 	move	a0,s0
 32c:	10000038 	b	410 <func_808A39FC+0x1e4>
 330:	8fbf001c 	lw	ra,28(sp)
 334:	10000035 	b	40c <func_808A39FC+0x1e0>
 338:	ae190164 	sw	t9,356(s0)
 33c:	0c000000 	jal	0 <BgMoriHineri_Init>
 340:	8fa40034 	lw	a0,52(sp)
 344:	afa0002c 	sw	zero,44(sp)
 348:	8602001c 	lh	v0,28(s0)
 34c:	3c080000 	lui	t0,0x0
 350:	25080000 	addiu	t0,t0,0
 354:	1440000a 	bnez	v0,380 <func_808A39FC+0x154>
 358:	ae080134 	sw	t0,308(s0)
 35c:	3c090000 	lui	t1,0x0
 360:	25290000 	addiu	t1,t1,0
 364:	3c040000 	lui	a0,0x0
 368:	ae090164 	sw	t1,356(s0)
 36c:	24840000 	addiu	a0,a0,0
 370:	0c000000 	jal	0 <BgMoriHineri_Init>
 374:	27a5002c 	addiu	a1,sp,44
 378:	1000001f 	b	3f8 <func_808A39FC+0x1cc>
 37c:	8fa40034 	lw	a0,52(sp)
 380:	24010001 	li	at,1
 384:	14410009 	bne	v0,at,3ac <func_808A39FC+0x180>
 388:	3c0a0000 	lui	t2,0x0
 38c:	254a0000 	addiu	t2,t2,0
 390:	3c040000 	lui	a0,0x0
 394:	ae0a0164 	sw	t2,356(s0)
 398:	24840000 	addiu	a0,a0,0
 39c:	0c000000 	jal	0 <BgMoriHineri_Init>
 3a0:	27a5002c 	addiu	a1,sp,44
 3a4:	10000014 	b	3f8 <func_808A39FC+0x1cc>
 3a8:	8fa40034 	lw	a0,52(sp)
 3ac:	24010002 	li	at,2
 3b0:	1441000a 	bne	v0,at,3dc <func_808A39FC+0x1b0>
 3b4:	3c0c0000 	lui	t4,0x0
 3b8:	3c0b0000 	lui	t3,0x0
 3bc:	256b0000 	addiu	t3,t3,0
 3c0:	3c040000 	lui	a0,0x0
 3c4:	ae0b0164 	sw	t3,356(s0)
 3c8:	24840000 	addiu	a0,a0,0
 3cc:	0c000000 	jal	0 <BgMoriHineri_Init>
 3d0:	27a5002c 	addiu	a1,sp,44
 3d4:	10000008 	b	3f8 <func_808A39FC+0x1cc>
 3d8:	8fa40034 	lw	a0,52(sp)
 3dc:	258c0000 	addiu	t4,t4,0
 3e0:	3c040000 	lui	a0,0x0
 3e4:	ae0c0164 	sw	t4,356(s0)
 3e8:	24840000 	addiu	a0,a0,0
 3ec:	0c000000 	jal	0 <BgMoriHineri_Init>
 3f0:	27a5002c 	addiu	a1,sp,44
 3f4:	8fa40034 	lw	a0,52(sp)
 3f8:	02003025 	move	a2,s0
 3fc:	8fa7002c 	lw	a3,44(sp)
 400:	0c000000 	jal	0 <BgMoriHineri_Init>
 404:	24850810 	addiu	a1,a0,2064
 408:	ae02014c 	sw	v0,332(s0)
 40c:	8fbf001c 	lw	ra,28(sp)
 410:	8fb00018 	lw	s0,24(sp)
 414:	27bd0030 	addiu	sp,sp,48
 418:	03e00008 	jr	ra
 41c:	00000000 	nop

00000420 <BgMoriHineri_DoNothing>:
 420:	afa40000 	sw	a0,0(sp)
 424:	03e00008 	jr	ra
 428:	afa50004 	sw	a1,4(sp)

0000042c <BgMoriHineri_SpawnBossKeyChest>:
 42c:	27bdffd0 	addiu	sp,sp,-48
 430:	afa40030 	sw	a0,48(sp)
 434:	8fae0030 	lw	t6,48(sp)
 438:	3c014313 	lui	at,0x4313
 43c:	44813000 	mtc1	at,$f6
 440:	afbf002c 	sw	ra,44(sp)
 444:	3c01c375 	lui	at,0xc375
 448:	44818000 	mtc1	at,$f16
 44c:	c5ca0028 	lwc1	$f10,40(t6)
 450:	c5c40024 	lwc1	$f4,36(t6)
 454:	3c010000 	lui	at,0x0
 458:	46105480 	add.s	$f18,$f10,$f16
 45c:	240f4000 	li	t7,16384
 460:	241827ee 	li	t8,10222
 464:	46062200 	add.s	$f8,$f4,$f6
 468:	e7b20010 	swc1	$f18,16(sp)
 46c:	c4260090 	lwc1	$f6,144(at)
 470:	c5c4002c 	lwc1	$f4,44(t6)
 474:	44074000 	mfc1	a3,$f8
 478:	afb80024 	sw	t8,36(sp)
 47c:	46062200 	add.s	$f8,$f4,$f6
 480:	afa00020 	sw	zero,32(sp)
 484:	afaf001c 	sw	t7,28(sp)
 488:	afa00018 	sw	zero,24(sp)
 48c:	e7a80014 	swc1	$f8,20(sp)
 490:	24a41c24 	addiu	a0,a1,7204
 494:	0c000000 	jal	0 <BgMoriHineri_Init>
 498:	2406000a 	li	a2,10
 49c:	8fa80030 	lw	t0,48(sp)
 4a0:	3c190000 	lui	t9,0x0
 4a4:	27390000 	addiu	t9,t9,0
 4a8:	ad190164 	sw	t9,356(t0)
 4ac:	8fbf002c 	lw	ra,44(sp)
 4b0:	27bd0030 	addiu	sp,sp,48
 4b4:	03e00008 	jr	ra
 4b8:	00000000 	nop

000004bc <func_808A3C8C>:
 4bc:	27bdffe8 	addiu	sp,sp,-24
 4c0:	afbf0014 	sw	ra,20(sp)
 4c4:	8ca21c44 	lw	v0,7236(a1)
 4c8:	c486002c 	lwc1	$f6,44(a0)
 4cc:	3c010000 	lui	at,0x0
 4d0:	c444002c 	lwc1	$f4,44(v0)
 4d4:	c42a0094 	lwc1	$f10,148(at)
 4d8:	44801000 	mtc1	zero,$f2
 4dc:	46062201 	sub.s	$f8,$f4,$f6
 4e0:	00803025 	move	a2,a0
 4e4:	00a03825 	move	a3,a1
 4e8:	3c01447a 	lui	at,0x447a
 4ec:	46085001 	sub.s	$f0,$f10,$f8
 4f0:	4602003c 	c.lt.s	$f0,$f2
 4f4:	00000000 	nop
 4f8:	45020004 	bc1fl	50c <func_808A3C8C+0x50>
 4fc:	44816000 	mtc1	at,$f12
 500:	1000000b 	b	530 <func_808A3C8C+0x74>
 504:	46001006 	mov.s	$f0,$f2
 508:	44816000 	mtc1	at,$f12
 50c:	00000000 	nop
 510:	4600603c 	c.lt.s	$f12,$f0
 514:	00000000 	nop
 518:	45020004 	bc1fl	52c <func_808A3C8C+0x70>
 51c:	46000086 	mov.s	$f2,$f0
 520:	10000002 	b	52c <func_808A3C8C+0x70>
 524:	46006086 	mov.s	$f2,$f12
 528:	46000086 	mov.s	$f2,$f0
 52c:	46001006 	mov.s	$f0,$f2
 530:	3c010000 	lui	at,0x0
 534:	c4300098 	lwc1	$f16,152(at)
 538:	24050004 	li	a1,4
 53c:	46100482 	mul.s	$f18,$f0,$f16
 540:	4600910d 	trunc.w.s	$f4,$f18
 544:	440f2000 	mfc1	t7,$f4
 548:	00000000 	nop
 54c:	a4cf00b8 	sh	t7,184(a2)
 550:	8ce40790 	lw	a0,1936(a3)
 554:	0c000000 	jal	0 <BgMoriHineri_Init>
 558:	afa60018 	sw	a2,24(sp)
 55c:	8fa60018 	lw	a2,24(sp)
 560:	84d8001c 	lh	t8,28(a2)
 564:	53000005 	beqzl	t8,57c <func_808A3C8C+0xc0>
 568:	8fbf0014 	lw	ra,20(sp)
 56c:	84d900b8 	lh	t9,184(a2)
 570:	00194023 	negu	t0,t9
 574:	a4c800b8 	sh	t0,184(a2)
 578:	8fbf0014 	lw	ra,20(sp)
 57c:	27bd0018 	addiu	sp,sp,24
 580:	03e00008 	jr	ra
 584:	00000000 	nop

00000588 <func_808A3D58>:
 588:	27bdffd8 	addiu	sp,sp,-40
 58c:	afb0001c 	sw	s0,28(sp)
 590:	00808025 	move	s0,a0
 594:	afb10020 	sw	s1,32(sp)
 598:	00a08825 	move	s1,a1
 59c:	afbf0024 	sw	ra,36(sp)
 5a0:	00a02025 	move	a0,a1
 5a4:	0c000000 	jal	0 <BgMoriHineri_Init>
 5a8:	8205016b 	lb	a1,363(s0)
 5ac:	10400007 	beqz	v0,5cc <func_808A3D58+0x44>
 5b0:	02202025 	move	a0,s1
 5b4:	8602001c 	lh	v0,28(s0)
 5b8:	24010002 	li	at,2
 5bc:	1040000c 	beqz	v0,5f0 <func_808A3D58+0x68>
 5c0:	00000000 	nop
 5c4:	1041000a 	beq	v0,at,5f0 <func_808A3D58+0x68>
 5c8:	00000000 	nop
 5cc:	0c000000 	jal	0 <BgMoriHineri_Init>
 5d0:	8205016b 	lb	a1,363(s0)
 5d4:	54400027 	bnezl	v0,674 <func_808A3D58+0xec>
 5d8:	8fbf0024 	lw	ra,36(sp)
 5dc:	8602001c 	lh	v0,28(s0)
 5e0:	24010001 	li	at,1
 5e4:	10410002 	beq	v0,at,5f0 <func_808A3D58+0x68>
 5e8:	24010003 	li	at,3
 5ec:	14410020 	bne	v0,at,670 <func_808A3D58+0xe8>
 5f0:	3c0e0000 	lui	t6,0x0
 5f4:	3c0f0000 	lui	t7,0x0
 5f8:	25ce0000 	addiu	t6,t6,0
 5fc:	25ef0000 	addiu	t7,t7,0
 600:	ae0e0134 	sw	t6,308(s0)
 604:	ae0f0164 	sw	t7,356(s0)
 608:	8e380790 	lw	t8,1936(s1)
 60c:	8705014e 	lh	a1,334(t8)
 610:	10a00009 	beqz	a1,638 <func_808A3D58+0xb0>
 614:	0005c880 	sll	t9,a1,0x2
 618:	02394021 	addu	t0,s1,t9
 61c:	8d090790 	lw	t1,1936(t0)
 620:	24010026 	li	at,38
 624:	852a0142 	lh	t2,322(t1)
 628:	55410004 	bnel	t2,at,63c <func_808A3D58+0xb4>
 62c:	02202025 	move	a0,s1
 630:	0c000000 	jal	0 <BgMoriHineri_Init>
 634:	02202025 	move	a0,s1
 638:	02202025 	move	a0,s1
 63c:	24050cbc 	li	a1,3260
 640:	24060028 	li	a2,40
 644:	02003825 	move	a3,s0
 648:	0c000000 	jal	0 <BgMoriHineri_Init>
 64c:	afa00010 	sw	zero,16(sp)
 650:	02202025 	move	a0,s1
 654:	24050cbd 	li	a1,3261
 658:	24060028 	li	a2,40
 65c:	02003825 	move	a3,s0
 660:	0c000000 	jal	0 <BgMoriHineri_Init>
 664:	afa00010 	sw	zero,16(sp)
 668:	3c010000 	lui	at,0x0
 66c:	a4220000 	sh	v0,0(at)
 670:	8fbf0024 	lw	ra,36(sp)
 674:	8fb0001c 	lw	s0,28(sp)
 678:	8fb10020 	lw	s1,32(sp)
 67c:	03e00008 	jr	ra
 680:	27bd0028 	addiu	sp,sp,40

00000684 <func_808A3E54>:
 684:	27bdffe8 	addiu	sp,sp,-24
 688:	3c030000 	lui	v1,0x0
 68c:	24630000 	addiu	v1,v1,0
 690:	afbf0014 	sw	ra,20(sp)
 694:	84ae07a0 	lh	t6,1952(a1)
 698:	84620000 	lh	v0,0(v1)
 69c:	00803025 	move	a2,a0
 6a0:	144e001a 	bne	v0,t6,70c <func_808A3E54+0x88>
 6a4:	00000000 	nop
 6a8:	10400012 	beqz	v0,6f4 <func_808A3E54+0x70>
 6ac:	3c080000 	lui	t0,0x0
 6b0:	8498001c 	lh	t8,28(a0)
 6b4:	8082001e 	lb	v0,30(a0)
 6b8:	808f0168 	lb	t7,360(a0)
 6bc:	3b190001 	xori	t9,t8,0x1
 6c0:	a499001c 	sh	t9,28(a0)
 6c4:	a0820168 	sb	v0,360(a0)
 6c8:	a08f001e 	sb	t7,30(a0)
 6cc:	a4600000 	sh	zero,0(v1)
 6d0:	afa60018 	sw	a2,24(sp)
 6d4:	afa5001c 	sw	a1,28(sp)
 6d8:	0c000000 	jal	0 <BgMoriHineri_Init>
 6dc:	24044807 	li	a0,18439
 6e0:	3c020000 	lui	v0,0x0
 6e4:	84420000 	lh	v0,0(v0)
 6e8:	8fa5001c 	lw	a1,28(sp)
 6ec:	10000007 	b	70c <func_808A3E54+0x88>
 6f0:	8fa60018 	lw	a2,24(sp)
 6f4:	25080000 	addiu	t0,t0,0
 6f8:	acc00134 	sw	zero,308(a2)
 6fc:	acc80164 	sw	t0,356(a2)
 700:	2409ffff 	li	t1,-1
 704:	a4690000 	sh	t1,0(v1)
 708:	84620000 	lh	v0,0(v1)
 70c:	58400012 	blezl	v0,758 <func_808A3E54+0xd4>
 710:	8fbf0014 	lw	ra,20(sp)
 714:	84aa07a0 	lh	t2,1952(a1)
 718:	c4c6002c 	lwc1	$f6,44(a2)
 71c:	3c010000 	lui	at,0x0
 720:	000a5880 	sll	t3,t2,0x2
 724:	00ab6021 	addu	t4,a1,t3
 728:	8d8d0790 	lw	t5,1936(t4)
 72c:	c42a009c 	lwc1	$f10,156(at)
 730:	00c02025 	move	a0,a2
 734:	c5a40064 	lwc1	$f4,100(t5)
 738:	46062201 	sub.s	$f8,$f4,$f6
 73c:	460a403c 	c.lt.s	$f8,$f10
 740:	00000000 	nop
 744:	45020004 	bc1fl	758 <func_808A3E54+0xd4>
 748:	8fbf0014 	lw	ra,20(sp)
 74c:	0c000000 	jal	0 <BgMoriHineri_Init>
 750:	240520ad 	li	a1,8365
 754:	8fbf0014 	lw	ra,20(sp)
 758:	27bd0018 	addiu	sp,sp,24
 75c:	03e00008 	jr	ra
 760:	00000000 	nop

00000764 <BgMoriHineri_Update>:
 764:	27bdffe8 	addiu	sp,sp,-24
 768:	afbf0014 	sw	ra,20(sp)
 76c:	8c990164 	lw	t9,356(a0)
 770:	0320f809 	jalr	t9
 774:	00000000 	nop
 778:	8fbf0014 	lw	ra,20(sp)
 77c:	27bd0018 	addiu	sp,sp,24
 780:	03e00008 	jr	ra
 784:	00000000 	nop

00000788 <BgMoriHineri_DrawHallAndRoom>:
 788:	27bdff50 	addiu	sp,sp,-176
 78c:	afbf001c 	sw	ra,28(sp)
 790:	afb00018 	sw	s0,24(sp)
 794:	afa400b0 	sw	a0,176(sp)
 798:	afa500b4 	sw	a1,180(sp)
 79c:	8ca50000 	lw	a1,0(a1)
 7a0:	3c060000 	lui	a2,0x0
 7a4:	24c60000 	addiu	a2,a2,0
 7a8:	27a40054 	addiu	a0,sp,84
 7ac:	24070263 	li	a3,611
 7b0:	0c000000 	jal	0 <BgMoriHineri_Init>
 7b4:	00a08025 	move	s0,a1
 7b8:	8faf00b4 	lw	t7,180(sp)
 7bc:	0c000000 	jal	0 <BgMoriHineri_Init>
 7c0:	8de40000 	lw	a0,0(t7)
 7c4:	8e0202c0 	lw	v0,704(s0)
 7c8:	8fa700b4 	lw	a3,180(sp)
 7cc:	3c19db06 	lui	t9,0xdb06
 7d0:	24580008 	addiu	t8,v0,8
 7d4:	ae1802c0 	sw	t8,704(s0)
 7d8:	37390020 	ori	t9,t9,0x20
 7dc:	ac590000 	sw	t9,0(v0)
 7e0:	8fa800b0 	lw	t0,176(sp)
 7e4:	3c0c0001 	lui	t4,0x1
 7e8:	3c0eda38 	lui	t6,0xda38
 7ec:	81090169 	lb	t1,361(t0)
 7f0:	35ce0003 	ori	t6,t6,0x3
 7f4:	3c050000 	lui	a1,0x0
 7f8:	00095100 	sll	t2,t1,0x4
 7fc:	01495021 	addu	t2,t2,t1
 800:	000a5080 	sll	t2,t2,0x2
 804:	00ea5821 	addu	t3,a3,t2
 808:	018b6021 	addu	t4,t4,t3
 80c:	8d8c17b4 	lw	t4,6068(t4)
 810:	24a50018 	addiu	a1,a1,24
 814:	2406026a 	li	a2,618
 818:	ac4c0004 	sw	t4,4(v0)
 81c:	8e0202c0 	lw	v0,704(s0)
 820:	244d0008 	addiu	t5,v0,8
 824:	ae0d02c0 	sw	t5,704(s0)
 828:	ac4e0000 	sw	t6,0(v0)
 82c:	8ce40000 	lw	a0,0(a3)
 830:	0c000000 	jal	0 <BgMoriHineri_Init>
 834:	afa2004c 	sw	v0,76(sp)
 838:	8fa3004c 	lw	v1,76(sp)
 83c:	3c18de00 	lui	t8,0xde00
 840:	3c090000 	lui	t1,0x0
 844:	ac620004 	sw	v0,4(v1)
 848:	8e0202c0 	lw	v0,704(s0)
 84c:	8fa600b0 	lw	a2,176(sp)
 850:	244f0008 	addiu	t7,v0,8
 854:	ae0f02c0 	sw	t7,704(s0)
 858:	ac580000 	sw	t8,0(v0)
 85c:	84d9001c 	lh	t9,28(a2)
 860:	00194080 	sll	t0,t9,0x2
 864:	01284821 	addu	t1,t1,t0
 868:	8d290028 	lw	t1,40(t1)
 86c:	ac490004 	sw	t1,4(v0)
 870:	80ca016a 	lb	t2,362(a2)
 874:	59400005 	blezl	t2,88c <BgMoriHineri_DrawHallAndRoom+0x104>
 878:	8ccc0164 	lw	t4,356(a2)
 87c:	0c000000 	jal	0 <BgMoriHineri_Init>
 880:	27a40068 	addiu	a0,sp,104
 884:	8fa600b0 	lw	a2,176(sp)
 888:	8ccc0164 	lw	t4,356(a2)
 88c:	3c0b0000 	lui	t3,0x0
 890:	256b0000 	addiu	t3,t3,0
 894:	556c0042 	bnel	t3,t4,9a0 <BgMoriHineri_DrawHallAndRoom+0x218>
 898:	80ce016a 	lb	t6,362(a2)
 89c:	84cd00b8 	lh	t5,184(a2)
 8a0:	8fae00b4 	lw	t6,180(sp)
 8a4:	51a0003e 	beqzl	t5,9a0 <BgMoriHineri_DrawHallAndRoom+0x218>
 8a8:	80ce016a 	lb	t6,362(a2)
 8ac:	0c000000 	jal	0 <BgMoriHineri_Init>
 8b0:	8dc40000 	lw	a0,0(t6)
 8b4:	8faf00b0 	lw	t7,176(sp)
 8b8:	3c06c4e3 	lui	a2,0xc4e3
 8bc:	34c6a000 	ori	a2,a2,0xa000
 8c0:	85f8001c 	lh	t8,28(t7)
 8c4:	3c010000 	lui	at,0x0
 8c8:	00003825 	move	a3,zero
 8cc:	1700000b 	bnez	t8,8fc <BgMoriHineri_DrawHallAndRoom+0x174>
 8d0:	00000000 	nop
 8d4:	3c010000 	lui	at,0x0
 8d8:	c42c00a0 	lwc1	$f12,160(at)
 8dc:	3c010000 	lui	at,0x0
 8e0:	3c06c4e3 	lui	a2,0xc4e3
 8e4:	34c6a000 	ori	a2,a2,0xa000
 8e8:	c42e00a4 	lwc1	$f14,164(at)
 8ec:	0c000000 	jal	0 <BgMoriHineri_Init>
 8f0:	00003825 	move	a3,zero
 8f4:	10000006 	b	910 <BgMoriHineri_DrawHallAndRoom+0x188>
 8f8:	8fb900b0 	lw	t9,176(sp)
 8fc:	c42c00a8 	lwc1	$f12,168(at)
 900:	3c010000 	lui	at,0x0
 904:	0c000000 	jal	0 <BgMoriHineri_Init>
 908:	c42e00ac 	lwc1	$f14,172(at)
 90c:	8fb900b0 	lw	t9,176(sp)
 910:	00002025 	move	a0,zero
 914:	24058000 	li	a1,-32768
 918:	24070001 	li	a3,1
 91c:	0c000000 	jal	0 <BgMoriHineri_Init>
 920:	872600b8 	lh	a2,184(t9)
 924:	44806000 	mtc1	zero,$f12
 928:	3c01c248 	lui	at,0xc248
 92c:	44817000 	mtc1	at,$f14
 930:	44066000 	mfc1	a2,$f12
 934:	0c000000 	jal	0 <BgMoriHineri_Init>
 938:	24070001 	li	a3,1
 93c:	8e0202c0 	lw	v0,704(s0)
 940:	3c09da38 	lui	t1,0xda38
 944:	35290003 	ori	t1,t1,0x3
 948:	24480008 	addiu	t0,v0,8
 94c:	ae0802c0 	sw	t0,704(s0)
 950:	ac490000 	sw	t1,0(v0)
 954:	8faa00b4 	lw	t2,180(sp)
 958:	3c050000 	lui	a1,0x0
 95c:	24a50030 	addiu	a1,a1,48
 960:	8d440000 	lw	a0,0(t2)
 964:	2406028c 	li	a2,652
 968:	0c000000 	jal	0 <BgMoriHineri_Init>
 96c:	afa20044 	sw	v0,68(sp)
 970:	8fa30044 	lw	v1,68(sp)
 974:	3c0d0000 	lui	t5,0x0
 978:	25ad0000 	addiu	t5,t5,0
 97c:	ac620004 	sw	v0,4(v1)
 980:	8e0202c0 	lw	v0,704(s0)
 984:	3c0cde00 	lui	t4,0xde00
 988:	244b0008 	addiu	t3,v0,8
 98c:	ae0b02c0 	sw	t3,704(s0)
 990:	ac4d0004 	sw	t5,4(v0)
 994:	ac4c0000 	sw	t4,0(v0)
 998:	8fa600b0 	lw	a2,176(sp)
 99c:	80ce016a 	lb	t6,362(a2)
 9a0:	3c010001 	lui	at,0x1
 9a4:	342117a4 	ori	at,at,0x17a4
 9a8:	19c0008a 	blez	t6,bd4 <BgMoriHineri_DrawHallAndRoom+0x44c>
 9ac:	8fa400b4 	lw	a0,180(sp)
 9b0:	00812021 	addu	a0,a0,at
 9b4:	afa40020 	sw	a0,32(sp)
 9b8:	0c000000 	jal	0 <BgMoriHineri_Init>
 9bc:	2405000e 	li	a1,14
 9c0:	8faf00b0 	lw	t7,176(sp)
 9c4:	0002c600 	sll	t8,v0,0x18
 9c8:	0018ce03 	sra	t9,t8,0x18
 9cc:	8fa40020 	lw	a0,32(sp)
 9d0:	1b200080 	blez	t9,bd4 <BgMoriHineri_DrawHallAndRoom+0x44c>
 9d4:	a1e2016a 	sb	v0,362(t7)
 9d8:	8fa800b0 	lw	t0,176(sp)
 9dc:	0c000000 	jal	0 <BgMoriHineri_Init>
 9e0:	8105016a 	lb	a1,362(t0)
 9e4:	5040007c 	beqzl	v0,bd8 <BgMoriHineri_DrawHallAndRoom+0x450>
 9e8:	8fad00b4 	lw	t5,180(sp)
 9ec:	8e0202c0 	lw	v0,704(s0)
 9f0:	3c0adb06 	lui	t2,0xdb06
 9f4:	354a0018 	ori	t2,t2,0x18
 9f8:	24490008 	addiu	t1,v0,8
 9fc:	ae0902c0 	sw	t1,704(s0)
 a00:	ac4a0000 	sw	t2,0(v0)
 a04:	8fac00b0 	lw	t4,176(sp)
 a08:	8fab00b4 	lw	t3,180(sp)
 a0c:	3c180001 	lui	t8,0x1
 a10:	818d016a 	lb	t5,362(t4)
 a14:	3c090000 	lui	t1,0x0
 a18:	3c08db06 	lui	t0,0xdb06
 a1c:	000d7100 	sll	t6,t5,0x4
 a20:	01cd7021 	addu	t6,t6,t5
 a24:	000e7080 	sll	t6,t6,0x2
 a28:	016e7821 	addu	t7,t3,t6
 a2c:	030fc021 	addu	t8,t8,t7
 a30:	8f1817b4 	lw	t8,6068(t8)
 a34:	35080020 	ori	t0,t0,0x20
 a38:	25290010 	addiu	t1,t1,16
 a3c:	ac580004 	sw	t8,4(v0)
 a40:	8e0202c0 	lw	v0,704(s0)
 a44:	27a40068 	addiu	a0,sp,104
 a48:	24590008 	addiu	t9,v0,8
 a4c:	ae1902c0 	sw	t9,704(s0)
 a50:	ac490004 	sw	t1,4(v0)
 a54:	0c000000 	jal	0 <BgMoriHineri_Init>
 a58:	ac480000 	sw	t0,0(v0)
 a5c:	3c014313 	lui	at,0x4313
 a60:	44816000 	mtc1	at,$f12
 a64:	3c01c375 	lui	at,0xc375
 a68:	44817000 	mtc1	at,$f14
 a6c:	3c06c3e2 	lui	a2,0xc3e2
 a70:	34c68000 	ori	a2,a2,0x8000
 a74:	0c000000 	jal	0 <BgMoriHineri_Init>
 a78:	24070001 	li	a3,1
 a7c:	3c010000 	lui	at,0x0
 a80:	c42c00b0 	lwc1	$f12,176(at)
 a84:	0c000000 	jal	0 <BgMoriHineri_Init>
 a88:	24050001 	li	a1,1
 a8c:	3c010000 	lui	at,0x0
 a90:	c42c00b4 	lwc1	$f12,180(at)
 a94:	24070001 	li	a3,1
 a98:	44066000 	mfc1	a2,$f12
 a9c:	0c000000 	jal	0 <BgMoriHineri_Init>
 aa0:	46006386 	mov.s	$f14,$f12
 aa4:	8e0202c0 	lw	v0,704(s0)
 aa8:	3c0cda38 	lui	t4,0xda38
 aac:	358c0003 	ori	t4,t4,0x3
 ab0:	244a0008 	addiu	t2,v0,8
 ab4:	ae0a02c0 	sw	t2,704(s0)
 ab8:	ac4c0000 	sw	t4,0(v0)
 abc:	8fad00b4 	lw	t5,180(sp)
 ac0:	3c050000 	lui	a1,0x0
 ac4:	24a50048 	addiu	a1,a1,72
 ac8:	8da40000 	lw	a0,0(t5)
 acc:	240602b1 	li	a2,689
 ad0:	0c000000 	jal	0 <BgMoriHineri_Init>
 ad4:	afa20034 	sw	v0,52(sp)
 ad8:	8fa30034 	lw	v1,52(sp)
 adc:	3c0f0000 	lui	t7,0x0
 ae0:	25ef0000 	addiu	t7,t7,0
 ae4:	ac620004 	sw	v0,4(v1)
 ae8:	8e0202c0 	lw	v0,704(s0)
 aec:	3c0ede00 	lui	t6,0xde00
 af0:	27a40068 	addiu	a0,sp,104
 af4:	244b0008 	addiu	t3,v0,8
 af8:	ae0b02c0 	sw	t3,704(s0)
 afc:	ac4f0004 	sw	t7,4(v0)
 b00:	0c000000 	jal	0 <BgMoriHineri_Init>
 b04:	ac4e0000 	sw	t6,0(v0)
 b08:	3c014327 	lui	at,0x4327
 b0c:	44816000 	mtc1	at,$f12
 b10:	3c01c35a 	lui	at,0xc35a
 b14:	44817000 	mtc1	at,$f14
 b18:	3c06c3e2 	lui	a2,0xc3e2
 b1c:	34c68000 	ori	a2,a2,0x8000
 b20:	0c000000 	jal	0 <BgMoriHineri_Init>
 b24:	24070001 	li	a3,1
 b28:	8fa400b4 	lw	a0,180(sp)
 b2c:	0c000000 	jal	0 <BgMoriHineri_Init>
 b30:	2405000e 	li	a1,14
 b34:	10400007 	beqz	v0,b54 <BgMoriHineri_DrawHallAndRoom+0x3cc>
 b38:	3c010000 	lui	at,0x0
 b3c:	3c010000 	lui	at,0x0
 b40:	c42c00b8 	lwc1	$f12,184(at)
 b44:	0c000000 	jal	0 <BgMoriHineri_Init>
 b48:	24050001 	li	a1,1
 b4c:	10000004 	b	b60 <BgMoriHineri_DrawHallAndRoom+0x3d8>
 b50:	00000000 	nop
 b54:	c42c00bc 	lwc1	$f12,188(at)
 b58:	0c000000 	jal	0 <BgMoriHineri_Init>
 b5c:	24050001 	li	a1,1
 b60:	3c010000 	lui	at,0x0
 b64:	c42c00c0 	lwc1	$f12,192(at)
 b68:	24070001 	li	a3,1
 b6c:	44066000 	mfc1	a2,$f12
 b70:	0c000000 	jal	0 <BgMoriHineri_Init>
 b74:	46006386 	mov.s	$f14,$f12
 b78:	8e0202c0 	lw	v0,704(s0)
 b7c:	3c19da38 	lui	t9,0xda38
 b80:	37390003 	ori	t9,t9,0x3
 b84:	24580008 	addiu	t8,v0,8
 b88:	ae1802c0 	sw	t8,704(s0)
 b8c:	ac590000 	sw	t9,0(v0)
 b90:	8fa800b4 	lw	t0,180(sp)
 b94:	3c050000 	lui	a1,0x0
 b98:	24a50060 	addiu	a1,a1,96
 b9c:	8d040000 	lw	a0,0(t0)
 ba0:	240602bf 	li	a2,703
 ba4:	0c000000 	jal	0 <BgMoriHineri_Init>
 ba8:	afa2002c 	sw	v0,44(sp)
 bac:	8fa3002c 	lw	v1,44(sp)
 bb0:	3c0c0000 	lui	t4,0x0
 bb4:	258c0000 	addiu	t4,t4,0
 bb8:	ac620004 	sw	v0,4(v1)
 bbc:	8e0202c0 	lw	v0,704(s0)
 bc0:	3c0ade00 	lui	t2,0xde00
 bc4:	24490008 	addiu	t1,v0,8
 bc8:	ae0902c0 	sw	t1,704(s0)
 bcc:	ac4c0004 	sw	t4,4(v0)
 bd0:	ac4a0000 	sw	t2,0(v0)
 bd4:	8fad00b4 	lw	t5,180(sp)
 bd8:	3c060000 	lui	a2,0x0
 bdc:	24c60078 	addiu	a2,a2,120
 be0:	27a40054 	addiu	a0,sp,84
 be4:	240702c5 	li	a3,709
 be8:	0c000000 	jal	0 <BgMoriHineri_Init>
 bec:	8da50000 	lw	a1,0(t5)
 bf0:	8fbf001c 	lw	ra,28(sp)
 bf4:	8fb00018 	lw	s0,24(sp)
 bf8:	27bd00b0 	addiu	sp,sp,176
 bfc:	03e00008 	jr	ra
 c00:	00000000 	nop
	...
