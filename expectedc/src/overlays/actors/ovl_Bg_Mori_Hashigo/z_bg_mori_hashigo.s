
build/src/overlays/actors/ovl_Bg_Mori_Hashigo/z_bg_mori_hashigo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMoriHashigo_InitDynapoly>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <BgMoriHashigo_InitDynapoly+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	240600a4 	li	a2,164
  6c:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgMoriHashigo_InitCollider>:
  88:	27bdffd8 	addiu	sp,sp,-40
  8c:	00803025 	move	a2,a0
  90:	afa5002c 	sw	a1,44(sp)
  94:	00a02025 	move	a0,a1
  98:	afbf001c 	sw	ra,28(sp)
  9c:	24c50164 	addiu	a1,a2,356
  a0:	afa50020 	sw	a1,32(sp)
  a4:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
  a8:	afa60028 	sw	a2,40(sp)
  ac:	8fa60028 	lw	a2,40(sp)
  b0:	3c070000 	lui	a3,0x0
  b4:	8fa50020 	lw	a1,32(sp)
  b8:	24ce0184 	addiu	t6,a2,388
  bc:	afae0010 	sw	t6,16(sp)
  c0:	24e70044 	addiu	a3,a3,68
  c4:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
  c8:	8fa4002c 	lw	a0,44(sp)
  cc:	8fa60028 	lw	a2,40(sp)
  d0:	c4c40024 	lwc1	$f4,36(a2)
  d4:	8cd90180 	lw	t9,384(a2)
  d8:	4600218d 	trunc.w.s	$f6,$f4
  dc:	44183000 	mfc1	t8,$f6
  e0:	00000000 	nop
  e4:	a7380030 	sh	t8,48(t9)
  e8:	c4c80028 	lwc1	$f8,40(a2)
  ec:	8ccd0180 	lw	t5,384(a2)
  f0:	24190013 	li	t9,19
  f4:	4600428d 	trunc.w.s	$f10,$f8
  f8:	440b5000 	mfc1	t3,$f10
  fc:	00000000 	nop
 100:	256c0015 	addiu	t4,t3,21
 104:	a5ac0032 	sh	t4,50(t5)
 108:	c4d0002c 	lwc1	$f16,44(a2)
 10c:	8cd80180 	lw	t8,384(a2)
 110:	4600848d 	trunc.w.s	$f18,$f16
 114:	440f9000 	mfc1	t7,$f18
 118:	00000000 	nop
 11c:	a70f0034 	sh	t7,52(t8)
 120:	8cc80180 	lw	t0,384(a2)
 124:	a5190036 	sh	t9,54(t0)
 128:	8fbf001c 	lw	ra,28(sp)
 12c:	27bd0028 	addiu	sp,sp,40
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <BgMoriHashigo_SpawnLadder>:
 138:	27bdffb8 	addiu	sp,sp,-72
 13c:	afb00038 	sw	s0,56(sp)
 140:	00808025 	move	s0,a0
 144:	afbf003c 	sw	ra,60(sp)
 148:	afa5004c 	sw	a1,76(sp)
 14c:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 150:	848400b6 	lh	a0,182(a0)
 154:	e7a00040 	swc1	$f0,64(sp)
 158:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 15c:	860400b6 	lh	a0,182(s0)
 160:	3c0140c0 	lui	at,0x40c0
 164:	44818000 	mtc1	at,$f16
 168:	c6060024 	lwc1	$f6,36(s0)
 16c:	c7b20040 	lwc1	$f18,64(sp)
 170:	46008102 	mul.s	$f4,$f16,$f0
 174:	3c01c352 	lui	at,0xc352
 178:	44815000 	mtc1	at,$f10
 17c:	c6080028 	lwc1	$f8,40(s0)
 180:	8fa6004c 	lw	a2,76(sp)
 184:	02002825 	move	a1,s0
 188:	460a4300 	add.s	$f12,$f8,$f10
 18c:	240700e2 	li	a3,226
 190:	24c41c24 	addiu	a0,a2,7204
 194:	46062080 	add.s	$f2,$f4,$f6
 198:	46128102 	mul.s	$f4,$f16,$f18
 19c:	c606002c 	lwc1	$f6,44(s0)
 1a0:	e7ac0014 	swc1	$f12,20(sp)
 1a4:	e7a20010 	swc1	$f2,16(sp)
 1a8:	46062380 	add.s	$f14,$f4,$f6
 1ac:	e7ae0018 	swc1	$f14,24(sp)
 1b0:	860e0030 	lh	t6,48(s0)
 1b4:	afae001c 	sw	t6,28(sp)
 1b8:	860f0032 	lh	t7,50(s0)
 1bc:	afaf0020 	sw	t7,32(sp)
 1c0:	86180034 	lh	t8,52(s0)
 1c4:	afa00028 	sw	zero,40(sp)
 1c8:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 1cc:	afb80024 	sw	t8,36(sp)
 1d0:	10400003 	beqz	v0,1e0 <BgMoriHashigo_SpawnLadder+0xa8>
 1d4:	3c040000 	lui	a0,0x0
 1d8:	10000008 	b	1fc <BgMoriHashigo_SpawnLadder+0xc4>
 1dc:	24020001 	li	v0,1
 1e0:	3c050000 	lui	a1,0x0
 1e4:	24a50088 	addiu	a1,a1,136
 1e8:	24840058 	addiu	a0,a0,88
 1ec:	240600dc 	li	a2,220
 1f0:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 1f4:	8607001c 	lh	a3,28(s0)
 1f8:	00001025 	move	v0,zero
 1fc:	8fbf003c 	lw	ra,60(sp)
 200:	8fb00038 	lw	s0,56(sp)
 204:	27bd0048 	addiu	sp,sp,72
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <BgMoriHashigo_InitClasp>:
 210:	27bdffe0 	addiu	sp,sp,-32
 214:	afa50024 	sw	a1,36(sp)
 218:	afbf001c 	sw	ra,28(sp)
 21c:	afb00018 	sw	s0,24(sp)
 220:	3c050000 	lui	a1,0x0
 224:	00808025 	move	s0,a0
 228:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 22c:	24a50054 	addiu	a1,a1,84
 230:	8e0e0004 	lw	t6,4(s0)
 234:	02002025 	move	a0,s0
 238:	3c05425c 	lui	a1,0x425c
 23c:	35cf0001 	ori	t7,t6,0x1
 240:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 244:	ae0f0004 	sw	t7,4(s0)
 248:	02002025 	move	a0,s0
 24c:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 250:	8fa50024 	lw	a1,36(sp)
 254:	8618001c 	lh	t8,28(s0)
 258:	2401ffff 	li	at,-1
 25c:	02002025 	move	a0,s0
 260:	57010008 	bnel	t8,at,284 <BgMoriHashigo_InitClasp+0x74>
 264:	24020001 	li	v0,1
 268:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 26c:	8fa50024 	lw	a1,36(sp)
 270:	54400004 	bnezl	v0,284 <BgMoriHashigo_InitClasp+0x74>
 274:	24020001 	li	v0,1
 278:	10000002 	b	284 <BgMoriHashigo_InitClasp+0x74>
 27c:	00001025 	move	v0,zero
 280:	24020001 	li	v0,1
 284:	8fbf001c 	lw	ra,28(sp)
 288:	8fb00018 	lw	s0,24(sp)
 28c:	27bd0020 	addiu	sp,sp,32
 290:	03e00008 	jr	ra
 294:	00000000 	nop

