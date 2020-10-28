
build/src/overlays/actors/ovl_Bg_Mori_Idomizu/z_bg_mori_idomizu.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMoriIdomizu_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <BgMoriIdomizu_SetWaterLevel>:
   8:	afa50004 	sw	a1,4(sp)
   c:	8c8e07c0 	lw	t6,1984(a0)
  10:	00052c00 	sll	a1,a1,0x10
  14:	00052c03 	sra	a1,a1,0x10
  18:	8dc20028 	lw	v0,40(t6)
  1c:	a4450022 	sh	a1,34(v0)
  20:	a4450032 	sh	a1,50(v0)
  24:	03e00008 	jr	ra
  28:	a4450042 	sh	a1,66(v0)

0000002c <BgMoriIdomizu_Init>:
  2c:	3c0e0000 	lui	t6,0x0
  30:	85ce0000 	lh	t6,0(t6)
  34:	27bdffe0 	addiu	sp,sp,-32
  38:	afb00018 	sw	s0,24(sp)
  3c:	00808025 	move	s0,a0
  40:	afbf001c 	sw	ra,28(sp)
  44:	11c00005 	beqz	t6,5c <BgMoriIdomizu_Init+0x30>
  48:	afa50024 	sw	a1,36(sp)
  4c:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
  50:	00000000 	nop
  54:	10000044 	b	168 <BgMoriIdomizu_Init+0x13c>
  58:	8fbf001c 	lw	ra,28(sp)
  5c:	3c013f80 	lui	at,0x3f80
  60:	44810000 	mtc1	at,$f0
  64:	3c010000 	lui	at,0x0
  68:	c42400b4 	lwc1	$f4,180(at)
  6c:	3c0142ee 	lui	at,0x42ee
  70:	44813000 	mtc1	at,$f6
  74:	3c010000 	lui	at,0x0
  78:	e6000054 	swc1	$f0,84(s0)
  7c:	e6000058 	swc1	$f0,88(s0)
  80:	e6040050 	swc1	$f4,80(s0)
  84:	e6060024 	swc1	$f6,36(s0)
  88:	c42800b8 	lwc1	$f8,184(at)
  8c:	8605001c 	lh	a1,28(s0)
  90:	e608002c 	swc1	$f8,44(s0)
  94:	8fa40024 	lw	a0,36(sp)
  98:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
  9c:	30a5003f 	andi	a1,a1,0x3f
  a0:	10400009 	beqz	v0,c8 <BgMoriIdomizu_Init+0x9c>
  a4:	ae020154 	sw	v0,340(s0)
  a8:	3c01c38d 	lui	at,0xc38d
  ac:	44815000 	mtc1	at,$f10
  b0:	2405fee6 	li	a1,-282
  b4:	e60a0028 	swc1	$f10,40(s0)
  b8:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
  bc:	8fa40024 	lw	a0,36(sp)
  c0:	10000008 	b	e4 <BgMoriIdomizu_Init+0xb8>
  c4:	8fa40024 	lw	a0,36(sp)
  c8:	3c014338 	lui	at,0x4338
  cc:	44818000 	mtc1	at,$f16
  d0:	240500b8 	li	a1,184
  d4:	e6100028 	swc1	$f16,40(s0)
  d8:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
  dc:	8fa40024 	lw	a0,36(sp)
  e0:	8fa40024 	lw	a0,36(sp)
  e4:	3c010001 	lui	at,0x1
  e8:	342117a4 	ori	at,at,0x17a4
  ec:	24050073 	li	a1,115
  f0:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
  f4:	00812021 	addu	a0,a0,at
  f8:	a202015c 	sb	v0,348(s0)
  fc:	820f015c 	lb	t7,348(s0)
 100:	05e1000c 	bgez	t7,134 <BgMoriIdomizu_Init+0x108>
 104:	00000000 	nop
 108:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 10c:	02002025 	move	a0,s0
 110:	3c040000 	lui	a0,0x0
 114:	3c060000 	lui	a2,0x0
 118:	24c60030 	addiu	a2,a2,48
 11c:	24840000 	addiu	a0,a0,0
 120:	8605001c 	lh	a1,28(s0)
 124:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 128:	240700ca 	li	a3,202
 12c:	1000000e 	b	168 <BgMoriIdomizu_Init+0x13c>
 130:	8fbf001c 	lw	ra,28(sp)
 134:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 138:	02002025 	move	a0,s0
 13c:	24020001 	li	v0,1
 140:	3c010000 	lui	at,0x0
 144:	a4220000 	sh	v0,0(at)
 148:	2418ffff 	li	t8,-1
 14c:	3c040000 	lui	a0,0x0
 150:	a6020158 	sh	v0,344(s0)
 154:	a2180003 	sb	t8,3(s0)
 158:	24840048 	addiu	a0,a0,72
 15c:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 160:	8605001c 	lh	a1,28(s0)
 164:	8fbf001c 	lw	ra,28(sp)
 168:	8fb00018 	lw	s0,24(sp)
 16c:	27bd0020 	addiu	sp,sp,32
 170:	03e00008 	jr	ra
 174:	00000000 	nop

