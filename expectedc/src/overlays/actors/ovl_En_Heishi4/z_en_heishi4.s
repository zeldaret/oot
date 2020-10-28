
build/src/overlays/actors/ovl_En_Heishi4/z_en_heishi4.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnHeishi4_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afa50044 	sw	a1,68(sp)
   8:	afbf002c 	sw	ra,44(sp)
   c:	afb00028 	sw	s0,40(sp)
  10:	3c053c23 	lui	a1,0x3c23
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <EnHeishi4_Init>
  1c:	34a5d70a 	ori	a1,a1,0xd70a
  20:	860e001c 	lh	t6,28(s0)
  24:	8e080024 	lw	t0,36(s0)
  28:	8e190028 	lw	t9,40(s0)
  2c:	31cf00ff 	andi	t7,t6,0xff
  30:	a60f0280 	sh	t7,640(s0)
  34:	860a0280 	lh	t2,640(s0)
  38:	ae08026c 	sw	t0,620(s0)
  3c:	8e08002c 	lw	t0,44(s0)
  40:	241800ff 	li	t8,255
  44:	24090006 	li	t1,6
  48:	24010007 	li	at,7
  4c:	a21800ae 	sb	t8,174(s0)
  50:	a209001f 	sb	t1,31(s0)
  54:	ae190270 	sw	t9,624(s0)
  58:	15410018 	bne	t2,at,bc <EnHeishi4_Init+0xbc>
  5c:	ae080274 	sw	t0,628(s0)
  60:	3c0141f0 	lui	at,0x41f0
  64:	44810000 	mtc1	at,$f0
  68:	260400b4 	addiu	a0,s0,180
  6c:	24050000 	li	a1,0
  70:	44070000 	mfc1	a3,$f0
  74:	00003025 	move	a2,zero
  78:	0c000000 	jal	0 <EnHeishi4_Init>
  7c:	e6000278 	swc1	$f0,632(s0)
  80:	3c060000 	lui	a2,0x0
  84:	3c070000 	lui	a3,0x0
  88:	260b0190 	addiu	t3,s0,400
  8c:	260c01f6 	addiu	t4,s0,502
  90:	240d0011 	li	t5,17
  94:	afad0018 	sw	t5,24(sp)
  98:	afac0014 	sw	t4,20(sp)
  9c:	afab0010 	sw	t3,16(sp)
  a0:	24e70000 	addiu	a3,a3,0
  a4:	24c60000 	addiu	a2,a2,0
  a8:	8fa40044 	lw	a0,68(sp)
  ac:	0c000000 	jal	0 <EnHeishi4_Init>
  b0:	2605014c 	addiu	a1,s0,332
  b4:	1000001a 	b	120 <EnHeishi4_Init+0x120>
  b8:	260502bc 	addiu	a1,s0,700
  bc:	3c0141f0 	lui	at,0x41f0
  c0:	44810000 	mtc1	at,$f0
  c4:	3c014270 	lui	at,0x4270
  c8:	44812000 	mtc1	at,$f4
  cc:	3c060000 	lui	a2,0x0
  d0:	44070000 	mfc1	a3,$f0
  d4:	24c60000 	addiu	a2,a2,0
  d8:	260400b4 	addiu	a0,s0,180
  dc:	24050000 	li	a1,0
  e0:	0c000000 	jal	0 <EnHeishi4_Init>
  e4:	e6040278 	swc1	$f4,632(s0)
  e8:	3c060000 	lui	a2,0x0
  ec:	3c070000 	lui	a3,0x0
  f0:	260e0190 	addiu	t6,s0,400
  f4:	260f01f6 	addiu	t7,s0,502
  f8:	24180011 	li	t8,17
  fc:	afb80018 	sw	t8,24(sp)
 100:	afaf0014 	sw	t7,20(sp)
 104:	afae0010 	sw	t6,16(sp)
 108:	24e70000 	addiu	a3,a3,0
 10c:	24c60000 	addiu	a2,a2,0
 110:	8fa40044 	lw	a0,68(sp)
 114:	0c000000 	jal	0 <EnHeishi4_Init>
 118:	2605014c 	addiu	a1,s0,332
 11c:	260502bc 	addiu	a1,s0,700
 120:	afa50034 	sw	a1,52(sp)
 124:	0c000000 	jal	0 <EnHeishi4_Init>
 128:	8fa40044 	lw	a0,68(sp)
 12c:	3c070000 	lui	a3,0x0
 130:	8fa50034 	lw	a1,52(sp)
 134:	24e70028 	addiu	a3,a3,40
 138:	8fa40044 	lw	a0,68(sp)
 13c:	0c000000 	jal	0 <EnHeishi4_Init>
 140:	02003025 	move	a2,s0
 144:	86020280 	lh	v0,640(s0)
 148:	2419000f 	li	t9,15
 14c:	24080046 	li	t0,70
 150:	a6000300 	sh	zero,768(s0)
 154:	a61902fc 	sh	t9,764(s0)
 158:	1040000b 	beqz	v0,188 <EnHeishi4_Init+0x188>
 15c:	a60802fe 	sh	t0,766(s0)
 160:	24010004 	li	at,4
 164:	10410008 	beq	v0,at,188 <EnHeishi4_Init+0x188>
 168:	24010007 	li	at,7
 16c:	1041000a 	beq	v0,at,198 <EnHeishi4_Init+0x198>
 170:	240a001c 	li	t2,28
 174:	24010008 	li	at,8
 178:	1041000e 	beq	v0,at,1b4 <EnHeishi4_Init+0x1b4>
 17c:	3c0d0000 	lui	t5,0x0
 180:	1000000f 	b	1c0 <EnHeishi4_Init+0x1c0>
 184:	860e001c 	lh	t6,28(s0)
 188:	3c090000 	lui	t1,0x0
 18c:	25290000 	addiu	t1,t1,0
 190:	1000000a 	b	1bc <EnHeishi4_Init+0x1bc>
 194:	ae09025c 	sw	t1,604(s0)
 198:	3c0c0000 	lui	t4,0x0
 19c:	240b0005 	li	t3,5
 1a0:	258c0000 	addiu	t4,t4,0
 1a4:	a60a02fc 	sh	t2,764(s0)
 1a8:	a60b02fe 	sh	t3,766(s0)
 1ac:	10000003 	b	1bc <EnHeishi4_Init+0x1bc>
 1b0:	ae0c025c 	sw	t4,604(s0)
 1b4:	25ad0000 	addiu	t5,t5,0
 1b8:	ae0d025c 	sw	t5,604(s0)
 1bc:	860e001c 	lh	t6,28(s0)
 1c0:	3c040000 	lui	a0,0x0
 1c4:	24840000 	addiu	a0,a0,0
 1c8:	000e7a03 	sra	t7,t6,0x8
 1cc:	31f800ff 	andi	t8,t7,0xff
 1d0:	0c000000 	jal	0 <EnHeishi4_Init>
 1d4:	a618027c 	sh	t8,636(s0)
 1d8:	3c040000 	lui	a0,0x0
 1dc:	24840004 	addiu	a0,a0,4
 1e0:	0c000000 	jal	0 <EnHeishi4_Init>
 1e4:	8605001c 	lh	a1,28(s0)
 1e8:	3c040000 	lui	a0,0x0
 1ec:	2484003c 	addiu	a0,a0,60
 1f0:	0c000000 	jal	0 <EnHeishi4_Init>
 1f4:	86050280 	lh	a1,640(s0)
 1f8:	8605001c 	lh	a1,28(s0)
 1fc:	3c040000 	lui	a0,0x0
 200:	24840070 	addiu	a0,a0,112
 204:	00052a03 	sra	a1,a1,0x8
 208:	0c000000 	jal	0 <EnHeishi4_Init>
 20c:	30a5000f 	andi	a1,a1,0xf
 210:	3c040000 	lui	a0,0x0
 214:	0c000000 	jal	0 <EnHeishi4_Init>
 218:	248400a8 	addiu	a0,a0,168
 21c:	8fbf002c 	lw	ra,44(sp)
 220:	8fb00028 	lw	s0,40(sp)
 224:	27bd0040 	addiu	sp,sp,64
 228:	03e00008 	jr	ra
 22c:	00000000 	nop

