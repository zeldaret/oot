
build/src/overlays/actors/ovl_En_Horse_Game_Check/z_en_horse_game_check.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A67550>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afb00030 	sw	s0,48(sp)
   8:	afbf0034 	sw	ra,52(sp)
   c:	240e0001 	li	t6,1
  10:	00808025 	move	s0,a0
  14:	ac8e014c 	sw	t6,332(a0)
  18:	ac800150 	sw	zero,336(a0)
  1c:	00801825 	move	v1,a0
  20:	24040003 	li	a0,3
  24:	00001025 	move	v0,zero
  28:	24420001 	addiu	v0,v0,1
  2c:	24630004 	addiu	v1,v1,4
  30:	1444fffd 	bne	v0,a0,28 <func_80A67550+0x28>
  34:	ac600150 	sw	zero,336(v1)
  38:	3c013f80 	lui	at,0x3f80
  3c:	44812000 	mtc1	at,$f4
  40:	3c010000 	lui	at,0x0
  44:	c4260000 	lwc1	$f6,0(at)
  48:	240f4000 	li	t7,16384
  4c:	24188003 	li	t8,-32765
  50:	afb80024 	sw	t8,36(sp)
  54:	afaf001c 	sw	t7,28(sp)
  58:	24a41c24 	addiu	a0,a1,7204
  5c:	24060014 	li	a2,20
  60:	3c07c37a 	lui	a3,0xc37a
  64:	afa00018 	sw	zero,24(sp)
  68:	afa00020 	sw	zero,32(sp)
  6c:	e7a40010 	swc1	$f4,16(sp)
  70:	0c000000 	jal	0 <func_80A67550>
  74:	e7a60014 	swc1	$f6,20(sp)
  78:	14400005 	bnez	v0,90 <func_80A67550+0x90>
  7c:	ae02016c 	sw	v0,364(s0)
  80:	3c040000 	lui	a0,0x0
  84:	24840000 	addiu	a0,a0,0
  88:	0c000000 	jal	0 <func_80A67550>
  8c:	24050181 	li	a1,385
  90:	ae000170 	sw	zero,368(s0)
  94:	ae000178 	sw	zero,376(s0)
  98:	ae000174 	sw	zero,372(s0)
  9c:	ae00017c 	sw	zero,380(s0)
  a0:	ae000180 	sw	zero,384(s0)
  a4:	8fbf0034 	lw	ra,52(sp)
  a8:	8fb00030 	lw	s0,48(sp)
  ac:	27bd0038 	addiu	sp,sp,56
  b0:	03e00008 	jr	ra
  b4:	24020001 	li	v0,1

000000b8 <func_80A67608>:
  b8:	afa40000 	sw	a0,0(sp)
  bc:	afa50004 	sw	a1,4(sp)
  c0:	03e00008 	jr	ra
  c4:	24020001 	li	v0,1

000000c8 <func_80A67618>:
  c8:	3c020000 	lui	v0,0x0
  cc:	24420000 	addiu	v0,v0,0
  d0:	27bdffe8 	addiu	sp,sp,-24
  d4:	afbf0014 	sw	ra,20(sp)
  d8:	ac400008 	sw	zero,8(v0)
  dc:	8c8e0174 	lw	t6,372(a0)
  e0:	24010001 	li	at,1
  e4:	24090558 	li	t1,1368
  e8:	15c1002e 	bne	t6,at,1a4 <func_80A67618+0xdc>
  ec:	240d0020 	li	t5,32
  f0:	3c010001 	lui	at,0x1
  f4:	00250821 	addu	at,at,a1
  f8:	240f04ce 	li	t7,1230
  fc:	a42f1e1a 	sh	t7,7706(at)
 100:	944313fa 	lhu	v1,5114(v0)
 104:	3c01ffff 	lui	at,0xffff
 108:	34217fff 	ori	at,at,0x7fff
 10c:	30780040 	andi	t8,v1,0x40
 110:	13000014 	beqz	t8,164 <func_80A67618+0x9c>
 114:	306dfff0 	andi	t5,v1,0xfff0
 118:	3079fff0 	andi	t9,v1,0xfff0
 11c:	3c01ffff 	lui	at,0xffff
 120:	37290006 	ori	t1,t9,0x6
 124:	34217fff 	ori	at,at,0x7fff
 128:	01215024 	and	t2,t1,at
 12c:	a44913fa 	sh	t1,5114(v0)
 130:	354b8000 	ori	t3,t2,0x8000
 134:	3c010001 	lui	at,0x1
 138:	a44b13fa 	sh	t3,5114(v0)
 13c:	00250821 	addu	at,at,a1
 140:	240c0003 	li	t4,3
 144:	a02c1e5e 	sb	t4,7774(at)
 148:	afa5001c 	sw	a1,28(sp)
 14c:	0c000000 	jal	0 <func_80A67550>
 150:	24040042 	li	a0,66
 154:	3c020000 	lui	v0,0x0
 158:	24420000 	addiu	v0,v0,0
 15c:	10000021 	b	1e4 <func_80A67618+0x11c>
 160:	8fa5001c 	lw	a1,28(sp)
 164:	35af0004 	ori	t7,t5,0x4
 168:	01e1c024 	and	t8,t7,at
 16c:	a44f13fa 	sh	t7,5114(v0)
 170:	37198000 	ori	t9,t8,0x8000
 174:	a45913fa 	sh	t9,5114(v0)
 178:	24040042 	li	a0,66
 17c:	0c000000 	jal	0 <func_80A67550>
 180:	afa5001c 	sw	a1,28(sp)
 184:	8fa5001c 	lw	a1,28(sp)
 188:	3c010001 	lui	at,0x1
 18c:	3c020000 	lui	v0,0x0
 190:	2408002e 	li	t0,46
 194:	00250821 	addu	at,at,a1
 198:	24420000 	addiu	v0,v0,0
 19c:	10000011 	b	1e4 <func_80A67618+0x11c>
 1a0:	a0281e5e 	sb	t0,7774(at)
 1a4:	3c010001 	lui	at,0x1
 1a8:	00250821 	addu	at,at,a1
 1ac:	a4291e1a 	sh	t1,7706(at)
 1b0:	944a13fa 	lhu	t2,5114(v0)
 1b4:	3c010001 	lui	at,0x1
 1b8:	00250821 	addu	at,at,a1
 1bc:	314bfff0 	andi	t3,t2,0xfff0
 1c0:	356c0003 	ori	t4,t3,0x3
 1c4:	a44c13fa 	sh	t4,5114(v0)
 1c8:	a02d1e5e 	sb	t5,7774(at)
 1cc:	944e13fa 	lhu	t6,5114(v0)
 1d0:	3c01ffff 	lui	at,0xffff
 1d4:	34217fff 	ori	at,at,0x7fff
 1d8:	01c17824 	and	t7,t6,at
 1dc:	35f88000 	ori	t8,t7,0x8000
 1e0:	a45813fa 	sh	t8,5114(v0)
 1e4:	3c190000 	lui	t9,0x0
 1e8:	8f390000 	lw	t9,0(t9)
 1ec:	3c010001 	lui	at,0x1
 1f0:	00250821 	addu	at,at,a1
 1f4:	24080014 	li	t0,20
 1f8:	a7200586 	sh	zero,1414(t9)
 1fc:	a0281e15 	sb	t0,7701(at)
 200:	8fbf0014 	lw	ra,20(sp)
 204:	a44013ce 	sh	zero,5070(v0)
 208:	27bd0018 	addiu	sp,sp,24
 20c:	03e00008 	jr	ra
 210:	00000000 	nop

