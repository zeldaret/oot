
build/src/overlays/effects/ovl_Effect_Ss_Lightning/z_eff_ss_lightning.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsLightning_Init>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	8cef0000 	lw	t7,0(a3)
   c:	3c030000 	lui	v1,0x0
  10:	24630000 	addiu	v1,v1,0
  14:	accf0000 	sw	t7,0(a2)
  18:	8cee0004 	lw	t6,4(a3)
  1c:	0003c100 	sll	t8,v1,0x4
  20:	0018cf02 	srl	t9,t8,0x1c
  24:	acce0004 	sw	t6,4(a2)
  28:	8cef0008 	lw	t7,8(a3)
  2c:	00194080 	sll	t0,t9,0x2
  30:	3c090000 	lui	t1,0x0
  34:	01284821 	addu	t1,t1,t0
  38:	3c0100ff 	lui	at,0xff
  3c:	accf0008 	sw	t7,8(a2)
  40:	8d290000 	lw	t1,0(t1)
  44:	3421ffff 	ori	at,at,0xffff
  48:	00615024 	and	t2,v1,at
  4c:	3c018000 	lui	at,0x8000
  50:	012a5821 	addu	t3,t1,t2
  54:	01616021 	addu	t4,t3,at
  58:	accc0038 	sw	t4,56(a2)
  5c:	84ed0018 	lh	t5,24(a3)
  60:	3c0e0000 	lui	t6,0x0
  64:	3c0f0000 	lui	t7,0x0
  68:	25ce0000 	addiu	t6,t6,0
  6c:	25ef0000 	addiu	t7,t7,0
  70:	acce0028 	sw	t6,40(a2)
  74:	accf0024 	sw	t7,36(a2)
  78:	a4cd005c 	sh	t5,92(a2)
  7c:	90f8000c 	lbu	t8,12(a3)
  80:	24020001 	li	v0,1
  84:	a4d80040 	sh	t8,64(a2)
  88:	90f9000d 	lbu	t9,13(a3)
  8c:	a4d90042 	sh	t9,66(a2)
  90:	90e8000e 	lbu	t0,14(a3)
  94:	a4c80044 	sh	t0,68(a2)
  98:	90e9000f 	lbu	t1,15(a3)
  9c:	a4c90046 	sh	t1,70(a2)
  a0:	90ea0010 	lbu	t2,16(a3)
  a4:	a4ca0048 	sh	t2,72(a2)
  a8:	90eb0011 	lbu	t3,17(a3)
  ac:	a4cb004a 	sh	t3,74(a2)
  b0:	90ec0012 	lbu	t4,18(a3)
  b4:	a4cc004c 	sh	t4,76(a2)
  b8:	90ed0013 	lbu	t5,19(a3)
  bc:	a4cd004e 	sh	t5,78(a2)
  c0:	84ee001a 	lh	t6,26(a3)
  c4:	a4ce0050 	sh	t6,80(a2)
  c8:	84ef0014 	lh	t7,20(a3)
  cc:	a4cf0052 	sh	t7,82(a2)
  d0:	84f80016 	lh	t8,22(a3)
  d4:	a4d80054 	sh	t8,84(a2)
  d8:	84f90018 	lh	t9,24(a3)
  dc:	03e00008 	jr	ra
  e0:	a4d90056 	sh	t9,86(a2)