00000178 <BgMoriIdomizu_Destroy>:
 178:	afa50004 	sw	a1,4(sp)
 17c:	848e0158 	lh	t6,344(a0)
 180:	3c010000 	lui	at,0x0
 184:	11c00002 	beqz	t6,190 <BgMoriIdomizu_Destroy+0x18>
 188:	00000000 	nop
 18c:	a4200000 	sh	zero,0(at)
 190:	03e00008 	jr	ra
 194:	00000000 	nop

00000198 <BgMoriIdomizu_SetupWaitForMoriTex>:
 198:	27bdffe8 	addiu	sp,sp,-24
 19c:	afbf0014 	sw	ra,20(sp)
 1a0:	3c050000 	lui	a1,0x0
 1a4:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 1a8:	24a50000 	addiu	a1,a1,0
 1ac:	8fbf0014 	lw	ra,20(sp)
 1b0:	27bd0018 	addiu	sp,sp,24
 1b4:	03e00008 	jr	ra
 1b8:	00000000 	nop

000001bc <BgMoriIdomizu_WaitForMoriTex>:
 1bc:	27bdffe8 	addiu	sp,sp,-24
 1c0:	afa40018 	sw	a0,24(sp)
 1c4:	3c010001 	lui	at,0x1
 1c8:	8fae0018 	lw	t6,24(sp)
 1cc:	342117a4 	ori	at,at,0x17a4
 1d0:	afbf0014 	sw	ra,20(sp)
 1d4:	00a12021 	addu	a0,a1,at
 1d8:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 1dc:	81c5015c 	lb	a1,348(t6)
 1e0:	50400008 	beqzl	v0,204 <BgMoriIdomizu_WaitForMoriTex+0x48>
 1e4:	8fbf0014 	lw	ra,20(sp)
 1e8:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 1ec:	8fa40018 	lw	a0,24(sp)
 1f0:	8fb80018 	lw	t8,24(sp)
 1f4:	3c0f0000 	lui	t7,0x0
 1f8:	25ef0000 	addiu	t7,t7,0
 1fc:	af0f0134 	sw	t7,308(t8)
 200:	8fbf0014 	lw	ra,20(sp)
 204:	27bd0018 	addiu	sp,sp,24
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <BgMoriIdomizu_SetupMain>:
 210:	27bdffe8 	addiu	sp,sp,-24
 214:	afbf0014 	sw	ra,20(sp)
 218:	3c050000 	lui	a1,0x0
 21c:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 220:	24a50000 	addiu	a1,a1,0
 224:	8fbf0014 	lw	ra,20(sp)
 228:	27bd0018 	addiu	sp,sp,24
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <BgMoriIdomizu_Main>:
 234:	27bdffc8 	addiu	sp,sp,-56
 238:	3c0e0001 	lui	t6,0x1
 23c:	afbf0024 	sw	ra,36(sp)
 240:	afb00020 	sw	s0,32(sp)
 244:	01c57021 	addu	t6,t6,a1
 248:	81ce1cbc 	lb	t6,7356(t6)
 24c:	00808025 	move	s0,a0
 250:	00a03025 	move	a2,a1
 254:	00a02025 	move	a0,a1
 258:	a3ae0037 	sb	t6,55(sp)
 25c:	8605001c 	lh	a1,28(s0)
 260:	afa6003c 	sw	a2,60(sp)
 264:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 268:	30a5003f 	andi	a1,a1,0x3f
 26c:	10400005 	beqz	v0,284 <BgMoriIdomizu_Main+0x50>
 270:	afa2002c 	sw	v0,44(sp)
 274:	3c01c38d 	lui	at,0xc38d
 278:	44812000 	mtc1	at,$f4
 27c:	10000005 	b	294 <BgMoriIdomizu_Main+0x60>
 280:	e6040150 	swc1	$f4,336(s0)
 284:	3c014338 	lui	at,0x4338
 288:	44813000 	mtc1	at,$f6
 28c:	00000000 	nop
 290:	e6060150 	swc1	$f6,336(s0)
 294:	1040000c 	beqz	v0,2c8 <BgMoriIdomizu_Main+0x94>
 298:	00000000 	nop
 29c:	8e0f0154 	lw	t7,340(s0)
 2a0:	8fa4003c 	lw	a0,60(sp)
 2a4:	24050ca8 	li	a1,3240
 2a8:	15e00007 	bnez	t7,2c8 <BgMoriIdomizu_Main+0x94>
 2ac:	24060046 	li	a2,70
 2b0:	02003825 	move	a3,s0
 2b4:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 2b8:	afa00010 	sw	zero,16(sp)
 2bc:	2418005a 	li	t8,90
 2c0:	1000000f 	b	300 <BgMoriIdomizu_Main+0xcc>
 2c4:	a618015a 	sh	t8,346(s0)
 2c8:	5440000e 	bnezl	v0,304 <BgMoriIdomizu_Main+0xd0>
 2cc:	8609015a 	lh	t1,346(s0)
 2d0:	8e190154 	lw	t9,340(s0)
 2d4:	8fa4003c 	lw	a0,60(sp)
 2d8:	24050ca8 	li	a1,3240
 2dc:	13200008 	beqz	t9,300 <BgMoriIdomizu_Main+0xcc>
 2e0:	24060046 	li	a2,70
 2e4:	02003825 	move	a3,s0
 2e8:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 2ec:	afa00010 	sw	zero,16(sp)
 2f0:	44804000 	mtc1	zero,$f8
 2f4:	2408005a 	li	t0,90
 2f8:	a608015a 	sh	t0,346(s0)
 2fc:	e6080028 	swc1	$f8,40(s0)
 300:	8609015a 	lh	t1,346(s0)
 304:	83a20037 	lb	v0,55(sp)
 308:	24010007 	li	at,7
 30c:	252affff 	addiu	t2,t1,-1
 310:	10410006 	beq	v0,at,32c <BgMoriIdomizu_Main+0xf8>
 314:	a60a015a 	sh	t2,346(s0)
 318:	24010008 	li	at,8
 31c:	10410003 	beq	v0,at,32c <BgMoriIdomizu_Main+0xf8>
 320:	24010009 	li	at,9
 324:	54410020 	bnel	v0,at,3a8 <BgMoriIdomizu_Main+0x174>
 328:	c6120150 	lwc1	$f18,336(s0)
 32c:	860b015a 	lh	t3,346(s0)
 330:	26040028 	addiu	a0,s0,40
 334:	3c064060 	lui	a2,0x4060
 338:	29610046 	slti	at,t3,70
 33c:	50200028 	beqzl	at,3e0 <BgMoriIdomizu_Main+0x1ac>
 340:	8fb8002c 	lw	t8,44(sp)
 344:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 348:	8e050150 	lw	a1,336(s0)
 34c:	c60a0028 	lwc1	$f10,40(s0)
 350:	8fa4003c 	lw	a0,60(sp)
 354:	4600540d 	trunc.w.s	$f16,$f10
 358:	44058000 	mfc1	a1,$f16
 35c:	00000000 	nop
 360:	00052c00 	sll	a1,a1,0x10
 364:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 368:	00052c03 	sra	a1,a1,0x10
 36c:	860d015a 	lh	t5,346(s0)
 370:	8fae002c 	lw	t6,44(sp)
 374:	59a0001a 	blezl	t5,3e0 <BgMoriIdomizu_Main+0x1ac>
 378:	8fb8002c 	lw	t8,44(sp)
 37c:	11c00005 	beqz	t6,394 <BgMoriIdomizu_Main+0x160>
 380:	00000000 	nop
 384:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 388:	2404205e 	li	a0,8286
 38c:	10000014 	b	3e0 <BgMoriIdomizu_Main+0x1ac>
 390:	8fb8002c 	lw	t8,44(sp)
 394:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 398:	2404205e 	li	a0,8286
 39c:	10000010 	b	3e0 <BgMoriIdomizu_Main+0x1ac>
 3a0:	8fb8002c 	lw	t8,44(sp)
 3a4:	c6120150 	lwc1	$f18,336(s0)
 3a8:	e6120028 	swc1	$f18,40(s0)
 3ac:	c6040028 	lwc1	$f4,40(s0)
 3b0:	8fa4003c 	lw	a0,60(sp)
 3b4:	4600218d 	trunc.w.s	$f6,$f4
 3b8:	44053000 	mfc1	a1,$f6
 3bc:	00000000 	nop
 3c0:	00052c00 	sll	a1,a1,0x10
 3c4:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 3c8:	00052c03 	sra	a1,a1,0x10
 3cc:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 3d0:	02002025 	move	a0,s0
 3d4:	10000004 	b	3e8 <BgMoriIdomizu_Main+0x1b4>
 3d8:	8fbf0024 	lw	ra,36(sp)
 3dc:	8fb8002c 	lw	t8,44(sp)
 3e0:	ae180154 	sw	t8,340(s0)
 3e4:	8fbf0024 	lw	ra,36(sp)
 3e8:	8fb00020 	lw	s0,32(sp)
 3ec:	27bd0038 	addiu	sp,sp,56
 3f0:	03e00008 	jr	ra
 3f4:	00000000 	nop

