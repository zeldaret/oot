
build/src/overlays/actors/ovl_En_River_Sound/z_en_river_sound.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnRiverSound_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	8482001c 	lh	v0,28(a0)
  14:	00802825 	move	a1,a0
  18:	a080014c 	sb	zero,332(a0)
  1c:	305800ff 	andi	t8,v0,0xff
  20:	a498001c 	sh	t8,28(a0)
  24:	00027203 	sra	t6,v0,0x8
  28:	8482001c 	lh	v0,28(a0)
  2c:	31cf00ff 	andi	t7,t6,0xff
  30:	a48f014e 	sh	t7,334(a0)
  34:	284100f8 	slti	at,v0,248
  38:	14200008 	bnez	at,5c <EnRiverSound_Init+0x5c>
  3c:	2444ff08 	addiu	a0,v0,-248
  40:	308400ff 	andi	a0,a0,0xff
  44:	0c000000 	jal	0 <EnRiverSound_Init>
  48:	afa50018 	sw	a1,24(sp)
  4c:	0c000000 	jal	0 <EnRiverSound_Init>
  50:	8fa40018 	lw	a0,24(sp)
  54:	1000001b 	b	c4 <EnRiverSound_Init+0xc4>
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	240100f7 	li	at,247
  60:	14410007 	bne	v0,at,80 <EnRiverSound_Init+0x80>
  64:	24040004 	li	a0,4
  68:	0c000000 	jal	0 <EnRiverSound_Init>
  6c:	afa50018 	sw	a1,24(sp)
  70:	0c000000 	jal	0 <EnRiverSound_Init>
  74:	8fa40018 	lw	a0,24(sp)
  78:	10000012 	b	c4 <EnRiverSound_Init+0xc4>
  7c:	8fbf0014 	lw	ra,20(sp)
  80:	2401000c 	li	at,12
  84:	1441000e 	bne	v0,at,c0 <EnRiverSound_Init+0xc0>
  88:	3c030000 	lui	v1,0x0
  8c:	24630000 	addiu	v1,v1,0
  90:	3c020000 	lui	v0,0x0
  94:	8c4200a4 	lw	v0,164(v0)
  98:	8c790030 	lw	t9,48(v1)
  9c:	03224024 	and	t0,t9,v0
  a0:	11000005 	beqz	t0,b8 <EnRiverSound_Init+0xb8>
  a4:	00000000 	nop
  a8:	8c690038 	lw	t1,56(v1)
  ac:	01225024 	and	t2,t1,v0
  b0:	51400004 	beqzl	t2,c4 <EnRiverSound_Init+0xc4>
  b4:	8fbf0014 	lw	ra,20(sp)
  b8:	0c000000 	jal	0 <EnRiverSound_Init>
  bc:	00a02025 	move	a0,a1
  c0:	8fbf0014 	lw	ra,20(sp)
  c4:	27bd0018 	addiu	sp,sp,24
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

000000d0 <EnRiverSound_Destroy>:
  d0:	27bdffe8 	addiu	sp,sp,-24
  d4:	afbf0014 	sw	ra,20(sp)
  d8:	afa40018 	sw	a0,24(sp)
  dc:	afa5001c 	sw	a1,28(sp)
  e0:	8482001c 	lh	v0,28(a0)
  e4:	2401000c 	li	at,12
  e8:	54410006 	bnel	v0,at,104 <EnRiverSound_Destroy+0x34>
  ec:	2401000d 	li	at,13
  f0:	0c000000 	jal	0 <EnRiverSound_Init>
  f4:	248400e4 	addiu	a0,a0,228
  f8:	10000007 	b	118 <EnRiverSound_Destroy+0x48>
  fc:	8fbf0014 	lw	ra,20(sp)
 100:	2401000d 	li	at,13
 104:	54410004 	bnel	v0,at,118 <EnRiverSound_Destroy+0x48>
 108:	8fbf0014 	lw	ra,20(sp)
 10c:	0c000000 	jal	0 <EnRiverSound_Init>
 110:	00000000 	nop
 114:	8fbf0014 	lw	ra,20(sp)
 118:	27bd0018 	addiu	sp,sp,24
 11c:	03e00008 	jr	ra
 120:	00000000 	nop

