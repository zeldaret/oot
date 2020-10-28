
build/src/overlays/actors/ovl_En_Ge3/z_en_ge3.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A34620>:
   0:	00051080 	sll	v0,a1,0x2
   4:	3c0e0000 	lui	t6,0x0
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	01c27021 	addu	t6,t6,v0
  10:	8dce0000 	lw	t6,0(t6)
  14:	3c180000 	lui	t8,0x0
  18:	afbf0024 	sw	ra,36(sp)
  1c:	afa40030 	sw	a0,48(sp)
  20:	afa50034 	sw	a1,52(sp)
  24:	27180000 	addiu	t8,t8,0
  28:	00581821 	addu	v1,v0,t8
  2c:	ac8e0310 	sw	t6,784(a0)
  30:	afa30028 	sw	v1,40(sp)
  34:	0c000000 	jal	0 <func_80A34620>
  38:	8c640000 	lw	a0,0(v1)
  3c:	44822000 	mtc1	v0,$f4
  40:	8fb90034 	lw	t9,52(sp)
  44:	3c080000 	lui	t0,0x0
  48:	468021a0 	cvt.s.w	$f6,$f4
  4c:	3c01c100 	lui	at,0xc100
  50:	01194021 	addu	t0,t0,t9
  54:	91080000 	lbu	t0,0(t0)
  58:	44814000 	mtc1	at,$f8
  5c:	8fa30028 	lw	v1,40(sp)
  60:	8fa40030 	lw	a0,48(sp)
  64:	e7a60010 	swc1	$f6,16(sp)
  68:	3c063f80 	lui	a2,0x3f80
  6c:	24070000 	li	a3,0
  70:	afa80014 	sw	t0,20(sp)
  74:	8c650000 	lw	a1,0(v1)
  78:	e7a80018 	swc1	$f8,24(sp)
  7c:	0c000000 	jal	0 <func_80A34620>
  80:	24840198 	addiu	a0,a0,408
  84:	8fa20030 	lw	v0,48(sp)
  88:	9449030c 	lhu	t1,780(v0)
  8c:	312afffd 	andi	t2,t1,0xfffd
  90:	a44a030c 	sh	t2,780(v0)
  94:	8fbf0024 	lw	ra,36(sp)
  98:	27bd0030 	addiu	sp,sp,48
  9c:	03e00008 	jr	ra
  a0:	00000000 	nop

000000a4 <EnGe3_Init>:
  a4:	27bdffc0 	addiu	sp,sp,-64
  a8:	afb00028 	sw	s0,40(sp)
  ac:	00808025 	move	s0,a0
  b0:	afbf002c 	sw	ra,44(sp)
  b4:	afa50044 	sw	a1,68(sp)
  b8:	3c060000 	lui	a2,0x0
  bc:	24c60000 	addiu	a2,a2,0
  c0:	24050000 	li	a1,0
  c4:	248400b4 	addiu	a0,a0,180
  c8:	0c000000 	jal	0 <func_80A34620>
  cc:	3c074210 	lui	a3,0x4210
  d0:	26050198 	addiu	a1,s0,408
  d4:	3c060601 	lui	a2,0x601
  d8:	260e01dc 	addiu	t6,s0,476
  dc:	260f026c 	addiu	t7,s0,620
  e0:	24180018 	li	t8,24
  e4:	afb80018 	sw	t8,24(sp)
  e8:	afaf0014 	sw	t7,20(sp)
  ec:	afae0010 	sw	t6,16(sp)
  f0:	24c6a458 	addiu	a2,a2,-23464
  f4:	afa50034 	sw	a1,52(sp)
  f8:	8fa40044 	lw	a0,68(sp)
  fc:	0c000000 	jal	0 <func_80A34620>
 100:	00003825 	move	a3,zero
 104:	3c050601 	lui	a1,0x601
 108:	24a5b07c 	addiu	a1,a1,-20356
 10c:	0c000000 	jal	0 <func_80A34620>
 110:	8fa40034 	lw	a0,52(sp)
 114:	2605014c 	addiu	a1,s0,332
 118:	afa50034 	sw	a1,52(sp)
 11c:	0c000000 	jal	0 <func_80A34620>
 120:	8fa40044 	lw	a0,68(sp)
 124:	3c070000 	lui	a3,0x0
 128:	8fa50034 	lw	a1,52(sp)
 12c:	24e70000 	addiu	a3,a3,0
 130:	8fa40044 	lw	a0,68(sp)
 134:	0c000000 	jal	0 <func_80A34620>
 138:	02003025 	move	a2,s0
 13c:	241900ff 	li	t9,255
 140:	3c053c23 	lui	a1,0x3c23
 144:	a21900ae 	sb	t9,174(s0)
 148:	34a5d70a 	ori	a1,a1,0xd70a
 14c:	0c000000 	jal	0 <func_80A34620>
 150:	02002025 	move	a0,s0
 154:	a6000034 	sh	zero,52(s0)
 158:	a60000b8 	sh	zero,184(s0)
 15c:	02002025 	move	a0,s0
 160:	0c000000 	jal	0 <func_80A34620>
 164:	00002825 	move	a1,zero
 168:	3c01c080 	lui	at,0xc080
 16c:	44812000 	mtc1	at,$f4
 170:	3c01bf80 	lui	at,0xbf80
 174:	44813000 	mtc1	at,$f6
 178:	3c080000 	lui	t0,0x0
 17c:	25080000 	addiu	t0,t0,0
 180:	24090006 	li	t1,6
 184:	ae080310 	sw	t0,784(s0)
 188:	a600030c 	sh	zero,780(s0)
 18c:	a209001f 	sb	t1,31(s0)
 190:	e6040070 	swc1	$f4,112(s0)
 194:	e606006c 	swc1	$f6,108(s0)
 198:	8fbf002c 	lw	ra,44(sp)
 19c:	8fb00028 	lw	s0,40(sp)
 1a0:	27bd0040 	addiu	sp,sp,64
 1a4:	03e00008 	jr	ra
 1a8:	00000000 	nop

