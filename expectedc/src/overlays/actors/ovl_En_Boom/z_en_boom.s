
build/src/overlays/actors/ovl_En_Boom/z_en_boom.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBoom_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac8501f8 	sw	a1,504(a0)

00000008 <EnBoom_Init>:
   8:	27bdfe30 	addiu	sp,sp,-464
   c:	afa501d4 	sw	a1,468(sp)
  10:	afbf0024 	sw	ra,36(sp)
  14:	afb00020 	sw	s0,32(sp)
  18:	240effff 	li	t6,-1
  1c:	3c050000 	lui	a1,0x0
  20:	00808025 	move	s0,a0
  24:	a08e0003 	sb	t6,3(a0)
  28:	0c000000 	jal	0 <EnBoom_SetupAction>
  2c:	24a50070 	addiu	a1,a1,112
  30:	240f00ff 	li	t7,255
  34:	24190064 	li	t9,100
  38:	240800ff 	li	t0,255
  3c:	240900ff 	li	t1,255
  40:	240a00ff 	li	t2,255
  44:	a3af01b0 	sb	t7,432(sp)
  48:	a3b901b2 	sb	t9,434(sp)
  4c:	a3a801b3 	sb	t0,435(sp)
  50:	a3a901b4 	sb	t1,436(sp)
  54:	a3aa01b5 	sb	t2,437(sp)
  58:	241800ff 	li	t8,255
  5c:	240b0064 	li	t3,100
  60:	240c0040 	li	t4,64
  64:	240d00ff 	li	t5,255
  68:	240e00ff 	li	t6,255
  6c:	240f0064 	li	t7,100
  70:	241900ff 	li	t9,255
  74:	24080064 	li	t0,100
  78:	24090008 	li	t1,8
  7c:	27aa002c 	addiu	t2,sp,44
  80:	a3b801b1 	sb	t8,433(sp)
  84:	a3ab01b6 	sb	t3,438(sp)
  88:	a3ac01b7 	sb	t4,439(sp)
  8c:	a3ad01b8 	sb	t5,440(sp)
  90:	a3ae01b9 	sb	t6,441(sp)
  94:	a3af01ba 	sb	t7,442(sp)
  98:	a3a001bb 	sb	zero,443(sp)
  9c:	a3b801bc 	sb	t8,444(sp)
  a0:	a3b901bd 	sb	t9,445(sp)
  a4:	a3a801be 	sb	t0,446(sp)
  a8:	a3a001bf 	sb	zero,447(sp)
  ac:	afa901c0 	sw	t1,448(sp)
  b0:	afa001c4 	sw	zero,452(sp)
  b4:	afa001c8 	sw	zero,456(sp)
  b8:	afaa0014 	sw	t2,20(sp)
  bc:	8fa401d4 	lw	a0,468(sp)
  c0:	260501d8 	addiu	a1,s0,472
  c4:	24060001 	li	a2,1
  c8:	00003825 	move	a3,zero
  cc:	0c000000 	jal	0 <EnBoom_SetupAction>
  d0:	afa00010 	sw	zero,16(sp)
  d4:	2605014c 	addiu	a1,s0,332
  d8:	afa50028 	sw	a1,40(sp)
  dc:	0c000000 	jal	0 <EnBoom_SetupAction>
  e0:	8fa401d4 	lw	a0,468(sp)
  e4:	3c070000 	lui	a3,0x0
  e8:	8fa50028 	lw	a1,40(sp)
  ec:	24e70020 	addiu	a3,a3,32
  f0:	8fa401d4 	lw	a0,468(sp)
  f4:	0c000000 	jal	0 <EnBoom_SetupAction>
  f8:	02003025 	move	a2,s0
  fc:	3c050000 	lui	a1,0x0
 100:	24a50000 	addiu	a1,a1,0
 104:	0c000000 	jal	0 <EnBoom_SetupAction>
 108:	02002025 	move	a0,s0
 10c:	8fbf0024 	lw	ra,36(sp)
 110:	8fb00020 	lw	s0,32(sp)
 114:	27bd01d0 	addiu	sp,sp,464
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <EnBoom_Destroy>:
 120:	27bdffe8 	addiu	sp,sp,-24
 124:	afa40018 	sw	a0,24(sp)
 128:	8fae0018 	lw	t6,24(sp)
 12c:	afbf0014 	sw	ra,20(sp)
 130:	afa5001c 	sw	a1,28(sp)
 134:	00a02025 	move	a0,a1
 138:	0c000000 	jal	0 <EnBoom_SetupAction>
 13c:	8dc501d8 	lw	a1,472(t6)
 140:	8fa50018 	lw	a1,24(sp)
 144:	8fa4001c 	lw	a0,28(sp)
 148:	0c000000 	jal	0 <EnBoom_SetupAction>
 14c:	24a5014c 	addiu	a1,a1,332
 150:	8fbf0014 	lw	ra,20(sp)
 154:	27bd0018 	addiu	sp,sp,24
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <EnBoom_Fly>:
 160:	27bdff80 	addiu	sp,sp,-128
 164:	afbf0034 	sw	ra,52(sp)
 168:	afb00030 	sw	s0,48(sp)
 16c:	afa50084 	sw	a1,132(sp)
 170:	8caf1c44 	lw	t7,7236(a1)
 174:	00808025 	move	s0,a0
 178:	afaf0078 	sw	t7,120(sp)
 17c:	8c8301cc 	lw	v1,460(a0)
 180:	10600057 	beqz	v1,2e0 <EnBoom_Fly+0x180>
 184:	24650038 	addiu	a1,v1,56
 188:	afa3007c 	sw	v1,124(sp)
 18c:	0c000000 	jal	0 <EnBoom_SetupAction>
 190:	afa50040 	sw	a1,64(sp)
 194:	a7a20072 	sh	v0,114(sp)
 198:	86180032 	lh	t8,50(s0)
 19c:	02002025 	move	a0,s0
 1a0:	8fa50040 	lw	a1,64(sp)
 1a4:	03023023 	subu	a2,t8,v0
 1a8:	00063400 	sll	a2,a2,0x10
 1ac:	00063403 	sra	a2,a2,0x10
 1b0:	0c000000 	jal	0 <EnBoom_SetupAction>
 1b4:	a7a60070 	sh	a2,112(sp)
 1b8:	a7a2006e 	sh	v0,110(sp)
 1bc:	86190030 	lh	t9,48(s0)
 1c0:	26040024 	addiu	a0,s0,36
 1c4:	8fa50040 	lw	a1,64(sp)
 1c8:	03223823 	subu	a3,t9,v0
 1cc:	00073c00 	sll	a3,a3,0x10
 1d0:	00073c03 	sra	a3,a3,0x10
 1d4:	0c000000 	jal	0 <EnBoom_SetupAction>
 1d8:	a7a7006c 	sh	a3,108(sp)
 1dc:	3c010000 	lui	at,0x0
 1e0:	c42e0030 	lwc1	$f14,48(at)
 1e4:	3c014348 	lui	at,0x4348
 1e8:	44812000 	mtc1	at,$f4
 1ec:	3c010000 	lui	at,0x0
 1f0:	c4280034 	lwc1	$f8,52(at)
 1f4:	46002181 	sub.s	$f6,$f4,$f0
 1f8:	8fa3007c 	lw	v1,124(sp)
 1fc:	87a60070 	lh	a2,112(sp)
 200:	87a7006c 	lh	a3,108(sp)
 204:	46083302 	mul.s	$f12,$f6,$f8
 208:	8fa80078 	lw	t0,120(sp)
 20c:	460e603c 	c.lt.s	$f12,$f14
 210:	00000000 	nop
 214:	45000002 	bc1f	220 <EnBoom_Fly+0xc0>
 218:	00000000 	nop
 21c:	46007306 	mov.s	$f12,$f14
 220:	1103000d 	beq	t0,v1,258 <EnBoom_Fly+0xf8>
 224:	00000000 	nop
 228:	8c690130 	lw	t1,304(v1)
 22c:	11200008 	beqz	t1,250 <EnBoom_Fly+0xf0>
 230:	00000000 	nop
 234:	04c00003 	bltz	a2,244 <EnBoom_Fly+0xe4>
 238:	00061023 	negu	v0,a2
 23c:	10000001 	b	244 <EnBoom_Fly+0xe4>
 240:	00c01025 	move	v0,a2
 244:	28414001 	slti	at,v0,16385
 248:	14200003 	bnez	at,258 <EnBoom_Fly+0xf8>
 24c:	00000000 	nop
 250:	10000023 	b	2e0 <EnBoom_Fly+0x180>
 254:	ae0001cc 	sw	zero,460(s0)
 258:	04c00003 	bltz	a2,268 <EnBoom_Fly+0x108>
 25c:	00061023 	negu	v0,a2
 260:	10000001 	b	268 <EnBoom_Fly+0x108>
 264:	00c01025 	move	v0,a2
 268:	44825000 	mtc1	v0,$f10
 26c:	26040032 	addiu	a0,s0,50
 270:	87a50072 	lh	a1,114(sp)
 274:	46805420 	cvt.s.w	$f16,$f10
 278:	a7a7006c 	sh	a3,108(sp)
 27c:	e7ac0064 	swc1	$f12,100(sp)
 280:	460c8482 	mul.s	$f18,$f16,$f12
 284:	4600910d 	trunc.w.s	$f4,$f18
 288:	44062000 	mfc1	a2,$f4
 28c:	00000000 	nop
 290:	00063400 	sll	a2,a2,0x10
 294:	0c000000 	jal	0 <EnBoom_SetupAction>
 298:	00063403 	sra	a2,a2,0x10
 29c:	87a7006c 	lh	a3,108(sp)
 2a0:	c7ac0064 	lwc1	$f12,100(sp)
 2a4:	04e00003 	bltz	a3,2b4 <EnBoom_Fly+0x154>
 2a8:	00071023 	negu	v0,a3
 2ac:	10000001 	b	2b4 <EnBoom_Fly+0x154>
 2b0:	00e01025 	move	v0,a3
 2b4:	44823000 	mtc1	v0,$f6
 2b8:	26040030 	addiu	a0,s0,48
 2bc:	87a5006e 	lh	a1,110(sp)
 2c0:	46803220 	cvt.s.w	$f8,$f6
 2c4:	460c4282 	mul.s	$f10,$f8,$f12
 2c8:	4600540d 	trunc.w.s	$f16,$f10
 2cc:	44068000 	mfc1	a2,$f16
 2d0:	00000000 	nop
 2d4:	00063400 	sll	a2,a2,0x10
 2d8:	0c000000 	jal	0 <EnBoom_SetupAction>
 2dc:	00063403 	sra	a2,a2,0x10
 2e0:	260c0024 	addiu	t4,s0,36
 2e4:	afac0040 	sw	t4,64(sp)
 2e8:	02002025 	move	a0,s0
 2ec:	0c000000 	jal	0 <EnBoom_SetupAction>
 2f0:	3c054140 	lui	a1,0x4140
 2f4:	0c000000 	jal	0 <EnBoom_SetupAction>
 2f8:	02002025 	move	a0,s0
 2fc:	02002025 	move	a0,s0
 300:	0c000000 	jal	0 <EnBoom_SetupAction>
 304:	24051010 	li	a1,4112
 308:	9203015c 	lbu	v1,348(s0)
 30c:	30630002 	andi	v1,v1,0x2
 310:	0003182b 	sltu	v1,zero,v1
 314:	50600011 	beqzl	v1,35c <EnBoom_Fly+0x1fc>
 318:	920301d4 	lbu	v1,468(s0)
 31c:	8e020150 	lw	v0,336(s0)
 320:	24010015 	li	at,21
 324:	84430000 	lh	v1,0(v0)
 328:	10610003 	beq	v1,at,338 <EnBoom_Fly+0x1d8>
 32c:	2401019c 	li	at,412
 330:	5461000a 	bnel	v1,at,35c <EnBoom_Fly+0x1fc>
 334:	920301d4 	lbu	v1,468(s0)
 338:	ae0201d0 	sw	v0,464(s0)
 33c:	844d0000 	lh	t5,0(v0)
 340:	2401019c 	li	at,412
 344:	55a10005 	bnel	t5,at,35c <EnBoom_Fly+0x1fc>
 348:	920301d4 	lbu	v1,468(s0)
 34c:	8c4e0004 	lw	t6,4(v0)
 350:	35cf2000 	ori	t7,t6,0x2000
 354:	ac4f0004 	sw	t7,4(v0)
 358:	920301d4 	lbu	v1,468(s0)
 35c:	14600003 	bnez	v1,36c <EnBoom_Fly+0x20c>
 360:	2478ffff 	addiu	t8,v1,-1
 364:	10000003 	b	374 <EnBoom_Fly+0x214>
 368:	00001025 	move	v0,zero
 36c:	a21801d4 	sb	t8,468(s0)
 370:	330200ff 	andi	v0,t8,0xff
 374:	1440002c 	bnez	v0,428 <EnBoom_Fly+0x2c8>
 378:	8fa50078 	lw	a1,120(sp)
 37c:	8fa40040 	lw	a0,64(sp)
 380:	0c000000 	jal	0 <EnBoom_SetupAction>
 384:	24a50038 	addiu	a1,a1,56
 388:	3c014220 	lui	at,0x4220
 38c:	44819000 	mtc1	at,$f18
 390:	8fa20078 	lw	v0,120(sp)
 394:	4612003c 	c.lt.s	$f0,$f18
 398:	ae0201cc 	sw	v0,460(s0)
 39c:	4502006f 	bc1fl	55c <EnBoom_Fly+0x3fc>
 3a0:	8e0301d0 	lw	v1,464(s0)
 3a4:	8e0301d0 	lw	v1,464(s0)
 3a8:	24450024 	addiu	a1,v0,36
 3ac:	10600015 	beqz	v1,404 <EnBoom_Fly+0x2a4>
 3b0:	24640024 	addiu	a0,v1,36
 3b4:	0c000000 	jal	0 <EnBoom_SetupAction>
 3b8:	afa3007c 	sw	v1,124(sp)
 3bc:	8fa3007c 	lw	v1,124(sp)
 3c0:	24010015 	li	at,21
 3c4:	84790000 	lh	t9,0(v1)
 3c8:	5721000a 	bnel	t9,at,3f4 <EnBoom_Fly+0x294>
 3cc:	8c6a0004 	lw	t2,4(v1)
 3d0:	94680088 	lhu	t0,136(v1)
 3d4:	3c010000 	lui	at,0x0
 3d8:	c4240038 	lwc1	$f4,56(at)
 3dc:	3109fffc 	andi	t1,t0,0xfffc
 3e0:	a4690088 	sh	t1,136(v1)
 3e4:	e464006c 	swc1	$f4,108(v1)
 3e8:	10000006 	b	404 <EnBoom_Fly+0x2a4>
 3ec:	8fa20078 	lw	v0,120(sp)
 3f0:	8c6a0004 	lw	t2,4(v1)
 3f4:	2401dfff 	li	at,-8193
 3f8:	01415824 	and	t3,t2,at
 3fc:	ac6b0004 	sw	t3,4(v1)
 400:	8fa20078 	lw	v0,120(sp)
 404:	8c4c067c 	lw	t4,1660(v0)
 408:	3c01fdff 	lui	at,0xfdff
 40c:	3421ffff 	ori	at,at,0xffff
 410:	01816824 	and	t5,t4,at
 414:	ac4d067c 	sw	t5,1660(v0)
 418:	0c000000 	jal	0 <EnBoom_SetupAction>
 41c:	02002025 	move	a0,s0
 420:	1000004e 	b	55c <EnBoom_Fly+0x3fc>
 424:	8e0301d0 	lw	v1,464(s0)
 428:	9203015c 	lbu	v1,348(s0)
 42c:	8fa40084 	lw	a0,132(sp)
 430:	26050100 	addiu	a1,s0,256
 434:	30630002 	andi	v1,v1,0x2
 438:	0003182b 	sltu	v1,zero,v1
 43c:	10600007 	beqz	v1,45c <EnBoom_Fly+0x2fc>
 440:	248407c0 	addiu	a0,a0,1984
 444:	8fa40040 	lw	a0,64(sp)
 448:	26050100 	addiu	a1,s0,256
 44c:	0c000000 	jal	0 <EnBoom_SetupAction>
 450:	afa30074 	sw	v1,116(sp)
 454:	10000034 	b	528 <EnBoom_Fly+0x3c8>
 458:	8fa30074 	lw	v1,116(sp)
 45c:	260e0074 	addiu	t6,s0,116
 460:	240f0001 	li	t7,1
 464:	24180001 	li	t8,1
 468:	24190001 	li	t9,1
 46c:	24080001 	li	t0,1
 470:	27a90058 	addiu	t1,sp,88
 474:	afa90024 	sw	t1,36(sp)
 478:	afa80020 	sw	t0,32(sp)
 47c:	afb9001c 	sw	t9,28(sp)
 480:	afb80018 	sw	t8,24(sp)
 484:	afaf0014 	sw	t7,20(sp)
 488:	afae0010 	sw	t6,16(sp)
 48c:	8fa60040 	lw	a2,64(sp)
 490:	27a7004c 	addiu	a3,sp,76
 494:	0c000000 	jal	0 <EnBoom_SetupAction>
 498:	afa4003c 	sw	a0,60(sp)
 49c:	10400022 	beqz	v0,528 <EnBoom_Fly+0x3c8>
 4a0:	00401825 	move	v1,v0
 4a4:	8e060074 	lw	a2,116(s0)
 4a8:	27aa004c 	addiu	t2,sp,76
 4ac:	afaa0010 	sw	t2,16(sp)
 4b0:	afa20074 	sw	v0,116(sp)
 4b4:	8fa40084 	lw	a0,132(sp)
 4b8:	02002825 	move	a1,s0
 4bc:	0c000000 	jal	0 <EnBoom_SetupAction>
 4c0:	8fa70058 	lw	a3,88(sp)
 4c4:	14400011 	bnez	v0,50c <EnBoom_Fly+0x3ac>
 4c8:	8fa30074 	lw	v1,116(sp)
 4cc:	8fa50058 	lw	a1,88(sp)
 4d0:	24010032 	li	at,50
 4d4:	8fa4003c 	lw	a0,60(sp)
 4d8:	50a1000f 	beql	a1,at,518 <EnBoom_Fly+0x3b8>
 4dc:	8fa40084 	lw	a0,132(sp)
 4e0:	0c000000 	jal	0 <EnBoom_SetupAction>
 4e4:	afa30074 	sw	v1,116(sp)
 4e8:	1040000a 	beqz	v0,514 <EnBoom_Fly+0x3b4>
 4ec:	8fa30074 	lw	v1,116(sp)
 4f0:	844b0000 	lh	t3,0(v0)
 4f4:	240100c8 	li	at,200
 4f8:	55610007 	bnel	t3,at,518 <EnBoom_Fly+0x3b8>
 4fc:	8fa40084 	lw	a0,132(sp)
 500:	844c001c 	lh	t4,28(v0)
 504:	55800004 	bnezl	t4,518 <EnBoom_Fly+0x3b8>
 508:	8fa40084 	lw	a0,132(sp)
 50c:	10000006 	b	528 <EnBoom_Fly+0x3c8>
 510:	00001825 	move	v1,zero
 514:	8fa40084 	lw	a0,132(sp)
 518:	27a5004c 	addiu	a1,sp,76
 51c:	0c000000 	jal	0 <EnBoom_SetupAction>
 520:	afa30074 	sw	v1,116(sp)
 524:	8fa30074 	lw	v1,116(sp)
 528:	5060000c 	beqzl	v1,55c <EnBoom_Fly+0x3fc>
 52c:	8e0301d0 	lw	v1,464(s0)
 530:	860d0030 	lh	t5,48(s0)
 534:	860f0032 	lh	t7,50(s0)
 538:	34018000 	li	at,0x8000
 53c:	000d7023 	negu	t6,t5
 540:	01e1c021 	addu	t8,t7,at
 544:	a60e0030 	sh	t6,48(s0)
 548:	a6180032 	sh	t8,50(s0)
 54c:	8fb90078 	lw	t9,120(sp)
 550:	a20001d4 	sb	zero,468(s0)
 554:	ae1901cc 	sw	t9,460(s0)
 558:	8e0301d0 	lw	v1,464(s0)
 55c:	5060000a 	beqzl	v1,588 <EnBoom_Fly+0x428>
 560:	8fbf0034 	lw	ra,52(sp)
 564:	8c680130 	lw	t0,304(v1)
 568:	24640024 	addiu	a0,v1,36
 56c:	15000003 	bnez	t0,57c <EnBoom_Fly+0x41c>
 570:	00000000 	nop
 574:	10000003 	b	584 <EnBoom_Fly+0x424>
 578:	ae0001d0 	sw	zero,464(s0)
 57c:	0c000000 	jal	0 <EnBoom_SetupAction>
 580:	8fa50040 	lw	a1,64(sp)
 584:	8fbf0034 	lw	ra,52(sp)
 588:	8fb00030 	lw	s0,48(sp)
 58c:	27bd0080 	addiu	sp,sp,128
 590:	03e00008 	jr	ra
 594:	00000000 	nop