00000214 <func_80A67764>:
 214:	27bdffc0 	addiu	sp,sp,-64
 218:	afbf003c 	sw	ra,60(sp)
 21c:	afb40038 	sw	s4,56(sp)
 220:	afb30034 	sw	s3,52(sp)
 224:	afb20030 	sw	s2,48(sp)
 228:	afb1002c 	sw	s1,44(sp)
 22c:	afb00028 	sw	s0,40(sp)
 230:	f7b40020 	sdc1	$f20,32(sp)
 234:	afa50044 	sw	a1,68(sp)
 238:	8c830170 	lw	v1,368(a0)
 23c:	00809025 	move	s2,a0
 240:	8cb41c44 	lw	s4,7236(a1)
 244:	28610033 	slti	at,v1,51
 248:	5420000b 	bnezl	at,278 <func_80A67764+0x64>
 24c:	28610051 	slti	at,v1,81
 250:	8c820150 	lw	v0,336(a0)
 254:	304f0002 	andi	t7,v0,0x2
 258:	15e00006 	bnez	t7,274 <func_80A67764+0x60>
 25c:	34580002 	ori	t8,v0,0x2
 260:	ac980150 	sw	t8,336(a0)
 264:	0c000000 	jal	0 <func_80A67550>
 268:	00002025 	move	a0,zero
 26c:	10000029 	b	314 <func_80A67764+0x100>
 270:	8e430170 	lw	v1,368(s2)
 274:	28610051 	slti	at,v1,81
 278:	5420000f 	bnezl	at,2b8 <func_80A67764+0xa4>
 27c:	28610052 	slti	at,v1,82
 280:	8e990440 	lw	t9,1088(s4)
 284:	5320000c 	beqzl	t9,2b8 <func_80A67764+0xa4>
 288:	28610052 	slti	at,v1,82
 28c:	8e420150 	lw	v0,336(s2)
 290:	30480001 	andi	t0,v0,0x1
 294:	15000007 	bnez	t0,2b4 <func_80A67764+0xa0>
 298:	34490001 	ori	t1,v0,0x1
 29c:	ae490150 	sw	t1,336(s2)
 2a0:	8e840440 	lw	a0,1088(s4)
 2a4:	24130001 	li	s3,1
 2a8:	ac930388 	sw	s3,904(a0)
 2ac:	10000019 	b	314 <func_80A67764+0x100>
 2b0:	8e430170 	lw	v1,368(s2)
 2b4:	28610052 	slti	at,v1,82
 2b8:	54200017 	bnezl	at,318 <func_80A67764+0x104>
 2bc:	3c0143c8 	lui	at,0x43c8
 2c0:	8e4a0150 	lw	t2,336(s2)
 2c4:	24130001 	li	s3,1
 2c8:	24044835 	li	a0,18485
 2cc:	314b0004 	andi	t3,t2,0x4
 2d0:	15600010 	bnez	t3,314 <func_80A67764+0x100>
 2d4:	3c050000 	lui	a1,0x0
 2d8:	8e42016c 	lw	v0,364(s2)
 2dc:	3c0e0000 	lui	t6,0x0
 2e0:	3c0f0000 	lui	t7,0x0
 2e4:	ac530388 	sw	s3,904(v0)
 2e8:	8e4c0150 	lw	t4,336(s2)
 2ec:	25ef0000 	addiu	t7,t7,0
 2f0:	25c70000 	addiu	a3,t6,0
 2f4:	358d0004 	ori	t5,t4,0x4
 2f8:	ae4d0150 	sw	t5,336(s2)
 2fc:	afaf0014 	sw	t7,20(sp)
 300:	afa70010 	sw	a3,16(sp)
 304:	24a50000 	addiu	a1,a1,0
 308:	0c000000 	jal	0 <func_80A67550>
 30c:	24060004 	li	a2,4
 310:	8e430170 	lw	v1,368(s2)
 314:	3c0143c8 	lui	at,0x43c8
 318:	24780001 	addiu	t8,v1,1
 31c:	3c110000 	lui	s1,0x0
 320:	4481a000 	mtc1	at,$f20
 324:	24130001 	li	s3,1
 328:	ae580170 	sw	t8,368(s2)
 32c:	26310000 	addiu	s1,s1,0
 330:	00008025 	move	s0,zero
 334:	8e820440 	lw	v0,1088(s4)
 338:	02202025 	move	a0,s1
 33c:	50400014 	beqzl	v0,390 <func_80A67764+0x17c>
 340:	8e45016c 	lw	a1,364(s2)
 344:	0c000000 	jal	0 <func_80A67550>
 348:	24450024 	addiu	a1,v0,36
 34c:	4614003c 	c.lt.s	$f0,$f20
 350:	00000000 	nop
 354:	4502000e 	bc1fl	390 <func_80A67764+0x17c>
 358:	8e45016c 	lw	a1,364(s2)
 35c:	1a000007 	blez	s0,37c <func_80A67764+0x168>
 360:	0010c880 	sll	t9,s0,0x2
 364:	02591021 	addu	v0,s2,t9
 368:	8c480150 	lw	t0,336(v0)
 36c:	16680003 	bne	s3,t0,37c <func_80A67764+0x168>
 370:	00000000 	nop
 374:	10000005 	b	38c <func_80A67764+0x178>
 378:	ac530154 	sw	s3,340(v0)
 37c:	16000003 	bnez	s0,38c <func_80A67764+0x178>
 380:	00104880 	sll	t1,s0,0x2
 384:	02495021 	addu	t2,s2,t1
 388:	ad530154 	sw	s3,340(t2)
 38c:	8e45016c 	lw	a1,364(s2)
 390:	02202025 	move	a0,s1
 394:	0c000000 	jal	0 <func_80A67550>
 398:	24a50024 	addiu	a1,a1,36
 39c:	4614003c 	c.lt.s	$f0,$f20
 3a0:	00000000 	nop
 3a4:	4502000e 	bc1fl	3e0 <func_80A67764+0x1cc>
 3a8:	26100001 	addiu	s0,s0,1
 3ac:	1a000007 	blez	s0,3cc <func_80A67764+0x1b8>
 3b0:	00105880 	sll	t3,s0,0x2
 3b4:	024b1021 	addu	v0,s2,t3
 3b8:	8c4c015c 	lw	t4,348(v0)
 3bc:	166c0003 	bne	s3,t4,3cc <func_80A67764+0x1b8>
 3c0:	00000000 	nop
 3c4:	10000005 	b	3dc <func_80A67764+0x1c8>
 3c8:	ac530160 	sw	s3,352(v0)
 3cc:	16000003 	bnez	s0,3dc <func_80A67764+0x1c8>
 3d0:	00106880 	sll	t5,s0,0x2
 3d4:	024d7021 	addu	t6,s2,t5
 3d8:	add30160 	sw	s3,352(t6)
 3dc:	26100001 	addiu	s0,s0,1
 3e0:	2a010003 	slti	at,s0,3
 3e4:	1420ffd3 	bnez	at,334 <func_80A67764+0x120>
 3e8:	2631000c 	addiu	s1,s1,12
 3ec:	8e4f0174 	lw	t7,372(s2)
 3f0:	55e00095 	bnezl	t7,648 <func_80A67764+0x434>
 3f4:	8e420178 	lw	v0,376(s2)
 3f8:	8e820440 	lw	v0,1088(s4)
 3fc:	5040002d 	beqzl	v0,4b4 <func_80A67764+0x2a0>
 400:	8e42016c 	lw	v0,364(s2)
 404:	8e58015c 	lw	t8,348(s2)
 408:	3c030000 	lui	v1,0x0
 40c:	24630000 	addiu	v1,v1,0
 410:	56780028 	bnel	s3,t8,4b4 <func_80A67764+0x2a0>
 414:	8e42016c 	lw	v0,364(s2)
 418:	c4440024 	lwc1	$f4,36(v0)
 41c:	c46c0000 	lwc1	$f12,0(v1)
 420:	c46e0004 	lwc1	$f14,4(v1)
 424:	e7a40010 	swc1	$f4,16(sp)
 428:	c446002c 	lwc1	$f6,44(v0)
 42c:	8c660008 	lw	a2,8(v1)
 430:	8c67000c 	lw	a3,12(v1)
 434:	0c000000 	jal	0 <func_80A67550>
 438:	e7a60014 	swc1	$f6,20(sp)
 43c:	5040001d 	beqzl	v0,4b4 <func_80A67764+0x2a0>
 440:	8e42016c 	lw	v0,364(s2)
 444:	8e59017c 	lw	t9,380(s2)
 448:	240a0037 	li	t2,55
 44c:	24040041 	li	a0,65
 450:	27280001 	addiu	t0,t9,1
 454:	1900000f 	blez	t0,494 <func_80A67764+0x280>
 458:	ae48017c 	sw	t0,380(s2)
 45c:	ae530174 	sw	s3,372(s2)
 460:	0c000000 	jal	0 <func_80A67550>
 464:	ae4a0178 	sw	t2,376(s2)
 468:	3c070000 	lui	a3,0x0
 46c:	3c0b0000 	lui	t3,0x0
 470:	24e70000 	addiu	a3,a3,0
 474:	256b0000 	addiu	t3,t3,0
 478:	3c050000 	lui	a1,0x0
 47c:	24a50000 	addiu	a1,a1,0
 480:	afab0014 	sw	t3,20(sp)
 484:	afa70010 	sw	a3,16(sp)
 488:	24044835 	li	a0,18485
 48c:	0c000000 	jal	0 <func_80A67550>
 490:	24060004 	li	a2,4
 494:	00008025 	move	s0,zero
 498:	02401025 	move	v0,s2
 49c:	24110003 	li	s1,3
 4a0:	26100001 	addiu	s0,s0,1
 4a4:	24420004 	addiu	v0,v0,4
 4a8:	1611fffd 	bne	s0,s1,4a0 <func_80A67764+0x28c>
 4ac:	ac400150 	sw	zero,336(v0)
 4b0:	8e42016c 	lw	v0,364(s2)
 4b4:	3c030000 	lui	v1,0x0
 4b8:	24630000 	addiu	v1,v1,0
 4bc:	1040002f 	beqz	v0,57c <func_80A67764+0x368>
 4c0:	24110003 	li	s1,3
 4c4:	8e4c0168 	lw	t4,360(s2)
 4c8:	566c002d 	bnel	s3,t4,580 <func_80A67764+0x36c>
 4cc:	8e820440 	lw	v0,1088(s4)
 4d0:	c4480024 	lwc1	$f8,36(v0)
 4d4:	c46c0000 	lwc1	$f12,0(v1)
 4d8:	c46e0004 	lwc1	$f14,4(v1)
 4dc:	e7a80010 	swc1	$f8,16(sp)
 4e0:	c44a002c 	lwc1	$f10,44(v0)
 4e4:	8c660008 	lw	a2,8(v1)
 4e8:	8c67000c 	lw	a3,12(v1)
 4ec:	0c000000 	jal	0 <func_80A67550>
 4f0:	e7aa0014 	swc1	$f10,20(sp)
 4f4:	50400022 	beqzl	v0,580 <func_80A67764+0x36c>
 4f8:	8e820440 	lw	v0,1088(s4)
 4fc:	8e4d0180 	lw	t5,384(s2)
 500:	24180002 	li	t8,2
 504:	24190046 	li	t9,70
 508:	25ae0001 	addiu	t6,t5,1
 50c:	19c00015 	blez	t6,564 <func_80A67764+0x350>
 510:	ae4e0180 	sw	t6,384(s2)
 514:	8e42016c 	lw	v0,364(s2)
 518:	ae580174 	sw	t8,372(s2)
 51c:	ae590178 	sw	t9,376(s2)
 520:	8c4801f0 	lw	t0,496(v0)
 524:	3c010080 	lui	at,0x80
 528:	24040041 	li	a0,65
 52c:	01014825 	or	t1,t0,at
 530:	0c000000 	jal	0 <func_80A67550>
 534:	ac4901f0 	sw	t1,496(v0)
 538:	3c070000 	lui	a3,0x0
 53c:	3c0a0000 	lui	t2,0x0
 540:	24e70000 	addiu	a3,a3,0
 544:	254a0000 	addiu	t2,t2,0
 548:	3c050000 	lui	a1,0x0
 54c:	24a50000 	addiu	a1,a1,0
 550:	afaa0014 	sw	t2,20(sp)
 554:	afa70010 	sw	a3,16(sp)
 558:	24044835 	li	a0,18485
 55c:	0c000000 	jal	0 <func_80A67550>
 560:	24060004 	li	a2,4
 564:	00008025 	move	s0,zero
 568:	02401025 	move	v0,s2
 56c:	26100001 	addiu	s0,s0,1
 570:	24420004 	addiu	v0,v0,4
 574:	1611fffd 	bne	s0,s1,56c <func_80A67764+0x358>
 578:	ac40015c 	sw	zero,348(v0)
 57c:	8e820440 	lw	v0,1088(s4)
 580:	3c100000 	lui	s0,0x0
 584:	26100000 	addiu	s0,s0,0
 588:	5040000d 	beqzl	v0,5c0 <func_80A67764+0x3ac>
 58c:	c6840024 	lwc1	$f4,36(s4)
 590:	c4500024 	lwc1	$f16,36(v0)
 594:	c60c0000 	lwc1	$f12,0(s0)
 598:	c60e0004 	lwc1	$f14,4(s0)
 59c:	e7b00010 	swc1	$f16,16(sp)
 5a0:	c452002c 	lwc1	$f18,44(v0)
 5a4:	8e060008 	lw	a2,8(s0)
 5a8:	8e07000c 	lw	a3,12(s0)
 5ac:	0c000000 	jal	0 <func_80A67550>
 5b0:	e7b20014 	swc1	$f18,20(sp)
 5b4:	1440000e 	bnez	v0,5f0 <func_80A67764+0x3dc>
 5b8:	00000000 	nop
 5bc:	c6840024 	lwc1	$f4,36(s4)
 5c0:	3c100000 	lui	s0,0x0
 5c4:	26100000 	addiu	s0,s0,0
 5c8:	e7a40010 	swc1	$f4,16(sp)
 5cc:	c686002c 	lwc1	$f6,44(s4)
 5d0:	c60c0000 	lwc1	$f12,0(s0)
 5d4:	c60e0004 	lwc1	$f14,4(s0)
 5d8:	8e060008 	lw	a2,8(s0)
 5dc:	8e07000c 	lw	a3,12(s0)
 5e0:	0c000000 	jal	0 <func_80A67550>
 5e4:	e7a60014 	swc1	$f6,20(sp)
 5e8:	10400007 	beqz	v0,608 <func_80A67764+0x3f4>
 5ec:	00000000 	nop
 5f0:	0c000000 	jal	0 <func_80A67550>
 5f4:	24040041 	li	a0,65
 5f8:	240b0002 	li	t3,2
 5fc:	240c0014 	li	t4,20
 600:	ae4b0174 	sw	t3,372(s2)
 604:	ae4c0178 	sw	t4,376(s2)
 608:	3c0d0000 	lui	t5,0x0
 60c:	85ad13d0 	lh	t5,5072(t5)
 610:	29a100b4 	slti	at,t5,180
 614:	54200014 	bnezl	at,668 <func_80A67764+0x454>
 618:	8fbf003c 	lw	ra,60(sp)
 61c:	8e4e0150 	lw	t6,336(s2)
 620:	31cf0002 	andi	t7,t6,0x2
 624:	51e00010 	beqzl	t7,668 <func_80A67764+0x454>
 628:	8fbf003c 	lw	ra,60(sp)
 62c:	0c000000 	jal	0 <func_80A67550>
 630:	24040041 	li	a0,65
 634:	24180014 	li	t8,20
 638:	ae510174 	sw	s1,372(s2)
 63c:	10000009 	b	664 <func_80A67764+0x450>
 640:	ae580178 	sw	t8,376(s2)
 644:	8e420178 	lw	v0,376(s2)
 648:	02402025 	move	a0,s2
 64c:	18400003 	blez	v0,65c <func_80A67764+0x448>
 650:	2459ffff 	addiu	t9,v0,-1
 654:	10000003 	b	664 <func_80A67764+0x450>
 658:	ae590178 	sw	t9,376(s2)
 65c:	0c000000 	jal	0 <func_80A67550>
 660:	8fa50044 	lw	a1,68(sp)
 664:	8fbf003c 	lw	ra,60(sp)
 668:	d7b40020 	ldc1	$f20,32(sp)
 66c:	8fb00028 	lw	s0,40(sp)
 670:	8fb1002c 	lw	s1,44(sp)
 674:	8fb20030 	lw	s2,48(sp)
 678:	8fb30034 	lw	s3,52(sp)
 67c:	8fb40038 	lw	s4,56(sp)
 680:	27bd0040 	addiu	sp,sp,64
 684:	03e00008 	jr	ra
 688:	24020001 	li	v0,1