00000124 <func_80AE6A54>:
 124:	c48a0000 	lwc1	$f10,0(a0)
 128:	c4c80000 	lwc1	$f8,0(a2)
 12c:	27bdffc8 	addiu	sp,sp,-56
 130:	00001025 	move	v0,zero
 134:	46085481 	sub.s	$f18,$f10,$f8
 138:	e7b20014 	swc1	$f18,20(sp)
 13c:	c4c60004 	lwc1	$f6,4(a2)
 140:	c4900004 	lwc1	$f16,4(a0)
 144:	46068101 	sub.s	$f4,$f16,$f6
 148:	e7a40018 	swc1	$f4,24(sp)
 14c:	c4c80008 	lwc1	$f8,8(a2)
 150:	c48a0008 	lwc1	$f10,8(a0)
 154:	46085481 	sub.s	$f18,$f10,$f8
 158:	e7b2001c 	swc1	$f18,28(sp)
 15c:	c4c60000 	lwc1	$f6,0(a2)
 160:	c4b00000 	lwc1	$f16,0(a1)
 164:	46068101 	sub.s	$f4,$f16,$f6
 168:	e7a40020 	swc1	$f4,32(sp)
 16c:	c4c80004 	lwc1	$f8,4(a2)
 170:	c4aa0004 	lwc1	$f10,4(a1)
 174:	46085481 	sub.s	$f18,$f10,$f8
 178:	c7a80014 	lwc1	$f8,20(sp)
 17c:	c7aa0020 	lwc1	$f10,32(sp)
 180:	e7b20024 	swc1	$f18,36(sp)
 184:	c4c60008 	lwc1	$f6,8(a2)
 188:	c4b00008 	lwc1	$f16,8(a1)
 18c:	46085481 	sub.s	$f18,$f10,$f8
 190:	e7aa0000 	swc1	$f10,0(sp)
 194:	e7a80004 	swc1	$f8,4(sp)
 198:	46068101 	sub.s	$f4,$f16,$f6
 19c:	c7b00024 	lwc1	$f16,36(sp)
 1a0:	c7a60018 	lwc1	$f6,24(sp)
 1a4:	e7b20008 	swc1	$f18,8(sp)
 1a8:	e7a40028 	swc1	$f4,40(sp)
 1ac:	46068101 	sub.s	$f4,$f16,$f6
 1b0:	e7b0000c 	swc1	$f16,12(sp)
 1b4:	c7aa0028 	lwc1	$f10,40(sp)
 1b8:	c7b00008 	lwc1	$f16,8(sp)
 1bc:	c7a8001c 	lwc1	$f8,28(sp)
 1c0:	e7a60008 	swc1	$f6,8(sp)
 1c4:	c7a60004 	lwc1	$f6,4(sp)
 1c8:	e7b2002c 	swc1	$f18,44(sp)
 1cc:	46085481 	sub.s	$f18,$f10,$f8
 1d0:	e7aa0004 	swc1	$f10,4(sp)
 1d4:	46068182 	mul.s	$f6,$f16,$f6
 1d8:	c7aa0008 	lwc1	$f10,8(sp)
 1dc:	e7a40030 	swc1	$f4,48(sp)
 1e0:	e7b20034 	swc1	$f18,52(sp)
 1e4:	460a2282 	mul.s	$f10,$f4,$f10
 1e8:	460a3180 	add.s	$f6,$f6,$f10
 1ec:	46124282 	mul.s	$f10,$f8,$f18
 1f0:	c7a80000 	lwc1	$f8,0(sp)
 1f4:	46065000 	add.s	$f0,$f10,$f6
 1f8:	46088282 	mul.s	$f10,$f16,$f8
 1fc:	c7a6000c 	lwc1	$f6,12(sp)
 200:	46062202 	mul.s	$f8,$f4,$f6
 204:	46085180 	add.s	$f6,$f10,$f8
 208:	c7aa0004 	lwc1	$f10,4(sp)
 20c:	46125202 	mul.s	$f8,$f10,$f18
 210:	46064280 	add.s	$f10,$f8,$f6
 214:	44803000 	mtc1	zero,$f6
 218:	46005202 	mul.s	$f8,$f10,$f0
 21c:	4606403c 	c.lt.s	$f8,$f6
 220:	00000000 	nop
 224:	45000018 	bc1f	288 <func_80AE6A54+0x164>
 228:	00000000 	nop
 22c:	46108282 	mul.s	$f10,$f16,$f16
 230:	24020001 	li	v0,1
 234:	46042202 	mul.s	$f8,$f4,$f4
 238:	46085180 	add.s	$f6,$f10,$f8
 23c:	46129102 	mul.s	$f4,$f18,$f18
 240:	46000207 	neg.s	$f8,$f0
 244:	46062280 	add.s	$f10,$f4,$f6
 248:	c4840000 	lwc1	$f4,0(a0)
 24c:	460a4003 	div.s	$f0,$f8,$f10
 250:	46008482 	mul.s	$f18,$f16,$f0
 254:	46049180 	add.s	$f6,$f18,$f4
 258:	e4e60000 	swc1	$f6,0(a3)
 25c:	c7a80030 	lwc1	$f8,48(sp)
 260:	c4900004 	lwc1	$f16,4(a0)
 264:	46004282 	mul.s	$f10,$f8,$f0
 268:	46105480 	add.s	$f18,$f10,$f16
 26c:	e4f20004 	swc1	$f18,4(a3)
 270:	c7a40034 	lwc1	$f4,52(sp)
 274:	c4880008 	lwc1	$f8,8(a0)
 278:	46002182 	mul.s	$f6,$f4,$f0
 27c:	46083280 	add.s	$f10,$f6,$f8
 280:	10000001 	b	288 <func_80AE6A54+0x164>
 284:	e4ea0008 	swc1	$f10,8(a3)
 288:	03e00008 	jr	ra
 28c:	27bd0038 	addiu	sp,sp,56

