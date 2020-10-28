
build/src/overlays/actors/ovl_En_Js/z_en_js.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <En_Js_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85028c 	sw	a1,652(a0)

00000008 <EnJs_Init>:
   8:	27bdffb0 	addiu	sp,sp,-80
   c:	afb10038 	sw	s1,56(sp)
  10:	afb00034 	sw	s0,52(sp)
  14:	00808025 	move	s0,a0
  18:	00a08825 	move	s1,a1
  1c:	afbf003c 	sw	ra,60(sp)
  20:	24050000 	li	a1,0
  24:	248400b4 	addiu	a0,a0,180
  28:	00003025 	move	a2,zero
  2c:	0c000000 	jal	0 <En_Js_SetupAction>
  30:	3c074210 	lui	a3,0x4210
  34:	26050198 	addiu	a1,s0,408
  38:	3c060000 	lui	a2,0x0
  3c:	3c070000 	lui	a3,0x0
  40:	260e01dc 	addiu	t6,s0,476
  44:	260f022a 	addiu	t7,s0,554
  48:	2418000d 	li	t8,13
  4c:	afb80018 	sw	t8,24(sp)
  50:	afaf0014 	sw	t7,20(sp)
  54:	afae0010 	sw	t6,16(sp)
  58:	24e70000 	addiu	a3,a3,0
  5c:	24c60000 	addiu	a2,a2,0
  60:	afa50044 	sw	a1,68(sp)
  64:	0c000000 	jal	0 <En_Js_SetupAction>
  68:	02202025 	move	a0,s1
  6c:	3c050000 	lui	a1,0x0
  70:	24a50000 	addiu	a1,a1,0
  74:	0c000000 	jal	0 <En_Js_SetupAction>
  78:	8fa40044 	lw	a0,68(sp)
  7c:	2605014c 	addiu	a1,s0,332
  80:	afa50044 	sw	a1,68(sp)
  84:	0c000000 	jal	0 <En_Js_SetupAction>
  88:	02202025 	move	a0,s1
  8c:	3c070000 	lui	a3,0x0
  90:	8fa50044 	lw	a1,68(sp)
  94:	24e70020 	addiu	a3,a3,32
  98:	02202025 	move	a0,s1
  9c:	0c000000 	jal	0 <En_Js_SetupAction>
  a0:	02003025 	move	a2,s0
  a4:	241900ff 	li	t9,255
  a8:	3c053c23 	lui	a1,0x3c23
  ac:	a21900ae 	sb	t9,174(s0)
  b0:	34a5d70a 	ori	a1,a1,0xd70a
  b4:	0c000000 	jal	0 <En_Js_SetupAction>
  b8:	02002025 	move	a0,s0
  bc:	3c050000 	lui	a1,0x0
  c0:	24a50000 	addiu	a1,a1,0
  c4:	0c000000 	jal	0 <En_Js_SetupAction>
  c8:	02002025 	move	a0,s0
  cc:	3c01bf80 	lui	at,0xbf80
  d0:	44812000 	mtc1	at,$f4
  d4:	c6060024 	lwc1	$f6,36(s0)
  d8:	a6000284 	sh	zero,644(s0)
  dc:	e604006c 	swc1	$f4,108(s0)
  e0:	e7a60010 	swc1	$f6,16(sp)
  e4:	c6080028 	lwc1	$f8,40(s0)
  e8:	26241c24 	addiu	a0,s1,7204
  ec:	02002825 	move	a1,s0
  f0:	e7a80014 	swc1	$f8,20(sp)
  f4:	c60a002c 	lwc1	$f10,44(s0)
  f8:	afa00028 	sw	zero,40(sp)
  fc:	afa00024 	sw	zero,36(sp)
 100:	afa00020 	sw	zero,32(sp)
 104:	afa0001c 	sw	zero,28(sp)
 108:	02203025 	move	a2,s1
 10c:	2407016b 	li	a3,363
 110:	0c000000 	jal	0 <En_Js_SetupAction>
 114:	e7aa0018 	swc1	$f10,24(sp)
 118:	8fbf003c 	lw	ra,60(sp)
 11c:	8fb00034 	lw	s0,52(sp)
 120:	8fb10038 	lw	s1,56(sp)
 124:	03e00008 	jr	ra
 128:	27bd0050 	addiu	sp,sp,80