0000068c <func_80A67BDC>:
 68c:	afa50004 	sw	a1,4(sp)
 690:	240e0002 	li	t6,2
 694:	ac8e014c 	sw	t6,332(a0)
 698:	ac800150 	sw	zero,336(a0)
 69c:	ac800154 	sw	zero,340(a0)
 6a0:	03e00008 	jr	ra
 6a4:	24020001 	li	v0,1

000006a8 <func_80A67BF8>:
 6a8:	afa40000 	sw	a0,0(sp)
 6ac:	afa50004 	sw	a1,4(sp)
 6b0:	03e00008 	jr	ra
 6b4:	24020001 	li	v0,1

000006b8 <func_80A67C08>:
 6b8:	8ca21c44 	lw	v0,7236(a1)
 6bc:	8c430440 	lw	v1,1088(v0)
 6c0:	24020001 	li	v0,1
 6c4:	54600004 	bnezl	v1,6d8 <func_80A67C08+0x20>
 6c8:	8c860154 	lw	a2,340(a0)
 6cc:	03e00008 	jr	ra
 6d0:	24020001 	li	v0,1
 6d4:	8c860154 	lw	a2,340(a0)
 6d8:	240e0001 	li	t6,1
 6dc:	2cc1005b 	sltiu	at,a2,91
 6e0:	54200004 	bnezl	at,6f4 <func_80A67C08+0x3c>
 6e4:	24cf0001 	addiu	t7,a2,1
 6e8:	ac6e03a0 	sw	t6,928(v1)
 6ec:	8c860154 	lw	a2,340(a0)
 6f0:	24cf0001 	addiu	t7,a2,1
 6f4:	ac8f0154 	sw	t7,340(a0)
 6f8:	03e00008 	jr	ra
 6fc:	00000000 	nop

