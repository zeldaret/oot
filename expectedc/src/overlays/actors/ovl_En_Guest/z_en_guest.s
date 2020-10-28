
build/src/overlays/actors/ovl_En_Guest/z_en_guest.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnGuest_Init>:
   0:	3c0e0000 	lui	t6,0x0
   4:	95ce0f06 	lhu	t6,3846(t6)
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afbf0014 	sw	ra,20(sp)
  10:	31cf0040 	andi	t7,t6,0x40
  14:	00803025 	move	a2,a0
  18:	11e00005 	beqz	t7,30 <EnGuest_Init+0x30>
  1c:	00a03825 	move	a3,a1
  20:	0c000000 	jal	0 <EnGuest_Init>
  24:	00000000 	nop
  28:	1000001f 	b	a8 <EnGuest_Init+0xa8>
  2c:	8fbf0014 	lw	ra,20(sp)
  30:	3c010001 	lui	at,0x1
  34:	342117a4 	ori	at,at,0x17a4
  38:	00e12021 	addu	a0,a3,at
  3c:	240500c5 	li	a1,197
  40:	0c000000 	jal	0 <EnGuest_Init>
  44:	afa60018 	sw	a2,24(sp)
  48:	8fa60018 	lw	a2,24(sp)
  4c:	3c040000 	lui	a0,0x0
  50:	a0c2030c 	sb	v0,780(a2)
  54:	80d8030c 	lb	t8,780(a2)
  58:	07030013 	bgezl	t8,a8 <EnGuest_Init+0xa8>
  5c:	8fbf0014 	lw	ra,20(sp)
  60:	0c000000 	jal	0 <EnGuest_Init>
  64:	24840000 	addiu	a0,a0,0
  68:	3c040000 	lui	a0,0x0
  6c:	3c050000 	lui	a1,0x0
  70:	24a5002c 	addiu	a1,a1,44
  74:	2484000c 	addiu	a0,a0,12
  78:	0c000000 	jal	0 <EnGuest_Init>
  7c:	24060081 	li	a2,129
  80:	3c040000 	lui	a0,0x0
  84:	0c000000 	jal	0 <EnGuest_Init>
  88:	2484003c 	addiu	a0,a0,60
  8c:	3c040000 	lui	a0,0x0
  90:	3c050000 	lui	a1,0x0
  94:	24a50044 	addiu	a1,a1,68
  98:	24840040 	addiu	a0,a0,64
  9c:	0c000000 	jal	0 <EnGuest_Init>
  a0:	24060084 	li	a2,132
  a4:	8fbf0014 	lw	ra,20(sp)
  a8:	27bd0018 	addiu	sp,sp,24
  ac:	03e00008 	jr	ra
  b0:	00000000 	nop

000000b4 <EnGuest_Destroy>:
  b4:	27bdffe8 	addiu	sp,sp,-24
  b8:	00803025 	move	a2,a0
  bc:	afbf0014 	sw	ra,20(sp)
  c0:	00a02025 	move	a0,a1
  c4:	0c000000 	jal	0 <EnGuest_Init>
  c8:	24c50254 	addiu	a1,a2,596
  cc:	8fbf0014 	lw	ra,20(sp)
  d0:	27bd0018 	addiu	sp,sp,24
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop

000000dc <EnGuest_Update>:
  dc:	27bdffc0 	addiu	sp,sp,-64
  e0:	afb00024 	sw	s0,36(sp)
  e4:	3c010001 	lui	at,0x1
  e8:	00808025 	move	s0,a0
  ec:	afb10028 	sw	s1,40(sp)
  f0:	342117a4 	ori	at,at,0x17a4
  f4:	00a08825 	move	s1,a1
  f8:	afbf002c 	sw	ra,44(sp)
  fc:	00a12021 	addu	a0,a1,at
 100:	0c000000 	jal	0 <EnGuest_Init>
 104:	8205030c 	lb	a1,780(s0)
 108:	1040004b 	beqz	v0,238 <EnGuest_Update+0x15c>
 10c:	2401ffef 	li	at,-17
 110:	8e0e0004 	lw	t6,4(s0)
 114:	3c050000 	lui	a1,0x0
 118:	24a5004c 	addiu	a1,a1,76
 11c:	01c17824 	and	t7,t6,at
 120:	ae0f0004 	sw	t7,4(s0)
 124:	0c000000 	jal	0 <EnGuest_Init>
 128:	02002025 	move	a0,s0
 12c:	2605014c 	addiu	a1,s0,332
 130:	3c060000 	lui	a2,0x0
 134:	26180190 	addiu	t8,s0,400
 138:	261901f0 	addiu	t9,s0,496
 13c:	24080010 	li	t0,16
 140:	afa80018 	sw	t0,24(sp)
 144:	afb90014 	sw	t9,20(sp)
 148:	afb80010 	sw	t8,16(sp)
 14c:	24c60000 	addiu	a2,a2,0
 150:	afa50030 	sw	a1,48(sp)
 154:	02202025 	move	a0,s1
 158:	0c000000 	jal	0 <EnGuest_Init>
 15c:	00003825 	move	a3,zero
 160:	8209030c 	lb	t1,780(s0)
 164:	3c0c0001 	lui	t4,0x1
 168:	3c018000 	lui	at,0x8000
 16c:	00095100 	sll	t2,t1,0x4
 170:	01495021 	addu	t2,t2,t1
 174:	000a5080 	sll	t2,t2,0x2
 178:	022a5821 	addu	t3,s1,t2
 17c:	018b6021 	addu	t4,t4,t3
 180:	8d8c17b4 	lw	t4,6068(t4)
 184:	3c040000 	lui	a0,0x0
 188:	24840000 	addiu	a0,a0,0
 18c:	01816821 	addu	t5,t4,at
 190:	3c010000 	lui	at,0x0
 194:	0c000000 	jal	0 <EnGuest_Init>
 198:	ac2d0018 	sw	t5,24(at)
 19c:	44822000 	mtc1	v0,$f4
 1a0:	44800000 	mtc1	zero,$f0
 1a4:	3c050000 	lui	a1,0x0
 1a8:	468021a0 	cvt.s.w	$f6,$f4
 1ac:	44070000 	mfc1	a3,$f0
 1b0:	24a50000 	addiu	a1,a1,0
 1b4:	8fa40030 	lw	a0,48(sp)
 1b8:	3c063f80 	lui	a2,0x3f80
 1bc:	afa00014 	sw	zero,20(sp)
 1c0:	e7a60010 	swc1	$f6,16(sp)
 1c4:	0c000000 	jal	0 <EnGuest_Init>
 1c8:	e7a00018 	swc1	$f0,24(sp)
 1cc:	3c0e0000 	lui	t6,0x0
 1d0:	3c0f0000 	lui	t7,0x0
 1d4:	25ce0000 	addiu	t6,t6,0
 1d8:	25ef0000 	addiu	t7,t7,0
 1dc:	ae0e0134 	sw	t6,308(s0)
 1e0:	ae0f0130 	sw	t7,304(s0)
 1e4:	26050254 	addiu	a1,s0,596
 1e8:	afa50030 	sw	a1,48(sp)
 1ec:	0c000000 	jal	0 <EnGuest_Init>
 1f0:	02202025 	move	a0,s1
 1f4:	3c070000 	lui	a3,0x0
 1f8:	8fa50030 	lw	a1,48(sp)
 1fc:	24e70020 	addiu	a3,a3,32
 200:	02202025 	move	a0,s1
 204:	0c000000 	jal	0 <EnGuest_Init>
 208:	02003025 	move	a2,s0
 20c:	02002025 	move	a0,s0
 210:	0c000000 	jal	0 <EnGuest_Init>
 214:	3c054270 	lui	a1,0x4270
 218:	3c190000 	lui	t9,0x0
 21c:	2418700d 	li	t8,28685
 220:	27390000 	addiu	t9,t9,0
 224:	a200030e 	sb	zero,782(s0)
 228:	a200030d 	sb	zero,781(s0)
 22c:	a60002ca 	sh	zero,714(s0)
 230:	a618010e 	sh	t8,270(s0)
 234:	ae190250 	sw	t9,592(s0)
 238:	8fbf002c 	lw	ra,44(sp)
 23c:	8fb00024 	lw	s0,36(sp)
 240:	8fb10028 	lw	s1,40(sp)
 244:	03e00008 	jr	ra
 248:	27bd0040 	addiu	sp,sp,64