00000230 <EnHeishi4_Destroy>:
 230:	27bdffe8 	addiu	sp,sp,-24
 234:	00803025 	move	a2,a0
 238:	afbf0014 	sw	ra,20(sp)
 23c:	00a02025 	move	a0,a1
 240:	0c000000 	jal	0 <EnHeishi4_Init>
 244:	24c502bc 	addiu	a1,a2,700
 248:	8fbf0014 	lw	ra,20(sp)
 24c:	27bd0018 	addiu	sp,sp,24
 250:	03e00008 	jr	ra
 254:	00000000 	nop

00000258 <func_80A56328>:
 258:	27bdffd8 	addiu	sp,sp,-40
 25c:	afa40028 	sw	a0,40(sp)
 260:	afbf0024 	sw	ra,36(sp)
 264:	3c040000 	lui	a0,0x0
 268:	afa5002c 	sw	a1,44(sp)
 26c:	0c000000 	jal	0 <EnHeishi4_Init>
 270:	24840000 	addiu	a0,a0,0
 274:	44822000 	mtc1	v0,$f4
 278:	3c01c120 	lui	at,0xc120
 27c:	44819000 	mtc1	at,$f18
 280:	468021a0 	cvt.s.w	$f6,$f4
 284:	8fa40028 	lw	a0,40(sp)
 288:	3c050000 	lui	a1,0x0
 28c:	24a50000 	addiu	a1,a1,0
 290:	3c063f80 	lui	a2,0x3f80
 294:	24070000 	li	a3,0
 298:	4600320d 	trunc.w.s	$f8,$f6
 29c:	afa00014 	sw	zero,20(sp)
 2a0:	e7b20018 	swc1	$f18,24(sp)
 2a4:	2484014c 	addiu	a0,a0,332
 2a8:	440f4000 	mfc1	t7,$f8
 2ac:	00000000 	nop
 2b0:	000fc400 	sll	t8,t7,0x10
 2b4:	0018cc03 	sra	t9,t8,0x10
 2b8:	44995000 	mtc1	t9,$f10
 2bc:	00000000 	nop
 2c0:	46805420 	cvt.s.w	$f16,$f10
 2c4:	0c000000 	jal	0 <EnHeishi4_Init>
 2c8:	e7b00010 	swc1	$f16,16(sp)
 2cc:	8fa90028 	lw	t1,40(sp)
 2d0:	3c080000 	lui	t0,0x0
 2d4:	25080000 	addiu	t0,t0,0
 2d8:	ad28025c 	sw	t0,604(t1)
 2dc:	8fbf0024 	lw	ra,36(sp)
 2e0:	27bd0028 	addiu	sp,sp,40
 2e4:	03e00008 	jr	ra
 2e8:	00000000 	nop