00000298 <BgMoriHashigo_InitLadder>:
 298:	27bdffe8 	addiu	sp,sp,-24
 29c:	afbf0014 	sw	ra,20(sp)
 2a0:	3c060000 	lui	a2,0x0
 2a4:	afa40018 	sw	a0,24(sp)
 2a8:	24c60000 	addiu	a2,a2,0
 2ac:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 2b0:	00003825 	move	a3,zero
 2b4:	3c050000 	lui	a1,0x0
 2b8:	24a5006c 	addiu	a1,a1,108
 2bc:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 2c0:	8fa40018 	lw	a0,24(sp)
 2c4:	8fbf0014 	lw	ra,20(sp)
 2c8:	27bd0018 	addiu	sp,sp,24
 2cc:	24020001 	li	v0,1
 2d0:	03e00008 	jr	ra
 2d4:	00000000 	nop

000002d8 <BgMoriHashigo_Init>:
 2d8:	27bdffe0 	addiu	sp,sp,-32
 2dc:	afbf001c 	sw	ra,28(sp)
 2e0:	afb00018 	sw	s0,24(sp)
 2e4:	afa50024 	sw	a1,36(sp)
 2e8:	8482001c 	lh	v0,28(a0)
 2ec:	2401ffff 	li	at,-1
 2f0:	00808025 	move	s0,a0
 2f4:	14410009 	bne	v0,at,31c <BgMoriHashigo_Init+0x44>
 2f8:	00000000 	nop
 2fc:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 300:	00000000 	nop
 304:	54400010 	bnezl	v0,348 <BgMoriHashigo_Init+0x70>
 308:	8fa40024 	lw	a0,36(sp)
 30c:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 310:	02002025 	move	a0,s0
 314:	10000026 	b	3b0 <BgMoriHashigo_Init+0xd8>
 318:	8fbf001c 	lw	ra,28(sp)
 31c:	14400009 	bnez	v0,344 <BgMoriHashigo_Init+0x6c>
 320:	02002025 	move	a0,s0
 324:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 328:	8fa50024 	lw	a1,36(sp)
 32c:	54400006 	bnezl	v0,348 <BgMoriHashigo_Init+0x70>
 330:	8fa40024 	lw	a0,36(sp)
 334:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 338:	02002025 	move	a0,s0
 33c:	1000001c 	b	3b0 <BgMoriHashigo_Init+0xd8>
 340:	8fbf001c 	lw	ra,28(sp)
 344:	8fa40024 	lw	a0,36(sp)
 348:	3c010001 	lui	at,0x1
 34c:	342117a4 	ori	at,at,0x17a4
 350:	24050073 	li	a1,115
 354:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 358:	00812021 	addu	a0,a0,at
 35c:	a20201cc 	sb	v0,460(s0)
 360:	820e01cc 	lb	t6,460(s0)
 364:	3c040000 	lui	a0,0x0
 368:	248400a0 	addiu	a0,a0,160
 36c:	05c10009 	bgez	t6,394 <BgMoriHashigo_Init+0xbc>
 370:	3c060000 	lui	a2,0x0
 374:	8605001c 	lh	a1,28(s0)
 378:	24c600d0 	addiu	a2,a2,208
 37c:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 380:	24070138 	li	a3,312
 384:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 388:	02002025 	move	a0,s0
 38c:	10000008 	b	3b0 <BgMoriHashigo_Init+0xd8>
 390:	8fbf001c 	lw	ra,28(sp)
 394:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 398:	02002025 	move	a0,s0
 39c:	3c040000 	lui	a0,0x0
 3a0:	248400e8 	addiu	a0,a0,232
 3a4:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 3a8:	8605001c 	lh	a1,28(s0)
 3ac:	8fbf001c 	lw	ra,28(sp)
 3b0:	8fb00018 	lw	s0,24(sp)
 3b4:	27bd0020 	addiu	sp,sp,32
 3b8:	03e00008 	jr	ra
 3bc:	00000000 	nop