000001ac <EnGe3_Destroy>:
 1ac:	27bdffe8 	addiu	sp,sp,-24
 1b0:	00803025 	move	a2,a0
 1b4:	afbf0014 	sw	ra,20(sp)
 1b8:	00a02025 	move	a0,a1
 1bc:	0c000000 	jal	0 <func_80A34620>
 1c0:	24c5014c 	addiu	a1,a2,332
 1c4:	8fbf0014 	lw	ra,20(sp)
 1c8:	27bd0018 	addiu	sp,sp,24
 1cc:	03e00008 	jr	ra
 1d0:	00000000 	nop

000001d4 <func_80A347F4>:
 1d4:	27bdffc0 	addiu	sp,sp,-64
 1d8:	afbf002c 	sw	ra,44(sp)
 1dc:	afb00028 	sw	s0,40(sp)
 1e0:	afa50044 	sw	a1,68(sp)
 1e4:	848e008a 	lh	t6,138(a0)
 1e8:	00808025 	move	s0,a0
 1ec:	24060006 	li	a2,6
 1f0:	afae0030 	sw	t6,48(sp)
 1f4:	849800b6 	lh	t8,182(a0)
 1f8:	260400b6 	addiu	a0,s0,182
 1fc:	87a50032 	lh	a1,50(sp)
 200:	01d81023 	subu	v0,t6,t8
 204:	00021400 	sll	v0,v0,0x10
 208:	00021403 	sra	v0,v0,0x10
 20c:	04400003 	bltz	v0,21c <func_80A347F4+0x48>
 210:	00021823 	negu	v1,v0
 214:	10000001 	b	21c <func_80A347F4+0x48>
 218:	00401825 	move	v1,v0
 21c:	28614001 	slti	at,v1,16385
 220:	10200013 	beqz	at,270 <func_80A347F4+0x9c>
 224:	24070fa0 	li	a3,4000
 228:	24190064 	li	t9,100
 22c:	0c000000 	jal	0 <func_80A34620>
 230:	afb90010 	sw	t9,16(sp)
 234:	860800b6 	lh	t0,182(s0)
 238:	8e0a0038 	lw	t2,56(s0)
 23c:	02002825 	move	a1,s0
 240:	a6080032 	sh	t0,50(s0)
 244:	afaa0010 	sw	t2,16(sp)
 248:	8e09003c 	lw	t1,60(s0)
 24c:	8fa40044 	lw	a0,68(sp)
 250:	26060300 	addiu	a2,s0,768
 254:	afa90014 	sw	t1,20(sp)
 258:	8e0a0040 	lw	t2,64(s0)
 25c:	26070306 	addiu	a3,s0,774
 260:	0c000000 	jal	0 <func_80A34620>
 264:	afaa0018 	sw	t2,24(sp)
 268:	1000001c 	b	2dc <func_80A347F4+0x108>
 26c:	8fbf002c 	lw	ra,44(sp)
 270:	0441000a 	bgez	v0,29c <func_80A347F4+0xc8>
 274:	26040302 	addiu	a0,s0,770
 278:	240b0100 	li	t3,256
 27c:	afab0010 	sw	t3,16(sp)
 280:	26040302 	addiu	a0,s0,770
 284:	2405e000 	li	a1,-8192
 288:	24060006 	li	a2,6
 28c:	0c000000 	jal	0 <func_80A34620>
 290:	24071838 	li	a3,6200
 294:	10000008 	b	2b8 <func_80A347F4+0xe4>
 298:	8605008a 	lh	a1,138(s0)
 29c:	240c0100 	li	t4,256
 2a0:	afac0010 	sw	t4,16(sp)
 2a4:	24052000 	li	a1,8192
 2a8:	24060006 	li	a2,6
 2ac:	0c000000 	jal	0 <func_80A34620>
 2b0:	24071838 	li	a3,6200
 2b4:	8605008a 	lh	a1,138(s0)
 2b8:	240d0064 	li	t5,100
 2bc:	afad0010 	sw	t5,16(sp)
 2c0:	260400b6 	addiu	a0,s0,182
 2c4:	2406000c 	li	a2,12
 2c8:	0c000000 	jal	0 <func_80A34620>
 2cc:	240703e8 	li	a3,1000
 2d0:	860e00b6 	lh	t6,182(s0)
 2d4:	a60e0032 	sh	t6,50(s0)
 2d8:	8fbf002c 	lw	ra,44(sp)
 2dc:	8fb00028 	lw	s0,40(sp)
 2e0:	27bd0040 	addiu	sp,sp,64
 2e4:	03e00008 	jr	ra
 2e8:	00000000 	nop