00000598 <EnBoom_Update>:
 598:	27bdffe8 	addiu	sp,sp,-24
 59c:	afbf0014 	sw	ra,20(sp)
 5a0:	8ca21c44 	lw	v0,7236(a1)
 5a4:	8c4e067c 	lw	t6,1660(v0)
 5a8:	000e7880 	sll	t7,t6,0x2
 5ac:	05e2000d 	bltzl	t7,5e4 <EnBoom_Update+0x4c>
 5b0:	8fbf0014 	lw	ra,20(sp)
 5b4:	afa40018 	sw	a0,24(sp)
 5b8:	8c9901f8 	lw	t9,504(a0)
 5bc:	0320f809 	jalr	t9
 5c0:	00000000 	nop
 5c4:	8fa40018 	lw	a0,24(sp)
 5c8:	0c000000 	jal	0 <EnBoom_SetupAction>
 5cc:	24050000 	li	a1,0
 5d0:	8fa40018 	lw	a0,24(sp)
 5d4:	909801d5 	lbu	t8,469(a0)
 5d8:	27080001 	addiu	t0,t8,1
 5dc:	a08801d5 	sb	t0,469(a0)
 5e0:	8fbf0014 	lw	ra,20(sp)
 5e4:	27bd0018 	addiu	sp,sp,24
 5e8:	03e00008 	jr	ra
 5ec:	00000000 	nop

