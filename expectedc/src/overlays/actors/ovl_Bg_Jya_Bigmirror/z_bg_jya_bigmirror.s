
build/src/overlays/actors/ovl_Bg_Jya_Bigmirror/z_bg_jya_bigmirror.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808936E0>:
   0:	908e015c 	lbu	t6,348(a0)
   4:	2401ffc7 	li	at,-57
   8:	3c020001 	lui	v0,0x1
   c:	01c17824 	and	t7,t6,at
  10:	a08f015c 	sb	t7,348(a0)
  14:	00451021 	addu	v0,v0,a1
  18:	80421cbc 	lb	v0,7356(v0)
  1c:	24010005 	li	at,5
  20:	35f90008 	ori	t9,t7,0x8
  24:	54410004 	bnel	v0,at,38 <func_808936E0+0x38>
  28:	24010019 	li	at,25
  2c:	03e00008 	jr	ra
  30:	a099015c 	sb	t9,348(a0)
  34:	24010019 	li	at,25
  38:	54410006 	bnel	v0,at,54 <func_808936E0+0x54>
  3c:	2401001a 	li	at,26
  40:	9088015c 	lbu	t0,348(a0)
  44:	35090010 	ori	t1,t0,0x10
  48:	03e00008 	jr	ra
  4c:	a089015c 	sb	t1,348(a0)
  50:	2401001a 	li	at,26
  54:	14410004 	bne	v0,at,68 <func_808936E0+0x68>
  58:	00000000 	nop
  5c:	908a015c 	lbu	t2,348(a0)
  60:	354b0020 	ori	t3,t2,0x20
  64:	a08b015c 	sb	t3,348(a0)
  68:	03e00008 	jr	ra
  6c:	00000000 	nop

