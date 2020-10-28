
build/src/overlays/actors/ovl_En_Wonder_Talk2/z_en_wonder_talk2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnWonderTalk2_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <EnWonderTalk2_Init>:
   c:	27bdffe0 	addiu	sp,sp,-32
  10:	afb00018 	sw	s0,24(sp)
  14:	00808025 	move	s0,a0
  18:	afbf001c 	sw	ra,28(sp)
  1c:	3c040000 	lui	a0,0x0
  20:	afa50024 	sw	a1,36(sp)
  24:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
  28:	24840000 	addiu	a0,a0,0
  2c:	3c040000 	lui	a0,0x0
  30:	24840004 	addiu	a0,a0,4
  34:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
  38:	8605001c 	lh	a1,28(s0)
  3c:	860e001c 	lh	t6,28(s0)
  40:	86040034 	lh	a0,52(s0)
  44:	3c080000 	lui	t0,0x0
  48:	000e7983 	sra	t7,t6,0x6
  4c:	31f800ff 	andi	t8,t7,0xff
  50:	18800035 	blez	a0,128 <EnWonderTalk2_Init+0x11c>
  54:	a6180150 	sh	t8,336(s0)
  58:	00041400 	sll	v0,a0,0x10
  5c:	00021403 	sra	v0,v0,0x10
  60:	2841000b 	slti	at,v0,11
  64:	14200007 	bnez	at,84 <EnWonderTalk2_Init+0x78>
  68:	00001825 	move	v1,zero
  6c:	2442fff6 	addiu	v0,v0,-10
  70:	00021400 	sll	v0,v0,0x10
  74:	00021403 	sra	v0,v0,0x10
  78:	2841000b 	slti	at,v0,11
  7c:	1020fffb 	beqz	at,6c <EnWonderTalk2_Init+0x60>
  80:	24630001 	addiu	v1,v1,1
  84:	44822000 	mtc1	v0,$f4
  88:	3c014220 	lui	at,0x4220
  8c:	44814000 	mtc1	at,$f8
  90:	468021a0 	cvt.s.w	$f6,$f4
  94:	28610007 	slti	at,v1,7
  98:	3c040000 	lui	a0,0x0
  9c:	46083282 	mul.s	$f10,$f6,$f8
  a0:	14200002 	bnez	at,ac <EnWonderTalk2_Init+0xa0>
  a4:	e60a015c 	swc1	$f10,348(s0)
  a8:	00001825 	move	v1,zero
  ac:	0003c840 	sll	t9,v1,0x1
  b0:	01194021 	addu	t0,t0,t9
  b4:	85080000 	lh	t0,0(t0)
  b8:	24840038 	addiu	a0,a0,56
  bc:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
  c0:	a208001f 	sb	t0,31(s0)
  c4:	3c040000 	lui	a0,0x0
  c8:	2484003c 	addiu	a0,a0,60
  cc:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
  d0:	86050034 	lh	a1,52(s0)
  d4:	3c040000 	lui	a0,0x0
  d8:	2484006c 	addiu	a0,a0,108
  dc:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
  e0:	8205001f 	lb	a1,31(s0)
  e4:	c610015c 	lwc1	$f16,348(s0)
  e8:	3c040000 	lui	a0,0x0
  ec:	2484009c 	addiu	a0,a0,156
  f0:	460084a1 	cvt.d.s	$f18,$f16
  f4:	44079000 	mfc1	a3,$f18
  f8:	44069800 	mfc1	a2,$f19
  fc:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 100:	00000000 	nop
 104:	3c040000 	lui	a0,0x0
 108:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 10c:	248400cc 	addiu	a0,a0,204
 110:	3c040000 	lui	a0,0x0
 114:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 118:	248400d0 	addiu	a0,a0,208
 11c:	3c040000 	lui	a0,0x0
 120:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 124:	248400d4 	addiu	a0,a0,212
 128:	8602001c 	lh	v0,28(s0)
 12c:	8e0a0024 	lw	t2,36(s0)
 130:	8e090028 	lw	t1,40(s0)
 134:	304b003f 	andi	t3,v0,0x3f
 138:	a60b0152 	sh	t3,338(s0)
 13c:	86050152 	lh	a1,338(s0)
 140:	ae0a0164 	sw	t2,356(s0)
 144:	8e0a002c 	lw	t2,44(s0)
 148:	00026383 	sra	t4,v0,0xe
 14c:	318d0003 	andi	t5,t4,0x3
 150:	2401003f 	li	at,63
 154:	a60d0154 	sh	t5,340(s0)
 158:	ae090168 	sw	t1,360(s0)
 15c:	14a10004 	bne	a1,at,170 <EnWonderTalk2_Init+0x164>
 160:	ae0a016c 	sw	t2,364(s0)
 164:	240effff 	li	t6,-1
 168:	a60e0152 	sh	t6,338(s0)
 16c:	86050152 	lh	a1,338(s0)
 170:	04a2000d 	bltzl	a1,1a8 <EnWonderTalk2_Init+0x19c>
 174:	86020154 	lh	v0,340(s0)
 178:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 17c:	8fa40024 	lw	a0,36(sp)
 180:	10400008 	beqz	v0,1a4 <EnWonderTalk2_Init+0x198>
 184:	3c040000 	lui	a0,0x0
 188:	248400d8 	addiu	a0,a0,216
 18c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 190:	86050152 	lh	a1,338(s0)
 194:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 198:	02002025 	move	a0,s0
 19c:	10000023 	b	22c <EnWonderTalk2_Init+0x220>
 1a0:	8fbf001c 	lw	ra,28(sp)
 1a4:	86020154 	lh	v0,340(s0)
 1a8:	24010001 	li	at,1
 1ac:	8faf0024 	lw	t7,36(sp)
 1b0:	14410010 	bne	v0,at,1f4 <EnWonderTalk2_Init+0x1e8>
 1b4:	3c0b0000 	lui	t3,0x0
 1b8:	85f800a4 	lh	t8,164(t7)
 1bc:	2401000b 	li	at,11
 1c0:	5701000d 	bnel	t8,at,1f8 <EnWonderTalk2_Init+0x1ec>
 1c4:	24010003 	li	at,3
 1c8:	86050152 	lh	a1,338(s0)
 1cc:	24010008 	li	at,8
 1d0:	10a10008 	beq	a1,at,1f4 <EnWonderTalk2_Init+0x1e8>
 1d4:	24010016 	li	at,22
 1d8:	10a10006 	beq	a1,at,1f4 <EnWonderTalk2_Init+0x1e8>
 1dc:	2401002f 	li	at,47
 1e0:	10a10004 	beq	a1,at,1f4 <EnWonderTalk2_Init+0x1e8>
 1e4:	24190004 	li	t9,4
 1e8:	a6190154 	sh	t9,340(s0)
 1ec:	a200015a 	sb	zero,346(s0)
 1f0:	86020154 	lh	v0,340(s0)
 1f4:	24010003 	li	at,3
 1f8:	1441000a 	bne	v0,at,224 <EnWonderTalk2_Init+0x218>
 1fc:	256b0000 	addiu	t3,t3,0
 200:	8e080004 	lw	t0,4(s0)
 204:	3c01f7ff 	lui	at,0xf7ff
 208:	3421ffff 	ori	at,at,0xffff
 20c:	3c0a0000 	lui	t2,0x0
 210:	254a0000 	addiu	t2,t2,0
 214:	01014824 	and	t1,t0,at
 218:	ae090004 	sw	t1,4(s0)
 21c:	10000002 	b	228 <EnWonderTalk2_Init+0x21c>
 220:	ae0a014c 	sw	t2,332(s0)
 224:	ae0b014c 	sw	t3,332(s0)
 228:	8fbf001c 	lw	ra,28(sp)
 22c:	8fb00018 	lw	s0,24(sp)
 230:	27bd0020 	addiu	sp,sp,32
 234:	03e00008 	jr	ra
 238:	00000000 	nop