0000012c <EnJs_Destroy>:
 12c:	27bdffe8 	addiu	sp,sp,-24
 130:	00803025 	move	a2,a0
 134:	afbf0014 	sw	ra,20(sp)
 138:	00a02025 	move	a0,a1
 13c:	0c000000 	jal	0 <En_Js_SetupAction>
 140:	24c5014c 	addiu	a1,a2,332
 144:	8fbf0014 	lw	ra,20(sp)
 148:	27bd0018 	addiu	sp,sp,24
 14c:	03e00008 	jr	ra
 150:	00000000 	nop

00000154 <func_80A88F64>:
 154:	27bdffe8 	addiu	sp,sp,-24
 158:	afbf0014 	sw	ra,20(sp)
 15c:	afa5001c 	sw	a1,28(sp)
 160:	afa60020 	sw	a2,32(sp)
 164:	0c000000 	jal	0 <En_Js_SetupAction>
 168:	afa40018 	sw	a0,24(sp)
 16c:	10400003 	beqz	v0,17c <func_80A88F64+0x28>
 170:	8fa40018 	lw	a0,24(sp)
 174:	1000001c 	b	1e8 <func_80A88F64+0x94>
 178:	24020001 	li	v0,1
 17c:	848f008a 	lh	t7,138(a0)
 180:	849800b6 	lh	t8,182(a0)
 184:	97ae0022 	lhu	t6,34(sp)
 188:	01f81023 	subu	v0,t7,t8
 18c:	00021400 	sll	v0,v0,0x10
 190:	00021403 	sra	v0,v0,0x10
 194:	04400003 	bltz	v0,1a4 <func_80A88F64+0x50>
 198:	a48e010e 	sh	t6,270(a0)
 19c:	10000002 	b	1a8 <func_80A88F64+0x54>
 1a0:	00401825 	move	v1,v0
 1a4:	00021823 	negu	v1,v0
 1a8:	28611801 	slti	at,v1,6145
 1ac:	1020000d 	beqz	at,1e4 <func_80A88F64+0x90>
 1b0:	3c0142c8 	lui	at,0x42c8
 1b4:	44810000 	mtc1	at,$f0
 1b8:	c4840090 	lwc1	$f4,144(a0)
 1bc:	4600203c 	c.lt.s	$f4,$f0
 1c0:	00000000 	nop
 1c4:	45020008 	bc1fl	1e8 <func_80A88F64+0x94>
 1c8:	00001025 	move	v0,zero
 1cc:	94990284 	lhu	t9,644(a0)
 1d0:	44060000 	mfc1	a2,$f0
 1d4:	37280001 	ori	t0,t9,0x1
 1d8:	a4880284 	sh	t0,644(a0)
 1dc:	0c000000 	jal	0 <En_Js_SetupAction>
 1e0:	8fa5001c 	lw	a1,28(sp)
 1e4:	00001025 	move	v0,zero
 1e8:	8fbf0014 	lw	ra,20(sp)
 1ec:	27bd0018 	addiu	sp,sp,24
 1f0:	03e00008 	jr	ra
 1f4:	00000000 	nop