000000e4 <EffectSsLightning_NewLightning>:
  e4:	27bdff88 	addiu	sp,sp,-120
  e8:	afbf0014 	sw	ra,20(sp)
  ec:	afa40078 	sw	a0,120(sp)
  f0:	afa5007c 	sw	a1,124(sp)
  f4:	afa60080 	sw	a2,128(sp)
  f8:	afa70084 	sw	a3,132(sp)
  fc:	0c000000 	jal	0 <EffectSsLightning_Init>
 100:	27a40018 	addiu	a0,sp,24
 104:	8fae0084 	lw	t6,132(sp)
 108:	27a50018 	addiu	a1,sp,24
 10c:	00a0c825 	move	t9,a1
 110:	25c80060 	addiu	t0,t6,96
 114:	8dd80000 	lw	t8,0(t6)
 118:	25ce000c 	addiu	t6,t6,12
 11c:	2739000c 	addiu	t9,t9,12
 120:	af38fff4 	sw	t8,-12(t9)
 124:	8dcffff8 	lw	t7,-8(t6)
 128:	af2ffff8 	sw	t7,-8(t9)
 12c:	8dd8fffc 	lw	t8,-4(t6)
 130:	15c8fff8 	bne	t6,t0,114 <EffectSsLightning_NewLightning+0x30>
 134:	af38fffc 	sw	t8,-4(t9)
 138:	8fa9007c 	lw	t1,124(sp)
 13c:	8d2b0000 	lw	t3,0(t1)
 140:	acab0000 	sw	t3,0(a1)
 144:	8d2a0004 	lw	t2,4(t1)
 148:	acaa0004 	sw	t2,4(a1)
 14c:	8d2b0008 	lw	t3,8(t1)
 150:	acab0008 	sw	t3,8(a1)
 154:	87ac0068 	lh	t4,104(sp)
 158:	87a80082 	lh	t0,130(sp)
 15c:	87ae006e 	lh	t6,110(sp)
 160:	258dffff 	addiu	t5,t4,-1
 164:	a7ad0068 	sh	t5,104(sp)
 168:	8fa40078 	lw	a0,120(sp)
 16c:	a7a8006c 	sh	t0,108(sp)
 170:	0c000000 	jal	0 <EffectSsLightning_Init>
 174:	a7ae0074 	sh	t6,116(sp)
 178:	8fbf0014 	lw	ra,20(sp)
 17c:	27bd0078 	addiu	sp,sp,120
 180:	03e00008 	jr	ra
 184:	00000000 	nop

