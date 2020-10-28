
build/src/overlays/actors/ovl_Bg_Haka_Tubo/z_bg_haka_tubo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaTubo_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb10018 	sw	s1,24(sp)
   8:	00a08825 	move	s1,a1
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00014 	sw	s0,20(sp)
  14:	3c050000 	lui	a1,0x0
  18:	00808025 	move	s0,a0
  1c:	afa00024 	sw	zero,36(sp)
  20:	0c000000 	jal	0 <BgHakaTubo_Init>
  24:	24a5007c 	addiu	a1,a1,124
  28:	02002025 	move	a0,s0
  2c:	0c000000 	jal	0 <BgHakaTubo_Init>
  30:	24050003 	li	a1,3
  34:	3c040000 	lui	a0,0x0
  38:	24840000 	addiu	a0,a0,0
  3c:	0c000000 	jal	0 <BgHakaTubo_Init>
  40:	27a50024 	addiu	a1,sp,36
  44:	02202025 	move	a0,s1
  48:	26250810 	addiu	a1,s1,2064
  4c:	02003025 	move	a2,s0
  50:	0c000000 	jal	0 <BgHakaTubo_Init>
  54:	8fa70024 	lw	a3,36(sp)
  58:	ae02014c 	sw	v0,332(s0)
  5c:	2605016c 	addiu	a1,s0,364
  60:	afa50020 	sw	a1,32(sp)
  64:	0c000000 	jal	0 <BgHakaTubo_Init>
  68:	02202025 	move	a0,s1
  6c:	3c070000 	lui	a3,0x0
  70:	8fa50020 	lw	a1,32(sp)
  74:	24e70020 	addiu	a3,a3,32
  78:	02202025 	move	a0,s1
  7c:	0c000000 	jal	0 <BgHakaTubo_Init>
  80:	02003025 	move	a2,s0
  84:	260501b8 	addiu	a1,s0,440
  88:	afa50020 	sw	a1,32(sp)
  8c:	0c000000 	jal	0 <BgHakaTubo_Init>
  90:	02202025 	move	a0,s1
  94:	3c070000 	lui	a3,0x0
  98:	8fa50020 	lw	a1,32(sp)
  9c:	24e7004c 	addiu	a3,a3,76
  a0:	02202025 	move	a0,s1
  a4:	0c000000 	jal	0 <BgHakaTubo_Init>
  a8:	02003025 	move	a2,s0
  ac:	0c000000 	jal	0 <BgHakaTubo_Init>
  b0:	00000000 	nop
  b4:	3c014170 	lui	at,0x4170
  b8:	44812000 	mtc1	at,$f4
  bc:	3c010000 	lui	at,0x0
  c0:	3c180000 	lui	t8,0x0
  c4:	46040182 	mul.s	$f6,$f0,$f4
  c8:	27180000 	addiu	t8,t8,0
  cc:	4600320d 	trunc.w.s	$f8,$f6
  d0:	440f4000 	mfc1	t7,$f8
  d4:	00000000 	nop
  d8:	a60f016a 	sh	t7,362(s0)
  dc:	ac200078 	sw	zero,120(at)
  e0:	ae180164 	sw	t8,356(s0)
  e4:	8fbf001c 	lw	ra,28(sp)
  e8:	8fb10018 	lw	s1,24(sp)
  ec:	8fb00014 	lw	s0,20(sp)
  f0:	03e00008 	jr	ra
  f4:	27bd0030 	addiu	sp,sp,48

000000f8 <BgHakaTubo_Destroy>:
  f8:	27bdffe8 	addiu	sp,sp,-24
  fc:	afa40018 	sw	a0,24(sp)
 100:	8fae0018 	lw	t6,24(sp)
 104:	afbf0014 	sw	ra,20(sp)
 108:	00a03825 	move	a3,a1
 10c:	00a02025 	move	a0,a1
 110:	8dc6014c 	lw	a2,332(t6)
 114:	afa7001c 	sw	a3,28(sp)
 118:	0c000000 	jal	0 <BgHakaTubo_Init>
 11c:	24a50810 	addiu	a1,a1,2064
 120:	8fa50018 	lw	a1,24(sp)
 124:	8fa4001c 	lw	a0,28(sp)
 128:	0c000000 	jal	0 <BgHakaTubo_Init>
 12c:	24a5016c 	addiu	a1,a1,364
 130:	8fa50018 	lw	a1,24(sp)
 134:	8fa4001c 	lw	a0,28(sp)
 138:	0c000000 	jal	0 <BgHakaTubo_Init>
 13c:	24a501b8 	addiu	a1,a1,440
 140:	8fbf0014 	lw	ra,20(sp)
 144:	27bd0018 	addiu	sp,sp,24
 148:	03e00008 	jr	ra
 14c:	00000000 	nop