000003c0 <BgMoriHashigo_Destroy>:
 3c0:	27bdffe8 	addiu	sp,sp,-24
 3c4:	afbf0014 	sw	ra,20(sp)
 3c8:	afa5001c 	sw	a1,28(sp)
 3cc:	8482001c 	lh	v0,28(a0)
 3d0:	00803825 	move	a3,a0
 3d4:	00a02025 	move	a0,a1
 3d8:	14400006 	bnez	v0,3f4 <BgMoriHashigo_Destroy+0x34>
 3dc:	24a50810 	addiu	a1,a1,2064
 3e0:	8ce6014c 	lw	a2,332(a3)
 3e4:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 3e8:	afa70018 	sw	a3,24(sp)
 3ec:	8fa70018 	lw	a3,24(sp)
 3f0:	84e2001c 	lh	v0,28(a3)
 3f4:	2401ffff 	li	at,-1
 3f8:	14410003 	bne	v0,at,408 <BgMoriHashigo_Destroy+0x48>
 3fc:	8fa4001c 	lw	a0,28(sp)
 400:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 404:	24e50164 	addiu	a1,a3,356
 408:	8fbf0014 	lw	ra,20(sp)
 40c:	27bd0018 	addiu	sp,sp,24
 410:	03e00008 	jr	ra
 414:	00000000 	nop