000001f8 <func_80A89008>:
 1f8:	27bdffd8 	addiu	sp,sp,-40
 1fc:	afbf0024 	sw	ra,36(sp)
 200:	3c050000 	lui	a1,0x0
 204:	afa40028 	sw	a0,40(sp)
 208:	0c000000 	jal	0 <En_Js_SetupAction>
 20c:	24a50000 	addiu	a1,a1,0
 210:	3c040000 	lui	a0,0x0
 214:	0c000000 	jal	0 <En_Js_SetupAction>
 218:	24840000 	addiu	a0,a0,0
 21c:	44822000 	mtc1	v0,$f4
 220:	3c01c080 	lui	at,0xc080
 224:	44814000 	mtc1	at,$f8
 228:	468021a0 	cvt.s.w	$f6,$f4
 22c:	8fa40028 	lw	a0,40(sp)
 230:	3c050000 	lui	a1,0x0
 234:	240e0002 	li	t6,2
 238:	afae0014 	sw	t6,20(sp)
 23c:	24a50000 	addiu	a1,a1,0
 240:	e7a60010 	swc1	$f6,16(sp)
 244:	3c063f80 	lui	a2,0x3f80
 248:	24070000 	li	a3,0
 24c:	e7a80018 	swc1	$f8,24(sp)
 250:	0c000000 	jal	0 <En_Js_SetupAction>
 254:	24840198 	addiu	a0,a0,408
 258:	8fbf0024 	lw	ra,36(sp)
 25c:	27bd0028 	addiu	sp,sp,40
 260:	03e00008 	jr	ra
 264:	00000000 	nop

00000268 <func_80A89078>:
 268:	27bdffe8 	addiu	sp,sp,-24
 26c:	afbf0014 	sw	ra,20(sp)
 270:	0c000000 	jal	0 <En_Js_SetupAction>
 274:	afa40018 	sw	a0,24(sp)
 278:	5040000a 	beqzl	v0,2a4 <func_80A89078+0x3c>
 27c:	8fbf0014 	lw	ra,20(sp)
 280:	0c000000 	jal	0 <En_Js_SetupAction>
 284:	8fa40018 	lw	a0,24(sp)
 288:	8fae0018 	lw	t6,24(sp)
 28c:	3c01fffe 	lui	at,0xfffe
 290:	3421ffff 	ori	at,at,0xffff
 294:	8dcf0004 	lw	t7,4(t6)
 298:	01e1c024 	and	t8,t7,at
 29c:	add80004 	sw	t8,4(t6)
 2a0:	8fbf0014 	lw	ra,20(sp)
 2a4:	27bd0018 	addiu	sp,sp,24
 2a8:	03e00008 	jr	ra
 2ac:	00000000 	nop

000002b0 <func_80A890C0>:
 2b0:	27bdffe8 	addiu	sp,sp,-24
 2b4:	afbf0014 	sw	ra,20(sp)
 2b8:	afa5001c 	sw	a1,28(sp)
 2bc:	0c000000 	jal	0 <En_Js_SetupAction>
 2c0:	afa40018 	sw	a0,24(sp)
 2c4:	10400006 	beqz	v0,2e0 <func_80A890C0+0x30>
 2c8:	8fa40018 	lw	a0,24(sp)
 2cc:	3c050000 	lui	a1,0x0
 2d0:	0c000000 	jal	0 <En_Js_SetupAction>
 2d4:	24a50000 	addiu	a1,a1,0
 2d8:	10000005 	b	2f0 <func_80A890C0+0x40>
 2dc:	8fbf0014 	lw	ra,20(sp)
 2e0:	8fa5001c 	lw	a1,28(sp)
 2e4:	0c000000 	jal	0 <En_Js_SetupAction>
 2e8:	3c06447a 	lui	a2,0x447a
 2ec:	8fbf0014 	lw	ra,20(sp)
 2f0:	27bd0018 	addiu	sp,sp,24
 2f4:	03e00008 	jr	ra
 2f8:	00000000 	nop

000002fc <func_80A8910C>:
 2fc:	27bdffe8 	addiu	sp,sp,-24
 300:	afbf0014 	sw	ra,20(sp)
 304:	0c000000 	jal	0 <En_Js_SetupAction>
 308:	afa40018 	sw	a0,24(sp)
 30c:	1040000c 	beqz	v0,340 <func_80A8910C+0x44>
 310:	8fa40018 	lw	a0,24(sp)
 314:	240e6078 	li	t6,24696
 318:	a48e010e 	sh	t6,270(a0)
 31c:	3c050000 	lui	a1,0x0
 320:	24a50000 	addiu	a1,a1,0
 324:	0c000000 	jal	0 <En_Js_SetupAction>
 328:	afa40018 	sw	a0,24(sp)
 32c:	8fa40018 	lw	a0,24(sp)
 330:	3c010001 	lui	at,0x1
 334:	8c8f0004 	lw	t7,4(a0)
 338:	01e1c025 	or	t8,t7,at
 33c:	ac980004 	sw	t8,4(a0)
 340:	8fbf0014 	lw	ra,20(sp)
 344:	27bd0018 	addiu	sp,sp,24
 348:	03e00008 	jr	ra
 34c:	00000000 	nop

