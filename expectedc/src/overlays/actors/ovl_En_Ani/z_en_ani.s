
build/src/overlays/actors/ovl_En_Ani/z_en_ani.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnAni_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac8502b0 	sw	a1,688(a0)

00000008 <EnAni_Init>:
   8:	27bdffc0 	addiu	sp,sp,-64
   c:	afa50044 	sw	a1,68(sp)
  10:	afbf002c 	sw	ra,44(sp)
  14:	afb00028 	sw	s0,40(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <EnAni_SetupAction>
  24:	24a5004c 	addiu	a1,a1,76
  28:	3c060000 	lui	a2,0x0
  2c:	24c60000 	addiu	a2,a2,0
  30:	260400b4 	addiu	a0,s0,180
  34:	3c05c52f 	lui	a1,0xc52f
  38:	0c000000 	jal	0 <EnAni_SetupAction>
  3c:	3c074210 	lui	a3,0x4210
  40:	26050198 	addiu	a1,s0,408
  44:	3c060000 	lui	a2,0x0
  48:	3c070000 	lui	a3,0x0
  4c:	260e01dc 	addiu	t6,s0,476
  50:	260f023c 	addiu	t7,s0,572
  54:	24180010 	li	t8,16
  58:	afb80018 	sw	t8,24(sp)
  5c:	afaf0014 	sw	t7,20(sp)
  60:	afae0010 	sw	t6,16(sp)
  64:	24e70000 	addiu	a3,a3,0
  68:	24c60000 	addiu	a2,a2,0
  6c:	afa50034 	sw	a1,52(sp)
  70:	0c000000 	jal	0 <EnAni_SetupAction>
  74:	8fa40044 	lw	a0,68(sp)
  78:	3c050000 	lui	a1,0x0
  7c:	24a50000 	addiu	a1,a1,0
  80:	0c000000 	jal	0 <EnAni_SetupAction>
  84:	8fa40034 	lw	a0,52(sp)
  88:	2605014c 	addiu	a1,s0,332
  8c:	afa50034 	sw	a1,52(sp)
  90:	0c000000 	jal	0 <EnAni_SetupAction>
  94:	8fa40044 	lw	a0,68(sp)
  98:	3c070000 	lui	a3,0x0
  9c:	8fa50034 	lw	a1,52(sp)
  a0:	24e70020 	addiu	a3,a3,32
  a4:	8fa40044 	lw	a0,68(sp)
  a8:	0c000000 	jal	0 <EnAni_SetupAction>
  ac:	02003025 	move	a2,s0
  b0:	241900ff 	li	t9,255
  b4:	a21900ae 	sb	t9,174(s0)
  b8:	3c080000 	lui	t0,0x0
  bc:	8d080004 	lw	t0,4(t0)
  c0:	02002025 	move	a0,s0
  c4:	3c050000 	lui	a1,0x0
  c8:	11000007 	beqz	t0,e8 <EnAni_Init+0xe0>
  cc:	00000000 	nop
  d0:	3c050000 	lui	a1,0x0
  d4:	24a50000 	addiu	a1,a1,0
  d8:	0c000000 	jal	0 <EnAni_SetupAction>
  dc:	02002025 	move	a0,s0
  e0:	10000004 	b	f4 <EnAni_Init+0xec>
  e4:	3c01bf80 	lui	at,0xbf80
  e8:	0c000000 	jal	0 <EnAni_SetupAction>
  ec:	24a50000 	addiu	a1,a1,0
  f0:	3c01bf80 	lui	at,0xbf80
  f4:	44810000 	mtc1	at,$f0
  f8:	a60002aa 	sh	zero,682(s0)
  fc:	a60002a8 	sh	zero,680(s0)
 100:	e6000070 	swc1	$f0,112(s0)
 104:	e6000060 	swc1	$f0,96(s0)
 108:	8fbf002c 	lw	ra,44(sp)
 10c:	8fb00028 	lw	s0,40(sp)
 110:	27bd0040 	addiu	sp,sp,64
 114:	03e00008 	jr	ra
 118:	00000000 	nop

0000011c <EnAni_Destroy>:
 11c:	27bdffe8 	addiu	sp,sp,-24
 120:	00803025 	move	a2,a0
 124:	afbf0014 	sw	ra,20(sp)
 128:	00a02025 	move	a0,a1
 12c:	0c000000 	jal	0 <EnAni_SetupAction>
 130:	24c5014c 	addiu	a1,a2,332
 134:	8fbf0014 	lw	ra,20(sp)
 138:	27bd0018 	addiu	sp,sp,24
 13c:	03e00008 	jr	ra
 140:	00000000 	nop

00000144 <EnAni_SetText>:
 144:	27bdffe8 	addiu	sp,sp,-24
 148:	afbf0014 	sw	ra,20(sp)
 14c:	afa60020 	sw	a2,32(sp)
 150:	948e02a8 	lhu	t6,680(a0)
 154:	00c03825 	move	a3,a2
 158:	a487010e 	sh	a3,270(a0)
 15c:	35cf0001 	ori	t7,t6,0x1
 160:	a48f02a8 	sh	t7,680(a0)
 164:	0c000000 	jal	0 <EnAni_SetupAction>
 168:	3c0642c8 	lui	a2,0x42c8
 16c:	8fbf0014 	lw	ra,20(sp)
 170:	27bd0018 	addiu	sp,sp,24
 174:	00001025 	move	v0,zero
 178:	03e00008 	jr	ra
 17c:	00000000 	nop

00000180 <func_809B04F0>:
 180:	27bdffe8 	addiu	sp,sp,-24
 184:	afbf0014 	sw	ra,20(sp)
 188:	0c000000 	jal	0 <EnAni_SetupAction>
 18c:	afa40018 	sw	a0,24(sp)
 190:	10400004 	beqz	v0,1a4 <func_809B04F0+0x24>
 194:	8fa40018 	lw	a0,24(sp)
 198:	3c050000 	lui	a1,0x0
 19c:	0c000000 	jal	0 <EnAni_SetupAction>
 1a0:	24a50000 	addiu	a1,a1,0
 1a4:	8fbf0014 	lw	ra,20(sp)
 1a8:	27bd0018 	addiu	sp,sp,24
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <func_809B0524>:
 1b4:	27bdffe8 	addiu	sp,sp,-24
 1b8:	afbf0014 	sw	ra,20(sp)
 1bc:	0c000000 	jal	0 <EnAni_SetupAction>
 1c0:	afa40018 	sw	a0,24(sp)
 1c4:	10400004 	beqz	v0,1d8 <func_809B0524+0x24>
 1c8:	8fa40018 	lw	a0,24(sp)
 1cc:	3c050000 	lui	a1,0x0
 1d0:	0c000000 	jal	0 <EnAni_SetupAction>
 1d4:	24a50000 	addiu	a1,a1,0
 1d8:	8fbf0014 	lw	ra,20(sp)
 1dc:	27bd0018 	addiu	sp,sp,24
 1e0:	03e00008 	jr	ra
 1e4:	00000000 	nop

000001e8 <func_809B0558>:
 1e8:	27bdffe0 	addiu	sp,sp,-32
 1ec:	afbf001c 	sw	ra,28(sp)
 1f0:	afa50024 	sw	a1,36(sp)
 1f4:	0c000000 	jal	0 <EnAni_SetupAction>
 1f8:	afa40020 	sw	a0,32(sp)
 1fc:	10400014 	beqz	v0,250 <func_809B0558+0x68>
 200:	8fa40020 	lw	a0,32(sp)
 204:	ac800118 	sw	zero,280(a0)
 208:	3c0e0000 	lui	t6,0x0
 20c:	8dce0004 	lw	t6,4(t6)
 210:	3c050000 	lui	a1,0x0
 214:	11c00006 	beqz	t6,230 <func_809B0558+0x48>
 218:	00000000 	nop
 21c:	3c050000 	lui	a1,0x0
 220:	0c000000 	jal	0 <EnAni_SetupAction>
 224:	24a50000 	addiu	a1,a1,0
 228:	10000003 	b	238 <func_809B0558+0x50>
 22c:	00000000 	nop
 230:	0c000000 	jal	0 <EnAni_SetupAction>
 234:	24a50000 	addiu	a1,a1,0
 238:	3c0f0000 	lui	t7,0x0
 23c:	95ef0ef2 	lhu	t7,3826(t7)
 240:	3c010000 	lui	at,0x0
 244:	35f80020 	ori	t8,t7,0x20
 248:	10000009 	b	270 <func_809B0558+0x88>
 24c:	a4380ef2 	sh	t8,3826(at)
 250:	3c014348 	lui	at,0x4348
 254:	44812000 	mtc1	at,$f4
 258:	3c07461c 	lui	a3,0x461c
 25c:	34e74000 	ori	a3,a3,0x4000
 260:	8fa50024 	lw	a1,36(sp)
 264:	2406003e 	li	a2,62
 268:	0c000000 	jal	0 <EnAni_SetupAction>
 26c:	e7a40010 	swc1	$f4,16(sp)
 270:	8fbf001c 	lw	ra,28(sp)
 274:	27bd0020 	addiu	sp,sp,32
 278:	03e00008 	jr	ra
 27c:	00000000 	nop

00000280 <func_809B05F0>:
 280:	27bdffe0 	addiu	sp,sp,-32
 284:	afbf001c 	sw	ra,28(sp)
 288:	afa40020 	sw	a0,32(sp)
 28c:	0c000000 	jal	0 <EnAni_SetupAction>
 290:	afa50024 	sw	a1,36(sp)
 294:	10400004 	beqz	v0,2a8 <func_809B05F0+0x28>
 298:	8fa40020 	lw	a0,32(sp)
 29c:	3c050000 	lui	a1,0x0
 2a0:	0c000000 	jal	0 <EnAni_SetupAction>
 2a4:	24a50000 	addiu	a1,a1,0
 2a8:	3c014348 	lui	at,0x4348
 2ac:	44812000 	mtc1	at,$f4
 2b0:	3c07461c 	lui	a3,0x461c
 2b4:	34e74000 	ori	a3,a3,0x4000
 2b8:	8fa40020 	lw	a0,32(sp)
 2bc:	8fa50024 	lw	a1,36(sp)
 2c0:	2406003e 	li	a2,62
 2c4:	0c000000 	jal	0 <EnAni_SetupAction>
 2c8:	e7a40010 	swc1	$f4,16(sp)
 2cc:	8fbf001c 	lw	ra,28(sp)
 2d0:	27bd0020 	addiu	sp,sp,32
 2d4:	03e00008 	jr	ra
 2d8:	00000000 	nop

000002dc <func_809B064C>:
 2dc:	27bdffe0 	addiu	sp,sp,-32
 2e0:	00803825 	move	a3,a0
 2e4:	afbf0014 	sw	ra,20(sp)
 2e8:	afa50024 	sw	a1,36(sp)
 2ec:	00a02025 	move	a0,a1
 2f0:	2405000a 	li	a1,10
 2f4:	0c000000 	jal	0 <EnAni_SetupAction>
 2f8:	afa70020 	sw	a3,32(sp)
 2fc:	8fa50024 	lw	a1,36(sp)
 300:	8fa70020 	lw	a3,32(sp)
 304:	14400008 	bnez	v0,328 <func_809B064C+0x4c>
 308:	3046ffff 	andi	a2,v0,0xffff
 30c:	3c0e0000 	lui	t6,0x0
 310:	8dce0010 	lw	t6,16(t6)
 314:	24065050 	li	a2,20560
 318:	11c00003 	beqz	t6,328 <func_809B064C+0x4c>
 31c:	00000000 	nop
 320:	10000001 	b	328 <func_809B064C+0x4c>
 324:	24065051 	li	a2,20561
 328:	84ef008a 	lh	t7,138(a3)
 32c:	84f800b6 	lh	t8,182(a3)
 330:	afa70020 	sw	a3,32(sp)
 334:	a7a6001e 	sh	a2,30(sp)
 338:	01f81823 	subu	v1,t7,t8
 33c:	00031c00 	sll	v1,v1,0x10
 340:	00031c03 	sra	v1,v1,0x10
 344:	a7a3001c 	sh	v1,28(sp)
 348:	0c000000 	jal	0 <EnAni_SetupAction>
 34c:	00e02025 	move	a0,a3
 350:	87a3001c 	lh	v1,28(sp)
 354:	8fa50024 	lw	a1,36(sp)
 358:	97a6001e 	lhu	a2,30(sp)
 35c:	10400018 	beqz	v0,3c0 <func_809B064C+0xe4>
 360:	8fa70020 	lw	a3,32(sp)
 364:	94e2010e 	lhu	v0,270(a3)
 368:	24015056 	li	at,20566
 36c:	00e02025 	move	a0,a3
 370:	14410005 	bne	v0,at,388 <func_809B064C+0xac>
 374:	3c050000 	lui	a1,0x0
 378:	0c000000 	jal	0 <EnAni_SetupAction>
 37c:	24a50000 	addiu	a1,a1,0
 380:	1000003e 	b	47c <func_809B064C+0x1a0>
 384:	8fbf0014 	lw	ra,20(sp)
 388:	24015055 	li	at,20565
 38c:	14410007 	bne	v0,at,3ac <func_809B064C+0xd0>
 390:	00e02025 	move	a0,a3
 394:	3c050000 	lui	a1,0x0
 398:	24a50000 	addiu	a1,a1,0
 39c:	0c000000 	jal	0 <EnAni_SetupAction>
 3a0:	00e02025 	move	a0,a3
 3a4:	10000035 	b	47c <func_809B064C+0x1a0>
 3a8:	8fbf0014 	lw	ra,20(sp)
 3ac:	3c050000 	lui	a1,0x0
 3b0:	0c000000 	jal	0 <EnAni_SetupAction>
 3b4:	24a50000 	addiu	a1,a1,0
 3b8:	10000030 	b	47c <func_809B064C+0x1a0>
 3bc:	8fbf0014 	lw	ra,20(sp)
 3c0:	2861c951 	slti	at,v1,-13999
 3c4:	54200020 	bnezl	at,448 <func_809B064C+0x16c>
 3c8:	2861fc19 	slti	at,v1,-999
 3cc:	0461001d 	bgez	v1,444 <func_809B064C+0x168>
 3d0:	3c014316 	lui	at,0x4316
 3d4:	c4e40090 	lwc1	$f4,144(a3)
 3d8:	44813000 	mtc1	at,$f6
 3dc:	3c01c2a0 	lui	at,0xc2a0
 3e0:	4606203c 	c.lt.s	$f4,$f6
 3e4:	00000000 	nop
 3e8:	45020017 	bc1fl	448 <func_809B064C+0x16c>
 3ec:	2861fc19 	slti	at,v1,-999
 3f0:	44814000 	mtc1	at,$f8
 3f4:	c4ea0094 	lwc1	$f10,148(a3)
 3f8:	3c190000 	lui	t9,0x0
 3fc:	460a403c 	c.lt.s	$f8,$f10
 400:	00000000 	nop
 404:	45020010 	bc1fl	448 <func_809B064C+0x16c>
 408:	2861fc19 	slti	at,v1,-999
 40c:	97390ef2 	lhu	t9,3826(t9)
 410:	24065056 	li	a2,20566
 414:	00e02025 	move	a0,a3
 418:	33280020 	andi	t0,t9,0x20
 41c:	11000005 	beqz	t0,434 <func_809B064C+0x158>
 420:	00000000 	nop
 424:	0c000000 	jal	0 <EnAni_SetupAction>
 428:	00e02025 	move	a0,a3
 42c:	10000013 	b	47c <func_809B064C+0x1a0>
 430:	8fbf0014 	lw	ra,20(sp)
 434:	0c000000 	jal	0 <EnAni_SetupAction>
 438:	24065055 	li	a2,20565
 43c:	1000000f 	b	47c <func_809B064C+0x1a0>
 440:	8fbf0014 	lw	ra,20(sp)
 444:	2861fc19 	slti	at,v1,-999
 448:	1420000b 	bnez	at,478 <func_809B064C+0x19c>
 44c:	286136b0 	slti	at,v1,14000
 450:	10200009 	beqz	at,478 <func_809B064C+0x19c>
 454:	3c0143af 	lui	at,0x43af
 458:	44819000 	mtc1	at,$f18
 45c:	c4f00090 	lwc1	$f16,144(a3)
 460:	4612803c 	c.lt.s	$f16,$f18
 464:	00000000 	nop
 468:	45020004 	bc1fl	47c <func_809B064C+0x1a0>
 46c:	8fbf0014 	lw	ra,20(sp)
 470:	0c000000 	jal	0 <EnAni_SetupAction>
 474:	00e02025 	move	a0,a3
 478:	8fbf0014 	lw	ra,20(sp)
 47c:	27bd0020 	addiu	sp,sp,32
 480:	03e00008 	jr	ra
 484:	00000000 	nop

00000488 <func_809B07F8>:
 488:	27bdffe0 	addiu	sp,sp,-32
 48c:	afbf0014 	sw	ra,20(sp)
 490:	848f00b6 	lh	t7,182(a0)
 494:	848e008a 	lh	t6,138(a0)
 498:	afa50024 	sw	a1,36(sp)
 49c:	afa40020 	sw	a0,32(sp)
 4a0:	01cf1823 	subu	v1,t6,t7
 4a4:	00031c00 	sll	v1,v1,0x10
 4a8:	00031c03 	sra	v1,v1,0x10
 4ac:	0c000000 	jal	0 <EnAni_SetupAction>
 4b0:	a7a3001c 	sh	v1,28(sp)
 4b4:	87a3001c 	lh	v1,28(sp)
 4b8:	8fa40020 	lw	a0,32(sp)
 4bc:	10400016 	beqz	v0,518 <func_809B07F8+0x90>
 4c0:	8fa50024 	lw	a1,36(sp)
 4c4:	9482010e 	lhu	v0,270(a0)
 4c8:	24015056 	li	at,20566
 4cc:	3c050000 	lui	a1,0x0
 4d0:	54410006 	bnel	v0,at,4ec <func_809B07F8+0x64>
 4d4:	24015055 	li	at,20565
 4d8:	0c000000 	jal	0 <EnAni_SetupAction>
 4dc:	24a50000 	addiu	a1,a1,0
 4e0:	1000004a 	b	60c <func_809B07F8+0x184>
 4e4:	8fbf0014 	lw	ra,20(sp)
 4e8:	24015055 	li	at,20565
 4ec:	14410006 	bne	v0,at,508 <func_809B07F8+0x80>
 4f0:	3c050000 	lui	a1,0x0
 4f4:	3c050000 	lui	a1,0x0
 4f8:	0c000000 	jal	0 <EnAni_SetupAction>
 4fc:	24a50000 	addiu	a1,a1,0
 500:	10000042 	b	60c <func_809B07F8+0x184>
 504:	8fbf0014 	lw	ra,20(sp)
 508:	0c000000 	jal	0 <EnAni_SetupAction>
 50c:	24a50000 	addiu	a1,a1,0
 510:	1000003e 	b	60c <func_809B07F8+0x184>
 514:	8fbf0014 	lw	ra,20(sp)
 518:	2861c951 	slti	at,v1,-13999
 51c:	5420001f 	bnezl	at,59c <func_809B07F8+0x114>
 520:	2861fc19 	slti	at,v1,-999
 524:	0461001c 	bgez	v1,598 <func_809B07F8+0x110>
 528:	3c014316 	lui	at,0x4316
 52c:	c4840090 	lwc1	$f4,144(a0)
 530:	44813000 	mtc1	at,$f6
 534:	3c01c2a0 	lui	at,0xc2a0
 538:	4606203c 	c.lt.s	$f4,$f6
 53c:	00000000 	nop
 540:	45020016 	bc1fl	59c <func_809B07F8+0x114>
 544:	2861fc19 	slti	at,v1,-999
 548:	44814000 	mtc1	at,$f8
 54c:	c48a0094 	lwc1	$f10,148(a0)
 550:	3c020000 	lui	v0,0x0
 554:	24420000 	addiu	v0,v0,0
 558:	460a403c 	c.lt.s	$f8,$f10
 55c:	00000000 	nop
 560:	4502000e 	bc1fl	59c <func_809B07F8+0x114>
 564:	2861fc19 	slti	at,v1,-999
 568:	94580ef2 	lhu	t8,3826(v0)
 56c:	33190020 	andi	t9,t8,0x20
 570:	13200005 	beqz	t9,588 <func_809B07F8+0x100>
 574:	00000000 	nop
 578:	0c000000 	jal	0 <EnAni_SetupAction>
 57c:	24065056 	li	a2,20566
 580:	10000022 	b	60c <func_809B07F8+0x184>
 584:	8fbf0014 	lw	ra,20(sp)
 588:	0c000000 	jal	0 <EnAni_SetupAction>
 58c:	24065055 	li	a2,20565
 590:	1000001e 	b	60c <func_809B07F8+0x184>
 594:	8fbf0014 	lw	ra,20(sp)
 598:	2861fc19 	slti	at,v1,-999
 59c:	1420001a 	bnez	at,608 <func_809B07F8+0x180>
 5a0:	286136b0 	slti	at,v1,14000
 5a4:	10200018 	beqz	at,608 <func_809B07F8+0x180>
 5a8:	3c0143af 	lui	at,0x43af
 5ac:	44819000 	mtc1	at,$f18
 5b0:	c4900090 	lwc1	$f16,144(a0)
 5b4:	3c020000 	lui	v0,0x0
 5b8:	24420000 	addiu	v0,v0,0
 5bc:	4612803c 	c.lt.s	$f16,$f18
 5c0:	00000000 	nop
 5c4:	45020011 	bc1fl	60c <func_809B07F8+0x184>
 5c8:	8fbf0014 	lw	ra,20(sp)
 5cc:	94480ed8 	lhu	t0,3800(v0)
 5d0:	31098000 	andi	t1,t0,0x8000
 5d4:	55200004 	bnezl	t1,5e8 <func_809B07F8+0x160>
 5d8:	944a0ef2 	lhu	t2,3826(v0)
 5dc:	10000008 	b	600 <func_809B07F8+0x178>
 5e0:	24065052 	li	a2,20562
 5e4:	944a0ef2 	lhu	t2,3826(v0)
 5e8:	24065053 	li	a2,20563
 5ec:	314b0020 	andi	t3,t2,0x20
 5f0:	11600003 	beqz	t3,600 <func_809B07F8+0x178>
 5f4:	00000000 	nop
 5f8:	10000001 	b	600 <func_809B07F8+0x178>
 5fc:	24065054 	li	a2,20564
 600:	0c000000 	jal	0 <EnAni_SetupAction>
 604:	00000000 	nop
 608:	8fbf0014 	lw	ra,20(sp)
 60c:	27bd0020 	addiu	sp,sp,32
 610:	03e00008 	jr	ra
 614:	00000000 	nop

00000618 <func_809B0988>:
 618:	afa40000 	sw	a0,0(sp)
 61c:	03e00008 	jr	ra
 620:	afa50004 	sw	a1,4(sp)

00000624 <func_809B0994>:
 624:	27bdffd8 	addiu	sp,sp,-40
 628:	afbf0024 	sw	ra,36(sp)
 62c:	afa40028 	sw	a0,40(sp)
 630:	8cae1d8c 	lw	t6,7564(a1)
 634:	24010004 	li	at,4
 638:	3c040000 	lui	a0,0x0
 63c:	95cf0000 	lhu	t7,0(t6)
 640:	55e1001a 	bnel	t7,at,6ac <func_809B0994+0x88>
 644:	8fbf0024 	lw	ra,36(sp)
 648:	0c000000 	jal	0 <EnAni_SetupAction>
 64c:	24840000 	addiu	a0,a0,0
 650:	44822000 	mtc1	v0,$f4
 654:	3c01c080 	lui	at,0xc080
 658:	44814000 	mtc1	at,$f8
 65c:	468021a0 	cvt.s.w	$f6,$f4
 660:	8fa30028 	lw	v1,40(sp)
 664:	3c050000 	lui	a1,0x0
 668:	24180002 	li	t8,2
 66c:	afb80014 	sw	t8,20(sp)
 670:	24a50000 	addiu	a1,a1,0
 674:	e7a60010 	swc1	$f6,16(sp)
 678:	3c063f80 	lui	a2,0x3f80
 67c:	24070000 	li	a3,0
 680:	e7a80018 	swc1	$f8,24(sp)
 684:	0c000000 	jal	0 <EnAni_SetupAction>
 688:	24640198 	addiu	a0,v1,408
 68c:	8fa30028 	lw	v1,40(sp)
 690:	3c090000 	lui	t1,0x0
 694:	25290000 	addiu	t1,t1,0
 698:	947902aa 	lhu	t9,682(v1)
 69c:	ac6900c0 	sw	t1,192(v1)
 6a0:	27280001 	addiu	t0,t9,1
 6a4:	a46802aa 	sh	t0,682(v1)
 6a8:	8fbf0024 	lw	ra,36(sp)
 6ac:	27bd0028 	addiu	sp,sp,40
 6b0:	03e00008 	jr	ra
 6b4:	00000000 	nop

000006b8 <func_809B0A28>:
 6b8:	27bdffe8 	addiu	sp,sp,-24
 6bc:	afa5001c 	sw	a1,28(sp)
 6c0:	00802825 	move	a1,a0
 6c4:	afbf0014 	sw	ra,20(sp)
 6c8:	afa40018 	sw	a0,24(sp)
 6cc:	afa50018 	sw	a1,24(sp)
 6d0:	0c000000 	jal	0 <EnAni_SetupAction>
 6d4:	24840198 	addiu	a0,a0,408
 6d8:	10400004 	beqz	v0,6ec <func_809B0A28+0x34>
 6dc:	8fa50018 	lw	a1,24(sp)
 6e0:	94ae02aa 	lhu	t6,682(a1)
 6e4:	25cf0001 	addiu	t7,t6,1
 6e8:	a4af02aa 	sh	t7,682(a1)
 6ec:	8fbf0014 	lw	ra,20(sp)
 6f0:	27bd0018 	addiu	sp,sp,24
 6f4:	03e00008 	jr	ra
 6f8:	00000000 	nop

000006fc <func_809B0A6C>:
 6fc:	27bdffc8 	addiu	sp,sp,-56
 700:	afb00028 	sw	s0,40(sp)
 704:	00808025 	move	s0,a0
 708:	afbf002c 	sw	ra,44(sp)
 70c:	24840198 	addiu	a0,a0,408
 710:	afa5003c 	sw	a1,60(sp)
 714:	0c000000 	jal	0 <EnAni_SetupAction>
 718:	afa40030 	sw	a0,48(sp)
 71c:	10400004 	beqz	v0,730 <func_809B0A6C+0x34>
 720:	3c040000 	lui	a0,0x0
 724:	44802000 	mtc1	zero,$f4
 728:	00000000 	nop
 72c:	e60401b0 	swc1	$f4,432(s0)
 730:	8fae003c 	lw	t6,60(sp)
 734:	24010002 	li	at,2
 738:	8dcf1d8c 	lw	t7,7564(t6)
 73c:	95f80000 	lhu	t8,0(t7)
 740:	57010015 	bnel	t8,at,798 <func_809B0A6C+0x9c>
 744:	8fbf002c 	lw	ra,44(sp)
 748:	0c000000 	jal	0 <EnAni_SetupAction>
 74c:	24840000 	addiu	a0,a0,0
 750:	44823000 	mtc1	v0,$f6
 754:	44800000 	mtc1	zero,$f0
 758:	3c050000 	lui	a1,0x0
 75c:	46803220 	cvt.s.w	$f8,$f6
 760:	24190002 	li	t9,2
 764:	44070000 	mfc1	a3,$f0
 768:	afb90014 	sw	t9,20(sp)
 76c:	24a50000 	addiu	a1,a1,0
 770:	8fa40030 	lw	a0,48(sp)
 774:	e7a80010 	swc1	$f8,16(sp)
 778:	3c063f80 	lui	a2,0x3f80
 77c:	0c000000 	jal	0 <EnAni_SetupAction>
 780:	e7a00018 	swc1	$f0,24(sp)
 784:	960802aa 	lhu	t0,682(s0)
 788:	ae0000c0 	sw	zero,192(s0)
 78c:	25090001 	addiu	t1,t0,1
 790:	a60902aa 	sh	t1,682(s0)
 794:	8fbf002c 	lw	ra,44(sp)
 798:	8fb00028 	lw	s0,40(sp)
 79c:	27bd0038 	addiu	sp,sp,56
 7a0:	03e00008 	jr	ra
 7a4:	00000000 	nop

000007a8 <EnAni_Update>:
 7a8:	27bdffb8 	addiu	sp,sp,-72
 7ac:	afb00024 	sw	s0,36(sp)
 7b0:	00808025 	move	s0,a0
 7b4:	afb10028 	sw	s1,40(sp)
 7b8:	00a08825 	move	s1,a1
 7bc:	afbf002c 	sw	ra,44(sp)
 7c0:	2606014c 	addiu	a2,s0,332
 7c4:	00c02825 	move	a1,a2
 7c8:	0c000000 	jal	0 <EnAni_SetupAction>
 7cc:	afa60034 	sw	a2,52(sp)
 7d0:	3c010001 	lui	at,0x1
 7d4:	34211e60 	ori	at,at,0x1e60
 7d8:	8fa60034 	lw	a2,52(sp)
 7dc:	02212821 	addu	a1,s1,at
 7e0:	0c000000 	jal	0 <EnAni_SetupAction>
 7e4:	02202025 	move	a0,s1
 7e8:	0c000000 	jal	0 <EnAni_SetupAction>
 7ec:	02002025 	move	a0,s0
 7f0:	44800000 	mtc1	zero,$f0
 7f4:	240e0004 	li	t6,4
 7f8:	afae0014 	sw	t6,20(sp)
 7fc:	44060000 	mfc1	a2,$f0
 800:	44070000 	mfc1	a3,$f0
 804:	02202025 	move	a0,s1
 808:	02002825 	move	a1,s0
 80c:	0c000000 	jal	0 <EnAni_SetupAction>
 810:	e7a00010 	swc1	$f0,16(sp)
 814:	922f1d6c 	lbu	t7,7532(s1)
 818:	11e0002c 	beqz	t7,8cc <EnAni_Update+0x124>
 81c:	00000000 	nop
 820:	8e381d8c 	lw	t8,7564(s1)
 824:	13000029 	beqz	t8,8cc <EnAni_Update+0x124>
 828:	00000000 	nop
 82c:	961902aa 	lhu	t9,682(s0)
 830:	2f210005 	sltiu	at,t9,5
 834:	1020001d 	beqz	at,8ac <EnAni_Update+0x104>
 838:	0019c880 	sll	t9,t9,0x2
 83c:	3c010000 	lui	at,0x0
 840:	00390821 	addu	at,at,t9
 844:	8c390020 	lw	t9,32(at)
 848:	03200008 	jr	t9
 84c:	00000000 	nop
 850:	02002025 	move	a0,s0
 854:	0c000000 	jal	0 <EnAni_SetupAction>
 858:	02202825 	move	a1,s1
 85c:	10000014 	b	8b0 <EnAni_Update+0x108>
 860:	96281d74 	lhu	t0,7540(s1)
 864:	02002025 	move	a0,s0
 868:	0c000000 	jal	0 <EnAni_SetupAction>
 86c:	02202825 	move	a1,s1
 870:	1000000f 	b	8b0 <EnAni_Update+0x108>
 874:	96281d74 	lhu	t0,7540(s1)
 878:	02002025 	move	a0,s0
 87c:	0c000000 	jal	0 <EnAni_SetupAction>
 880:	02202825 	move	a1,s1
 884:	1000000a 	b	8b0 <EnAni_Update+0x108>
 888:	96281d74 	lhu	t0,7540(s1)
 88c:	02002025 	move	a0,s0
 890:	0c000000 	jal	0 <EnAni_SetupAction>
 894:	02202825 	move	a1,s1
 898:	10000005 	b	8b0 <EnAni_Update+0x108>
 89c:	96281d74 	lhu	t0,7540(s1)
 8a0:	02002025 	move	a0,s0
 8a4:	0c000000 	jal	0 <EnAni_SetupAction>
 8a8:	02202825 	move	a1,s1
 8ac:	96281d74 	lhu	t0,7540(s1)
 8b0:	24010064 	li	at,100
 8b4:	55010012 	bnel	t0,at,900 <EnAni_Update+0x158>
 8b8:	960902a8 	lhu	t1,680(s0)
 8bc:	0c000000 	jal	0 <EnAni_SetupAction>
 8c0:	24041845 	li	a0,6213
 8c4:	1000000e 	b	900 <EnAni_Update+0x158>
 8c8:	960902a8 	lhu	t1,680(s0)
 8cc:	0c000000 	jal	0 <EnAni_SetupAction>
 8d0:	26040198 	addiu	a0,s0,408
 8d4:	50400005 	beqzl	v0,8ec <EnAni_Update+0x144>
 8d8:	8e1902b0 	lw	t9,688(s0)
 8dc:	44802000 	mtc1	zero,$f4
 8e0:	00000000 	nop
 8e4:	e60401b0 	swc1	$f4,432(s0)
 8e8:	8e1902b0 	lw	t9,688(s0)
 8ec:	02002025 	move	a0,s0
 8f0:	02202825 	move	a1,s1
 8f4:	0320f809 	jalr	t9
 8f8:	00000000 	nop
 8fc:	960902a8 	lhu	t1,680(s0)
 900:	2604029c 	addiu	a0,s0,668
 904:	00002825 	move	a1,zero
 908:	312a0001 	andi	t2,t1,0x1
 90c:	11400011 	beqz	t2,954 <EnAni_Update+0x1ac>
 910:	24060006 	li	a2,6
 914:	8e0c0038 	lw	t4,56(s0)
 918:	02202025 	move	a0,s1
 91c:	02002825 	move	a1,s0
 920:	afac0010 	sw	t4,16(sp)
 924:	8e0b003c 	lw	t3,60(s0)
 928:	2606029c 	addiu	a2,s0,668
 92c:	260702a2 	addiu	a3,s0,674
 930:	afab0014 	sw	t3,20(sp)
 934:	8e0c0040 	lw	t4,64(s0)
 938:	0c000000 	jal	0 <EnAni_SetupAction>
 93c:	afac0018 	sw	t4,24(sp)
 940:	a60002a6 	sh	zero,678(s0)
 944:	860302a6 	lh	v1,678(s0)
 948:	a60302a4 	sh	v1,676(s0)
 94c:	1000001a 	b	9b8 <EnAni_Update+0x210>
 950:	a60302a2 	sh	v1,674(s0)
 954:	240d0064 	li	t5,100
 958:	afad0010 	sw	t5,16(sp)
 95c:	0c000000 	jal	0 <EnAni_SetupAction>
 960:	24071838 	li	a3,6200
 964:	240e0064 	li	t6,100
 968:	afae0010 	sw	t6,16(sp)
 96c:	2604029e 	addiu	a0,s0,670
 970:	00002825 	move	a1,zero
 974:	24060006 	li	a2,6
 978:	0c000000 	jal	0 <EnAni_SetupAction>
 97c:	24071838 	li	a3,6200
 980:	240f0064 	li	t7,100
 984:	afaf0010 	sw	t7,16(sp)
 988:	260402a2 	addiu	a0,s0,674
 98c:	00002825 	move	a1,zero
 990:	24060006 	li	a2,6
 994:	0c000000 	jal	0 <EnAni_SetupAction>
 998:	24071838 	li	a3,6200
 99c:	24180064 	li	t8,100
 9a0:	afb80010 	sw	t8,16(sp)
 9a4:	260402a4 	addiu	a0,s0,676
 9a8:	00002825 	move	a1,zero
 9ac:	24060006 	li	a2,6
 9b0:	0c000000 	jal	0 <EnAni_SetupAction>
 9b4:	24071838 	li	a3,6200
 9b8:	860302ae 	lh	v1,686(s0)
 9bc:	2404003c 	li	a0,60
 9c0:	14600003 	bnez	v1,9d0 <EnAni_Update+0x228>
 9c4:	2468ffff 	addiu	t0,v1,-1
 9c8:	10000004 	b	9dc <EnAni_Update+0x234>
 9cc:	00001025 	move	v0,zero
 9d0:	a60802ae 	sh	t0,686(s0)
 9d4:	860302ae 	lh	v1,686(s0)
 9d8:	00601025 	move	v0,v1
 9dc:	54400006 	bnezl	v0,9f8 <EnAni_Update+0x250>
 9e0:	a60302ac 	sh	v1,684(s0)
 9e4:	0c000000 	jal	0 <EnAni_SetupAction>
 9e8:	2405003c 	li	a1,60
 9ec:	a60202ae 	sh	v0,686(s0)
 9f0:	860302ae 	lh	v1,686(s0)
 9f4:	a60302ac 	sh	v1,684(s0)
 9f8:	861902ac 	lh	t9,684(s0)
 9fc:	2b210003 	slti	at,t9,3
 a00:	54200003 	bnezl	at,a10 <EnAni_Update+0x268>
 a04:	8fbf002c 	lw	ra,44(sp)
 a08:	a60002ac 	sh	zero,684(s0)
 a0c:	8fbf002c 	lw	ra,44(sp)
 a10:	8fb00024 	lw	s0,36(sp)
 a14:	8fb10028 	lw	s1,40(sp)
 a18:	03e00008 	jr	ra
 a1c:	27bd0048 	addiu	sp,sp,72

00000a20 <EnAni_OverrideLimbDraw>:
 a20:	2401000f 	li	at,15
 a24:	afa40000 	sw	a0,0(sp)
 a28:	afa60008 	sw	a2,8(sp)
 a2c:	14a1000b 	bne	a1,at,a5c <EnAni_OverrideLimbDraw+0x3c>
 a30:	afa7000c 	sw	a3,12(sp)
 a34:	8fa20014 	lw	v0,20(sp)
 a38:	8fa30010 	lw	v1,16(sp)
 a3c:	844f029e 	lh	t7,670(v0)
 a40:	846e0000 	lh	t6,0(v1)
 a44:	84790004 	lh	t9,4(v1)
 a48:	01cfc021 	addu	t8,t6,t7
 a4c:	a4780000 	sh	t8,0(v1)
 a50:	8448029c 	lh	t0,668(v0)
 a54:	03284821 	addu	t1,t9,t0
 a58:	a4690004 	sh	t1,4(v1)
 a5c:	03e00008 	jr	ra
 a60:	00001025 	move	v0,zero

00000a64 <EnAni_PostLimbDraw>:
 a64:	27bdffe8 	addiu	sp,sp,-24
 a68:	2401000f 	li	at,15
 a6c:	afbf0014 	sw	ra,20(sp)
 a70:	afa40018 	sw	a0,24(sp)
 a74:	afa60020 	sw	a2,32(sp)
 a78:	14a10006 	bne	a1,at,a94 <EnAni_PostLimbDraw+0x30>
 a7c:	afa70024 	sw	a3,36(sp)
 a80:	8fa50028 	lw	a1,40(sp)
 a84:	3c040000 	lui	a0,0x0
 a88:	24840054 	addiu	a0,a0,84
 a8c:	0c000000 	jal	0 <EnAni_SetupAction>
 a90:	24a50038 	addiu	a1,a1,56
 a94:	8fbf0014 	lw	ra,20(sp)
 a98:	27bd0018 	addiu	sp,sp,24
 a9c:	03e00008 	jr	ra
 aa0:	00000000 	nop

00000aa4 <EnAni_Draw>:
 aa4:	27bdffa8 	addiu	sp,sp,-88
 aa8:	afbf002c 	sw	ra,44(sp)
 aac:	afb00028 	sw	s0,40(sp)
 ab0:	afa5005c 	sw	a1,92(sp)
 ab4:	8ca50000 	lw	a1,0(a1)
 ab8:	00808025 	move	s0,a0
 abc:	3c060000 	lui	a2,0x0
 ac0:	24c60000 	addiu	a2,a2,0
 ac4:	27a4003c 	addiu	a0,sp,60
 ac8:	240702cf 	li	a3,719
 acc:	0c000000 	jal	0 <EnAni_SetupAction>
 ad0:	afa5004c 	sw	a1,76(sp)
 ad4:	8faf005c 	lw	t7,92(sp)
 ad8:	0c000000 	jal	0 <EnAni_SetupAction>
 adc:	8de40000 	lw	a0,0(t7)
 ae0:	8fa5004c 	lw	a1,76(sp)
 ae4:	3c19db06 	lui	t9,0xdb06
 ae8:	37390020 	ori	t9,t9,0x20
 aec:	8ca302c0 	lw	v1,704(a1)
 af0:	3c040000 	lui	a0,0x0
 af4:	3c0e0000 	lui	t6,0x0
 af8:	24780008 	addiu	t8,v1,8
 afc:	acb802c0 	sw	t8,704(a1)
 b00:	ac790000 	sw	t9,0(v1)
 b04:	860802ac 	lh	t0,684(s0)
 b08:	3c0100ff 	lui	at,0xff
 b0c:	3421ffff 	ori	at,at,0xffff
 b10:	00084880 	sll	t1,t0,0x2
 b14:	00892021 	addu	a0,a0,t1
 b18:	8c840000 	lw	a0,0(a0)
 b1c:	3c080000 	lui	t0,0x0
 b20:	3c190000 	lui	t9,0x0
 b24:	00045900 	sll	t3,a0,0x4
 b28:	000b6702 	srl	t4,t3,0x1c
 b2c:	000c6880 	sll	t5,t4,0x2
 b30:	01cd7021 	addu	t6,t6,t5
 b34:	8dce0000 	lw	t6,0(t6)
 b38:	00815024 	and	t2,a0,at
 b3c:	3c018000 	lui	at,0x8000
 b40:	014e7821 	addu	t7,t2,t6
 b44:	01e1c021 	addu	t8,t7,at
 b48:	ac780004 	sw	t8,4(v1)
 b4c:	9207019a 	lbu	a3,410(s0)
 b50:	8e0601b8 	lw	a2,440(s0)
 b54:	8e05019c 	lw	a1,412(s0)
 b58:	27390000 	addiu	t9,t9,0
 b5c:	25080000 	addiu	t0,t0,0
 b60:	afa80014 	sw	t0,20(sp)
 b64:	afb90010 	sw	t9,16(sp)
 b68:	afb00018 	sw	s0,24(sp)
 b6c:	0c000000 	jal	0 <EnAni_SetupAction>
 b70:	8fa4005c 	lw	a0,92(sp)
 b74:	8fa9005c 	lw	t1,92(sp)
 b78:	3c060000 	lui	a2,0x0
 b7c:	24c60010 	addiu	a2,a2,16
 b80:	27a4003c 	addiu	a0,sp,60
 b84:	240702e0 	li	a3,736
 b88:	0c000000 	jal	0 <EnAni_SetupAction>
 b8c:	8d250000 	lw	a1,0(t1)
 b90:	8fbf002c 	lw	ra,44(sp)
 b94:	8fb00028 	lw	s0,40(sp)
 b98:	27bd0058 	addiu	sp,sp,88
 b9c:	03e00008 	jr	ra
 ba0:	00000000 	nop
	...