00000418 <BgMoriHashigo_SetupWaitForMoriTex>:
 418:	3c0e0000 	lui	t6,0x0
 41c:	25ce0000 	addiu	t6,t6,0
 420:	03e00008 	jr	ra
 424:	ac8e01c4 	sw	t6,452(a0)

00000428 <BgMoriHashigo_WaitForMoriTex>:
 428:	27bdffe0 	addiu	sp,sp,-32
 42c:	afb00018 	sw	s0,24(sp)
 430:	3c010001 	lui	at,0x1
 434:	00808025 	move	s0,a0
 438:	342117a4 	ori	at,at,0x17a4
 43c:	afbf001c 	sw	ra,28(sp)
 440:	00a12021 	addu	a0,a1,at
 444:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 448:	820501cc 	lb	a1,460(s0)
 44c:	50400011 	beqzl	v0,494 <BgMoriHashigo_WaitForMoriTex+0x6c>
 450:	8fbf001c 	lw	ra,28(sp)
 454:	8602001c 	lh	v0,28(s0)
 458:	2401ffff 	li	at,-1
 45c:	14410005 	bne	v0,at,474 <BgMoriHashigo_WaitForMoriTex+0x4c>
 460:	00000000 	nop
 464:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 468:	02002025 	move	a0,s0
 46c:	10000005 	b	484 <BgMoriHashigo_WaitForMoriTex+0x5c>
 470:	00000000 	nop
 474:	14400003 	bnez	v0,484 <BgMoriHashigo_WaitForMoriTex+0x5c>
 478:	00000000 	nop
 47c:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 480:	02002025 	move	a0,s0
 484:	3c0e0000 	lui	t6,0x0
 488:	25ce0000 	addiu	t6,t6,0
 48c:	ae0e0134 	sw	t6,308(s0)
 490:	8fbf001c 	lw	ra,28(sp)
 494:	8fb00018 	lw	s0,24(sp)
 498:	27bd0020 	addiu	sp,sp,32
 49c:	03e00008 	jr	ra
 4a0:	00000000 	nop

000004a4 <BgMoriHashigo_SetupClasp>:
 4a4:	3c0e0000 	lui	t6,0x0
 4a8:	25ce0000 	addiu	t6,t6,0
 4ac:	03e00008 	jr	ra
 4b0:	ac8e01c4 	sw	t6,452(a0)

000004b4 <BgMoriHashigo_Clasp>:
 4b4:	27bdffe8 	addiu	sp,sp,-24
 4b8:	afbf0014 	sw	ra,20(sp)
 4bc:	afa5001c 	sw	a1,28(sp)
 4c0:	848e01c8 	lh	t6,456(a0)
 4c4:	00803825 	move	a3,a0
 4c8:	5dc00010 	bgtzl	t6,50c <BgMoriHashigo_Clasp+0x58>
 4cc:	8fbf0014 	lw	ra,20(sp)
 4d0:	90820175 	lbu	v0,373(a0)
 4d4:	3c010001 	lui	at,0x1
 4d8:	34211e60 	ori	at,at,0x1e60
 4dc:	304f0002 	andi	t7,v0,0x2
 4e0:	11e00005 	beqz	t7,4f8 <BgMoriHashigo_Clasp+0x44>
 4e4:	3058fffd 	andi	t8,v0,0xfffd
 4e8:	2419000a 	li	t9,10
 4ec:	a0980175 	sb	t8,373(a0)
 4f0:	10000005 	b	508 <BgMoriHashigo_Clasp+0x54>
 4f4:	a49901c8 	sh	t9,456(a0)
 4f8:	8fa4001c 	lw	a0,28(sp)
 4fc:	24e60164 	addiu	a2,a3,356
 500:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 504:	00812821 	addu	a1,a0,at
 508:	8fbf0014 	lw	ra,20(sp)
 50c:	27bd0018 	addiu	sp,sp,24
 510:	03e00008 	jr	ra
 514:	00000000 	nop