00000350 <func_80A89160>:
 350:	27bdffe0 	addiu	sp,sp,-32
 354:	afbf001c 	sw	ra,28(sp)
 358:	afa50024 	sw	a1,36(sp)
 35c:	0c000000 	jal	0 <En_Js_SetupAction>
 360:	afa40020 	sw	a0,32(sp)
 364:	10400007 	beqz	v0,384 <func_80A89160+0x34>
 368:	8fa40020 	lw	a0,32(sp)
 36c:	3c050000 	lui	a1,0x0
 370:	ac800118 	sw	zero,280(a0)
 374:	0c000000 	jal	0 <En_Js_SetupAction>
 378:	24a50000 	addiu	a1,a1,0
 37c:	1000000a 	b	3a8 <func_80A89160+0x58>
 380:	8fbf001c 	lw	ra,28(sp)
 384:	3c014248 	lui	at,0x4248
 388:	44812000 	mtc1	at,$f4
 38c:	3c07461c 	lui	a3,0x461c
 390:	34e74000 	ori	a3,a3,0x4000
 394:	8fa50024 	lw	a1,36(sp)
 398:	24060003 	li	a2,3
 39c:	0c000000 	jal	0 <En_Js_SetupAction>
 3a0:	e7a40010 	swc1	$f4,16(sp)
 3a4:	8fbf001c 	lw	ra,28(sp)
 3a8:	27bd0020 	addiu	sp,sp,32
 3ac:	03e00008 	jr	ra
 3b0:	00000000 	nop

000003b4 <func_80A891C4>:
 3b4:	27bdffe8 	addiu	sp,sp,-24
 3b8:	afbf0014 	sw	ra,20(sp)
 3bc:	afa40018 	sw	a0,24(sp)
 3c0:	24a420d8 	addiu	a0,a1,8408
 3c4:	0c000000 	jal	0 <En_Js_SetupAction>
 3c8:	afa5001c 	sw	a1,28(sp)
 3cc:	24010004 	li	at,4
 3d0:	14410028 	bne	v0,at,474 <func_80A891C4+0xc0>
 3d4:	8fa6001c 	lw	a2,28(sp)
 3d8:	00c02025 	move	a0,a2
 3dc:	0c000000 	jal	0 <En_Js_SetupAction>
 3e0:	afa6001c 	sw	a2,28(sp)
 3e4:	10400023 	beqz	v0,474 <func_80A891C4+0xc0>
 3e8:	8fa6001c 	lw	a2,28(sp)
 3ec:	3c020001 	lui	v0,0x1
 3f0:	00461021 	addu	v0,v0,a2
 3f4:	904204bd 	lbu	v0,1213(v0)
 3f8:	24010001 	li	at,1
 3fc:	3c0e0000 	lui	t6,0x0
 400:	10400005 	beqz	v0,418 <func_80A891C4+0x64>
 404:	00000000 	nop
 408:	10410016 	beq	v0,at,464 <func_80A891C4+0xb0>
 40c:	00c02025 	move	a0,a2
 410:	10000019 	b	478 <func_80A891C4+0xc4>
 414:	8fbf0014 	lw	ra,20(sp)
 418:	85ce0034 	lh	t6,52(t6)
 41c:	00c02025 	move	a0,a2
 420:	29c100c8 	slti	at,t6,200
 424:	10200007 	beqz	at,444 <func_80A891C4+0x90>
 428:	00000000 	nop
 42c:	0c000000 	jal	0 <En_Js_SetupAction>
 430:	24056075 	li	a1,24693
 434:	0c000000 	jal	0 <En_Js_SetupAction>
 438:	8fa40018 	lw	a0,24(sp)
 43c:	1000000e 	b	478 <func_80A891C4+0xc4>
 440:	8fbf0014 	lw	ra,20(sp)
 444:	0c000000 	jal	0 <En_Js_SetupAction>
 448:	2404ff38 	li	a0,-200
 44c:	3c050000 	lui	a1,0x0
 450:	24a50000 	addiu	a1,a1,0
 454:	0c000000 	jal	0 <En_Js_SetupAction>
 458:	8fa40018 	lw	a0,24(sp)
 45c:	10000006 	b	478 <func_80A891C4+0xc4>
 460:	8fbf0014 	lw	ra,20(sp)
 464:	0c000000 	jal	0 <En_Js_SetupAction>
 468:	24056074 	li	a1,24692
 46c:	0c000000 	jal	0 <En_Js_SetupAction>
 470:	8fa40018 	lw	a0,24(sp)
 474:	8fbf0014 	lw	ra,20(sp)
 478:	27bd0018 	addiu	sp,sp,24
 47c:	03e00008 	jr	ra
 480:	00000000 	nop