0000024c <func_80A5046C>:
 24c:	27bdffe8 	addiu	sp,sp,-24
 250:	afbf0014 	sw	ra,20(sp)
 254:	908e030d 	lbu	t6,781(a0)
 258:	55c0000a 	bnezl	t6,284 <func_80A5046C+0x38>
 25c:	848202ca 	lh	v0,714(a0)
 260:	848202ca 	lh	v0,714(a0)
 264:	24180001 	li	t8,1
 268:	10400003 	beqz	v0,278 <func_80A5046C+0x2c>
 26c:	244fffff 	addiu	t7,v0,-1
 270:	1000001d 	b	2e8 <func_80A5046C+0x9c>
 274:	a48f02ca 	sh	t7,714(a0)
 278:	1000001b 	b	2e8 <func_80A5046C+0x9c>
 27c:	a098030d 	sb	t8,781(a0)
 280:	848202ca 	lh	v0,714(a0)
 284:	10400003 	beqz	v0,294 <func_80A5046C+0x48>
 288:	2459ffff 	addiu	t9,v0,-1
 28c:	10000016 	b	2e8 <func_80A5046C+0x9c>
 290:	a49902ca 	sh	t9,714(a0)
 294:	9088030e 	lbu	t0,782(a0)
 298:	240e0001 	li	t6,1
 29c:	25090001 	addiu	t1,t0,1
 2a0:	312a00ff 	andi	t2,t1,0xff
 2a4:	29410003 	slti	at,t2,3
 2a8:	1420000e 	bnez	at,2e4 <func_80A5046C+0x98>
 2ac:	a089030e 	sb	t1,782(a0)
 2b0:	3c014270 	lui	at,0x4270
 2b4:	a080030e 	sb	zero,782(a0)
 2b8:	a080030d 	sb	zero,781(a0)
 2bc:	44816000 	mtc1	at,$f12
 2c0:	0c000000 	jal	0 <EnGuest_Init>
 2c4:	afa40018 	sw	a0,24(sp)
 2c8:	4600010d 	trunc.w.s	$f4,$f0
 2cc:	8fa40018 	lw	a0,24(sp)
 2d0:	440c2000 	mfc1	t4,$f4
 2d4:	00000000 	nop
 2d8:	258d0014 	addiu	t5,t4,20
 2dc:	10000002 	b	2e8 <func_80A5046C+0x9c>
 2e0:	a48d02ca 	sh	t5,714(a0)
 2e4:	a48e02ca 	sh	t6,714(a0)
 2e8:	8fbf0014 	lw	ra,20(sp)
 2ec:	27bd0018 	addiu	sp,sp,24
 2f0:	03e00008 	jr	ra
 2f4:	00000000 	nop

000002f8 <func_80A50518>:
 2f8:	27bdffe8 	addiu	sp,sp,-24
 2fc:	afbf0014 	sw	ra,20(sp)
 300:	afa5001c 	sw	a1,28(sp)
 304:	0c000000 	jal	0 <EnGuest_Init>
 308:	afa40018 	sw	a0,24(sp)
 30c:	10400005 	beqz	v0,324 <func_80A50518+0x2c>
 310:	8fa40018 	lw	a0,24(sp)
 314:	3c0e0000 	lui	t6,0x0
 318:	25ce0000 	addiu	t6,t6,0
 31c:	1000000b 	b	34c <func_80A50518+0x54>
 320:	ac8e0250 	sw	t6,592(a0)
 324:	3c0142c8 	lui	at,0x42c8
 328:	44810000 	mtc1	at,$f0
 32c:	c4840090 	lwc1	$f4,144(a0)
 330:	4600203c 	c.lt.s	$f4,$f0
 334:	00000000 	nop
 338:	45020005 	bc1fl	350 <func_80A50518+0x58>
 33c:	8fbf0014 	lw	ra,20(sp)
 340:	44060000 	mfc1	a2,$f0
 344:	0c000000 	jal	0 <EnGuest_Init>
 348:	8fa5001c 	lw	a1,28(sp)
 34c:	8fbf0014 	lw	ra,20(sp)
 350:	27bd0018 	addiu	sp,sp,24
 354:	03e00008 	jr	ra
 358:	00000000 	nop

