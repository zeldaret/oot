
build/src/overlays/actors/ovl_Bg_Mizu_Shutter/z_bg_mizu_shutter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMizuShutter_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afa50044 	sw	a1,68(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <BgMizuShutter_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	960e001c 	lhu	t6,28(s0)
  28:	3c080000 	lui	t0,0x0
  2c:	02002025 	move	a0,s0
  30:	000e7b03 	sra	t7,t6,0xc
  34:	31f8000f 	andi	t8,t7,0xf
  38:	0018c880 	sll	t9,t8,0x2
  3c:	01194021 	addu	t0,t0,t9
  40:	8d080000 	lw	t0,0(t0)
  44:	24050001 	li	a1,1
  48:	0c000000 	jal	0 <BgMizuShutter_Init>
  4c:	ae080170 	sw	t0,368(s0)
  50:	9609001c 	lhu	t1,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	27a50030 	addiu	a1,sp,48
  5c:	00095303 	sra	t2,t1,0xc
  60:	314b000f 	andi	t3,t2,0xf
  64:	000b6080 	sll	t4,t3,0x2
  68:	008c2021 	addu	a0,a0,t4
  6c:	0c000000 	jal	0 <BgMizuShutter_Init>
  70:	8c840000 	lw	a0,0(a0)
  74:	8fa40044 	lw	a0,68(sp)
  78:	02003025 	move	a2,s0
  7c:	8fa70030 	lw	a3,48(sp)
  80:	0c000000 	jal	0 <BgMizuShutter_Init>
  84:	24850810 	addiu	a1,a0,2064
  88:	9603001c 	lhu	v1,28(s0)
  8c:	ae02014c 	sw	v0,332(s0)
  90:	24010001 	li	at,1
  94:	00031b03 	sra	v1,v1,0xc
  98:	3063000f 	andi	v1,v1,0xf
  9c:	10600003 	beqz	v1,ac <BgMizuShutter_Init+0xac>
  a0:	26020024 	addiu	v0,s0,36
  a4:	54610069 	bnel	v1,at,24c <BgMizuShutter_Init+0x24c>
  a8:	8fbf001c 	lw	ra,28(sp)
  ac:	8c4e0000 	lw	t6,0(v0)
  b0:	26030178 	addiu	v1,s0,376
  b4:	3c010000 	lui	at,0x0
  b8:	ac6e0000 	sw	t6,0(v1)
  bc:	8c4d0004 	lw	t5,4(v0)
  c0:	00002825 	move	a1,zero
  c4:	ac6d0004 	sw	t5,4(v1)
  c8:	8c4e0008 	lw	t6,8(v0)
  cc:	ac6e0008 	sw	t6,8(v1)
  d0:	960f001c 	lhu	t7,28(s0)
  d4:	86090032 	lh	t1,50(s0)
  d8:	ae000168 	sw	zero,360(s0)
  dc:	000fc183 	sra	t8,t7,0x6
  e0:	44892000 	mtc1	t1,$f4
  e4:	3319003f 	andi	t9,t8,0x3f
  e8:	00194080 	sll	t0,t9,0x2
  ec:	468021a0 	cvt.s.w	$f6,$f4
  f0:	01194021 	addu	t0,t0,t9
  f4:	00084080 	sll	t0,t0,0x2
  f8:	ae08016c 	sw	t0,364(s0)
  fc:	c4280000 	lwc1	$f8,0(at)
 100:	afa30020 	sw	v1,32(sp)
 104:	afa20028 	sw	v0,40(sp)
 108:	46083302 	mul.s	$f12,$f6,$f8
 10c:	0c000000 	jal	0 <BgMizuShutter_Init>
 110:	00000000 	nop
 114:	860a0030 	lh	t2,48(s0)
 118:	3c010000 	lui	at,0x0
 11c:	c4320000 	lwc1	$f18,0(at)
 120:	448a5000 	mtc1	t2,$f10
 124:	24050001 	li	a1,1
 128:	46805420 	cvt.s.w	$f16,$f10
 12c:	46128302 	mul.s	$f12,$f16,$f18
 130:	0c000000 	jal	0 <BgMizuShutter_Init>
 134:	00000000 	nop
 138:	860b0034 	lh	t3,52(s0)
 13c:	3c010000 	lui	at,0x0
 140:	c4280000 	lwc1	$f8,0(at)
 144:	448b2000 	mtc1	t3,$f4
 148:	24050001 	li	a1,1
 14c:	468021a0 	cvt.s.w	$f6,$f4
 150:	46083302 	mul.s	$f12,$f6,$f8
 154:	0c000000 	jal	0 <BgMizuShutter_Init>
 158:	00000000 	nop
 15c:	960c001c 	lhu	t4,28(s0)
 160:	3c180000 	lui	t8,0x0
 164:	27180000 	addiu	t8,t8,0
 168:	000c6b03 	sra	t5,t4,0xc
 16c:	31ae000f 	andi	t6,t5,0xf
 170:	000e7880 	sll	t7,t6,0x2
 174:	01ee7823 	subu	t7,t7,t6
 178:	000f7880 	sll	t7,t7,0x2
 17c:	26050184 	addiu	a1,s0,388
 180:	afa50024 	sw	a1,36(sp)
 184:	0c000000 	jal	0 <BgMizuShutter_Init>
 188:	01f82021 	addu	a0,t7,t8
 18c:	c60a0184 	lwc1	$f10,388(s0)
 190:	c6100024 	lwc1	$f16,36(s0)
 194:	c6040188 	lwc1	$f4,392(s0)
 198:	c6060028 	lwc1	$f6,40(s0)
 19c:	46105480 	add.s	$f18,$f10,$f16
 1a0:	c610002c 	lwc1	$f16,44(s0)
 1a4:	c60a018c 	lwc1	$f10,396(s0)
 1a8:	46062200 	add.s	$f8,$f4,$f6
 1ac:	e6120184 	swc1	$f18,388(s0)
 1b0:	8e19016c 	lw	t9,364(s0)
 1b4:	46105480 	add.s	$f18,$f10,$f16
 1b8:	240104ec 	li	at,1260
 1bc:	e6080188 	swc1	$f8,392(s0)
 1c0:	1321000d 	beq	t9,at,1f8 <BgMizuShutter_Init+0x1f8>
 1c4:	e612018c 	swc1	$f18,396(s0)
 1c8:	9605001c 	lhu	a1,28(s0)
 1cc:	8fa40044 	lw	a0,68(sp)
 1d0:	0c000000 	jal	0 <BgMizuShutter_Init>
 1d4:	30a5003f 	andi	a1,a1,0x3f
 1d8:	8fa90020 	lw	t1,32(sp)
 1dc:	8fa80028 	lw	t0,40(sp)
 1e0:	8d2b0000 	lw	t3,0(t1)
 1e4:	ad0b0000 	sw	t3,0(t0)
 1e8:	8d2a0004 	lw	t2,4(t1)
 1ec:	ad0a0004 	sw	t2,4(t0)
 1f0:	8d2b0008 	lw	t3,8(t1)
 1f4:	ad0b0008 	sw	t3,8(t0)
 1f8:	9605001c 	lhu	a1,28(s0)
 1fc:	8fa40044 	lw	a0,68(sp)
 200:	0c000000 	jal	0 <BgMizuShutter_Init>
 204:	30a5003f 	andi	a1,a1,0x3f
 208:	1040000d 	beqz	v0,240 <BgMizuShutter_Init+0x240>
 20c:	3c190000 	lui	t9,0x0
 210:	8fad0024 	lw	t5,36(sp)
 214:	8fac0028 	lw	t4,40(sp)
 218:	3c180000 	lui	t8,0x0
 21c:	8daf0000 	lw	t7,0(t5)
 220:	27180000 	addiu	t8,t8,0
 224:	ad8f0000 	sw	t7,0(t4)
 228:	8dae0004 	lw	t6,4(t5)
 22c:	ad8e0004 	sw	t6,4(t4)
 230:	8daf0008 	lw	t7,8(t5)
 234:	ad8f0008 	sw	t7,8(t4)
 238:	10000003 	b	248 <BgMizuShutter_Init+0x248>
 23c:	ae180164 	sw	t8,356(s0)
 240:	27390000 	addiu	t9,t9,0
 244:	ae190164 	sw	t9,356(s0)
 248:	8fbf001c 	lw	ra,28(sp)
 24c:	8fb00018 	lw	s0,24(sp)
 250:	27bd0040 	addiu	sp,sp,64
 254:	03e00008 	jr	ra
 258:	00000000 	nop

0000025c <BgMizuShutter_Destroy>:
 25c:	27bdffe8 	addiu	sp,sp,-24
 260:	afa40018 	sw	a0,24(sp)
 264:	8fae0018 	lw	t6,24(sp)
 268:	afbf0014 	sw	ra,20(sp)
 26c:	00a02025 	move	a0,a1
 270:	24a50810 	addiu	a1,a1,2064
 274:	0c000000 	jal	0 <BgMizuShutter_Init>
 278:	8dc6014c 	lw	a2,332(t6)
 27c:	8fbf0014 	lw	ra,20(sp)
 280:	27bd0018 	addiu	sp,sp,24
 284:	03e00008 	jr	ra
 288:	00000000 	nop

0000028c <func_8089F0DC>:
 28c:	27bdffd8 	addiu	sp,sp,-40
 290:	afb00020 	sw	s0,32(sp)
 294:	00808025 	move	s0,a0
 298:	afbf0024 	sw	ra,36(sp)
 29c:	afa5002c 	sw	a1,44(sp)
 2a0:	00a02025 	move	a0,a1
 2a4:	9605001c 	lhu	a1,28(s0)
 2a8:	0c000000 	jal	0 <BgMizuShutter_Init>
 2ac:	30a5003f 	andi	a1,a1,0x3f
 2b0:	10400016 	beqz	v0,30c <func_8089F0DC+0x80>
 2b4:	8fa4002c 	lw	a0,44(sp)
 2b8:	86020030 	lh	v0,48(s0)
 2bc:	2405119e 	li	a1,4510
 2c0:	2406ff9d 	li	a2,-99
 2c4:	04400003 	bltz	v0,2d4 <func_8089F0DC+0x48>
 2c8:	00021823 	negu	v1,v0
 2cc:	10000001 	b	2d4 <func_8089F0DC+0x48>
 2d0:	00401825 	move	v1,v0
 2d4:	28612c61 	slti	at,v1,11361
 2d8:	14200005 	bnez	at,2f0 <func_8089F0DC+0x64>
 2dc:	02003825 	move	a3,s0
 2e0:	0c000000 	jal	0 <BgMizuShutter_Init>
 2e4:	afa00010 	sw	zero,16(sp)
 2e8:	10000003 	b	2f8 <func_8089F0DC+0x6c>
 2ec:	00000000 	nop
 2f0:	0c000000 	jal	0 <BgMizuShutter_Init>
 2f4:	02002825 	move	a1,s0
 2f8:	3c0e0000 	lui	t6,0x0
 2fc:	25ce0000 	addiu	t6,t6,0
 300:	240f001e 	li	t7,30
 304:	ae0e0164 	sw	t6,356(s0)
 308:	ae0f0168 	sw	t7,360(s0)
 30c:	8fbf0024 	lw	ra,36(sp)
 310:	8fb00020 	lw	s0,32(sp)
 314:	27bd0028 	addiu	sp,sp,40
 318:	03e00008 	jr	ra
 31c:	00000000 	nop

00000320 <func_8089F170>:
 320:	27bdffe8 	addiu	sp,sp,-24
 324:	afbf0014 	sw	ra,20(sp)
 328:	afa5001c 	sw	a1,28(sp)
 32c:	8c820168 	lw	v0,360(a0)
 330:	24052859 	li	a1,10329
 334:	2c430001 	sltiu	v1,v0,1
 338:	244effff 	addiu	t6,v0,-1
 33c:	10600007 	beqz	v1,35c <func_8089F170+0x3c>
 340:	ac8e0168 	sw	t6,360(a0)
 344:	0c000000 	jal	0 <BgMizuShutter_Init>
 348:	afa40018 	sw	a0,24(sp)
 34c:	8fa40018 	lw	a0,24(sp)
 350:	3c0f0000 	lui	t7,0x0
 354:	25ef0000 	addiu	t7,t7,0
 358:	ac8f0164 	sw	t7,356(a0)
 35c:	8fbf0014 	lw	ra,20(sp)
 360:	27bd0018 	addiu	sp,sp,24
 364:	03e00008 	jr	ra
 368:	00000000 	nop

0000036c <func_8089F1BC>:
 36c:	27bdffd8 	addiu	sp,sp,-40
 370:	afb00020 	sw	s0,32(sp)
 374:	00808025 	move	s0,a0
 378:	afbf0024 	sw	ra,36(sp)
 37c:	00a02025 	move	a0,a1
 380:	9605001c 	lhu	a1,28(s0)
 384:	0c000000 	jal	0 <BgMizuShutter_Init>
 388:	30a5003f 	andi	a1,a1,0x3f
 38c:	10400031 	beqz	v0,454 <func_8089F1BC+0xe8>
 390:	26040174 	addiu	a0,s0,372
 394:	3c010000 	lui	at,0x0
 398:	c4240000 	lwc1	$f4,0(at)
 39c:	8e050184 	lw	a1,388(s0)
 3a0:	26040024 	addiu	a0,s0,36
 3a4:	3c063f80 	lui	a2,0x3f80
 3a8:	3c074080 	lui	a3,0x4080
 3ac:	0c000000 	jal	0 <BgMizuShutter_Init>
 3b0:	e7a40010 	swc1	$f4,16(sp)
 3b4:	3c010000 	lui	at,0x0
 3b8:	c4260000 	lwc1	$f6,0(at)
 3bc:	8e050188 	lw	a1,392(s0)
 3c0:	26040028 	addiu	a0,s0,40
 3c4:	3c063f80 	lui	a2,0x3f80
 3c8:	3c074080 	lui	a3,0x4080
 3cc:	0c000000 	jal	0 <BgMizuShutter_Init>
 3d0:	e7a60010 	swc1	$f6,16(sp)
 3d4:	3c010000 	lui	at,0x0
 3d8:	c4280000 	lwc1	$f8,0(at)
 3dc:	8e05018c 	lw	a1,396(s0)
 3e0:	2604002c 	addiu	a0,s0,44
 3e4:	3c063f80 	lui	a2,0x3f80
 3e8:	3c074080 	lui	a3,0x4080
 3ec:	0c000000 	jal	0 <BgMizuShutter_Init>
 3f0:	e7a80010 	swc1	$f8,16(sp)
 3f4:	c60a0184 	lwc1	$f10,388(s0)
 3f8:	c6100024 	lwc1	$f16,36(s0)
 3fc:	46105032 	c.eq.s	$f10,$f16
 400:	00000000 	nop
 404:	4502004f 	bc1fl	544 <func_8089F1BC+0x1d8>
 408:	8fbf0024 	lw	ra,36(sp)
 40c:	c6120188 	lwc1	$f18,392(s0)
 410:	c6040028 	lwc1	$f4,40(s0)
 414:	46049032 	c.eq.s	$f18,$f4
 418:	00000000 	nop
 41c:	45020049 	bc1fl	544 <func_8089F1BC+0x1d8>
 420:	8fbf0024 	lw	ra,36(sp)
 424:	c606018c 	lwc1	$f6,396(s0)
 428:	c608002c 	lwc1	$f8,44(s0)
 42c:	3c0f0000 	lui	t7,0x0
 430:	25ef0000 	addiu	t7,t7,0
 434:	46083032 	c.eq.s	$f6,$f8
 438:	00000000 	nop
 43c:	45020041 	bc1fl	544 <func_8089F1BC+0x1d8>
 440:	8fbf0024 	lw	ra,36(sp)
 444:	8e0e016c 	lw	t6,364(s0)
 448:	ae0f0164 	sw	t7,356(s0)
 44c:	1000003c 	b	540 <func_8089F1BC+0x1d4>
 450:	ae0e0168 	sw	t6,360(s0)
 454:	3c010000 	lui	at,0x0
 458:	c42a0000 	lwc1	$f10,0(at)
 45c:	3c0541a0 	lui	a1,0x41a0
 460:	3c063f80 	lui	a2,0x3f80
 464:	3c074040 	lui	a3,0x4040
 468:	0c000000 	jal	0 <BgMizuShutter_Init>
 46c:	e7aa0010 	swc1	$f10,16(sp)
 470:	3c010000 	lui	at,0x0
 474:	c4300000 	lwc1	$f16,0(at)
 478:	8e050178 	lw	a1,376(s0)
 47c:	8e070174 	lw	a3,372(s0)
 480:	26040024 	addiu	a0,s0,36
 484:	3c063f80 	lui	a2,0x3f80
 488:	0c000000 	jal	0 <BgMizuShutter_Init>
 48c:	e7b00010 	swc1	$f16,16(sp)
 490:	3c010000 	lui	at,0x0
 494:	c4320000 	lwc1	$f18,0(at)
 498:	8e05017c 	lw	a1,380(s0)
 49c:	8e070174 	lw	a3,372(s0)
 4a0:	26040028 	addiu	a0,s0,40
 4a4:	3c063f80 	lui	a2,0x3f80
 4a8:	0c000000 	jal	0 <BgMizuShutter_Init>
 4ac:	e7b20010 	swc1	$f18,16(sp)
 4b0:	3c010000 	lui	at,0x0
 4b4:	c4240000 	lwc1	$f4,0(at)
 4b8:	8e050180 	lw	a1,384(s0)
 4bc:	8e070174 	lw	a3,372(s0)
 4c0:	2604002c 	addiu	a0,s0,44
 4c4:	3c063f80 	lui	a2,0x3f80
 4c8:	0c000000 	jal	0 <BgMizuShutter_Init>
 4cc:	e7a40010 	swc1	$f4,16(sp)
 4d0:	c6060178 	lwc1	$f6,376(s0)
 4d4:	c6080024 	lwc1	$f8,36(s0)
 4d8:	46083032 	c.eq.s	$f6,$f8
 4dc:	00000000 	nop
 4e0:	45020018 	bc1fl	544 <func_8089F1BC+0x1d8>
 4e4:	8fbf0024 	lw	ra,36(sp)
 4e8:	c60a017c 	lwc1	$f10,380(s0)
 4ec:	c6100028 	lwc1	$f16,40(s0)
 4f0:	46105032 	c.eq.s	$f10,$f16
 4f4:	00000000 	nop
 4f8:	45020012 	bc1fl	544 <func_8089F1BC+0x1d8>
 4fc:	8fbf0024 	lw	ra,36(sp)
 500:	c6120180 	lwc1	$f18,384(s0)
 504:	c604002c 	lwc1	$f4,44(s0)
 508:	24050078 	li	a1,120
 50c:	24060014 	li	a2,20
 510:	46049032 	c.eq.s	$f18,$f4
 514:	2407000a 	li	a3,10
 518:	4502000a 	bc1fl	544 <func_8089F1BC+0x1d8>
 51c:	8fbf0024 	lw	ra,36(sp)
 520:	0c000000 	jal	0 <BgMizuShutter_Init>
 524:	c60c008c 	lwc1	$f12,140(s0)
 528:	02002025 	move	a0,s0
 52c:	0c000000 	jal	0 <BgMizuShutter_Init>
 530:	2405281d 	li	a1,10269
 534:	3c180000 	lui	t8,0x0
 538:	27180000 	addiu	t8,t8,0
 53c:	ae180164 	sw	t8,356(s0)
 540:	8fbf0024 	lw	ra,36(sp)
 544:	8fb00020 	lw	s0,32(sp)
 548:	27bd0028 	addiu	sp,sp,40
 54c:	03e00008 	jr	ra
 550:	00000000 	nop

00000554 <func_8089F3A4>:
 554:	27bdffe0 	addiu	sp,sp,-32
 558:	afbf001c 	sw	ra,28(sp)
 55c:	afb00018 	sw	s0,24(sp)
 560:	afa50024 	sw	a1,36(sp)
 564:	8c8e016c 	lw	t6,364(a0)
 568:	240104ec 	li	at,1260
 56c:	00808025 	move	s0,a0
 570:	51c10014 	beql	t6,at,5c4 <func_8089F3A4+0x70>
 574:	8fbf001c 	lw	ra,28(sp)
 578:	8c8f0168 	lw	t7,360(a0)
 57c:	25f8ffff 	addiu	t8,t7,-1
 580:	ac980168 	sw	t8,360(a0)
 584:	0c000000 	jal	0 <BgMizuShutter_Init>
 588:	8e050168 	lw	a1,360(s0)
 58c:	8e190168 	lw	t9,360(s0)
 590:	02002025 	move	a0,s0
 594:	5720000b 	bnezl	t9,5c4 <func_8089F3A4+0x70>
 598:	8fbf001c 	lw	ra,28(sp)
 59c:	0c000000 	jal	0 <BgMizuShutter_Init>
 5a0:	2405285a 	li	a1,10330
 5a4:	9605001c 	lhu	a1,28(s0)
 5a8:	8fa40024 	lw	a0,36(sp)
 5ac:	0c000000 	jal	0 <BgMizuShutter_Init>
 5b0:	30a5003f 	andi	a1,a1,0x3f
 5b4:	3c080000 	lui	t0,0x0
 5b8:	25080000 	addiu	t0,t0,0
 5bc:	ae080164 	sw	t0,356(s0)
 5c0:	8fbf001c 	lw	ra,28(sp)
 5c4:	8fb00018 	lw	s0,24(sp)
 5c8:	27bd0020 	addiu	sp,sp,32
 5cc:	03e00008 	jr	ra
 5d0:	00000000 	nop

000005d4 <BgMizuShutter_Update>:
 5d4:	27bdffe8 	addiu	sp,sp,-24
 5d8:	afbf0014 	sw	ra,20(sp)
 5dc:	8c990164 	lw	t9,356(a0)
 5e0:	0320f809 	jalr	t9
 5e4:	00000000 	nop
 5e8:	8fbf0014 	lw	ra,20(sp)
 5ec:	27bd0018 	addiu	sp,sp,24
 5f0:	03e00008 	jr	ra
 5f4:	00000000 	nop

000005f8 <BgMizuShutter_Draw>:
 5f8:	27bdffb8 	addiu	sp,sp,-72
 5fc:	afbf001c 	sw	ra,28(sp)
 600:	afb00018 	sw	s0,24(sp)
 604:	afa40048 	sw	a0,72(sp)
 608:	afa5004c 	sw	a1,76(sp)
 60c:	8ca50000 	lw	a1,0(a1)
 610:	3c060000 	lui	a2,0x0
 614:	24c60000 	addiu	a2,a2,0
 618:	27a4002c 	addiu	a0,sp,44
 61c:	2407019a 	li	a3,410
 620:	0c000000 	jal	0 <BgMizuShutter_Init>
 624:	00a08025 	move	s0,a1
 628:	8faf004c 	lw	t7,76(sp)
 62c:	0c000000 	jal	0 <BgMizuShutter_Init>
 630:	8de40000 	lw	a0,0(t7)
 634:	8e0202c0 	lw	v0,704(s0)
 638:	3c19da38 	lui	t9,0xda38
 63c:	37390003 	ori	t9,t9,0x3
 640:	24580008 	addiu	t8,v0,8
 644:	ae1802c0 	sw	t8,704(s0)
 648:	ac590000 	sw	t9,0(v0)
 64c:	8fa8004c 	lw	t0,76(sp)
 650:	3c050000 	lui	a1,0x0
 654:	24a50000 	addiu	a1,a1,0
 658:	8d040000 	lw	a0,0(t0)
 65c:	2406019f 	li	a2,415
 660:	0c000000 	jal	0 <BgMizuShutter_Init>
 664:	afa20028 	sw	v0,40(sp)
 668:	8fa30028 	lw	v1,40(sp)
 66c:	3c060000 	lui	a2,0x0
 670:	24c60000 	addiu	a2,a2,0
 674:	ac620004 	sw	v0,4(v1)
 678:	8fa40048 	lw	a0,72(sp)
 67c:	240701a6 	li	a3,422
 680:	8c890170 	lw	t1,368(a0)
 684:	51200009 	beqzl	t1,6ac <BgMizuShutter_Draw+0xb4>
 688:	8fad004c 	lw	t5,76(sp)
 68c:	8e0202c0 	lw	v0,704(s0)
 690:	3c0bde00 	lui	t3,0xde00
 694:	244a0008 	addiu	t2,v0,8
 698:	ae0a02c0 	sw	t2,704(s0)
 69c:	ac4b0000 	sw	t3,0(v0)
 6a0:	8c8c0170 	lw	t4,368(a0)
 6a4:	ac4c0004 	sw	t4,4(v0)
 6a8:	8fad004c 	lw	t5,76(sp)
 6ac:	27a4002c 	addiu	a0,sp,44
 6b0:	0c000000 	jal	0 <BgMizuShutter_Init>
 6b4:	8da50000 	lw	a1,0(t5)
 6b8:	8fbf001c 	lw	ra,28(sp)
 6bc:	8fb00018 	lw	s0,24(sp)
 6c0:	27bd0048 	addiu	sp,sp,72
 6c4:	03e00008 	jr	ra
 6c8:	00000000 	nop
 6cc:	00000000 	nop