00000484 <func_80A89294>:
 484:	27bdffd8 	addiu	sp,sp,-40
 488:	afbf0024 	sw	ra,36(sp)
 48c:	3c050000 	lui	a1,0x0
 490:	afa40028 	sw	a0,40(sp)
 494:	0c000000 	jal	0 <En_Js_SetupAction>
 498:	24a50000 	addiu	a1,a1,0
 49c:	3c040000 	lui	a0,0x0
 4a0:	0c000000 	jal	0 <En_Js_SetupAction>
 4a4:	24840000 	addiu	a0,a0,0
 4a8:	44822000 	mtc1	v0,$f4
 4ac:	3c01c080 	lui	at,0xc080
 4b0:	44814000 	mtc1	at,$f8
 4b4:	468021a0 	cvt.s.w	$f6,$f4
 4b8:	8fa40028 	lw	a0,40(sp)
 4bc:	3c050000 	lui	a1,0x0
 4c0:	240e0002 	li	t6,2
 4c4:	afae0014 	sw	t6,20(sp)
 4c8:	24a50000 	addiu	a1,a1,0
 4cc:	e7a60010 	swc1	$f6,16(sp)
 4d0:	3c063f80 	lui	a2,0x3f80
 4d4:	24070000 	li	a3,0
 4d8:	e7a80018 	swc1	$f8,24(sp)
 4dc:	0c000000 	jal	0 <En_Js_SetupAction>
 4e0:	24840198 	addiu	a0,a0,408
 4e4:	8fbf0024 	lw	ra,36(sp)
 4e8:	27bd0028 	addiu	sp,sp,40
 4ec:	03e00008 	jr	ra
 4f0:	00000000 	nop

000004f4 <func_80A89304>:
 4f4:	27bdffe8 	addiu	sp,sp,-24
 4f8:	afbf0014 	sw	ra,20(sp)
 4fc:	afa40018 	sw	a0,24(sp)
 500:	0c000000 	jal	0 <En_Js_SetupAction>
 504:	24066077 	li	a2,24695
 508:	50400004 	beqzl	v0,51c <func_80A89304+0x28>
 50c:	8fbf0014 	lw	ra,20(sp)
 510:	0c000000 	jal	0 <En_Js_SetupAction>
 514:	8fa40018 	lw	a0,24(sp)
 518:	8fbf0014 	lw	ra,20(sp)
 51c:	27bd0018 	addiu	sp,sp,24
 520:	03e00008 	jr	ra
 524:	00000000 	nop

