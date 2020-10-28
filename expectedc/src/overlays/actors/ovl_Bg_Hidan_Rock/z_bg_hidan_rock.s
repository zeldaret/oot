
build/src/overlays/actors/ovl_Bg_Hidan_Rock/z_bg_hidan_rock.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanRock_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb10018 	sw	s1,24(sp)
   8:	00a08825 	move	s1,a1
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00014 	sw	s0,20(sp)
  14:	3c050000 	lui	a1,0x0
  18:	00808025 	move	s0,a0
  1c:	afa00024 	sw	zero,36(sp)
  20:	0c000000 	jal	0 <BgHidanRock_Init>
  24:	24a50000 	addiu	a1,a1,0
  28:	02002025 	move	a0,s0
  2c:	0c000000 	jal	0 <BgHidanRock_Init>
  30:	24050001 	li	a1,1
  34:	8618001c 	lh	t8,28(s0)
  38:	860f001c 	lh	t7,28(s0)
  3c:	a2000169 	sb	zero,361(s0)
  40:	0018ca03 	sra	t9,t8,0x8
  44:	332800ff 	andi	t0,t9,0xff
  48:	a608001c 	sh	t0,28(s0)
  4c:	2605017c 	addiu	a1,s0,380
  50:	a20f0168 	sb	t7,360(s0)
  54:	afa50020 	sw	a1,32(sp)
  58:	0c000000 	jal	0 <BgHidanRock_Init>
  5c:	02202025 	move	a0,s1
  60:	3c070000 	lui	a3,0x0
  64:	8fa50020 	lw	a1,32(sp)
  68:	24e70000 	addiu	a3,a3,0
  6c:	02202025 	move	a0,s1
  70:	0c000000 	jal	0 <BgHidanRock_Init>
  74:	02003025 	move	a2,s0
  78:	92090168 	lbu	t1,360(s0)
  7c:	3c040601 	lui	a0,0x601
  80:	2484df78 	addiu	a0,a0,-8328
  84:	1520001f 	bnez	t1,104 <BgHidanRock_Init+0x104>
  88:	00000000 	nop
  8c:	02202025 	move	a0,s1
  90:	0c000000 	jal	0 <BgHidanRock_Init>
  94:	8605001c 	lh	a1,28(s0)
  98:	1040000f 	beqz	v0,d8 <BgHidanRock_Init+0xd8>
  9c:	3c0c0000 	lui	t4,0x0
  a0:	3c050000 	lui	a1,0x0
  a4:	24a50000 	addiu	a1,a1,0
  a8:	0c000000 	jal	0 <BgHidanRock_Init>
  ac:	26040008 	addiu	a0,s0,8
  b0:	3c050000 	lui	a1,0x0
  b4:	24a50000 	addiu	a1,a1,0
  b8:	0c000000 	jal	0 <BgHidanRock_Init>
  bc:	26040024 	addiu	a0,s0,36
  c0:	3c0b0000 	lui	t3,0x0
  c4:	240a003c 	li	t2,60
  c8:	256b0000 	addiu	t3,t3,0
  cc:	a60a016a 	sh	t2,362(s0)
  d0:	10000003 	b	e0 <BgHidanRock_Init+0xe0>
  d4:	ae0b0164 	sw	t3,356(s0)
  d8:	258c0000 	addiu	t4,t4,0
  dc:	ae0c0164 	sw	t4,356(s0)
  e0:	8e0d0004 	lw	t5,4(s0)
  e4:	3c040601 	lui	a0,0x601
  e8:	2484cb80 	addiu	a0,a0,-13440
  ec:	35ae0030 	ori	t6,t5,0x30
  f0:	ae0e0004 	sw	t6,4(s0)
  f4:	0c000000 	jal	0 <BgHidanRock_Init>
  f8:	27a50024 	addiu	a1,sp,36
  fc:	10000013 	b	14c <BgHidanRock_Init+0x14c>
 100:	02202025 	move	a0,s1
 104:	0c000000 	jal	0 <BgHidanRock_Init>
 108:	27a50024 	addiu	a1,sp,36
 10c:	c6040008 	lwc1	$f4,8(s0)
 110:	c608000c 	lwc1	$f8,12(s0)
 114:	c6100010 	lwc1	$f16,16(s0)
 118:	4600218d 	trunc.w.s	$f6,$f4
 11c:	3c0b0000 	lui	t3,0x0
 120:	256b0000 	addiu	t3,t3,0
 124:	4600428d 	trunc.w.s	$f10,$f8
 128:	44183000 	mfc1	t8,$f6
 12c:	ae0b0164 	sw	t3,356(s0)
 130:	4600848d 	trunc.w.s	$f18,$f16
 134:	44085000 	mfc1	t0,$f10
 138:	a61801c2 	sh	t8,450(s0)
 13c:	440a9000 	mfc1	t2,$f18
 140:	a60801c4 	sh	t0,452(s0)
 144:	a60a01c6 	sh	t2,454(s0)
 148:	02202025 	move	a0,s1
 14c:	26250810 	addiu	a1,s1,2064
 150:	02003025 	move	a2,s0
 154:	0c000000 	jal	0 <BgHidanRock_Init>
 158:	8fa70024 	lw	a3,36(sp)
 15c:	ae02014c 	sw	v0,332(s0)
 160:	a600016a 	sh	zero,362(s0)
 164:	8fbf001c 	lw	ra,28(sp)
 168:	8fb10018 	lw	s1,24(sp)
 16c:	8fb00014 	lw	s0,20(sp)
 170:	03e00008 	jr	ra
 174:	27bd0030 	addiu	sp,sp,48

00000178 <BgHidanRock_Destroy>:
 178:	27bdffe8 	addiu	sp,sp,-24
 17c:	afa40018 	sw	a0,24(sp)
 180:	8fae0018 	lw	t6,24(sp)
 184:	afbf0014 	sw	ra,20(sp)
 188:	00a03825 	move	a3,a1
 18c:	00a02025 	move	a0,a1
 190:	8dc6014c 	lw	a2,332(t6)
 194:	afa7001c 	sw	a3,28(sp)
 198:	0c000000 	jal	0 <BgHidanRock_Init>
 19c:	24a50810 	addiu	a1,a1,2064
 1a0:	8fa50018 	lw	a1,24(sp)
 1a4:	8fa4001c 	lw	a0,28(sp)
 1a8:	0c000000 	jal	0 <BgHidanRock_Init>
 1ac:	24a5017c 	addiu	a1,a1,380
 1b0:	8fa40018 	lw	a0,24(sp)
 1b4:	0c000000 	jal	0 <BgHidanRock_Init>
 1b8:	24840170 	addiu	a0,a0,368
 1bc:	8fbf0014 	lw	ra,20(sp)
 1c0:	27bd0018 	addiu	sp,sp,24
 1c4:	03e00008 	jr	ra
 1c8:	00000000 	nop

000001cc <func_8088B24C>:
 1cc:	8c8e0004 	lw	t6,4(a0)
 1d0:	3c180000 	lui	t8,0x0
 1d4:	27180000 	addiu	t8,t8,0
 1d8:	35cf0030 	ori	t7,t6,0x30
 1dc:	ac8f0004 	sw	t7,4(a0)
 1e0:	03e00008 	jr	ra
 1e4:	ac980164 	sw	t8,356(a0)