00000700 <func_80A67C50>:
 700:	afa50004 	sw	a1,4(sp)
 704:	240e0003 	li	t6,3
 708:	ac8e014c 	sw	t6,332(a0)
 70c:	ac800150 	sw	zero,336(a0)
 710:	03e00008 	jr	ra
 714:	24020001 	li	v0,1

00000718 <func_80A67C68>:
 718:	afa40000 	sw	a0,0(sp)
 71c:	afa50004 	sw	a1,4(sp)
 720:	03e00008 	jr	ra
 724:	24020001 	li	v0,1

00000728 <func_80A67C78>:
 728:	afa40000 	sw	a0,0(sp)
 72c:	afa50004 	sw	a1,4(sp)
 730:	03e00008 	jr	ra
 734:	24020001 	li	v0,1

00000738 <func_80A67C88>:
 738:	afa50004 	sw	a1,4(sp)
 73c:	240e0004 	li	t6,4
 740:	ac8e014c 	sw	t6,332(a0)
 744:	ac800154 	sw	zero,340(a0)
 748:	ac800198 	sw	zero,408(a0)
 74c:	ac80019c 	sw	zero,412(a0)
 750:	24050010 	li	a1,16
 754:	00001025 	move	v0,zero
 758:	00801825 	move	v1,a0
 75c:	24420004 	addiu	v0,v0,4
 760:	ac60015c 	sw	zero,348(v1)
 764:	ac600160 	sw	zero,352(v1)
 768:	ac600164 	sw	zero,356(v1)
 76c:	24630010 	addiu	v1,v1,16
 770:	1445fffa 	bne	v0,a1,75c <func_80A67C88+0x24>
 774:	ac600148 	sw	zero,328(v1)
 778:	ac8001a0 	sw	zero,416(a0)
 77c:	03e00008 	jr	ra
 780:	24020001 	li	v0,1