00000518 <BgMoriHashigo_SetupLadderWait>:
 518:	3c0e0000 	lui	t6,0x0
 51c:	25ce0000 	addiu	t6,t6,0
 520:	03e00008 	jr	ra
 524:	ac8e01c4 	sw	t6,452(a0)

00000528 <BgMoriHashigo_LadderWait>:
 528:	27bdffe8 	addiu	sp,sp,-24
 52c:	afbf0014 	sw	ra,20(sp)
 530:	afa5001c 	sw	a1,28(sp)
 534:	8c820118 	lw	v0,280(a0)
 538:	844e01c8 	lh	t6,456(v0)
 53c:	59c00004 	blezl	t6,550 <BgMoriHashigo_LadderWait+0x28>
 540:	8fbf0014 	lw	ra,20(sp)
 544:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 548:	00000000 	nop
 54c:	8fbf0014 	lw	ra,20(sp)
 550:	27bd0018 	addiu	sp,sp,24
 554:	03e00008 	jr	ra
 558:	00000000 	nop

0000055c <BgMoriHashigo_SetupLadderFall>:
 55c:	3c01bf80 	lui	at,0xbf80
 560:	44812000 	mtc1	at,$f4
 564:	3c01c120 	lui	at,0xc120
 568:	44813000 	mtc1	at,$f6
 56c:	3c014000 	lui	at,0x4000
 570:	44814000 	mtc1	at,$f8
 574:	3c0e0000 	lui	t6,0x0
 578:	25ce0000 	addiu	t6,t6,0
 57c:	a48001ca 	sh	zero,458(a0)
 580:	ac8e01c4 	sw	t6,452(a0)
 584:	e484006c 	swc1	$f4,108(a0)
 588:	e4860070 	swc1	$f6,112(a0)
 58c:	03e00008 	jr	ra
 590:	e4880060 	swc1	$f8,96(a0)