00000150 <BgHakaTubo_Idle>:
 150:	27bdffb0 	addiu	sp,sp,-80
 154:	afbf0034 	sw	ra,52(sp)
 158:	afb10030 	sw	s1,48(sp)
 15c:	afb0002c 	sw	s0,44(sp)
 160:	808e0003 	lb	t6,3(a0)
 164:	2401000c 	li	at,12
 168:	00808025 	move	s0,a0
 16c:	15c1001c 	bne	t6,at,1e0 <BgHakaTubo_Idle+0x90>
 170:	00a08825 	move	s1,a1
 174:	848f00b6 	lh	t7,182(a0)
 178:	25f80180 	addiu	t8,t7,384
 17c:	a49800b6 	sh	t8,182(a0)
 180:	848400b6 	lh	a0,182(a0)
 184:	2484c000 	addiu	a0,a0,-16384
 188:	00042400 	sll	a0,a0,0x10
 18c:	0c000000 	jal	0 <BgHakaTubo_Init>
 190:	00042403 	sra	a0,a0,0x10
 194:	3c014311 	lui	at,0x4311
 198:	44812000 	mtc1	at,$f4
 19c:	3c010000 	lui	at,0x0
 1a0:	c428003c 	lwc1	$f8,60(at)
 1a4:	46040182 	mul.s	$f6,$f0,$f4
 1a8:	860400b6 	lh	a0,182(s0)
 1ac:	2484c000 	addiu	a0,a0,-16384
 1b0:	00042400 	sll	a0,a0,0x10
 1b4:	00042403 	sra	a0,a0,0x10
 1b8:	46083280 	add.s	$f10,$f6,$f8
 1bc:	0c000000 	jal	0 <BgHakaTubo_Init>
 1c0:	e60a0024 	swc1	$f10,36(s0)
 1c4:	3c014311 	lui	at,0x4311
 1c8:	44818000 	mtc1	at,$f16
 1cc:	3c010000 	lui	at,0x0
 1d0:	c4240040 	lwc1	$f4,64(at)
 1d4:	46100482 	mul.s	$f18,$f0,$f16
 1d8:	46049180 	add.s	$f6,$f18,$f4
 1dc:	e606002c 	swc1	$f6,44(s0)
 1e0:	920201c8 	lbu	v0,456(s0)
 1e4:	3c0140a0 	lui	at,0x40a0
 1e8:	02202025 	move	a0,s1
 1ec:	30590002 	andi	t9,v0,0x2
 1f0:	13200008 	beqz	t9,214 <BgHakaTubo_Idle+0xc4>
 1f4:	3048fffd 	andi	t0,v0,0xfffd
 1f8:	44810000 	mtc1	at,$f0
 1fc:	a20801c8 	sb	t0,456(s0)
 200:	8607008a 	lh	a3,138(s0)
 204:	44060000 	mfc1	a2,$f0
 208:	02002825 	move	a1,s0
 20c:	0c000000 	jal	0 <BgHakaTubo_Init>
 210:	e7a00010 	swc1	$f0,16(sp)
 214:	9202017d 	lbu	v0,381(s0)
 218:	02002025 	move	a0,s0
 21c:	260501b8 	addiu	a1,s0,440
 220:	30490002 	andi	t1,v0,0x2
 224:	11200049 	beqz	t1,34c <BgHakaTubo_Idle+0x1fc>
 228:	304afffd 	andi	t2,v0,0xfffd
 22c:	8e050174 	lw	a1,372(s0)
 230:	a20a017d 	sb	t2,381(s0)
 234:	02002025 	move	a0,s0
 238:	0c000000 	jal	0 <BgHakaTubo_Init>
 23c:	24a50024 	addiu	a1,a1,36
 240:	3c014248 	lui	at,0x4248
 244:	44811000 	mtc1	at,$f2
 248:	00000000 	nop
 24c:	4602003c 	c.lt.s	$f0,$f2
 250:	00000000 	nop
 254:	45020054 	bc1fl	3a8 <BgHakaTubo_Idle+0x258>
 258:	8fbf0034 	lw	ra,52(sp)
 25c:	8e0b0174 	lw	t3,372(s0)
 260:	c60a0028 	lwc1	$f10,40(s0)
 264:	3c060000 	lui	a2,0x0
 268:	c5680028 	lwc1	$f8,40(t3)
 26c:	24c60080 	addiu	a2,a2,128
 270:	3c0142a0 	lui	at,0x42a0
 274:	460a4401 	sub.s	$f16,$f8,$f10
 278:	4602803c 	c.lt.s	$f16,$f2
 27c:	00000000 	nop
 280:	45020049 	bc1fl	3a8 <BgHakaTubo_Idle+0x258>
 284:	8fbf0034 	lw	ra,52(sp)
 288:	c6120024 	lwc1	$f18,36(s0)
 28c:	44814000 	mtc1	at,$f8
 290:	240c0064 	li	t4,100
 294:	e7b20044 	swc1	$f18,68(sp)
 298:	c604002c 	lwc1	$f4,44(s0)
 29c:	240d002d 	li	t5,45
 2a0:	02202025 	move	a0,s1
 2a4:	e7a4004c 	swc1	$f4,76(sp)
 2a8:	c6060028 	lwc1	$f6,40(s0)
 2ac:	afad0014 	sw	t5,20(sp)
 2b0:	afac0010 	sw	t4,16(sp)
 2b4:	46083280 	add.s	$f10,$f6,$f8
 2b8:	27a50044 	addiu	a1,sp,68
 2bc:	00c03825 	move	a3,a2
 2c0:	0c000000 	jal	0 <BgHakaTubo_Init>
 2c4:	e7aa0048 	swc1	$f10,72(sp)
 2c8:	02202025 	move	a0,s1
 2cc:	26050024 	addiu	a1,s0,36
 2d0:	24060032 	li	a2,50
 2d4:	0c000000 	jal	0 <BgHakaTubo_Init>
 2d8:	24072839 	li	a3,10297
 2dc:	3c090000 	lui	t1,0x0
 2e0:	25290000 	addiu	t1,t1,0
 2e4:	240e015e 	li	t6,350
 2e8:	240f0064 	li	t7,100
 2ec:	24180032 	li	t8,50
 2f0:	24190069 	li	t9,105
 2f4:	24080028 	li	t0,40
 2f8:	afa80020 	sw	t0,32(sp)
 2fc:	afb9001c 	sw	t9,28(sp)
 300:	afb80018 	sw	t8,24(sp)
 304:	afaf0014 	sw	t7,20(sp)
 308:	afae0010 	sw	t6,16(sp)
 30c:	afa90024 	sw	t1,36(sp)
 310:	02202025 	move	a0,s1
 314:	27a50044 	addiu	a1,sp,68
 318:	3c0641a0 	lui	a2,0x41a0
 31c:	0c000000 	jal	0 <BgHakaTubo_Init>
 320:	00003825 	move	a3,zero
 324:	240a0005 	li	t2,5
 328:	a60a0168 	sh	t2,360(s0)
 32c:	ae000134 	sw	zero,308(s0)
 330:	02002025 	move	a0,s0
 334:	0c000000 	jal	0 <BgHakaTubo_Init>
 338:	24050000 	li	a1,0
 33c:	3c0b0000 	lui	t3,0x0
 340:	256b0000 	addiu	t3,t3,0
 344:	10000017 	b	3a4 <BgHakaTubo_Idle+0x254>
 348:	ae0b0164 	sw	t3,356(s0)
 34c:	0c000000 	jal	0 <BgHakaTubo_Init>
 350:	afa50040 	sw	a1,64(sp)
 354:	2606016c 	addiu	a2,s0,364
 358:	00c02825 	move	a1,a2
 35c:	afa6003c 	sw	a2,60(sp)
 360:	0c000000 	jal	0 <BgHakaTubo_Init>
 364:	02002025 	move	a0,s0
 368:	3c010001 	lui	at,0x1
 36c:	34211e60 	ori	at,at,0x1e60
 370:	02218021 	addu	s0,s1,at
 374:	8fa6003c 	lw	a2,60(sp)
 378:	02002825 	move	a1,s0
 37c:	0c000000 	jal	0 <BgHakaTubo_Init>
 380:	02202025 	move	a0,s1
 384:	02202025 	move	a0,s1
 388:	02002825 	move	a1,s0
 38c:	0c000000 	jal	0 <BgHakaTubo_Init>
 390:	8fa60040 	lw	a2,64(sp)
 394:	02202025 	move	a0,s1
 398:	02002825 	move	a1,s0
 39c:	0c000000 	jal	0 <BgHakaTubo_Init>
 3a0:	8fa60040 	lw	a2,64(sp)
 3a4:	8fbf0034 	lw	ra,52(sp)
 3a8:	8fb0002c 	lw	s0,44(sp)
 3ac:	8fb10030 	lw	s1,48(sp)
 3b0:	03e00008 	jr	ra
 3b4:	27bd0050 	addiu	sp,sp,80