0000035c <func_80A5057C>:
 35c:	27bdffe8 	addiu	sp,sp,-24
 360:	afbf0014 	sw	ra,20(sp)
 364:	afa40018 	sw	a0,24(sp)
 368:	afa5001c 	sw	a1,28(sp)
 36c:	0c000000 	jal	0 <EnGuest_Init>
 370:	24a420d8 	addiu	a0,a1,8408
 374:	24010006 	li	at,6
 378:	54410009 	bnel	v0,at,3a0 <func_80A5057C+0x44>
 37c:	8fbf0014 	lw	ra,20(sp)
 380:	0c000000 	jal	0 <EnGuest_Init>
 384:	8fa4001c 	lw	a0,28(sp)
 388:	10400004 	beqz	v0,39c <func_80A5057C+0x40>
 38c:	8faf0018 	lw	t7,24(sp)
 390:	3c0e0000 	lui	t6,0x0
 394:	25ce0000 	addiu	t6,t6,0
 398:	adee0250 	sw	t6,592(t7)
 39c:	8fbf0014 	lw	ra,20(sp)
 3a0:	27bd0018 	addiu	sp,sp,24
 3a4:	03e00008 	jr	ra
 3a8:	00000000 	nop

000003ac <func_80A505CC>:
 3ac:	27bdffd0 	addiu	sp,sp,-48
 3b0:	afbf001c 	sw	ra,28(sp)
 3b4:	afb10018 	sw	s1,24(sp)
 3b8:	afb00014 	sw	s0,20(sp)
 3bc:	8cae1c44 	lw	t6,7236(a1)
 3c0:	00808025 	move	s0,a0
 3c4:	00a08825 	move	s1,a1
 3c8:	afae0024 	sw	t6,36(sp)
 3cc:	848f02c8 	lh	t7,712(a0)
 3d0:	25f80001 	addiu	t8,t7,1
 3d4:	0c000000 	jal	0 <EnGuest_Init>
 3d8:	a49802c8 	sh	t8,712(a0)
 3dc:	8e190250 	lw	t9,592(s0)
 3e0:	02002025 	move	a0,s0
 3e4:	02202825 	move	a1,s1
 3e8:	0320f809 	jalr	t9
 3ec:	00000000 	nop
 3f0:	8fa80024 	lw	t0,36(sp)
 3f4:	3c0b0000 	lui	t3,0x0
 3f8:	3c0141a0 	lui	at,0x41a0
 3fc:	8d0a0024 	lw	t2,36(t0)
 400:	02002025 	move	a0,s0
 404:	260502a0 	addiu	a1,s0,672
 408:	ae0a02b8 	sw	t2,696(s0)
 40c:	8d090028 	lw	t1,40(t0)
 410:	24060006 	li	a2,6
 414:	ae0902bc 	sw	t1,700(s0)
 418:	8d0a002c 	lw	t2,44(t0)
 41c:	ae0a02c0 	sw	t2,704(s0)
 420:	8d6b0004 	lw	t3,4(t3)
 424:	55600006 	bnezl	t3,440 <func_80A505CC+0x94>
 428:	44813000 	mtc1	at,$f6
 42c:	3c014120 	lui	at,0x4120
 430:	44812000 	mtc1	at,$f4
 434:	10000004 	b	448 <func_80A505CC+0x9c>
 438:	e60402b4 	swc1	$f4,692(s0)
 43c:	44813000 	mtc1	at,$f6
 440:	00000000 	nop
 444:	e60602b4 	swc1	$f6,692(s0)
 448:	0c000000 	jal	0 <EnGuest_Init>
 44c:	24070002 	li	a3,2
 450:	02202025 	move	a0,s1
 454:	260502cc 	addiu	a1,s0,716
 458:	260602ec 	addiu	a2,s0,748
 45c:	0c000000 	jal	0 <EnGuest_Init>
 460:	24070010 	li	a3,16
 464:	820c030c 	lb	t4,780(s0)
 468:	3c0f0001 	lui	t7,0x1
 46c:	3c018000 	lui	at,0x8000
 470:	000c6900 	sll	t5,t4,0x4
 474:	01ac6821 	addu	t5,t5,t4
 478:	000d6880 	sll	t5,t5,0x2
 47c:	022d7021 	addu	t6,s1,t5
 480:	01ee7821 	addu	t7,t7,t6
 484:	8def17b4 	lw	t7,6068(t7)
 488:	2604014c 	addiu	a0,s0,332
 48c:	01e1c021 	addu	t8,t7,at
 490:	3c010000 	lui	at,0x0
 494:	0c000000 	jal	0 <EnGuest_Init>
 498:	ac380018 	sw	t8,24(at)
 49c:	02002025 	move	a0,s0
 4a0:	0c000000 	jal	0 <EnGuest_Init>
 4a4:	3c054270 	lui	a1,0x4270
 4a8:	26060254 	addiu	a2,s0,596
 4ac:	00c02825 	move	a1,a2
 4b0:	afa60020 	sw	a2,32(sp)
 4b4:	0c000000 	jal	0 <EnGuest_Init>
 4b8:	02002025 	move	a0,s0
 4bc:	3c010001 	lui	at,0x1
 4c0:	34211e60 	ori	at,at,0x1e60
 4c4:	8fa60020 	lw	a2,32(sp)
 4c8:	02212821 	addu	a1,s1,at
 4cc:	0c000000 	jal	0 <EnGuest_Init>
 4d0:	02202025 	move	a0,s1
 4d4:	8fbf001c 	lw	ra,28(sp)
 4d8:	8fb00014 	lw	s0,20(sp)
 4dc:	8fb10018 	lw	s1,24(sp)
 4e0:	03e00008 	jr	ra
 4e4:	27bd0030 	addiu	sp,sp,48