000002ec <func_80A563BC>:
 2ec:	27bdffe0 	addiu	sp,sp,-32
 2f0:	afbf0014 	sw	ra,20(sp)
 2f4:	afa50024 	sw	a1,36(sp)
 2f8:	84820280 	lh	v0,640(a0)
 2fc:	00803025 	move	a2,a0
 300:	a08002b4 	sb	zero,692(a0)
 304:	2442fffc 	addiu	v0,v0,-4
 308:	00021400 	sll	v0,v0,0x10
 30c:	00021403 	sra	v0,v0,0x10
 310:	04410002 	bgez	v0,31c <func_80A563BC+0x30>
 314:	8fa40024 	lw	a0,36(sp)
 318:	00001025 	move	v0,zero
 31c:	28410003 	slti	at,v0,3
 320:	14200002 	bnez	at,32c <func_80A563BC+0x40>
 324:	3c0f0000 	lui	t7,0x0
 328:	24020001 	li	v0,1
 32c:	00027080 	sll	t6,v0,0x2
 330:	25ef0020 	addiu	t7,t7,32
 334:	01cf1821 	addu	v1,t6,t7
 338:	8c650000 	lw	a1,0(v1)
 33c:	afa30018 	sw	v1,24(sp)
 340:	0c000000 	jal	0 <EnHeishi4_Init>
 344:	afa60020 	sw	a2,32(sp)
 348:	8fa30018 	lw	v1,24(sp)
 34c:	1040000d 	beqz	v0,384 <func_80A563BC+0x98>
 350:	8fa60020 	lw	a2,32(sp)
 354:	8fa40024 	lw	a0,36(sp)
 358:	8c650000 	lw	a1,0(v1)
 35c:	0c000000 	jal	0 <EnHeishi4_Init>
 360:	afa60020 	sw	a2,32(sp)
 364:	8fa60020 	lw	a2,32(sp)
 368:	3c190000 	lui	t9,0x0
 36c:	24180001 	li	t8,1
 370:	27390000 	addiu	t9,t9,0
 374:	a4c2010e 	sh	v0,270(a2)
 378:	a0d802b4 	sb	t8,692(a2)
 37c:	10000039 	b	464 <func_80A563BC+0x178>
 380:	acd9025c 	sw	t9,604(a2)
 384:	3c020000 	lui	v0,0x0
 388:	24420000 	addiu	v0,v0,0
 38c:	94480ee4 	lhu	t0,3812(v0)
 390:	3c0b0000 	lui	t3,0x0
 394:	240a5065 	li	t2,20581
 398:	31090001 	andi	t1,t0,0x1
 39c:	11200004 	beqz	t1,3b0 <func_80A563BC+0xc4>
 3a0:	256b0000 	addiu	t3,t3,0
 3a4:	a4ca010e 	sh	t2,270(a2)
 3a8:	1000002e 	b	464 <func_80A563BC+0x178>
 3ac:	accb025c 	sw	t3,604(a2)
 3b0:	944c0edc 	lhu	t4,3804(v0)
 3b4:	3c0f0000 	lui	t7,0x0
 3b8:	240e5068 	li	t6,20584
 3bc:	318d0020 	andi	t5,t4,0x20
 3c0:	11a00004 	beqz	t5,3d4 <func_80A563BC+0xe8>
 3c4:	25ef0000 	addiu	t7,t7,0
 3c8:	a4ce010e 	sh	t6,270(a2)
 3cc:	10000025 	b	464 <func_80A563BC+0x178>
 3d0:	accf025c 	sw	t7,604(a2)
 3d4:	84d80280 	lh	t8,640(a2)
 3d8:	24010004 	li	at,4
 3dc:	5701000b 	bnel	t8,at,40c <func_80A563BC+0x120>
 3e0:	8c4a0010 	lw	t2,16(v0)
 3e4:	84d90284 	lh	t9,644(a2)
 3e8:	24085079 	li	t0,20601
 3ec:	2409507a 	li	t1,20602
 3f0:	17200003 	bnez	t9,400 <func_80A563BC+0x114>
 3f4:	00000000 	nop
 3f8:	10000017 	b	458 <func_80A563BC+0x16c>
 3fc:	a4c8010e 	sh	t0,270(a2)
 400:	10000015 	b	458 <func_80A563BC+0x16c>
 404:	a4c9010e 	sh	t1,270(a2)
 408:	8c4a0010 	lw	t2,16(v0)
 40c:	5540000b 	bnezl	t2,43c <func_80A563BC+0x150>
 410:	84ce0284 	lh	t6,644(a2)
 414:	84cb0284 	lh	t3,644(a2)
 418:	240c5063 	li	t4,20579
 41c:	240d5064 	li	t5,20580
 420:	15600003 	bnez	t3,430 <func_80A563BC+0x144>
 424:	00000000 	nop
 428:	1000000b 	b	458 <func_80A563BC+0x16c>
 42c:	a4cc010e 	sh	t4,270(a2)
 430:	10000009 	b	458 <func_80A563BC+0x16c>
 434:	a4cd010e 	sh	t5,270(a2)
 438:	84ce0284 	lh	t6,644(a2)
 43c:	240f5066 	li	t7,20582
 440:	24185067 	li	t8,20583
 444:	55c00004 	bnezl	t6,458 <func_80A563BC+0x16c>
 448:	a4d8010e 	sh	t8,270(a2)
 44c:	10000002 	b	458 <func_80A563BC+0x16c>
 450:	a4cf010e 	sh	t7,270(a2)
 454:	a4d8010e 	sh	t8,270(a2)
 458:	3c190000 	lui	t9,0x0
 45c:	27390000 	addiu	t9,t9,0
 460:	acd9025c 	sw	t9,604(a2)
 464:	8fbf0014 	lw	ra,20(sp)
 468:	27bd0020 	addiu	sp,sp,32
 46c:	03e00008 	jr	ra
 470:	00000000 	nop

00000474 <func_80A56544>:
 474:	27bdffd8 	addiu	sp,sp,-40
 478:	afa40028 	sw	a0,40(sp)
 47c:	afbf0024 	sw	ra,36(sp)
 480:	3c040000 	lui	a0,0x0
 484:	afa5002c 	sw	a1,44(sp)
 488:	0c000000 	jal	0 <EnHeishi4_Init>
 48c:	24840000 	addiu	a0,a0,0
 490:	44822000 	mtc1	v0,$f4
 494:	3c01c120 	lui	at,0xc120
 498:	44819000 	mtc1	at,$f18
 49c:	468021a0 	cvt.s.w	$f6,$f4
 4a0:	8fa40028 	lw	a0,40(sp)
 4a4:	3c050000 	lui	a1,0x0
 4a8:	24a50000 	addiu	a1,a1,0
 4ac:	3c063f80 	lui	a2,0x3f80
 4b0:	24070000 	li	a3,0
 4b4:	4600320d 	trunc.w.s	$f8,$f6
 4b8:	afa00014 	sw	zero,20(sp)
 4bc:	e7b20018 	swc1	$f18,24(sp)
 4c0:	2484014c 	addiu	a0,a0,332
 4c4:	440f4000 	mfc1	t7,$f8
 4c8:	00000000 	nop
 4cc:	000fc400 	sll	t8,t7,0x10
 4d0:	0018cc03 	sra	t9,t8,0x10
 4d4:	44995000 	mtc1	t9,$f10
 4d8:	00000000 	nop
 4dc:	46805420 	cvt.s.w	$f16,$f10
 4e0:	0c000000 	jal	0 <EnHeishi4_Init>
 4e4:	e7b00010 	swc1	$f16,16(sp)
 4e8:	3c080000 	lui	t0,0x0
 4ec:	8d080004 	lw	t0,4(t0)
 4f0:	24010005 	li	at,5
 4f4:	24020011 	li	v0,17
 4f8:	11000003 	beqz	t0,508 <func_80A56544+0x94>
 4fc:	8faa0028 	lw	t2,40(sp)
 500:	10000001 	b	508 <func_80A56544+0x94>
 504:	24020005 	li	v0,5
 508:	10410008 	beq	v0,at,52c <func_80A56544+0xb8>
 50c:	3c090000 	lui	t1,0x0
 510:	3c040000 	lui	a0,0x0
 514:	0c000000 	jal	0 <EnHeishi4_Init>
 518:	248400ac 	addiu	a0,a0,172
 51c:	0c000000 	jal	0 <EnHeishi4_Init>
 520:	8fa40028 	lw	a0,40(sp)
 524:	10000004 	b	538 <func_80A56544+0xc4>
 528:	8fbf0024 	lw	ra,36(sp)
 52c:	25290000 	addiu	t1,t1,0
 530:	ad49025c 	sw	t1,604(t2)
 534:	8fbf0024 	lw	ra,36(sp)
 538:	27bd0028 	addiu	sp,sp,40
 53c:	03e00008 	jr	ra
 540:	00000000 	nop