00000594 <BgMoriHashigo_LadderFall>:
 594:	27bdffd8 	addiu	sp,sp,-40
 598:	afbf0024 	sw	ra,36(sp)
 59c:	afb00020 	sw	s0,32(sp)
 5a0:	00808025 	move	s0,a0
 5a4:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 5a8:	afa5002c 	sw	a1,44(sp)
 5ac:	960e0088 	lhu	t6,136(s0)
 5b0:	8fa4002c 	lw	a0,44(sp)
 5b4:	02002825 	move	a1,s0
 5b8:	31cf0001 	andi	t7,t6,0x1
 5bc:	51e00021 	beqzl	t7,644 <BgMoriHashigo_LadderFall+0xb0>
 5c0:	44800000 	mtc1	zero,$f0
 5c4:	44800000 	mtc1	zero,$f0
 5c8:	c6040060 	lwc1	$f4,96(s0)
 5cc:	4600203c 	c.lt.s	$f4,$f0
 5d0:	00000000 	nop
 5d4:	4502001b 	bc1fl	644 <BgMoriHashigo_LadderFall+0xb0>
 5d8:	44800000 	mtc1	zero,$f0
 5dc:	861801ca 	lh	t8,458(s0)
 5e0:	02002825 	move	a1,s0
 5e4:	2419001c 	li	t9,28
 5e8:	2b010003 	slti	at,t8,3
 5ec:	54200006 	bnezl	at,608 <BgMoriHashigo_LadderFall+0x74>
 5f0:	44060000 	mfc1	a2,$f0
 5f4:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 5f8:	02002025 	move	a0,s0
 5fc:	10000018 	b	660 <BgMoriHashigo_LadderFall+0xcc>
 600:	8fbf0024 	lw	ra,36(sp)
 604:	44060000 	mfc1	a2,$f0
 608:	44070000 	mfc1	a3,$f0
 60c:	e7a00010 	swc1	$f0,16(sp)
 610:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 614:	afb90014 	sw	t9,20(sp)
 618:	860801ca 	lh	t0,458(s0)
 61c:	860a01ca 	lh	t2,458(s0)
 620:	3c010000 	lui	at,0x0
 624:	00084880 	sll	t1,t0,0x2
 628:	00290821 	addu	at,at,t1
 62c:	c426007c 	lwc1	$f6,124(at)
 630:	254b0001 	addiu	t3,t2,1
 634:	a60b01ca 	sh	t3,458(s0)
 638:	10000008 	b	65c <BgMoriHashigo_LadderFall+0xc8>
 63c:	e6060060 	swc1	$f6,96(s0)
 640:	44800000 	mtc1	zero,$f0
 644:	240c001c 	li	t4,28
 648:	afac0014 	sw	t4,20(sp)
 64c:	44060000 	mfc1	a2,$f0
 650:	44070000 	mfc1	a3,$f0
 654:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 658:	e7a00010 	swc1	$f0,16(sp)
 65c:	8fbf0024 	lw	ra,36(sp)
 660:	8fb00020 	lw	s0,32(sp)
 664:	27bd0028 	addiu	sp,sp,40
 668:	03e00008 	jr	ra
 66c:	00000000 	nop

00000670 <BgMoriHashigo_SetupLadderRest>:
 670:	44800000 	mtc1	zero,$f0
 674:	c4840080 	lwc1	$f4,128(a0)
 678:	ac8001c4 	sw	zero,452(a0)
 67c:	e480006c 	swc1	$f0,108(a0)
 680:	e4800060 	swc1	$f0,96(a0)
 684:	03e00008 	jr	ra
 688:	e4840028 	swc1	$f4,40(a0)

0000068c <BgMoriHashigo_Update>:
 68c:	27bdffe8 	addiu	sp,sp,-24
 690:	afbf0014 	sw	ra,20(sp)
 694:	848201c8 	lh	v0,456(a0)
 698:	18400002 	blez	v0,6a4 <BgMoriHashigo_Update+0x18>
 69c:	244effff 	addiu	t6,v0,-1
 6a0:	a48e01c8 	sh	t6,456(a0)
 6a4:	8c8201c4 	lw	v0,452(a0)
 6a8:	50400004 	beqzl	v0,6bc <BgMoriHashigo_Update+0x30>
 6ac:	8fbf0014 	lw	ra,20(sp)
 6b0:	0040f809 	jalr	v0
 6b4:	00000000 	nop
 6b8:	8fbf0014 	lw	ra,20(sp)
 6bc:	27bd0018 	addiu	sp,sp,24
 6c0:	03e00008 	jr	ra
 6c4:	00000000 	nop