00000070 <func_80893750>:
  70:	27bdffa0 	addiu	sp,sp,-96
  74:	afbf005c 	sw	ra,92(sp)
  78:	afbe0058 	sw	s8,88(sp)
  7c:	afb70054 	sw	s7,84(sp)
  80:	afb60050 	sw	s6,80(sp)
  84:	afb5004c 	sw	s5,76(sp)
  88:	afb40048 	sw	s4,72(sp)
  8c:	afb30044 	sw	s3,68(sp)
  90:	afb20040 	sw	s2,64(sp)
  94:	afb1003c 	sw	s1,60(sp)
  98:	afb00038 	sw	s0,56(sp)
  9c:	908e015c 	lbu	t6,348(a0)
  a0:	00808025 	move	s0,a0
  a4:	00a0a825 	move	s5,a1
  a8:	31cf0030 	andi	t7,t6,0x30
  ac:	11e0004e 	beqz	t7,1e8 <func_80893750+0x178>
  b0:	00009025 	move	s2,zero
  b4:	3c120000 	lui	s2,0x0
  b8:	3c170000 	lui	s7,0x0
  bc:	3c160000 	lui	s6,0x0
  c0:	26d60000 	addiu	s6,s6,0
  c4:	26f70000 	addiu	s7,s7,0
  c8:	26520000 	addiu	s2,s2,0
  cc:	0000a025 	move	s4,zero
  d0:	00809825 	move	s3,a0
  d4:	2491014c 	addiu	s1,a0,332
  d8:	241e0002 	li	s8,2
  dc:	8e78014c 	lw	t8,332(s3)
  e0:	53000020 	beqzl	t8,164 <func_80893750+0xf4>
  e4:	c6440000 	lwc1	$f4,0(s2)
  e8:	8e390000 	lw	t9,0(s1)
  ec:	3c090000 	lui	t1,0x0
  f0:	25290000 	addiu	t1,t1,0
  f4:	872800b6 	lh	t0,182(t9)
  f8:	02891021 	addu	v0,s4,t1
  fc:	02c02025 	move	a0,s6
 100:	a6280004 	sh	t0,4(s1)
 104:	862b0004 	lh	t3,4(s1)
 108:	864a000e 	lh	t2,14(s2)
 10c:	02e02825 	move	a1,s7
 110:	554b0007 	bnel	t2,t3,130 <func_80893750+0xc0>
 114:	90580000 	lbu	t8,0(v0)
 118:	920c015c 	lbu	t4,348(s0)
 11c:	904d0000 	lbu	t5,0(v0)
 120:	018d7025 	or	t6,t4,t5
 124:	10000006 	b	140 <func_80893750+0xd0>
 128:	a20e015c 	sb	t6,348(s0)
 12c:	90580000 	lbu	t8,0(v0)
 130:	920f015c 	lbu	t7,348(s0)
 134:	0300c827 	nor	t9,t8,zero
 138:	01f94024 	and	t0,t7,t9
 13c:	a208015c 	sb	t0,348(s0)
 140:	8e290000 	lw	t1,0(s1)
 144:	8d2a0130 	lw	t2,304(t1)
 148:	55400021 	bnezl	t2,1d0 <func_80893750+0x160>
 14c:	26940001 	addiu	s4,s4,1
 150:	0c000000 	jal	0 <func_808936E0>
 154:	240600cb 	li	a2,203
 158:	1000001d 	b	1d0 <func_80893750+0x160>
 15c:	26940001 	addiu	s4,s4,1
 160:	c6440000 	lwc1	$f4,0(s2)
 164:	26a41c24 	addiu	a0,s5,7204
 168:	02002825 	move	a1,s0
 16c:	e7a40010 	swc1	$f4,16(sp)
 170:	c6460004 	lwc1	$f6,4(s2)
 174:	02a03025 	move	a2,s5
 178:	240700fc 	li	a3,252
 17c:	e7a60014 	swc1	$f6,20(sp)
 180:	c6480008 	lwc1	$f8,8(s2)
 184:	afa0001c 	sw	zero,28(sp)
 188:	e7a80018 	swc1	$f8,24(sp)
 18c:	862b0004 	lh	t3,4(s1)
 190:	afa00024 	sw	zero,36(sp)
 194:	afab0020 	sw	t3,32(sp)
 198:	864c000c 	lh	t4,12(s2)
 19c:	0c000000 	jal	0 <func_808936E0>
 1a0:	afac0028 	sw	t4,40(sp)
 1a4:	ae220000 	sw	v0,0(s1)
 1a8:	ae00011c 	sw	zero,284(s0)
 1ac:	8e2d0000 	lw	t5,0(s1)
 1b0:	3c040000 	lui	a0,0x0
 1b4:	24840000 	addiu	a0,a0,0
 1b8:	15a00004 	bnez	t5,1cc <func_80893750+0x15c>
 1bc:	3c050000 	lui	a1,0x0
 1c0:	24a50000 	addiu	a1,a1,0
 1c4:	0c000000 	jal	0 <func_808936E0>
 1c8:	240600dd 	li	a2,221
 1cc:	26940001 	addiu	s4,s4,1
 1d0:	26520014 	addiu	s2,s2,20
 1d4:	26730008 	addiu	s3,s3,8
 1d8:	169effc0 	bne	s4,s8,dc <func_80893750+0x6c>
 1dc:	26310008 	addiu	s1,s1,8
 1e0:	10000017 	b	240 <func_80893750+0x1d0>
 1e4:	8fbf005c 	lw	ra,92(sp)
 1e8:	02009825 	move	s3,s0
 1ec:	24140010 	li	s4,16
 1f0:	8e6e014c 	lw	t6,332(s3)
 1f4:	2671014c 	addiu	s1,s3,332
 1f8:	51c0000e 	beqzl	t6,234 <func_80893750+0x1c4>
 1fc:	26520008 	addiu	s2,s2,8
 200:	8e240000 	lw	a0,0(s1)
 204:	8c85011c 	lw	a1,284(a0)
 208:	10a00006 	beqz	a1,224 <func_80893750+0x1b4>
 20c:	00000000 	nop
 210:	0c000000 	jal	0 <func_808936E0>
 214:	00a02025 	move	a0,a1
 218:	8e380000 	lw	t8,0(s1)
 21c:	af00011c 	sw	zero,284(t8)
 220:	8e240000 	lw	a0,0(s1)
 224:	0c000000 	jal	0 <func_808936E0>
 228:	00000000 	nop
 22c:	ae200000 	sw	zero,0(s1)
 230:	26520008 	addiu	s2,s2,8
 234:	1654ffee 	bne	s2,s4,1f0 <func_80893750+0x180>
 238:	26730008 	addiu	s3,s3,8
 23c:	8fbf005c 	lw	ra,92(sp)
 240:	8fb00038 	lw	s0,56(sp)
 244:	8fb1003c 	lw	s1,60(sp)
 248:	8fb20040 	lw	s2,64(sp)
 24c:	8fb30044 	lw	s3,68(sp)
 250:	8fb40048 	lw	s4,72(sp)
 254:	8fb5004c 	lw	s5,76(sp)
 258:	8fb60050 	lw	s6,80(sp)
 25c:	8fb70054 	lw	s7,84(sp)
 260:	8fbe0058 	lw	s8,88(sp)
 264:	03e00008 	jr	ra
 268:	27bd0060 	addiu	sp,sp,96