000004e8 <func_80A50708>:
 4e8:	27bdffe8 	addiu	sp,sp,-24
 4ec:	afbf0014 	sw	ra,20(sp)
 4f0:	afa5001c 	sw	a1,28(sp)
 4f4:	afa60020 	sw	a2,32(sp)
 4f8:	afa70024 	sw	a3,36(sp)
 4fc:	0c000000 	jal	0 <EnGuest_Init>
 500:	24050010 	li	a1,16
 504:	3c0efb00 	lui	t6,0xfb00
 508:	ac4e0000 	sw	t6,0(v0)
 50c:	93a90023 	lbu	t1,35(sp)
 510:	93b8001f 	lbu	t8,31(sp)
 514:	93ad0027 	lbu	t5,39(sp)
 518:	93a8002b 	lbu	t0,43(sp)
 51c:	00095400 	sll	t2,t1,0x10
 520:	0018ce00 	sll	t9,t8,0x18
 524:	032a5825 	or	t3,t9,t2
 528:	000d7200 	sll	t6,t5,0x8
 52c:	016e7825 	or	t7,t3,t6
 530:	3c19df00 	lui	t9,0xdf00
 534:	01e84825 	or	t1,t7,t0
 538:	ac490004 	sw	t1,4(v0)
 53c:	ac590008 	sw	t9,8(v0)
 540:	ac40000c 	sw	zero,12(v0)
 544:	8fbf0014 	lw	ra,20(sp)
 548:	27bd0018 	addiu	sp,sp,24
 54c:	03e00008 	jr	ra
 550:	00000000 	nop