00000188 <EffectSsLightning_Draw>:
 188:	27bdfe18 	addiu	sp,sp,-488
 18c:	afb00014 	sw	s0,20(sp)
 190:	afbf001c 	sw	ra,28(sp)
 194:	afb10018 	sw	s1,24(sp)
 198:	afa401e8 	sw	a0,488(sp)
 19c:	afa501ec 	sw	a1,492(sp)
 1a0:	8c910000 	lw	s1,0(a0)
 1a4:	00c08025 	move	s0,a2
 1a8:	3c060000 	lui	a2,0x0
 1ac:	24c60000 	addiu	a2,a2,0
 1b0:	27a40040 	addiu	a0,sp,64
 1b4:	240700e9 	li	a3,233
 1b8:	0c000000 	jal	0 <EffectSsLightning_Init>
 1bc:	02202825 	move	a1,s1
 1c0:	860f0052 	lh	t7,82(s0)
 1c4:	86180056 	lh	t8,86(s0)
 1c8:	8619005c 	lh	t9,92(s0)
 1cc:	448f2000 	mtc1	t7,$f4
 1d0:	3c010000 	lui	at,0x0
 1d4:	c4280030 	lwc1	$f8,48(at)
 1d8:	468021a0 	cvt.s.w	$f6,$f4
 1dc:	03191023 	subu	v0,t8,t9
 1e0:	00021400 	sll	v0,v0,0x10
 1e4:	00021403 	sra	v0,v0,0x10
 1e8:	28410008 	slti	at,v0,8
 1ec:	27a40164 	addiu	a0,sp,356
 1f0:	46083082 	mul.s	$f2,$f6,$f8
 1f4:	54200003 	bnezl	at,204 <EffectSsLightning_Draw+0x7c>
 1f8:	8e050000 	lw	a1,0(s0)
 1fc:	24020007 	li	v0,7
 200:	8e050000 	lw	a1,0(s0)
 204:	8e060004 	lw	a2,4(s0)
 208:	8e070008 	lw	a3,8(s0)
 20c:	e7a2005c 	swc1	$f2,92(sp)
 210:	0c000000 	jal	0 <EffectSsLightning_Init>
 214:	a7a2005a 	sh	v0,90(sp)
 218:	3c010000 	lui	at,0x0
 21c:	c7a2005c 	lwc1	$f2,92(sp)
 220:	c42a0034 	lwc1	$f10,52(at)
 224:	27a40124 	addiu	a0,sp,292
 228:	44061000 	mfc1	a2,$f2
 22c:	460a1002 	mul.s	$f0,$f2,$f10
 230:	44050000 	mfc1	a1,$f0
 234:	44070000 	mfc1	a3,$f0
 238:	0c000000 	jal	0 <EffectSsLightning_Init>
 23c:	00000000 	nop
 240:	c610002c 	lwc1	$f16,44(s0)
 244:	c6040030 	lwc1	$f4,48(s0)
 248:	27a400e4 	addiu	a0,sp,228
 24c:	4600848d 	trunc.w.s	$f18,$f16
 250:	86070054 	lh	a3,84(s0)
 254:	4600218d 	trunc.w.s	$f6,$f4
 258:	44059000 	mfc1	a1,$f18
 25c:	44063000 	mfc1	a2,$f6
 260:	00052c00 	sll	a1,a1,0x10
 264:	00052c03 	sra	a1,a1,0x10
 268:	00063400 	sll	a2,a2,0x10
 26c:	0c000000 	jal	0 <EffectSsLightning_Init>
 270:	00063403 	sra	a2,a2,0x10
 274:	8fa501e8 	lw	a1,488(sp)
 278:	3c010001 	lui	at,0x1
 27c:	34211da0 	ori	at,at,0x1da0
 280:	27a40164 	addiu	a0,sp,356
 284:	27a600a4 	addiu	a2,sp,164
 288:	0c000000 	jal	0 <EffectSsLightning_Init>
 28c:	00a12821 	addu	a1,a1,at
 290:	27a400a4 	addiu	a0,sp,164
 294:	27a500e4 	addiu	a1,sp,228
 298:	0c000000 	jal	0 <EffectSsLightning_Init>
 29c:	27a60064 	addiu	a2,sp,100
 2a0:	27a40064 	addiu	a0,sp,100
 2a4:	27a50124 	addiu	a1,sp,292
 2a8:	0c000000 	jal	0 <EffectSsLightning_Init>
 2ac:	27a601a4 	addiu	a2,sp,420
 2b0:	8e2302d0 	lw	v1,720(s1)
 2b4:	3c0bda38 	lui	t3,0xda38
 2b8:	3c0c0000 	lui	t4,0x0
 2bc:	246a0008 	addiu	t2,v1,8
 2c0:	ae2a02d0 	sw	t2,720(s1)
 2c4:	258c0000 	addiu	t4,t4,0
 2c8:	356b0003 	ori	t3,t3,0x3
 2cc:	02202025 	move	a0,s1
 2d0:	27a501a4 	addiu	a1,sp,420
 2d4:	ac6b0000 	sw	t3,0(v1)
 2d8:	0c000000 	jal	0 <EffectSsLightning_Init>
 2dc:	ac6c0004 	sw	t4,4(v1)
 2e0:	1040004e 	beqz	v0,41c <EffectSsLightning_Draw+0x294>
 2e4:	3c0eda38 	lui	t6,0xda38
 2e8:	8e2302d0 	lw	v1,720(s1)
 2ec:	35ce0003 	ori	t6,t6,0x3
 2f0:	02202025 	move	a0,s1
 2f4:	246d0008 	addiu	t5,v1,8
 2f8:	ae2d02d0 	sw	t5,720(s1)
 2fc:	ac620004 	sw	v0,4(v1)
 300:	0c000000 	jal	0 <EffectSsLightning_Init>
 304:	ac6e0000 	sw	t6,0(v1)
 308:	8e2302d0 	lw	v1,720(s1)
 30c:	3c18db06 	lui	t8,0xdb06
 310:	37180020 	ori	t8,t8,0x20
 314:	246f0008 	addiu	t7,v1,8
 318:	ae2f02d0 	sw	t7,720(s1)
 31c:	ac780000 	sw	t8,0(v1)
 320:	87b9005a 	lh	t9,90(sp)
 324:	3c040000 	lui	a0,0x0
 328:	3c0d0000 	lui	t5,0x0
 32c:	00194080 	sll	t0,t9,0x2
 330:	00882021 	addu	a0,a0,t0
 334:	8c840008 	lw	a0,8(a0)
 338:	3c0100ff 	lui	at,0xff
 33c:	3421ffff 	ori	at,at,0xffff
 340:	00045100 	sll	t2,a0,0x4
 344:	000a5f02 	srl	t3,t2,0x1c
 348:	000b6080 	sll	t4,t3,0x2
 34c:	01ac6821 	addu	t5,t5,t4
 350:	8dad0000 	lw	t5,0(t5)
 354:	00814824 	and	t1,a0,at
 358:	3c018000 	lui	at,0x8000
 35c:	012d7021 	addu	t6,t1,t5
 360:	01c17821 	addu	t7,t6,at
 364:	ac6f0004 	sw	t7,4(v1)
 368:	8e2302d0 	lw	v1,720(s1)
 36c:	3c19fa00 	lui	t9,0xfa00
 370:	24780008 	addiu	t8,v1,8
 374:	ae3802d0 	sw	t8,720(s1)
 378:	ac790000 	sw	t9,0(v1)
 37c:	86080046 	lh	t0,70(s0)
 380:	860e0042 	lh	t6,66(s0)
 384:	860c0040 	lh	t4,64(s0)
 388:	310a00ff 	andi	t2,t0,0xff
 38c:	86080044 	lh	t0,68(s0)
 390:	31cf00ff 	andi	t7,t6,0xff
 394:	000c4e00 	sll	t1,t4,0x18
 398:	01496825 	or	t5,t2,t1
 39c:	000fc400 	sll	t8,t7,0x10
 3a0:	310b00ff 	andi	t3,t0,0xff
 3a4:	000b6200 	sll	t4,t3,0x8
 3a8:	01b8c825 	or	t9,t5,t8
 3ac:	032c5025 	or	t2,t9,t4
 3b0:	ac6a0004 	sw	t2,4(v1)
 3b4:	8e2302d0 	lw	v1,720(s1)
 3b8:	3c0efb00 	lui	t6,0xfb00
 3bc:	24690008 	addiu	t1,v1,8
 3c0:	ae2902d0 	sw	t1,720(s1)
 3c4:	ac6e0000 	sw	t6,0(v1)
 3c8:	860f004e 	lh	t7,78(s0)
 3cc:	860c004a 	lh	t4,74(s0)
 3d0:	86080048 	lh	t0,72(s0)
 3d4:	31ed00ff 	andi	t5,t7,0xff
 3d8:	860f004c 	lh	t7,76(s0)
 3dc:	318a00ff 	andi	t2,t4,0xff
 3e0:	00085e00 	sll	t3,t0,0x18
 3e4:	01abc825 	or	t9,t5,t3
 3e8:	000a4c00 	sll	t1,t2,0x10
 3ec:	31f800ff 	andi	t8,t7,0xff
 3f0:	00184200 	sll	t0,t8,0x8
 3f4:	03297025 	or	t6,t9,t1
 3f8:	01c86825 	or	t5,t6,t0
 3fc:	ac6d0004 	sw	t5,4(v1)
 400:	8e2302d0 	lw	v1,720(s1)
 404:	3c0cde00 	lui	t4,0xde00
 408:	246b0008 	addiu	t3,v1,8
 40c:	ae2b02d0 	sw	t3,720(s1)
 410:	ac6c0000 	sw	t4,0(v1)
 414:	8e0a0038 	lw	t2,56(s0)
 418:	ac6a0004 	sw	t2,4(v1)
 41c:	3c060000 	lui	a2,0x0
 420:	24c60018 	addiu	a2,a2,24
 424:	27a40040 	addiu	a0,sp,64
 428:	02202825 	move	a1,s1
 42c:	0c000000 	jal	0 <EffectSsLightning_Init>
 430:	24070119 	li	a3,281
 434:	8fbf001c 	lw	ra,28(sp)
 438:	8fb00014 	lw	s0,20(sp)
 43c:	8fb10018 	lw	s1,24(sp)
 440:	03e00008 	jr	ra
 444:	27bd01e8 	addiu	sp,sp,488