0000026c <func_8089394C>:
 26c:	27bdffe8 	addiu	sp,sp,-24
 270:	00803025 	move	a2,a0
 274:	afbf0014 	sw	ra,20(sp)
 278:	00a02025 	move	a0,a1
 27c:	24050029 	li	a1,41
 280:	0c000000 	jal	0 <func_808936E0>
 284:	afa60018 	sw	a2,24(sp)
 288:	10400005 	beqz	v0,2a0 <func_8089394C+0x34>
 28c:	8fa60018 	lw	a2,24(sp)
 290:	90ce015c 	lbu	t6,348(a2)
 294:	35cf0004 	ori	t7,t6,0x4
 298:	10000004 	b	2ac <func_8089394C+0x40>
 29c:	a0cf015c 	sb	t7,348(a2)
 2a0:	90d8015c 	lbu	t8,348(a2)
 2a4:	3319fffb 	andi	t9,t8,0xfffb
 2a8:	a0d9015c 	sb	t9,348(a2)
 2ac:	8fbf0014 	lw	ra,20(sp)
 2b0:	27bd0018 	addiu	sp,sp,24
 2b4:	03e00008 	jr	ra
 2b8:	00000000 	nop

000002bc <func_8089399C>:
 2bc:	27bdff78 	addiu	sp,sp,-136
 2c0:	afb20038 	sw	s2,56(sp)
 2c4:	3c010001 	lui	at,0x1
 2c8:	00809025 	move	s2,a0
 2cc:	afb40040 	sw	s4,64(sp)
 2d0:	342117a4 	ori	at,at,0x17a4
 2d4:	00a0a025 	move	s4,a1
 2d8:	afbf0054 	sw	ra,84(sp)
 2dc:	00a12021 	addu	a0,a1,at
 2e0:	afbe0050 	sw	s8,80(sp)
 2e4:	afb7004c 	sw	s7,76(sp)
 2e8:	afb60048 	sw	s6,72(sp)
 2ec:	afb50044 	sw	s5,68(sp)
 2f0:	afb3003c 	sw	s3,60(sp)
 2f4:	afb10034 	sw	s1,52(sp)
 2f8:	afb00030 	sw	s0,48(sp)
 2fc:	afa40064 	sw	a0,100(sp)
 300:	0c000000 	jal	0 <func_808936E0>
 304:	240500ab 	li	a1,171
 308:	04400006 	bltz	v0,324 <func_8089399C+0x68>
 30c:	afa2006c 	sw	v0,108(sp)
 310:	8e4e016c 	lw	t6,364(s2)
 314:	00008825 	move	s1,zero
 318:	27b30074 	addiu	s3,sp,116
 31c:	104e0005 	beq	v0,t6,334 <func_8089399C+0x78>
 320:	02408025 	move	s0,s2
 324:	ae400168 	sw	zero,360(s2)
 328:	ae400164 	sw	zero,356(s2)
 32c:	10000048 	b	450 <func_8089399C+0x194>
 330:	ae400160 	sw	zero,352(s2)
 334:	9243015c 	lbu	v1,348(s2)
 338:	3c1e0000 	lui	s8,0x0
 33c:	27de0000 	addiu	s8,s8,0
 340:	30620018 	andi	v0,v1,0x18
 344:	0002102b 	sltu	v0,zero,v0
 348:	10400007 	beqz	v0,368 <func_8089399C+0xac>
 34c:	3c170000 	lui	s7,0x0
 350:	30620002 	andi	v0,v1,0x2
 354:	0002102b 	sltu	v0,zero,v0
 358:	50400004 	beqzl	v0,36c <func_8089399C+0xb0>
 35c:	afa20074 	sw	v0,116(sp)
 360:	30620001 	andi	v0,v1,0x1
 364:	0002102b 	sltu	v0,zero,v0
 368:	afa20074 	sw	v0,116(sp)
 36c:	9242015c 	lbu	v0,348(s2)
 370:	3c150000 	lui	s5,0x0
 374:	26b50000 	addiu	s5,s5,0
 378:	30420030 	andi	v0,v0,0x30
 37c:	afa2007c 	sw	v0,124(sp)
 380:	afa20078 	sw	v0,120(sp)
 384:	26f70000 	addiu	s7,s7,0
 388:	2416000c 	li	s6,12
 38c:	8e6f0000 	lw	t7,0(s3)
 390:	51e00025 	beqzl	t7,428 <func_8089399C+0x16c>
 394:	8e040160 	lw	a0,352(s0)
 398:	8e180160 	lw	t8,352(s0)
 39c:	8fa40064 	lw	a0,100(sp)
 3a0:	57000027 	bnezl	t8,440 <func_8089399C+0x184>
 3a4:	26310001 	addiu	s1,s1,1
 3a8:	0c000000 	jal	0 <func_808936E0>
 3ac:	8fa5006c 	lw	a1,108(sp)
 3b0:	10400022 	beqz	v0,43c <func_8089399C+0x180>
 3b4:	26841c24 	addiu	a0,s4,7204
 3b8:	02360019 	multu	s1,s6
 3bc:	00114040 	sll	t0,s1,0x1
 3c0:	02e84821 	addu	t1,s7,t0
 3c4:	852a0000 	lh	t2,0(t1)
 3c8:	02802825 	move	a1,s4
 3cc:	240600b7 	li	a2,183
 3d0:	afa00018 	sw	zero,24(sp)
 3d4:	afa0001c 	sw	zero,28(sp)
 3d8:	afa00020 	sw	zero,32(sp)
 3dc:	afaa0024 	sw	t2,36(sp)
 3e0:	0000c812 	mflo	t9
 3e4:	02b91021 	addu	v0,s5,t9
 3e8:	c4440004 	lwc1	$f4,4(v0)
 3ec:	c4460008 	lwc1	$f6,8(v0)
 3f0:	8c470000 	lw	a3,0(v0)
 3f4:	e7a40010 	swc1	$f4,16(sp)
 3f8:	0c000000 	jal	0 <func_808936E0>
 3fc:	e7a60014 	swc1	$f6,20(sp)
 400:	1440000e 	bnez	v0,43c <func_8089399C+0x180>
 404:	ae020160 	sw	v0,352(s0)
 408:	3c050000 	lui	a1,0x0
 40c:	24a50000 	addiu	a1,a1,0
 410:	03c02025 	move	a0,s8
 414:	0c000000 	jal	0 <func_808936E0>
 418:	24060136 	li	a2,310
 41c:	10000008 	b	440 <func_8089399C+0x184>
 420:	26310001 	addiu	s1,s1,1
 424:	8e040160 	lw	a0,352(s0)
 428:	50800005 	beqzl	a0,440 <func_8089399C+0x184>
 42c:	26310001 	addiu	s1,s1,1
 430:	0c000000 	jal	0 <func_808936E0>
 434:	00000000 	nop
 438:	ae000160 	sw	zero,352(s0)
 43c:	26310001 	addiu	s1,s1,1
 440:	24010003 	li	at,3
 444:	26730004 	addiu	s3,s3,4
 448:	1621ffd0 	bne	s1,at,38c <func_8089399C+0xd0>
 44c:	26100004 	addiu	s0,s0,4
 450:	8fab006c 	lw	t3,108(sp)
 454:	ae4b016c 	sw	t3,364(s2)
 458:	8fbf0054 	lw	ra,84(sp)
 45c:	8fbe0050 	lw	s8,80(sp)
 460:	8fb7004c 	lw	s7,76(sp)
 464:	8fb60048 	lw	s6,72(sp)
 468:	8fb50044 	lw	s5,68(sp)
 46c:	8fb40040 	lw	s4,64(sp)
 470:	8fb3003c 	lw	s3,60(sp)
 474:	8fb20038 	lw	s2,56(sp)
 478:	8fb10034 	lw	s1,52(sp)
 47c:	8fb00030 	lw	s0,48(sp)
 480:	03e00008 	jr	ra
 484:	27bd0088 	addiu	sp,sp,136