00000554 <EnGuest_OverrideLimbDraw>:
 554:	27bdffb8 	addiu	sp,sp,-72
 558:	afa40048 	sw	a0,72(sp)
 55c:	8fae0048 	lw	t6,72(sp)
 560:	afb00018 	sw	s0,24(sp)
 564:	afa60050 	sw	a2,80(sp)
 568:	00a08025 	move	s0,a1
 56c:	afbf001c 	sw	ra,28(sp)
 570:	afa70054 	sw	a3,84(sp)
 574:	3c060000 	lui	a2,0x0
 578:	24c60054 	addiu	a2,a2,84
 57c:	24070160 	li	a3,352
 580:	27a40028 	addiu	a0,sp,40
 584:	0c000000 	jal	0 <EnGuest_Init>
 588:	8dc50000 	lw	a1,0(t6)
 58c:	2401000f 	li	at,15
 590:	16010030 	bne	s0,at,654 <EnGuest_OverrideLimbDraw+0x100>
 594:	3c0f0000 	lui	t7,0x0
 598:	44807000 	mtc1	zero,$f14
 59c:	8fb80050 	lw	t8,80(sp)
 5a0:	3c0144af 	lui	at,0x44af
 5a4:	25ef0000 	addiu	t7,t7,0
 5a8:	44816000 	mtc1	at,$f12
 5ac:	44067000 	mfc1	a2,$f14
 5b0:	24070001 	li	a3,1
 5b4:	0c000000 	jal	0 <EnGuest_Init>
 5b8:	af0f0000 	sw	t7,0(t8)
 5bc:	8fa8005c 	lw	t0,92(sp)
 5c0:	27b9003c 	addiu	t9,sp,60
 5c4:	3c014700 	lui	at,0x4700
 5c8:	890a02a8 	lwl	t2,680(t0)
 5cc:	990a02ab 	lwr	t2,683(t0)
 5d0:	44814000 	mtc1	at,$f8
 5d4:	3c010000 	lui	at,0x0
 5d8:	af2a0000 	sw	t2,0(t9)
 5dc:	950a02ac 	lhu	t2,684(t0)
 5e0:	24050001 	li	a1,1
 5e4:	a72a0004 	sh	t2,4(t9)
 5e8:	87ab003e 	lh	t3,62(sp)
 5ec:	c4300094 	lwc1	$f16,148(at)
 5f0:	448b2000 	mtc1	t3,$f4
 5f4:	00000000 	nop
 5f8:	468021a0 	cvt.s.w	$f6,$f4
 5fc:	46083283 	div.s	$f10,$f6,$f8
 600:	46105302 	mul.s	$f12,$f10,$f16
 604:	0c000000 	jal	0 <EnGuest_Init>
 608:	00000000 	nop
 60c:	87ac003c 	lh	t4,60(sp)
 610:	3c014700 	lui	at,0x4700
 614:	44813000 	mtc1	at,$f6
 618:	448c9000 	mtc1	t4,$f18
 61c:	3c010000 	lui	at,0x0
 620:	c42a0098 	lwc1	$f10,152(at)
 624:	46809120 	cvt.s.w	$f4,$f18
 628:	24050001 	li	a1,1
 62c:	46062203 	div.s	$f8,$f4,$f6
 630:	460a4302 	mul.s	$f12,$f8,$f10
 634:	0c000000 	jal	0 <EnGuest_Init>
 638:	00000000 	nop
 63c:	44807000 	mtc1	zero,$f14
 640:	3c01c4af 	lui	at,0xc4af
 644:	44816000 	mtc1	at,$f12
 648:	44067000 	mfc1	a2,$f14
 64c:	0c000000 	jal	0 <EnGuest_Init>
 650:	24070001 	li	a3,1
 654:	24010008 	li	at,8
 658:	16010021 	bne	s0,at,6e0 <EnGuest_OverrideLimbDraw+0x18c>
 65c:	8fae005c 	lw	t6,92(sp)
 660:	89d802ae 	lwl	t8,686(t6)
 664:	99d802b1 	lwr	t8,689(t6)
 668:	27ad003c 	addiu	t5,sp,60
 66c:	3c014700 	lui	at,0x4700
 670:	adb80000 	sw	t8,0(t5)
 674:	95d802b2 	lhu	t8,690(t6)
 678:	44812000 	mtc1	at,$f4
 67c:	3c010000 	lui	at,0x0
 680:	a5b80004 	sh	t8,4(t5)
 684:	87b9003e 	lh	t9,62(sp)
 688:	c428009c 	lwc1	$f8,156(at)
 68c:	24050001 	li	a1,1
 690:	00194023 	negu	t0,t9
 694:	44888000 	mtc1	t0,$f16
 698:	00000000 	nop
 69c:	468084a0 	cvt.s.w	$f18,$f16
 6a0:	46049183 	div.s	$f6,$f18,$f4
 6a4:	46083302 	mul.s	$f12,$f6,$f8
 6a8:	0c000000 	jal	0 <EnGuest_Init>
 6ac:	00000000 	nop
 6b0:	87a9003c 	lh	t1,60(sp)
 6b4:	3c014700 	lui	at,0x4700
 6b8:	44819000 	mtc1	at,$f18
 6bc:	44895000 	mtc1	t1,$f10
 6c0:	3c010000 	lui	at,0x0
 6c4:	c42600a0 	lwc1	$f6,160(at)
 6c8:	46805420 	cvt.s.w	$f16,$f10
 6cc:	24050001 	li	a1,1
 6d0:	46128103 	div.s	$f4,$f16,$f18
 6d4:	46062302 	mul.s	$f12,$f4,$f6
 6d8:	0c000000 	jal	0 <EnGuest_Init>
 6dc:	00000000 	nop
 6e0:	24010008 	li	at,8
 6e4:	12010005 	beq	s0,at,6fc <EnGuest_OverrideLimbDraw+0x1a8>
 6e8:	8faa005c 	lw	t2,92(sp)
 6ec:	24010009 	li	at,9
 6f0:	12010002 	beq	s0,at,6fc <EnGuest_OverrideLimbDraw+0x1a8>
 6f4:	2401000c 	li	at,12
 6f8:	16010022 	bne	s0,at,784 <EnGuest_OverrideLimbDraw+0x230>
 6fc:	00105840 	sll	t3,s0,0x1
 700:	014b1821 	addu	v1,t2,t3
 704:	846402cc 	lh	a0,716(v1)
 708:	0c000000 	jal	0 <EnGuest_Init>
 70c:	afa30020 	sw	v1,32(sp)
 710:	8fa20058 	lw	v0,88(sp)
 714:	3c014348 	lui	at,0x4348
 718:	44818000 	mtc1	at,$f16
 71c:	844c0002 	lh	t4,2(v0)
 720:	8fa30020 	lw	v1,32(sp)
 724:	46100482 	mul.s	$f18,$f0,$f16
 728:	448c4000 	mtc1	t4,$f8
 72c:	00000000 	nop
 730:	468042a0 	cvt.s.w	$f10,$f8
 734:	46125100 	add.s	$f4,$f10,$f18
 738:	4600218d 	trunc.w.s	$f6,$f4
 73c:	440e3000 	mfc1	t6,$f6
 740:	00000000 	nop
 744:	a44e0002 	sh	t6,2(v0)
 748:	0c000000 	jal	0 <EnGuest_Init>
 74c:	846402ec 	lh	a0,748(v1)
 750:	8fa20058 	lw	v0,88(sp)
 754:	3c014348 	lui	at,0x4348
 758:	44815000 	mtc1	at,$f10
 75c:	844f0004 	lh	t7,4(v0)
 760:	460a0482 	mul.s	$f18,$f0,$f10
 764:	448f4000 	mtc1	t7,$f8
 768:	00000000 	nop
 76c:	46804420 	cvt.s.w	$f16,$f8
 770:	46128100 	add.s	$f4,$f16,$f18
 774:	4600218d 	trunc.w.s	$f6,$f4
 778:	44193000 	mfc1	t9,$f6
 77c:	00000000 	nop
 780:	a4590004 	sh	t9,4(v0)
 784:	8fa80048 	lw	t0,72(sp)
 788:	3c060000 	lui	a2,0x0
 78c:	24c60064 	addiu	a2,a2,100
 790:	27a40028 	addiu	a0,sp,40
 794:	24070184 	li	a3,388
 798:	0c000000 	jal	0 <EnGuest_Init>
 79c:	8d050000 	lw	a1,0(t0)
 7a0:	8fbf001c 	lw	ra,28(sp)
 7a4:	8fb00018 	lw	s0,24(sp)
 7a8:	27bd0048 	addiu	sp,sp,72
 7ac:	03e00008 	jr	ra
 7b0:	00001025 	move	v0,zero