000003b8 <BgHakaTubo_DropCollectible>:
 3b8:	27bdff90 	addiu	sp,sp,-112
 3bc:	afbf004c 	sw	ra,76(sp)
 3c0:	afb60048 	sw	s6,72(sp)
 3c4:	afb50044 	sw	s5,68(sp)
 3c8:	afb40040 	sw	s4,64(sp)
 3cc:	afb3003c 	sw	s3,60(sp)
 3d0:	afb20038 	sw	s2,56(sp)
 3d4:	afb10034 	sw	s1,52(sp)
 3d8:	afb00030 	sw	s0,48(sp)
 3dc:	848e0168 	lh	t6,360(a0)
 3e0:	0080a025 	move	s4,a0
 3e4:	00a0b025 	move	s6,a1
 3e8:	25cfffff 	addiu	t7,t6,-1
 3ec:	a48f0168 	sh	t7,360(a0)
 3f0:	84980168 	lh	t8,360(a0)
 3f4:	57000098 	bnezl	t8,658 <BgHakaTubo_DropCollectible+0x2a0>
 3f8:	8fbf004c 	lw	ra,76(sp)
 3fc:	c4840024 	lwc1	$f4,36(a0)
 400:	3c014348 	lui	at,0x4348
 404:	44814000 	mtc1	at,$f8
 408:	e7a4005c 	swc1	$f4,92(sp)
 40c:	c4860028 	lwc1	$f6,40(a0)
 410:	2401000c 	li	at,12
 414:	46083280 	add.s	$f10,$f6,$f8
 418:	e7aa0060 	swc1	$f10,96(sp)
 41c:	c490002c 	lwc1	$f16,44(a0)
 420:	e7b00064 	swc1	$f16,100(sp)
 424:	80990003 	lb	t9,3(a0)
 428:	02c02025 	move	a0,s6
 42c:	1721006b 	bne	t9,at,5dc <BgHakaTubo_DropCollectible+0x224>
 430:	00000000 	nop
 434:	0c000000 	jal	0 <BgHakaTubo_Init>
 438:	00000000 	nop
 43c:	3c020000 	lui	v0,0x0
 440:	24420078 	addiu	v0,v0,120
 444:	8c480000 	lw	t0,0(v0)
 448:	24130003 	li	s3,3
 44c:	3c010000 	lui	at,0x0
 450:	25090001 	addiu	t1,t0,1
 454:	16690028 	bne	s3,t1,4f8 <BgHakaTubo_DropCollectible+0x140>
 458:	ac490000 	sw	t1,0(v0)
 45c:	2415ffff 	li	s5,-1
 460:	0c000000 	jal	0 <BgHakaTubo_Init>
 464:	24044802 	li	a0,18434
 468:	00008025 	move	s0,zero
 46c:	24120009 	li	s2,9
 470:	24111c71 	li	s1,7281
 474:	0213001a 	div	zero,s0,s3
 478:	00003010 	mfhi	a2
 47c:	00063400 	sll	a2,a2,0x10
 480:	00063403 	sra	a2,a2,0x10
 484:	02c02025 	move	a0,s6
 488:	27a5005c 	addiu	a1,sp,92
 48c:	16600002 	bnez	s3,498 <BgHakaTubo_DropCollectible+0xe0>
 490:	00000000 	nop
 494:	0007000d 	break	0x7
 498:	2401ffff 	li	at,-1
 49c:	16610004 	bne	s3,at,4b0 <BgHakaTubo_DropCollectible+0xf8>
 4a0:	3c018000 	lui	at,0x8000
 4a4:	16010002 	bne	s0,at,4b0 <BgHakaTubo_DropCollectible+0xf8>
 4a8:	00000000 	nop
 4ac:	0006000d 	break	0x6
 4b0:	0c000000 	jal	0 <BgHakaTubo_Init>
 4b4:	00000000 	nop
 4b8:	5040000b 	beqzl	v0,4e8 <BgHakaTubo_DropCollectible+0x130>
 4bc:	26100001 	addiu	s0,s0,1
 4c0:	02110019 	multu	s0,s1
 4c4:	3c014170 	lui	at,0x4170
 4c8:	44819000 	mtc1	at,$f18
 4cc:	00000000 	nop
 4d0:	e4520060 	swc1	$f18,96(v0)
 4d4:	868b00b6 	lh	t3,182(s4)
 4d8:	00006012 	mflo	t4
 4dc:	016c6821 	addu	t5,t3,t4
 4e0:	a44d0032 	sh	t5,50(v0)
 4e4:	26100001 	addiu	s0,s0,1
 4e8:	1612ffe2 	bne	s0,s2,474 <BgHakaTubo_DropCollectible+0xbc>
 4ec:	00000000 	nop
 4f0:	10000049 	b	618 <BgHakaTubo_DropCollectible+0x260>
 4f4:	2401ffff 	li	at,-1
 4f8:	c4240044 	lwc1	$f4,68(at)
 4fc:	3c010000 	lui	at,0x0
 500:	4604003c 	c.lt.s	$f0,$f4
 504:	00000000 	nop
 508:	45000018 	bc1f	56c <BgHakaTubo_DropCollectible+0x1b4>
 50c:	00000000 	nop
 510:	3c0142a0 	lui	at,0x42a0
 514:	44814000 	mtc1	at,$f8
 518:	c6860028 	lwc1	$f6,40(s4)
 51c:	8e870024 	lw	a3,36(s4)
 520:	240f0002 	li	t7,2
 524:	46083280 	add.s	$f10,$f6,$f8
 528:	2415ffff 	li	s5,-1
 52c:	26c41c24 	addiu	a0,s6,7204
 530:	02c02825 	move	a1,s6
 534:	e7aa0010 	swc1	$f10,16(sp)
 538:	c690002c 	lwc1	$f16,44(s4)
 53c:	afa00018 	sw	zero,24(sp)
 540:	24060013 	li	a2,19
 544:	e7b00014 	swc1	$f16,20(sp)
 548:	868e00b6 	lh	t6,182(s4)
 54c:	afaf0024 	sw	t7,36(sp)
 550:	afa00020 	sw	zero,32(sp)
 554:	0c000000 	jal	0 <BgHakaTubo_Init>
 558:	afae001c 	sw	t6,28(sp)
 55c:	0c000000 	jal	0 <BgHakaTubo_Init>
 560:	24044806 	li	a0,18438
 564:	1000002c 	b	618 <BgHakaTubo_DropCollectible+0x260>
 568:	2401ffff 	li	at,-1
 56c:	c4320048 	lwc1	$f18,72(at)
 570:	3c010000 	lui	at,0x0
 574:	4612003c 	c.lt.s	$f0,$f18
 578:	00000000 	nop
 57c:	45000003 	bc1f	58c <BgHakaTubo_DropCollectible+0x1d4>
 580:	00000000 	nop
 584:	10000011 	b	5cc <BgHakaTubo_DropCollectible+0x214>
 588:	24150004 	li	s5,4
 58c:	c424004c 	lwc1	$f4,76(at)
 590:	3c010000 	lui	at,0x0
 594:	4604003c 	c.lt.s	$f0,$f4
 598:	00000000 	nop
 59c:	45000003 	bc1f	5ac <BgHakaTubo_DropCollectible+0x1f4>
 5a0:	00000000 	nop
 5a4:	10000009 	b	5cc <BgHakaTubo_DropCollectible+0x214>
 5a8:	2415000e 	li	s5,14
 5ac:	c4260050 	lwc1	$f6,80(at)
 5b0:	24150008 	li	s5,8
 5b4:	4606003c 	c.lt.s	$f0,$f6
 5b8:	00000000 	nop
 5bc:	45000003 	bc1f	5cc <BgHakaTubo_DropCollectible+0x214>
 5c0:	00000000 	nop
 5c4:	10000001 	b	5cc <BgHakaTubo_DropCollectible+0x214>
 5c8:	2415000f 	li	s5,15
 5cc:	0c000000 	jal	0 <BgHakaTubo_Init>
 5d0:	24044807 	li	a0,18439
 5d4:	10000010 	b	618 <BgHakaTubo_DropCollectible+0x260>
 5d8:	2401ffff 	li	at,-1
 5dc:	0c000000 	jal	0 <BgHakaTubo_Init>
 5e0:	8685001c 	lh	a1,28(s4)
 5e4:	10400005 	beqz	v0,5fc <BgHakaTubo_DropCollectible+0x244>
 5e8:	24150003 	li	s5,3
 5ec:	0c000000 	jal	0 <BgHakaTubo_Init>
 5f0:	24044807 	li	a0,18439
 5f4:	10000008 	b	618 <BgHakaTubo_DropCollectible+0x260>
 5f8:	2401ffff 	li	at,-1
 5fc:	8695001c 	lh	s5,28(s4)
 600:	24044802 	li	a0,18434
 604:	32b5003f 	andi	s5,s5,0x3f
 608:	0015aa00 	sll	s5,s5,0x8
 60c:	0c000000 	jal	0 <BgHakaTubo_Init>
 610:	36b50011 	ori	s5,s5,0x11
 614:	2401ffff 	li	at,-1
 618:	12a1000c 	beq	s5,at,64c <BgHakaTubo_DropCollectible+0x294>
 61c:	02c02025 	move	a0,s6
 620:	00153400 	sll	a2,s5,0x10
 624:	00063403 	sra	a2,a2,0x10
 628:	0c000000 	jal	0 <BgHakaTubo_Init>
 62c:	27a5005c 	addiu	a1,sp,92
 630:	10400006 	beqz	v0,64c <BgHakaTubo_DropCollectible+0x294>
 634:	3c014170 	lui	at,0x4170
 638:	44814000 	mtc1	at,$f8
 63c:	00000000 	nop
 640:	e4480060 	swc1	$f8,96(v0)
 644:	869800b6 	lh	t8,182(s4)
 648:	a4580032 	sh	t8,50(v0)
 64c:	0c000000 	jal	0 <BgHakaTubo_Init>
 650:	02802025 	move	a0,s4
 654:	8fbf004c 	lw	ra,76(sp)
 658:	8fb00030 	lw	s0,48(sp)
 65c:	8fb10034 	lw	s1,52(sp)
 660:	8fb20038 	lw	s2,56(sp)
 664:	8fb3003c 	lw	s3,60(sp)
 668:	8fb40040 	lw	s4,64(sp)
 66c:	8fb50044 	lw	s5,68(sp)
 670:	8fb60048 	lw	s6,72(sp)
 674:	03e00008 	jr	ra
 678:	27bd0070 	addiu	sp,sp,112