00000784 <func_80A67CD4>:
 784:	afa40000 	sw	a0,0(sp)
 788:	afa50004 	sw	a1,4(sp)
 78c:	03e00008 	jr	ra
 790:	24020001 	li	v0,1

00000794 <func_80A67CE4>:
 794:	27bdffe8 	addiu	sp,sp,-24
 798:	afbf0014 	sw	ra,20(sp)
 79c:	8c82019c 	lw	v0,412(a0)
 7a0:	24010001 	li	at,1
 7a4:	240e04ce 	li	t6,1230
 7a8:	10410004 	beq	v0,at,7bc <func_80A67CE4+0x28>
 7ac:	240f002e 	li	t7,46
 7b0:	24010002 	li	at,2
 7b4:	54410010 	bnel	v0,at,7f8 <func_80A67CE4+0x64>
 7b8:	24010004 	li	at,4
 7bc:	3c020000 	lui	v0,0x0
 7c0:	24420000 	addiu	v0,v0,0
 7c4:	3c010001 	lui	at,0x1
 7c8:	ac400008 	sw	zero,8(v0)
 7cc:	00250821 	addu	at,at,a1
 7d0:	a42e1e1a 	sh	t6,7706(at)
 7d4:	3c010001 	lui	at,0x1
 7d8:	00250821 	addu	at,at,a1
 7dc:	a02f1e5e 	sb	t7,7774(at)
 7e0:	3c010001 	lui	at,0x1
 7e4:	00250821 	addu	at,at,a1
 7e8:	24180014 	li	t8,20
 7ec:	1000002b 	b	89c <func_80A67CE4+0x108>
 7f0:	a0381e15 	sb	t8,7701(at)
 7f4:	24010004 	li	at,4
 7f8:	14410014 	bne	v0,at,84c <func_80A67CE4+0xb8>
 7fc:	3c020000 	lui	v0,0x0
 800:	24420000 	addiu	v0,v0,0
 804:	241900f0 	li	t9,240
 808:	2408000f 	li	t0,15
 80c:	3c010001 	lui	at,0x1
 810:	a45913d0 	sh	t9,5072(v0)
 814:	a44813ce 	sh	t0,5070(v0)
 818:	ac400008 	sw	zero,8(v0)
 81c:	00250821 	addu	at,at,a1
 820:	240904ce 	li	t1,1230
 824:	a4291e1a 	sh	t1,7706(at)
 828:	3c010001 	lui	at,0x1
 82c:	00250821 	addu	at,at,a1
 830:	240a002e 	li	t2,46
 834:	a02a1e5e 	sb	t2,7774(at)
 838:	3c010001 	lui	at,0x1
 83c:	00250821 	addu	at,at,a1
 840:	240b0014 	li	t3,20
 844:	10000015 	b	89c <func_80A67CE4+0x108>
 848:	a02b1e15 	sb	t3,7701(at)
 84c:	3c040000 	lui	a0,0x0
 850:	24840000 	addiu	a0,a0,0
 854:	0c000000 	jal	0 <func_80A67550>
 858:	afa5001c 	sw	a1,28(sp)
 85c:	8fa5001c 	lw	a1,28(sp)
 860:	3c020000 	lui	v0,0x0
 864:	24420000 	addiu	v0,v0,0
 868:	3c010001 	lui	at,0x1
 86c:	ac400008 	sw	zero,8(v0)
 870:	240c0157 	li	t4,343
 874:	00250821 	addu	at,at,a1
 878:	a42c1e1a 	sh	t4,7706(at)
 87c:	3c010001 	lui	at,0x1
 880:	240d002e 	li	t5,46
 884:	00250821 	addu	at,at,a1
 888:	a02d1e5e 	sb	t5,7774(at)
 88c:	3c010001 	lui	at,0x1
 890:	240e0014 	li	t6,20
 894:	00250821 	addu	at,at,a1
 898:	a02e1e15 	sb	t6,7701(at)
 89c:	8fbf0014 	lw	ra,20(sp)
 8a0:	27bd0018 	addiu	sp,sp,24
 8a4:	03e00008 	jr	ra
 8a8:	00000000 	nop