000001e8 <func_8088B268>:
 1e8:	27bdffd0 	addiu	sp,sp,-48
 1ec:	afbf001c 	sw	ra,28(sp)
 1f0:	afb00018 	sw	s0,24(sp)
 1f4:	afa50034 	sw	a1,52(sp)
 1f8:	8caf1c44 	lw	t7,7236(a1)
 1fc:	44801000 	mtc1	zero,$f2
 200:	00808025 	move	s0,a0
 204:	afaf0020 	sw	t7,32(sp)
 208:	c4800150 	lwc1	$f0,336(a0)
 20c:	46001032 	c.eq.s	$f2,$f0
 210:	00000000 	nop
 214:	45030070 	bc1tl	3d8 <func_8088B268+0x1f0>
 218:	a600016a 	sh	zero,362(s0)
 21c:	8498016a 	lh	t8,362(a0)
 220:	3c010000 	lui	at,0x0
 224:	8fab0020 	lw	t3,32(sp)
 228:	57000061 	bnezl	t8,3b0 <func_8088B268+0x1c8>
 22c:	8d6c0680 	lw	t4,1664(t3)
 230:	c4240000 	lwc1	$f4,0(at)
 234:	3c040000 	lui	a0,0x0
 238:	24840000 	addiu	a0,a0,0
 23c:	46022032 	c.eq.s	$f4,$f2
 240:	3c05c1a0 	lui	a1,0xc1a0
 244:	45020012 	bc1fl	290 <func_8088B268+0xa8>
 248:	3c014000 	lui	at,0x4000
 24c:	4600103c 	c.lt.s	$f2,$f0
 250:	3c010000 	lui	at,0x0
 254:	45000007 	bc1f	274 <func_8088B268+0x8c>
 258:	00000000 	nop
 25c:	3c010000 	lui	at,0x0
 260:	c4260000 	lwc1	$f6,0(at)
 264:	3c010000 	lui	at,0x0
 268:	46062200 	add.s	$f8,$f4,$f6
 26c:	10000007 	b	28c <func_8088B268+0xa4>
 270:	e4280000 	swc1	$f8,0(at)
 274:	c42a0000 	lwc1	$f10,0(at)
 278:	3c010000 	lui	at,0x0
 27c:	c4300000 	lwc1	$f16,0(at)
 280:	3c010000 	lui	at,0x0
 284:	46105481 	sub.s	$f18,$f10,$f16
 288:	e4320000 	swc1	$f18,0(at)
 28c:	3c014000 	lui	at,0x4000
 290:	44816000 	mtc1	at,$f12
 294:	3c010000 	lui	at,0x0
 298:	c4260000 	lwc1	$f6,0(at)
 29c:	c6040068 	lwc1	$f4,104(s0)
 2a0:	3c010000 	lui	at,0x0
 2a4:	46062200 	add.s	$f8,$f4,$f6
 2a8:	e6080068 	swc1	$f8,104(s0)
 2ac:	c6000068 	lwc1	$f0,104(s0)
 2b0:	4600603c 	c.lt.s	$f12,$f0
 2b4:	00000000 	nop
 2b8:	45020004 	bc1fl	2cc <func_8088B268+0xe4>
 2bc:	e6000068 	swc1	$f0,104(s0)
 2c0:	10000002 	b	2cc <func_8088B268+0xe4>
 2c4:	e60c0068 	swc1	$f12,104(s0)
 2c8:	e6000068 	swc1	$f0,104(s0)
 2cc:	c42a0000 	lwc1	$f10,0(at)
 2d0:	460a103c 	c.lt.s	$f2,$f10
 2d4:	00000000 	nop
 2d8:	45000008 	bc1f	2fc <func_8088B268+0x114>
 2dc:	00000000 	nop
 2e0:	3c040000 	lui	a0,0x0
 2e4:	24840000 	addiu	a0,a0,0
 2e8:	3c0541a0 	lui	a1,0x41a0
 2ec:	0c000000 	jal	0 <BgHidanRock_Init>
 2f0:	8e060068 	lw	a2,104(s0)
 2f4:	10000004 	b	308 <func_8088B268+0x120>
 2f8:	00401825 	move	v1,v0
 2fc:	0c000000 	jal	0 <BgHidanRock_Init>
 300:	8e060068 	lw	a2,104(s0)
 304:	00401825 	move	v1,v0
 308:	86040158 	lh	a0,344(s0)
 30c:	0c000000 	jal	0 <BgHidanRock_Init>
 310:	afa30028 	sw	v1,40(sp)
 314:	3c010000 	lui	at,0x0
 318:	c4300000 	lwc1	$f16,0(at)
 31c:	c6040008 	lwc1	$f4,8(s0)
 320:	86040158 	lh	a0,344(s0)
 324:	46100482 	mul.s	$f18,$f0,$f16
 328:	46049180 	add.s	$f6,$f18,$f4
 32c:	0c000000 	jal	0 <BgHidanRock_Init>
 330:	e6060024 	swc1	$f6,36(s0)
 334:	3c010000 	lui	at,0x0
 338:	c4280000 	lwc1	$f8,0(at)
 33c:	c6100010 	lwc1	$f16,16(s0)
 340:	8fa30028 	lw	v1,40(sp)
 344:	46080282 	mul.s	$f10,$f0,$f8
 348:	44801000 	mtc1	zero,$f2
 34c:	02002025 	move	a0,s0
 350:	46105480 	add.s	$f18,$f10,$f16
 354:	10600010 	beqz	v1,398 <func_8088B268+0x1b0>
 358:	e612002c 	swc1	$f18,44(s0)
 35c:	8fb90020 	lw	t9,32(sp)
 360:	2401ffef 	li	at,-17
 364:	240a0005 	li	t2,5
 368:	8f280680 	lw	t0,1664(t9)
 36c:	01014824 	and	t1,t0,at
 370:	af290680 	sw	t1,1664(t9)
 374:	c6040024 	lwc1	$f4,36(s0)
 378:	c606002c 	lwc1	$f6,44(s0)
 37c:	e6020150 	swc1	$f2,336(s0)
 380:	3c010000 	lui	at,0x0
 384:	e6040008 	swc1	$f4,8(s0)
 388:	e6060010 	swc1	$f6,16(s0)
 38c:	e4220000 	swc1	$f2,0(at)
 390:	e6020068 	swc1	$f2,104(s0)
 394:	a60a016a 	sh	t2,362(s0)
 398:	0c000000 	jal	0 <BgHidanRock_Init>
 39c:	2405200a 	li	a1,8202
 3a0:	44801000 	mtc1	zero,$f2
 3a4:	1000000c 	b	3d8 <func_8088B268+0x1f0>
 3a8:	00000000 	nop
 3ac:	8d6c0680 	lw	t4,1664(t3)
 3b0:	2401ffef 	li	at,-17
 3b4:	01816824 	and	t5,t4,at
 3b8:	ad6d0680 	sw	t5,1664(t3)
 3bc:	8602016a 	lh	v0,362(s0)
 3c0:	e6020150 	swc1	$f2,336(s0)
 3c4:	10400004 	beqz	v0,3d8 <func_8088B268+0x1f0>
 3c8:	244effff 	addiu	t6,v0,-1
 3cc:	10000002 	b	3d8 <func_8088B268+0x1f0>
 3d0:	a60e016a 	sh	t6,362(s0)
 3d4:	a600016a 	sh	zero,362(s0)
 3d8:	3c010000 	lui	at,0x0
 3dc:	c42a0000 	lwc1	$f10,0(at)
 3e0:	c608002c 	lwc1	$f8,44(s0)
 3e4:	3c013f00 	lui	at,0x3f00
 3e8:	44812000 	mtc1	at,$f4
 3ec:	460a4401 	sub.s	$f16,$f8,$f10
 3f0:	8fa40034 	lw	a0,52(sp)
 3f4:	e7b0002c 	swc1	$f16,44(sp)
 3f8:	c7b2002c 	lwc1	$f18,44(sp)
 3fc:	4604903c 	c.lt.s	$f18,$f4
 400:	00000000 	nop
 404:	4502001a 	bc1fl	470 <func_8088B268+0x288>
 408:	8fb90034 	lw	t9,52(sp)
 40c:	0c000000 	jal	0 <BgHidanRock_Init>
 410:	8605001c 	lh	a1,28(s0)
 414:	3c050000 	lui	a1,0x0
 418:	24a50000 	addiu	a1,a1,0
 41c:	0c000000 	jal	0 <BgHidanRock_Init>
 420:	26040008 	addiu	a0,s0,8
 424:	3c020000 	lui	v0,0x0
 428:	24420000 	addiu	v0,v0,0
 42c:	c4460000 	lwc1	$f6,0(v0)
 430:	44801000 	mtc1	zero,$f2
 434:	3c010000 	lui	at,0x0
 438:	e6060024 	swc1	$f6,36(s0)
 43c:	c4480008 	lwc1	$f8,8(v0)
 440:	e6020068 	swc1	$f2,104(s0)
 444:	3c090000 	lui	t1,0x0
 448:	e608002c 	swc1	$f8,44(s0)
 44c:	8faf0020 	lw	t7,32(sp)
 450:	e4220000 	swc1	$f2,0(at)
 454:	2401ffef 	li	at,-17
 458:	8df80680 	lw	t8,1664(t7)
 45c:	25290000 	addiu	t1,t1,0
 460:	03014024 	and	t0,t8,at
 464:	ade80680 	sw	t0,1664(t7)
 468:	ae090164 	sw	t1,356(s0)
 46c:	8fb90034 	lw	t9,52(sp)
 470:	3c020001 	lui	v0,0x1
 474:	00591021 	addu	v0,v0,t9
 478:	8c421de4 	lw	v0,7652(v0)
 47c:	304a0100 	andi	t2,v0,0x100
 480:	11400003 	beqz	t2,490 <func_8088B268+0x2a8>
 484:	304300ff 	andi	v1,v0,0xff
 488:	10000024 	b	51c <func_8088B268+0x334>
 48c:	e602016c 	swc1	$f2,364(s0)
 490:	28610080 	slti	at,v1,128
 494:	5020000f 	beqzl	at,4d4 <func_8088B268+0x2ec>
 498:	286100e6 	slti	at,v1,230
 49c:	44835000 	mtc1	v1,$f10
 4a0:	3c010000 	lui	at,0x0
 4a4:	c4320000 	lwc1	$f18,0(at)
 4a8:	46805420 	cvt.s.w	$f16,$f10
 4ac:	46128302 	mul.s	$f12,$f16,$f18
 4b0:	0c000000 	jal	0 <BgHidanRock_Init>
 4b4:	00000000 	nop
 4b8:	3c01419d 	lui	at,0x419d
 4bc:	44812000 	mtc1	at,$f4
 4c0:	00000000 	nop
 4c4:	46040182 	mul.s	$f6,$f0,$f4
 4c8:	10000014 	b	51c <func_8088B268+0x334>
 4cc:	e606016c 	swc1	$f6,364(s0)
 4d0:	286100e6 	slti	at,v1,230
 4d4:	10200004 	beqz	at,4e8 <func_8088B268+0x300>
 4d8:	3c01419d 	lui	at,0x419d
 4dc:	44814000 	mtc1	at,$f8
 4e0:	1000000e 	b	51c <func_8088B268+0x334>
 4e4:	e608016c 	swc1	$f8,364(s0)
 4e8:	3c013f80 	lui	at,0x3f80
 4ec:	44818000 	mtc1	at,$f16
 4f0:	c60a016c 	lwc1	$f10,364(s0)
 4f4:	46105481 	sub.s	$f18,$f10,$f16
 4f8:	e612016c 	swc1	$f18,364(s0)
 4fc:	c600016c 	lwc1	$f0,364(s0)
 500:	4602003c 	c.lt.s	$f0,$f2
 504:	00000000 	nop
 508:	45020004 	bc1fl	51c <func_8088B268+0x334>
 50c:	e600016c 	swc1	$f0,364(s0)
 510:	10000002 	b	51c <func_8088B268+0x334>
 514:	e602016c 	swc1	$f2,364(s0)
 518:	e600016c 	swc1	$f0,364(s0)
 51c:	3c0142c8 	lui	at,0x42c8
 520:	44813000 	mtc1	at,$f6
 524:	c7a4002c 	lwc1	$f4,44(sp)
 528:	3c0140c4 	lui	at,0x40c4
 52c:	4606203c 	c.lt.s	$f4,$f6
 530:	00000000 	nop
 534:	4502000b 	bc1fl	564 <func_8088B268+0x37c>
 538:	8fbf001c 	lw	ra,28(sp)
 53c:	44811000 	mtc1	at,$f2
 540:	c600016c 	lwc1	$f0,364(s0)
 544:	4600103c 	c.lt.s	$f2,$f0
 548:	00000000 	nop
 54c:	45020004 	bc1fl	560 <func_8088B268+0x378>
 550:	e600016c 	swc1	$f0,364(s0)
 554:	10000002 	b	560 <func_8088B268+0x378>
 558:	e602016c 	swc1	$f2,364(s0)
 55c:	e600016c 	swc1	$f0,364(s0)
 560:	8fbf001c 	lw	ra,28(sp)
 564:	8fb00018 	lw	s0,24(sp)
 568:	27bd0030 	addiu	sp,sp,48
 56c:	03e00008 	jr	ra
 570:	00000000 	nop