0000023c <func_80B3A10C>:
 23c:	afa50004 	sw	a1,4(sp)
 240:	84980150 	lh	t8,336(a0)
 244:	84820154 	lh	v0,340(a0)
 248:	240f0200 	li	t7,512
 24c:	a48f010e 	sh	t7,270(a0)
 250:	24010001 	li	at,1
 254:	01f8c825 	or	t9,t7,t8
 258:	10410004 	beq	v0,at,26c <func_80B3A10C+0x30>
 25c:	a499010e 	sh	t9,270(a0)
 260:	24010004 	li	at,4
 264:	14410005 	bne	v0,at,27c <func_80B3A10C+0x40>
 268:	3c090000 	lui	t1,0x0
 26c:	3c080000 	lui	t0,0x0
 270:	25080000 	addiu	t0,t0,0
 274:	03e00008 	jr	ra
 278:	ac88014c 	sw	t0,332(a0)
 27c:	25290000 	addiu	t1,t1,0
 280:	ac89014c 	sw	t1,332(a0)
 284:	03e00008 	jr	ra
 288:	00000000 	nop

0000028c <func_80B3A15C>:
 28c:	27bdffd0 	addiu	sp,sp,-48
 290:	afbf0024 	sw	ra,36(sp)
 294:	afb00020 	sw	s0,32(sp)
 298:	afa50034 	sw	a1,52(sp)
 29c:	8caf1c44 	lw	t7,7236(a1)
 2a0:	00808025 	move	s0,a0
 2a4:	afaf002c 	sw	t7,44(sp)
 2a8:	84980158 	lh	t8,344(a0)
 2ac:	84860152 	lh	a2,338(a0)
 2b0:	27190001 	addiu	t9,t8,1
 2b4:	04c00010 	bltz	a2,2f8 <func_80B3A15C+0x6c>
 2b8:	a4990158 	sh	t9,344(a0)
 2bc:	8fa40034 	lw	a0,52(sp)
 2c0:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 2c4:	00c02825 	move	a1,a2
 2c8:	5040000c 	beqzl	v0,2fc <func_80B3A15C+0x70>
 2cc:	02002025 	move	a0,s0
 2d0:	9208015a 	lbu	t0,346(s0)
 2d4:	2401fffe 	li	at,-2
 2d8:	55000086 	bnezl	t0,4f4 <func_80B3A15C+0x268>
 2dc:	8fbf0024 	lw	ra,36(sp)
 2e0:	8e090004 	lw	t1,4(s0)
 2e4:	240b0001 	li	t3,1
 2e8:	a20b015a 	sb	t3,346(s0)
 2ec:	01215024 	and	t2,t1,at
 2f0:	1000007f 	b	4f0 <func_80B3A15C+0x264>
 2f4:	ae0a0004 	sw	t2,4(s0)
 2f8:	02002025 	move	a0,s0
 2fc:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 300:	8fa50034 	lw	a1,52(sp)
 304:	10400013 	beqz	v0,354 <func_80B3A15C+0xc8>
 308:	3c014220 	lui	at,0x4220
 30c:	86060152 	lh	a2,338(s0)
 310:	04c0000c 	bltz	a2,344 <func_80B3A15C+0xb8>
 314:	00000000 	nop
 318:	860c0154 	lh	t4,340(s0)
 31c:	24010002 	li	at,2
 320:	8fa40034 	lw	a0,52(sp)
 324:	11810007 	beq	t4,at,344 <func_80B3A15C+0xb8>
 328:	00000000 	nop
 32c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 330:	00c02825 	move	a1,a2
 334:	3c040000 	lui	a0,0x0
 338:	24840118 	addiu	a0,a0,280
 33c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 340:	86050152 	lh	a1,338(s0)
 344:	3c0d0000 	lui	t5,0x0
 348:	25ad0000 	addiu	t5,t5,0
 34c:	10000068 	b	4f0 <func_80B3A15C+0x264>
 350:	ae0d014c 	sw	t5,332(s0)
 354:	860e008a 	lh	t6,138(s0)
 358:	860f0032 	lh	t7,50(s0)
 35c:	44812000 	mtc1	at,$f4
 360:	8fb8002c 	lw	t8,44(sp)
 364:	01cf1023 	subu	v0,t6,t7
 368:	00021400 	sll	v0,v0,0x10
 36c:	00021403 	sra	v0,v0,0x10
 370:	04400004 	bltz	v0,384 <func_80B3A15C+0xf8>
 374:	00021823 	negu	v1,v0
 378:	00021c00 	sll	v1,v0,0x10
 37c:	10000003 	b	38c <func_80B3A15C+0x100>
 380:	00031c03 	sra	v1,v1,0x10
 384:	00031c00 	sll	v1,v1,0x10
 388:	00031c03 	sra	v1,v1,0x10
 38c:	c602015c 	lwc1	$f2,348(s0)
 390:	c6080090 	lwc1	$f8,144(s0)
 394:	46022180 	add.s	$f6,$f4,$f2
 398:	4608303c 	c.lt.s	$f6,$f8
 39c:	00000000 	nop
 3a0:	45030054 	bc1tl	4f4 <func_80B3A15C+0x268>
 3a4:	8fbf0024 	lw	ra,36(sp)
 3a8:	c70a0028 	lwc1	$f10,40(t8)
 3ac:	c6100028 	lwc1	$f16,40(s0)
 3b0:	3c0142c8 	lui	at,0x42c8
 3b4:	44819000 	mtc1	at,$f18
 3b8:	46105001 	sub.s	$f0,$f10,$f16
 3bc:	28614000 	slti	at,v1,16384
 3c0:	46000005 	abs.s	$f0,$f0
 3c4:	4600903c 	c.lt.s	$f18,$f0
 3c8:	00000000 	nop
 3cc:	45030049 	bc1tl	4f4 <func_80B3A15C+0x268>
 3d0:	8fbf0024 	lw	ra,36(sp)
 3d4:	50200047 	beqzl	at,4f4 <func_80B3A15C+0x268>
 3d8:	8fbf0024 	lw	ra,36(sp)
 3dc:	86190158 	lh	t9,344(s0)
 3e0:	3c040000 	lui	a0,0x0
 3e4:	2b210002 	slti	at,t9,2
 3e8:	54200037 	bnezl	at,4c8 <func_80B3A15C+0x23c>
 3ec:	3c014248 	lui	at,0x4248
 3f0:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 3f4:	2484014c 	addiu	a0,a0,332
 3f8:	3c040000 	lui	a0,0x0
 3fc:	24840150 	addiu	a0,a0,336
 400:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 404:	8605001c 	lh	a1,28(s0)
 408:	3c040000 	lui	a0,0x0
 40c:	24840180 	addiu	a0,a0,384
 410:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 414:	86050152 	lh	a1,338(s0)
 418:	3c040000 	lui	a0,0x0
 41c:	248401b0 	addiu	a0,a0,432
 420:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 424:	86050150 	lh	a1,336(s0)
 428:	3c040000 	lui	a0,0x0
 42c:	248401e0 	addiu	a0,a0,480
 430:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 434:	9605010e 	lhu	a1,270(s0)
 438:	3c040000 	lui	a0,0x0
 43c:	24840210 	addiu	a0,a0,528
 440:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 444:	86050034 	lh	a1,52(s0)
 448:	c604015c 	lwc1	$f4,348(s0)
 44c:	3c040000 	lui	a0,0x0
 450:	24840240 	addiu	a0,a0,576
 454:	460021a1 	cvt.d.s	$f6,$f4
 458:	44073000 	mfc1	a3,$f6
 45c:	44063800 	mfc1	a2,$f7
 460:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 464:	00000000 	nop
 468:	86020154 	lh	v0,340(s0)
 46c:	24010002 	li	at,2
 470:	3c040000 	lui	a0,0x0
 474:	10400008 	beqz	v0,498 <func_80B3A15C+0x20c>
 478:	00000000 	nop
 47c:	1041000a 	beq	v0,at,4a8 <func_80B3A15C+0x21c>
 480:	3c040000 	lui	a0,0x0
 484:	24010003 	li	at,3
 488:	1041000b 	beq	v0,at,4b8 <func_80B3A15C+0x22c>
 48c:	3c040000 	lui	a0,0x0
 490:	1000000c 	b	4c4 <func_80B3A15C+0x238>
 494:	c602015c 	lwc1	$f2,348(s0)
 498:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 49c:	24840270 	addiu	a0,a0,624
 4a0:	10000008 	b	4c4 <func_80B3A15C+0x238>
 4a4:	c602015c 	lwc1	$f2,348(s0)
 4a8:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 4ac:	2484028c 	addiu	a0,a0,652
 4b0:	10000004 	b	4c4 <func_80B3A15C+0x238>
 4b4:	c602015c 	lwc1	$f2,348(s0)
 4b8:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 4bc:	248402b0 	addiu	a0,a0,688
 4c0:	c602015c 	lwc1	$f2,348(s0)
 4c4:	3c014248 	lui	at,0x4248
 4c8:	44814000 	mtc1	at,$f8
 4cc:	a6000158 	sh	zero,344(s0)
 4d0:	afa00010 	sw	zero,16(sp)
 4d4:	46081280 	add.s	$f10,$f2,$f8
 4d8:	8fa50034 	lw	a1,52(sp)
 4dc:	02002025 	move	a0,s0
 4e0:	3c0742c8 	lui	a3,0x42c8
 4e4:	44065000 	mfc1	a2,$f10
 4e8:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 4ec:	00000000 	nop
 4f0:	8fbf0024 	lw	ra,36(sp)
 4f4:	8fb00020 	lw	s0,32(sp)
 4f8:	27bd0030 	addiu	sp,sp,48
 4fc:	03e00008 	jr	ra
 500:	00000000 	nop