000008ac <func_80A67DFC>:
 8ac:	27bdffc8 	addiu	sp,sp,-56
 8b0:	afbf0034 	sw	ra,52(sp)
 8b4:	afb40030 	sw	s4,48(sp)
 8b8:	afb3002c 	sw	s3,44(sp)
 8bc:	afb20028 	sw	s2,40(sp)
 8c0:	afb10024 	sw	s1,36(sp)
 8c4:	afb00020 	sw	s0,32(sp)
 8c8:	afa5003c 	sw	a1,60(sp)
 8cc:	8c8f0154 	lw	t7,340(a0)
 8d0:	00809025 	move	s2,a0
 8d4:	8cb31c44 	lw	s3,7236(a1)
 8d8:	31f80040 	andi	t8,t7,0x40
 8dc:	17000012 	bnez	t8,928 <func_80A67DFC+0x7c>
 8e0:	3c020000 	lui	v0,0x0
 8e4:	8e710440 	lw	s1,1088(s3)
 8e8:	24420000 	addiu	v0,v0,0
 8ec:	c44c0000 	lwc1	$f12,0(v0)
 8f0:	c6240024 	lwc1	$f4,36(s1)
 8f4:	c44e0004 	lwc1	$f14,4(v0)
 8f8:	8c460008 	lw	a2,8(v0)
 8fc:	e7a40010 	swc1	$f4,16(sp)
 900:	c626002c 	lwc1	$f6,44(s1)
 904:	8c47000c 	lw	a3,12(v0)
 908:	0c000000 	jal	0 <func_80A67550>
 90c:	e7a60014 	swc1	$f6,20(sp)
 910:	50400006 	beqzl	v0,92c <func_80A67DFC+0x80>
 914:	8e420154 	lw	v0,340(s2)
 918:	8e590154 	lw	t9,340(s2)
 91c:	37280040 	ori	t0,t9,0x40
 920:	10000017 	b	980 <func_80A67DFC+0xd4>
 924:	ae480154 	sw	t0,340(s2)
 928:	8e420154 	lw	v0,340(s2)
 92c:	30490040 	andi	t1,v0,0x40
 930:	11200013 	beqz	t1,980 <func_80A67DFC+0xd4>
 934:	304a0020 	andi	t2,v0,0x20
 938:	15400011 	bnez	t2,980 <func_80A67DFC+0xd4>
 93c:	3c020000 	lui	v0,0x0
 940:	8e710440 	lw	s1,1088(s3)
 944:	24420000 	addiu	v0,v0,0
 948:	c44c0000 	lwc1	$f12,0(v0)
 94c:	c6280024 	lwc1	$f8,36(s1)
 950:	c44e0004 	lwc1	$f14,4(v0)
 954:	8c460008 	lw	a2,8(v0)
 958:	e7a80010 	swc1	$f8,16(sp)
 95c:	c62a002c 	lwc1	$f10,44(s1)
 960:	8c47000c 	lw	a3,12(v0)
 964:	0c000000 	jal	0 <func_80A67550>
 968:	e7aa0014 	swc1	$f10,20(sp)
 96c:	54400005 	bnezl	v0,984 <func_80A67DFC+0xd8>
 970:	8e440150 	lw	a0,336(s2)
 974:	8e4b0154 	lw	t3,340(s2)
 978:	356c0020 	ori	t4,t3,0x20
 97c:	ae4c0154 	sw	t4,340(s2)
 980:	8e440150 	lw	a0,336(s2)
 984:	28810033 	slti	at,a0,51
 988:	5420000b 	bnezl	at,9b8 <func_80A67DFC+0x10c>
 98c:	28810051 	slti	at,a0,81
 990:	8e420154 	lw	v0,340(s2)
 994:	304d0002 	andi	t5,v0,0x2
 998:	15a00006 	bnez	t5,9b4 <func_80A67DFC+0x108>
 99c:	344e0002 	ori	t6,v0,0x2
 9a0:	ae4e0154 	sw	t6,340(s2)
 9a4:	0c000000 	jal	0 <func_80A67550>
 9a8:	00002025 	move	a0,zero
 9ac:	10000025 	b	a44 <func_80A67DFC+0x198>
 9b0:	8e440150 	lw	a0,336(s2)
 9b4:	28810051 	slti	at,a0,81
 9b8:	5420000f 	bnezl	at,9f8 <func_80A67DFC+0x14c>
 9bc:	28810052 	slti	at,a0,82
 9c0:	8e6f0440 	lw	t7,1088(s3)
 9c4:	51e0000c 	beqzl	t7,9f8 <func_80A67DFC+0x14c>
 9c8:	28810052 	slti	at,a0,82
 9cc:	8e420154 	lw	v0,340(s2)
 9d0:	30580001 	andi	t8,v0,0x1
 9d4:	17000007 	bnez	t8,9f4 <func_80A67DFC+0x148>
 9d8:	34590001 	ori	t9,v0,0x1
 9dc:	ae590154 	sw	t9,340(s2)
 9e0:	8e630440 	lw	v1,1088(s3)
 9e4:	24140001 	li	s4,1
 9e8:	ac740388 	sw	s4,904(v1)
 9ec:	10000015 	b	a44 <func_80A67DFC+0x198>
 9f0:	8e440150 	lw	a0,336(s2)
 9f4:	28810052 	slti	at,a0,82
 9f8:	54200013 	bnezl	at,a48 <func_80A67DFC+0x19c>
 9fc:	8e4d019c 	lw	t5,412(s2)
 a00:	8e420154 	lw	v0,340(s2)
 a04:	3c050000 	lui	a1,0x0
 a08:	24a50000 	addiu	a1,a1,0
 a0c:	30480010 	andi	t0,v0,0x10
 a10:	1500000c 	bnez	t0,a44 <func_80A67DFC+0x198>
 a14:	34490010 	ori	t1,v0,0x10
 a18:	3c0a0000 	lui	t2,0x0
 a1c:	3c0b0000 	lui	t3,0x0
 a20:	ae490154 	sw	t1,340(s2)
 a24:	256b0000 	addiu	t3,t3,0
 a28:	25470000 	addiu	a3,t2,0
 a2c:	afa70010 	sw	a3,16(sp)
 a30:	afab0014 	sw	t3,20(sp)
 a34:	24044835 	li	a0,18485
 a38:	0c000000 	jal	0 <func_80A67550>
 a3c:	24060004 	li	a2,4
 a40:	8e440150 	lw	a0,336(s2)
 a44:	8e4d019c 	lw	t5,412(s2)
 a48:	248c0001 	addiu	t4,a0,1
 a4c:	24140001 	li	s4,1
 a50:	15a000ca 	bnez	t5,d7c <func_80A67DFC+0x4d0>
 a54:	ae4c0150 	sw	t4,336(s2)
 a58:	00008025 	move	s0,zero
 a5c:	8e710440 	lw	s1,1088(s3)
 a60:	8e4e01a0 	lw	t6,416(s2)
 a64:	3c190000 	lui	t9,0x0
 a68:	2a010008 	slti	at,s0,8
 a6c:	15c00003 	bnez	t6,a7c <func_80A67DFC+0x1d0>
 a70:	27390000 	addiu	t9,t9,0
 a74:	10200039 	beqz	at,b5c <func_80A67DFC+0x2b0>
 a78:	00000000 	nop
 a7c:	06010004 	bgez	s0,a90 <func_80A67DFC+0x1e4>
 a80:	320f0007 	andi	t7,s0,0x7
 a84:	11e00002 	beqz	t7,a90 <func_80A67DFC+0x1e4>
 a88:	00000000 	nop
 a8c:	25effff8 	addiu	t7,t7,-8
 a90:	000fc080 	sll	t8,t7,0x2
 a94:	030fc023 	subu	t8,t8,t7
 a98:	0018c080 	sll	t8,t8,0x2
 a9c:	03192021 	addu	a0,t8,t9
 aa0:	0c000000 	jal	0 <func_80A67550>
 aa4:	26250024 	addiu	a1,s1,36
 aa8:	8e710440 	lw	s1,1088(s3)
 aac:	3c01437a 	lui	at,0x437a
 ab0:	52200027 	beqzl	s1,b50 <func_80A67DFC+0x2a4>
 ab4:	26100001 	addiu	s0,s0,1
 ab8:	44818000 	mtc1	at,$f16
 abc:	00000000 	nop
 ac0:	4610003c 	c.lt.s	$f0,$f16
 ac4:	00000000 	nop
 ac8:	45020021 	bc1fl	b50 <func_80A67DFC+0x2a4>
 acc:	26100001 	addiu	s0,s0,1
 ad0:	8e2801f0 	lw	t0,496(s1)
 ad4:	00105080 	sll	t2,s0,0x2
 ad8:	31090004 	andi	t1,t0,0x4
 adc:	5120001c 	beqzl	t1,b50 <func_80A67DFC+0x2a4>
 ae0:	26100001 	addiu	s0,s0,1
 ae4:	1a000006 	blez	s0,b00 <func_80A67DFC+0x254>
 ae8:	024a1021 	addu	v0,s2,t2
 aec:	8c4b0154 	lw	t3,340(v0)
 af0:	168b0003 	bne	s4,t3,b00 <func_80A67DFC+0x254>
 af4:	00000000 	nop
 af8:	10000004 	b	b0c <func_80A67DFC+0x260>
 afc:	ac540158 	sw	s4,344(v0)
 b00:	56000003 	bnezl	s0,b10 <func_80A67DFC+0x264>
 b04:	8c4c0154 	lw	t4,340(v0)
 b08:	ac540158 	sw	s4,344(v0)
 b0c:	8c4c0154 	lw	t4,340(v0)
 b10:	5580000f 	bnezl	t4,b50 <func_80A67DFC+0x2a4>
 b14:	26100001 	addiu	s0,s0,1
 b18:	8e420154 	lw	v0,340(s2)
 b1c:	2405208c 	li	a1,8332
 b20:	00003025 	move	a2,zero
 b24:	304d0008 	andi	t5,v0,0x8
 b28:	15a00008 	bnez	t5,b4c <func_80A67DFC+0x2a0>
 b2c:	344e0008 	ori	t6,v0,0x8
 b30:	ae4e0154 	sw	t6,340(s2)
 b34:	0c000000 	jal	0 <func_80A67550>
 b38:	8fa4003c 	lw	a0,60(sp)
 b3c:	240f0004 	li	t7,4
 b40:	2418001e 	li	t8,30
 b44:	ae4f019c 	sw	t7,412(s2)
 b48:	ae580198 	sw	t8,408(s2)
 b4c:	26100001 	addiu	s0,s0,1
 b50:	24010010 	li	at,16
 b54:	1601ffc2 	bne	s0,at,a60 <func_80A67DFC+0x1b4>
 b58:	8e710440 	lw	s1,1088(s3)
 b5c:	12200076 	beqz	s1,d38 <func_80A67DFC+0x48c>
 b60:	00000000 	nop
 b64:	8e590154 	lw	t9,340(s2)
 b68:	3c020000 	lui	v0,0x0
 b6c:	24420000 	addiu	v0,v0,0
 b70:	33280020 	andi	t0,t9,0x20
 b74:	11000070 	beqz	t0,d38 <func_80A67DFC+0x48c>
 b78:	00000000 	nop
 b7c:	c6320024 	lwc1	$f18,36(s1)
 b80:	c44c0000 	lwc1	$f12,0(v0)
 b84:	c44e0004 	lwc1	$f14,4(v0)
 b88:	e7b20010 	swc1	$f18,16(sp)
 b8c:	c624002c 	lwc1	$f4,44(s1)
 b90:	8c460008 	lw	a2,8(v0)
 b94:	8c47000c 	lw	a3,12(v0)
 b98:	0c000000 	jal	0 <func_80A67550>
 b9c:	e7a40014 	swc1	$f4,20(sp)
 ba0:	10400065 	beqz	v0,d38 <func_80A67DFC+0x48c>
 ba4:	00000000 	nop
 ba8:	8e4901a0 	lw	t1,416(s2)
 bac:	56890019 	bnel	s4,t1,c14 <func_80A67DFC+0x368>
 bb0:	8e580194 	lw	t8,404(s2)
 bb4:	8e4a0194 	lw	t2,404(s2)
 bb8:	55400016 	bnezl	t2,c14 <func_80A67DFC+0x368>
 bbc:	8e580194 	lw	t8,404(s2)
 bc0:	8e6b0440 	lw	t3,1088(s3)
 bc4:	3c01c348 	lui	at,0xc348
 bc8:	44814000 	mtc1	at,$f8
 bcc:	c5660100 	lwc1	$f6,256(t3)
 bd0:	4608303c 	c.lt.s	$f6,$f8
 bd4:	00000000 	nop
 bd8:	4502000e 	bc1fl	c14 <func_80A67DFC+0x368>
 bdc:	8e580194 	lw	t8,404(s2)
 be0:	8e4c0154 	lw	t4,340(s2)
 be4:	2405208c 	li	a1,8332
 be8:	00003025 	move	a2,zero
 bec:	358d0008 	ori	t5,t4,0x8
 bf0:	ae4d0154 	sw	t5,340(s2)
 bf4:	0c000000 	jal	0 <func_80A67550>
 bf8:	8fa4003c 	lw	a0,60(sp)
 bfc:	240e0004 	li	t6,4
 c00:	240f001e 	li	t7,30
 c04:	ae4e019c 	sw	t6,412(s2)
 c08:	1000004b 	b	d38 <func_80A67DFC+0x48c>
 c0c:	ae4f0198 	sw	t7,408(s2)
 c10:	8e580194 	lw	t8,404(s2)
 c14:	24190002 	li	t9,2
 c18:	24040041 	li	a0,65
 c1c:	56980017 	bnel	s4,t8,c7c <func_80A67DFC+0x3d0>
 c20:	8e430174 	lw	v1,372(s2)
 c24:	0c000000 	jal	0 <func_80A67550>
 c28:	ae5901a0 	sw	t9,416(s2)
 c2c:	3c070000 	lui	a3,0x0
 c30:	3c080000 	lui	t0,0x0
 c34:	24e70000 	addiu	a3,a3,0
 c38:	25080000 	addiu	t0,t0,0
 c3c:	3c050000 	lui	a1,0x0
 c40:	24a50000 	addiu	a1,a1,0
 c44:	afa80014 	sw	t0,20(sp)
 c48:	afa70010 	sw	a3,16(sp)
 c4c:	24044835 	li	a0,18485
 c50:	0c000000 	jal	0 <func_80A67550>
 c54:	24060004 	li	a2,4
 c58:	3c020000 	lui	v0,0x0
 c5c:	24090046 	li	t1,70
 c60:	24420000 	addiu	v0,v0,0
 c64:	ae54019c 	sw	s4,412(s2)
 c68:	ae490198 	sw	t1,408(s2)
 c6c:	240a000f 	li	t2,15
 c70:	10000031 	b	d38 <func_80A67DFC+0x48c>
 c74:	a44a13ce 	sh	t2,5070(v0)
 c78:	8e430174 	lw	v1,372(s2)
 c7c:	1683000d 	bne	s4,v1,cb4 <func_80A67DFC+0x408>
 c80:	00000000 	nop
 c84:	8e420154 	lw	v0,340(s2)
 c88:	2405208d 	li	a1,8333
 c8c:	00003025 	move	a2,zero
 c90:	304b0004 	andi	t3,v0,0x4
 c94:	15600007 	bnez	t3,cb4 <func_80A67DFC+0x408>
 c98:	344c0004 	ori	t4,v0,0x4
 c9c:	ae5401a0 	sw	s4,416(s2)
 ca0:	ae4c0154 	sw	t4,340(s2)
 ca4:	0c000000 	jal	0 <func_80A67550>
 ca8:	8fa4003c 	lw	a0,60(sp)
 cac:	10000022 	b	d38 <func_80A67DFC+0x48c>
 cb0:	00000000 	nop
 cb4:	5460000e 	bnezl	v1,cf0 <func_80A67DFC+0x444>
 cb8:	8e790440 	lw	t9,1088(s3)
 cbc:	8e4d0154 	lw	t5,340(s2)
 cc0:	2405208c 	li	a1,8332
 cc4:	00003025 	move	a2,zero
 cc8:	35ae0008 	ori	t6,t5,0x8
 ccc:	ae4e0154 	sw	t6,340(s2)
 cd0:	0c000000 	jal	0 <func_80A67550>
 cd4:	8fa4003c 	lw	a0,60(sp)
 cd8:	240f0004 	li	t7,4
 cdc:	2418001e 	li	t8,30
 ce0:	ae4f019c 	sw	t7,412(s2)
 ce4:	10000014 	b	d38 <func_80A67DFC+0x48c>
 ce8:	ae580198 	sw	t8,408(s2)
 cec:	8e790440 	lw	t9,1088(s3)
 cf0:	3c0142a0 	lui	at,0x42a0
 cf4:	44815000 	mtc1	at,$f10
 cf8:	c7300100 	lwc1	$f16,256(t9)
 cfc:	4610503c 	c.lt.s	$f10,$f16
 d00:	00000000 	nop
 d04:	4500000c 	bc1f	d38 <func_80A67DFC+0x48c>
 d08:	00000000 	nop
 d0c:	8e480154 	lw	t0,340(s2)
 d10:	2405208c 	li	a1,8332
 d14:	00003025 	move	a2,zero
 d18:	35090008 	ori	t1,t0,0x8
 d1c:	ae490154 	sw	t1,340(s2)
 d20:	0c000000 	jal	0 <func_80A67550>
 d24:	8fa4003c 	lw	a0,60(sp)
 d28:	240a0004 	li	t2,4
 d2c:	240b001e 	li	t3,30
 d30:	ae4a019c 	sw	t2,412(s2)
 d34:	ae4b0198 	sw	t3,408(s2)
 d38:	3c020000 	lui	v0,0x0
 d3c:	24420000 	addiu	v0,v0,0
 d40:	844c13d0 	lh	t4,5072(v0)
 d44:	298100b4 	slti	at,t4,180
 d48:	54200015 	bnezl	at,da0 <func_80A67DFC+0x4f4>
 d4c:	8fbf0034 	lw	ra,52(sp)
 d50:	8e4d0154 	lw	t5,340(s2)
 d54:	240f00f0 	li	t7,240
 d58:	24180002 	li	t8,2
 d5c:	31ae0002 	andi	t6,t5,0x2
 d60:	11c0000e 	beqz	t6,d9c <func_80A67DFC+0x4f0>
 d64:	2419001e 	li	t9,30
 d68:	a44f13d0 	sh	t7,5072(v0)
 d6c:	ae58019c 	sw	t8,412(s2)
 d70:	ae590198 	sw	t9,408(s2)
 d74:	10000009 	b	d9c <func_80A67DFC+0x4f0>
 d78:	a44013ce 	sh	zero,5070(v0)
 d7c:	8e420198 	lw	v0,408(s2)
 d80:	02402025 	move	a0,s2
 d84:	18400003 	blez	v0,d94 <func_80A67DFC+0x4e8>
 d88:	2448ffff 	addiu	t0,v0,-1
 d8c:	10000003 	b	d9c <func_80A67DFC+0x4f0>
 d90:	ae480198 	sw	t0,408(s2)
 d94:	0c000000 	jal	0 <func_80A67550>
 d98:	8fa5003c 	lw	a1,60(sp)
 d9c:	8fbf0034 	lw	ra,52(sp)
 da0:	8fb00020 	lw	s0,32(sp)
 da4:	8fb10024 	lw	s1,36(sp)
 da8:	8fb20028 	lw	s2,40(sp)
 dac:	8fb3002c 	lw	s3,44(sp)
 db0:	8fb40030 	lw	s4,48(sp)
 db4:	27bd0038 	addiu	sp,sp,56
 db8:	03e00008 	jr	ra
 dbc:	24020001 	li	v0,1