00000574 <func_8088B5F4>:
 574:	27bdffe8 	addiu	sp,sp,-24
 578:	afbf0014 	sw	ra,20(sp)
 57c:	afa5001c 	sw	a1,28(sp)
 580:	8482016a 	lh	v0,362(a0)
 584:	10400003 	beqz	v0,594 <func_8088B5F4+0x20>
 588:	244effff 	addiu	t6,v0,-1
 58c:	a48e016a 	sh	t6,362(a0)
 590:	8482016a 	lh	v0,362(a0)
 594:	54400004 	bnezl	v0,5a8 <func_8088B5F4+0x34>
 598:	8fbf0014 	lw	ra,20(sp)
 59c:	0c000000 	jal	0 <BgHidanRock_Init>
 5a0:	00000000 	nop
 5a4:	8fbf0014 	lw	ra,20(sp)
 5a8:	27bd0018 	addiu	sp,sp,24
 5ac:	03e00008 	jr	ra
 5b0:	00000000 	nop

000005b4 <func_8088B634>:
 5b4:	27bdffe8 	addiu	sp,sp,-24
 5b8:	afbf0014 	sw	ra,20(sp)
 5bc:	afa40018 	sw	a0,24(sp)
 5c0:	0c000000 	jal	0 <BgHidanRock_Init>
 5c4:	afa5001c 	sw	a1,28(sp)
 5c8:	10400010 	beqz	v0,60c <func_8088B634+0x58>
 5cc:	8fa3001c 	lw	v1,28(sp)
 5d0:	8faf0018 	lw	t7,24(sp)
 5d4:	240e0014 	li	t6,20
 5d8:	a5ee016a 	sh	t6,362(t7)
 5dc:	847807a0 	lh	t8,1952(v1)
 5e0:	0018c880 	sll	t9,t8,0x2
 5e4:	00794021 	addu	t0,v1,t9
 5e8:	0c000000 	jal	0 <BgHidanRock_Init>
 5ec:	8d040790 	lw	a0,1936(t0)
 5f0:	8faa0018 	lw	t2,24(sp)
 5f4:	24494000 	addiu	t1,v0,16384
 5f8:	3c0b0000 	lui	t3,0x0
 5fc:	a5490032 	sh	t1,50(t2)
 600:	8fac0018 	lw	t4,24(sp)
 604:	256b0000 	addiu	t3,t3,0
 608:	ad8b0164 	sw	t3,356(t4)
 60c:	8fbf0014 	lw	ra,20(sp)
 610:	27bd0018 	addiu	sp,sp,24
 614:	03e00008 	jr	ra
 618:	00000000 	nop