00000290 <func_80AE6BC0>:
 290:	27bdff78 	addiu	sp,sp,-136
 294:	3c0f0000 	lui	t7,0x0
 298:	afbf0034 	sw	ra,52(sp)
 29c:	afb50030 	sw	s5,48(sp)
 2a0:	afb4002c 	sw	s4,44(sp)
 2a4:	afb30028 	sw	s3,40(sp)
 2a8:	afb20024 	sw	s2,36(sp)
 2ac:	afb10020 	sw	s1,32(sp)
 2b0:	afb0001c 	sw	s0,28(sp)
 2b4:	f7b40010 	sdc1	$f20,16(sp)
 2b8:	afa40088 	sw	a0,136(sp)
 2bc:	25ef0000 	addiu	t7,t7,0
 2c0:	8df90000 	lw	t9,0(t7)
 2c4:	8df80004 	lw	t8,4(t7)
 2c8:	27ae0078 	addiu	t6,sp,120
 2cc:	3c010000 	lui	at,0x0
 2d0:	add90000 	sw	t9,0(t6)
 2d4:	add80004 	sw	t8,4(t6)
 2d8:	00a09025 	move	s2,a1
 2dc:	00c0a025 	move	s4,a2
 2e0:	00e0a825 	move	s5,a3
 2e4:	c4340000 	lwc1	$f20,0(at)
 2e8:	18a0001e 	blez	a1,364 <func_80AE6BC0+0xd4>
 2ec:	00008825 	move	s1,zero
 2f0:	8fb00088 	lw	s0,136(sp)
 2f4:	27b30048 	addiu	s3,sp,72
 2f8:	86080000 	lh	t0,0(s0)
 2fc:	02802025 	move	a0,s4
 300:	02602825 	move	a1,s3
 304:	44882000 	mtc1	t0,$f4
 308:	00000000 	nop
 30c:	468021a0 	cvt.s.w	$f6,$f4
 310:	e7a60048 	swc1	$f6,72(sp)
 314:	86090002 	lh	t1,2(s0)
 318:	44894000 	mtc1	t1,$f8
 31c:	00000000 	nop
 320:	468042a0 	cvt.s.w	$f10,$f8
 324:	e7aa004c 	swc1	$f10,76(sp)
 328:	860a0004 	lh	t2,4(s0)
 32c:	448a8000 	mtc1	t2,$f16
 330:	00000000 	nop
 334:	468084a0 	cvt.s.w	$f18,$f16
 338:	0c000000 	jal	0 <EnRiverSound_Init>
 33c:	e7b20050 	swc1	$f18,80(sp)
 340:	4614003c 	c.lt.s	$f0,$f20
 344:	00000000 	nop
 348:	45020004 	bc1fl	35c <func_80AE6BC0+0xcc>
 34c:	26310001 	addiu	s1,s1,1
 350:	46000506 	mov.s	$f20,$f0
 354:	afb10080 	sw	s1,128(sp)
 358:	26310001 	addiu	s1,s1,1
 35c:	1632ffe6 	bne	s1,s2,2f8 <func_80AE6BC0+0x68>
 360:	26100006 	addiu	s0,s0,6
 364:	3c010000 	lui	at,0x0
 368:	c4240000 	lwc1	$f4,0(at)
 36c:	8fab0080 	lw	t3,128(sp)
 370:	27b30048 	addiu	s3,sp,72
 374:	4614203e 	c.le.s	$f4,$f20
 378:	8fad0088 	lw	t5,136(sp)
 37c:	000b6080 	sll	t4,t3,0x2
 380:	45020004 	bc1fl	394 <func_80AE6BC0+0x104>
 384:	018b6023 	subu	t4,t4,t3
 388:	10000076 	b	564 <func_80AE6BC0+0x2d4>
 38c:	00001025 	move	v0,zero
 390:	018b6023 	subu	t4,t4,t3
 394:	000c6040 	sll	t4,t4,0x1
 398:	018d8021 	addu	s0,t4,t5
 39c:	860e0000 	lh	t6,0(s0)
 3a0:	448e3000 	mtc1	t6,$f6
 3a4:	00000000 	nop
 3a8:	46803220 	cvt.s.w	$f8,$f6
 3ac:	e7a8006c 	swc1	$f8,108(sp)
 3b0:	860f0002 	lh	t7,2(s0)
 3b4:	448f5000 	mtc1	t7,$f10
 3b8:	00000000 	nop
 3bc:	46805420 	cvt.s.w	$f16,$f10
 3c0:	e7b00070 	swc1	$f16,112(sp)
 3c4:	86180004 	lh	t8,4(s0)
 3c8:	44989000 	mtc1	t8,$f18
 3cc:	00000000 	nop
 3d0:	46809120 	cvt.s.w	$f4,$f18
 3d4:	11600015 	beqz	t3,42c <func_80AE6BC0+0x19c>
 3d8:	e7a40074 	swc1	$f4,116(sp)
 3dc:	8619fffa 	lh	t9,-6(s0)
 3e0:	02602025 	move	a0,s3
 3e4:	27a5006c 	addiu	a1,sp,108
 3e8:	44993000 	mtc1	t9,$f6
 3ec:	02803025 	move	a2,s4
 3f0:	27a70054 	addiu	a3,sp,84
 3f4:	46803220 	cvt.s.w	$f8,$f6
 3f8:	e7a80048 	swc1	$f8,72(sp)
 3fc:	8608fffc 	lh	t0,-4(s0)
 400:	44885000 	mtc1	t0,$f10
 404:	00000000 	nop
 408:	46805420 	cvt.s.w	$f16,$f10
 40c:	e7b0004c 	swc1	$f16,76(sp)
 410:	8609fffe 	lh	t1,-2(s0)
 414:	44899000 	mtc1	t1,$f18
 418:	00000000 	nop
 41c:	46809120 	cvt.s.w	$f4,$f18
 420:	0c000000 	jal	0 <EnRiverSound_Init>
 424:	e7a40050 	swc1	$f4,80(sp)
 428:	afa20078 	sw	v0,120(sp)
 42c:	8faa0080 	lw	t2,128(sp)
 430:	254c0001 	addiu	t4,t2,1
 434:	51920016 	beql	t4,s2,490 <func_80AE6BC0+0x200>
 438:	8fb80078 	lw	t8,120(sp)
 43c:	860d0006 	lh	t5,6(s0)
 440:	27a4006c 	addiu	a0,sp,108
 444:	02602825 	move	a1,s3
 448:	448d3000 	mtc1	t5,$f6
 44c:	02803025 	move	a2,s4
 450:	27a70060 	addiu	a3,sp,96
 454:	46803220 	cvt.s.w	$f8,$f6
 458:	e7a80048 	swc1	$f8,72(sp)
 45c:	860e0008 	lh	t6,8(s0)
 460:	448e5000 	mtc1	t6,$f10
 464:	00000000 	nop
 468:	46805420 	cvt.s.w	$f16,$f10
 46c:	e7b0004c 	swc1	$f16,76(sp)
 470:	860f000a 	lh	t7,10(s0)
 474:	448f9000 	mtc1	t7,$f18
 478:	00000000 	nop
 47c:	46809120 	cvt.s.w	$f4,$f18
 480:	0c000000 	jal	0 <EnRiverSound_Init>
 484:	e7a40050 	swc1	$f4,80(sp)
 488:	afa2007c 	sw	v0,124(sp)
 48c:	8fb80078 	lw	t8,120(sp)
 490:	8fab007c 	lw	t3,124(sp)
 494:	8fb90078 	lw	t9,120(sp)
 498:	1300001a 	beqz	t8,504 <func_80AE6BC0+0x274>
 49c:	00000000 	nop
 4a0:	11600018 	beqz	t3,504 <func_80AE6BC0+0x274>
 4a4:	27a40054 	addiu	a0,sp,84
 4a8:	27a50060 	addiu	a1,sp,96
 4ac:	02803025 	move	a2,s4
 4b0:	0c000000 	jal	0 <EnRiverSound_Init>
 4b4:	02a03825 	move	a3,s5
 4b8:	14400029 	bnez	v0,560 <func_80AE6BC0+0x2d0>
 4bc:	c7a60054 	lwc1	$f6,84(sp)
 4c0:	c7a80060 	lwc1	$f8,96(sp)
 4c4:	3c013f00 	lui	at,0x3f00
 4c8:	44810000 	mtc1	at,$f0
 4cc:	46083280 	add.s	$f10,$f6,$f8
 4d0:	46005402 	mul.s	$f16,$f10,$f0
 4d4:	e6b00000 	swc1	$f16,0(s5)
 4d8:	c7a40064 	lwc1	$f4,100(sp)
 4dc:	c7b20058 	lwc1	$f18,88(sp)
 4e0:	46049180 	add.s	$f6,$f18,$f4
 4e4:	46003202 	mul.s	$f8,$f6,$f0
 4e8:	e6a80004 	swc1	$f8,4(s5)
 4ec:	c7b00068 	lwc1	$f16,104(sp)
 4f0:	c7aa005c 	lwc1	$f10,92(sp)
 4f4:	46105480 	add.s	$f18,$f10,$f16
 4f8:	46009102 	mul.s	$f4,$f18,$f0
 4fc:	10000018 	b	560 <func_80AE6BC0+0x2d0>
 500:	e6a40008 	swc1	$f4,8(s5)
 504:	13200008 	beqz	t9,528 <func_80AE6BC0+0x298>
 508:	8fa8007c 	lw	t0,124(sp)
 50c:	c7a60054 	lwc1	$f6,84(sp)
 510:	e6a60000 	swc1	$f6,0(s5)
 514:	c7a80058 	lwc1	$f8,88(sp)
 518:	e6a80004 	swc1	$f8,4(s5)
 51c:	c7aa005c 	lwc1	$f10,92(sp)
 520:	1000000f 	b	560 <func_80AE6BC0+0x2d0>
 524:	e6aa0008 	swc1	$f10,8(s5)
 528:	11000008 	beqz	t0,54c <func_80AE6BC0+0x2bc>
 52c:	c7a6006c 	lwc1	$f6,108(sp)
 530:	c7b00060 	lwc1	$f16,96(sp)
 534:	e6b00000 	swc1	$f16,0(s5)
 538:	c7b20064 	lwc1	$f18,100(sp)
 53c:	e6b20004 	swc1	$f18,4(s5)
 540:	c7a40068 	lwc1	$f4,104(sp)
 544:	10000006 	b	560 <func_80AE6BC0+0x2d0>
 548:	e6a40008 	swc1	$f4,8(s5)
 54c:	e6a60000 	swc1	$f6,0(s5)
 550:	c7a80070 	lwc1	$f8,112(sp)
 554:	e6a80004 	swc1	$f8,4(s5)
 558:	c7aa0074 	lwc1	$f10,116(sp)
 55c:	e6aa0008 	swc1	$f10,8(s5)
 560:	24020001 	li	v0,1
 564:	8fbf0034 	lw	ra,52(sp)
 568:	d7b40010 	ldc1	$f20,16(sp)
 56c:	8fb0001c 	lw	s0,28(sp)
 570:	8fb10020 	lw	s1,32(sp)
 574:	8fb20024 	lw	s2,36(sp)
 578:	8fb30028 	lw	s3,40(sp)
 57c:	8fb4002c 	lw	s4,44(sp)
 580:	8fb50030 	lw	s5,48(sp)
 584:	03e00008 	jr	ra
 588:	27bd0088 	addiu	sp,sp,136