00000544 <func_80A56614>:
 544:	27bdffe0 	addiu	sp,sp,-32
 548:	afbf0014 	sw	ra,20(sp)
 54c:	84820280 	lh	v0,640(a0)
 550:	00803025 	move	a2,a0
 554:	00a03825 	move	a3,a1
 558:	2442fffc 	addiu	v0,v0,-4
 55c:	00021400 	sll	v0,v0,0x10
 560:	00021403 	sra	v0,v0,0x10
 564:	04410002 	bgez	v0,570 <func_80A56614+0x2c>
 568:	a08002b4 	sb	zero,692(a0)
 56c:	00001025 	move	v0,zero
 570:	28410003 	slti	at,v0,3
 574:	14200002 	bnez	at,580 <func_80A56614+0x3c>
 578:	00e02025 	move	a0,a3
 57c:	24020001 	li	v0,1
 580:	3c0f0000 	lui	t7,0x0
 584:	25ef0020 	addiu	t7,t7,32
 588:	00027080 	sll	t6,v0,0x2
 58c:	01cf1821 	addu	v1,t6,t7
 590:	8c650000 	lw	a1,0(v1)
 594:	afa30018 	sw	v1,24(sp)
 598:	afa60020 	sw	a2,32(sp)
 59c:	0c000000 	jal	0 <EnHeishi4_Init>
 5a0:	afa70024 	sw	a3,36(sp)
 5a4:	8fa30018 	lw	v1,24(sp)
 5a8:	8fa60020 	lw	a2,32(sp)
 5ac:	1040000d 	beqz	v0,5e4 <func_80A56614+0xa0>
 5b0:	8fa70024 	lw	a3,36(sp)
 5b4:	00e02025 	move	a0,a3
 5b8:	8c650000 	lw	a1,0(v1)
 5bc:	0c000000 	jal	0 <EnHeishi4_Init>
 5c0:	afa60020 	sw	a2,32(sp)
 5c4:	8fa60020 	lw	a2,32(sp)
 5c8:	3c190000 	lui	t9,0x0
 5cc:	24180001 	li	t8,1
 5d0:	27390000 	addiu	t9,t9,0
 5d4:	a4c2010e 	sh	v0,270(a2)
 5d8:	a0d802b4 	sb	t8,692(a2)
 5dc:	1000001f 	b	65c <func_80A56614+0x118>
 5e0:	acd9025c 	sw	t9,604(a2)
 5e4:	84e200a4 	lh	v0,164(a3)
 5e8:	2401004d 	li	at,77
 5ec:	3c0f0000 	lui	t7,0x0
 5f0:	1441000b 	bne	v0,at,620 <func_80A56614+0xdc>
 5f4:	25ef0000 	addiu	t7,t7,0
 5f8:	3c080000 	lui	t0,0x0
 5fc:	8d080010 	lw	t0,16(t0)
 600:	24097004 	li	t1,28676
 604:	240a709a 	li	t2,28826
 608:	15000003 	bnez	t0,618 <func_80A56614+0xd4>
 60c:	00000000 	nop
 610:	10000011 	b	658 <func_80A56614+0x114>
 614:	a4c9010e 	sh	t1,270(a2)
 618:	1000000f 	b	658 <func_80A56614+0x114>
 61c:	a4ca010e 	sh	t2,270(a2)
 620:	24010021 	li	at,33
 624:	1041000b 	beq	v0,at,654 <func_80A56614+0x110>
 628:	240e7003 	li	t6,28675
 62c:	3c0b0000 	lui	t3,0x0
 630:	8d6b0010 	lw	t3,16(t3)
 634:	240c7002 	li	t4,28674
 638:	240d7003 	li	t5,28675
 63c:	15600003 	bnez	t3,64c <func_80A56614+0x108>
 640:	00000000 	nop
 644:	10000004 	b	658 <func_80A56614+0x114>
 648:	a4cc010e 	sh	t4,270(a2)
 64c:	10000002 	b	658 <func_80A56614+0x114>
 650:	a4cd010e 	sh	t5,270(a2)
 654:	a4ce010e 	sh	t6,270(a2)
 658:	accf025c 	sw	t7,604(a2)
 65c:	8fbf0014 	lw	ra,20(sp)
 660:	27bd0020 	addiu	sp,sp,32
 664:	03e00008 	jr	ra
 668:	00000000 	nop

0000066c <func_80A5673C>:
 66c:	3c020000 	lui	v0,0x0
 670:	24420000 	addiu	v0,v0,0
 674:	944e0edc 	lhu	t6,3804(v0)
 678:	27bdffd0 	addiu	sp,sp,-48
 67c:	afb00028 	sw	s0,40(sp)
 680:	31cf0020 	andi	t7,t6,0x20
 684:	00808025 	move	s0,a0
 688:	afbf002c 	sw	ra,44(sp)
 68c:	11e00008 	beqz	t7,6b0 <func_80A5673C+0x44>
 690:	afa50034 	sw	a1,52(sp)
 694:	3c040000 	lui	a0,0x0
 698:	0c000000 	jal	0 <EnHeishi4_Init>
 69c:	248400e0 	addiu	a0,a0,224
 6a0:	0c000000 	jal	0 <EnHeishi4_Init>
 6a4:	02002025 	move	a0,s0
 6a8:	1000003a 	b	794 <func_80A5673C+0x128>
 6ac:	8fbf002c 	lw	ra,44(sp)
 6b0:	a6000284 	sh	zero,644(s0)
 6b4:	94580ee4 	lhu	t8,3812(v0)
 6b8:	33190001 	andi	t9,t8,0x1
 6bc:	13200032 	beqz	t9,788 <func_80A5673C+0x11c>
 6c0:	00000000 	nop
 6c4:	94480f04 	lhu	t0,3844(v0)
 6c8:	24197008 	li	t9,28680
 6cc:	3c040000 	lui	a0,0x0
 6d0:	31091000 	andi	t1,t0,0x1000
 6d4:	15200024 	bnez	t1,768 <func_80A5673C+0xfc>
 6d8:	24080006 	li	t0,6
 6dc:	3c040000 	lui	a0,0x0
 6e0:	0c000000 	jal	0 <EnHeishi4_Init>
 6e4:	24840000 	addiu	a0,a0,0
 6e8:	44822000 	mtc1	v0,$f4
 6ec:	3c01c120 	lui	at,0xc120
 6f0:	44819000 	mtc1	at,$f18
 6f4:	468021a0 	cvt.s.w	$f6,$f4
 6f8:	3c050000 	lui	a1,0x0
 6fc:	24a50000 	addiu	a1,a1,0
 700:	2604014c 	addiu	a0,s0,332
 704:	3c063f80 	lui	a2,0x3f80
 708:	24070000 	li	a3,0
 70c:	4600320d 	trunc.w.s	$f8,$f6
 710:	afa00014 	sw	zero,20(sp)
 714:	e7b20018 	swc1	$f18,24(sp)
 718:	440b4000 	mfc1	t3,$f8
 71c:	00000000 	nop
 720:	000b6400 	sll	t4,t3,0x10
 724:	000c6c03 	sra	t5,t4,0x10
 728:	448d5000 	mtc1	t5,$f10
 72c:	00000000 	nop
 730:	46805420 	cvt.s.w	$f16,$f10
 734:	0c000000 	jal	0 <EnHeishi4_Init>
 738:	e7b00010 	swc1	$f16,16(sp)
 73c:	240e7007 	li	t6,28679
 740:	240f0005 	li	t7,5
 744:	24180001 	li	t8,1
 748:	3c040000 	lui	a0,0x0
 74c:	a60e010e 	sh	t6,270(s0)
 750:	a60f0282 	sh	t7,642(s0)
 754:	a6180284 	sh	t8,644(s0)
 758:	0c000000 	jal	0 <EnHeishi4_Init>
 75c:	24840118 	addiu	a0,a0,280
 760:	10000005 	b	778 <func_80A5673C+0x10c>
 764:	00000000 	nop
 768:	a619010e 	sh	t9,270(s0)
 76c:	a6080282 	sh	t0,642(s0)
 770:	0c000000 	jal	0 <EnHeishi4_Init>
 774:	24840144 	addiu	a0,a0,324
 778:	3c090000 	lui	t1,0x0
 77c:	25290000 	addiu	t1,t1,0
 780:	10000003 	b	790 <func_80A5673C+0x124>
 784:	ae09025c 	sw	t1,604(s0)
 788:	0c000000 	jal	0 <EnHeishi4_Init>
 78c:	02002025 	move	a0,s0
 790:	8fbf002c 	lw	ra,44(sp)
 794:	8fb00028 	lw	s0,40(sp)
 798:	27bd0030 	addiu	sp,sp,48
 79c:	03e00008 	jr	ra
 7a0:	00000000 	nop