000002ec <func_80A3490C>:
 2ec:	27bdffd0 	addiu	sp,sp,-48
 2f0:	afbf002c 	sw	ra,44(sp)
 2f4:	afb00028 	sw	s0,40(sp)
 2f8:	afa50034 	sw	a1,52(sp)
 2fc:	848f00b6 	lh	t7,182(a0)
 300:	848e008a 	lh	t6,138(a0)
 304:	00808025 	move	s0,a0
 308:	26040300 	addiu	a0,s0,768
 30c:	01cf1023 	subu	v0,t6,t7
 310:	00021400 	sll	v0,v0,0x10
 314:	00021403 	sra	v0,v0,0x10
 318:	04400003 	bltz	v0,328 <func_80A3490C+0x3c>
 31c:	00021823 	negu	v1,v0
 320:	10000001 	b	328 <func_80A3490C+0x3c>
 324:	00401825 	move	v1,v0
 328:	28612301 	slti	at,v1,8961
 32c:	10200015 	beqz	at,384 <func_80A3490C+0x98>
 330:	00002825 	move	a1,zero
 334:	3c0142c8 	lui	at,0x42c8
 338:	44813000 	mtc1	at,$f6
 33c:	c6040090 	lwc1	$f4,144(s0)
 340:	4606203c 	c.lt.s	$f4,$f6
 344:	00000000 	nop
 348:	4502000f 	bc1fl	388 <func_80A3490C+0x9c>
 34c:	24080064 	li	t0,100
 350:	8e190038 	lw	t9,56(s0)
 354:	8fa40034 	lw	a0,52(sp)
 358:	02002825 	move	a1,s0
 35c:	afb90010 	sw	t9,16(sp)
 360:	8e18003c 	lw	t8,60(s0)
 364:	26060300 	addiu	a2,s0,768
 368:	26070306 	addiu	a3,s0,774
 36c:	afb80014 	sw	t8,20(sp)
 370:	8e190040 	lw	t9,64(s0)
 374:	0c000000 	jal	0 <func_80A34620>
 378:	afb90018 	sw	t9,24(sp)
 37c:	1000001c 	b	3f0 <func_80A3490C+0x104>
 380:	8fbf002c 	lw	ra,44(sp)
 384:	24080064 	li	t0,100
 388:	afa80010 	sw	t0,16(sp)
 38c:	24060006 	li	a2,6
 390:	0c000000 	jal	0 <func_80A34620>
 394:	24071838 	li	a3,6200
 398:	24090064 	li	t1,100
 39c:	afa90010 	sw	t1,16(sp)
 3a0:	26040302 	addiu	a0,s0,770
 3a4:	00002825 	move	a1,zero
 3a8:	24060006 	li	a2,6
 3ac:	0c000000 	jal	0 <func_80A34620>
 3b0:	24071838 	li	a3,6200
 3b4:	240a0064 	li	t2,100
 3b8:	afaa0010 	sw	t2,16(sp)
 3bc:	26040306 	addiu	a0,s0,774
 3c0:	00002825 	move	a1,zero
 3c4:	24060006 	li	a2,6
 3c8:	0c000000 	jal	0 <func_80A34620>
 3cc:	24071838 	li	a3,6200
 3d0:	240b0064 	li	t3,100
 3d4:	afab0010 	sw	t3,16(sp)
 3d8:	26040308 	addiu	a0,s0,776
 3dc:	00002825 	move	a1,zero
 3e0:	24060006 	li	a2,6
 3e4:	0c000000 	jal	0 <func_80A34620>
 3e8:	24071838 	li	a3,6200
 3ec:	8fbf002c 	lw	ra,44(sp)
 3f0:	8fb00028 	lw	s0,40(sp)
 3f4:	27bd0030 	addiu	sp,sp,48
 3f8:	03e00008 	jr	ra
 3fc:	00000000 	nop

00000400 <func_80A34A20>:
 400:	27bdffe8 	addiu	sp,sp,-24
 404:	afbf0014 	sw	ra,20(sp)
 408:	afa5001c 	sw	a1,28(sp)
 40c:	0c000000 	jal	0 <func_80A34620>
 410:	afa40018 	sw	a0,24(sp)
 414:	1040000c 	beqz	v0,448 <func_80A34A20+0x48>
 418:	8fa40018 	lw	a0,24(sp)
 41c:	8c980004 	lw	t8,4(a0)
 420:	3c01fffe 	lui	at,0xfffe
 424:	3c0e0000 	lui	t6,0x0
 428:	3c0f0000 	lui	t7,0x0
 42c:	3421ffff 	ori	at,at,0xffff
 430:	25ce0000 	addiu	t6,t6,0
 434:	25ef0000 	addiu	t7,t7,0
 438:	0301c824 	and	t9,t8,at
 43c:	ac8e0310 	sw	t6,784(a0)
 440:	ac8f0130 	sw	t7,304(a0)
 444:	ac990004 	sw	t9,4(a0)
 448:	0c000000 	jal	0 <func_80A34620>
 44c:	8fa5001c 	lw	a1,28(sp)
 450:	8fbf0014 	lw	ra,20(sp)
 454:	27bd0018 	addiu	sp,sp,24
 458:	03e00008 	jr	ra
 45c:	00000000 	nop