0000061c <func_8088B69C>:
 61c:	27bdffe0 	addiu	sp,sp,-32
 620:	afbf001c 	sw	ra,28(sp)
 624:	afb00018 	sw	s0,24(sp)
 628:	afa50024 	sw	a1,36(sp)
 62c:	8482016a 	lh	v0,362(a0)
 630:	00808025 	move	s0,a0
 634:	10400003 	beqz	v0,644 <func_8088B69C+0x28>
 638:	244effff 	addiu	t6,v0,-1
 63c:	a48e016a 	sh	t6,362(a0)
 640:	8482016a 	lh	v0,362(a0)
 644:	5040001c 	beqzl	v0,6b8 <func_8088B69C+0x9c>
 648:	c6080008 	lwc1	$f8,8(s0)
 64c:	860f0032 	lh	t7,50(s0)
 650:	0002c380 	sll	t8,v0,0xe
 654:	01f82021 	addu	a0,t7,t8
 658:	00042400 	sll	a0,a0,0x10
 65c:	0c000000 	jal	0 <BgHidanRock_Init>
 660:	00042403 	sra	a0,a0,0x10
 664:	3c0140a0 	lui	at,0x40a0
 668:	44812000 	mtc1	at,$f4
 66c:	c6080008 	lwc1	$f8,8(s0)
 670:	8608016a 	lh	t0,362(s0)
 674:	46040182 	mul.s	$f6,$f0,$f4
 678:	86190032 	lh	t9,50(s0)
 67c:	00084b80 	sll	t1,t0,0xe
 680:	03292021 	addu	a0,t9,t1
 684:	00042400 	sll	a0,a0,0x10
 688:	00042403 	sra	a0,a0,0x10
 68c:	46083280 	add.s	$f10,$f6,$f8
 690:	0c000000 	jal	0 <BgHidanRock_Init>
 694:	e60a0024 	swc1	$f10,36(s0)
 698:	3c0140a0 	lui	at,0x40a0
 69c:	44818000 	mtc1	at,$f16
 6a0:	c6040010 	lwc1	$f4,16(s0)
 6a4:	46100482 	mul.s	$f18,$f0,$f16
 6a8:	46049180 	add.s	$f6,$f18,$f4
 6ac:	10000007 	b	6cc <func_8088B69C+0xb0>
 6b0:	e606002c 	swc1	$f6,44(s0)
 6b4:	c6080008 	lwc1	$f8,8(s0)
 6b8:	c60a0010 	lwc1	$f10,16(s0)
 6bc:	02002025 	move	a0,s0
 6c0:	e6080024 	swc1	$f8,36(s0)
 6c4:	0c000000 	jal	0 <BgHidanRock_Init>
 6c8:	e60a002c 	swc1	$f10,44(s0)
 6cc:	860a016a 	lh	t2,362(s0)
 6d0:	240500b4 	li	a1,180
 6d4:	2406000a 	li	a2,10
 6d8:	05410004 	bgez	t2,6ec <func_8088B69C+0xd0>
 6dc:	314b0003 	andi	t3,t2,0x3
 6e0:	11600002 	beqz	t3,6ec <func_8088B69C+0xd0>
 6e4:	00000000 	nop
 6e8:	256bfffc 	addiu	t3,t3,-4
 6ec:	15600006 	bnez	t3,708 <func_8088B69C+0xec>
 6f0:	24070064 	li	a3,100
 6f4:	0c000000 	jal	0 <BgHidanRock_Init>
 6f8:	c60c008c 	lwc1	$f12,140(s0)
 6fc:	02002025 	move	a0,s0
 700:	0c000000 	jal	0 <BgHidanRock_Init>
 704:	24052838 	li	a1,10296
 708:	8fbf001c 	lw	ra,28(sp)
 70c:	8fb00018 	lw	s0,24(sp)
 710:	27bd0020 	addiu	sp,sp,32
 714:	03e00008 	jr	ra
 718:	00000000 	nop