00000dc0 <EnHorseGameCheck_Init>:
 dc0:	27bdffe8 	addiu	sp,sp,-24
 dc4:	afbf0014 	sw	ra,20(sp)
 dc8:	84ae00a4 	lh	t6,164(a1)
 dcc:	00803025 	move	a2,a0
 dd0:	24010063 	li	at,99
 dd4:	15c1000d 	bne	t6,at,e0c <EnHorseGameCheck_Init+0x4c>
 dd8:	24040018 	li	a0,24
 ddc:	afa5001c 	sw	a1,28(sp)
 de0:	0c000000 	jal	0 <func_80A67550>
 de4:	afa60018 	sw	a2,24(sp)
 de8:	8fa5001c 	lw	a1,28(sp)
 dec:	14400005 	bnez	v0,e04 <EnHorseGameCheck_Init+0x44>
 df0:	8fa60018 	lw	a2,24(sp)
 df4:	3c0f0000 	lui	t7,0x0
 df8:	8def0000 	lw	t7,0(t7)
 dfc:	85f80556 	lh	t8,1366(t7)
 e00:	13000002 	beqz	t8,e0c <EnHorseGameCheck_Init+0x4c>
 e04:	24190004 	li	t9,4
 e08:	a4d9001c 	sh	t9,28(a2)
 e0c:	84c8001c 	lh	t0,28(a2)
 e10:	3c020000 	lui	v0,0x0
 e14:	00084880 	sll	t1,t0,0x2
 e18:	00491021 	addu	v0,v0,t1
 e1c:	8c420000 	lw	v0,0(v0)
 e20:	50400004 	beqzl	v0,e34 <EnHorseGameCheck_Init+0x74>
 e24:	8fbf0014 	lw	ra,20(sp)
 e28:	0040f809 	jalr	v0
 e2c:	00c02025 	move	a0,a2
 e30:	8fbf0014 	lw	ra,20(sp)
 e34:	27bd0018 	addiu	sp,sp,24
 e38:	03e00008 	jr	ra
 e3c:	00000000 	nop