000005f0 <EnBoom_Draw>:
 5f0:	27bdff98 	addiu	sp,sp,-104
 5f4:	afbf0024 	sw	ra,36(sp)
 5f8:	afb00020 	sw	s0,32(sp)
 5fc:	afa5006c 	sw	a1,108(sp)
 600:	8ca50000 	lw	a1,0(a1)
 604:	00808025 	move	s0,a0
 608:	3c060000 	lui	a2,0x0
 60c:	24c60000 	addiu	a2,a2,0
 610:	27a40038 	addiu	a0,sp,56
 614:	24070237 	li	a3,567
 618:	0c000000 	jal	0 <EnBoom_SetupAction>
 61c:	afa50048 	sw	a1,72(sp)
 620:	860f0032 	lh	t7,50(s0)
 624:	3c010000 	lui	at,0x0
 628:	c428003c 	lwc1	$f8,60(at)
 62c:	448f2000 	mtc1	t7,$f4
 630:	24050001 	li	a1,1
 634:	468021a0 	cvt.s.w	$f6,$f4
 638:	46083302 	mul.s	$f12,$f6,$f8
 63c:	0c000000 	jal	0 <EnBoom_SetupAction>
 640:	00000000 	nop
 644:	3c010000 	lui	at,0x0
 648:	c42c0040 	lwc1	$f12,64(at)
 64c:	0c000000 	jal	0 <EnBoom_SetupAction>
 650:	24050001 	li	a1,1
 654:	86180030 	lh	t8,48(s0)
 658:	3c010000 	lui	at,0x0
 65c:	c4320044 	lwc1	$f18,68(at)
 660:	44985000 	mtc1	t8,$f10
 664:	24050001 	li	a1,1
 668:	46805420 	cvt.s.w	$f16,$f10
 66c:	46128302 	mul.s	$f12,$f16,$f18
 670:	0c000000 	jal	0 <EnBoom_SetupAction>
 674:	00000000 	nop
 678:	3c040000 	lui	a0,0x0
 67c:	24840078 	addiu	a0,a0,120
 680:	0c000000 	jal	0 <EnBoom_SetupAction>
 684:	27a50058 	addiu	a1,sp,88
 688:	3c040000 	lui	a0,0x0
 68c:	24840084 	addiu	a0,a0,132
 690:	0c000000 	jal	0 <EnBoom_SetupAction>
 694:	27a5004c 	addiu	a1,sp,76
 698:	27b9004c 	addiu	t9,sp,76
 69c:	afb90010 	sw	t9,16(sp)
 6a0:	8fa4006c 	lw	a0,108(sp)
 6a4:	2605014c 	addiu	a1,s0,332
 6a8:	260601dc 	addiu	a2,s0,476
 6ac:	0c000000 	jal	0 <EnBoom_SetupAction>
 6b0:	27a70058 	addiu	a3,sp,88
 6b4:	50400008 	beqzl	v0,6d8 <EnBoom_Draw+0xe8>
 6b8:	8fa8006c 	lw	t0,108(sp)
 6bc:	0c000000 	jal	0 <EnBoom_SetupAction>
 6c0:	8e0401d8 	lw	a0,472(s0)
 6c4:	00402025 	move	a0,v0
 6c8:	27a50058 	addiu	a1,sp,88
 6cc:	0c000000 	jal	0 <EnBoom_SetupAction>
 6d0:	27a6004c 	addiu	a2,sp,76
 6d4:	8fa8006c 	lw	t0,108(sp)
 6d8:	0c000000 	jal	0 <EnBoom_SetupAction>
 6dc:	8d040000 	lw	a0,0(t0)
 6e0:	920901d5 	lbu	t1,469(s0)
 6e4:	3c010000 	lui	at,0x0
 6e8:	c4280048 	lwc1	$f8,72(at)
 6ec:	00095080 	sll	t2,t1,0x2
 6f0:	01495023 	subu	t2,t2,t1
 6f4:	000a5100 	sll	t2,t2,0x4
 6f8:	01495023 	subu	t2,t2,t1
 6fc:	000a50c0 	sll	t2,t2,0x3
 700:	01495023 	subu	t2,t2,t1
 704:	000a5140 	sll	t2,t2,0x5
 708:	448a2000 	mtc1	t2,$f4
 70c:	24050001 	li	a1,1
 710:	468021a0 	cvt.s.w	$f6,$f4
 714:	46083302 	mul.s	$f12,$f6,$f8
 718:	0c000000 	jal	0 <EnBoom_SetupAction>
 71c:	00000000 	nop
 720:	8fa30048 	lw	v1,72(sp)
 724:	3c0cda38 	lui	t4,0xda38
 728:	358c0003 	ori	t4,t4,0x3
 72c:	8c6202c0 	lw	v0,704(v1)
 730:	3c050000 	lui	a1,0x0
 734:	24a50010 	addiu	a1,a1,16
 738:	244b0008 	addiu	t3,v0,8
 73c:	ac6b02c0 	sw	t3,704(v1)
 740:	ac4c0000 	sw	t4,0(v0)
 744:	8fad006c 	lw	t5,108(sp)
 748:	24060259 	li	a2,601
 74c:	00408025 	move	s0,v0
 750:	0c000000 	jal	0 <EnBoom_SetupAction>
 754:	8da40000 	lw	a0,0(t5)
 758:	ae020004 	sw	v0,4(s0)
 75c:	8fae0048 	lw	t6,72(sp)
 760:	3c190000 	lui	t9,0x0
 764:	27390000 	addiu	t9,t9,0
 768:	8dc202c0 	lw	v0,704(t6)
 76c:	3c18de00 	lui	t8,0xde00
 770:	3c060000 	lui	a2,0x0
 774:	244f0008 	addiu	t7,v0,8
 778:	adcf02c0 	sw	t7,704(t6)
 77c:	ac590004 	sw	t9,4(v0)
 780:	ac580000 	sw	t8,0(v0)
 784:	8fa8006c 	lw	t0,108(sp)
 788:	24c60020 	addiu	a2,a2,32
 78c:	27a40038 	addiu	a0,sp,56
 790:	2407025c 	li	a3,604
 794:	0c000000 	jal	0 <EnBoom_SetupAction>
 798:	8d050000 	lw	a1,0(t0)
 79c:	8fbf0024 	lw	ra,36(sp)
 7a0:	8fb00020 	lw	s0,32(sp)
 7a4:	27bd0068 	addiu	sp,sp,104
 7a8:	03e00008 	jr	ra
 7ac:	00000000 	nop
