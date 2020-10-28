
build/src/overlays/actors/ovl_Arms_Hook/z_arms_hook.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ArmsHook_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850214 	sw	a1,532(a0)

00000008 <ArmsHook_Init>:
   8:	27bdffd8 	addiu	sp,sp,-40
   c:	afb00018 	sw	s0,24(sp)
  10:	00808025 	move	s0,a0
  14:	afa5002c 	sw	a1,44(sp)
  18:	00a02025 	move	a0,a1
  1c:	afbf001c 	sw	ra,28(sp)
  20:	2605014c 	addiu	a1,s0,332
  24:	0c000000 	jal	0 <ArmsHook_SetupAction>
  28:	afa50020 	sw	a1,32(sp)
  2c:	3c070000 	lui	a3,0x0
  30:	8fa50020 	lw	a1,32(sp)
  34:	24e70000 	addiu	a3,a3,0
  38:	8fa4002c 	lw	a0,44(sp)
  3c:	0c000000 	jal	0 <ArmsHook_SetupAction>
  40:	02003025 	move	a2,s0
  44:	3c050000 	lui	a1,0x0
  48:	24a50000 	addiu	a1,a1,0
  4c:	0c000000 	jal	0 <ArmsHook_SetupAction>
  50:	02002025 	move	a0,s0
  54:	8e0f0024 	lw	t7,36(s0)
  58:	8e0e0028 	lw	t6,40(s0)
  5c:	ae0f01e8 	sw	t7,488(s0)
  60:	8e0f002c 	lw	t7,44(s0)
  64:	ae0e01ec 	sw	t6,492(s0)
  68:	ae0f01f0 	sw	t7,496(s0)
  6c:	8fbf001c 	lw	ra,28(sp)
  70:	8fb00018 	lw	s0,24(sp)
  74:	27bd0028 	addiu	sp,sp,40
  78:	03e00008 	jr	ra
  7c:	00000000 	nop

00000080 <ArmsHook_Destroy>:
  80:	27bdffe8 	addiu	sp,sp,-24
  84:	afbf0014 	sw	ra,20(sp)
  88:	8c820200 	lw	v0,512(a0)
  8c:	00803025 	move	a2,a0
  90:	00a03825 	move	a3,a1
  94:	10400005 	beqz	v0,ac <ArmsHook_Destroy+0x2c>
  98:	00e02025 	move	a0,a3
  9c:	8c4e0004 	lw	t6,4(v0)
  a0:	2401dfff 	li	at,-8193
  a4:	01c17824 	and	t7,t6,at
  a8:	ac4f0004 	sw	t7,4(v0)
  ac:	0c000000 	jal	0 <ArmsHook_SetupAction>
  b0:	24c5014c 	addiu	a1,a2,332
  b4:	8fbf0014 	lw	ra,20(sp)
  b8:	27bd0018 	addiu	sp,sp,24
  bc:	03e00008 	jr	ra
  c0:	00000000 	nop

000000c4 <ArmsHook_Wait>:
  c4:	27bdffe0 	addiu	sp,sp,-32
  c8:	afbf0014 	sw	ra,20(sp)
  cc:	afa50024 	sw	a1,36(sp)
  d0:	8c8e0118 	lw	t6,280(a0)
  d4:	55c00018 	bnezl	t6,138 <ArmsHook_Wait+0x74>
  d8:	8fbf0014 	lw	ra,20(sp)
  dc:	8ca21c44 	lw	v0,7236(a1)
  e0:	24010010 	li	at,16
  e4:	3c050000 	lui	a1,0x0
  e8:	80580151 	lb	t8,337(v0)
  ec:	2402001a 	li	v0,26
  f0:	24a50000 	addiu	a1,a1,0
  f4:	17010003 	bne	t8,at,104 <ArmsHook_Wait+0x40>
  f8:	00000000 	nop
  fc:	10000001 	b	104 <ArmsHook_Wait+0x40>
 100:	2402000d 	li	v0,13
 104:	afa20018 	sw	v0,24(sp)
 108:	0c000000 	jal	0 <ArmsHook_SetupAction>
 10c:	afa40020 	sw	a0,32(sp)
 110:	8fa40020 	lw	a0,32(sp)
 114:	0c000000 	jal	0 <ArmsHook_SetupAction>
 118:	3c0541a0 	lui	a1,0x41a0
 11c:	8fb90024 	lw	t9,36(sp)
 120:	8fa40020 	lw	a0,32(sp)
 124:	8fa20018 	lw	v0,24(sp)
 128:	8f281c44 	lw	t0,7236(t9)
 12c:	a4820210 	sh	v0,528(a0)
 130:	ac880118 	sw	t0,280(a0)
 134:	8fbf0014 	lw	ra,20(sp)
 138:	27bd0020 	addiu	sp,sp,32
 13c:	03e00008 	jr	ra
 140:	00000000 	nop

00000144 <func_80865044>:
 144:	8c820118 	lw	v0,280(a0)
 148:	ac82011c 	sw	v0,284(a0)
 14c:	03e00008 	jr	ra
 150:	ac440118 	sw	a0,280(v0)

00000154 <ArmsHook_AttachToPlayer>:
 154:	aca4011c 	sw	a0,284(a1)
 158:	aca403ac 	sw	a0,940(a1)
 15c:	8c8e011c 	lw	t6,284(a0)
 160:	00001025 	move	v0,zero
 164:	11c00005 	beqz	t6,17c <ArmsHook_AttachToPlayer+0x28>
 168:	00000000 	nop
 16c:	aca00118 	sw	zero,280(a1)
 170:	ac80011c 	sw	zero,284(a0)
 174:	03e00008 	jr	ra
 178:	24020001 	li	v0,1
 17c:	03e00008 	jr	ra
 180:	00000000 	nop