00000460 <func_80A34A80>:
 460:	27bdffe8 	addiu	sp,sp,-24
 464:	afbf0014 	sw	ra,20(sp)
 468:	0c000000 	jal	0 <func_80A34620>
 46c:	00000000 	nop
 470:	8fbf0014 	lw	ra,20(sp)
 474:	27bd0018 	addiu	sp,sp,24
 478:	03e00008 	jr	ra
 47c:	00000000 	nop

00000480 <func_80A34AA0>:
 480:	27bdffe0 	addiu	sp,sp,-32
 484:	afbf001c 	sw	ra,28(sp)
 488:	afa50024 	sw	a1,36(sp)
 48c:	0c000000 	jal	0 <func_80A34620>
 490:	afa40020 	sw	a0,32(sp)
 494:	10400006 	beqz	v0,4b0 <func_80A34AA0+0x30>
 498:	8fa40020 	lw	a0,32(sp)
 49c:	3c0e0000 	lui	t6,0x0
 4a0:	25ce0000 	addiu	t6,t6,0
 4a4:	ac800118 	sw	zero,280(a0)
 4a8:	10000009 	b	4d0 <func_80A34AA0+0x50>
 4ac:	ac8e0310 	sw	t6,784(a0)
 4b0:	3c014248 	lui	at,0x4248
 4b4:	44812000 	mtc1	at,$f4
 4b8:	3c07461c 	lui	a3,0x461c
 4bc:	34e74000 	ori	a3,a3,0x4000
 4c0:	8fa50024 	lw	a1,36(sp)
 4c4:	2406003a 	li	a2,58
 4c8:	0c000000 	jal	0 <func_80A34620>
 4cc:	e7a40010 	swc1	$f4,16(sp)
 4d0:	8fbf001c 	lw	ra,28(sp)
 4d4:	27bd0020 	addiu	sp,sp,32
 4d8:	03e00008 	jr	ra
 4dc:	00000000 	nop

000004e0 <func_80A34B00>:
 4e0:	27bdffe0 	addiu	sp,sp,-32
 4e4:	afbf001c 	sw	ra,28(sp)
 4e8:	afa40020 	sw	a0,32(sp)
 4ec:	afa50024 	sw	a1,36(sp)
 4f0:	0c000000 	jal	0 <func_80A34620>
 4f4:	24a420d8 	addiu	a0,a1,8408
 4f8:	24010005 	li	at,5
 4fc:	54410019 	bnel	v0,at,564 <func_80A34B00+0x84>
 500:	8fbf001c 	lw	ra,28(sp)
 504:	0c000000 	jal	0 <func_80A34620>
 508:	8fa40024 	lw	a0,36(sp)
 50c:	50400015 	beqzl	v0,564 <func_80A34B00+0x84>
 510:	8fbf001c 	lw	ra,28(sp)
 514:	0c000000 	jal	0 <func_80A34620>
 518:	8fa40024 	lw	a0,36(sp)
 51c:	8fa40020 	lw	a0,32(sp)
 520:	3c01fffe 	lui	at,0xfffe
 524:	3421ffff 	ori	at,at,0xffff
 528:	8c8e0004 	lw	t6,4(a0)
 52c:	3c180000 	lui	t8,0x0
 530:	27180000 	addiu	t8,t8,0
 534:	01c17824 	and	t7,t6,at
 538:	3c014248 	lui	at,0x4248
 53c:	44812000 	mtc1	at,$f4
 540:	3c07461c 	lui	a3,0x461c
 544:	ac8f0004 	sw	t7,4(a0)
 548:	ac980310 	sw	t8,784(a0)
 54c:	8fa50024 	lw	a1,36(sp)
 550:	34e74000 	ori	a3,a3,0x4000
 554:	2406003a 	li	a2,58
 558:	0c000000 	jal	0 <func_80A34620>
 55c:	e7a40010 	swc1	$f4,16(sp)
 560:	8fbf001c 	lw	ra,28(sp)
 564:	27bd0020 	addiu	sp,sp,32
 568:	03e00008 	jr	ra
 56c:	00000000 	nop