00000488 <BgJyaBigmirror_Init>:
 488:	3c0e0000 	lui	t6,0x0
 48c:	91ce0000 	lbu	t6,0(t6)
 490:	27bdffe8 	addiu	sp,sp,-24
 494:	afbf0014 	sw	ra,20(sp)
 498:	afa5001c 	sw	a1,28(sp)
 49c:	11c00005 	beqz	t6,4b4 <BgJyaBigmirror_Init+0x2c>
 4a0:	00803025 	move	a2,a0
 4a4:	0c000000 	jal	0 <func_808936E0>
 4a8:	00000000 	nop
 4ac:	10000019 	b	514 <BgJyaBigmirror_Init+0x8c>
 4b0:	8fbf0014 	lw	ra,20(sp)
 4b4:	3c053dcc 	lui	a1,0x3dcc
 4b8:	34a5cccd 	ori	a1,a1,0xcccd
 4bc:	00c02025 	move	a0,a2
 4c0:	0c000000 	jal	0 <func_808936E0>
 4c4:	afa60018 	sw	a2,24(sp)
 4c8:	3c020000 	lui	v0,0x0
 4cc:	24420000 	addiu	v0,v0,0
 4d0:	8fa60018 	lw	a2,24(sp)
 4d4:	844f0010 	lh	t7,16(v0)
 4d8:	2403ffff 	li	v1,-1
 4dc:	24070001 	li	a3,1
 4e0:	a4cf0150 	sh	t7,336(a2)
 4e4:	84580024 	lh	t8,36(v0)
 4e8:	3c010000 	lui	at,0x0
 4ec:	a0c30003 	sb	v1,3(a2)
 4f0:	a4d80158 	sh	t8,344(a2)
 4f4:	a0270000 	sb	a3,0(at)
 4f8:	3c040000 	lui	a0,0x0
 4fc:	24840000 	addiu	a0,a0,0
 500:	a0c7015d 	sb	a3,349(a2)
 504:	acc3016c 	sw	v1,364(a2)
 508:	0c000000 	jal	0 <func_808936E0>
 50c:	84c5001c 	lh	a1,28(a2)
 510:	8fbf0014 	lw	ra,20(sp)
 514:	27bd0018 	addiu	sp,sp,24
 518:	03e00008 	jr	ra
 51c:	00000000 	nop