00000184 <ArmsHook_DetachHookFromActor>:
 184:	8c820200 	lw	v0,512(a0)
 188:	10400006 	beqz	v0,1a4 <ArmsHook_DetachHookFromActor+0x20>
 18c:	00000000 	nop
 190:	8c4e0004 	lw	t6,4(v0)
 194:	2401dfff 	li	at,-8193
 198:	01c17824 	and	t7,t6,at
 19c:	ac4f0004 	sw	t7,4(v0)
 1a0:	ac800200 	sw	zero,512(a0)
 1a4:	03e00008 	jr	ra
 1a8:	00000000 	nop

000001ac <ArmsHook_CheckForCancel>:
 1ac:	27bdffe0 	addiu	sp,sp,-32
 1b0:	afbf0014 	sw	ra,20(sp)
 1b4:	afa40020 	sw	a0,32(sp)
 1b8:	8c860118 	lw	a2,280(a0)
 1bc:	00c02025 	move	a0,a2
 1c0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 1c4:	afa6001c 	sw	a2,28(sp)
 1c8:	1040001a 	beqz	v0,234 <ArmsHook_CheckForCancel+0x88>
 1cc:	8fa6001c 	lw	a2,28(sp)
 1d0:	80cf0151 	lb	t7,337(a2)
 1d4:	80d80154 	lb	t8,340(a2)
 1d8:	8fa40020 	lw	a0,32(sp)
 1dc:	55f8000c 	bnel	t7,t8,210 <ArmsHook_CheckForCancel+0x64>
 1e0:	a4800210 	sh	zero,528(a0)
 1e4:	8cd90004 	lw	t9,4(a2)
 1e8:	33280100 	andi	t0,t9,0x100
 1ec:	55000008 	bnezl	t0,210 <ArmsHook_CheckForCancel+0x64>
 1f0:	a4800210 	sh	zero,528(a0)
 1f4:	8cc9067c 	lw	t1,1660(a2)
 1f8:	3c010400 	lui	at,0x400
 1fc:	34210080 	ori	at,at,0x80
 200:	01215024 	and	t2,t1,at
 204:	5140000c 	beqzl	t2,238 <ArmsHook_CheckForCancel+0x8c>
 208:	00001025 	move	v0,zero
 20c:	a4800210 	sh	zero,528(a0)
 210:	0c000000 	jal	0 <ArmsHook_SetupAction>
 214:	afa6001c 	sw	a2,28(sp)
 218:	8fa6001c 	lw	a2,28(sp)
 21c:	8fa40020 	lw	a0,32(sp)
 220:	24c503c8 	addiu	a1,a2,968
 224:	0c000000 	jal	0 <ArmsHook_SetupAction>
 228:	24840024 	addiu	a0,a0,36
 22c:	10000002 	b	238 <ArmsHook_CheckForCancel+0x8c>
 230:	24020001 	li	v0,1
 234:	00001025 	move	v0,zero
 238:	8fbf0014 	lw	ra,20(sp)
 23c:	27bd0020 	addiu	sp,sp,32
 240:	03e00008 	jr	ra
 244:	00000000 	nop

00000248 <ArmsHook_AttachHookToActor>:
 248:	27bdffe8 	addiu	sp,sp,-24
 24c:	afbf0014 	sw	ra,20(sp)
 250:	afa40018 	sw	a0,24(sp)
 254:	8cae0004 	lw	t6,4(a1)
 258:	24a40024 	addiu	a0,a1,36
 25c:	35cf2000 	ori	t7,t6,0x2000
 260:	acaf0004 	sw	t7,4(a1)
 264:	8fb80018 	lw	t8,24(sp)
 268:	af050200 	sw	a1,512(t8)
 26c:	8fb90018 	lw	t9,24(sp)
 270:	27250024 	addiu	a1,t9,36
 274:	0c000000 	jal	0 <ArmsHook_SetupAction>
 278:	27260204 	addiu	a2,t9,516
 27c:	8fbf0014 	lw	ra,20(sp)
 280:	27bd0018 	addiu	sp,sp,24
 284:	03e00008 	jr	ra
 288:	00000000 	nop