000007a4 <func_80A56874>:
 7a4:	27bdffe8 	addiu	sp,sp,-24
 7a8:	afbf0014 	sw	ra,20(sp)
 7ac:	afa5001c 	sw	a1,28(sp)
 7b0:	848e0284 	lh	t6,644(a0)
 7b4:	00803825 	move	a3,a0
 7b8:	2484014c 	addiu	a0,a0,332
 7bc:	51c00005 	beqzl	t6,7d4 <func_80A56874+0x30>
 7c0:	00e02025 	move	a0,a3
 7c4:	0c000000 	jal	0 <EnHeishi4_Init>
 7c8:	afa70018 	sw	a3,24(sp)
 7cc:	8fa70018 	lw	a3,24(sp)
 7d0:	00e02025 	move	a0,a3
 7d4:	8fa5001c 	lw	a1,28(sp)
 7d8:	0c000000 	jal	0 <EnHeishi4_Init>
 7dc:	afa70018 	sw	a3,24(sp)
 7e0:	1040000b 	beqz	v0,810 <func_80A56874+0x6c>
 7e4:	8fa70018 	lw	a3,24(sp)
 7e8:	84ef0284 	lh	t7,644(a3)
 7ec:	3c190000 	lui	t9,0x0
 7f0:	3c180000 	lui	t8,0x0
 7f4:	15e00004 	bnez	t7,808 <func_80A56874+0x64>
 7f8:	27390000 	addiu	t9,t9,0
 7fc:	27180000 	addiu	t8,t8,0
 800:	10000007 	b	820 <func_80A56874+0x7c>
 804:	acf8025c 	sw	t8,604(a3)
 808:	10000005 	b	820 <func_80A56874+0x7c>
 80c:	acf9025c 	sw	t9,604(a3)
 810:	00e02025 	move	a0,a3
 814:	8fa5001c 	lw	a1,28(sp)
 818:	0c000000 	jal	0 <EnHeishi4_Init>
 81c:	3c0642c8 	lui	a2,0x42c8
 820:	8fbf0014 	lw	ra,20(sp)
 824:	27bd0018 	addiu	sp,sp,24
 828:	03e00008 	jr	ra
 82c:	00000000 	nop

00000830 <func_80A56900>:
 830:	27bdffd8 	addiu	sp,sp,-40
 834:	afa40028 	sw	a0,40(sp)
 838:	afbf0024 	sw	ra,36(sp)
 83c:	3c040000 	lui	a0,0x0
 840:	afa5002c 	sw	a1,44(sp)
 844:	0c000000 	jal	0 <EnHeishi4_Init>
 848:	24840000 	addiu	a0,a0,0
 84c:	44822000 	mtc1	v0,$f4
 850:	3c01c120 	lui	at,0xc120
 854:	44819000 	mtc1	at,$f18
 858:	468021a0 	cvt.s.w	$f6,$f4
 85c:	8fa40028 	lw	a0,40(sp)
 860:	3c050000 	lui	a1,0x0
 864:	24a50000 	addiu	a1,a1,0
 868:	3c063f80 	lui	a2,0x3f80
 86c:	24070000 	li	a3,0
 870:	4600320d 	trunc.w.s	$f8,$f6
 874:	afa00014 	sw	zero,20(sp)
 878:	e7b20018 	swc1	$f18,24(sp)
 87c:	2484014c 	addiu	a0,a0,332
 880:	440f4000 	mfc1	t7,$f8
 884:	00000000 	nop
 888:	000fc400 	sll	t8,t7,0x10
 88c:	0018cc03 	sra	t9,t8,0x10
 890:	44995000 	mtc1	t9,$f10
 894:	00000000 	nop
 898:	46805420 	cvt.s.w	$f16,$f10
 89c:	0c000000 	jal	0 <EnHeishi4_Init>
 8a0:	e7b00010 	swc1	$f16,16(sp)
 8a4:	8fa90028 	lw	t1,40(sp)
 8a8:	3c080000 	lui	t0,0x0
 8ac:	25080000 	addiu	t0,t0,0
 8b0:	ad28025c 	sw	t0,604(t1)
 8b4:	8fbf0024 	lw	ra,36(sp)
 8b8:	27bd0028 	addiu	sp,sp,40
 8bc:	03e00008 	jr	ra
 8c0:	00000000 	nop