00000520 <BgJyaBigmirror_Destroy>:
 520:	afa50004 	sw	a1,4(sp)
 524:	908e015d 	lbu	t6,349(a0)
 528:	3c010000 	lui	at,0x0
 52c:	11c00002 	beqz	t6,538 <BgJyaBigmirror_Destroy+0x18>
 530:	00000000 	nop
 534:	a0200000 	sb	zero,0(at)
 538:	03e00008 	jr	ra
 53c:	00000000 	nop

00000540 <BgJyaBigmirror_Update>:
 540:	27bdffe8 	addiu	sp,sp,-24
 544:	afbf0014 	sw	ra,20(sp)
 548:	afa40018 	sw	a0,24(sp)
 54c:	0c000000 	jal	0 <func_808936E0>
 550:	afa5001c 	sw	a1,28(sp)
 554:	8fa40018 	lw	a0,24(sp)
 558:	0c000000 	jal	0 <func_808936E0>
 55c:	8fa5001c 	lw	a1,28(sp)
 560:	8fa40018 	lw	a0,24(sp)
 564:	0c000000 	jal	0 <func_808936E0>
 568:	8fa5001c 	lw	a1,28(sp)
 56c:	8fa40018 	lw	a0,24(sp)
 570:	0c000000 	jal	0 <func_808936E0>
 574:	8fa5001c 	lw	a1,28(sp)
 578:	8fbf0014 	lw	ra,20(sp)
 57c:	27bd0018 	addiu	sp,sp,24
 580:	03e00008 	jr	ra
 584:	00000000 	nop