00000528 <EnJs_Update>:
 528:	27bdffb8 	addiu	sp,sp,-72
 52c:	afb00028 	sw	s0,40(sp)
 530:	00808025 	move	s0,a0
 534:	afbf002c 	sw	ra,44(sp)
 538:	afa5004c 	sw	a1,76(sp)
 53c:	2606014c 	addiu	a2,s0,332
 540:	00c02825 	move	a1,a2
 544:	0c000000 	jal	0 <En_Js_SetupAction>
 548:	afa60034 	sw	a2,52(sp)
 54c:	8fa4004c 	lw	a0,76(sp)
 550:	3c010001 	lui	at,0x1
 554:	34211e60 	ori	at,at,0x1e60
 558:	8fa60034 	lw	a2,52(sp)
 55c:	0c000000 	jal	0 <En_Js_SetupAction>
 560:	00812821 	addu	a1,a0,at
 564:	0c000000 	jal	0 <En_Js_SetupAction>
 568:	02002025 	move	a0,s0
 56c:	44800000 	mtc1	zero,$f0
 570:	240e0004 	li	t6,4
 574:	afae0014 	sw	t6,20(sp)
 578:	44060000 	mfc1	a2,$f0
 57c:	44070000 	mfc1	a3,$f0
 580:	8fa4004c 	lw	a0,76(sp)
 584:	02002825 	move	a1,s0
 588:	0c000000 	jal	0 <En_Js_SetupAction>
 58c:	e7a00010 	swc1	$f0,16(sp)
 590:	960f0088 	lhu	t7,136(s0)
 594:	8fa4004c 	lw	a0,76(sp)
 598:	3c090000 	lui	t1,0x0
 59c:	31f80001 	andi	t8,t7,0x1
 5a0:	1300001f 	beqz	t8,620 <EnJs_Update+0xf8>
 5a4:	248407c0 	addiu	a0,a0,1984
 5a8:	8e050078 	lw	a1,120(s0)
 5ac:	0c000000 	jal	0 <En_Js_SetupAction>
 5b0:	9206007d 	lbu	a2,125(s0)
 5b4:	24010001 	li	at,1
 5b8:	14410028 	bne	v0,at,65c <EnJs_Update+0x134>
 5bc:	3c020000 	lui	v0,0x0
 5c0:	8c420000 	lw	v0,0(v0)
 5c4:	3c01c4fa 	lui	at,0xc4fa
 5c8:	44814000 	mtc1	at,$f8
 5cc:	84590cb4 	lh	t9,3252(v0)
 5d0:	84480cb6 	lh	t0,3254(v0)
 5d4:	3c014120 	lui	at,0x4120
 5d8:	44992000 	mtc1	t9,$f4
 5dc:	44888000 	mtc1	t0,$f16
 5e0:	260400bc 	addiu	a0,s0,188
 5e4:	468021a0 	cvt.s.w	$f6,$f4
 5e8:	44812000 	mtc1	at,$f4
 5ec:	3c014248 	lui	at,0x4248
 5f0:	3c063f80 	lui	a2,0x3f80
 5f4:	468084a0 	cvt.s.w	$f18,$f16
 5f8:	46083280 	add.s	$f10,$f6,$f8
 5fc:	44814000 	mtc1	at,$f8
 600:	46049183 	div.s	$f6,$f18,$f4
 604:	44055000 	mfc1	a1,$f10
 608:	46083280 	add.s	$f10,$f6,$f8
 60c:	44075000 	mfc1	a3,$f10
 610:	0c000000 	jal	0 <En_Js_SetupAction>
 614:	00000000 	nop
 618:	10000010 	b	65c <EnJs_Update+0x134>
 61c:	00000000 	nop
 620:	8d290000 	lw	t1,0(t1)
 624:	3c014120 	lui	at,0x4120
 628:	44812000 	mtc1	at,$f4
 62c:	852a0cb6 	lh	t2,3254(t1)
 630:	3c014248 	lui	at,0x4248
 634:	44814000 	mtc1	at,$f8
 638:	448a8000 	mtc1	t2,$f16
 63c:	260400bc 	addiu	a0,s0,188
 640:	3c053f80 	lui	a1,0x3f80
 644:	468084a0 	cvt.s.w	$f18,$f16
 648:	46049183 	div.s	$f6,$f18,$f4
 64c:	46083280 	add.s	$f10,$f6,$f8
 650:	44065000 	mfc1	a2,$f10
 654:	0c000000 	jal	0 <En_Js_SetupAction>
 658:	00000000 	nop
 65c:	0c000000 	jal	0 <En_Js_SetupAction>
 660:	26040198 	addiu	a0,s0,408
 664:	50400005 	beqzl	v0,67c <EnJs_Update+0x154>
 668:	8e19028c 	lw	t9,652(s0)
 66c:	44808000 	mtc1	zero,$f16
 670:	00000000 	nop
 674:	e61001b0 	swc1	$f16,432(s0)
 678:	8e19028c 	lw	t9,652(s0)
 67c:	02002025 	move	a0,s0
 680:	8fa5004c 	lw	a1,76(sp)
 684:	0320f809 	jalr	t9
 688:	00000000 	nop
 68c:	960b0284 	lhu	t3,644(s0)
 690:	26040278 	addiu	a0,s0,632
 694:	00002825 	move	a1,zero
 698:	316c0001 	andi	t4,t3,0x1
 69c:	1180000e 	beqz	t4,6d8 <EnJs_Update+0x1b0>
 6a0:	24060006 	li	a2,6
 6a4:	8e0e0038 	lw	t6,56(s0)
 6a8:	8fa4004c 	lw	a0,76(sp)
 6ac:	02002825 	move	a1,s0
 6b0:	afae0010 	sw	t6,16(sp)
 6b4:	8e0d003c 	lw	t5,60(s0)
 6b8:	26060278 	addiu	a2,s0,632
 6bc:	2607027e 	addiu	a3,s0,638
 6c0:	afad0014 	sw	t5,20(sp)
 6c4:	8e0e0040 	lw	t6,64(s0)
 6c8:	0c000000 	jal	0 <En_Js_SetupAction>
 6cc:	afae0018 	sw	t6,24(sp)
 6d0:	1000001b 	b	740 <EnJs_Update+0x218>
 6d4:	960a0284 	lhu	t2,644(s0)
 6d8:	240f0064 	li	t7,100
 6dc:	afaf0010 	sw	t7,16(sp)
 6e0:	0c000000 	jal	0 <En_Js_SetupAction>
 6e4:	24071838 	li	a3,6200
 6e8:	24180064 	li	t8,100
 6ec:	afb80010 	sw	t8,16(sp)
 6f0:	2604027a 	addiu	a0,s0,634
 6f4:	00002825 	move	a1,zero
 6f8:	24060006 	li	a2,6
 6fc:	0c000000 	jal	0 <En_Js_SetupAction>
 700:	24071838 	li	a3,6200
 704:	24080064 	li	t0,100
 708:	afa80010 	sw	t0,16(sp)
 70c:	2604027e 	addiu	a0,s0,638
 710:	00002825 	move	a1,zero
 714:	24060006 	li	a2,6
 718:	0c000000 	jal	0 <En_Js_SetupAction>
 71c:	24071838 	li	a3,6200
 720:	24090064 	li	t1,100
 724:	afa90010 	sw	t1,16(sp)
 728:	26040280 	addiu	a0,s0,640
 72c:	00002825 	move	a1,zero
 730:	24060006 	li	a2,6
 734:	0c000000 	jal	0 <En_Js_SetupAction>
 738:	24071838 	li	a3,6200
 73c:	960a0284 	lhu	t2,644(s0)
 740:	86030288 	lh	v1,648(s0)
 744:	2404003c 	li	a0,60
 748:	3159fffe 	andi	t9,t2,0xfffe
 74c:	14600003 	bnez	v1,75c <EnJs_Update+0x234>
 750:	a6190284 	sh	t9,644(s0)
 754:	10000005 	b	76c <EnJs_Update+0x244>
 758:	00001025 	move	v0,zero
 75c:	246bffff 	addiu	t3,v1,-1
 760:	a60b0288 	sh	t3,648(s0)
 764:	86030288 	lh	v1,648(s0)
 768:	00601025 	move	v0,v1
 76c:	54400006 	bnezl	v0,788 <EnJs_Update+0x260>
 770:	a6030286 	sh	v1,646(s0)
 774:	0c000000 	jal	0 <En_Js_SetupAction>
 778:	2405003c 	li	a1,60
 77c:	a6020288 	sh	v0,648(s0)
 780:	86030288 	lh	v1,648(s0)
 784:	a6030286 	sh	v1,646(s0)
 788:	860c0286 	lh	t4,646(s0)
 78c:	29810003 	slti	at,t4,3
 790:	54200003 	bnezl	at,7a0 <EnJs_Update+0x278>
 794:	8fbf002c 	lw	ra,44(sp)
 798:	a6000286 	sh	zero,646(s0)
 79c:	8fbf002c 	lw	ra,44(sp)
 7a0:	8fb00028 	lw	s0,40(sp)
 7a4:	27bd0048 	addiu	sp,sp,72
 7a8:	03e00008 	jr	ra
 7ac:	00000000 	nop