000008c4 <func_80A56994>:
 8c4:	27bdffd0 	addiu	sp,sp,-48
 8c8:	afb00024 	sw	s0,36(sp)
 8cc:	00808025 	move	s0,a0
 8d0:	afbf002c 	sw	ra,44(sp)
 8d4:	afb10028 	sw	s1,40(sp)
 8d8:	00a08825 	move	s1,a1
 8dc:	0c000000 	jal	0 <EnHeishi4_Init>
 8e0:	2484014c 	addiu	a0,a0,332
 8e4:	8e0f0038 	lw	t7,56(s0)
 8e8:	02202025 	move	a0,s1
 8ec:	02002825 	move	a1,s0
 8f0:	afaf0010 	sw	t7,16(sp)
 8f4:	8e0e003c 	lw	t6,60(s0)
 8f8:	26060260 	addiu	a2,s0,608
 8fc:	26070266 	addiu	a3,s0,614
 900:	afae0014 	sw	t6,20(sp)
 904:	8e0f0040 	lw	t7,64(s0)
 908:	0c000000 	jal	0 <EnHeishi4_Init>
 90c:	afaf0018 	sw	t7,24(sp)
 910:	0c000000 	jal	0 <EnHeishi4_Init>
 914:	262420d8 	addiu	a0,s1,8408
 918:	86180282 	lh	t8,642(s0)
 91c:	57020014 	bnel	t8,v0,970 <func_80A56994+0xac>
 920:	8fbf002c 	lw	ra,44(sp)
 924:	0c000000 	jal	0 <EnHeishi4_Init>
 928:	02202025 	move	a0,s1
 92c:	50400010 	beqzl	v0,970 <func_80A56994+0xac>
 930:	8fbf002c 	lw	ra,44(sp)
 934:	0c000000 	jal	0 <EnHeishi4_Init>
 938:	02202025 	move	a0,s1
 93c:	3c020000 	lui	v0,0x0
 940:	24420000 	addiu	v0,v0,0
 944:	94590f04 	lhu	t9,3844(v0)
 948:	02202025 	move	a0,s1
 94c:	00002825 	move	a1,zero
 950:	37281000 	ori	t0,t9,0x1000
 954:	a4480f04 	sh	t0,3844(v0)
 958:	0c000000 	jal	0 <EnHeishi4_Init>
 95c:	24060008 	li	a2,8
 960:	3c090000 	lui	t1,0x0
 964:	25290000 	addiu	t1,t1,0
 968:	ae09025c 	sw	t1,604(s0)
 96c:	8fbf002c 	lw	ra,44(sp)
 970:	8fb00024 	lw	s0,36(sp)
 974:	8fb10028 	lw	s1,40(sp)
 978:	03e00008 	jr	ra
 97c:	27bd0030 	addiu	sp,sp,48

00000980 <func_80A56A50>:
 980:	27bdffd8 	addiu	sp,sp,-40
 984:	afa40028 	sw	a0,40(sp)
 988:	afbf0024 	sw	ra,36(sp)
 98c:	3c040000 	lui	a0,0x0
 990:	afa5002c 	sw	a1,44(sp)
 994:	0c000000 	jal	0 <EnHeishi4_Init>
 998:	24840000 	addiu	a0,a0,0
 99c:	44822000 	mtc1	v0,$f4
 9a0:	8fa30028 	lw	v1,40(sp)
 9a4:	3c01c120 	lui	at,0xc120
 9a8:	46802020 	cvt.s.w	$f0,$f4
 9ac:	44813000 	mtc1	at,$f6
 9b0:	3c050000 	lui	a1,0x0
 9b4:	240e0002 	li	t6,2
 9b8:	24a50000 	addiu	a1,a1,0
 9bc:	3c063f80 	lui	a2,0x3f80
 9c0:	e4600288 	swc1	$f0,648(v1)
 9c4:	afae0014 	sw	t6,20(sp)
 9c8:	e7a00010 	swc1	$f0,16(sp)
 9cc:	24070000 	li	a3,0
 9d0:	2464014c 	addiu	a0,v1,332
 9d4:	0c000000 	jal	0 <EnHeishi4_Init>
 9d8:	e7a60018 	swc1	$f6,24(sp)
 9dc:	8fb80028 	lw	t8,40(sp)
 9e0:	3c0f0000 	lui	t7,0x0
 9e4:	25ef0000 	addiu	t7,t7,0
 9e8:	af0f025c 	sw	t7,604(t8)
 9ec:	8fbf0024 	lw	ra,36(sp)
 9f0:	27bd0028 	addiu	sp,sp,40
 9f4:	03e00008 	jr	ra
 9f8:	00000000 	nop

000009fc <func_80A56ACC>:
 9fc:	27bdffe0 	addiu	sp,sp,-32
 a00:	afbf0014 	sw	ra,20(sp)
 a04:	afa50024 	sw	a1,36(sp)
 a08:	c4840164 	lwc1	$f4,356(a0)
 a0c:	00803825 	move	a3,a0
 a10:	afa70020 	sw	a3,32(sp)
 a14:	2484014c 	addiu	a0,a0,332
 a18:	0c000000 	jal	0 <EnHeishi4_Init>
 a1c:	e7a4001c 	swc1	$f4,28(sp)
 a20:	8fa70020 	lw	a3,32(sp)
 a24:	c7a6001c 	lwc1	$f6,28(sp)
 a28:	8fa40024 	lw	a0,36(sp)
 a2c:	c4e80288 	lwc1	$f8,648(a3)
 a30:	00002825 	move	a1,zero
 a34:	24060007 	li	a2,7
 a38:	4606403e 	c.le.s	$f8,$f6
 a3c:	00000000 	nop
 a40:	45020008 	bc1fl	a64 <func_80A56ACC+0x68>
 a44:	8fbf0014 	lw	ra,20(sp)
 a48:	0c000000 	jal	0 <EnHeishi4_Init>
 a4c:	afa70020 	sw	a3,32(sp)
 a50:	8fa70020 	lw	a3,32(sp)
 a54:	3c0e0000 	lui	t6,0x0
 a58:	25ce0000 	addiu	t6,t6,0
 a5c:	acee025c 	sw	t6,604(a3)
 a60:	8fbf0014 	lw	ra,20(sp)
 a64:	27bd0020 	addiu	sp,sp,32
 a68:	03e00008 	jr	ra
 a6c:	00000000 	nop