0000058c <EnRiverSound_Update>:
 58c:	27bdffb8 	addiu	sp,sp,-72
 590:	afbf0024 	sw	ra,36(sp)
 594:	afb00020 	sw	s0,32(sp)
 598:	afa5004c 	sw	a1,76(sp)
 59c:	8caf1c44 	lw	t7,7236(a1)
 5a0:	8fb8004c 	lw	t8,76(sp)
 5a4:	3c190001 	lui	t9,0x1
 5a8:	afaf003c 	sw	t7,60(sp)
 5ac:	8482001c 	lh	v0,28(a0)
 5b0:	00808025 	move	s0,a0
 5b4:	24010004 	li	at,4
 5b8:	10400005 	beqz	v0,5d0 <EnRiverSound_Update+0x44>
 5bc:	0338c821 	addu	t9,t9,t8
 5c0:	10410003 	beq	v0,at,5d0 <EnRiverSound_Update+0x44>
 5c4:	24010005 	li	at,5
 5c8:	54410049 	bnel	v0,at,6f0 <EnRiverSound_Update+0x164>
 5cc:	2401000d 	li	at,13
 5d0:	8608014e 	lh	t0,334(s0)
 5d4:	8f391e08 	lw	t9,7688(t9)
 5d8:	3c0d0000 	lui	t5,0x0
 5dc:	000848c0 	sll	t1,t0,0x3
 5e0:	03291021 	addu	v0,t9,t1
 5e4:	8c430004 	lw	v1,4(v0)
 5e8:	3c0100ff 	lui	at,0xff
 5ec:	3421ffff 	ori	at,at,0xffff
 5f0:	00035100 	sll	t2,v1,0x4
 5f4:	000a5f02 	srl	t3,t2,0x1c
 5f8:	000b6080 	sll	t4,t3,0x2
 5fc:	01ac6821 	addu	t5,t5,t4
 600:	8dad0000 	lw	t5,0(t5)
 604:	00617024 	and	t6,v1,at
 608:	8fa6003c 	lw	a2,60(sp)
 60c:	3c018000 	lui	at,0x8000
 610:	90450000 	lbu	a1,0(v0)
 614:	26070024 	addiu	a3,s0,36
 618:	01ae2021 	addu	a0,t5,t6
 61c:	00812021 	addu	a0,a0,at
 620:	afa70030 	sw	a3,48(sp)
 624:	0c000000 	jal	0 <EnRiverSound_Init>
 628:	24c60024 	addiu	a2,a2,36
 62c:	10400045 	beqz	v0,744 <EnRiverSound_Update+0x1b8>
 630:	8fa4004c 	lw	a0,76(sp)
 634:	8faf0030 	lw	t7,48(sp)
 638:	248407c0 	addiu	a0,a0,1984
 63c:	afa4002c 	sw	a0,44(sp)
 640:	26050078 	addiu	a1,s0,120
 644:	27a60034 	addiu	a2,sp,52
 648:	02003825 	move	a3,s0
 64c:	0c000000 	jal	0 <EnRiverSound_Init>
 650:	afaf0010 	sw	t7,16(sp)
 654:	3c01c6fa 	lui	at,0xc6fa
 658:	44812000 	mtc1	at,$f4
 65c:	8fa4002c 	lw	a0,44(sp)
 660:	8fa60034 	lw	a2,52(sp)
 664:	46040032 	c.eq.s	$f0,$f4
 668:	00000000 	nop
 66c:	45030006 	bc1tl	688 <EnRiverSound_Update+0xfc>
 670:	a200014d 	sb	zero,333(s0)
 674:	0c000000 	jal	0 <EnRiverSound_Init>
 678:	8e050078 	lw	a1,120(s0)
 67c:	10000002 	b	688 <EnRiverSound_Update+0xfc>
 680:	a202014d 	sb	v0,333(s0)
 684:	a200014d 	sb	zero,333(s0)
 688:	9202014d 	lbu	v0,333(s0)
 68c:	1440000e 	bnez	v0,6c8 <EnRiverSound_Update+0x13c>
 690:	2459ffff 	addiu	t9,v0,-1
 694:	8602001c 	lh	v0,28(s0)
 698:	24010004 	li	at,4
 69c:	14410003 	bne	v0,at,6ac <EnRiverSound_Update+0x120>
 6a0:	00000000 	nop
 6a4:	10000027 	b	744 <EnRiverSound_Update+0x1b8>
 6a8:	a200014d 	sb	zero,333(s0)
 6ac:	14400004 	bnez	v0,6c0 <EnRiverSound_Update+0x134>
 6b0:	24080002 	li	t0,2
 6b4:	24180001 	li	t8,1
 6b8:	10000022 	b	744 <EnRiverSound_Update+0x1b8>
 6bc:	a218014d 	sb	t8,333(s0)
 6c0:	10000020 	b	744 <EnRiverSound_Update+0x1b8>
 6c4:	a208014d 	sb	t0,333(s0)
 6c8:	332300ff 	andi	v1,t9,0xff
 6cc:	28610003 	slti	at,v1,3
 6d0:	14200004 	bnez	at,6e4 <EnRiverSound_Update+0x158>
 6d4:	a219014d 	sb	t9,333(s0)
 6d8:	24090002 	li	t1,2
 6dc:	10000019 	b	744 <EnRiverSound_Update+0x1b8>
 6e0:	a209014d 	sb	t1,333(s0)
 6e4:	10000017 	b	744 <EnRiverSound_Update+0x1b8>
 6e8:	a203014d 	sb	v1,333(s0)
 6ec:	2401000d 	li	at,13
 6f0:	10410004 	beq	v0,at,704 <EnRiverSound_Update+0x178>
 6f4:	8fa4003c 	lw	a0,60(sp)
 6f8:	24010013 	li	at,19
 6fc:	14410006 	bne	v0,at,718 <EnRiverSound_Update+0x18c>
 700:	8faa004c 	lw	t2,76(sp)
 704:	26050008 	addiu	a1,s0,8
 708:	0c000000 	jal	0 <EnRiverSound_Init>
 70c:	26060024 	addiu	a2,s0,36
 710:	1000000d 	b	748 <EnRiverSound_Update+0x1bc>
 714:	8fbf0024 	lw	ra,36(sp)
 718:	854b00a4 	lh	t3,164(t2)
 71c:	24010012 	li	at,18
 720:	01402025 	move	a0,t2
 724:	55610008 	bnel	t3,at,748 <EnRiverSound_Update+0x1bc>
 728:	8fbf0024 	lw	ra,36(sp)
 72c:	0c000000 	jal	0 <EnRiverSound_Init>
 730:	82050003 	lb	a1,3(s0)
 734:	50400004 	beqzl	v0,748 <EnRiverSound_Update+0x1bc>
 738:	8fbf0024 	lw	ra,36(sp)
 73c:	0c000000 	jal	0 <EnRiverSound_Init>
 740:	02002025 	move	a0,s0
 744:	8fbf0024 	lw	ra,36(sp)
 748:	8fb00020 	lw	s0,32(sp)
 74c:	27bd0048 	addiu	sp,sp,72
 750:	03e00008 	jr	ra
 754:	00000000 	nop

