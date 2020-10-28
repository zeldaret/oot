
build/src/overlays/actors/ovl_Bg_Treemouth/z_bg_treemouth.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgTreemouth_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85016c 	sw	a1,364(a0)

00000008 <BgTreemouth_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afa50034 	sw	a1,52(sp)
  10:	afbf001c 	sw	ra,28(sp)
  14:	afb00018 	sw	s0,24(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	afa00024 	sw	zero,36(sp)
  24:	0c000000 	jal	0 <BgTreemouth_SetupAction>
  28:	24a50b90 	addiu	a1,a1,2960
  2c:	02002025 	move	a0,s0
  30:	0c000000 	jal	0 <BgTreemouth_SetupAction>
  34:	00002825 	move	a1,zero
  38:	3c040000 	lui	a0,0x0
  3c:	24840000 	addiu	a0,a0,0
  40:	0c000000 	jal	0 <BgTreemouth_SetupAction>
  44:	27a50024 	addiu	a1,sp,36
  48:	8fa40034 	lw	a0,52(sp)
  4c:	02003025 	move	a2,s0
  50:	8fa70024 	lw	a3,36(sp)
  54:	0c000000 	jal	0 <BgTreemouth_SetupAction>
  58:	24850810 	addiu	a1,a0,2064
  5c:	44800000 	mtc1	zero,$f0
  60:	ae02014c 	sw	v0,332(s0)
  64:	260400b4 	addiu	a0,s0,180
  68:	44050000 	mfc1	a1,$f0
  6c:	44070000 	mfc1	a3,$f0
  70:	0c000000 	jal	0 <BgTreemouth_SetupAction>
  74:	00003025 	move	a2,zero
  78:	02002025 	move	a0,s0
  7c:	0c000000 	jal	0 <BgTreemouth_SetupAction>
  80:	3c054248 	lui	a1,0x4248
  84:	3c030000 	lui	v1,0x0
  88:	24630000 	addiu	v1,v1,0
  8c:	8c621360 	lw	v0,4960(v1)
  90:	28410004 	slti	at,v0,4
  94:	5020000b 	beqzl	at,c4 <BgTreemouth_Init+0xbc>
  98:	8c6f0004 	lw	t7,4(v1)
  9c:	8c6e0004 	lw	t6,4(v1)
  a0:	02002025 	move	a0,s0
  a4:	3c050000 	lui	a1,0x0
  a8:	51c00006 	beqzl	t6,c4 <BgTreemouth_Init+0xbc>
  ac:	8c6f0004 	lw	t7,4(v1)
  b0:	0c000000 	jal	0 <BgTreemouth_SetupAction>
  b4:	24a50000 	addiu	a1,a1,0
  b8:	10000016 	b	114 <BgTreemouth_Init+0x10c>
  bc:	24180905 	li	t8,2309
  c0:	8c6f0004 	lw	t7,4(v1)
  c4:	24010007 	li	at,7
  c8:	02002025 	move	a0,s0
  cc:	11e00003 	beqz	t7,dc <BgTreemouth_Init+0xd4>
  d0:	3c050000 	lui	a1,0x0
  d4:	54410008 	bnel	v0,at,f8 <BgTreemouth_Init+0xf0>
  d8:	3c013f80 	lui	at,0x3f80
  dc:	44802000 	mtc1	zero,$f4
  e0:	24a50000 	addiu	a1,a1,0
  e4:	0c000000 	jal	0 <BgTreemouth_SetupAction>
  e8:	e6040168 	swc1	$f4,360(s0)
  ec:	10000009 	b	114 <BgTreemouth_Init+0x10c>
  f0:	24180905 	li	t8,2309
  f4:	3c013f80 	lui	at,0x3f80
  f8:	44813000 	mtc1	at,$f6
  fc:	3c050000 	lui	a1,0x0
 100:	24a50000 	addiu	a1,a1,0
 104:	02002025 	move	a0,s0
 108:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 10c:	e6060168 	swc1	$f6,360(s0)
 110:	24180905 	li	t8,2309
 114:	a618010e 	sh	t8,270(s0)
 118:	8fbf001c 	lw	ra,28(sp)
 11c:	8fb00018 	lw	s0,24(sp)
 120:	27bd0030 	addiu	sp,sp,48
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <BgTreemouth_Destroy>:
 12c:	27bdffe8 	addiu	sp,sp,-24
 130:	afa40018 	sw	a0,24(sp)
 134:	8fae0018 	lw	t6,24(sp)
 138:	afbf0014 	sw	ra,20(sp)
 13c:	00a02025 	move	a0,a1
 140:	24a50810 	addiu	a1,a1,2064
 144:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 148:	8dc6014c 	lw	a2,332(t6)
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	27bd0018 	addiu	sp,sp,24
 154:	03e00008 	jr	ra
 158:	00000000 	nop

0000015c <func_808BC65C>:
 15c:	27bdffe0 	addiu	sp,sp,-32
 160:	afbf001c 	sw	ra,28(sp)
 164:	afa40020 	sw	a0,32(sp)
 168:	90ae1d6c 	lbu	t6,7532(a1)
 16c:	51c0001f 	beqzl	t6,1ec <func_808BC65C+0x90>
 170:	8fbf001c 	lw	ra,28(sp)
 174:	8ca21d8c 	lw	v0,7564(a1)
 178:	5040001c 	beqzl	v0,1ec <func_808BC65C+0x90>
 17c:	8fbf001c 	lw	ra,28(sp)
 180:	94430000 	lhu	v1,0(v0)
 184:	24010002 	li	at,2
 188:	3c050000 	lui	a1,0x0
 18c:	54610006 	bnel	v1,at,1a8 <func_808BC65C+0x4c>
 190:	24010003 	li	at,3
 194:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 198:	24a50000 	addiu	a1,a1,0
 19c:	10000013 	b	1ec <func_808BC65C+0x90>
 1a0:	8fbf001c 	lw	ra,28(sp)
 1a4:	24010003 	li	at,3
 1a8:	1461000f 	bne	v1,at,1e8 <func_808BC65C+0x8c>
 1ac:	3c070000 	lui	a3,0x0
 1b0:	3c0f0000 	lui	t7,0x0
 1b4:	24e70000 	addiu	a3,a3,0
 1b8:	25ef0000 	addiu	t7,t7,0
 1bc:	3c050000 	lui	a1,0x0
 1c0:	24a50000 	addiu	a1,a1,0
 1c4:	afaf0014 	sw	t7,20(sp)
 1c8:	afa70010 	sw	a3,16(sp)
 1cc:	24042866 	li	a0,10342
 1d0:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 1d4:	24060004 	li	a2,4
 1d8:	3c050000 	lui	a1,0x0
 1dc:	24a50000 	addiu	a1,a1,0
 1e0:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 1e4:	8fa40020 	lw	a0,32(sp)
 1e8:	8fbf001c 	lw	ra,28(sp)
 1ec:	27bd0020 	addiu	sp,sp,32
 1f0:	03e00008 	jr	ra
 1f4:	00000000 	nop

000001f8 <func_808BC6F8>:
 1f8:	27bdffc0 	addiu	sp,sp,-64
 1fc:	afbf002c 	sw	ra,44(sp)
 200:	3c013f80 	lui	at,0x3f80
 204:	44811000 	mtc1	at,$f2
 208:	c4800168 	lwc1	$f0,360(a0)
 20c:	3c010000 	lui	at,0x0
 210:	3c0e0000 	lui	t6,0x0
 214:	4602003c 	c.lt.s	$f0,$f2
 218:	00000000 	nop
 21c:	45020006 	bc1fl	238 <func_808BC6F8+0x40>
 220:	e4820168 	swc1	$f2,360(a0)
 224:	c424003c 	lwc1	$f4,60(at)
 228:	46040180 	add.s	$f6,$f0,$f4
 22c:	10000002 	b	238 <func_808BC6F8+0x40>
 230:	e4860168 	swc1	$f6,360(a0)
 234:	e4820168 	swc1	$f2,360(a0)
 238:	8dce1360 	lw	t6,4960(t6)
 23c:	24010006 	li	at,6
 240:	55c1002f 	bnel	t6,at,300 <func_808BC6F8+0x108>
 244:	8fbf002c 	lw	ra,44(sp)
 248:	94af1d74 	lhu	t7,7540(a1)
 24c:	29e102bd 	slti	at,t7,701
 250:	5420002b 	bnezl	at,300 <func_808BC6F8+0x108>
 254:	8fbf002c 	lw	ra,44(sp)
 258:	8cb8009c 	lw	t8,156(a1)
 25c:	33190007 	andi	t9,t8,0x7
 260:	57200027 	bnezl	t9,300 <func_808BC6F8+0x108>
 264:	8fbf002c 	lw	ra,44(sp)
 268:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 26c:	afa50044 	sw	a1,68(sp)
 270:	3c010000 	lui	at,0x0
 274:	c4280040 	lwc1	$f8,64(at)
 278:	3c010000 	lui	at,0x0
 27c:	c4300044 	lwc1	$f16,68(at)
 280:	46080282 	mul.s	$f10,$f0,$f8
 284:	3c010000 	lui	at,0x0
 288:	c4240048 	lwc1	$f4,72(at)
 28c:	e7a40038 	swc1	$f4,56(sp)
 290:	46105480 	add.s	$f18,$f10,$f16
 294:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 298:	e7b20034 	swc1	$f18,52(sp)
 29c:	3c010000 	lui	at,0x0
 2a0:	c426004c 	lwc1	$f6,76(at)
 2a4:	3c010000 	lui	at,0x0
 2a8:	c42a0050 	lwc1	$f10,80(at)
 2ac:	46060202 	mul.s	$f8,$f0,$f6
 2b0:	3c063f4c 	lui	a2,0x3f4c
 2b4:	24080032 	li	t0,50
 2b8:	2409001e 	li	t1,30
 2bc:	240a0001 	li	t2,1
 2c0:	240bffff 	li	t3,-1
 2c4:	240c000a 	li	t4,10
 2c8:	460a4400 	add.s	$f16,$f8,$f10
 2cc:	afac0020 	sw	t4,32(sp)
 2d0:	afab001c 	sw	t3,28(sp)
 2d4:	afaa0018 	sw	t2,24(sp)
 2d8:	e7b0003c 	swc1	$f16,60(sp)
 2dc:	afa90014 	sw	t1,20(sp)
 2e0:	afa80010 	sw	t0,16(sp)
 2e4:	34c6cccd 	ori	a2,a2,0xcccd
 2e8:	8fa40044 	lw	a0,68(sp)
 2ec:	27a50034 	addiu	a1,sp,52
 2f0:	00003825 	move	a3,zero
 2f4:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 2f8:	afa00024 	sw	zero,36(sp)
 2fc:	8fbf002c 	lw	ra,44(sp)
 300:	27bd0040 	addiu	sp,sp,64
 304:	03e00008 	jr	ra
 308:	00000000 	nop

0000030c <func_808BC80C>:
 30c:	27bdffe8 	addiu	sp,sp,-24
 310:	afbf0014 	sw	ra,20(sp)
 314:	afa5001c 	sw	a1,28(sp)
 318:	3c010000 	lui	at,0x0
 31c:	c4260054 	lwc1	$f6,84(at)
 320:	c4840168 	lwc1	$f4,360(a0)
 324:	3c010000 	lui	at,0x0
 328:	3c050000 	lui	a1,0x0
 32c:	46062200 	add.s	$f8,$f4,$f6
 330:	e4880168 	swc1	$f8,360(a0)
 334:	c4300058 	lwc1	$f16,88(at)
 338:	c48a0168 	lwc1	$f10,360(a0)
 33c:	460a803e 	c.le.s	$f16,$f10
 340:	00000000 	nop
 344:	45020004 	bc1fl	358 <func_808BC80C+0x4c>
 348:	8fbf0014 	lw	ra,20(sp)
 34c:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 350:	24a50000 	addiu	a1,a1,0
 354:	8fbf0014 	lw	ra,20(sp)
 358:	27bd0018 	addiu	sp,sp,24
 35c:	03e00008 	jr	ra
 360:	00000000 	nop

00000364 <func_808BC864>:
 364:	27bdffe8 	addiu	sp,sp,-24
 368:	afbf0014 	sw	ra,20(sp)
 36c:	afa5001c 	sw	a1,28(sp)
 370:	3c010000 	lui	at,0x0
 374:	c426005c 	lwc1	$f6,92(at)
 378:	c4840168 	lwc1	$f4,360(a0)
 37c:	44805000 	mtc1	zero,$f10
 380:	3c050000 	lui	a1,0x0
 384:	46062201 	sub.s	$f8,$f4,$f6
 388:	e4880168 	swc1	$f8,360(a0)
 38c:	c4900168 	lwc1	$f16,360(a0)
 390:	460a803e 	c.le.s	$f16,$f10
 394:	00000000 	nop
 398:	45020004 	bc1fl	3ac <func_808BC864+0x48>
 39c:	8fbf0014 	lw	ra,20(sp)
 3a0:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 3a4:	24a50000 	addiu	a1,a1,0
 3a8:	8fbf0014 	lw	ra,20(sp)
 3ac:	27bd0018 	addiu	sp,sp,24
 3b0:	03e00008 	jr	ra
 3b4:	00000000 	nop

000003b8 <func_808BC8B8>:
 3b8:	27bdffe0 	addiu	sp,sp,-32
 3bc:	afb00018 	sw	s0,24(sp)
 3c0:	00808025 	move	s0,a0
 3c4:	afbf001c 	sw	ra,28(sp)
 3c8:	afa50024 	sw	a1,36(sp)
 3cc:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 3d0:	24040005 	li	a0,5
 3d4:	10400004 	beqz	v0,3e8 <func_808BC8B8+0x30>
 3d8:	3c0e0000 	lui	t6,0x0
 3dc:	8dce0004 	lw	t6,4(t6)
 3e0:	3c013f80 	lui	at,0x3f80
 3e4:	15c00039 	bnez	t6,4cc <func_808BC8B8+0x114>
 3e8:	3c0f0000 	lui	t7,0x0
 3ec:	8def0004 	lw	t7,4(t7)
 3f0:	51e0003a 	beqzl	t7,4dc <func_808BC8B8+0x124>
 3f4:	8fbf001c 	lw	ra,28(sp)
 3f8:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 3fc:	2404000c 	li	a0,12
 400:	1040001d 	beqz	v0,478 <func_808BC8B8+0xc0>
 404:	02002025 	move	a0,s0
 408:	3c0544cf 	lui	a1,0x44cf
 40c:	34a54000 	ori	a1,a1,0x4000
 410:	02002025 	move	a0,s0
 414:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 418:	24067530 	li	a2,30000
 41c:	5040002f 	beqzl	v0,4dc <func_808BC8B8+0x124>
 420:	8fbf001c 	lw	ra,28(sp)
 424:	8e180004 	lw	t8,4(s0)
 428:	9208010c 	lbu	t0,268(s0)
 42c:	2401fffe 	li	at,-2
 430:	37190001 	ori	t9,t8,0x1
 434:	11000028 	beqz	t0,4d8 <func_808BC8B8+0x120>
 438:	ae190004 	sw	t9,4(s0)
 43c:	03215024 	and	t2,t9,at
 440:	ae0a0004 	sw	t2,4(s0)
 444:	8fac0024 	lw	t4,36(sp)
 448:	3c0b0000 	lui	t3,0x0
 44c:	256b0000 	addiu	t3,t3,0
 450:	3c010000 	lui	at,0x0
 454:	240d0001 	li	t5,1
 458:	3c050000 	lui	a1,0x0
 45c:	ad8b1d68 	sw	t3,7528(t4)
 460:	a02d1414 	sb	t5,5140(at)
 464:	24a50000 	addiu	a1,a1,0
 468:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 46c:	02002025 	move	a0,s0
 470:	1000001a 	b	4dc <func_808BC8B8+0x124>
 474:	8fbf001c 	lw	ra,28(sp)
 478:	3c0544cf 	lui	a1,0x44cf
 47c:	34a54000 	ori	a1,a1,0x4000
 480:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 484:	24064e20 	li	a2,20000
 488:	50400014 	beqzl	v0,4dc <func_808BC8B8+0x124>
 48c:	8fbf001c 	lw	ra,28(sp)
 490:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 494:	2404000c 	li	a0,12
 498:	8faf0024 	lw	t7,36(sp)
 49c:	3c0e0000 	lui	t6,0x0
 4a0:	25ce0000 	addiu	t6,t6,0
 4a4:	24180001 	li	t8,1
 4a8:	3c010000 	lui	at,0x0
 4ac:	3c050000 	lui	a1,0x0
 4b0:	adee1d68 	sw	t6,7528(t7)
 4b4:	a0381414 	sb	t8,5140(at)
 4b8:	24a50000 	addiu	a1,a1,0
 4bc:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 4c0:	02002025 	move	a0,s0
 4c4:	10000005 	b	4dc <func_808BC8B8+0x124>
 4c8:	8fbf001c 	lw	ra,28(sp)
 4cc:	44812000 	mtc1	at,$f4
 4d0:	00000000 	nop
 4d4:	e6040168 	swc1	$f4,360(s0)
 4d8:	8fbf001c 	lw	ra,28(sp)
 4dc:	8fb00018 	lw	s0,24(sp)
 4e0:	27bd0020 	addiu	sp,sp,32
 4e4:	03e00008 	jr	ra
 4e8:	00000000 	nop

000004ec <func_808BC9EC>:
 4ec:	27bdffe0 	addiu	sp,sp,-32
 4f0:	afbf0014 	sw	ra,20(sp)
 4f4:	afa40020 	sw	a0,32(sp)
 4f8:	90ae1d6c 	lbu	t6,7532(a1)
 4fc:	24010003 	li	at,3
 500:	00a03825 	move	a3,a1
 504:	15c10036 	bne	t6,at,5e0 <func_808BC9EC+0xf4>
 508:	8ca31c44 	lw	v1,7236(a1)
 50c:	3c0543af 	lui	a1,0x43af
 510:	24067530 	li	a2,30000
 514:	afa3001c 	sw	v1,28(sp)
 518:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 51c:	afa70024 	sw	a3,36(sp)
 520:	8fa3001c 	lw	v1,28(sp)
 524:	1040000a 	beqz	v0,550 <func_808BC9EC+0x64>
 528:	8fa70024 	lw	a3,36(sp)
 52c:	3c010000 	lui	at,0x0
 530:	c4240060 	lwc1	$f4,96(at)
 534:	3c01c321 	lui	at,0xc321
 538:	44813000 	mtc1	at,$f6
 53c:	3c010000 	lui	at,0x0
 540:	e4640024 	swc1	$f4,36(v1)
 544:	e4660028 	swc1	$f6,40(v1)
 548:	c4280064 	lwc1	$f8,100(at)
 54c:	e468002c 	swc1	$f8,44(v1)
 550:	3402ffff 	li	v0,0xffff
 554:	a4e01d74 	sh	zero,7540(a3)
 558:	a4e21d7c 	sh	v0,7548(a3)
 55c:	3c010000 	lui	at,0x0
 560:	a4220000 	sh	v0,0(at)
 564:	3c010000 	lui	at,0x0
 568:	a4220000 	sh	v0,0(at)
 56c:	3c010000 	lui	at,0x0
 570:	a4220000 	sh	v0,0(at)
 574:	240f0002 	li	t7,2
 578:	3c180001 	lui	t8,0x1
 57c:	a0e01d7e 	sb	zero,7550(a3)
 580:	a0e01d7f 	sb	zero,7551(a3)
 584:	a0ef1d6c 	sb	t7,7532(a3)
 588:	0307c021 	addu	t8,t8,a3
 58c:	931804bd 	lbu	t8,1213(t8)
 590:	3c080000 	lui	t0,0x0
 594:	25080000 	addiu	t0,t0,0
 598:	1700000c 	bnez	t8,5cc <func_808BC9EC+0xe0>
 59c:	3c050000 	lui	a1,0x0
 5a0:	3c190000 	lui	t9,0x0
 5a4:	27390000 	addiu	t9,t9,0
 5a8:	acf91d68 	sw	t9,7528(a3)
 5ac:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 5b0:	24040005 	li	a0,5
 5b4:	3c050000 	lui	a1,0x0
 5b8:	24a50000 	addiu	a1,a1,0
 5bc:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 5c0:	8fa40020 	lw	a0,32(sp)
 5c4:	10000007 	b	5e4 <func_808BC9EC+0xf8>
 5c8:	8fbf0014 	lw	ra,20(sp)
 5cc:	ace81d68 	sw	t0,7528(a3)
 5d0:	a4e01d74 	sh	zero,7540(a3)
 5d4:	8fa40020 	lw	a0,32(sp)
 5d8:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 5dc:	24a50000 	addiu	a1,a1,0
 5e0:	8fbf0014 	lw	ra,20(sp)
 5e4:	27bd0020 	addiu	sp,sp,32
 5e8:	03e00008 	jr	ra
 5ec:	00000000 	nop

000005f0 <func_808BCAF0>:
 5f0:	27bdffe0 	addiu	sp,sp,-32
 5f4:	afbf001c 	sw	ra,28(sp)
 5f8:	afa40020 	sw	a0,32(sp)
 5fc:	90ae1d6c 	lbu	t6,7532(a1)
 600:	51c0001f 	beqzl	t6,680 <func_808BCAF0+0x90>
 604:	8fbf001c 	lw	ra,28(sp)
 608:	8ca21d8c 	lw	v0,7564(a1)
 60c:	5040001c 	beqzl	v0,680 <func_808BCAF0+0x90>
 610:	8fbf001c 	lw	ra,28(sp)
 614:	94430000 	lhu	v1,0(v0)
 618:	24010002 	li	at,2
 61c:	3c050000 	lui	a1,0x0
 620:	54610006 	bnel	v1,at,63c <func_808BCAF0+0x4c>
 624:	24010003 	li	at,3
 628:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 62c:	24a50000 	addiu	a1,a1,0
 630:	10000013 	b	680 <func_808BCAF0+0x90>
 634:	8fbf001c 	lw	ra,28(sp)
 638:	24010003 	li	at,3
 63c:	1461000f 	bne	v1,at,67c <func_808BCAF0+0x8c>
 640:	3c070000 	lui	a3,0x0
 644:	3c0f0000 	lui	t7,0x0
 648:	24e70000 	addiu	a3,a3,0
 64c:	25ef0000 	addiu	t7,t7,0
 650:	3c050000 	lui	a1,0x0
 654:	24a50000 	addiu	a1,a1,0
 658:	afaf0014 	sw	t7,20(sp)
 65c:	afa70010 	sw	a3,16(sp)
 660:	24042866 	li	a0,10342
 664:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 668:	24060004 	li	a2,4
 66c:	3c050000 	lui	a1,0x0
 670:	24a50000 	addiu	a1,a1,0
 674:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 678:	8fa40020 	lw	a0,32(sp)
 67c:	8fbf001c 	lw	ra,28(sp)
 680:	27bd0020 	addiu	sp,sp,32
 684:	03e00008 	jr	ra
 688:	00000000 	nop

0000068c <BgTreemouth_DoNothing>:
 68c:	afa40000 	sw	a0,0(sp)
 690:	03e00008 	jr	ra
 694:	afa50004 	sw	a1,4(sp)

00000698 <BgTreemouth_Update>:
 698:	27bdffe8 	addiu	sp,sp,-24
 69c:	afbf0014 	sw	ra,20(sp)
 6a0:	afa40018 	sw	a0,24(sp)
 6a4:	8c99016c 	lw	t9,364(a0)
 6a8:	0320f809 	jalr	t9
 6ac:	00000000 	nop
 6b0:	8fa40018 	lw	a0,24(sp)
 6b4:	3c01c320 	lui	at,0xc320
 6b8:	44812000 	mtc1	at,$f4
 6bc:	c4800168 	lwc1	$f0,360(a0)
 6c0:	3c010000 	lui	at,0x0
 6c4:	c4280068 	lwc1	$f8,104(at)
 6c8:	46040182 	mul.s	$f6,$f0,$f4
 6cc:	3c010000 	lui	at,0x0
 6d0:	46083280 	add.s	$f10,$f6,$f8
 6d4:	e48a0024 	swc1	$f10,36(a0)
 6d8:	c430006c 	lwc1	$f16,108(at)
 6dc:	3c014308 	lui	at,0x4308
 6e0:	44812000 	mtc1	at,$f4
 6e4:	46100482 	mul.s	$f18,$f0,$f16
 6e8:	3c0142b8 	lui	at,0x42b8
 6ec:	44814000 	mtc1	at,$f8
 6f0:	3c010000 	lui	at,0x0
 6f4:	46080282 	mul.s	$f10,$f0,$f8
 6f8:	46049180 	add.s	$f6,$f18,$f4
 6fc:	e4860028 	swc1	$f6,40(a0)
 700:	c4300070 	lwc1	$f16,112(at)
 704:	46105480 	add.s	$f18,$f10,$f16
 708:	e492002c 	swc1	$f18,44(a0)
 70c:	8fbf0014 	lw	ra,20(sp)
 710:	27bd0018 	addiu	sp,sp,24
 714:	03e00008 	jr	ra
 718:	00000000 	nop

0000071c <BgTreemouth_Draw>:
 71c:	27bdffb8 	addiu	sp,sp,-72
 720:	afbf0014 	sw	ra,20(sp)
 724:	afa40048 	sw	a0,72(sp)
 728:	afa5004c 	sw	a1,76(sp)
 72c:	8ca50000 	lw	a1,0(a1)
 730:	240901f4 	li	t1,500
 734:	3c060000 	lui	a2,0x0
 738:	24c60000 	addiu	a2,a2,0
 73c:	a7a90042 	sh	t1,66(sp)
 740:	27a4002c 	addiu	a0,sp,44
 744:	2407037d 	li	a3,893
 748:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 74c:	afa5003c 	sw	a1,60(sp)
 750:	8faf004c 	lw	t7,76(sp)
 754:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 758:	8de40000 	lw	a0,0(t7)
 75c:	3c030000 	lui	v1,0x0
 760:	24630000 	addiu	v1,v1,0
 764:	8c621360 	lw	v0,4960(v1)
 768:	8fa8003c 	lw	t0,60(sp)
 76c:	97a90042 	lhu	t1,66(sp)
 770:	28410004 	slti	at,v0,4
 774:	14200004 	bnez	at,788 <BgTreemouth_Draw+0x6c>
 778:	3c050000 	lui	a1,0x0
 77c:	8c780004 	lw	t8,4(v1)
 780:	57000007 	bnezl	t8,7a0 <BgTreemouth_Draw+0x84>
 784:	24010006 	li	at,6
 788:	94790ed4 	lhu	t9,3796(v1)
 78c:	332a0080 	andi	t2,t9,0x80
 790:	51400003 	beqzl	t2,7a0 <BgTreemouth_Draw+0x84>
 794:	24010006 	li	at,6
 798:	24090866 	li	t1,2150
 79c:	24010006 	li	at,6
 7a0:	14410007 	bne	v0,at,7c0 <BgTreemouth_Draw+0xa4>
 7a4:	24a50014 	addiu	a1,a1,20
 7a8:	8fab004c 	lw	t3,76(sp)
 7ac:	3c090001 	lui	t1,0x1
 7b0:	012b4821 	addu	t1,t1,t3
 7b4:	85291d30 	lh	t1,7472(t1)
 7b8:	252901f4 	addiu	t1,t1,500
 7bc:	3129ffff 	andi	t1,t1,0xffff
 7c0:	8d0302c0 	lw	v1,704(t0)
 7c4:	44892000 	mtc1	t1,$f4
 7c8:	3c0dfb00 	lui	t5,0xfb00
 7cc:	246c0008 	addiu	t4,v1,8
 7d0:	ad0c02c0 	sw	t4,704(t0)
 7d4:	ac6d0000 	sw	t5,0(v1)
 7d8:	05210005 	bgez	t1,7f0 <BgTreemouth_Draw+0xd4>
 7dc:	468021a0 	cvt.s.w	$f6,$f4
 7e0:	3c014f80 	lui	at,0x4f80
 7e4:	44814000 	mtc1	at,$f8
 7e8:	00000000 	nop
 7ec:	46083180 	add.s	$f6,$f6,$f8
 7f0:	3c010000 	lui	at,0x0
 7f4:	c42a0074 	lwc1	$f10,116(at)
 7f8:	240f0001 	li	t7,1
 7fc:	3c014f00 	lui	at,0x4f00
 800:	460a3402 	mul.s	$f16,$f6,$f10
 804:	444ef800 	cfc1	t6,$31
 808:	44cff800 	ctc1	t7,$31
 80c:	00000000 	nop
 810:	460084a4 	cvt.w.s	$f18,$f16
 814:	444ff800 	cfc1	t7,$31
 818:	00000000 	nop
 81c:	31ef0078 	andi	t7,t7,0x78
 820:	51e00013 	beqzl	t7,870 <BgTreemouth_Draw+0x154>
 824:	440f9000 	mfc1	t7,$f18
 828:	44819000 	mtc1	at,$f18
 82c:	240f0001 	li	t7,1
 830:	46128481 	sub.s	$f18,$f16,$f18
 834:	44cff800 	ctc1	t7,$31
 838:	00000000 	nop
 83c:	460094a4 	cvt.w.s	$f18,$f18
 840:	444ff800 	cfc1	t7,$31
 844:	00000000 	nop
 848:	31ef0078 	andi	t7,t7,0x78
 84c:	15e00005 	bnez	t7,864 <BgTreemouth_Draw+0x148>
 850:	00000000 	nop
 854:	440f9000 	mfc1	t7,$f18
 858:	3c018000 	lui	at,0x8000
 85c:	10000007 	b	87c <BgTreemouth_Draw+0x160>
 860:	01e17825 	or	t7,t7,at
 864:	10000005 	b	87c <BgTreemouth_Draw+0x160>
 868:	240fffff 	li	t7,-1
 86c:	440f9000 	mfc1	t7,$f18
 870:	00000000 	nop
 874:	05e0fffb 	bltz	t7,864 <BgTreemouth_Draw+0x148>
 878:	00000000 	nop
 87c:	3c018080 	lui	at,0x8080
 880:	34218000 	ori	at,at,0x8000
 884:	31f800ff 	andi	t8,t7,0xff
 888:	0301c825 	or	t9,t8,at
 88c:	ac790004 	sw	t9,4(v1)
 890:	8d0202c0 	lw	v0,704(t0)
 894:	3c0bda38 	lui	t3,0xda38
 898:	356b0003 	ori	t3,t3,0x3
 89c:	244a0008 	addiu	t2,v0,8
 8a0:	ad0a02c0 	sw	t2,704(t0)
 8a4:	ac4b0000 	sw	t3,0(v0)
 8a8:	8fac004c 	lw	t4,76(sp)
 8ac:	44cef800 	ctc1	t6,$31
 8b0:	240603a4 	li	a2,932
 8b4:	8d840000 	lw	a0,0(t4)
 8b8:	afa8003c 	sw	t0,60(sp)
 8bc:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 8c0:	afa20024 	sw	v0,36(sp)
 8c4:	8fa30024 	lw	v1,36(sp)
 8c8:	8fa8003c 	lw	t0,60(sp)
 8cc:	3c0f0000 	lui	t7,0x0
 8d0:	ac620004 	sw	v0,4(v1)
 8d4:	8d0202c0 	lw	v0,704(t0)
 8d8:	25ef0000 	addiu	t7,t7,0
 8dc:	3c0ede00 	lui	t6,0xde00
 8e0:	244d0008 	addiu	t5,v0,8
 8e4:	ad0d02c0 	sw	t5,704(t0)
 8e8:	ac4f0004 	sw	t7,4(v0)
 8ec:	ac4e0000 	sw	t6,0(v0)
 8f0:	8fb8004c 	lw	t8,76(sp)
 8f4:	3c060000 	lui	a2,0x0
 8f8:	24c60028 	addiu	a2,a2,40
 8fc:	27a4002c 	addiu	a0,sp,44
 900:	240703a9 	li	a3,937
 904:	0c000000 	jal	0 <BgTreemouth_SetupAction>
 908:	8f050000 	lw	a1,0(t8)
 90c:	8fbf0014 	lw	ra,20(sp)
 910:	27bd0048 	addiu	sp,sp,72
 914:	03e00008 	jr	ra
 918:	00000000 	nop
 91c:	00000000 	nop