0000028c <ArmsHook_Shoot>:
 28c:	27bdff38 	addiu	sp,sp,-200
 290:	afbf0034 	sw	ra,52(sp)
 294:	afb00030 	sw	s0,48(sp)
 298:	afa500cc 	sw	a1,204(sp)
 29c:	8c8f0118 	lw	t7,280(a0)
 2a0:	8ca61c44 	lw	a2,7236(a1)
 2a4:	00808025 	move	s0,a0
 2a8:	11e00005 	beqz	t7,2c0 <ArmsHook_Shoot+0x34>
 2ac:	00c02025 	move	a0,a2
 2b0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 2b4:	afa600c4 	sw	a2,196(sp)
 2b8:	14400007 	bnez	v0,2d8 <ArmsHook_Shoot+0x4c>
 2bc:	8fa400c4 	lw	a0,196(sp)
 2c0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 2c4:	02002025 	move	a0,s0
 2c8:	0c000000 	jal	0 <ArmsHook_SetupAction>
 2cc:	02002025 	move	a0,s0
 2d0:	10000182 	b	8dc <ArmsHook_Shoot+0x650>
 2d4:	8fbf0034 	lw	ra,52(sp)
 2d8:	0c000000 	jal	0 <ArmsHook_SetupAction>
 2dc:	2405100b 	li	a1,4107
 2e0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 2e4:	02002025 	move	a0,s0
 2e8:	86030210 	lh	v1,528(s0)
 2ec:	1060002e 	beqz	v1,3a8 <ArmsHook_Shoot+0x11c>
 2f0:	00000000 	nop
 2f4:	9218015c 	lbu	t8,348(s0)
 2f8:	33190002 	andi	t9,t8,0x2
 2fc:	1320002a 	beqz	t9,3a8 <ArmsHook_Shoot+0x11c>
 300:	00000000 	nop
 304:	8e020184 	lw	v0,388(s0)
 308:	24010004 	li	at,4
 30c:	90480014 	lbu	t0,20(v0)
 310:	11010025 	beq	t0,at,3a8 <ArmsHook_Shoot+0x11c>
 314:	00000000 	nop
 318:	8e050150 	lw	a1,336(s0)
 31c:	8ca90130 	lw	t1,304(a1)
 320:	11200014 	beqz	t1,374 <ArmsHook_Shoot+0xe8>
 324:	00000000 	nop
 328:	8caa0004 	lw	t2,4(a1)
 32c:	314b0600 	andi	t3,t2,0x600
 330:	11600010 	beqz	t3,374 <ArmsHook_Shoot+0xe8>
 334:	00000000 	nop
 338:	904c0016 	lbu	t4,22(v0)
 33c:	02002025 	move	a0,s0
 340:	318d0004 	andi	t5,t4,0x4
 344:	11a0000b 	beqz	t5,374 <ArmsHook_Shoot+0xe8>
 348:	00000000 	nop
 34c:	0c000000 	jal	0 <ArmsHook_SetupAction>
 350:	afa500c0 	sw	a1,192(sp)
 354:	8fa500c0 	lw	a1,192(sp)
 358:	24010400 	li	at,1024
 35c:	8cae0004 	lw	t6,4(a1)
 360:	31cf0400 	andi	t7,t6,0x400
 364:	15e10003 	bne	t7,at,374 <ArmsHook_Shoot+0xe8>
 368:	00000000 	nop
 36c:	0c000000 	jal	0 <ArmsHook_SetupAction>
 370:	02002025 	move	a0,s0
 374:	3c070000 	lui	a3,0x0
 378:	3c180000 	lui	t8,0x0
 37c:	24e70000 	addiu	a3,a3,0
 380:	a6000210 	sh	zero,528(s0)
 384:	27180000 	addiu	t8,t8,0
 388:	afb80014 	sw	t8,20(sp)
 38c:	afa70010 	sw	a3,16(sp)
 390:	24041814 	li	a0,6164
 394:	260500e4 	addiu	a1,s0,228
 398:	0c000000 	jal	0 <ArmsHook_SetupAction>
 39c:	24060004 	li	a2,4
 3a0:	1000014e 	b	8dc <ArmsHook_Shoot+0x650>
 3a4:	8fbf0034 	lw	ra,52(sp)
 3a8:	14600003 	bnez	v1,3b8 <ArmsHook_Shoot+0x12c>
 3ac:	2479ffff 	addiu	t9,v1,-1
 3b0:	10000003 	b	3c0 <ArmsHook_Shoot+0x134>
 3b4:	00001025 	move	v0,zero
 3b8:	a6190210 	sh	t9,528(s0)
 3bc:	86020210 	lh	v0,528(s0)
 3c0:	144000b8 	bnez	v0,6a4 <ArmsHook_Shoot+0x418>
 3c4:	00000000 	nop
 3c8:	8e070200 	lw	a3,512(s0)
 3cc:	50e00031 	beqzl	a3,494 <ArmsHook_Shoot+0x208>
 3d0:	8fa400c4 	lw	a0,196(sp)
 3d4:	8ce80130 	lw	t0,304(a3)
 3d8:	51000007 	beqzl	t0,3f8 <ArmsHook_Shoot+0x16c>
 3dc:	00003825 	move	a3,zero
 3e0:	8ce90004 	lw	t1,4(a3)
 3e4:	24012000 	li	at,8192
 3e8:	312a2000 	andi	t2,t1,0x2000
 3ec:	51410005 	beql	t2,at,404 <ArmsHook_Shoot+0x178>
 3f0:	8e0b011c 	lw	t3,284(s0)
 3f4:	00003825 	move	a3,zero
 3f8:	10000025 	b	490 <ArmsHook_Shoot+0x204>
 3fc:	ae000200 	sw	zero,512(s0)
 400:	8e0b011c 	lw	t3,284(s0)
 404:	02002025 	move	a0,s0
 408:	00e02825 	move	a1,a3
 40c:	51600021 	beqzl	t3,494 <ArmsHook_Shoot+0x208>
 410:	8fa400c4 	lw	a0,196(sp)
 414:	0c000000 	jal	0 <ArmsHook_SetupAction>
 418:	afa700bc 	sw	a3,188(sp)
 41c:	e7a00094 	swc1	$f0,148(sp)
 420:	c6020204 	lwc1	$f2,516(s0)
 424:	c60c0208 	lwc1	$f12,520(s0)
 428:	c60e020c 	lwc1	$f14,524(s0)
 42c:	46021102 	mul.s	$f4,$f2,$f2
 430:	8fa700bc 	lw	a3,188(sp)
 434:	26050204 	addiu	a1,s0,516
 438:	460c6182 	mul.s	$f6,$f12,$f12
 43c:	26060024 	addiu	a2,s0,36
 440:	24e40024 	addiu	a0,a3,36
 444:	460e7282 	mul.s	$f10,$f14,$f14
 448:	46062200 	add.s	$f8,$f4,$f6
 44c:	460a4000 	add.s	$f0,$f8,$f10
 450:	46000004 	sqrt.s	$f0,$f0
 454:	0c000000 	jal	0 <ArmsHook_SetupAction>
 458:	e7a00090 	swc1	$f0,144(sp)
 45c:	c7a60094 	lwc1	$f6,148(sp)
 460:	c7a80090 	lwc1	$f8,144(sp)
 464:	3c014248 	lui	at,0x4248
 468:	44812000 	mtc1	at,$f4
 46c:	46083281 	sub.s	$f10,$f6,$f8
 470:	8fa700bc 	lw	a3,188(sp)
 474:	460a203c 	c.lt.s	$f4,$f10
 478:	00000000 	nop
 47c:	45020005 	bc1fl	494 <ArmsHook_Shoot+0x208>
 480:	8fa400c4 	lw	a0,196(sp)
 484:	0c000000 	jal	0 <ArmsHook_SetupAction>
 488:	02002025 	move	a0,s0
 48c:	00003825 	move	a3,zero
 490:	8fa400c4 	lw	a0,196(sp)
 494:	26050024 	addiu	a1,s0,36
 498:	afa50044 	sw	a1,68(sp)
 49c:	248403c8 	addiu	a0,a0,968
 4a0:	afa40040 	sw	a0,64(sp)
 4a4:	27a600b0 	addiu	a2,sp,176
 4a8:	0c000000 	jal	0 <ArmsHook_SetupAction>
 4ac:	afa700bc 	sw	a3,188(sp)
 4b0:	3c0141f0 	lui	at,0x41f0
 4b4:	44816000 	mtc1	at,$f12
 4b8:	8fa40040 	lw	a0,64(sp)
 4bc:	8fa700bc 	lw	a3,188(sp)
 4c0:	460c003c 	c.lt.s	$f0,$f12
 4c4:	c7a600b0 	lwc1	$f6,176(sp)
 4c8:	27a500a4 	addiu	a1,sp,164
 4cc:	45020006 	bc1fl	4e8 <ArmsHook_Shoot+0x25c>
 4d0:	8e0c011c 	lw	t4,284(s0)
 4d4:	44801000 	mtc1	zero,$f2
 4d8:	44808000 	mtc1	zero,$f16
 4dc:	10000015 	b	534 <ArmsHook_Shoot+0x2a8>
 4e0:	00000000 	nop
 4e4:	8e0c011c 	lw	t4,284(s0)
 4e8:	11800003 	beqz	t4,4f8 <ArmsHook_Shoot+0x26c>
 4ec:	00000000 	nop
 4f0:	10000009 	b	518 <ArmsHook_Shoot+0x28c>
 4f4:	46006086 	mov.s	$f2,$f12
 4f8:	10e00005 	beqz	a3,510 <ArmsHook_Shoot+0x284>
 4fc:	3c014348 	lui	at,0x4348
 500:	3c014248 	lui	at,0x4248
 504:	44811000 	mtc1	at,$f2
 508:	10000004 	b	51c <ArmsHook_Shoot+0x290>
 50c:	4602003e 	c.le.s	$f0,$f2
 510:	44811000 	mtc1	at,$f2
 514:	00000000 	nop
 518:	4602003e 	c.le.s	$f0,$f2
 51c:	46020401 	sub.s	$f16,$f0,$f2
 520:	45020004 	bc1fl	534 <ArmsHook_Shoot+0x2a8>
 524:	46008083 	div.s	$f2,$f16,$f0
 528:	44808000 	mtc1	zero,$f16
 52c:	00000000 	nop
 530:	46008083 	div.s	$f2,$f16,$f0
 534:	46023202 	mul.s	$f8,$f6,$f2
 538:	c7a400b4 	lwc1	$f4,180(sp)
 53c:	c7a600b8 	lwc1	$f6,184(sp)
 540:	8fa600c4 	lw	a2,196(sp)
 544:	46022282 	mul.s	$f10,$f4,$f2
 548:	24c6005c 	addiu	a2,a2,92
 54c:	e7a800a4 	swc1	$f8,164(sp)
 550:	46023202 	mul.s	$f8,$f6,$f2
 554:	e7aa00a8 	swc1	$f10,168(sp)
 558:	e7a800ac 	swc1	$f8,172(sp)
 55c:	8e0d011c 	lw	t5,284(s0)
 560:	55a0001e 	bnezl	t5,5dc <ArmsHook_Shoot+0x350>
 564:	27a400b0 	addiu	a0,sp,176
 568:	10e0000d 	beqz	a3,5a0 <ArmsHook_Shoot+0x314>
 56c:	27a500a4 	addiu	a1,sp,164
 570:	84ee0000 	lh	t6,0(a3)
 574:	240100d5 	li	at,213
 578:	8fa60044 	lw	a2,68(sp)
 57c:	55c10009 	bnel	t6,at,5a4 <ArmsHook_Shoot+0x318>
 580:	8fa60044 	lw	a2,68(sp)
 584:	24e40024 	addiu	a0,a3,36
 588:	0c000000 	jal	0 <ArmsHook_SetupAction>
 58c:	26050204 	addiu	a1,s0,516
 590:	3c013f80 	lui	at,0x3f80
 594:	44818000 	mtc1	at,$f16
 598:	1000001f 	b	618 <ArmsHook_Shoot+0x38c>
 59c:	3c014248 	lui	at,0x4248
 5a0:	8fa60044 	lw	a2,68(sp)
 5a4:	afa700bc 	sw	a3,188(sp)
 5a8:	0c000000 	jal	0 <ArmsHook_SetupAction>
 5ac:	e7b0009c 	swc1	$f16,156(sp)
 5b0:	8fa700bc 	lw	a3,188(sp)
 5b4:	c7b0009c 	lwc1	$f16,156(sp)
 5b8:	8fa40044 	lw	a0,68(sp)
 5bc:	10e00015 	beqz	a3,614 <ArmsHook_Shoot+0x388>
 5c0:	26050204 	addiu	a1,s0,516
 5c4:	24e60024 	addiu	a2,a3,36
 5c8:	0c000000 	jal	0 <ArmsHook_SetupAction>
 5cc:	e7b0009c 	swc1	$f16,156(sp)
 5d0:	10000010 	b	614 <ArmsHook_Shoot+0x388>
 5d4:	c7b0009c 	lwc1	$f16,156(sp)
 5d8:	27a400b0 	addiu	a0,sp,176
 5dc:	0c000000 	jal	0 <ArmsHook_SetupAction>
 5e0:	e7b0009c 	swc1	$f16,156(sp)
 5e4:	c7a200b0 	lwc1	$f2,176(sp)
 5e8:	c7b200b8 	lwc1	$f18,184(sp)
 5ec:	c7ae00b4 	lwc1	$f14,180(sp)
 5f0:	46021102 	mul.s	$f4,$f2,$f2
 5f4:	46007387 	neg.s	$f14,$f14
 5f8:	46129282 	mul.s	$f10,$f18,$f18
 5fc:	460a2000 	add.s	$f0,$f4,$f10
 600:	0c000000 	jal	0 <ArmsHook_SetupAction>
 604:	46000304 	sqrt.s	$f12,$f0
 608:	8faf00c4 	lw	t7,196(sp)
 60c:	c7b0009c 	lwc1	$f16,156(sp)
 610:	a5e20030 	sh	v0,48(t7)
 614:	3c014248 	lui	at,0x4248
 618:	44813000 	mtc1	at,$f6
 61c:	02002025 	move	a0,s0
 620:	4606803c 	c.lt.s	$f16,$f6
 624:	00000000 	nop
 628:	450200ac 	bc1fl	8dc <ArmsHook_Shoot+0x650>
 62c:	8fbf0034 	lw	ra,52(sp)
 630:	0c000000 	jal	0 <ArmsHook_SetupAction>
 634:	e7b0009c 	swc1	$f16,156(sp)
 638:	c7b0009c 	lwc1	$f16,156(sp)
 63c:	44804000 	mtc1	zero,$f8
 640:	02002025 	move	a0,s0
 644:	3c050000 	lui	a1,0x0
 648:	46088032 	c.eq.s	$f16,$f8
 64c:	00000000 	nop
 650:	450200a2 	bc1fl	8dc <ArmsHook_Shoot+0x650>
 654:	8fbf0034 	lw	ra,52(sp)
 658:	0c000000 	jal	0 <ArmsHook_SetupAction>
 65c:	24a50000 	addiu	a1,a1,0
 660:	02002025 	move	a0,s0
 664:	0c000000 	jal	0 <ArmsHook_SetupAction>
 668:	8fa500c4 	lw	a1,196(sp)
 66c:	5040009b 	beqzl	v0,8dc <ArmsHook_Shoot+0x650>
 670:	8fbf0034 	lw	ra,52(sp)
 674:	8fa200c4 	lw	v0,196(sp)
 678:	8fa40044 	lw	a0,68(sp)
 67c:	24450024 	addiu	a1,v0,36
 680:	0c000000 	jal	0 <ArmsHook_SetupAction>
 684:	2446005c 	addiu	a2,v0,92
 688:	8fb800c4 	lw	t8,196(sp)
 68c:	3c0141a0 	lui	at,0x41a0
 690:	44815000 	mtc1	at,$f10
 694:	c7040060 	lwc1	$f4,96(t8)
 698:	460a2181 	sub.s	$f6,$f4,$f10
 69c:	1000008e 	b	8d8 <ArmsHook_Shoot+0x64c>
 6a0:	e7060060 	swc1	$f6,96(t8)
 6a4:	0c000000 	jal	0 <ArmsHook_SetupAction>
 6a8:	02002025 	move	a0,s0
 6ac:	26040024 	addiu	a0,s0,36
 6b0:	afa40044 	sw	a0,68(sp)
 6b4:	26050100 	addiu	a1,s0,256
 6b8:	0c000000 	jal	0 <ArmsHook_SetupAction>
 6bc:	27a6006c 	addiu	a2,sp,108
 6c0:	260401e8 	addiu	a0,s0,488
 6c4:	00803025 	move	a2,a0
 6c8:	afa40040 	sw	a0,64(sp)
 6cc:	0c000000 	jal	0 <ArmsHook_SetupAction>
 6d0:	27a5006c 	addiu	a1,sp,108
 6d4:	c60e0060 	lwc1	$f14,96(s0)
 6d8:	c60c0068 	lwc1	$f12,104(s0)
 6dc:	0c000000 	jal	0 <ArmsHook_SetupAction>
 6e0:	46007387 	neg.s	$f14,$f14
 6e4:	c60001f4 	lwc1	$f0,500(s0)
 6e8:	c60801e8 	lwc1	$f8,488(s0)
 6ec:	a60200b4 	sh	v0,180(s0)
 6f0:	8fa400cc 	lw	a0,204(sp)
 6f4:	46004101 	sub.s	$f4,$f8,$f0
 6f8:	27b90088 	addiu	t9,sp,136
 6fc:	24080001 	li	t0,1
 700:	24090001 	li	t1,1
 704:	46040281 	sub.s	$f10,$f0,$f4
 708:	240a0001 	li	t2,1
 70c:	240b0001 	li	t3,1
 710:	27ac0084 	addiu	t4,sp,132
 714:	e7aa0060 	swc1	$f10,96(sp)
 718:	c60601ec 	lwc1	$f6,492(s0)
 71c:	c60201f8 	lwc1	$f2,504(s0)
 720:	248407c0 	addiu	a0,a0,1984
 724:	8fa60040 	lw	a2,64(sp)
 728:	46023201 	sub.s	$f8,$f6,$f2
 72c:	27a50060 	addiu	a1,sp,96
 730:	27a70078 	addiu	a3,sp,120
 734:	46081101 	sub.s	$f4,$f2,$f8
 738:	e7a40064 	swc1	$f4,100(sp)
 73c:	c60a01f0 	lwc1	$f10,496(s0)
 740:	c60c01fc 	lwc1	$f12,508(s0)
 744:	afa4003c 	sw	a0,60(sp)
 748:	afac0024 	sw	t4,36(sp)
 74c:	460c5181 	sub.s	$f6,$f10,$f12
 750:	afab0020 	sw	t3,32(sp)
 754:	afaa001c 	sw	t2,28(sp)
 758:	afa90018 	sw	t1,24(sp)
 75c:	46066201 	sub.s	$f8,$f12,$f6
 760:	afa80014 	sw	t0,20(sp)
 764:	afb90010 	sw	t9,16(sp)
 768:	0c000000 	jal	0 <ArmsHook_SetupAction>
 76c:	e7a80068 	swc1	$f8,104(sp)
 770:	10400053 	beqz	v0,8c0 <ArmsHook_Shoot+0x634>
 774:	8fa70084 	lw	a3,132(sp)
 778:	27ad0078 	addiu	t5,sp,120
 77c:	afad0010 	sw	t5,16(sp)
 780:	8fa400cc 	lw	a0,204(sp)
 784:	02002825 	move	a1,s0
 788:	0c000000 	jal	0 <ArmsHook_SetupAction>
 78c:	8fa60088 	lw	a2,136(sp)
 790:	1440004b 	bnez	v0,8c0 <ArmsHook_Shoot+0x634>
 794:	8fae0088 	lw	t6,136(sp)
 798:	85cf0008 	lh	t7,8(t6)
 79c:	3c010000 	lui	at,0x0
 7a0:	c4200050 	lwc1	$f0,80(at)
 7a4:	448f2000 	mtc1	t7,$f4
 7a8:	8fa40044 	lw	a0,68(sp)
 7ac:	27a50078 	addiu	a1,sp,120
 7b0:	468022a0 	cvt.s.w	$f10,$f4
 7b4:	46005182 	mul.s	$f6,$f10,$f0
 7b8:	e7a6005c 	swc1	$f6,92(sp)
 7bc:	85d8000c 	lh	t8,12(t6)
 7c0:	44984000 	mtc1	t8,$f8
 7c4:	00000000 	nop
 7c8:	46804120 	cvt.s.w	$f4,$f8
 7cc:	46002282 	mul.s	$f10,$f4,$f0
 7d0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 7d4:	e7aa0058 	swc1	$f10,88(sp)
 7d8:	3c014120 	lui	at,0x4120
 7dc:	44810000 	mtc1	at,$f0
 7e0:	c7a8005c 	lwc1	$f8,92(sp)
 7e4:	c6060024 	lwc1	$f6,36(s0)
 7e8:	46080102 	mul.s	$f4,$f0,$f8
 7ec:	c608002c 	lwc1	$f8,44(s0)
 7f0:	46043280 	add.s	$f10,$f6,$f4
 7f4:	e60a0024 	swc1	$f10,36(s0)
 7f8:	c7a60058 	lwc1	$f6,88(sp)
 7fc:	a6000210 	sh	zero,528(s0)
 800:	46060102 	mul.s	$f4,$f0,$f6
 804:	46044280 	add.s	$f10,$f8,$f4
 808:	e60a002c 	swc1	$f10,44(s0)
 80c:	8fa60084 	lw	a2,132(sp)
 810:	8fa50088 	lw	a1,136(sp)
 814:	0c000000 	jal	0 <ArmsHook_SetupAction>
 818:	8fa4003c 	lw	a0,60(sp)
 81c:	1040001a 	beqz	v0,888 <ArmsHook_Shoot+0x5fc>
 820:	8fa400cc 	lw	a0,204(sp)
 824:	8fa70084 	lw	a3,132(sp)
 828:	24010032 	li	at,50
 82c:	8fa4003c 	lw	a0,60(sp)
 830:	10e10007 	beq	a3,at,850 <ArmsHook_Shoot+0x5c4>
 834:	00000000 	nop
 838:	0c000000 	jal	0 <ArmsHook_SetupAction>
 83c:	00e02825 	move	a1,a3
 840:	10400003 	beqz	v0,850 <ArmsHook_Shoot+0x5c4>
 844:	00402825 	move	a1,v0
 848:	0c000000 	jal	0 <ArmsHook_SetupAction>
 84c:	02002025 	move	a0,s0
 850:	0c000000 	jal	0 <ArmsHook_SetupAction>
 854:	02002025 	move	a0,s0
 858:	3c070000 	lui	a3,0x0
 85c:	3c190000 	lui	t9,0x0
 860:	24e70000 	addiu	a3,a3,0
 864:	27390000 	addiu	t9,t9,0
 868:	afb90014 	sw	t9,20(sp)
 86c:	afa70010 	sw	a3,16(sp)
 870:	24041829 	li	a0,6185
 874:	260500e4 	addiu	a1,s0,228
 878:	0c000000 	jal	0 <ArmsHook_SetupAction>
 87c:	24060004 	li	a2,4
 880:	10000016 	b	8dc <ArmsHook_Shoot+0x650>
 884:	8fbf0034 	lw	ra,52(sp)
 888:	0c000000 	jal	0 <ArmsHook_SetupAction>
 88c:	8fa50044 	lw	a1,68(sp)
 890:	3c070000 	lui	a3,0x0
 894:	3c080000 	lui	t0,0x0
 898:	24e70000 	addiu	a3,a3,0
 89c:	25080000 	addiu	t0,t0,0
 8a0:	afa80014 	sw	t0,20(sp)
 8a4:	afa70010 	sw	a3,16(sp)
 8a8:	24041813 	li	a0,6163
 8ac:	260500e4 	addiu	a1,s0,228
 8b0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 8b4:	24060004 	li	a2,4
 8b8:	10000008 	b	8dc <ArmsHook_Shoot+0x650>
 8bc:	8fbf0034 	lw	ra,52(sp)
 8c0:	8fa900cc 	lw	t1,204(sp)
 8c4:	952a0020 	lhu	t2,32(t1)
 8c8:	314bc01f 	andi	t3,t2,0xc01f
 8cc:	51600003 	beqzl	t3,8dc <ArmsHook_Shoot+0x650>
 8d0:	8fbf0034 	lw	ra,52(sp)
 8d4:	a6000210 	sh	zero,528(s0)
 8d8:	8fbf0034 	lw	ra,52(sp)
 8dc:	8fb00030 	lw	s0,48(sp)
 8e0:	27bd00c8 	addiu	sp,sp,200
 8e4:	03e00008 	jr	ra
 8e8:	00000000 	nop