0000067c <BgHakaTubo_Update>:
 67c:	27bdffe8 	addiu	sp,sp,-24
 680:	afbf0014 	sw	ra,20(sp)
 684:	afa40018 	sw	a0,24(sp)
 688:	8c990164 	lw	t9,356(a0)
 68c:	0320f809 	jalr	t9
 690:	00000000 	nop
 694:	8fa40018 	lw	a0,24(sp)
 698:	848e016a 	lh	t6,362(a0)
 69c:	25cf0001 	addiu	t7,t6,1
 6a0:	a48f016a 	sh	t7,362(a0)
 6a4:	8fbf0014 	lw	ra,20(sp)
 6a8:	27bd0018 	addiu	sp,sp,24
 6ac:	03e00008 	jr	ra
 6b0:	00000000 	nop

000006b4 <BgHakaTubo_DrawFlameCircle>:
 6b4:	27bdff90 	addiu	sp,sp,-112
 6b8:	afbf003c 	sw	ra,60(sp)
 6bc:	afb00038 	sw	s0,56(sp)
 6c0:	afa40070 	sw	a0,112(sp)
 6c4:	afa50074 	sw	a1,116(sp)
 6c8:	8ca50000 	lw	a1,0(a1)
 6cc:	3c060000 	lui	a2,0x0
 6d0:	24c60000 	addiu	a2,a2,0
 6d4:	27a40058 	addiu	a0,sp,88
 6d8:	240701dc 	li	a3,476
 6dc:	0c000000 	jal	0 <BgHakaTubo_Init>
 6e0:	00a08025 	move	s0,a1
 6e4:	8faf0074 	lw	t7,116(sp)
 6e8:	0c000000 	jal	0 <BgHakaTubo_Init>
 6ec:	8de40000 	lw	a0,0(t7)
 6f0:	8fa20070 	lw	v0,112(sp)
 6f4:	3c01436b 	lui	at,0x436b
 6f8:	44813000 	mtc1	at,$f6
 6fc:	c4440028 	lwc1	$f4,40(v0)
 700:	00003825 	move	a3,zero
 704:	c44c0024 	lwc1	$f12,36(v0)
 708:	8c46002c 	lw	a2,44(v0)
 70c:	0c000000 	jal	0 <BgHakaTubo_Init>
 710:	46062380 	add.s	$f14,$f4,$f6
 714:	8fb80070 	lw	t8,112(sp)
 718:	3c010000 	lui	at,0x0
 71c:	c4300054 	lwc1	$f16,84(at)
 720:	871900b6 	lh	t9,182(t8)
 724:	24050001 	li	a1,1
 728:	44994000 	mtc1	t9,$f8
 72c:	00000000 	nop
 730:	468042a0 	cvt.s.w	$f10,$f8
 734:	46105302 	mul.s	$f12,$f10,$f16
 738:	0c000000 	jal	0 <BgHakaTubo_Init>
 73c:	00000000 	nop
 740:	3c010000 	lui	at,0x0
 744:	c42c0058 	lwc1	$f12,88(at)
 748:	3c010000 	lui	at,0x0
 74c:	c42e005c 	lwc1	$f14,92(at)
 750:	44066000 	mfc1	a2,$f12
 754:	0c000000 	jal	0 <BgHakaTubo_Init>
 758:	24070001 	li	a3,1
 75c:	8e0202d0 	lw	v0,720(s0)
 760:	3c0afa00 	lui	t2,0xfa00
 764:	3c0b00aa 	lui	t3,0xaa
 768:	24490008 	addiu	t1,v0,8
 76c:	ae0902d0 	sw	t1,720(s0)
 770:	356bffff 	ori	t3,t3,0xffff
 774:	354a8080 	ori	t2,t2,0x8080
 778:	ac4a0000 	sw	t2,0(v0)
 77c:	ac4b0004 	sw	t3,4(v0)
 780:	8e0202d0 	lw	v0,720(s0)
 784:	3c0dfb00 	lui	t5,0xfb00
 788:	340effff 	li	t6,0xffff
 78c:	244c0008 	addiu	t4,v0,8
 790:	ae0c02d0 	sw	t4,720(s0)
 794:	ac4d0000 	sw	t5,0(v0)
 798:	ac4e0004 	sw	t6,4(v0)
 79c:	8e0202d0 	lw	v0,720(s0)
 7a0:	3c18db06 	lui	t8,0xdb06
 7a4:	37180020 	ori	t8,t8,0x20
 7a8:	244f0008 	addiu	t7,v0,8
 7ac:	ae0f02d0 	sw	t7,720(s0)
 7b0:	ac580000 	sw	t8,0(v0)
 7b4:	8fa90070 	lw	t1,112(sp)
 7b8:	8fb90074 	lw	t9,116(sp)
 7bc:	24180040 	li	t8,64
 7c0:	8523016a 	lh	v1,362(t1)
 7c4:	8f240000 	lw	a0,0(t9)
 7c8:	240f0020 	li	t7,32
 7cc:	00030823 	negu	at,v1
 7d0:	00016900 	sll	t5,at,0x4
 7d4:	01a16823 	subu	t5,t5,at
 7d8:	31ae00ff 	andi	t6,t5,0xff
 7dc:	240c0001 	li	t4,1
 7e0:	240b0040 	li	t3,64
 7e4:	240a0020 	li	t2,32
 7e8:	afaa0010 	sw	t2,16(sp)
 7ec:	afab0014 	sw	t3,20(sp)
 7f0:	afac0018 	sw	t4,24(sp)
 7f4:	afae0020 	sw	t6,32(sp)
 7f8:	afaf0024 	sw	t7,36(sp)
 7fc:	afb80028 	sw	t8,40(sp)
 800:	afa0001c 	sw	zero,28(sp)
 804:	00002825 	move	a1,zero
 808:	00003825 	move	a3,zero
 80c:	afa2004c 	sw	v0,76(sp)
 810:	0c000000 	jal	0 <BgHakaTubo_Init>
 814:	3066007f 	andi	a2,v1,0x7f
 818:	8fa8004c 	lw	t0,76(sp)
 81c:	3c09da38 	lui	t1,0xda38
 820:	35290003 	ori	t1,t1,0x3
 824:	ad020004 	sw	v0,4(t0)
 828:	8e0202d0 	lw	v0,720(s0)
 82c:	3c050000 	lui	a1,0x0
 830:	24a50014 	addiu	a1,a1,20
 834:	24590008 	addiu	t9,v0,8
 838:	ae1902d0 	sw	t9,720(s0)
 83c:	ac490000 	sw	t1,0(v0)
 840:	8faa0074 	lw	t2,116(sp)
 844:	240601f1 	li	a2,497
 848:	8d440000 	lw	a0,0(t2)
 84c:	0c000000 	jal	0 <BgHakaTubo_Init>
 850:	afa20048 	sw	v0,72(sp)
 854:	8fa30048 	lw	v1,72(sp)
 858:	3c0d0000 	lui	t5,0x0
 85c:	25ad0000 	addiu	t5,t5,0
 860:	ac620004 	sw	v0,4(v1)
 864:	8e0202d0 	lw	v0,720(s0)
 868:	3c0cde00 	lui	t4,0xde00
 86c:	3c060000 	lui	a2,0x0
 870:	244b0008 	addiu	t3,v0,8
 874:	ae0b02d0 	sw	t3,720(s0)
 878:	ac4d0004 	sw	t5,4(v0)
 87c:	ac4c0000 	sw	t4,0(v0)
 880:	8fae0074 	lw	t6,116(sp)
 884:	24c60028 	addiu	a2,a2,40
 888:	27a40058 	addiu	a0,sp,88
 88c:	240701f5 	li	a3,501
 890:	0c000000 	jal	0 <BgHakaTubo_Init>
 894:	8dc50000 	lw	a1,0(t6)
 898:	8fbf003c 	lw	ra,60(sp)
 89c:	8fb00038 	lw	s0,56(sp)
 8a0:	27bd0070 	addiu	sp,sp,112
 8a4:	03e00008 	jr	ra
 8a8:	00000000 	nop

000008ac <BgHakaTubo_Draw>:
 8ac:	27bdffe8 	addiu	sp,sp,-24
 8b0:	afa40018 	sw	a0,24(sp)
 8b4:	afa5001c 	sw	a1,28(sp)
 8b8:	00a02025 	move	a0,a1
 8bc:	afbf0014 	sw	ra,20(sp)
 8c0:	3c050000 	lui	a1,0x0
 8c4:	0c000000 	jal	0 <BgHakaTubo_Init>
 8c8:	24a50000 	addiu	a1,a1,0
 8cc:	8fa40018 	lw	a0,24(sp)
 8d0:	0c000000 	jal	0 <BgHakaTubo_Init>
 8d4:	8fa5001c 	lw	a1,28(sp)
 8d8:	8fbf0014 	lw	ra,20(sp)
 8dc:	27bd0018 	addiu	sp,sp,24
 8e0:	03e00008 	jr	ra
 8e4:	00000000 	nop
	...