00000a70 <func_80A56B40>:
 a70:	27bdffe8 	addiu	sp,sp,-24
 a74:	afbf0014 	sw	ra,20(sp)
 a78:	00803025 	move	a2,a0
 a7c:	afa5001c 	sw	a1,28(sp)
 a80:	afa60018 	sw	a2,24(sp)
 a84:	0c000000 	jal	0 <EnHeishi4_Init>
 a88:	2484014c 	addiu	a0,a0,332
 a8c:	8fa60018 	lw	a2,24(sp)
 a90:	8fa4001c 	lw	a0,28(sp)
 a94:	3c050000 	lui	a1,0x0
 a98:	84c30280 	lh	v1,640(a2)
 a9c:	2463fffc 	addiu	v1,v1,-4
 aa0:	00031c00 	sll	v1,v1,0x10
 aa4:	00031c03 	sra	v1,v1,0x10
 aa8:	04630003 	bgezl	v1,ab8 <func_80A56B40+0x48>
 aac:	28610003 	slti	at,v1,3
 ab0:	00001825 	move	v1,zero
 ab4:	28610003 	slti	at,v1,3
 ab8:	54200003 	bnezl	at,ac8 <func_80A56B40+0x58>
 abc:	00037080 	sll	t6,v1,0x2
 ac0:	24030001 	li	v1,1
 ac4:	00037080 	sll	t6,v1,0x2
 ac8:	00ae2821 	addu	a1,a1,t6
 acc:	8ca50020 	lw	a1,32(a1)
 ad0:	0c000000 	jal	0 <EnHeishi4_Init>
 ad4:	afa60018 	sw	a2,24(sp)
 ad8:	10400013 	beqz	v0,b28 <func_80A56B40+0xb8>
 adc:	8fa60018 	lw	a2,24(sp)
 ae0:	90cf02b4 	lbu	t7,692(a2)
 ae4:	55e00023 	bnezl	t7,b74 <func_80A56B40+0x104>
 ae8:	00c02025 	move	a0,a2
 aec:	84c20280 	lh	v0,640(a2)
 af0:	3c180000 	lui	t8,0x0
 af4:	24010004 	li	at,4
 af8:	10400003 	beqz	v0,b08 <func_80A56B40+0x98>
 afc:	27180000 	addiu	t8,t8,0
 b00:	54410004 	bnel	v0,at,b14 <func_80A56B40+0xa4>
 b04:	24010008 	li	at,8
 b08:	10000032 	b	bd4 <func_80A56B40+0x164>
 b0c:	acd8025c 	sw	t8,604(a2)
 b10:	24010008 	li	at,8
 b14:	14410016 	bne	v0,at,b70 <func_80A56B40+0x100>
 b18:	3c190000 	lui	t9,0x0
 b1c:	27390000 	addiu	t9,t9,0
 b20:	1000002c 	b	bd4 <func_80A56B40+0x164>
 b24:	acd9025c 	sw	t9,604(a2)
 b28:	90c802b4 	lbu	t0,692(a2)
 b2c:	51000011 	beqzl	t0,b74 <func_80A56B40+0x104>
 b30:	00c02025 	move	a0,a2
 b34:	84c20280 	lh	v0,640(a2)
 b38:	3c090000 	lui	t1,0x0
 b3c:	24010004 	li	at,4
 b40:	10400003 	beqz	v0,b50 <func_80A56B40+0xe0>
 b44:	25290000 	addiu	t1,t1,0
 b48:	54410004 	bnel	v0,at,b5c <func_80A56B40+0xec>
 b4c:	24010008 	li	at,8
 b50:	10000020 	b	bd4 <func_80A56B40+0x164>
 b54:	acc9025c 	sw	t1,604(a2)
 b58:	24010008 	li	at,8
 b5c:	14410004 	bne	v0,at,b70 <func_80A56B40+0x100>
 b60:	3c0a0000 	lui	t2,0x0
 b64:	254a0000 	addiu	t2,t2,0
 b68:	1000001a 	b	bd4 <func_80A56B40+0x164>
 b6c:	acca025c 	sw	t2,604(a2)
 b70:	00c02025 	move	a0,a2
 b74:	8fa5001c 	lw	a1,28(sp)
 b78:	0c000000 	jal	0 <EnHeishi4_Init>
 b7c:	afa60018 	sw	a2,24(sp)
 b80:	10400011 	beqz	v0,bc8 <func_80A56B40+0x158>
 b84:	8fa60018 	lw	a2,24(sp)
 b88:	84c20280 	lh	v0,640(a2)
 b8c:	24010004 	li	at,4
 b90:	240b0001 	li	t3,1
 b94:	10400002 	beqz	v0,ba0 <func_80A56B40+0x130>
 b98:	3c0c0000 	lui	t4,0x0
 b9c:	14410004 	bne	v0,at,bb0 <func_80A56B40+0x140>
 ba0:	258c0000 	addiu	t4,t4,0
 ba4:	a4cb0284 	sh	t3,644(a2)
 ba8:	1000000a 	b	bd4 <func_80A56B40+0x164>
 bac:	accc025c 	sw	t4,604(a2)
 bb0:	24010008 	li	at,8
 bb4:	14410004 	bne	v0,at,bc8 <func_80A56B40+0x158>
 bb8:	3c0d0000 	lui	t5,0x0
 bbc:	25ad0000 	addiu	t5,t5,0
 bc0:	10000004 	b	bd4 <func_80A56B40+0x164>
 bc4:	accd025c 	sw	t5,604(a2)
 bc8:	00c02025 	move	a0,a2
 bcc:	0c000000 	jal	0 <EnHeishi4_Init>
 bd0:	8fa5001c 	lw	a1,28(sp)
 bd4:	8fbf0014 	lw	ra,20(sp)
 bd8:	27bd0018 	addiu	sp,sp,24
 bdc:	03e00008 	jr	ra
 be0:	00000000 	nop