0000071c <func_8088B79C>:
 71c:	27bdffe0 	addiu	sp,sp,-32
 720:	afbf001c 	sw	ra,28(sp)
 724:	afb00018 	sw	s0,24(sp)
 728:	afa50024 	sw	a1,36(sp)
 72c:	848e016a 	lh	t6,362(a0)
 730:	94980088 	lhu	t8,136(a0)
 734:	00808025 	move	s0,a0
 738:	25cfffff 	addiu	t7,t6,-1
 73c:	33190002 	andi	t9,t8,0x2
 740:	13200021 	beqz	t9,7c8 <func_8088B79C+0xac>
 744:	a48f016a 	sh	t7,362(a0)
 748:	90880168 	lbu	t0,360(a0)
 74c:	3c014170 	lui	at,0x4170
 750:	3c0b0000 	lui	t3,0x0
 754:	15000007 	bnez	t0,774 <func_8088B79C+0x58>
 758:	24052835 	li	a1,10293
 75c:	3c0a0000 	lui	t2,0x0
 760:	2409003c 	li	t1,60
 764:	254a0000 	addiu	t2,t2,0
 768:	a489016a 	sh	t1,362(a0)
 76c:	1000000b 	b	79c <func_8088B79C+0x80>
 770:	ac8a0164 	sw	t2,356(a0)
 774:	c604000c 	lwc1	$f4,12(s0)
 778:	44813000 	mtc1	at,$f6
 77c:	8e0c0004 	lw	t4,4(s0)
 780:	2401ffcf 	li	at,-49
 784:	46062201 	sub.s	$f8,$f4,$f6
 788:	256b0000 	addiu	t3,t3,0
 78c:	01816824 	and	t5,t4,at
 790:	ae0b0164 	sw	t3,356(s0)
 794:	e6080028 	swc1	$f8,40(s0)
 798:	ae0d0004 	sw	t5,4(s0)
 79c:	0c000000 	jal	0 <BgHidanRock_Init>
 7a0:	02002025 	move	a0,s0
 7a4:	8fa40024 	lw	a0,36(sp)
 7a8:	8e050078 	lw	a1,120(s0)
 7ac:	9206007d 	lbu	a2,125(s0)
 7b0:	0c000000 	jal	0 <BgHidanRock_Init>
 7b4:	248407c0 	addiu	a0,a0,1984
 7b8:	24450800 	addiu	a1,v0,2048
 7bc:	30a5ffff 	andi	a1,a1,0xffff
 7c0:	0c000000 	jal	0 <BgHidanRock_Init>
 7c4:	02002025 	move	a0,s0
 7c8:	3c013f00 	lui	at,0x3f00
 7cc:	44818000 	mtc1	at,$f16
 7d0:	c60a016c 	lwc1	$f10,364(s0)
 7d4:	44801000 	mtc1	zero,$f2
 7d8:	46105481 	sub.s	$f18,$f10,$f16
 7dc:	e612016c 	swc1	$f18,364(s0)
 7e0:	c600016c 	lwc1	$f0,364(s0)
 7e4:	4602003c 	c.lt.s	$f0,$f2
 7e8:	00000000 	nop
 7ec:	45020004 	bc1fl	800 <func_8088B79C+0xe4>
 7f0:	e600016c 	swc1	$f0,364(s0)
 7f4:	10000002 	b	800 <func_8088B79C+0xe4>
 7f8:	e602016c 	swc1	$f2,364(s0)
 7fc:	e600016c 	swc1	$f0,364(s0)
 800:	920e0168 	lbu	t6,360(s0)
 804:	55c0001d 	bnezl	t6,87c <func_8088B79C+0x160>
 808:	8fbf001c 	lw	ra,28(sp)
 80c:	0c000000 	jal	0 <BgHidanRock_Init>
 810:	02002025 	move	a0,s0
 814:	1040000c 	beqz	v0,848 <func_8088B79C+0x12c>
 818:	00000000 	nop
 81c:	920f0169 	lbu	t7,361(s0)
 820:	24180003 	li	t8,3
 824:	55e00003 	bnezl	t7,834 <func_8088B79C+0x118>
 828:	8fb90024 	lw	t9,36(sp)
 82c:	a2180169 	sb	t8,361(s0)
 830:	8fb90024 	lw	t9,36(sp)
 834:	24050030 	li	a1,48
 838:	0c000000 	jal	0 <BgHidanRock_Init>
 83c:	8f240790 	lw	a0,1936(t9)
 840:	1000000e 	b	87c <func_8088B79C+0x160>
 844:	8fbf001c 	lw	ra,28(sp)
 848:	0c000000 	jal	0 <BgHidanRock_Init>
 84c:	02002025 	move	a0,s0
 850:	5440000a 	bnezl	v0,87c <func_8088B79C+0x160>
 854:	8fbf001c 	lw	ra,28(sp)
 858:	92080169 	lbu	t0,361(s0)
 85c:	8fa90024 	lw	t1,36(sp)
 860:	24050003 	li	a1,3
 864:	51000004 	beqzl	t0,878 <func_8088B79C+0x15c>
 868:	a2000169 	sb	zero,361(s0)
 86c:	0c000000 	jal	0 <BgHidanRock_Init>
 870:	8d240790 	lw	a0,1936(t1)
 874:	a2000169 	sb	zero,361(s0)
 878:	8fbf001c 	lw	ra,28(sp)
 87c:	8fb00018 	lw	s0,24(sp)
 880:	27bd0020 	addiu	sp,sp,32
 884:	03e00008 	jr	ra
 888:	00000000 	nop

0000088c <func_8088B90C>:
 88c:	27bdffe8 	addiu	sp,sp,-24
 890:	afbf0014 	sw	ra,20(sp)
 894:	afa5001c 	sw	a1,28(sp)
 898:	00803825 	move	a3,a0
 89c:	8ce5000c 	lw	a1,12(a3)
 8a0:	afa70018 	sw	a3,24(sp)
 8a4:	24840028 	addiu	a0,a0,40
 8a8:	0c000000 	jal	0 <BgHidanRock_Init>
 8ac:	3c063f80 	lui	a2,0x3f80
 8b0:	10400004 	beqz	v0,8c4 <func_8088B90C+0x38>
 8b4:	8fa70018 	lw	a3,24(sp)
 8b8:	3c0e0000 	lui	t6,0x0
 8bc:	25ce0000 	addiu	t6,t6,0
 8c0:	acee0164 	sw	t6,356(a3)
 8c4:	8fbf0014 	lw	ra,20(sp)
 8c8:	27bd0018 	addiu	sp,sp,24
 8cc:	03e00008 	jr	ra
 8d0:	00000000 	nop

000008d4 <func_8088B954>:
 8d4:	afa50004 	sw	a1,4(sp)
 8d8:	8482016a 	lh	v0,362(a0)
 8dc:	3c0f0000 	lui	t7,0x0
 8e0:	10400003 	beqz	v0,8f0 <func_8088B954+0x1c>
 8e4:	244effff 	addiu	t6,v0,-1
 8e8:	a48e016a 	sh	t6,362(a0)
 8ec:	8482016a 	lh	v0,362(a0)
 8f0:	14400005 	bnez	v0,908 <func_8088B954+0x34>
 8f4:	00000000 	nop
 8f8:	44802000 	mtc1	zero,$f4
 8fc:	25ef0000 	addiu	t7,t7,0
 900:	ac8f0164 	sw	t7,356(a0)
 904:	e4840060 	swc1	$f4,96(a0)
 908:	03e00008 	jr	ra
 90c:	00000000 	nop