000006c8 <BgMoriHashigo_Draw>:
 6c8:	27bdffb0 	addiu	sp,sp,-80
 6cc:	afbf0014 	sw	ra,20(sp)
 6d0:	afa40050 	sw	a0,80(sp)
 6d4:	afa50054 	sw	a1,84(sp)
 6d8:	8ca50000 	lw	a1,0(a1)
 6dc:	3c060000 	lui	a2,0x0
 6e0:	24c60118 	addiu	a2,a2,280
 6e4:	27a40034 	addiu	a0,sp,52
 6e8:	24070204 	li	a3,516
 6ec:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 6f0:	afa50044 	sw	a1,68(sp)
 6f4:	8faf0054 	lw	t7,84(sp)
 6f8:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 6fc:	8de40000 	lw	a0,0(t7)
 700:	8fa80044 	lw	t0,68(sp)
 704:	8fa70054 	lw	a3,84(sp)
 708:	3c19db06 	lui	t9,0xdb06
 70c:	8d0202c0 	lw	v0,704(t0)
 710:	37390020 	ori	t9,t9,0x20
 714:	3c0d0001 	lui	t5,0x1
 718:	24580008 	addiu	t8,v0,8
 71c:	ad1802c0 	sw	t8,704(t0)
 720:	ac590000 	sw	t9,0(v0)
 724:	8fa90050 	lw	t1,80(sp)
 728:	3c0fda38 	lui	t7,0xda38
 72c:	35ef0003 	ori	t7,t7,0x3
 730:	812a01cc 	lb	t2,460(t1)
 734:	3c050000 	lui	a1,0x0
 738:	24a50130 	addiu	a1,a1,304
 73c:	000a5900 	sll	t3,t2,0x4
 740:	016a5821 	addu	t3,t3,t2
 744:	000b5880 	sll	t3,t3,0x2
 748:	00eb6021 	addu	t4,a3,t3
 74c:	01ac6821 	addu	t5,t5,t4
 750:	8dad17b4 	lw	t5,6068(t5)
 754:	24060209 	li	a2,521
 758:	ac4d0004 	sw	t5,4(v0)
 75c:	8d0202c0 	lw	v0,704(t0)
 760:	244e0008 	addiu	t6,v0,8
 764:	ad0e02c0 	sw	t6,704(t0)
 768:	ac4f0000 	sw	t7,0(v0)
 76c:	8ce40000 	lw	a0,0(a3)
 770:	afa80044 	sw	t0,68(sp)
 774:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 778:	afa2002c 	sw	v0,44(sp)
 77c:	8fa3002c 	lw	v1,44(sp)
 780:	8fa80044 	lw	t0,68(sp)
 784:	2401ffff 	li	at,-1
 788:	ac620004 	sw	v0,4(v1)
 78c:	8fb80050 	lw	t8,80(sp)
 790:	3c060000 	lui	a2,0x0
 794:	3c09de00 	lui	t1,0xde00
 798:	8702001c 	lh	v0,28(t8)
 79c:	24c60148 	addiu	a2,a2,328
 7a0:	27a40034 	addiu	a0,sp,52
 7a4:	50410006 	beql	v0,at,7c0 <BgMoriHashigo_Draw+0xf8>
 7a8:	8d0202c0 	lw	v0,704(t0)
 7ac:	1040000b 	beqz	v0,7dc <BgMoriHashigo_Draw+0x114>
 7b0:	3c0cde00 	lui	t4,0xde00
 7b4:	10000011 	b	7fc <BgMoriHashigo_Draw+0x134>
 7b8:	8fae0054 	lw	t6,84(sp)
 7bc:	8d0202c0 	lw	v0,704(t0)
 7c0:	3c0a0000 	lui	t2,0x0
 7c4:	254a0000 	addiu	t2,t2,0
 7c8:	24590008 	addiu	t9,v0,8
 7cc:	ad1902c0 	sw	t9,704(t0)
 7d0:	ac4a0004 	sw	t2,4(v0)
 7d4:	10000008 	b	7f8 <BgMoriHashigo_Draw+0x130>
 7d8:	ac490000 	sw	t1,0(v0)
 7dc:	8d0202c0 	lw	v0,704(t0)
 7e0:	3c0d0000 	lui	t5,0x0
 7e4:	25ad0000 	addiu	t5,t5,0
 7e8:	244b0008 	addiu	t3,v0,8
 7ec:	ad0b02c0 	sw	t3,704(t0)
 7f0:	ac4d0004 	sw	t5,4(v0)
 7f4:	ac4c0000 	sw	t4,0(v0)
 7f8:	8fae0054 	lw	t6,84(sp)
 7fc:	24070213 	li	a3,531
 800:	0c000000 	jal	0 <BgMoriHashigo_InitDynapoly>
 804:	8dc50000 	lw	a1,0(t6)
 808:	8fbf0014 	lw	ra,20(sp)
 80c:	27bd0050 	addiu	sp,sp,80
 810:	03e00008 	jr	ra
 814:	00000000 	nop
	...