00000588 <func_80893C68>:
 588:	27bdffb0 	addiu	sp,sp,-80
 58c:	afbf001c 	sw	ra,28(sp)
 590:	afb00018 	sw	s0,24(sp)
 594:	afa40050 	sw	a0,80(sp)
 598:	afa50054 	sw	a1,84(sp)
 59c:	8ca50000 	lw	a1,0(a1)
 5a0:	3c060000 	lui	a2,0x0
 5a4:	24c60000 	addiu	a2,a2,0
 5a8:	27a40034 	addiu	a0,sp,52
 5ac:	240701b3 	li	a3,435
 5b0:	0c000000 	jal	0 <func_808936E0>
 5b4:	00a08025 	move	s0,a1
 5b8:	8faf0054 	lw	t7,84(sp)
 5bc:	0c000000 	jal	0 <func_808936E0>
 5c0:	8de40000 	lw	a0,0(t7)
 5c4:	8fa40054 	lw	a0,84(sp)
 5c8:	24050157 	li	a1,343
 5cc:	24060001 	li	a2,1
 5d0:	0c000000 	jal	0 <func_808936E0>
 5d4:	24841c24 	addiu	a0,a0,7204
 5d8:	10400004 	beqz	v0,5ec <func_80893C68+0x64>
 5dc:	00404025 	move	t0,v0
 5e0:	8fa30050 	lw	v1,80(sp)
 5e4:	c4440028 	lwc1	$f4,40(v0)
 5e8:	e4640170 	swc1	$f4,368(v1)
 5ec:	8fa30050 	lw	v1,80(sp)
 5f0:	3c014220 	lui	at,0x4220
 5f4:	44814000 	mtc1	at,$f8
 5f8:	c4660028 	lwc1	$f6,40(v1)
 5fc:	c46c0024 	lwc1	$f12,36(v1)
 600:	8c66002c 	lw	a2,44(v1)
 604:	afa80048 	sw	t0,72(sp)
 608:	246700b4 	addiu	a3,v1,180
 60c:	0c000000 	jal	0 <func_808936E0>
 610:	46083380 	add.s	$f14,$f6,$f8
 614:	8fb80050 	lw	t8,80(sp)
 618:	3c010000 	lui	at,0x0
 61c:	c42c0000 	lwc1	$f12,0(at)
 620:	3c010000 	lui	at,0x0
 624:	c4300000 	lwc1	$f16,0(at)
 628:	c70a0170 	lwc1	$f10,368(t8)
 62c:	3c010000 	lui	at,0x0
 630:	c4240000 	lwc1	$f4,0(at)
 634:	46105482 	mul.s	$f18,$f10,$f16
 638:	44066000 	mfc1	a2,$f12
 63c:	24070001 	li	a3,1
 640:	0c000000 	jal	0 <func_808936E0>
 644:	46049380 	add.s	$f14,$f18,$f4
 648:	8e0202d0 	lw	v0,720(s0)
 64c:	8fa80048 	lw	t0,72(sp)
 650:	3c09da38 	lui	t1,0xda38
 654:	24590008 	addiu	t9,v0,8
 658:	ae1902d0 	sw	t9,720(s0)
 65c:	35290003 	ori	t1,t1,0x3
 660:	ac490000 	sw	t1,0(v0)
 664:	8faa0054 	lw	t2,84(sp)
 668:	3c050000 	lui	a1,0x0
 66c:	24a50000 	addiu	a1,a1,0
 670:	8d440000 	lw	a0,0(t2)
 674:	240601c9 	li	a2,457
 678:	afa20030 	sw	v0,48(sp)
 67c:	0c000000 	jal	0 <func_808936E0>
 680:	afa80048 	sw	t0,72(sp)
 684:	8fa30030 	lw	v1,48(sp)
 688:	8fa80048 	lw	t0,72(sp)
 68c:	3c0d0601 	lui	t5,0x601
 690:	ac620004 	sw	v0,4(v1)
 694:	8e0202d0 	lw	v0,720(s0)
 698:	25adbc70 	addiu	t5,t5,-17296
 69c:	3c0cde00 	lui	t4,0xde00
 6a0:	244b0008 	addiu	t3,v0,8
 6a4:	ae0b02d0 	sw	t3,720(s0)
 6a8:	ac4d0004 	sw	t5,4(v0)
 6ac:	11000024 	beqz	t0,740 <func_80893C68+0x1b8>
 6b0:	ac4c0000 	sw	t4,0(v0)
 6b4:	3c070000 	lui	a3,0x0
 6b8:	24e70000 	addiu	a3,a3,0
 6bc:	c50c0024 	lwc1	$f12,36(t0)
 6c0:	c50e0028 	lwc1	$f14,40(t0)
 6c4:	0c000000 	jal	0 <func_808936E0>
 6c8:	8d06002c 	lw	a2,44(t0)
 6cc:	3c010000 	lui	at,0x0
 6d0:	c42c0000 	lwc1	$f12,0(at)
 6d4:	24070001 	li	a3,1
 6d8:	44066000 	mfc1	a2,$f12
 6dc:	0c000000 	jal	0 <func_808936E0>
 6e0:	46006386 	mov.s	$f14,$f12
 6e4:	8e0202d0 	lw	v0,720(s0)
 6e8:	3c0fda38 	lui	t7,0xda38
 6ec:	35ef0003 	ori	t7,t7,0x3
 6f0:	244e0008 	addiu	t6,v0,8
 6f4:	ae0e02d0 	sw	t6,720(s0)
 6f8:	ac4f0000 	sw	t7,0(v0)
 6fc:	8fb80054 	lw	t8,84(sp)
 700:	3c050000 	lui	a1,0x0
 704:	24a50000 	addiu	a1,a1,0
 708:	8f040000 	lw	a0,0(t8)
 70c:	240601d3 	li	a2,467
 710:	0c000000 	jal	0 <func_808936E0>
 714:	afa20028 	sw	v0,40(sp)
 718:	8fa30028 	lw	v1,40(sp)
 71c:	3c0a0601 	lui	t2,0x601
 720:	254abd80 	addiu	t2,t2,-17024
 724:	ac620004 	sw	v0,4(v1)
 728:	8e0202d0 	lw	v0,720(s0)
 72c:	3c09de00 	lui	t1,0xde00
 730:	24590008 	addiu	t9,v0,8
 734:	ae1902d0 	sw	t9,720(s0)
 738:	ac4a0004 	sw	t2,4(v0)
 73c:	ac490000 	sw	t1,0(v0)
 740:	8fab0054 	lw	t3,84(sp)
 744:	3c060000 	lui	a2,0x0
 748:	24c60000 	addiu	a2,a2,0
 74c:	27a40034 	addiu	a0,sp,52
 750:	240701dc 	li	a3,476
 754:	0c000000 	jal	0 <func_808936E0>
 758:	8d650000 	lw	a1,0(t3)
 75c:	8fbf001c 	lw	ra,28(sp)
 760:	8fb00018 	lw	s0,24(sp)
 764:	27bd0050 	addiu	sp,sp,80
 768:	03e00008 	jr	ra
 76c:	00000000 	nop