000003f8 <BgMoriIdomizu_Update>:
 3f8:	27bdffe8 	addiu	sp,sp,-24
 3fc:	afbf0014 	sw	ra,20(sp)
 400:	8c82014c 	lw	v0,332(a0)
 404:	50400004 	beqzl	v0,418 <BgMoriIdomizu_Update+0x20>
 408:	8fbf0014 	lw	ra,20(sp)
 40c:	0040f809 	jalr	v0
 410:	00000000 	nop
 414:	8fbf0014 	lw	ra,20(sp)
 418:	27bd0018 	addiu	sp,sp,24
 41c:	03e00008 	jr	ra
 420:	00000000 	nop

00000424 <BgMoriIdomizu_Draw>:
 424:	27bdff80 	addiu	sp,sp,-128
 428:	3c0e0001 	lui	t6,0x1
 42c:	afbf003c 	sw	ra,60(sp)
 430:	afb10038 	sw	s1,56(sp)
 434:	afb00034 	sw	s0,52(sp)
 438:	afa40080 	sw	a0,128(sp)
 43c:	01c57021 	addu	t6,t6,a1
 440:	8dce1de4 	lw	t6,7652(t6)
 444:	00a08825 	move	s1,a1
 448:	3c060000 	lui	a2,0x0
 44c:	afae0074 	sw	t6,116(sp)
 450:	8ca50000 	lw	a1,0(a1)
 454:	24c6006c 	addiu	a2,a2,108
 458:	27a40060 	addiu	a0,sp,96
 45c:	24070164 	li	a3,356
 460:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 464:	00a08025 	move	s0,a1
 468:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 46c:	8e240000 	lw	a0,0(s1)
 470:	8e0202d0 	lw	v0,720(s0)
 474:	3c18da38 	lui	t8,0xda38
 478:	37180003 	ori	t8,t8,0x3
 47c:	244f0008 	addiu	t7,v0,8
 480:	ae0f02d0 	sw	t7,720(s0)
 484:	ac580000 	sw	t8,0(v0)
 488:	8e240000 	lw	a0,0(s1)
 48c:	3c050000 	lui	a1,0x0
 490:	24a50084 	addiu	a1,a1,132
 494:	24060168 	li	a2,360
 498:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 49c:	afa2005c 	sw	v0,92(sp)
 4a0:	8fa3005c 	lw	v1,92(sp)
 4a4:	3c0adb06 	lui	t2,0xdb06
 4a8:	354a0020 	ori	t2,t2,0x20
 4ac:	ac620004 	sw	v0,4(v1)
 4b0:	8e0202d0 	lw	v0,720(s0)
 4b4:	3c0f0001 	lui	t7,0x1
 4b8:	00002825 	move	a1,zero
 4bc:	24590008 	addiu	t9,v0,8
 4c0:	ae1902d0 	sw	t9,720(s0)
 4c4:	ac4a0000 	sw	t2,0(v0)
 4c8:	8fab0080 	lw	t3,128(sp)
 4cc:	240a0080 	li	t2,128
 4d0:	3c19fb00 	lui	t9,0xfb00
 4d4:	816c015c 	lb	t4,348(t3)
 4d8:	000c6900 	sll	t5,t4,0x4
 4dc:	01ac6821 	addu	t5,t5,t4
 4e0:	000d6880 	sll	t5,t5,0x2
 4e4:	022d7021 	addu	t6,s1,t5
 4e8:	01ee7821 	addu	t7,t7,t6
 4ec:	8def17b4 	lw	t7,6068(t7)
 4f0:	3c0cdb06 	lui	t4,0xdb06
 4f4:	358c0024 	ori	t4,t4,0x24
 4f8:	ac4f0004 	sw	t7,4(v0)
 4fc:	8e0202d0 	lw	v0,720(s0)
 500:	240f0020 	li	t7,32
 504:	240e0020 	li	t6,32
 508:	24580008 	addiu	t8,v0,8
 50c:	ae1802d0 	sw	t8,720(s0)
 510:	ac590000 	sw	t9,0(v0)
 514:	ac4a0004 	sw	t2,4(v0)
 518:	8e0202d0 	lw	v0,720(s0)
 51c:	8fa90074 	lw	t1,116(sp)
 520:	240a0020 	li	t2,32
 524:	244b0008 	addiu	t3,v0,8
 528:	ae0b02d0 	sw	t3,720(s0)
 52c:	ac4c0000 	sw	t4,0(v0)
 530:	8e240000 	lw	a0,0(s1)
 534:	24190020 	li	t9,32
 538:	24180001 	li	t8,1
 53c:	240d007f 	li	t5,127
 540:	3123007f 	andi	v1,t1,0x7f
 544:	3127007f 	andi	a3,t1,0x7f
 548:	afa70020 	sw	a3,32(sp)
 54c:	01a33023 	subu	a2,t5,v1
 550:	afa3001c 	sw	v1,28(sp)
 554:	afb80018 	sw	t8,24(sp)
 558:	afb90024 	sw	t9,36(sp)
 55c:	afaa0028 	sw	t2,40(sp)
 560:	afaf0014 	sw	t7,20(sp)
 564:	afae0010 	sw	t6,16(sp)
 568:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 56c:	afa20050 	sw	v0,80(sp)
 570:	8fa80050 	lw	t0,80(sp)
 574:	3c0d0000 	lui	t5,0x0
 578:	25ad0000 	addiu	t5,t5,0
 57c:	ad020004 	sw	v0,4(t0)
 580:	8e0202d0 	lw	v0,720(s0)
 584:	3c0cde00 	lui	t4,0xde00
 588:	3c060000 	lui	a2,0x0
 58c:	244b0008 	addiu	t3,v0,8
 590:	ae0b02d0 	sw	t3,720(s0)
 594:	ac4d0004 	sw	t5,4(v0)
 598:	ac4c0000 	sw	t4,0(v0)
 59c:	8e250000 	lw	a1,0(s1)
 5a0:	24c6009c 	addiu	a2,a2,156
 5a4:	27a40060 	addiu	a0,sp,96
 5a8:	0c000000 	jal	0 <BgMoriIdomizu_SetupAction>
 5ac:	2407017e 	li	a3,382
 5b0:	8fbf003c 	lw	ra,60(sp)
 5b4:	8fb00034 	lw	s0,52(sp)
 5b8:	8fb10038 	lw	s1,56(sp)
 5bc:	03e00008 	jr	ra
 5c0:	27bd0080 	addiu	sp,sp,128
	...