00000be4 <EnHeishi4_Update>:
 be4:	27bdffc8 	addiu	sp,sp,-56
 be8:	afb10020 	sw	s1,32(sp)
 bec:	afb0001c 	sw	s0,28(sp)
 bf0:	afbf0024 	sw	ra,36(sp)
 bf4:	8ca21c44 	lw	v0,7236(a1)
 bf8:	c484026c 	lwc1	$f4,620(a0)
 bfc:	c4860270 	lwc1	$f6,624(a0)
 c00:	c4880274 	lwc1	$f8,628(a0)
 c04:	00808025 	move	s0,a0
 c08:	00a08825 	move	s1,a1
 c0c:	e4840024 	swc1	$f4,36(a0)
 c10:	e4860028 	swc1	$f6,40(a0)
 c14:	e488002c 	swc1	$f8,44(a0)
 c18:	8e050278 	lw	a1,632(s0)
 c1c:	0c000000 	jal	0 <EnHeishi4_Init>
 c20:	afa2002c 	sw	v0,44(sp)
 c24:	860e0280 	lh	t6,640(s0)
 c28:	24010007 	li	at,7
 c2c:	8fa2002c 	lw	v0,44(sp)
 c30:	11c10021 	beq	t6,at,cb8 <EnHeishi4_Update+0xd4>
 c34:	02002025 	move	a0,s0
 c38:	8c580024 	lw	t8,36(v0)
 c3c:	3c190000 	lui	t9,0x0
 c40:	3c014120 	lui	at,0x4120
 c44:	ae1802a4 	sw	t8,676(s0)
 c48:	8c4f0028 	lw	t7,40(v0)
 c4c:	2605028c 	addiu	a1,s0,652
 c50:	24060002 	li	a2,2
 c54:	ae0f02a8 	sw	t7,680(s0)
 c58:	8c58002c 	lw	t8,44(v0)
 c5c:	ae1802ac 	sw	t8,684(s0)
 c60:	8f390004 	lw	t9,4(t9)
 c64:	13200006 	beqz	t9,c80 <EnHeishi4_Update+0x9c>
 c68:	00000000 	nop
 c6c:	c44a0028 	lwc1	$f10,40(v0)
 c70:	44818000 	mtc1	at,$f16
 c74:	00000000 	nop
 c78:	46105481 	sub.s	$f18,$f10,$f16
 c7c:	e61202a8 	swc1	$f18,680(s0)
 c80:	0c000000 	jal	0 <EnHeishi4_Init>
 c84:	24070004 	li	a3,4
 c88:	8a090294 	lwl	t1,660(s0)
 c8c:	8a0b029a 	lwl	t3,666(s0)
 c90:	9a090297 	lwr	t1,663(s0)
 c94:	9a0b029d 	lwr	t3,669(s0)
 c98:	aa090260 	swl	t1,608(s0)
 c9c:	aa0b0266 	swl	t3,614(s0)
 ca0:	ba090263 	swr	t1,611(s0)
 ca4:	ba0b0269 	swr	t3,617(s0)
 ca8:	96090298 	lhu	t1,664(s0)
 cac:	960b029e 	lhu	t3,670(s0)
 cb0:	a6090264 	sh	t1,612(s0)
 cb4:	a60b026a 	sh	t3,618(s0)
 cb8:	860c027e 	lh	t4,638(s0)
 cbc:	8e19025c 	lw	t9,604(s0)
 cc0:	02002025 	move	a0,s0
 cc4:	258d0001 	addiu	t5,t4,1
 cc8:	a60d027e 	sh	t5,638(s0)
 ccc:	0320f809 	jalr	t9
 cd0:	02202825 	move	a1,s1
 cd4:	0c000000 	jal	0 <EnHeishi4_Init>
 cd8:	02002025 	move	a0,s0
 cdc:	3c0141f0 	lui	at,0x41f0
 ce0:	44812000 	mtc1	at,$f4
 ce4:	240e001d 	li	t6,29
 ce8:	afae0014 	sw	t6,20(sp)
 cec:	02202025 	move	a0,s1
 cf0:	02002825 	move	a1,s0
 cf4:	3c064120 	lui	a2,0x4120
 cf8:	3c074120 	lui	a3,0x4120
 cfc:	0c000000 	jal	0 <EnHeishi4_Init>
 d00:	e7a40010 	swc1	$f4,16(sp)
 d04:	260602bc 	addiu	a2,s0,700
 d08:	00c02825 	move	a1,a2
 d0c:	afa60028 	sw	a2,40(sp)
 d10:	0c000000 	jal	0 <EnHeishi4_Init>
 d14:	02002025 	move	a0,s0
 d18:	3c010001 	lui	at,0x1
 d1c:	34211e60 	ori	at,at,0x1e60
 d20:	8fa60028 	lw	a2,40(sp)
 d24:	02212821 	addu	a1,s1,at
 d28:	0c000000 	jal	0 <EnHeishi4_Init>
 d2c:	02202025 	move	a0,s1
 d30:	8fbf0024 	lw	ra,36(sp)
 d34:	8fb0001c 	lw	s0,28(sp)
 d38:	8fb10020 	lw	s1,32(sp)
 d3c:	03e00008 	jr	ra
 d40:	27bd0038 	addiu	sp,sp,56

00000d44 <EnHeishi_OverrideLimbDraw>:
 d44:	24010009 	li	at,9
 d48:	afa40000 	sw	a0,0(sp)
 d4c:	afa60008 	sw	a2,8(sp)
 d50:	14a10007 	bne	a1,at,d70 <EnHeishi_OverrideLimbDraw+0x2c>
 d54:	afa7000c 	sw	a3,12(sp)
 d58:	8fa20014 	lw	v0,20(sp)
 d5c:	8fa30010 	lw	v1,16(sp)
 d60:	844f0268 	lh	t7,616(v0)
 d64:	846e0000 	lh	t6,0(v1)
 d68:	01cfc021 	addu	t8,t6,t7
 d6c:	a4780000 	sh	t8,0(v1)
 d70:	24010010 	li	at,16
 d74:	8fa20014 	lw	v0,20(sp)
 d78:	14a10009 	bne	a1,at,da0 <EnHeishi_OverrideLimbDraw+0x5c>
 d7c:	8fa30010 	lw	v1,16(sp)
 d80:	84790000 	lh	t9,0(v1)
 d84:	84480262 	lh	t0,610(v0)
 d88:	846a0004 	lh	t2,4(v1)
 d8c:	03284821 	addu	t1,t9,t0
 d90:	a4690000 	sh	t1,0(v1)
 d94:	844b0264 	lh	t3,612(v0)
 d98:	014b6021 	addu	t4,t2,t3
 d9c:	a46c0004 	sh	t4,4(v1)
 da0:	03e00008 	jr	ra
 da4:	00001025 	move	v0,zero

00000da8 <EnHeishi4_Draw>:
 da8:	27bdffe0 	addiu	sp,sp,-32
 dac:	afbf001c 	sw	ra,28(sp)
 db0:	afa40020 	sw	a0,32(sp)
 db4:	afa50024 	sw	a1,36(sp)
 db8:	0c000000 	jal	0 <EnHeishi4_Init>
 dbc:	8ca40000 	lw	a0,0(a1)
 dc0:	8fa20020 	lw	v0,32(sp)
 dc4:	3c070000 	lui	a3,0x0
 dc8:	24e70000 	addiu	a3,a3,0
 dcc:	8c450150 	lw	a1,336(v0)
 dd0:	8c46016c 	lw	a2,364(v0)
 dd4:	afa00010 	sw	zero,16(sp)
 dd8:	8fa40024 	lw	a0,36(sp)
 ddc:	0c000000 	jal	0 <EnHeishi4_Init>
 de0:	afa20014 	sw	v0,20(sp)
 de4:	8fbf001c 	lw	ra,28(sp)
 de8:	27bd0020 	addiu	sp,sp,32
 dec:	03e00008 	jr	ra
 df0:	00000000 	nop
	...