00000910 <func_8088B990>:
 910:	27bdffd8 	addiu	sp,sp,-40
 914:	afbf0024 	sw	ra,36(sp)
 918:	afb00020 	sw	s0,32(sp)
 91c:	afa5002c 	sw	a1,44(sp)
 920:	44800000 	mtc1	zero,$f0
 924:	c4840150 	lwc1	$f4,336(a0)
 928:	848f016a 	lh	t7,362(a0)
 92c:	8ca21c44 	lw	v0,7236(a1)
 930:	46040032 	c.eq.s	$f0,$f4
 934:	25f80001 	addiu	t8,t7,1
 938:	00808025 	move	s0,a0
 93c:	a498016a 	sh	t8,362(a0)
 940:	45030007 	bc1tl	960 <func_8088B990+0x50>
 944:	92020168 	lbu	v0,360(s0)
 948:	e4800068 	swc1	$f0,104(a0)
 94c:	8c590680 	lw	t9,1664(v0)
 950:	2401ffef 	li	at,-17
 954:	03214024 	and	t0,t9,at
 958:	ac480680 	sw	t0,1664(v0)
 95c:	92020168 	lbu	v0,360(s0)
 960:	3c010000 	lui	at,0x0
 964:	14400013 	bnez	v0,9b4 <func_8088B990+0xa4>
 968:	00000000 	nop
 96c:	c606000c 	lwc1	$f6,12(s0)
 970:	c4280000 	lwc1	$f8,0(at)
 974:	3c013f00 	lui	at,0x3f00
 978:	44818000 	mtc1	at,$f16
 97c:	46083280 	add.s	$f10,$f6,$f8
 980:	26040028 	addiu	a0,s0,40
 984:	3c063e80 	lui	a2,0x3e80
 988:	3c0741a0 	lui	a3,0x41a0
 98c:	44055000 	mfc1	a1,$f10
 990:	0c000000 	jal	0 <BgHidanRock_Init>
 994:	e7b00010 	swc1	$f16,16(sp)
 998:	3c010000 	lui	at,0x0
 99c:	c4320000 	lwc1	$f18,0(at)
 9a0:	4612003c 	c.lt.s	$f0,$f18
 9a4:	00000000 	nop
 9a8:	4503001a 	bc1tl	a14 <func_8088B990+0x104>
 9ac:	92090168 	lbu	t1,360(s0)
 9b0:	92020168 	lbu	v0,360(s0)
 9b4:	10400021 	beqz	v0,a3c <func_8088B990+0x12c>
 9b8:	3c01407e 	lui	at,0x407e
 9bc:	c604000c 	lwc1	$f4,12(s0)
 9c0:	44814800 	mtc1	at,$f9
 9c4:	44804000 	mtc1	zero,$f8
 9c8:	460021a1 	cvt.d.s	$f6,$f4
 9cc:	3c013f00 	lui	at,0x3f00
 9d0:	46283280 	add.d	$f10,$f6,$f8
 9d4:	44819000 	mtc1	at,$f18
 9d8:	26040028 	addiu	a0,s0,40
 9dc:	3c063e80 	lui	a2,0x3e80
 9e0:	46205420 	cvt.s.d	$f16,$f10
 9e4:	3c0741a0 	lui	a3,0x41a0
 9e8:	e7b20010 	swc1	$f18,16(sp)
 9ec:	44058000 	mfc1	a1,$f16
 9f0:	0c000000 	jal	0 <BgHidanRock_Init>
 9f4:	00000000 	nop
 9f8:	3c010000 	lui	at,0x0
 9fc:	c4240000 	lwc1	$f4,0(at)
 a00:	4604003c 	c.lt.s	$f0,$f4
 a04:	00000000 	nop
 a08:	4502000d 	bc1fl	a40 <func_8088B990+0x130>
 a0c:	3c014248 	lui	at,0x4248
 a10:	92090168 	lbu	t1,360(s0)
 a14:	02002025 	move	a0,s0
 a18:	15200003 	bnez	t1,a28 <func_8088B990+0x118>
 a1c:	00000000 	nop
 a20:	0c000000 	jal	0 <BgHidanRock_Init>
 a24:	24052835 	li	a1,10293
 a28:	3c0b0000 	lui	t3,0x0
 a2c:	240a0014 	li	t2,20
 a30:	256b0000 	addiu	t3,t3,0
 a34:	a60a016a 	sh	t2,362(s0)
 a38:	ae0b0164 	sw	t3,356(s0)
 a3c:	3c014248 	lui	at,0x4248
 a40:	44814000 	mtc1	at,$f8
 a44:	c6060028 	lwc1	$f6,40(s0)
 a48:	c610000c 	lwc1	$f16,12(s0)
 a4c:	3c014220 	lui	at,0x4220
 a50:	46083280 	add.s	$f10,$f6,$f8
 a54:	44812000 	mtc1	at,$f4
 a58:	3c0142a0 	lui	at,0x42a0
 a5c:	44814000 	mtc1	at,$f8
 a60:	46105481 	sub.s	$f18,$f10,$f16
 a64:	920c0168 	lbu	t4,360(s0)
 a68:	46049180 	add.s	$f6,$f18,$f4
 a6c:	46083283 	div.s	$f10,$f6,$f8
 a70:	1580001c 	bnez	t4,ae4 <func_8088B990+0x1d4>
 a74:	e60a016c 	swc1	$f10,364(s0)
 a78:	0c000000 	jal	0 <BgHidanRock_Init>
 a7c:	02002025 	move	a0,s0
 a80:	1040000c 	beqz	v0,ab4 <func_8088B990+0x1a4>
 a84:	00000000 	nop
 a88:	920d0169 	lbu	t5,361(s0)
 a8c:	240e0003 	li	t6,3
 a90:	55a00003 	bnezl	t5,aa0 <func_8088B990+0x190>
 a94:	8faf002c 	lw	t7,44(sp)
 a98:	a20e0169 	sb	t6,361(s0)
 a9c:	8faf002c 	lw	t7,44(sp)
 aa0:	24050030 	li	a1,48
 aa4:	0c000000 	jal	0 <BgHidanRock_Init>
 aa8:	8de40790 	lw	a0,1936(t7)
 aac:	1000000e 	b	ae8 <func_8088B990+0x1d8>
 ab0:	8fbf0024 	lw	ra,36(sp)
 ab4:	0c000000 	jal	0 <BgHidanRock_Init>
 ab8:	02002025 	move	a0,s0
 abc:	5440000a 	bnezl	v0,ae8 <func_8088B990+0x1d8>
 ac0:	8fbf0024 	lw	ra,36(sp)
 ac4:	92180169 	lbu	t8,361(s0)
 ac8:	8fb9002c 	lw	t9,44(sp)
 acc:	24050003 	li	a1,3
 ad0:	53000004 	beqzl	t8,ae4 <func_8088B990+0x1d4>
 ad4:	a2000169 	sb	zero,361(s0)
 ad8:	0c000000 	jal	0 <BgHidanRock_Init>
 adc:	8f240790 	lw	a0,1936(t9)
 ae0:	a2000169 	sb	zero,361(s0)
 ae4:	8fbf0024 	lw	ra,36(sp)
 ae8:	8fb00020 	lw	s0,32(sp)
 aec:	27bd0028 	addiu	sp,sp,40
 af0:	03e00008 	jr	ra
 af4:	00000000 	nop