000007b0 <EnJs_OverrideLimbDraw>:
 7b0:	2401000c 	li	at,12
 7b4:	afa40000 	sw	a0,0(sp)
 7b8:	afa60008 	sw	a2,8(sp)
 7bc:	14a10007 	bne	a1,at,7dc <EnJs_OverrideLimbDraw+0x2c>
 7c0:	afa7000c 	sw	a3,12(sp)
 7c4:	8fa20010 	lw	v0,16(sp)
 7c8:	8faf0014 	lw	t7,20(sp)
 7cc:	844e0002 	lh	t6,2(v0)
 7d0:	85f8027a 	lh	t8,634(t7)
 7d4:	01d8c823 	subu	t9,t6,t8
 7d8:	a4590002 	sh	t9,2(v0)
 7dc:	03e00008 	jr	ra
 7e0:	00001025 	move	v0,zero

000007e4 <EnJs_PostLimbDraw>:
 7e4:	27bdffe8 	addiu	sp,sp,-24
 7e8:	2401000c 	li	at,12
 7ec:	afbf0014 	sw	ra,20(sp)
 7f0:	afa40018 	sw	a0,24(sp)
 7f4:	afa60020 	sw	a2,32(sp)
 7f8:	14a10006 	bne	a1,at,814 <EnJs_PostLimbDraw+0x30>
 7fc:	afa70024 	sw	a3,36(sp)
 800:	8fa50028 	lw	a1,40(sp)
 804:	3c040000 	lui	a0,0x0
 808:	2484004c 	addiu	a0,a0,76
 80c:	0c000000 	jal	0 <En_Js_SetupAction>
 810:	24a50038 	addiu	a1,a1,56
 814:	8fbf0014 	lw	ra,20(sp)
 818:	27bd0018 	addiu	sp,sp,24
 81c:	03e00008 	jr	ra
 820:	00000000 	nop