00000570 <func_80A34B90>:
 570:	27bdffd8 	addiu	sp,sp,-40
 574:	afbf0024 	sw	ra,36(sp)
 578:	afb00020 	sw	s0,32(sp)
 57c:	00808025 	move	s0,a0
 580:	0c000000 	jal	0 <func_80A34620>
 584:	afa5002c 	sw	a1,44(sp)
 588:	10400004 	beqz	v0,59c <func_80A34B90+0x2c>
 58c:	3c0e0000 	lui	t6,0x0
 590:	25ce0000 	addiu	t6,t6,0
 594:	1000001a 	b	600 <func_80A34B90+0x90>
 598:	ae0e0310 	sw	t6,784(s0)
 59c:	960f030c 	lhu	t7,780(s0)
 5a0:	8fa4002c 	lw	a0,44(sp)
 5a4:	02002825 	move	a1,s0
 5a8:	31f80004 	andi	t8,t7,0x4
 5ac:	57000007 	bnezl	t8,5cc <func_80A34B90+0x5c>
 5b0:	3c014396 	lui	at,0x4396
 5b4:	0c000000 	jal	0 <func_80A34620>
 5b8:	24060007 	li	a2,7
 5bc:	9619030c 	lhu	t9,780(s0)
 5c0:	37280004 	ori	t0,t9,0x4
 5c4:	a608030c 	sh	t0,780(s0)
 5c8:	3c014396 	lui	at,0x4396
 5cc:	44810000 	mtc1	at,$f0
 5d0:	8e0a0004 	lw	t2,4(s0)
 5d4:	3c010001 	lui	at,0x1
 5d8:	24096004 	li	t1,24580
 5dc:	01415825 	or	t3,t2,at
 5e0:	a609010e 	sh	t1,270(s0)
 5e4:	ae0b0004 	sw	t3,4(s0)
 5e8:	44060000 	mfc1	a2,$f0
 5ec:	44070000 	mfc1	a3,$f0
 5f0:	afa00010 	sw	zero,16(sp)
 5f4:	8fa5002c 	lw	a1,44(sp)
 5f8:	0c000000 	jal	0 <func_80A34620>
 5fc:	02002025 	move	a0,s0
 600:	02002025 	move	a0,s0
 604:	0c000000 	jal	0 <func_80A34620>
 608:	8fa5002c 	lw	a1,44(sp)
 60c:	8fbf0024 	lw	ra,36(sp)
 610:	8fb00020 	lw	s0,32(sp)
 614:	27bd0028 	addiu	sp,sp,40
 618:	03e00008 	jr	ra
 61c:	00000000 	nop

00000620 <func_80A34C40>:
 620:	27bdffc8 	addiu	sp,sp,-56
 624:	afb00020 	sw	s0,32(sp)
 628:	00808025 	move	s0,a0
 62c:	afbf0024 	sw	ra,36(sp)
 630:	afa5003c 	sw	a1,60(sp)
 634:	2606014c 	addiu	a2,s0,332
 638:	00c02825 	move	a1,a2
 63c:	0c000000 	jal	0 <func_80A34620>
 640:	afa6002c 	sw	a2,44(sp)
 644:	8fa4003c 	lw	a0,60(sp)
 648:	3c010001 	lui	at,0x1
 64c:	34211e60 	ori	at,at,0x1e60
 650:	8fa6002c 	lw	a2,44(sp)
 654:	0c000000 	jal	0 <func_80A34620>
 658:	00812821 	addu	a1,a0,at
 65c:	3c014220 	lui	at,0x4220
 660:	44810000 	mtc1	at,$f0
 664:	240e0005 	li	t6,5
 668:	afae0014 	sw	t6,20(sp)
 66c:	44060000 	mfc1	a2,$f0
 670:	8fa4003c 	lw	a0,60(sp)
 674:	02002825 	move	a1,s0
 678:	3c0741c8 	lui	a3,0x41c8
 67c:	0c000000 	jal	0 <func_80A34620>
 680:	e7a00010 	swc1	$f0,16(sp)
 684:	960f030c 	lhu	t7,780(s0)
 688:	31f80002 	andi	t8,t7,0x2
 68c:	57000009 	bnezl	t8,6b4 <func_80A34C40+0x94>
 690:	8fbf0024 	lw	ra,36(sp)
 694:	0c000000 	jal	0 <func_80A34620>
 698:	26040198 	addiu	a0,s0,408
 69c:	50400005 	beqzl	v0,6b4 <func_80A34C40+0x94>
 6a0:	8fbf0024 	lw	ra,36(sp)
 6a4:	9619030c 	lhu	t9,780(s0)
 6a8:	37280002 	ori	t0,t9,0x2
 6ac:	a608030c 	sh	t0,780(s0)
 6b0:	8fbf0024 	lw	ra,36(sp)
 6b4:	8fb00020 	lw	s0,32(sp)
 6b8:	27bd0038 	addiu	sp,sp,56
 6bc:	03e00008 	jr	ra
 6c0:	00000000 	nop

000006c4 <func_80A34CE4>:
 6c4:	27bdffe8 	addiu	sp,sp,-24
 6c8:	afbf0014 	sw	ra,20(sp)
 6cc:	afa5001c 	sw	a1,28(sp)
 6d0:	0c000000 	jal	0 <func_80A34620>
 6d4:	afa40018 	sw	a0,24(sp)
 6d8:	8fa60018 	lw	a2,24(sp)
 6dc:	2404003c 	li	a0,60
 6e0:	2405003c 	li	a1,60
 6e4:	84c302fe 	lh	v1,766(a2)
 6e8:	14600003 	bnez	v1,6f8 <func_80A34CE4+0x34>
 6ec:	246effff 	addiu	t6,v1,-1
 6f0:	10000004 	b	704 <func_80A34CE4+0x40>
 6f4:	00001025 	move	v0,zero
 6f8:	a4ce02fe 	sh	t6,766(a2)
 6fc:	84c302fe 	lh	v1,766(a2)
 700:	00601025 	move	v0,v1
 704:	54400007 	bnezl	v0,724 <func_80A34CE4+0x60>
 708:	a4c302fc 	sh	v1,764(a2)
 70c:	0c000000 	jal	0 <func_80A34620>
 710:	afa60018 	sw	a2,24(sp)
 714:	8fa60018 	lw	a2,24(sp)
 718:	a4c202fe 	sh	v0,766(a2)
 71c:	84c302fe 	lh	v1,766(a2)
 720:	a4c302fc 	sh	v1,764(a2)
 724:	84cf02fc 	lh	t7,764(a2)
 728:	29e10003 	slti	at,t7,3
 72c:	54200003 	bnezl	at,73c <func_80A34CE4+0x78>
 730:	8fbf0014 	lw	ra,20(sp)
 734:	a4c002fc 	sh	zero,764(a2)
 738:	8fbf0014 	lw	ra,20(sp)
 73c:	27bd0018 	addiu	sp,sp,24
 740:	03e00008 	jr	ra
 744:	00000000 	nop