00000af8 <BgHidanRock_Update>:
 af8:	27bdffd8 	addiu	sp,sp,-40
 afc:	afb00020 	sw	s0,32(sp)
 b00:	00808025 	move	s0,a0
 b04:	afbf0024 	sw	ra,36(sp)
 b08:	afa5002c 	sw	a1,44(sp)
 b0c:	8e190164 	lw	t9,356(s0)
 b10:	0320f809 	jalr	t9
 b14:	00000000 	nop
 b18:	8e0f0164 	lw	t7,356(s0)
 b1c:	3c0e0000 	lui	t6,0x0
 b20:	25ce0000 	addiu	t6,t6,0
 b24:	55cf000d 	bnel	t6,t7,b5c <BgHidanRock_Update+0x64>
 b28:	c600016c 	lwc1	$f0,364(s0)
 b2c:	0c000000 	jal	0 <BgHidanRock_Init>
 b30:	02002025 	move	a0,s0
 b34:	44800000 	mtc1	zero,$f0
 b38:	24180004 	li	t8,4
 b3c:	afb80014 	sw	t8,20(sp)
 b40:	44060000 	mfc1	a2,$f0
 b44:	44070000 	mfc1	a3,$f0
 b48:	8fa4002c 	lw	a0,44(sp)
 b4c:	02002825 	move	a1,s0
 b50:	0c000000 	jal	0 <BgHidanRock_Init>
 b54:	e7a00010 	swc1	$f0,16(sp)
 b58:	c600016c 	lwc1	$f0,364(s0)
 b5c:	44802000 	mtc1	zero,$f4
 b60:	3c080000 	lui	t0,0x0
 b64:	4600203c 	c.lt.s	$f4,$f0
 b68:	00000000 	nop
 b6c:	45020010 	bc1fl	bb0 <BgHidanRock_Update+0xb8>
 b70:	8fbf0024 	lw	ra,36(sp)
 b74:	85080000 	lh	t0,0(t0)
 b78:	3c010001 	lui	at,0x1
 b7c:	34211e60 	ori	at,at,0x1e60
 b80:	44883000 	mtc1	t0,$f6
 b84:	2606017c 	addiu	a2,s0,380
 b88:	46803220 	cvt.s.w	$f8,$f6
 b8c:	46004282 	mul.s	$f10,$f8,$f0
 b90:	4600540d 	trunc.w.s	$f16,$f10
 b94:	440a8000 	mfc1	t2,$f16
 b98:	00000000 	nop
 b9c:	a60a01be 	sh	t2,446(s0)
 ba0:	8fa4002c 	lw	a0,44(sp)
 ba4:	0c000000 	jal	0 <BgHidanRock_Init>
 ba8:	00812821 	addu	a1,a0,at
 bac:	8fbf0024 	lw	ra,36(sp)
 bb0:	8fb00020 	lw	s0,32(sp)
 bb4:	27bd0028 	addiu	sp,sp,40
 bb8:	03e00008 	jr	ra
 bbc:	00000000 	nop

00000bc0 <func_8088BC40>:
 bc0:	27bdffa8 	addiu	sp,sp,-88
 bc4:	afbf001c 	sw	ra,28(sp)
 bc8:	afb00018 	sw	s0,24(sp)
 bcc:	afa40058 	sw	a0,88(sp)
 bd0:	afa5005c 	sw	a1,92(sp)
 bd4:	8c850000 	lw	a1,0(a0)
 bd8:	3c060000 	lui	a2,0x0
 bdc:	24c60000 	addiu	a2,a2,0
 be0:	27a40040 	addiu	a0,sp,64
 be4:	24070328 	li	a3,808
 be8:	0c000000 	jal	0 <BgHidanRock_Init>
 bec:	00a08025 	move	s0,a1
 bf0:	8e0402d0 	lw	a0,720(s0)
 bf4:	0c000000 	jal	0 <BgHidanRock_Init>
 bf8:	24050014 	li	a1,20
 bfc:	ae0202d0 	sw	v0,720(s0)
 c00:	244f0008 	addiu	t7,v0,8
 c04:	ae0f02d0 	sw	t7,720(s0)
 c08:	3c18fa00 	lui	t8,0xfa00
 c0c:	3c19ffff 	lui	t9,0xffff
 c10:	37390096 	ori	t9,t9,0x96
 c14:	37180001 	ori	t8,t8,0x1
 c18:	ac580000 	sw	t8,0(v0)
 c1c:	ac590004 	sw	t9,4(v0)
 c20:	8e0202d0 	lw	v0,720(s0)
 c24:	3c0aff00 	lui	t2,0xff00
 c28:	354a00ff 	ori	t2,t2,0xff
 c2c:	24480008 	addiu	t0,v0,8
 c30:	ae0802d0 	sw	t0,720(s0)
 c34:	3c09fb00 	lui	t1,0xfb00
 c38:	ac490000 	sw	t1,0(v0)
 c3c:	ac4a0004 	sw	t2,4(v0)
 c40:	8fa3005c 	lw	v1,92(sp)
 c44:	3c020000 	lui	v0,0x0
 c48:	24420000 	addiu	v0,v0,0
 c4c:	906b0168 	lbu	t3,360(v1)
 c50:	3c014220 	lui	at,0x4220
 c54:	00003825 	move	a3,zero
 c58:	5560000c 	bnezl	t3,c8c <func_8088BC40+0xcc>
 c5c:	c468000c 	lwc1	$f8,12(v1)
 c60:	3c014220 	lui	at,0x4220
 c64:	44813000 	mtc1	at,$f6
 c68:	c4440004 	lwc1	$f4,4(v0)
 c6c:	c44c0000 	lwc1	$f12,0(v0)
 c70:	8c460008 	lw	a2,8(v0)
 c74:	00003825 	move	a3,zero
 c78:	0c000000 	jal	0 <BgHidanRock_Init>
 c7c:	46062381 	sub.s	$f14,$f4,$f6
 c80:	10000008 	b	ca4 <func_8088BC40+0xe4>
 c84:	8fa20058 	lw	v0,88(sp)
 c88:	c468000c 	lwc1	$f8,12(v1)
 c8c:	44815000 	mtc1	at,$f10
 c90:	c46c0008 	lwc1	$f12,8(v1)
 c94:	8c660010 	lw	a2,16(v1)
 c98:	0c000000 	jal	0 <BgHidanRock_Init>
 c9c:	460a4381 	sub.s	$f14,$f8,$f10
 ca0:	8fa20058 	lw	v0,88(sp)
 ca4:	844c07a0 	lh	t4,1952(v0)
 ca8:	000c6880 	sll	t5,t4,0x2
 cac:	004d7021 	addu	t6,v0,t5
 cb0:	0c000000 	jal	0 <BgHidanRock_Init>
 cb4:	8dc40790 	lw	a0,1936(t6)
 cb8:	34018000 	li	at,0x8000
 cbc:	00412821 	addu	a1,v0,at
 cc0:	00052c00 	sll	a1,a1,0x10
 cc4:	00052c03 	sra	a1,a1,0x10
 cc8:	00002025 	move	a0,zero
 ccc:	00003025 	move	a2,zero
 cd0:	0c000000 	jal	0 <BgHidanRock_Init>
 cd4:	24070001 	li	a3,1
 cd8:	44807000 	mtc1	zero,$f14
 cdc:	3c01c128 	lui	at,0xc128
 ce0:	44816000 	mtc1	at,$f12
 ce4:	44067000 	mfc1	a2,$f14
 ce8:	0c000000 	jal	0 <BgHidanRock_Init>
 cec:	24070001 	li	a3,1
 cf0:	3c0140c0 	lui	at,0x40c0
 cf4:	44816000 	mtc1	at,$f12
 cf8:	8faf005c 	lw	t7,92(sp)
 cfc:	24070001 	li	a3,1
 d00:	44066000 	mfc1	a2,$f12
 d04:	0c000000 	jal	0 <BgHidanRock_Init>
 d08:	c5ee016c 	lwc1	$f14,364(t7)
 d0c:	8e0202d0 	lw	v0,720(s0)
 d10:	8fa70058 	lw	a3,88(sp)
 d14:	3c19db06 	lui	t9,0xdb06
 d18:	24580008 	addiu	t8,v0,8
 d1c:	ae1802d0 	sw	t8,720(s0)
 d20:	37390020 	ori	t9,t9,0x20
 d24:	3c080001 	lui	t0,0x1
 d28:	ac590000 	sw	t9,0(v0)
 d2c:	01074021 	addu	t0,t0,a3
 d30:	8d081de4 	lw	t0,7652(t0)
 d34:	3c040000 	lui	a0,0x0
 d38:	3c0f0000 	lui	t7,0x0
 d3c:	31090007 	andi	t1,t0,0x7
 d40:	00095080 	sll	t2,t1,0x2
 d44:	008a2021 	addu	a0,a0,t2
 d48:	8c840000 	lw	a0,0(a0)
 d4c:	3c0100ff 	lui	at,0xff
 d50:	3421ffff 	ori	at,at,0xffff
 d54:	00046100 	sll	t4,a0,0x4
 d58:	000c6f02 	srl	t5,t4,0x1c
 d5c:	000d7080 	sll	t6,t5,0x2
 d60:	01ee7821 	addu	t7,t7,t6
 d64:	8def0000 	lw	t7,0(t7)
 d68:	00815824 	and	t3,a0,at
 d6c:	3c018000 	lui	at,0x8000
 d70:	016fc021 	addu	t8,t3,t7
 d74:	0301c821 	addu	t9,t8,at
 d78:	ac590004 	sw	t9,4(v0)
 d7c:	8e0202d0 	lw	v0,720(s0)
 d80:	3c09da38 	lui	t1,0xda38
 d84:	35290003 	ori	t1,t1,0x3
 d88:	24480008 	addiu	t0,v0,8
 d8c:	ae0802d0 	sw	t0,720(s0)
 d90:	ac490000 	sw	t1,0(v0)
 d94:	3c050000 	lui	a1,0x0
 d98:	8ce40000 	lw	a0,0(a3)
 d9c:	24a50000 	addiu	a1,a1,0
 da0:	24060355 	li	a2,853
 da4:	0c000000 	jal	0 <BgHidanRock_Init>
 da8:	afa20030 	sw	v0,48(sp)
 dac:	8fa30030 	lw	v1,48(sp)
 db0:	3c0d0601 	lui	t5,0x601
 db4:	25adca10 	addiu	t5,t5,-13808
 db8:	ac620004 	sw	v0,4(v1)
 dbc:	8e0202d0 	lw	v0,720(s0)
 dc0:	3c0cde00 	lui	t4,0xde00
 dc4:	3c060000 	lui	a2,0x0
 dc8:	244a0008 	addiu	t2,v0,8
 dcc:	ae0a02d0 	sw	t2,720(s0)
 dd0:	ac4d0004 	sw	t5,4(v0)
 dd4:	ac4c0000 	sw	t4,0(v0)
 dd8:	8fae0058 	lw	t6,88(sp)
 ddc:	24c60000 	addiu	a2,a2,0
 de0:	27a40040 	addiu	a0,sp,64
 de4:	24070359 	li	a3,857
 de8:	0c000000 	jal	0 <BgHidanRock_Init>
 dec:	8dc50000 	lw	a1,0(t6)
 df0:	8fbf001c 	lw	ra,28(sp)
 df4:	8fb00018 	lw	s0,24(sp)
 df8:	27bd0058 	addiu	sp,sp,88
 dfc:	03e00008 	jr	ra
 e00:	00000000 	nop