00000824 <EnJs_Draw>:
 824:	27bdffd8 	addiu	sp,sp,-40
 828:	afbf0024 	sw	ra,36(sp)
 82c:	afa40028 	sw	a0,40(sp)
 830:	afa5002c 	sw	a1,44(sp)
 834:	0c000000 	jal	0 <En_Js_SetupAction>
 838:	8ca40000 	lw	a0,0(a1)
 83c:	8fa20028 	lw	v0,40(sp)
 840:	3c0f0000 	lui	t7,0x0
 844:	3c180000 	lui	t8,0x0
 848:	8c45019c 	lw	a1,412(v0)
 84c:	8c4601b8 	lw	a2,440(v0)
 850:	9047019a 	lbu	a3,410(v0)
 854:	27180000 	addiu	t8,t8,0
 858:	25ef0000 	addiu	t7,t7,0
 85c:	afaf0010 	sw	t7,16(sp)
 860:	afb80014 	sw	t8,20(sp)
 864:	8fa4002c 	lw	a0,44(sp)
 868:	0c000000 	jal	0 <En_Js_SetupAction>
 86c:	afa20018 	sw	v0,24(sp)
 870:	8fbf0024 	lw	ra,36(sp)
 874:	27bd0028 	addiu	sp,sp,40
 878:	03e00008 	jr	ra
 87c:	00000000 	nop