00000748 <func_80A34D68>:
 748:	27bdffe0 	addiu	sp,sp,-32
 74c:	afbf001c 	sw	ra,28(sp)
 750:	afb10018 	sw	s1,24(sp)
 754:	afb00014 	sw	s0,20(sp)
 758:	00808025 	move	s0,a0
 75c:	0c000000 	jal	0 <func_80A34620>
 760:	00a08825 	move	s1,a1
 764:	8e190310 	lw	t9,784(s0)
 768:	02002025 	move	a0,s0
 76c:	02202825 	move	a1,s1
 770:	0320f809 	jalr	t9
 774:	00000000 	nop
 778:	02002025 	move	a0,s0
 77c:	0c000000 	jal	0 <func_80A34620>
 780:	02202825 	move	a1,s1
 784:	10400008 	beqz	v0,7a8 <func_80A34D68+0x60>
 788:	3c0142c8 	lui	at,0x42c8
 78c:	3c0e0000 	lui	t6,0x0
 790:	3c0f0000 	lui	t7,0x0
 794:	25ce0000 	addiu	t6,t6,0
 798:	25ef0000 	addiu	t7,t7,0
 79c:	ae0e0310 	sw	t6,784(s0)
 7a0:	1000000c 	b	7d4 <func_80A34D68+0x8c>
 7a4:	ae0f0130 	sw	t7,304(s0)
 7a8:	44810000 	mtc1	at,$f0
 7ac:	c6040090 	lwc1	$f4,144(s0)
 7b0:	24186005 	li	t8,24581
 7b4:	a618010e 	sh	t8,270(s0)
 7b8:	4600203c 	c.lt.s	$f4,$f0
 7bc:	02002025 	move	a0,s0
 7c0:	45020005 	bc1fl	7d8 <func_80A34D68+0x90>
 7c4:	02002025 	move	a0,s0
 7c8:	44060000 	mfc1	a2,$f0
 7cc:	0c000000 	jal	0 <func_80A34620>
 7d0:	02202825 	move	a1,s1
 7d4:	02002025 	move	a0,s0
 7d8:	0c000000 	jal	0 <func_80A34620>
 7dc:	02202825 	move	a1,s1
 7e0:	8fbf001c 	lw	ra,28(sp)
 7e4:	8fb00014 	lw	s0,20(sp)
 7e8:	8fb10018 	lw	s1,24(sp)
 7ec:	03e00008 	jr	ra
 7f0:	27bd0020 	addiu	sp,sp,32

000007f4 <EnGe3_Update>:
 7f4:	27bdffe8 	addiu	sp,sp,-24
 7f8:	afbf0014 	sw	ra,20(sp)
 7fc:	afa40018 	sw	a0,24(sp)
 800:	0c000000 	jal	0 <func_80A34620>
 804:	afa5001c 	sw	a1,28(sp)
 808:	8fa40018 	lw	a0,24(sp)
 80c:	8fa5001c 	lw	a1,28(sp)
 810:	8c990310 	lw	t9,784(a0)
 814:	0320f809 	jalr	t9
 818:	00000000 	nop
 81c:	8fa40018 	lw	a0,24(sp)
 820:	0c000000 	jal	0 <func_80A34620>
 824:	8fa5001c 	lw	a1,28(sp)
 828:	8fbf0014 	lw	ra,20(sp)
 82c:	27bd0018 	addiu	sp,sp,24
 830:	03e00008 	jr	ra
 834:	00000000 	nop