00000e04 <BgHidanRock_Draw>:
 e04:	27bdffd0 	addiu	sp,sp,-48
 e08:	afbf001c 	sw	ra,28(sp)
 e0c:	afb10018 	sw	s1,24(sp)
 e10:	afb00014 	sw	s0,20(sp)
 e14:	908e0168 	lbu	t6,360(a0)
 e18:	00808025 	move	s0,a0
 e1c:	00a08825 	move	s1,a1
 e20:	15c00007 	bnez	t6,e40 <BgHidanRock_Draw+0x3c>
 e24:	02202025 	move	a0,s1
 e28:	00a02025 	move	a0,a1
 e2c:	3c050601 	lui	a1,0x601
 e30:	0c000000 	jal	0 <BgHidanRock_Init>
 e34:	24a5c100 	addiu	a1,a1,-16128
 e38:	10000005 	b	e50 <BgHidanRock_Draw+0x4c>
 e3c:	44802000 	mtc1	zero,$f4
 e40:	3c050601 	lui	a1,0x601
 e44:	0c000000 	jal	0 <BgHidanRock_Init>
 e48:	24a5c1f0 	addiu	a1,a1,-15888
 e4c:	44802000 	mtc1	zero,$f4
 e50:	c606016c 	lwc1	$f6,364(s0)
 e54:	4606203c 	c.lt.s	$f4,$f6
 e58:	00000000 	nop
 e5c:	4502001c 	bc1fl	ed0 <BgHidanRock_Draw+0xcc>
 e60:	8fbf001c 	lw	ra,28(sp)
 e64:	920f0168 	lbu	t7,360(s0)
 e68:	3c010001 	lui	at,0x1
 e6c:	34211d60 	ori	at,at,0x1d60
 e70:	15e0000b 	bnez	t7,ea0 <BgHidanRock_Draw+0x9c>
 e74:	02212021 	addu	a0,s1,at
 e78:	3c010001 	lui	at,0x1
 e7c:	34211d60 	ori	at,at,0x1d60
 e80:	3c050000 	lui	a1,0x0
 e84:	26060170 	addiu	a2,s0,368
 e88:	afa60024 	sw	a2,36(sp)
 e8c:	24a50000 	addiu	a1,a1,0
 e90:	0c000000 	jal	0 <BgHidanRock_Init>
 e94:	02212021 	addu	a0,s1,at
 e98:	10000006 	b	eb4 <BgHidanRock_Draw+0xb0>
 e9c:	8fa60024 	lw	a2,36(sp)
 ea0:	26060170 	addiu	a2,s0,368
 ea4:	afa60024 	sw	a2,36(sp)
 ea8:	0c000000 	jal	0 <BgHidanRock_Init>
 eac:	26050008 	addiu	a1,s0,8
 eb0:	8fa60024 	lw	a2,36(sp)
 eb4:	00c02025 	move	a0,a2
 eb8:	0c000000 	jal	0 <BgHidanRock_Init>
 ebc:	24052033 	li	a1,8243
 ec0:	02202025 	move	a0,s1
 ec4:	0c000000 	jal	0 <BgHidanRock_Init>
 ec8:	02002825 	move	a1,s0
 ecc:	8fbf001c 	lw	ra,28(sp)
 ed0:	8fb00014 	lw	s0,20(sp)
 ed4:	8fb10018 	lw	s1,24(sp)
 ed8:	03e00008 	jr	ra
 edc:	27bd0030 	addiu	sp,sp,48