00000504 <func_80B3A3D4>:
 504:	27bdffd0 	addiu	sp,sp,-48
 508:	3c0e0000 	lui	t6,0x0
 50c:	8dce0000 	lw	t6,0(t6)
 510:	afbf001c 	sw	ra,28(sp)
 514:	afb00018 	sw	s0,24(sp)
 518:	afa50034 	sw	a1,52(sp)
 51c:	85cf12d8 	lh	t7,4824(t6)
 520:	00808025 	move	s0,a0
 524:	51e00008 	beqzl	t7,548 <func_80B3A3D4+0x44>
 528:	8fa40034 	lw	a0,52(sp)
 52c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 530:	24a420d8 	addiu	a0,a1,8408
 534:	3c040000 	lui	a0,0x0
 538:	248402d0 	addiu	a0,a0,720
 53c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 540:	00402825 	move	a1,v0
 544:	8fa40034 	lw	a0,52(sp)
 548:	248420d8 	addiu	a0,a0,8408
 54c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 550:	afa40024 	sw	a0,36(sp)
 554:	10400010 	beqz	v0,598 <func_80B3A3D4+0x94>
 558:	24010005 	li	at,5
 55c:	10410003 	beq	v0,at,56c <func_80B3A3D4+0x68>
 560:	24010006 	li	at,6
 564:	5441002c 	bnel	v0,at,618 <func_80B3A3D4+0x114>
 568:	8fbf001c 	lw	ra,28(sp)
 56c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 570:	8fa40034 	lw	a0,52(sp)
 574:	50400028 	beqzl	v0,618 <func_80B3A3D4+0x114>
 578:	8fbf001c 	lw	ra,28(sp)
 57c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 580:	8fa40024 	lw	a0,36(sp)
 584:	24010005 	li	at,5
 588:	54410004 	bnel	v0,at,59c <func_80B3A3D4+0x98>
 58c:	86050152 	lh	a1,338(s0)
 590:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 594:	8fa40034 	lw	a0,52(sp)
 598:	86050152 	lh	a1,338(s0)
 59c:	04a2000c 	bltzl	a1,5d0 <func_80B3A3D4+0xcc>
 5a0:	86190154 	lh	t9,340(s0)
 5a4:	86180154 	lh	t8,340(s0)
 5a8:	24010004 	li	at,4
 5ac:	53010008 	beql	t8,at,5d0 <func_80B3A3D4+0xcc>
 5b0:	86190154 	lh	t9,340(s0)
 5b4:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 5b8:	8fa40034 	lw	a0,52(sp)
 5bc:	3c040000 	lui	a0,0x0
 5c0:	248402ec 	addiu	a0,a0,748
 5c4:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 5c8:	86050152 	lh	a1,338(s0)
 5cc:	86190154 	lh	t9,340(s0)
 5d0:	24010004 	li	at,4
 5d4:	24080001 	li	t0,1
 5d8:	17210002 	bne	t9,at,5e4 <func_80B3A3D4+0xe0>
 5dc:	00002825 	move	a1,zero
 5e0:	a208015a 	sb	t0,346(s0)
 5e4:	8e090004 	lw	t1,4(s0)
 5e8:	2401ffee 	li	at,-18
 5ec:	24060007 	li	a2,7
 5f0:	01215024 	and	t2,t1,at
 5f4:	ae0a0004 	sw	t2,4(s0)
 5f8:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 5fc:	8fa40034 	lw	a0,52(sp)
 600:	3c0c0000 	lui	t4,0x0
 604:	240b0001 	li	t3,1
 608:	258c0000 	addiu	t4,t4,0
 60c:	a60b0156 	sh	t3,342(s0)
 610:	ae0c014c 	sw	t4,332(s0)
 614:	8fbf001c 	lw	ra,28(sp)
 618:	8fb00018 	lw	s0,24(sp)
 61c:	27bd0030 	addiu	sp,sp,48
 620:	03e00008 	jr	ra
 624:	00000000 	nop