00000758 <EnRiverSound_Draw>:
 758:	27bdffe8 	addiu	sp,sp,-24
 75c:	afbf0014 	sw	ra,20(sp)
 760:	afa5001c 	sw	a1,28(sp)
 764:	908e014c 	lbu	t6,332(a0)
 768:	00803825 	move	a3,a0
 76c:	240f0001 	li	t7,1
 770:	55c00004 	bnezl	t6,784 <EnRiverSound_Draw+0x2c>
 774:	84e2001c 	lh	v0,28(a3)
 778:	10000045 	b	890 <EnRiverSound_Draw+0x138>
 77c:	a08f014c 	sb	t7,332(a0)
 780:	84e2001c 	lh	v0,28(a3)
 784:	24010004 	li	at,4
 788:	50400006 	beqzl	v0,7a4 <EnRiverSound_Draw+0x4c>
 78c:	90f8014d 	lbu	t8,333(a3)
 790:	10410003 	beq	v0,at,7a0 <EnRiverSound_Draw+0x48>
 794:	24010005 	li	at,5
 798:	5441000b 	bnel	v0,at,7c8 <EnRiverSound_Draw+0x70>
 79c:	2401000b 	li	at,11
 7a0:	90f8014d 	lbu	t8,333(a3)
 7a4:	3c050000 	lui	a1,0x0
 7a8:	24e400e4 	addiu	a0,a3,228
 7ac:	0018c880 	sll	t9,t8,0x2
 7b0:	00b92821 	addu	a1,a1,t9
 7b4:	0c000000 	jal	0 <EnRiverSound_Init>
 7b8:	8ca50000 	lw	a1,0(a1)
 7bc:	10000035 	b	894 <EnRiverSound_Draw+0x13c>
 7c0:	8fbf0014 	lw	ra,20(sp)
 7c4:	2401000b 	li	at,11
 7c8:	54410006 	bnel	v0,at,7e4 <EnRiverSound_Draw+0x8c>
 7cc:	2401000c 	li	at,12
 7d0:	0c000000 	jal	0 <EnRiverSound_Init>
 7d4:	2404005a 	li	a0,90
 7d8:	1000002e 	b	894 <EnRiverSound_Draw+0x13c>
 7dc:	8fbf0014 	lw	ra,20(sp)
 7e0:	2401000c 	li	at,12
 7e4:	14410005 	bne	v0,at,7fc <EnRiverSound_Draw+0xa4>
 7e8:	24e400e4 	addiu	a0,a3,228
 7ec:	0c000000 	jal	0 <EnRiverSound_Init>
 7f0:	8ce50090 	lw	a1,144(a3)
 7f4:	10000027 	b	894 <EnRiverSound_Draw+0x13c>
 7f8:	8fbf0014 	lw	ra,20(sp)
 7fc:	2401000d 	li	at,13
 800:	14410006 	bne	v0,at,81c <EnRiverSound_Draw+0xc4>
 804:	24e40008 	addiu	a0,a3,8
 808:	2405003e 	li	a1,62
 80c:	0c000000 	jal	0 <EnRiverSound_Init>
 810:	240603e8 	li	a2,1000
 814:	1000001f 	b	894 <EnRiverSound_Draw+0x13c>
 818:	8fbf0014 	lw	ra,20(sp)
 81c:	24010013 	li	at,19
 820:	14410006 	bne	v0,at,83c <EnRiverSound_Draw+0xe4>
 824:	24e40008 	addiu	a0,a3,8
 828:	24050028 	li	a1,40
 82c:	0c000000 	jal	0 <EnRiverSound_Init>
 830:	24060320 	li	a2,800
 834:	10000017 	b	894 <EnRiverSound_Draw+0x13c>
 838:	8fbf0014 	lw	ra,20(sp)
 83c:	2401000e 	li	at,14
 840:	10410008 	beq	v0,at,864 <EnRiverSound_Draw+0x10c>
 844:	00024040 	sll	t0,v0,0x1
 848:	24010010 	li	at,16
 84c:	10410005 	beq	v0,at,864 <EnRiverSound_Draw+0x10c>
 850:	24010011 	li	at,17
 854:	10410003 	beq	v0,at,864 <EnRiverSound_Draw+0x10c>
 858:	24010012 	li	at,18
 85c:	14410007 	bne	v0,at,87c <EnRiverSound_Draw+0x124>
 860:	00e02025 	move	a0,a3
 864:	3c040000 	lui	a0,0x0
 868:	00882021 	addu	a0,a0,t0
 86c:	0c000000 	jal	0 <EnRiverSound_Init>
 870:	94840000 	lhu	a0,0(a0)
 874:	10000007 	b	894 <EnRiverSound_Draw+0x13c>
 878:	8fbf0014 	lw	ra,20(sp)
 87c:	00024840 	sll	t1,v0,0x1
 880:	3c050000 	lui	a1,0x0
 884:	00a92821 	addu	a1,a1,t1
 888:	0c000000 	jal	0 <EnRiverSound_Init>
 88c:	94a50000 	lhu	a1,0(a1)
 890:	8fbf0014 	lw	ra,20(sp)
 894:	27bd0018 	addiu	sp,sp,24
 898:	03e00008 	jr	ra
 89c:	00000000 	nop