00000838 <func_80A34E58>:
 838:	27bdffa8 	addiu	sp,sp,-88
 83c:	24010005 	li	at,5
 840:	afbf0014 	sw	ra,20(sp)
 844:	afa40058 	sw	a0,88(sp)
 848:	afa5005c 	sw	a1,92(sp)
 84c:	10a10009 	beq	a1,at,874 <func_80A34E58+0x3c>
 850:	afa70064 	sw	a3,100(sp)
 854:	24010006 	li	at,6
 858:	10a10009 	beq	a1,at,880 <func_80A34E58+0x48>
 85c:	27a40040 	addiu	a0,sp,64
 860:	2401000b 	li	at,11
 864:	10a10003 	beq	a1,at,874 <func_80A34E58+0x3c>
 868:	24010010 	li	at,16
 86c:	54a1000b 	bnel	a1,at,89c <func_80A34E58+0x64>
 870:	8faa0058 	lw	t2,88(sp)
 874:	acc00000 	sw	zero,0(a2)
 878:	10000056 	b	9d4 <func_80A34E58+0x19c>
 87c:	00001025 	move	v0,zero
 880:	8fa20068 	lw	v0,104(sp)
 884:	8fb8006c 	lw	t8,108(sp)
 888:	844f0000 	lh	t7,0(v0)
 88c:	87190302 	lh	t9,770(t8)
 890:	01f94821 	addu	t1,t7,t9
 894:	a4490000 	sh	t1,0(v0)
 898:	8faa0058 	lw	t2,88(sp)
 89c:	3c060000 	lui	a2,0x0
 8a0:	24c60000 	addiu	a2,a2,0
 8a4:	8d450000 	lw	a1,0(t2)
 8a8:	24070223 	li	a3,547
 8ac:	0c000000 	jal	0 <func_80A34620>
 8b0:	afa50050 	sw	a1,80(sp)
 8b4:	8fa2005c 	lw	v0,92(sp)
 8b8:	24010003 	li	at,3
 8bc:	8fa80050 	lw	t0,80(sp)
 8c0:	1041003d 	beq	v0,at,9b8 <func_80A34E58+0x180>
 8c4:	27a40040 	addiu	a0,sp,64
 8c8:	24010006 	li	at,6
 8cc:	10410007 	beq	v0,at,8ec <func_80A34E58+0xb4>
 8d0:	2401000b 	li	at,11
 8d4:	10410014 	beq	v0,at,928 <func_80A34E58+0xf0>
 8d8:	24010010 	li	at,16
 8dc:	50410013 	beql	v0,at,92c <func_80A34E58+0xf4>
 8e0:	8d0202c0 	lw	v0,704(t0)
 8e4:	10000027 	b	984 <func_80A34E58+0x14c>
 8e8:	8d0202c0 	lw	v0,704(t0)
 8ec:	8d0202c0 	lw	v0,704(t0)
 8f0:	3c0ce700 	lui	t4,0xe700
 8f4:	3c18503c 	lui	t8,0x503c
 8f8:	244b0008 	addiu	t3,v0,8
 8fc:	ad0b02c0 	sw	t3,704(t0)
 900:	ac400004 	sw	zero,4(v0)
 904:	ac4c0000 	sw	t4,0(v0)
 908:	8d0202c0 	lw	v0,704(t0)
 90c:	37180aff 	ori	t8,t8,0xaff
 910:	3c0efb00 	lui	t6,0xfb00
 914:	244d0008 	addiu	t5,v0,8
 918:	ad0d02c0 	sw	t5,704(t0)
 91c:	ac580004 	sw	t8,4(v0)
 920:	10000025 	b	9b8 <func_80A34E58+0x180>
 924:	ac4e0000 	sw	t6,0(v0)
 928:	8d0202c0 	lw	v0,704(t0)
 92c:	3c19e700 	lui	t9,0xe700
 930:	3c0b8caa 	lui	t3,0x8caa
 934:	244f0008 	addiu	t7,v0,8
 938:	ad0f02c0 	sw	t7,704(t0)
 93c:	ac400004 	sw	zero,4(v0)
 940:	ac590000 	sw	t9,0(v0)
 944:	8d0202c0 	lw	v0,704(t0)
 948:	356be6ff 	ori	t3,t3,0xe6ff
 94c:	3c0afb00 	lui	t2,0xfb00
 950:	24490008 	addiu	t1,v0,8
 954:	ad0902c0 	sw	t1,704(t0)
 958:	ac4b0004 	sw	t3,4(v0)
 95c:	ac4a0000 	sw	t2,0(v0)
 960:	8d0202c0 	lw	v0,704(t0)
 964:	3c0dfa00 	lui	t5,0xfa00
 968:	240effff 	li	t6,-1
 96c:	244c0008 	addiu	t4,v0,8
 970:	ad0c02c0 	sw	t4,704(t0)
 974:	ac4e0004 	sw	t6,4(v0)
 978:	1000000f 	b	9b8 <func_80A34E58+0x180>
 97c:	ac4d0000 	sw	t5,0(v0)
 980:	8d0202c0 	lw	v0,704(t0)
 984:	3c0fe700 	lui	t7,0xe700
 988:	3c0a8c00 	lui	t2,0x8c00
 98c:	24580008 	addiu	t8,v0,8
 990:	ad1802c0 	sw	t8,704(t0)
 994:	ac400004 	sw	zero,4(v0)
 998:	ac4f0000 	sw	t7,0(v0)
 99c:	8d0202c0 	lw	v0,704(t0)
 9a0:	354a00ff 	ori	t2,t2,0xff
 9a4:	3c09fb00 	lui	t1,0xfb00
 9a8:	24590008 	addiu	t9,v0,8
 9ac:	ad1902c0 	sw	t9,704(t0)
 9b0:	ac4a0004 	sw	t2,4(v0)
 9b4:	ac490000 	sw	t1,0(v0)
 9b8:	8fab0058 	lw	t3,88(sp)
 9bc:	3c060000 	lui	a2,0x0
 9c0:	24c60000 	addiu	a2,a2,0
 9c4:	24070236 	li	a3,566
 9c8:	0c000000 	jal	0 <func_80A34620>
 9cc:	8d650000 	lw	a1,0(t3)
 9d0:	00001025 	move	v0,zero
 9d4:	8fbf0014 	lw	ra,20(sp)
 9d8:	27bd0058 	addiu	sp,sp,88
 9dc:	03e00008 	jr	ra
 9e0:	00000000 	nop

