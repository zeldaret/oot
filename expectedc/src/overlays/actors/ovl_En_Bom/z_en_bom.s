
build/src/overlays/actors/ovl_En_Bom/z_en_bom.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBom_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850204 	sw	a1,516(a0)

00000008 <EnBom_Init>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afa5003c 	sw	a1,60(sp)
  10:	afbf0024 	sw	ra,36(sp)
  14:	afb00020 	sw	s0,32(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <EnBom_SetupAction>
  24:	24a50080 	addiu	a1,a1,128
  28:	3c060000 	lui	a2,0x0
  2c:	24c60000 	addiu	a2,a2,0
  30:	260400b4 	addiu	a0,s0,180
  34:	3c05442f 	lui	a1,0x442f
  38:	0c000000 	jal	0 <EnBom_SetupAction>
  3c:	3c074180 	lui	a3,0x4180
  40:	240e00c8 	li	t6,200
  44:	240f0005 	li	t7,5
  48:	2418000a 	li	t8,10
  4c:	24190046 	li	t9,70
  50:	24080007 	li	t0,7
  54:	a20e00ae 	sb	t6,174(s0)
  58:	a60f00a8 	sh	t7,168(s0)
  5c:	a61800aa 	sh	t8,170(s0)
  60:	a61901f8 	sh	t9,504(s0)
  64:	a60801fa 	sh	t0,506(s0)
  68:	2605014c 	addiu	a1,s0,332
  6c:	afa5002c 	sw	a1,44(sp)
  70:	0c000000 	jal	0 <EnBom_SetupAction>
  74:	8fa4003c 	lw	a0,60(sp)
  78:	26050198 	addiu	a1,s0,408
  7c:	afa50030 	sw	a1,48(sp)
  80:	0c000000 	jal	0 <EnBom_SetupAction>
  84:	8fa4003c 	lw	a0,60(sp)
  88:	3c070000 	lui	a3,0x0
  8c:	24e70020 	addiu	a3,a3,32
  90:	8fa4003c 	lw	a0,60(sp)
  94:	8fa5002c 	lw	a1,44(sp)
  98:	0c000000 	jal	0 <EnBom_SetupAction>
  9c:	02003025 	move	a2,s0
  a0:	3c070000 	lui	a3,0x0
  a4:	260901b8 	addiu	t1,s0,440
  a8:	afa90010 	sw	t1,16(sp)
  ac:	24e70070 	addiu	a3,a3,112
  b0:	8fa4003c 	lw	a0,60(sp)
  b4:	8fa50030 	lw	a1,48(sp)
  b8:	0c000000 	jal	0 <EnBom_SetupAction>
  bc:	02003025 	move	a2,s0
  c0:	860f00b8 	lh	t7,184(s0)
  c4:	860b00b8 	lh	t3,184(s0)
  c8:	920a01bd 	lbu	t2,445(s0)
  cc:	31f800ff 	andi	t8,t7,0xff
  d0:	a61800b8 	sh	t8,184(s0)
  d4:	860200b8 	lh	v0,184(s0)
  d8:	316cff00 	andi	t4,t3,0xff00
  dc:	000c6a03 	sra	t5,t4,0x8
  e0:	014d7021 	addu	t6,t2,t5
  e4:	30590080 	andi	t9,v0,0x80
  e8:	13200003 	beqz	t9,f8 <EnBom_Init+0xf0>
  ec:	a20e01bd 	sb	t6,445(s0)
  f0:	3448ff00 	ori	t0,v0,0xff00
  f4:	a60800b8 	sh	t0,184(s0)
  f8:	3c050000 	lui	a1,0x0
  fc:	24a50000 	addiu	a1,a1,0
 100:	0c000000 	jal	0 <EnBom_SetupAction>
 104:	02002025 	move	a0,s0
 108:	8fbf0024 	lw	ra,36(sp)
 10c:	8fb00020 	lw	s0,32(sp)
 110:	27bd0038 	addiu	sp,sp,56
 114:	03e00008 	jr	ra
 118:	00000000 	nop

0000011c <EnBom_Destroy>:
 11c:	27bdffe8 	addiu	sp,sp,-24
 120:	afa40018 	sw	a0,24(sp)
 124:	afa5001c 	sw	a1,28(sp)
 128:	00a02025 	move	a0,a1
 12c:	8fa50018 	lw	a1,24(sp)
 130:	afbf0014 	sw	ra,20(sp)
 134:	0c000000 	jal	0 <EnBom_SetupAction>
 138:	24a50198 	addiu	a1,a1,408
 13c:	8fa50018 	lw	a1,24(sp)
 140:	8fa4001c 	lw	a0,28(sp)
 144:	0c000000 	jal	0 <EnBom_SetupAction>
 148:	24a5014c 	addiu	a1,a1,332
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	27bd0018 	addiu	sp,sp,24
 154:	03e00008 	jr	ra
 158:	00000000 	nop

0000015c <EnBom_Move>:
 15c:	27bdffe0 	addiu	sp,sp,-32
 160:	afbf001c 	sw	ra,28(sp)
 164:	afb00018 	sw	s0,24(sp)
 168:	00808025 	move	s0,a0
 16c:	0c000000 	jal	0 <EnBom_SetupAction>
 170:	afa50024 	sw	a1,36(sp)
 174:	10400007 	beqz	v0,194 <EnBom_Move+0x38>
 178:	02002025 	move	a0,s0
 17c:	3c050000 	lui	a1,0x0
 180:	0c000000 	jal	0 <EnBom_SetupAction>
 184:	24a50000 	addiu	a1,a1,0
 188:	240effff 	li	t6,-1
 18c:	10000060 	b	310 <EnBom_Move+0x1b4>
 190:	a20e0003 	sb	t6,3(s0)
 194:	44801000 	mtc1	zero,$f2
 198:	c6000060 	lwc1	$f0,96(s0)
 19c:	4600103c 	c.lt.s	$f2,$f0
 1a0:	00000000 	nop
 1a4:	45020008 	bc1fl	1c8 <EnBom_Move+0x6c>
 1a8:	c6060068 	lwc1	$f6,104(s0)
 1ac:	960f0088 	lhu	t7,136(s0)
 1b0:	31f80010 	andi	t8,t7,0x10
 1b4:	53000004 	beqzl	t8,1c8 <EnBom_Move+0x6c>
 1b8:	c6060068 	lwc1	$f6,104(s0)
 1bc:	46000107 	neg.s	$f4,$f0
 1c0:	e6040060 	swc1	$f4,96(s0)
 1c4:	c6060068 	lwc1	$f6,104(s0)
 1c8:	96020088 	lhu	v0,136(s0)
 1cc:	46061032 	c.eq.s	$f2,$f6
 1d0:	30590008 	andi	t9,v0,0x8
 1d4:	45030022 	bc1tl	260 <EnBom_Move+0x104>
 1d8:	304d0001 	andi	t5,v0,0x1
 1dc:	53200020 	beqzl	t9,260 <EnBom_Move+0x104>
 1e0:	304d0001 	andi	t5,v0,0x1
 1e4:	8603007e 	lh	v1,126(s0)
 1e8:	86080032 	lh	t0,50(s0)
 1ec:	00682023 	subu	a0,v1,t0
 1f0:	00041400 	sll	v0,a0,0x10
 1f4:	00021403 	sra	v0,v0,0x10
 1f8:	04400003 	bltz	v0,208 <EnBom_Move+0xac>
 1fc:	00022823 	negu	a1,v0
 200:	10000001 	b	208 <EnBom_Move+0xac>
 204:	00402825 	move	a1,v0
 208:	28a14001 	slti	at,a1,16385
 20c:	14200005 	bnez	at,224 <EnBom_Move+0xc8>
 210:	2405282f 	li	a1,10287
 214:	00834821 	addu	t1,a0,v1
 218:	24018000 	li	at,-32768
 21c:	01215021 	addu	t2,t1,at
 220:	a60a0032 	sh	t2,50(s0)
 224:	0c000000 	jal	0 <EnBom_SetupAction>
 228:	02002025 	move	a0,s0
 22c:	0c000000 	jal	0 <EnBom_SetupAction>
 230:	02002025 	move	a0,s0
 234:	3c010000 	lui	at,0x0
 238:	c42a0040 	lwc1	$f10,64(at)
 23c:	c6080068 	lwc1	$f8,104(s0)
 240:	960b0088 	lhu	t3,136(s0)
 244:	44801000 	mtc1	zero,$f2
 248:	460a4402 	mul.s	$f16,$f8,$f10
 24c:	316cfff7 	andi	t4,t3,0xfff7
 250:	a60c0088 	sh	t4,136(s0)
 254:	3182ffff 	andi	v0,t4,0xffff
 258:	e6100068 	swc1	$f16,104(s0)
 25c:	304d0001 	andi	t5,v0,0x1
 260:	15a00008 	bnez	t5,284 <EnBom_Move+0x128>
 264:	26040068 	addiu	a0,s0,104
 268:	44051000 	mfc1	a1,$f2
 26c:	3c063da3 	lui	a2,0x3da3
 270:	34c6d70a 	ori	a2,a2,0xd70a
 274:	0c000000 	jal	0 <EnBom_SetupAction>
 278:	26040068 	addiu	a0,s0,104
 27c:	10000022 	b	308 <EnBom_Move+0x1ac>
 280:	00000000 	nop
 284:	44051000 	mfc1	a1,$f2
 288:	0c000000 	jal	0 <EnBom_SetupAction>
 28c:	3c063f80 	lui	a2,0x3f80
 290:	960e0088 	lhu	t6,136(s0)
 294:	3c01c040 	lui	at,0xc040
 298:	31cf0002 	andi	t7,t6,0x2
 29c:	51e00014 	beqzl	t7,2f0 <EnBom_Move+0x194>
 2a0:	860801f8 	lh	t0,504(s0)
 2a4:	c6120060 	lwc1	$f18,96(s0)
 2a8:	44812000 	mtc1	at,$f4
 2ac:	8fa40024 	lw	a0,36(sp)
 2b0:	4604903c 	c.lt.s	$f18,$f4
 2b4:	00000000 	nop
 2b8:	4502000d 	bc1fl	2f0 <EnBom_Move+0x194>
 2bc:	860801f8 	lh	t0,504(s0)
 2c0:	0c000000 	jal	0 <EnBom_SetupAction>
 2c4:	02002825 	move	a1,s0
 2c8:	3c010000 	lui	at,0x0
 2cc:	c4280044 	lwc1	$f8,68(at)
 2d0:	c6060060 	lwc1	$f6,96(s0)
 2d4:	96180088 	lhu	t8,136(s0)
 2d8:	46083282 	mul.s	$f10,$f6,$f8
 2dc:	3319fffd 	andi	t9,t8,0xfffd
 2e0:	a6190088 	sh	t9,136(s0)
 2e4:	10000008 	b	308 <EnBom_Move+0x1ac>
 2e8:	e60a0060 	swc1	$f10,96(s0)
 2ec:	860801f8 	lh	t0,504(s0)
 2f0:	02002025 	move	a0,s0
 2f4:	29010004 	slti	at,t0,4
 2f8:	14200003 	bnez	at,308 <EnBom_Move+0x1ac>
 2fc:	00000000 	nop
 300:	0c000000 	jal	0 <EnBom_SetupAction>
 304:	8fa50024 	lw	a1,36(sp)
 308:	0c000000 	jal	0 <EnBom_SetupAction>
 30c:	02002025 	move	a0,s0
 310:	8fbf001c 	lw	ra,28(sp)
 314:	8fb00018 	lw	s0,24(sp)
 318:	27bd0020 	addiu	sp,sp,32
 31c:	03e00008 	jr	ra
 320:	00000000 	nop

00000324 <EnBom_WaitForRelease>:
 324:	27bdffe8 	addiu	sp,sp,-24
 328:	afbf0014 	sw	ra,20(sp)
 32c:	afa40018 	sw	a0,24(sp)
 330:	0c000000 	jal	0 <EnBom_SetupAction>
 334:	afa5001c 	sw	a1,28(sp)
 338:	10400007 	beqz	v0,358 <EnBom_WaitForRelease+0x34>
 33c:	8fa40018 	lw	a0,24(sp)
 340:	3c050000 	lui	a1,0x0
 344:	0c000000 	jal	0 <EnBom_SetupAction>
 348:	24a50000 	addiu	a1,a1,0
 34c:	8fa40018 	lw	a0,24(sp)
 350:	0c000000 	jal	0 <EnBom_SetupAction>
 354:	8fa5001c 	lw	a1,28(sp)
 358:	8fbf0014 	lw	ra,20(sp)
 35c:	27bd0018 	addiu	sp,sp,24
 360:	03e00008 	jr	ra
 364:	00000000 	nop

00000368 <EnBom_Explode>:
 368:	27bdffe0 	addiu	sp,sp,-32
 36c:	afbf001c 	sw	ra,28(sp)
 370:	afb00018 	sw	s0,24(sp)
 374:	afa50024 	sw	a1,36(sp)
 378:	8c8201b4 	lw	v0,436(a0)
 37c:	00808025 	move	s0,a0
 380:	240500ff 	li	a1,255
 384:	844e002e 	lh	t6,46(v0)
 388:	24060014 	li	a2,20
 38c:	55c00009 	bnezl	t6,3b4 <EnBom_Explode+0x4c>
 390:	84590036 	lh	t9,54(v0)
 394:	8c8f0004 	lw	t7,4(a0)
 398:	c48c0090 	lwc1	$f12,144(a0)
 39c:	24070096 	li	a3,150
 3a0:	35f80020 	ori	t8,t7,0x20
 3a4:	0c000000 	jal	0 <EnBom_SetupAction>
 3a8:	ac980004 	sw	t8,4(a0)
 3ac:	8e0201b4 	lw	v0,436(s0)
 3b0:	84590036 	lh	t9,54(v0)
 3b4:	860800b8 	lh	t0,184(s0)
 3b8:	24010001 	li	at,1
 3bc:	26060198 	addiu	a2,s0,408
 3c0:	03284821 	addu	t1,t9,t0
 3c4:	252a0008 	addiu	t2,t1,8
 3c8:	a44a0036 	sh	t2,54(v0)
 3cc:	860b001c 	lh	t3,28(s0)
 3d0:	8fa40024 	lw	a0,36(sp)
 3d4:	15610004 	bne	t3,at,3e8 <EnBom_Explode+0x80>
 3d8:	3c010001 	lui	at,0x1
 3dc:	34211e60 	ori	at,at,0x1e60
 3e0:	0c000000 	jal	0 <EnBom_SetupAction>
 3e4:	00812821 	addu	a1,a0,at
 3e8:	8fa20024 	lw	v0,36(sp)
 3ec:	3c010001 	lui	at,0x1
 3f0:	00411021 	addu	v0,v0,at
 3f4:	84430ab6 	lh	v1,2742(v0)
 3f8:	10600002 	beqz	v1,404 <EnBom_Explode+0x9c>
 3fc:	246dffe7 	addiu	t5,v1,-25
 400:	a44d0ab6 	sh	t5,2742(v0)
 404:	84430ab8 	lh	v1,2744(v0)
 408:	10600002 	beqz	v1,414 <EnBom_Explode+0xac>
 40c:	246effe7 	addiu	t6,v1,-25
 410:	a44e0ab8 	sh	t6,2744(v0)
 414:	84430aba 	lh	v1,2746(v0)
 418:	10600002 	beqz	v1,424 <EnBom_Explode+0xbc>
 41c:	246fffe7 	addiu	t7,v1,-25
 420:	a44f0aba 	sh	t7,2746(v0)
 424:	84430ab0 	lh	v1,2736(v0)
 428:	10600002 	beqz	v1,434 <EnBom_Explode+0xcc>
 42c:	2478ffe7 	addiu	t8,v1,-25
 430:	a4580ab0 	sh	t8,2736(v0)
 434:	84430ab2 	lh	v1,2738(v0)
 438:	10600002 	beqz	v1,444 <EnBom_Explode+0xdc>
 43c:	2479ffe7 	addiu	t9,v1,-25
 440:	a4590ab2 	sh	t9,2738(v0)
 444:	84430ab4 	lh	v1,2740(v0)
 448:	10600002 	beqz	v1,454 <EnBom_Explode+0xec>
 44c:	2468ffe7 	addiu	t0,v1,-25
 450:	a4480ab4 	sh	t0,2740(v0)
 454:	860901f8 	lh	t1,504(s0)
 458:	8faa0024 	lw	t2,36(sp)
 45c:	55200012 	bnezl	t1,4a8 <EnBom_Explode+0x140>
 460:	8fbf001c 	lw	ra,28(sp)
 464:	8d421c44 	lw	v0,7236(t2)
 468:	8c43067c 	lw	v1,1660(v0)
 46c:	306b0800 	andi	t3,v1,0x800
 470:	1160000a 	beqz	t3,49c <EnBom_Explode+0x134>
 474:	00000000 	nop
 478:	8c4c03ac 	lw	t4,940(v0)
 47c:	2401f7ff 	li	at,-2049
 480:	00616824 	and	t5,v1,at
 484:	160c0005 	bne	s0,t4,49c <EnBom_Explode+0x134>
 488:	00000000 	nop
 48c:	ac40011c 	sw	zero,284(v0)
 490:	ac4003ac 	sw	zero,940(v0)
 494:	ac400438 	sw	zero,1080(v0)
 498:	ac4d067c 	sw	t5,1660(v0)
 49c:	0c000000 	jal	0 <EnBom_SetupAction>
 4a0:	02002025 	move	a0,s0
 4a4:	8fbf001c 	lw	ra,28(sp)
 4a8:	8fb00018 	lw	s0,24(sp)
 4ac:	27bd0020 	addiu	sp,sp,32
 4b0:	03e00008 	jr	ra
 4b4:	00000000 	nop

000004b8 <EnBom_Update>:
 4b8:	27bdff70 	addiu	sp,sp,-144
 4bc:	3c0f0000 	lui	t7,0x0
 4c0:	afbf002c 	sw	ra,44(sp)
 4c4:	afb00028 	sw	s0,40(sp)
 4c8:	afa50094 	sw	a1,148(sp)
 4cc:	25ef008c 	addiu	t7,t7,140
 4d0:	8df90000 	lw	t9,0(t7)
 4d4:	27ae0084 	addiu	t6,sp,132
 4d8:	8df80004 	lw	t8,4(t7)
 4dc:	add90000 	sw	t9,0(t6)
 4e0:	8df90008 	lw	t9,8(t7)
 4e4:	3c0b0000 	lui	t3,0x0
 4e8:	256b0098 	addiu	t3,t3,152
 4ec:	add80004 	sw	t8,4(t6)
 4f0:	add90008 	sw	t9,8(t6)
 4f4:	8d6d0000 	lw	t5,0(t3)
 4f8:	27aa0078 	addiu	t2,sp,120
 4fc:	8d6c0004 	lw	t4,4(t3)
 500:	ad4d0000 	sw	t5,0(t2)
 504:	8d6d0008 	lw	t5,8(t3)
 508:	3c0f0000 	lui	t7,0x0
 50c:	25ef00a4 	addiu	t7,t7,164
 510:	ad4c0004 	sw	t4,4(t2)
 514:	ad4d0008 	sw	t5,8(t2)
 518:	8df90000 	lw	t9,0(t7)
 51c:	27ae006c 	addiu	t6,sp,108
 520:	8df80004 	lw	t8,4(t7)
 524:	add90000 	sw	t9,0(t6)
 528:	8df90008 	lw	t9,8(t7)
 52c:	3c0b0000 	lui	t3,0x0
 530:	256b00b0 	addiu	t3,t3,176
 534:	add80004 	sw	t8,4(t6)
 538:	add90008 	sw	t9,8(t6)
 53c:	8d6d0000 	lw	t5,0(t3)
 540:	27aa0054 	addiu	t2,sp,84
 544:	8d6c0004 	lw	t4,4(t3)
 548:	ad4d0000 	sw	t5,0(t2)
 54c:	8d6d0008 	lw	t5,8(t3)
 550:	3c0e0000 	lui	t6,0x0
 554:	ad4c0004 	sw	t4,4(t2)
 558:	ad4d0008 	sw	t5,8(t2)
 55c:	8dce00bc 	lw	t6,188(t6)
 560:	3c010000 	lui	at,0x0
 564:	c4240048 	lwc1	$f4,72(at)
 568:	afae0050 	sw	t6,80(sp)
 56c:	848201f8 	lh	v0,504(a0)
 570:	00808025 	move	s0,a0
 574:	24010043 	li	at,67
 578:	10400004 	beqz	v0,58c <EnBom_Update+0xd4>
 57c:	e484006c 	swc1	$f4,108(a0)
 580:	244fffff 	addiu	t7,v0,-1
 584:	a48f01f8 	sh	t7,504(a0)
 588:	848201f8 	lh	v0,504(a0)
 58c:	14410007 	bne	v0,at,5ac <EnBom_Update+0xf4>
 590:	02002025 	move	a0,s0
 594:	0c000000 	jal	0 <EnBom_SetupAction>
 598:	24050834 	li	a1,2100
 59c:	3c053c23 	lui	a1,0x3c23
 5a0:	34a5d70a 	ori	a1,a1,0xd70a
 5a4:	0c000000 	jal	0 <EnBom_SetupAction>
 5a8:	02002025 	move	a0,s0
 5ac:	3c0141a0 	lui	at,0x41a0
 5b0:	44814000 	mtc1	at,$f8
 5b4:	c6060090 	lwc1	$f6,144(s0)
 5b8:	3c0142a0 	lui	at,0x42a0
 5bc:	24180001 	li	t8,1
 5c0:	4606403e 	c.le.s	$f8,$f6
 5c4:	00000000 	nop
 5c8:	45030010 	bc1tl	60c <EnBom_Update+0x154>
 5cc:	a2180200 	sb	t8,512(s0)
 5d0:	c6000094 	lwc1	$f0,148(s0)
 5d4:	44805000 	mtc1	zero,$f10
 5d8:	44818000 	mtc1	at,$f16
 5dc:	4600503e 	c.le.s	$f10,$f0
 5e0:	00000000 	nop
 5e4:	45020004 	bc1fl	5f8 <EnBom_Update+0x140>
 5e8:	46000087 	neg.s	$f2,$f0
 5ec:	10000002 	b	5f8 <EnBom_Update+0x140>
 5f0:	46000086 	mov.s	$f2,$f0
 5f4:	46000087 	neg.s	$f2,$f0
 5f8:	4602803e 	c.le.s	$f16,$f2
 5fc:	00000000 	nop
 600:	45020003 	bc1fl	610 <EnBom_Update+0x158>
 604:	8e190204 	lw	t9,516(s0)
 608:	a2180200 	sb	t8,512(s0)
 60c:	8e190204 	lw	t9,516(s0)
 610:	02002025 	move	a0,s0
 614:	8fa50094 	lw	a1,148(sp)
 618:	0320f809 	jalr	t9
 61c:	00000000 	nop
 620:	3c014170 	lui	at,0x4170
 624:	44819000 	mtc1	at,$f18
 628:	240a001f 	li	t2,31
 62c:	afaa0014 	sw	t2,20(sp)
 630:	8fa40094 	lw	a0,148(sp)
 634:	02002825 	move	a1,s0
 638:	3c0640a0 	lui	a2,0x40a0
 63c:	3c074120 	lui	a3,0x4120
 640:	0c000000 	jal	0 <EnBom_SetupAction>
 644:	e7b20010 	swc1	$f18,16(sp)
 648:	860b001c 	lh	t3,28(s0)
 64c:	556000f9 	bnezl	t3,a34 <EnBom_Update+0x57c>
 650:	02002025 	move	a0,s0
 654:	860c01f8 	lh	t4,504(s0)
 658:	2981003f 	slti	at,t4,63
 65c:	10200031 	beqz	at,724 <EnBom_Update+0x26c>
 660:	3c010000 	lui	at,0x0
 664:	c424004c 	lwc1	$f4,76(at)
 668:	27ad0060 	addiu	t5,sp,96
 66c:	3c014188 	lui	at,0x4188
 670:	e7a40058 	swc1	$f4,88(sp)
 674:	8e0f0024 	lw	t7,36(s0)
 678:	44814000 	mtc1	at,$f8
 67c:	3c190001 	lui	t9,0x1
 680:	adaf0000 	sw	t7,0(t5)
 684:	8e0e0028 	lw	t6,40(s0)
 688:	02002825 	move	a1,s0
 68c:	27a60060 	addiu	a2,sp,96
 690:	adae0004 	sw	t6,4(t5)
 694:	8e0f002c 	lw	t7,44(s0)
 698:	27a70084 	addiu	a3,sp,132
 69c:	27ab006c 	addiu	t3,sp,108
 6a0:	adaf0008 	sw	t7,8(t5)
 6a4:	c7a60064 	lwc1	$f6,100(sp)
 6a8:	8fb80094 	lw	t8,148(sp)
 6ac:	46083280 	add.s	$f10,$f6,$f8
 6b0:	0338c821 	addu	t9,t9,t8
 6b4:	03002025 	move	a0,t8
 6b8:	e7aa0064 	swc1	$f10,100(sp)
 6bc:	8f391de4 	lw	t9,7652(t9)
 6c0:	332a0001 	andi	t2,t9,0x1
 6c4:	55400004 	bnezl	t2,6d8 <EnBom_Update+0x220>
 6c8:	02002025 	move	a0,s0
 6cc:	0c000000 	jal	0 <EnBom_SetupAction>
 6d0:	afab0010 	sw	t3,16(sp)
 6d4:	02002025 	move	a0,s0
 6d8:	0c000000 	jal	0 <EnBom_SetupAction>
 6dc:	2405100d 	li	a1,4109
 6e0:	3c014040 	lui	at,0x4040
 6e4:	44819000 	mtc1	at,$f18
 6e8:	c7b00064 	lwc1	$f16,100(sp)
 6ec:	27ac0050 	addiu	t4,sp,80
 6f0:	240d0032 	li	t5,50
 6f4:	46128100 	add.s	$f4,$f16,$f18
 6f8:	240e0005 	li	t6,5
 6fc:	afae001c 	sw	t6,28(sp)
 700:	afad0018 	sw	t5,24(sp)
 704:	e7a40064 	swc1	$f4,100(sp)
 708:	afac0010 	sw	t4,16(sp)
 70c:	afac0014 	sw	t4,20(sp)
 710:	8fa40094 	lw	a0,148(sp)
 714:	27a50060 	addiu	a1,sp,96
 718:	27a60084 	addiu	a2,sp,132
 71c:	0c000000 	jal	0 <EnBom_SetupAction>
 720:	27a70054 	addiu	a3,sp,84
 724:	260f0024 	addiu	t7,s0,36
 728:	afaf0034 	sw	t7,52(sp)
 72c:	9219015d 	lbu	t9,349(s0)
 730:	332a0002 	andi	t2,t9,0x2
 734:	5540000b 	bnezl	t2,764 <EnBom_Update+0x2ac>
 738:	a60001f8 	sh	zero,504(s0)
 73c:	9218015e 	lbu	t8,350(s0)
 740:	330b0002 	andi	t3,t8,0x2
 744:	5160000a 	beqzl	t3,770 <EnBom_Update+0x2b8>
 748:	860e01f8 	lh	t6,504(s0)
 74c:	8e0c0158 	lw	t4,344(s0)
 750:	24010005 	li	at,5
 754:	918d0002 	lbu	t5,2(t4)
 758:	55a10005 	bnel	t5,at,770 <EnBom_Update+0x2b8>
 75c:	860e01f8 	lh	t6,504(s0)
 760:	a60001f8 	sh	zero,504(s0)
 764:	1000000c 	b	798 <EnBom_Update+0x2e0>
 768:	a60000b8 	sh	zero,184(s0)
 76c:	860e01f8 	lh	t6,504(s0)
 770:	8fa40094 	lw	a0,148(sp)
 774:	8fa50034 	lw	a1,52(sp)
 778:	29c10065 	slti	at,t6,101
 77c:	14200006 	bnez	at,798 <EnBom_Update+0x2e0>
 780:	3c0641f0 	lui	a2,0x41f0
 784:	0c000000 	jal	0 <EnBom_SetupAction>
 788:	3c074248 	lui	a3,0x4248
 78c:	10400002 	beqz	v0,798 <EnBom_Update+0x2e0>
 790:	240f0064 	li	t7,100
 794:	a60f01f8 	sh	t7,504(s0)
 798:	3c010000 	lui	at,0x0
 79c:	c4260050 	lwc1	$f6,80(at)
 7a0:	8faa0034 	lw	t2,52(sp)
 7a4:	27b90060 	addiu	t9,sp,96
 7a8:	e7a60058 	swc1	$f6,88(sp)
 7ac:	8d4b0000 	lw	t3,0(t2)
 7b0:	3c014120 	lui	at,0x4120
 7b4:	44815000 	mtc1	at,$f10
 7b8:	af2b0000 	sw	t3,0(t9)
 7bc:	8d580004 	lw	t8,4(t2)
 7c0:	24010003 	li	at,3
 7c4:	af380004 	sw	t8,4(t9)
 7c8:	8d4b0008 	lw	t3,8(t2)
 7cc:	af2b0008 	sw	t3,8(t9)
 7d0:	c7a80064 	lwc1	$f8,100(sp)
 7d4:	460a4400 	add.s	$f16,$f8,$f10
 7d8:	e7b00064 	swc1	$f16,100(sp)
 7dc:	860201f8 	lh	v0,504(s0)
 7e0:	10410005 	beq	v0,at,7f8 <EnBom_Update+0x340>
 7e4:	24010014 	li	at,20
 7e8:	10410003 	beq	v0,at,7f8 <EnBom_Update+0x340>
 7ec:	24010028 	li	at,40
 7f0:	54410007 	bnel	v0,at,810 <EnBom_Update+0x358>
 7f4:	28410064 	slti	at,v0,100
 7f8:	860c01fa 	lh	t4,506(s0)
 7fc:	a60000b8 	sh	zero,184(s0)
 800:	860201f8 	lh	v0,504(s0)
 804:	000c6843 	sra	t5,t4,0x1
 808:	a60d01fa 	sh	t5,506(s0)
 80c:	28410064 	slti	at,v0,100
 810:	50200016 	beqzl	at,86c <EnBom_Update+0x3b4>
 814:	861901fa 	lh	t9,506(s0)
 818:	860301fa 	lh	v1,506(s0)
 81c:	246e0001 	addiu	t6,v1,1
 820:	004e7824 	and	t7,v0,t6
 824:	51e00011 	beqzl	t7,86c <EnBom_Update+0x3b4>
 828:	861901fa 	lh	t9,506(s0)
 82c:	44839000 	mtc1	v1,$f18
 830:	3c01430c 	lui	at,0x430c
 834:	44810000 	mtc1	at,$f0
 838:	46809120 	cvt.s.w	$f4,$f18
 83c:	44801000 	mtc1	zero,$f2
 840:	44050000 	mfc1	a1,$f0
 844:	260401fc 	addiu	a0,s0,508
 848:	3c063f80 	lui	a2,0x3f80
 84c:	e7a20010 	swc1	$f2,16(sp)
 850:	46040183 	div.s	$f6,$f0,$f4
 854:	44073000 	mfc1	a3,$f6
 858:	0c000000 	jal	0 <EnBom_SetupAction>
 85c:	00000000 	nop
 860:	10000010 	b	8a4 <EnBom_Update+0x3ec>
 864:	860201f8 	lh	v0,504(s0)
 868:	861901fa 	lh	t9,506(s0)
 86c:	3c01430c 	lui	at,0x430c
 870:	44810000 	mtc1	at,$f0
 874:	44994000 	mtc1	t9,$f8
 878:	44801000 	mtc1	zero,$f2
 87c:	260401fc 	addiu	a0,s0,508
 880:	468042a0 	cvt.s.w	$f10,$f8
 884:	44051000 	mfc1	a1,$f2
 888:	3c063f80 	lui	a2,0x3f80
 88c:	e7a20010 	swc1	$f2,16(sp)
 890:	460a0403 	div.s	$f16,$f0,$f10
 894:	44078000 	mfc1	a3,$f16
 898:	0c000000 	jal	0 <EnBom_SetupAction>
 89c:	00000000 	nop
 8a0:	860201f8 	lh	v0,504(s0)
 8a4:	28410003 	slti	at,v0,3
 8a8:	10200009 	beqz	at,8d0 <EnBom_Update+0x418>
 8ac:	3c010000 	lui	at,0x0
 8b0:	c4240054 	lwc1	$f4,84(at)
 8b4:	c6120050 	lwc1	$f18,80(s0)
 8b8:	02002025 	move	a0,s0
 8bc:	46049180 	add.s	$f6,$f18,$f4
 8c0:	44053000 	mfc1	a1,$f6
 8c4:	0c000000 	jal	0 <EnBom_SetupAction>
 8c8:	00000000 	nop
 8cc:	860201f8 	lh	v0,504(s0)
 8d0:	14400057 	bnez	v0,a30 <EnBom_Update+0x578>
 8d4:	8fb80034 	lw	t8,52(sp)
 8d8:	8f0c0000 	lw	t4,0(t8)
 8dc:	8fa50094 	lw	a1,148(sp)
 8e0:	27aa0060 	addiu	t2,sp,96
 8e4:	ad4c0000 	sw	t4,0(t2)
 8e8:	8f0b0004 	lw	t3,4(t8)
 8ec:	3c014120 	lui	at,0x4120
 8f0:	44815000 	mtc1	at,$f10
 8f4:	ad4b0004 	sw	t3,4(t2)
 8f8:	8f0c0008 	lw	t4,8(t8)
 8fc:	3c010001 	lui	at,0x1
 900:	00a11821 	addu	v1,a1,at
 904:	ad4c0008 	sw	t4,8(t2)
 908:	c7a80064 	lwc1	$f8,100(sp)
 90c:	afa30038 	sw	v1,56(sp)
 910:	02002025 	move	a0,s0
 914:	460a4400 	add.s	$f16,$f8,$f10
 918:	0c000000 	jal	0 <EnBom_SetupAction>
 91c:	e7b00064 	swc1	$f16,100(sp)
 920:	10400006 	beqz	v0,93c <EnBom_Update+0x484>
 924:	8fa30038 	lw	v1,56(sp)
 928:	3c0141f0 	lui	at,0x41f0
 92c:	44812000 	mtc1	at,$f4
 930:	c7b20064 	lwc1	$f18,100(sp)
 934:	46049180 	add.s	$f6,$f18,$f4
 938:	e7a60064 	swc1	$f6,100(sp)
 93c:	240d0064 	li	t5,100
 940:	afad0010 	sw	t5,16(sp)
 944:	860e00b8 	lh	t6,184(s0)
 948:	afa30038 	sw	v1,56(sp)
 94c:	8fa40094 	lw	a0,148(sp)
 950:	000e7880 	sll	t7,t6,0x2
 954:	01ee7823 	subu	t7,t7,t6
 958:	000f7840 	sll	t7,t7,0x1
 95c:	25f90013 	addiu	t9,t7,19
 960:	afb90014 	sw	t9,20(sp)
 964:	27a50060 	addiu	a1,sp,96
 968:	27a60084 	addiu	a2,sp,132
 96c:	0c000000 	jal	0 <EnBom_SetupAction>
 970:	27a70078 	addiu	a3,sp,120
 974:	c6080080 	lwc1	$f8,128(s0)
 978:	3c01c6fa 	lui	at,0xc6fa
 97c:	44815000 	mtc1	at,$f10
 980:	e7a80064 	swc1	$f8,100(sp)
 984:	c6100080 	lwc1	$f16,128(s0)
 988:	8fa30038 	lw	v1,56(sp)
 98c:	8fa40094 	lw	a0,148(sp)
 990:	4610503c 	c.lt.s	$f10,$f16
 994:	27a50060 	addiu	a1,sp,96
 998:	27a60084 	addiu	a2,sp,132
 99c:	27a7006c 	addiu	a3,sp,108
 9a0:	45020005 	bc1fl	9b8 <EnBom_Update+0x500>
 9a4:	02002025 	move	a0,s0
 9a8:	0c000000 	jal	0 <EnBom_SetupAction>
 9ac:	afa30038 	sw	v1,56(sp)
 9b0:	8fa30038 	lw	v1,56(sp)
 9b4:	02002025 	move	a0,s0
 9b8:	2405180e 	li	a1,6158
 9bc:	0c000000 	jal	0 <EnBom_SetupAction>
 9c0:	afa30038 	sw	v1,56(sp)
 9c4:	8fa30038 	lw	v1,56(sp)
 9c8:	8fa90094 	lw	t1,148(sp)
 9cc:	240800fa 	li	t0,250
 9d0:	a4680aba 	sh	t0,2746(v1)
 9d4:	84620aba 	lh	v0,2746(v1)
 9d8:	a4680ab4 	sh	t0,2740(v1)
 9dc:	24050002 	li	a1,2
 9e0:	a4620ab8 	sh	v0,2744(v1)
 9e4:	a4620ab6 	sh	v0,2742(v1)
 9e8:	84620ab4 	lh	v0,2740(v1)
 9ec:	2406000b 	li	a2,11
 9f0:	24070008 	li	a3,8
 9f4:	252401e0 	addiu	a0,t1,480
 9f8:	a4620ab2 	sh	v0,2738(v1)
 9fc:	0c000000 	jal	0 <EnBom_SetupAction>
 a00:	a4620ab0 	sh	v0,2736(v1)
 a04:	8e0b0004 	lw	t3,4(s0)
 a08:	240a0001 	li	t2,1
 a0c:	2418000a 	li	t8,10
 a10:	3c050000 	lui	a1,0x0
 a14:	356c0020 	ori	t4,t3,0x20
 a18:	a60a001c 	sh	t2,28(s0)
 a1c:	a61801f8 	sh	t8,504(s0)
 a20:	ae0c0004 	sw	t4,4(s0)
 a24:	24a50000 	addiu	a1,a1,0
 a28:	0c000000 	jal	0 <EnBom_SetupAction>
 a2c:	02002025 	move	a0,s0
 a30:	02002025 	move	a0,s0
 a34:	0c000000 	jal	0 <EnBom_SetupAction>
 a38:	3c0541a0 	lui	a1,0x41a0
 a3c:	860d001c 	lh	t5,28(s0)
 a40:	02002025 	move	a0,s0
 a44:	2605014c 	addiu	a1,s0,332
 a48:	1da00016 	bgtz	t5,aa4 <EnBom_Update+0x5ec>
 a4c:	00000000 	nop
 a50:	0c000000 	jal	0 <EnBom_SetupAction>
 a54:	afa50038 	sw	a1,56(sp)
 a58:	02002025 	move	a0,s0
 a5c:	0c000000 	jal	0 <EnBom_SetupAction>
 a60:	8fa50094 	lw	a1,148(sp)
 a64:	5440000a 	bnezl	v0,a90 <EnBom_Update+0x5d8>
 a68:	8fa40094 	lw	a0,148(sp)
 a6c:	920e0200 	lbu	t6,512(s0)
 a70:	3c010001 	lui	at,0x1
 a74:	34211e60 	ori	at,at,0x1e60
 a78:	11c00004 	beqz	t6,a8c <EnBom_Update+0x5d4>
 a7c:	8fa40094 	lw	a0,148(sp)
 a80:	00812821 	addu	a1,a0,at
 a84:	0c000000 	jal	0 <EnBom_SetupAction>
 a88:	8fa60038 	lw	a2,56(sp)
 a8c:	8fa40094 	lw	a0,148(sp)
 a90:	3c010001 	lui	at,0x1
 a94:	34211e60 	ori	at,at,0x1e60
 a98:	8fa60038 	lw	a2,56(sp)
 a9c:	0c000000 	jal	0 <EnBom_SetupAction>
 aa0:	00812821 	addu	a1,a0,at
 aa4:	3c010000 	lui	at,0x0
 aa8:	c4240058 	lwc1	$f4,88(at)
 aac:	c6120050 	lwc1	$f18,80(s0)
 ab0:	4612203e 	c.le.s	$f4,$f18
 ab4:	00000000 	nop
 ab8:	4502001f 	bc1fl	b38 <EnBom_Update+0x680>
 abc:	8fbf002c 	lw	ra,44(sp)
 ac0:	860a001c 	lh	t2,28(s0)
 ac4:	24010001 	li	at,1
 ac8:	1141001a 	beq	t2,at,b34 <EnBom_Update+0x67c>
 acc:	3c0141a0 	lui	at,0x41a0
 ad0:	44814000 	mtc1	at,$f8
 ad4:	c6060084 	lwc1	$f6,132(s0)
 ad8:	8fa40094 	lw	a0,148(sp)
 adc:	260500e4 	addiu	a1,s0,228
 ae0:	4606403e 	c.le.s	$f8,$f6
 ae4:	2406180f 	li	a2,6159
 ae8:	24070001 	li	a3,1
 aec:	24180001 	li	t8,1
 af0:	45000008 	bc1f	b14 <EnBom_Update+0x65c>
 af4:	240b000a 	li	t3,10
 af8:	afb80010 	sw	t8,16(sp)
 afc:	0c000000 	jal	0 <EnBom_SetupAction>
 b00:	afab0014 	sw	t3,20(sp)
 b04:	0c000000 	jal	0 <EnBom_SetupAction>
 b08:	02002025 	move	a0,s0
 b0c:	1000000a 	b	b38 <EnBom_Update+0x680>
 b10:	8fbf002c 	lw	ra,44(sp)
 b14:	96020088 	lhu	v0,136(s0)
 b18:	02002025 	move	a0,s0
 b1c:	24052817 	li	a1,10263
 b20:	304c0040 	andi	t4,v0,0x40
 b24:	11800003 	beqz	t4,b34 <EnBom_Update+0x67c>
 b28:	304dffbf 	andi	t5,v0,0xffbf
 b2c:	0c000000 	jal	0 <EnBom_SetupAction>
 b30:	a60d0088 	sh	t5,136(s0)
 b34:	8fbf002c 	lw	ra,44(sp)
 b38:	8fb00028 	lw	s0,40(sp)
 b3c:	27bd0090 	addiu	sp,sp,144
 b40:	03e00008 	jr	ra
 b44:	00000000 	nop

00000b48 <EnBom_Draw>:
 b48:	27bdffa0 	addiu	sp,sp,-96
 b4c:	afbf001c 	sw	ra,28(sp)
 b50:	afb00018 	sw	s0,24(sp)
 b54:	afa40060 	sw	a0,96(sp)
 b58:	afa50064 	sw	a1,100(sp)
 b5c:	8ca50000 	lw	a1,0(a1)
 b60:	3c060000 	lui	a2,0x0
 b64:	24c60000 	addiu	a2,a2,0
 b68:	27a40044 	addiu	a0,sp,68
 b6c:	24070391 	li	a3,913
 b70:	0c000000 	jal	0 <EnBom_SetupAction>
 b74:	00a08025 	move	s0,a1
 b78:	8faf0060 	lw	t7,96(sp)
 b7c:	8fb90064 	lw	t9,100(sp)
 b80:	85f8001c 	lh	t8,28(t7)
 b84:	57000062 	bnezl	t8,d10 <EnBom_Draw+0x1c8>
 b88:	8fac0064 	lw	t4,100(sp)
 b8c:	0c000000 	jal	0 <EnBom_SetupAction>
 b90:	8f240000 	lw	a0,0(t9)
 b94:	8fa40064 	lw	a0,100(sp)
 b98:	3c010001 	lui	at,0x1
 b9c:	34211da0 	ori	at,at,0x1da0
 ba0:	0c000000 	jal	0 <EnBom_SetupAction>
 ba4:	00812021 	addu	a0,a0,at
 ba8:	8fa40060 	lw	a0,96(sp)
 bac:	8fa50064 	lw	a1,100(sp)
 bb0:	0c000000 	jal	0 <EnBom_SetupAction>
 bb4:	00003025 	move	a2,zero
 bb8:	8e0202c0 	lw	v0,704(s0)
 bbc:	3c09da38 	lui	t1,0xda38
 bc0:	35290003 	ori	t1,t1,0x3
 bc4:	24480008 	addiu	t0,v0,8
 bc8:	ae0802c0 	sw	t0,704(s0)
 bcc:	ac490000 	sw	t1,0(v0)
 bd0:	8faa0064 	lw	t2,100(sp)
 bd4:	3c050000 	lui	a1,0x0
 bd8:	24a50010 	addiu	a1,a1,16
 bdc:	8d440000 	lw	a0,0(t2)
 be0:	240603a0 	li	a2,928
 be4:	0c000000 	jal	0 <EnBom_SetupAction>
 be8:	afa20040 	sw	v0,64(sp)
 bec:	8fa30040 	lw	v1,64(sp)
 bf0:	3c0d0000 	lui	t5,0x0
 bf4:	25ad0000 	addiu	t5,t5,0
 bf8:	ac620004 	sw	v0,4(v1)
 bfc:	8e0202c0 	lw	v0,704(s0)
 c00:	3c0cde00 	lui	t4,0xde00
 c04:	24044000 	li	a0,16384
 c08:	244b0008 	addiu	t3,v0,8
 c0c:	ae0b02c0 	sw	t3,704(s0)
 c10:	00002825 	move	a1,zero
 c14:	00003025 	move	a2,zero
 c18:	24070001 	li	a3,1
 c1c:	ac4d0004 	sw	t5,4(v0)
 c20:	0c000000 	jal	0 <EnBom_SetupAction>
 c24:	ac4c0000 	sw	t4,0(v0)
 c28:	8e0202c0 	lw	v0,704(s0)
 c2c:	3c0fda38 	lui	t7,0xda38
 c30:	35ef0003 	ori	t7,t7,0x3
 c34:	244e0008 	addiu	t6,v0,8
 c38:	ae0e02c0 	sw	t6,704(s0)
 c3c:	ac4f0000 	sw	t7,0(v0)
 c40:	8fb80064 	lw	t8,100(sp)
 c44:	3c050000 	lui	a1,0x0
 c48:	24a50020 	addiu	a1,a1,32
 c4c:	8f040000 	lw	a0,0(t8)
 c50:	240603a6 	li	a2,934
 c54:	0c000000 	jal	0 <EnBom_SetupAction>
 c58:	afa20038 	sw	v0,56(sp)
 c5c:	8fa30038 	lw	v1,56(sp)
 c60:	3c08e700 	lui	t0,0xe700
 c64:	3c0afb00 	lui	t2,0xfb00
 c68:	ac620004 	sw	v0,4(v1)
 c6c:	8e0202c0 	lw	v0,704(s0)
 c70:	3c0b0000 	lui	t3,0x0
 c74:	256b0000 	addiu	t3,t3,0
 c78:	24590008 	addiu	t9,v0,8
 c7c:	ae1902c0 	sw	t9,704(s0)
 c80:	ac400004 	sw	zero,4(v0)
 c84:	ac480000 	sw	t0,0(v0)
 c88:	8e0202c0 	lw	v0,704(s0)
 c8c:	8fa60060 	lw	a2,96(sp)
 c90:	00002025 	move	a0,zero
 c94:	24490008 	addiu	t1,v0,8
 c98:	ae0902c0 	sw	t1,704(s0)
 c9c:	ac4a0000 	sw	t2,0(v0)
 ca0:	c4c401fc 	lwc1	$f4,508(a2)
 ca4:	3c0afa00 	lui	t2,0xfa00
 ca8:	24c50198 	addiu	a1,a2,408
 cac:	4600218d 	trunc.w.s	$f6,$f4
 cb0:	440f3000 	mfc1	t7,$f6
 cb4:	00000000 	nop
 cb8:	000fce00 	sll	t9,t7,0x18
 cbc:	372828ff 	ori	t0,t9,0x28ff
 cc0:	ac480004 	sw	t0,4(v0)
 cc4:	8e0202c0 	lw	v0,704(s0)
 cc8:	24490008 	addiu	t1,v0,8
 ccc:	ae0902c0 	sw	t1,704(s0)
 cd0:	ac4a0000 	sw	t2,0(v0)
 cd4:	c4c801fc 	lwc1	$f8,508(a2)
 cd8:	3c0ade00 	lui	t2,0xde00
 cdc:	4600428d 	trunc.w.s	$f10,$f8
 ce0:	440f5000 	mfc1	t7,$f10
 ce4:	00000000 	nop
 ce8:	000fce00 	sll	t9,t7,0x18
 cec:	372828ff 	ori	t0,t9,0x28ff
 cf0:	ac480004 	sw	t0,4(v0)
 cf4:	8e0202c0 	lw	v0,704(s0)
 cf8:	24490008 	addiu	t1,v0,8
 cfc:	ae0902c0 	sw	t1,704(s0)
 d00:	ac4b0004 	sw	t3,4(v0)
 d04:	0c000000 	jal	0 <EnBom_SetupAction>
 d08:	ac4a0000 	sw	t2,0(v0)
 d0c:	8fac0064 	lw	t4,100(sp)
 d10:	3c060000 	lui	a2,0x0
 d14:	24c60030 	addiu	a2,a2,48
 d18:	27a40044 	addiu	a0,sp,68
 d1c:	240703b7 	li	a3,951
 d20:	0c000000 	jal	0 <EnBom_SetupAction>
 d24:	8d850000 	lw	a1,0(t4)
 d28:	8fbf001c 	lw	ra,28(sp)
 d2c:	8fb00018 	lw	s0,24(sp)
 d30:	27bd0060 	addiu	sp,sp,96
 d34:	03e00008 	jr	ra
 d38:	00000000 	nop
 d3c:	00000000 	nop