00000448 <EffectSsLightning_Update>:
 448:	27bdffb0 	addiu	sp,sp,-80
 44c:	afbf0024 	sw	ra,36(sp)
 450:	afb10020 	sw	s1,32(sp)
 454:	afb0001c 	sw	s0,28(sp)
 458:	f7b40010 	sdc1	$f20,16(sp)
 45c:	afa50054 	sw	a1,84(sp)
 460:	84ce0050 	lh	t6,80(a2)
 464:	00c08025 	move	s0,a2
 468:	00808825 	move	s1,a0
 46c:	51c0006c 	beqzl	t6,620 <EffectSsLightning_Update+0x1d8>
 470:	8fbf0024 	lw	ra,36(sp)
 474:	84cf005c 	lh	t7,92(a2)
 478:	84d90056 	lh	t9,86(a2)
 47c:	25f80001 	addiu	t8,t7,1
 480:	57190067 	bnel	t8,t9,620 <EffectSsLightning_Update+0x1d8>
 484:	8fbf0024 	lw	ra,36(sp)
 488:	0c000000 	jal	0 <EffectSsLightning_Init>
 48c:	00000000 	nop
 490:	3c013f00 	lui	at,0x3f00
 494:	44812000 	mtc1	at,$f4
 498:	24030001 	li	v1,1
 49c:	4604003c 	c.lt.s	$f0,$f4
 4a0:	00000000 	nop
 4a4:	45000003 	bc1f	4b4 <EffectSsLightning_Update+0x6c>
 4a8:	00000000 	nop
 4ac:	10000001 	b	4b4 <EffectSsLightning_Update+0x6c>
 4b0:	2403ffff 	li	v1,-1
 4b4:	0c000000 	jal	0 <EffectSsLightning_Init>
 4b8:	afa30034 	sw	v1,52(sp)
 4bc:	3c010000 	lui	at,0x0
 4c0:	c4260038 	lwc1	$f6,56(at)
 4c4:	8fa30034 	lw	v1,52(sp)
 4c8:	86020054 	lh	v0,84(s0)
 4cc:	46060202 	mul.s	$f8,$f0,$f6
 4d0:	3c010000 	lui	at,0x0
 4d4:	c424003c 	lwc1	$f4,60(at)
 4d8:	3c0142a0 	lui	at,0x42a0
 4dc:	2444c000 	addiu	a0,v0,-16384
 4e0:	00042400 	sll	a0,a0,0x10
 4e4:	00042403 	sra	a0,a0,0x10
 4e8:	4600428d 	trunc.w.s	$f10,$f8
 4ec:	44814000 	mtc1	at,$f8
 4f0:	44095000 	mfc1	t1,$f10
 4f4:	00000000 	nop
 4f8:	00095400 	sll	t2,t1,0x10
 4fc:	000a5c03 	sra	t3,t2,0x10
 500:	256c0e38 	addiu	t4,t3,3640
 504:	01830019 	multu	t4,v1
 508:	00006812 	mflo	t5
 50c:	01a27021 	addu	t6,t5,v0
 510:	a7ae003e 	sh	t6,62(sp)
 514:	860f0052 	lh	t7,82(s0)
 518:	448f8000 	mtc1	t7,$f16
 51c:	00000000 	nop
 520:	468084a0 	cvt.s.w	$f18,$f16
 524:	46049182 	mul.s	$f6,$f18,$f4
 528:	00000000 	nop
 52c:	46083502 	mul.s	$f20,$f6,$f8
 530:	0c000000 	jal	0 <EffectSsLightning_Init>
 534:	00000000 	nop
 538:	46140282 	mul.s	$f10,$f0,$f20
 53c:	c6100004 	lwc1	$f16,4(s0)
 540:	46105480 	add.s	$f18,$f10,$f16
 544:	e7b20044 	swc1	$f18,68(sp)
 548:	86040054 	lh	a0,84(s0)
 54c:	2484c000 	addiu	a0,a0,-16384
 550:	00042400 	sll	a0,a0,0x10
 554:	0c000000 	jal	0 <EffectSsLightning_Init>
 558:	00042403 	sra	a0,a0,0x10
 55c:	863807a0 	lh	t8,1952(s1)
 560:	46140502 	mul.s	$f20,$f0,$f20
 564:	0018c880 	sll	t9,t8,0x2
 568:	02394021 	addu	t0,s1,t9
 56c:	0c000000 	jal	0 <EffectSsLightning_Init>
 570:	8d040790 	lw	a0,1936(t0)
 574:	00022400 	sll	a0,v0,0x10
 578:	0c000000 	jal	0 <EffectSsLightning_Init>
 57c:	00042403 	sra	a0,a0,0x10
 580:	46140182 	mul.s	$f6,$f0,$f20
 584:	c6040000 	lwc1	$f4,0(s0)
 588:	46062201 	sub.s	$f8,$f4,$f6
 58c:	e7a80040 	swc1	$f8,64(sp)
 590:	862907a0 	lh	t1,1952(s1)
 594:	00095080 	sll	t2,t1,0x2
 598:	022a5821 	addu	t3,s1,t2
 59c:	0c000000 	jal	0 <EffectSsLightning_Init>
 5a0:	8d640790 	lw	a0,1936(t3)
 5a4:	00022400 	sll	a0,v0,0x10
 5a8:	0c000000 	jal	0 <EffectSsLightning_Init>
 5ac:	00042403 	sra	a0,a0,0x10
 5b0:	46140282 	mul.s	$f10,$f0,$f20
 5b4:	c6100008 	lwc1	$f16,8(s0)
 5b8:	02202025 	move	a0,s1
 5bc:	27a50040 	addiu	a1,sp,64
 5c0:	87a6003e 	lh	a2,62(sp)
 5c4:	02003825 	move	a3,s0
 5c8:	46105480 	add.s	$f18,$f10,$f16
 5cc:	0c000000 	jal	0 <EffectSsLightning_Init>
 5d0:	e7b20048 	swc1	$f18,72(sp)
 5d4:	0c000000 	jal	0 <EffectSsLightning_Init>
 5d8:	00000000 	nop
 5dc:	3c010000 	lui	at,0x0
 5e0:	c4240040 	lwc1	$f4,64(at)
 5e4:	02202025 	move	a0,s1
 5e8:	27a50040 	addiu	a1,sp,64
 5ec:	4604003c 	c.lt.s	$f0,$f4
 5f0:	00000000 	nop
 5f4:	4502000a 	bc1fl	620 <EffectSsLightning_Update+0x1d8>
 5f8:	8fbf0024 	lw	ra,36(sp)
 5fc:	860c0054 	lh	t4,84(s0)
 600:	87ae003e 	lh	t6,62(sp)
 604:	02003825 	move	a3,s0
 608:	000c6840 	sll	t5,t4,0x1
 60c:	01ae3023 	subu	a2,t5,t6
 610:	00063400 	sll	a2,a2,0x10
 614:	0c000000 	jal	0 <EffectSsLightning_Init>
 618:	00063403 	sra	a2,a2,0x10
 61c:	8fbf0024 	lw	ra,36(sp)
 620:	d7b40010 	ldc1	$f20,16(sp)
 624:	8fb0001c 	lw	s0,28(sp)
 628:	8fb10020 	lw	s1,32(sp)
 62c:	03e00008 	jr	ra
 630:	27bd0050 	addiu	sp,sp,80
	...