00000628 <func_80B3A4F8>:
 628:	27bdffd8 	addiu	sp,sp,-40
 62c:	afbf001c 	sw	ra,28(sp)
 630:	afb00018 	sw	s0,24(sp)
 634:	afa5002c 	sw	a1,44(sp)
 638:	8caf1c44 	lw	t7,7236(a1)
 63c:	00808025 	move	s0,a0
 640:	afaf0024 	sw	t7,36(sp)
 644:	84980158 	lh	t8,344(a0)
 648:	84860152 	lh	a2,338(a0)
 64c:	27190001 	addiu	t9,t8,1
 650:	04c00010 	bltz	a2,694 <func_80B3A4F8+0x6c>
 654:	a4990158 	sh	t9,344(a0)
 658:	8fa4002c 	lw	a0,44(sp)
 65c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 660:	00c02825 	move	a1,a2
 664:	5040000c 	beqzl	v0,698 <func_80B3A4F8+0x70>
 668:	860c0154 	lh	t4,340(s0)
 66c:	9208015a 	lbu	t0,346(s0)
 670:	2401fffe 	li	at,-2
 674:	55000086 	bnezl	t0,890 <func_80B3A4F8+0x268>
 678:	8fbf001c 	lw	ra,28(sp)
 67c:	8e090004 	lw	t1,4(s0)
 680:	240b0001 	li	t3,1
 684:	a20b015a 	sb	t3,346(s0)
 688:	01215024 	and	t2,t1,at
 68c:	1000007f 	b	88c <func_80B3A4F8+0x264>
 690:	ae0a0004 	sw	t2,4(s0)
 694:	860c0154 	lh	t4,340(s0)
 698:	24010004 	li	at,4
 69c:	3c0e0000 	lui	t6,0x0
 6a0:	15810004 	bne	t4,at,6b4 <func_80B3A4F8+0x8c>
 6a4:	00000000 	nop
 6a8:	920d015a 	lbu	t5,346(s0)
 6ac:	55a00078 	bnezl	t5,890 <func_80B3A4F8+0x268>
 6b0:	8fbf001c 	lw	ra,28(sp)
 6b4:	8dce0000 	lw	t6,0(t6)
 6b8:	85cf12d8 	lh	t7,4824(t6)
 6bc:	51e0000a 	beqzl	t7,6e8 <func_80B3A4F8+0xc0>
 6c0:	3c014220 	lui	at,0x4220
 6c4:	c6040090 	lwc1	$f4,144(s0)
 6c8:	3c040000 	lui	a0,0x0
 6cc:	24840328 	addiu	a0,a0,808
 6d0:	460021a1 	cvt.d.s	$f6,$f4
 6d4:	44073000 	mfc1	a3,$f6
 6d8:	44063800 	mfc1	a2,$f7
 6dc:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 6e0:	00000000 	nop
 6e4:	3c014220 	lui	at,0x4220
 6e8:	44815000 	mtc1	at,$f10
 6ec:	c610015c 	lwc1	$f16,348(s0)
 6f0:	c6080090 	lwc1	$f8,144(s0)
 6f4:	8fb80024 	lw	t8,36(sp)
 6f8:	46105480 	add.s	$f18,$f10,$f16
 6fc:	4612403c 	c.lt.s	$f8,$f18
 700:	00000000 	nop
 704:	45020061 	bc1fl	88c <func_80B3A4F8+0x264>
 708:	a6000156 	sh	zero,342(s0)
 70c:	c7040028 	lwc1	$f4,40(t8)
 710:	c6060028 	lwc1	$f6,40(s0)
 714:	3c0142c8 	lui	at,0x42c8
 718:	44815000 	mtc1	at,$f10
 71c:	46062001 	sub.s	$f0,$f4,$f6
 720:	46000005 	abs.s	$f0,$f0
 724:	460a003c 	c.lt.s	$f0,$f10
 728:	00000000 	nop
 72c:	45020057 	bc1fl	88c <func_80B3A4F8+0x264>
 730:	a6000156 	sh	zero,342(s0)
 734:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 738:	8fa4002c 	lw	a0,44(sp)
 73c:	54400053 	bnezl	v0,88c <func_80B3A4F8+0x264>
 740:	a6000156 	sh	zero,342(s0)
 744:	86190158 	lh	t9,344(s0)
 748:	3c040000 	lui	a0,0x0
 74c:	2b210002 	slti	at,t9,2
 750:	5420003c 	bnezl	at,844 <func_80B3A4F8+0x21c>
 754:	86080156 	lh	t0,342(s0)
 758:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 75c:	24840348 	addiu	a0,a0,840
 760:	3c040000 	lui	a0,0x0
 764:	2484034c 	addiu	a0,a0,844
 768:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 76c:	8605001c 	lh	a1,28(s0)
 770:	3c040000 	lui	a0,0x0
 774:	2484037c 	addiu	a0,a0,892
 778:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 77c:	86050152 	lh	a1,338(s0)
 780:	3c040000 	lui	a0,0x0
 784:	248403ac 	addiu	a0,a0,940
 788:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 78c:	86050150 	lh	a1,336(s0)
 790:	3c040000 	lui	a0,0x0
 794:	248403dc 	addiu	a0,a0,988
 798:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 79c:	9605010e 	lhu	a1,270(s0)
 7a0:	3c040000 	lui	a0,0x0
 7a4:	2484040c 	addiu	a0,a0,1036
 7a8:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 7ac:	86050034 	lh	a1,52(s0)
 7b0:	c610015c 	lwc1	$f16,348(s0)
 7b4:	3c040000 	lui	a0,0x0
 7b8:	2484043c 	addiu	a0,a0,1084
 7bc:	46008221 	cvt.d.s	$f8,$f16
 7c0:	44074000 	mfc1	a3,$f8
 7c4:	44064800 	mfc1	a2,$f9
 7c8:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 7cc:	00000000 	nop
 7d0:	3c040000 	lui	a0,0x0
 7d4:	2484046c 	addiu	a0,a0,1132
 7d8:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 7dc:	8205001f 	lb	a1,31(s0)
 7e0:	3c040000 	lui	a0,0x0
 7e4:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 7e8:	24840494 	addiu	a0,a0,1172
 7ec:	3c040000 	lui	a0,0x0
 7f0:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 7f4:	24840498 	addiu	a0,a0,1176
 7f8:	86020154 	lh	v0,340(s0)
 7fc:	24010001 	li	at,1
 800:	3c040000 	lui	a0,0x0
 804:	10410005 	beq	v0,at,81c <func_80B3A4F8+0x1f4>
 808:	24010004 	li	at,4
 80c:	10410007 	beq	v0,at,82c <func_80B3A4F8+0x204>
 810:	3c040000 	lui	a0,0x0
 814:	10000007 	b	834 <func_80B3A4F8+0x20c>
 818:	00000000 	nop
 81c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 820:	2484049c 	addiu	a0,a0,1180
 824:	10000003 	b	834 <func_80B3A4F8+0x20c>
 828:	00000000 	nop
 82c:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 830:	248404b8 	addiu	a0,a0,1208
 834:	3c040000 	lui	a0,0x0
 838:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 83c:	248404ec 	addiu	a0,a0,1260
 840:	86080156 	lh	t0,342(s0)
 844:	a6000158 	sh	zero,344(s0)
 848:	8fa4002c 	lw	a0,44(sp)
 84c:	1500000f 	bnez	t0,88c <func_80B3A4F8+0x264>
 850:	00003025 	move	a2,zero
 854:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 858:	9605010e 	lhu	a1,270(s0)
 85c:	8fa4002c 	lw	a0,44(sp)
 860:	00002825 	move	a1,zero
 864:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 868:	24060008 	li	a2,8
 86c:	8e090004 	lw	t1,4(s0)
 870:	3c0b0000 	lui	t3,0x0
 874:	256b0000 	addiu	t3,t3,0
 878:	352a0011 	ori	t2,t1,0x11
 87c:	ae0a0004 	sw	t2,4(s0)
 880:	10000002 	b	88c <func_80B3A4F8+0x264>
 884:	ae0b014c 	sw	t3,332(s0)
 888:	a6000156 	sh	zero,342(s0)
 88c:	8fbf001c 	lw	ra,28(sp)
 890:	8fb00018 	lw	s0,24(sp)
 894:	27bd0028 	addiu	sp,sp,40
 898:	03e00008 	jr	ra
 89c:	00000000 	nop