00000770 <BgJyaBigmirror_Draw>:
 770:	27bdffe8 	addiu	sp,sp,-24
 774:	afbf0014 	sw	ra,20(sp)
 778:	afa5001c 	sw	a1,28(sp)
 77c:	9082015c 	lbu	v0,348(a0)
 780:	00803025 	move	a2,a0
 784:	00a02025 	move	a0,a1
 788:	304e0010 	andi	t6,v0,0x10
 78c:	11c0000a 	beqz	t6,7b8 <BgJyaBigmirror_Draw+0x48>
 790:	3c050601 	lui	a1,0x601
 794:	24a5e1b0 	addiu	a1,a1,-7760
 798:	0c000000 	jal	0 <func_808936E0>
 79c:	afa60018 	sw	a2,24(sp)
 7a0:	3c050601 	lui	a1,0x601
 7a4:	24a5e2d0 	addiu	a1,a1,-7472
 7a8:	0c000000 	jal	0 <func_808936E0>
 7ac:	8fa4001c 	lw	a0,28(sp)
 7b0:	8fa60018 	lw	a2,24(sp)
 7b4:	90c2015c 	lbu	v0,348(a2)
 7b8:	304f0038 	andi	t7,v0,0x38
 7bc:	11e00007 	beqz	t7,7dc <BgJyaBigmirror_Draw+0x6c>
 7c0:	30580002 	andi	t8,v0,0x2
 7c4:	13000005 	beqz	t8,7dc <BgJyaBigmirror_Draw+0x6c>
 7c8:	30590001 	andi	t9,v0,0x1
 7cc:	13200003 	beqz	t9,7dc <BgJyaBigmirror_Draw+0x6c>
 7d0:	00c02025 	move	a0,a2
 7d4:	0c000000 	jal	0 <func_808936E0>
 7d8:	8fa5001c 	lw	a1,28(sp)
 7dc:	8fbf0014 	lw	ra,20(sp)
 7e0:	27bd0018 	addiu	sp,sp,24
 7e4:	03e00008 	jr	ra
 7e8:	00000000 	nop
 7ec:	00000000 	nop