000009e4 <func_80A35004>:
 9e4:	27bdffd8 	addiu	sp,sp,-40
 9e8:	3c0e0000 	lui	t6,0x0
 9ec:	afbf0014 	sw	ra,20(sp)
 9f0:	afa40028 	sw	a0,40(sp)
 9f4:	afa60030 	sw	a2,48(sp)
 9f8:	afa70034 	sw	a3,52(sp)
 9fc:	25ce0000 	addiu	t6,t6,0
 a00:	8dd80000 	lw	t8,0(t6)
 a04:	27a40018 	addiu	a0,sp,24
 a08:	24010006 	li	at,6
 a0c:	ac980000 	sw	t8,0(a0)
 a10:	8dcf0004 	lw	t7,4(t6)
 a14:	ac8f0004 	sw	t7,4(a0)
 a18:	8dd80008 	lw	t8,8(t6)
 a1c:	14a10004 	bne	a1,at,a30 <func_80A35004+0x4c>
 a20:	ac980008 	sw	t8,8(a0)
 a24:	8fa50038 	lw	a1,56(sp)
 a28:	0c000000 	jal	0 <func_80A34620>
 a2c:	24a50038 	addiu	a1,a1,56
 a30:	8fbf0014 	lw	ra,20(sp)
 a34:	27bd0028 	addiu	sp,sp,40
 a38:	03e00008 	jr	ra
 a3c:	00000000 	nop

00000a40 <EnGe3_Draw>:
 a40:	27bdffa8 	addiu	sp,sp,-88
 a44:	afb10028 	sw	s1,40(sp)
 a48:	00a08825 	move	s1,a1
 a4c:	afbf002c 	sw	ra,44(sp)
 a50:	afb00024 	sw	s0,36(sp)
 a54:	8ca50000 	lw	a1,0(a1)
 a58:	00808025 	move	s0,a0
 a5c:	3c060000 	lui	a2,0x0
 a60:	24c60000 	addiu	a2,a2,0
 a64:	27a4003c 	addiu	a0,sp,60
 a68:	24070266 	li	a3,614
 a6c:	0c000000 	jal	0 <func_80A34620>
 a70:	afa5004c 	sw	a1,76(sp)
 a74:	0c000000 	jal	0 <func_80A34620>
 a78:	8e240000 	lw	a0,0(s1)
 a7c:	8fa5004c 	lw	a1,76(sp)
 a80:	3c0fdb06 	lui	t7,0xdb06
 a84:	35ef0020 	ori	t7,t7,0x20
 a88:	8ca302c0 	lw	v1,704(a1)
 a8c:	3c040000 	lui	a0,0x0
 a90:	3c0c0000 	lui	t4,0x0
 a94:	246e0008 	addiu	t6,v1,8
 a98:	acae02c0 	sw	t6,704(a1)
 a9c:	ac6f0000 	sw	t7,0(v1)
 aa0:	861802fc 	lh	t8,764(s0)
 aa4:	3c0100ff 	lui	at,0xff
 aa8:	3421ffff 	ori	at,at,0xffff
 aac:	0018c880 	sll	t9,t8,0x2
 ab0:	00992021 	addu	a0,a0,t9
 ab4:	8c840000 	lw	a0,0(a0)
 ab8:	02202825 	move	a1,s1
 abc:	00003025 	move	a2,zero
 ac0:	00044900 	sll	t1,a0,0x4
 ac4:	00095702 	srl	t2,t1,0x1c
 ac8:	000a5880 	sll	t3,t2,0x2
 acc:	018b6021 	addu	t4,t4,t3
 ad0:	8d8c0000 	lw	t4,0(t4)
 ad4:	00814024 	and	t0,a0,at
 ad8:	3c018000 	lui	at,0x8000
 adc:	010c6821 	addu	t5,t0,t4
 ae0:	01a17021 	addu	t6,t5,at
 ae4:	02002025 	move	a0,s0
 ae8:	0c000000 	jal	0 <func_80A34620>
 aec:	ac6e0004 	sw	t6,4(v1)
 af0:	8e05019c 	lw	a1,412(s0)
 af4:	8e0601b8 	lw	a2,440(s0)
 af8:	9207019a 	lbu	a3,410(s0)
 afc:	3c0f0000 	lui	t7,0x0
 b00:	3c180000 	lui	t8,0x0
 b04:	27180000 	addiu	t8,t8,0
 b08:	25ef0000 	addiu	t7,t7,0
 b0c:	afaf0010 	sw	t7,16(sp)
 b10:	afb80014 	sw	t8,20(sp)
 b14:	afb00018 	sw	s0,24(sp)
 b18:	0c000000 	jal	0 <func_80A34620>
 b1c:	02202025 	move	a0,s1
 b20:	3c060000 	lui	a2,0x0
 b24:	24c60000 	addiu	a2,a2,0
 b28:	27a4003c 	addiu	a0,sp,60
 b2c:	8e250000 	lw	a1,0(s1)
 b30:	0c000000 	jal	0 <func_80A34620>
 b34:	24070277 	li	a3,631
 b38:	8fbf002c 	lw	ra,44(sp)
 b3c:	8fb00024 	lw	s0,36(sp)
 b40:	8fb10028 	lw	s1,40(sp)
 b44:	03e00008 	jr	ra
 b48:	27bd0058 	addiu	sp,sp,88
 b4c:	00000000 	nop