00000e40 <EnHorseGameCheck_Destroy>:
 e40:	27bdffe8 	addiu	sp,sp,-24
 e44:	afbf0014 	sw	ra,20(sp)
 e48:	848e001c 	lh	t6,28(a0)
 e4c:	3c020000 	lui	v0,0x0
 e50:	000e7880 	sll	t7,t6,0x2
 e54:	004f1021 	addu	v0,v0,t7
 e58:	8c420000 	lw	v0,0(v0)
 e5c:	50400004 	beqzl	v0,e70 <EnHorseGameCheck_Destroy+0x30>
 e60:	8fbf0014 	lw	ra,20(sp)
 e64:	0040f809 	jalr	v0
 e68:	00000000 	nop
 e6c:	8fbf0014 	lw	ra,20(sp)
 e70:	27bd0018 	addiu	sp,sp,24
 e74:	03e00008 	jr	ra
 e78:	00000000 	nop

00000e7c <EnHorseGameCheck_Update>:
 e7c:	27bdffe8 	addiu	sp,sp,-24
 e80:	afbf0014 	sw	ra,20(sp)
 e84:	8c8e014c 	lw	t6,332(a0)
 e88:	3c020000 	lui	v0,0x0
 e8c:	000e7880 	sll	t7,t6,0x2
 e90:	004f1021 	addu	v0,v0,t7
 e94:	8c420000 	lw	v0,0(v0)
 e98:	50400004 	beqzl	v0,eac <EnHorseGameCheck_Update+0x30>
 e9c:	8fbf0014 	lw	ra,20(sp)
 ea0:	0040f809 	jalr	v0
 ea4:	00000000 	nop
 ea8:	8fbf0014 	lw	ra,20(sp)
 eac:	27bd0018 	addiu	sp,sp,24
 eb0:	03e00008 	jr	ra
 eb4:	00000000 	nop

00000eb8 <EnHorseGameCheck_Draw>:
 eb8:	afa40000 	sw	a0,0(sp)
 ebc:	03e00008 	jr	ra
 ec0:	afa50004 	sw	a1,4(sp)
	...