000008a0 <EnWonderTalk2_DoNothing>:
 8a0:	afa40000 	sw	a0,0(sp)
 8a4:	03e00008 	jr	ra
 8a8:	afa50004 	sw	a1,4(sp)

000008ac <EnWonderTalk2_Update>:
 8ac:	27bdffb8 	addiu	sp,sp,-72
 8b0:	afbf0044 	sw	ra,68(sp)
 8b4:	afa5004c 	sw	a1,76(sp)
 8b8:	afa40048 	sw	a0,72(sp)
 8bc:	8c99014c 	lw	t9,332(a0)
 8c0:	0320f809 	jalr	t9
 8c4:	00000000 	nop
 8c8:	8fa40048 	lw	a0,72(sp)
 8cc:	c4840168 	lwc1	$f4,360(a0)
 8d0:	8c850160 	lw	a1,352(a0)
 8d4:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 8d8:	e4840028 	swc1	$f4,40(a0)
 8dc:	3c0e0000 	lui	t6,0x0
 8e0:	8dce0000 	lw	t6,0(t6)
 8e4:	8fa40048 	lw	a0,72(sp)
 8e8:	85cf12d4 	lh	t7,4820(t6)
 8ec:	51e0003c 	beqzl	t7,9e0 <EnWonderTalk2_Update+0x134>
 8f0:	8fbf0044 	lw	ra,68(sp)
 8f4:	84820158 	lh	v0,344(a0)
 8f8:	3c013f80 	lui	at,0x3f80
 8fc:	240900ff 	li	t1,255
 900:	10400020 	beqz	v0,984 <EnWonderTalk2_Update+0xd8>
 904:	240a00ff 	li	t2,255
 908:	30580001 	andi	t8,v0,0x1
 90c:	17000033 	bnez	t8,9dc <EnWonderTalk2_Update+0x130>
 910:	3c013f80 	lui	at,0x3f80
 914:	84880032 	lh	t0,50(a0)
 918:	c48c0024 	lwc1	$f12,36(a0)
 91c:	c48e0028 	lwc1	$f14,40(a0)
 920:	8c86002c 	lw	a2,44(a0)
 924:	84870030 	lh	a3,48(a0)
 928:	afa80010 	sw	t0,16(sp)
 92c:	84890034 	lh	t1,52(a0)
 930:	44810000 	mtc1	at,$f0
 934:	8fae004c 	lw	t6,76(sp)
 938:	240a0046 	li	t2,70
 93c:	240b0046 	li	t3,70
 940:	240c0046 	li	t4,70
 944:	240d00ff 	li	t5,255
 948:	24190004 	li	t9,4
 94c:	afb90034 	sw	t9,52(sp)
 950:	afad0030 	sw	t5,48(sp)
 954:	afac002c 	sw	t4,44(sp)
 958:	afab0028 	sw	t3,40(sp)
 95c:	afaa0024 	sw	t2,36(sp)
 960:	afa90014 	sw	t1,20(sp)
 964:	e7a00018 	swc1	$f0,24(sp)
 968:	e7a0001c 	swc1	$f0,28(sp)
 96c:	e7a00020 	swc1	$f0,32(sp)
 970:	8dcf0000 	lw	t7,0(t6)
 974:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 978:	afaf0038 	sw	t7,56(sp)
 97c:	10000018 	b	9e0 <EnWonderTalk2_Update+0x134>
 980:	8fbf0044 	lw	ra,68(sp)
 984:	84980032 	lh	t8,50(a0)
 988:	c48c0024 	lwc1	$f12,36(a0)
 98c:	c48e0028 	lwc1	$f14,40(a0)
 990:	8c86002c 	lw	a2,44(a0)
 994:	84870030 	lh	a3,48(a0)
 998:	afb80010 	sw	t8,16(sp)
 99c:	84880034 	lh	t0,52(a0)
 9a0:	44810000 	mtc1	at,$f0
 9a4:	8fac004c 	lw	t4,76(sp)
 9a8:	240b0004 	li	t3,4
 9ac:	afab0034 	sw	t3,52(sp)
 9b0:	afaa0030 	sw	t2,48(sp)
 9b4:	afa9002c 	sw	t1,44(sp)
 9b8:	afa00028 	sw	zero,40(sp)
 9bc:	afa00024 	sw	zero,36(sp)
 9c0:	afa80014 	sw	t0,20(sp)
 9c4:	e7a00018 	swc1	$f0,24(sp)
 9c8:	e7a0001c 	swc1	$f0,28(sp)
 9cc:	e7a00020 	swc1	$f0,32(sp)
 9d0:	8d8d0000 	lw	t5,0(t4)
 9d4:	0c000000 	jal	0 <EnWonderTalk2_Destroy>
 9d8:	afad0038 	sw	t5,56(sp)
 9dc:	8fbf0044 	lw	ra,68(sp)
 9e0:	27bd0048 	addiu	sp,sp,72
 9e4:	03e00008 	jr	ra
 9e8:	00000000 	nop
 9ec:	00000000 	nop