000007b4 <EnGuest_Draw>:
 7b4:	27bdff98 	addiu	sp,sp,-104
 7b8:	afb1002c 	sw	s1,44(sp)
 7bc:	00a08825 	move	s1,a1
 7c0:	afbf0034 	sw	ra,52(sp)
 7c4:	afb20030 	sw	s2,48(sp)
 7c8:	afb00028 	sw	s0,40(sp)
 7cc:	8ca50000 	lw	a1,0(a1)
 7d0:	00809025 	move	s2,a0
 7d4:	3c060000 	lui	a2,0x0
 7d8:	24c60074 	addiu	a2,a2,116
 7dc:	27a4004c 	addiu	a0,sp,76
 7e0:	24070194 	li	a3,404
 7e4:	0c000000 	jal	0 <EnGuest_Init>
 7e8:	00a08025 	move	s0,a1
 7ec:	0c000000 	jal	0 <EnGuest_Init>
 7f0:	8e240000 	lw	a0,0(s1)
 7f4:	8e0202c0 	lw	v0,704(s0)
 7f8:	3c0fdb06 	lui	t7,0xdb06
 7fc:	35ef0020 	ori	t7,t7,0x20
 800:	244e0008 	addiu	t6,v0,8
 804:	ae0e02c0 	sw	t6,704(s0)
 808:	ac4f0000 	sw	t7,0(v0)
 80c:	8e240000 	lw	a0,0(s1)
 810:	241800ff 	li	t8,255
 814:	afb80010 	sw	t8,16(sp)
 818:	240500ff 	li	a1,255
 81c:	240600ff 	li	a2,255
 820:	240700ff 	li	a3,255
 824:	0c000000 	jal	0 <EnGuest_Init>
 828:	afa20048 	sw	v0,72(sp)
 82c:	8fa30048 	lw	v1,72(sp)
 830:	3c08db06 	lui	t0,0xdb06
 834:	35080024 	ori	t0,t0,0x24
 838:	ac620004 	sw	v0,4(v1)
 83c:	8e0202c0 	lw	v0,704(s0)
 840:	240900ff 	li	t1,255
 844:	240500a0 	li	a1,160
 848:	24590008 	addiu	t9,v0,8
 84c:	ae1902c0 	sw	t9,704(s0)
 850:	ac480000 	sw	t0,0(v0)
 854:	8e240000 	lw	a0,0(s1)
 858:	afa90010 	sw	t1,16(sp)
 85c:	2406003c 	li	a2,60
 860:	240700dc 	li	a3,220
 864:	0c000000 	jal	0 <EnGuest_Init>
 868:	afa20044 	sw	v0,68(sp)
 86c:	8fa30044 	lw	v1,68(sp)
 870:	3c0bdb06 	lui	t3,0xdb06
 874:	356b0028 	ori	t3,t3,0x28
 878:	ac620004 	sw	v0,4(v1)
 87c:	8e0202c0 	lw	v0,704(s0)
 880:	3c040000 	lui	a0,0x0
 884:	3c080000 	lui	t0,0x0
 888:	244a0008 	addiu	t2,v0,8
 88c:	ae0a02c0 	sw	t2,704(s0)
 890:	ac4b0000 	sw	t3,0(v0)
 894:	924c030e 	lbu	t4,782(s2)
 898:	3c0100ff 	lui	at,0xff
 89c:	3421ffff 	ori	at,at,0xffff
 8a0:	000c6880 	sll	t5,t4,0x2
 8a4:	008d2021 	addu	a0,a0,t5
 8a8:	8c840000 	lw	a0,0(a0)
 8ac:	3c0b0000 	lui	t3,0x0
 8b0:	256b0000 	addiu	t3,t3,0
 8b4:	00047900 	sll	t7,a0,0x4
 8b8:	000fc702 	srl	t8,t7,0x1c
 8bc:	0018c880 	sll	t9,t8,0x2
 8c0:	01194021 	addu	t0,t0,t9
 8c4:	8d080000 	lw	t0,0(t0)
 8c8:	00817024 	and	t6,a0,at
 8cc:	3c018000 	lui	at,0x8000
 8d0:	01c84821 	addu	t1,t6,t0
 8d4:	01215021 	addu	t2,t1,at
 8d8:	ac4a0004 	sw	t2,4(v0)
 8dc:	9247014e 	lbu	a3,334(s2)
 8e0:	8e46016c 	lw	a2,364(s2)
 8e4:	8e450150 	lw	a1,336(s2)
 8e8:	afb20018 	sw	s2,24(sp)
 8ec:	afa00014 	sw	zero,20(sp)
 8f0:	afab0010 	sw	t3,16(sp)
 8f4:	0c000000 	jal	0 <EnGuest_Init>
 8f8:	02202025 	move	a0,s1
 8fc:	3c060000 	lui	a2,0x0
 900:	24c60084 	addiu	a2,a2,132
 904:	27a4004c 	addiu	a0,sp,76
 908:	8e250000 	lw	a1,0(s1)
 90c:	0c000000 	jal	0 <EnGuest_Init>
 910:	240701a5 	li	a3,421
 914:	8fbf0034 	lw	ra,52(sp)
 918:	8fb00028 	lw	s0,40(sp)
 91c:	8fb1002c 	lw	s1,44(sp)
 920:	8fb20030 	lw	s2,48(sp)
 924:	03e00008 	jr	ra
 928:	27bd0068 	addiu	sp,sp,104
 92c:	00000000 	nop