000008ec <ArmsHook_Update>:
 8ec:	27bdffe8 	addiu	sp,sp,-24
 8f0:	afbf0014 	sw	ra,20(sp)
 8f4:	afa40018 	sw	a0,24(sp)
 8f8:	8c990214 	lw	t9,532(a0)
 8fc:	0320f809 	jalr	t9
 900:	00000000 	nop
 904:	8fa40018 	lw	a0,24(sp)
 908:	8c8f01e8 	lw	t7,488(a0)
 90c:	8c8e01ec 	lw	t6,492(a0)
 910:	ac8f01f4 	sw	t7,500(a0)
 914:	8c8f01f0 	lw	t7,496(a0)
 918:	ac8e01f8 	sw	t6,504(a0)
 91c:	ac8f01fc 	sw	t7,508(a0)
 920:	8fbf0014 	lw	ra,20(sp)
 924:	27bd0018 	addiu	sp,sp,24
 928:	03e00008 	jr	ra
 92c:	00000000 	nop

00000930 <ArmsHook_Draw>:
 930:	27bdff70 	addiu	sp,sp,-144
 934:	afbf0024 	sw	ra,36(sp)
 938:	afb00020 	sw	s0,32(sp)
 93c:	afa50094 	sw	a1,148(sp)
 940:	8ca21c44 	lw	v0,7236(a1)
 944:	00808025 	move	s0,a0
 948:	8c4f0134 	lw	t7,308(v0)
 94c:	51e0009e 	beqzl	t7,bc8 <ArmsHook_Draw+0x298>
 950:	8fbf0024 	lw	ra,36(sp)
 954:	9058015d 	lbu	t8,349(v0)
 958:	2401000f 	li	at,15
 95c:	27a40044 	addiu	a0,sp,68
 960:	17010098 	bne	t8,at,bc4 <ArmsHook_Draw+0x294>
 964:	3c060000 	lui	a2,0x0
 968:	8ca50000 	lw	a1,0(a1)
 96c:	afa20084 	sw	v0,132(sp)
 970:	24c60000 	addiu	a2,a2,0
 974:	24070352 	li	a3,850
 978:	0c000000 	jal	0 <ArmsHook_SetupAction>
 97c:	afa50054 	sw	a1,84(sp)
 980:	8e190214 	lw	t9,532(s0)
 984:	3c080000 	lui	t0,0x0
 988:	25080000 	addiu	t0,t0,0
 98c:	17280006 	bne	t9,t0,9a8 <ArmsHook_Draw+0x78>
 990:	00000000 	nop
 994:	86090210 	lh	t1,528(s0)
 998:	3c040000 	lui	a0,0x0
 99c:	24840000 	addiu	a0,a0,0
 9a0:	1d20000f 	bgtz	t1,9e0 <ArmsHook_Draw+0xb0>
 9a4:	00000000 	nop
 9a8:	3c040000 	lui	a0,0x0
 9ac:	24840000 	addiu	a0,a0,0
 9b0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 9b4:	260501e8 	addiu	a1,s0,488
 9b8:	3c040000 	lui	a0,0x0
 9bc:	24840000 	addiu	a0,a0,0
 9c0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 9c4:	27a5006c 	addiu	a1,sp,108
 9c8:	3c040000 	lui	a0,0x0
 9cc:	24840000 	addiu	a0,a0,0
 9d0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 9d4:	27a50060 	addiu	a1,sp,96
 9d8:	1000000b 	b	a08 <ArmsHook_Draw+0xd8>
 9dc:	ae0001cc 	sw	zero,460(s0)
 9e0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 9e4:	260501e8 	addiu	a1,s0,488
 9e8:	3c040000 	lui	a0,0x0
 9ec:	24840000 	addiu	a0,a0,0
 9f0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 9f4:	27a5006c 	addiu	a1,sp,108
 9f8:	3c040000 	lui	a0,0x0
 9fc:	24840000 	addiu	a0,a0,0
 a00:	0c000000 	jal	0 <ArmsHook_SetupAction>
 a04:	27a50060 	addiu	a1,sp,96
 a08:	27aa0060 	addiu	t2,sp,96
 a0c:	afaa0010 	sw	t2,16(sp)
 a10:	8fa40094 	lw	a0,148(sp)
 a14:	2605014c 	addiu	a1,s0,332
 a18:	260601cc 	addiu	a2,s0,460
 a1c:	0c000000 	jal	0 <ArmsHook_SetupAction>
 a20:	27a7006c 	addiu	a3,sp,108
 a24:	8fab0094 	lw	t3,148(sp)
 a28:	0c000000 	jal	0 <ArmsHook_SetupAction>
 a2c:	8d640000 	lw	a0,0(t3)
 a30:	8fa70054 	lw	a3,84(sp)
 a34:	3c0dda38 	lui	t5,0xda38
 a38:	35ad0003 	ori	t5,t5,0x3
 a3c:	8ce202c0 	lw	v0,704(a3)
 a40:	3c050000 	lui	a1,0x0
 a44:	24a50014 	addiu	a1,a1,20
 a48:	244c0008 	addiu	t4,v0,8
 a4c:	acec02c0 	sw	t4,704(a3)
 a50:	ac4d0000 	sw	t5,0(v0)
 a54:	8faf0094 	lw	t7,148(sp)
 a58:	2406037f 	li	a2,895
 a5c:	8de40000 	lw	a0,0(t7)
 a60:	0c000000 	jal	0 <ArmsHook_SetupAction>
 a64:	afa20040 	sw	v0,64(sp)
 a68:	8fa30040 	lw	v1,64(sp)
 a6c:	3c190000 	lui	t9,0x0
 a70:	27390000 	addiu	t9,t9,0
 a74:	ac620004 	sw	v0,4(v1)
 a78:	8fa40054 	lw	a0,84(sp)
 a7c:	3c0ede00 	lui	t6,0xde00
 a80:	00003825 	move	a3,zero
 a84:	8c8202c0 	lw	v0,704(a0)
 a88:	24580008 	addiu	t8,v0,8
 a8c:	ac9802c0 	sw	t8,704(a0)
 a90:	ac590004 	sw	t9,4(v0)
 a94:	ac4e0000 	sw	t6,0(v0)
 a98:	8e06002c 	lw	a2,44(s0)
 a9c:	c60e0028 	lwc1	$f14,40(s0)
 aa0:	0c000000 	jal	0 <ArmsHook_SetupAction>
 aa4:	c60c0024 	lwc1	$f12,36(s0)
 aa8:	8fa40084 	lw	a0,132(sp)
 aac:	26050024 	addiu	a1,s0,36
 ab0:	27a60078 	addiu	a2,sp,120
 ab4:	0c000000 	jal	0 <ArmsHook_SetupAction>
 ab8:	248403c8 	addiu	a0,a0,968
 abc:	c7ac0078 	lwc1	$f12,120(sp)
 ac0:	c7ae0080 	lwc1	$f14,128(sp)
 ac4:	460c6102 	mul.s	$f4,$f12,$f12
 ac8:	00000000 	nop
 acc:	460e7182 	mul.s	$f6,$f14,$f14
 ad0:	46062080 	add.s	$f2,$f4,$f6
 ad4:	46001004 	sqrt.s	$f0,$f2
 ad8:	e7a20058 	swc1	$f2,88(sp)
 adc:	0c000000 	jal	0 <ArmsHook_SetupAction>
 ae0:	e7a0005c 	swc1	$f0,92(sp)
 ae4:	46000306 	mov.s	$f12,$f0
 ae8:	0c000000 	jal	0 <ArmsHook_SetupAction>
 aec:	24050001 	li	a1,1
 af0:	c7a2007c 	lwc1	$f2,124(sp)
 af4:	c7ae005c 	lwc1	$f14,92(sp)
 af8:	0c000000 	jal	0 <ArmsHook_SetupAction>
 afc:	46001307 	neg.s	$f12,$f2
 b00:	46000306 	mov.s	$f12,$f0
 b04:	0c000000 	jal	0 <ArmsHook_SetupAction>
 b08:	24050001 	li	a1,1
 b0c:	c7a2007c 	lwc1	$f2,124(sp)
 b10:	c7aa0058 	lwc1	$f10,88(sp)
 b14:	3c010000 	lui	at,0x0
 b18:	46021202 	mul.s	$f8,$f2,$f2
 b1c:	c42c0054 	lwc1	$f12,84(at)
 b20:	3c010000 	lui	at,0x0
 b24:	c4300058 	lwc1	$f16,88(at)
 b28:	24070001 	li	a3,1
 b2c:	46006386 	mov.s	$f14,$f12
 b30:	460a4000 	add.s	$f0,$f8,$f10
 b34:	46000004 	sqrt.s	$f0,$f0
 b38:	46100482 	mul.s	$f18,$f0,$f16
 b3c:	44069000 	mfc1	a2,$f18
 b40:	0c000000 	jal	0 <ArmsHook_SetupAction>
 b44:	00000000 	nop
 b48:	8fa30054 	lw	v1,84(sp)
 b4c:	3c09da38 	lui	t1,0xda38
 b50:	35290003 	ori	t1,t1,0x3
 b54:	8c6202c0 	lw	v0,704(v1)
 b58:	3c050000 	lui	a1,0x0
 b5c:	24a50028 	addiu	a1,a1,40
 b60:	24480008 	addiu	t0,v0,8
 b64:	ac6802c0 	sw	t0,704(v1)
 b68:	ac490000 	sw	t1,0(v0)
 b6c:	8faa0094 	lw	t2,148(sp)
 b70:	2406038e 	li	a2,910
 b74:	00408025 	move	s0,v0
 b78:	0c000000 	jal	0 <ArmsHook_SetupAction>
 b7c:	8d440000 	lw	a0,0(t2)
 b80:	ae020004 	sw	v0,4(s0)
 b84:	8fab0054 	lw	t3,84(sp)
 b88:	3c0f0000 	lui	t7,0x0
 b8c:	25ef0000 	addiu	t7,t7,0
 b90:	8d6202c0 	lw	v0,704(t3)
 b94:	3c0dde00 	lui	t5,0xde00
 b98:	3c060000 	lui	a2,0x0
 b9c:	244c0008 	addiu	t4,v0,8
 ba0:	ad6c02c0 	sw	t4,704(t3)
 ba4:	ac4f0004 	sw	t7,4(v0)
 ba8:	ac4d0000 	sw	t5,0(v0)
 bac:	8fb80094 	lw	t8,148(sp)
 bb0:	24c6003c 	addiu	a2,a2,60
 bb4:	27a40044 	addiu	a0,sp,68
 bb8:	24070391 	li	a3,913
 bbc:	0c000000 	jal	0 <ArmsHook_SetupAction>
 bc0:	8f050000 	lw	a1,0(t8)
 bc4:	8fbf0024 	lw	ra,36(sp)
 bc8:	8fb00020 	lw	s0,32(sp)
 bcc:	27bd0090 	addiu	sp,sp,144
 bd0:	03e00008 	jr	ra
 bd4:	00000000 	nop
	...
