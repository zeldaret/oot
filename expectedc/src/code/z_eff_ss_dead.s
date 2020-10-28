
build/src/code/z_eff_ss_dead.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80026230>:
   0:	27bdffa8 	addiu	sp,sp,-88
   4:	afb00018 	sw	s0,24(sp)
   8:	00a08025 	move	s0,a1
   c:	afbf001c 	sw	ra,28(sp)
  10:	afa40058 	sw	a0,88(sp)
  14:	afa60060 	sw	a2,96(sp)
  18:	afa70064 	sw	a3,100(sp)
  1c:	8c850000 	lw	a1,0(a0)
  20:	3c060000 	lui	a2,0x0
  24:	24c60000 	addiu	a2,a2,0
  28:	27a40038 	addiu	a0,sp,56
  2c:	24070071 	li	a3,113
  30:	0c000000 	jal	0 <func_80026230>
  34:	afa50048 	sw	a1,72(sp)
  38:	87b80066 	lh	t8,102(sp)
  3c:	34198000 	li	t9,0x8000
  40:	87a90062 	lh	t1,98(sp)
  44:	0338001a 	div	zero,t9,t8
  48:	00004012 	mflo	t0
  4c:	8faf0048 	lw	t7,72(sp)
  50:	00000000 	nop
  54:	01090019 	multu	t0,t1
  58:	8de502c0 	lw	a1,704(t7)
  5c:	17000002 	bnez	t8,68 <func_80026230+0x68>
  60:	00000000 	nop
  64:	0007000d 	break	0x7
  68:	2401ffff 	li	at,-1
  6c:	17010004 	bne	t8,at,80 <func_80026230+0x80>
  70:	3c018000 	lui	at,0x8000
  74:	17210002 	bne	t9,at,80 <func_80026230+0x80>
  78:	00000000 	nop
  7c:	0006000d 	break	0x6
  80:	00002012 	mflo	a0
  84:	00042400 	sll	a0,a0,0x10
  88:	00042403 	sra	a0,a0,0x10
  8c:	0c000000 	jal	0 <func_80026230>
  90:	afa50050 	sw	a1,80(sp)
  94:	44802000 	mtc1	zero,$f4
  98:	8fa50050 	lw	a1,80(sp)
  9c:	3c0ae700 	lui	t2,0xe700
  a0:	4600203e 	c.le.s	$f4,$f0
  a4:	00a01025 	move	v0,a1
  a8:	3c0df800 	lui	t5,0xf800
  ac:	3c010000 	lui	at,0x0
  b0:	45000003 	bc1f	c0 <func_80026230+0xc0>
  b4:	24a50008 	addiu	a1,a1,8
  b8:	10000002 	b	c4 <func_80026230+0xc4>
  bc:	46000086 	mov.s	$f2,$f0
  c0:	46000087 	neg.s	$f2,$f0
  c4:	ac4a0000 	sw	t2,0(v0)
  c8:	16000008 	bnez	s0,ec <func_80026230+0xec>
  cc:	ac400004 	sw	zero,4(v0)
  d0:	00a01025 	move	v0,a1
  d4:	3c0bf800 	lui	t3,0xf800
  d8:	3c0cff00 	lui	t4,0xff00
  dc:	ac4c0004 	sw	t4,4(v0)
  e0:	ac4b0000 	sw	t3,0(v0)
  e4:	1000000f 	b	124 <func_80026230+0x124>
  e8:	24a50008 	addiu	a1,a1,8
  ec:	00a01025 	move	v0,a1
  f0:	ac4d0000 	sw	t5,0(v0)
  f4:	92080001 	lbu	t0,1(s0)
  f8:	920f0000 	lbu	t7,0(s0)
  fc:	920c0002 	lbu	t4,2(s0)
 100:	92180003 	lbu	t8,3(s0)
 104:	00084c00 	sll	t1,t0,0x10
 108:	000fce00 	sll	t9,t7,0x18
 10c:	03295025 	or	t2,t9,t1
 110:	000c6a00 	sll	t5,t4,0x8
 114:	014d7025 	or	t6,t2,t5
 118:	01d84025 	or	t0,t6,t8
 11c:	ac480004 	sw	t0,4(v0)
 120:	24a50008 	addiu	a1,a1,8
 124:	00a01025 	move	v0,a1
 128:	3c19db08 	lui	t9,0xdb08
 12c:	ac590000 	sw	t9,0(v0)
 130:	c42600f0 	lwc1	$f6,240(at)
 134:	3c0f0001 	lui	t7,0x1
 138:	35eff400 	ori	t7,t7,0xf400
 13c:	46061202 	mul.s	$f8,$f2,$f6
 140:	24a50008 	addiu	a1,a1,8
 144:	3c060000 	lui	a2,0x0
 148:	24c60014 	addiu	a2,a2,20
 14c:	27a40038 	addiu	a0,sp,56
 150:	24070081 	li	a3,129
 154:	4600428d 	trunc.w.s	$f10,$f8
 158:	440b5000 	mfc1	t3,$f10
 15c:	00000000 	nop
 160:	000b6400 	sll	t4,t3,0x10
 164:	000c5403 	sra	t2,t4,0x10
 168:	254d05dc 	addiu	t5,t2,1500
 16c:	01ed001a 	div	zero,t7,t5
 170:	00001812 	mflo	v1
 174:	3063ffff 	andi	v1,v1,0xffff
 178:	00037400 	sll	t6,v1,0x10
 17c:	01c3c025 	or	t8,t6,v1
 180:	ac580004 	sw	t8,4(v0)
 184:	8fa80048 	lw	t0,72(sp)
 188:	15a00002 	bnez	t5,194 <func_80026230+0x194>
 18c:	00000000 	nop
 190:	0007000d 	break	0x7
 194:	2401ffff 	li	at,-1
 198:	15a10004 	bne	t5,at,1ac <func_80026230+0x1ac>
 19c:	3c018000 	lui	at,0x8000
 1a0:	15e10002 	bne	t7,at,1ac <func_80026230+0x1ac>
 1a4:	00000000 	nop
 1a8:	0006000d 	break	0x6
 1ac:	ad0502c0 	sw	a1,704(t0)
 1b0:	8fb90058 	lw	t9,88(sp)
 1b4:	0c000000 	jal	0 <func_80026230>
 1b8:	8f250000 	lw	a1,0(t9)
 1bc:	8fbf001c 	lw	ra,28(sp)
 1c0:	8fb00018 	lw	s0,24(sp)
 1c4:	27bd0058 	addiu	sp,sp,88
 1c8:	03e00008 	jr	ra
 1cc:	00000000 	nop

000001d0 <func_80026400>:
 1d0:	27bdffb0 	addiu	sp,sp,-80
 1d4:	afa7005c 	sw	a3,92(sp)
 1d8:	87ae005e 	lh	t6,94(sp)
 1dc:	afbf0014 	sw	ra,20(sp)
 1e0:	afa40050 	sw	a0,80(sp)
 1e4:	afa50054 	sw	a1,84(sp)
 1e8:	11c00077 	beqz	t6,3c8 <func_80026400+0x1f8>
 1ec:	afa60058 	sw	a2,88(sp)
 1f0:	8c850000 	lw	a1,0(a0)
 1f4:	3c060000 	lui	a2,0x0
 1f8:	24c60028 	addiu	a2,a2,40
 1fc:	27a40034 	addiu	a0,sp,52
 200:	2407008d 	li	a3,141
 204:	0c000000 	jal	0 <func_80026230>
 208:	afa50044 	sw	a1,68(sp)
 20c:	87b8005e 	lh	t8,94(sp)
 210:	24194000 	li	t9,16384
 214:	87a9005a 	lh	t1,90(sp)
 218:	0338001a 	div	zero,t9,t8
 21c:	00004012 	mflo	t0
 220:	8fa50054 	lw	a1,84(sp)
 224:	17000002 	bnez	t8,230 <func_80026400+0x60>
 228:	00000000 	nop
 22c:	0007000d 	break	0x7
 230:	2401ffff 	li	at,-1
 234:	17010004 	bne	t8,at,248 <func_80026400+0x78>
 238:	3c018000 	lui	at,0x8000
 23c:	17210002 	bne	t9,at,248 <func_80026400+0x78>
 240:	00000000 	nop
 244:	0006000d 	break	0x6
 248:	01090019 	multu	t0,t1
 24c:	00002012 	mflo	a0
 250:	00042400 	sll	a0,a0,0x10
 254:	0c000000 	jal	0 <func_80026230>
 258:	00042403 	sra	a0,a0,0x10
 25c:	8fa60044 	lw	a2,68(sp)
 260:	8fa50054 	lw	a1,84(sp)
 264:	3c0ae700 	lui	t2,0xe700
 268:	8cc302c0 	lw	v1,704(a2)
 26c:	3c0bf800 	lui	t3,0xf800
 270:	44801000 	mtc1	zero,$f2
 274:	00601025 	move	v0,v1
 278:	ac4a0000 	sw	t2,0(v0)
 27c:	ac400004 	sw	zero,4(v0)
 280:	24630008 	addiu	v1,v1,8
 284:	00601025 	move	v0,v1
 288:	ac4b0000 	sw	t3,0(v0)
 28c:	90ad0000 	lbu	t5,0(a1)
 290:	90b90001 	lbu	t9,1(a1)
 294:	90aa0002 	lbu	t2,2(a1)
 298:	000d7600 	sll	t6,t5,0x18
 29c:	90ad0003 	lbu	t5,3(a1)
 2a0:	0019c400 	sll	t8,t9,0x10
 2a4:	01d84025 	or	t0,t6,t8
 2a8:	000a5a00 	sll	t3,t2,0x8
 2ac:	4600103e 	c.le.s	$f2,$f0
 2b0:	010b6025 	or	t4,t0,t3
 2b4:	01a07825 	move	t7,t5
 2b8:	018fc825 	or	t9,t4,t7
 2bc:	ac590004 	sw	t9,4(v0)
 2c0:	24630008 	addiu	v1,v1,8
 2c4:	00601025 	move	v0,v1
 2c8:	3c0edb08 	lui	t6,0xdb08
 2cc:	ac4e0000 	sw	t6,0(v0)
 2d0:	45000003 	bc1f	2e0 <func_80026400+0x110>
 2d4:	24630008 	addiu	v1,v1,8
 2d8:	10000002 	b	2e4 <func_80026400+0x114>
 2dc:	46000306 	mov.s	$f12,$f0
 2e0:	46000307 	neg.s	$f12,$f0
 2e4:	4600103e 	c.le.s	$f2,$f0
 2e8:	3c01452f 	lui	at,0x452f
 2ec:	45020004 	bc1fl	300 <func_80026400+0x130>
 2f0:	46000087 	neg.s	$f2,$f0
 2f4:	10000002 	b	300 <func_80026400+0x130>
 2f8:	46000086 	mov.s	$f2,$f0
 2fc:	46000087 	neg.s	$f2,$f0
 300:	44810000 	mtc1	at,$f0
 304:	3c040001 	lui	a0,0x1
 308:	3484f400 	ori	a0,a0,0xf400
 30c:	46001102 	mul.s	$f4,$f2,$f0
 310:	24070099 	li	a3,153
 314:	460c0202 	mul.s	$f8,$f0,$f12
 318:	4600218d 	trunc.w.s	$f6,$f4
 31c:	4600428d 	trunc.w.s	$f10,$f8
 320:	44093000 	mfc1	t1,$f6
 324:	00000000 	nop
 328:	00095400 	sll	t2,t1,0x10
 32c:	000a4403 	sra	t0,t2,0x10
 330:	250b06a4 	addiu	t3,t0,1700
 334:	008b001a 	div	zero,a0,t3
 338:	44195000 	mfc1	t9,$f10
 33c:	00006812 	mflo	t5
 340:	31acffff 	andi	t4,t5,0xffff
 344:	00197400 	sll	t6,t9,0x10
 348:	000ec403 	sra	t8,t6,0x10
 34c:	270906a4 	addiu	t1,t8,1700
 350:	0089001a 	div	zero,a0,t1
 354:	15600002 	bnez	t3,360 <func_80026400+0x190>
 358:	00000000 	nop
 35c:	0007000d 	break	0x7
 360:	2401ffff 	li	at,-1
 364:	15610004 	bne	t3,at,378 <func_80026400+0x1a8>
 368:	3c018000 	lui	at,0x8000
 36c:	14810002 	bne	a0,at,378 <func_80026400+0x1a8>
 370:	00000000 	nop
 374:	0006000d 	break	0x6
 378:	00004012 	mflo	t0
 37c:	00085c00 	sll	t3,t0,0x10
 380:	018b6825 	or	t5,t4,t3
 384:	ac4d0004 	sw	t5,4(v0)
 388:	acc302c0 	sw	v1,704(a2)
 38c:	8faf0050 	lw	t7,80(sp)
 390:	15200002 	bnez	t1,39c <func_80026400+0x1cc>
 394:	00000000 	nop
 398:	0007000d 	break	0x7
 39c:	2401ffff 	li	at,-1
 3a0:	15210004 	bne	t1,at,3b4 <func_80026400+0x1e4>
 3a4:	3c018000 	lui	at,0x8000
 3a8:	14810002 	bne	a0,at,3b4 <func_80026400+0x1e4>
 3ac:	00000000 	nop
 3b0:	0006000d 	break	0x6
 3b4:	3c060000 	lui	a2,0x0
 3b8:	24c6003c 	addiu	a2,a2,60
 3bc:	27a40034 	addiu	a0,sp,52
 3c0:	0c000000 	jal	0 <func_80026230>
 3c4:	8de50000 	lw	a1,0(t7)
 3c8:	8fbf0014 	lw	ra,20(sp)
 3cc:	27bd0050 	addiu	sp,sp,80
 3d0:	03e00008 	jr	ra
 3d4:	00000000 	nop

000003d8 <func_80026608>:
 3d8:	27bdffc8 	addiu	sp,sp,-56
 3dc:	afbf0014 	sw	ra,20(sp)
 3e0:	afa40038 	sw	a0,56(sp)
 3e4:	8c850000 	lw	a1,0(a0)
 3e8:	3c060000 	lui	a2,0x0
 3ec:	24c60050 	addiu	a2,a2,80
 3f0:	27a40020 	addiu	a0,sp,32
 3f4:	2407009f 	li	a3,159
 3f8:	0c000000 	jal	0 <func_80026230>
 3fc:	afa50030 	sw	a1,48(sp)
 400:	8fa80030 	lw	t0,48(sp)
 404:	3c18e700 	lui	t8,0xe700
 408:	8d0302c0 	lw	v1,704(t0)
 40c:	246f0008 	addiu	t7,v1,8
 410:	ad0f02c0 	sw	t7,704(t0)
 414:	ac600004 	sw	zero,4(v1)
 418:	ac780000 	sw	t8,0(v1)
 41c:	8d0502c0 	lw	a1,704(t0)
 420:	8fa40038 	lw	a0,56(sp)
 424:	0c000000 	jal	0 <func_80026230>
 428:	afa80030 	sw	t0,48(sp)
 42c:	8fa80030 	lw	t0,48(sp)
 430:	3c060000 	lui	a2,0x0
 434:	24c60064 	addiu	a2,a2,100
 438:	ad0202c0 	sw	v0,704(t0)
 43c:	8fb90038 	lw	t9,56(sp)
 440:	27a40020 	addiu	a0,sp,32
 444:	240700a4 	li	a3,164
 448:	0c000000 	jal	0 <func_80026230>
 44c:	8f250000 	lw	a1,0(t9)
 450:	8fbf0014 	lw	ra,20(sp)
 454:	27bd0038 	addiu	sp,sp,56
 458:	03e00008 	jr	ra
 45c:	00000000 	nop

00000460 <func_80026690>:
 460:	27bdffa8 	addiu	sp,sp,-88
 464:	afb00018 	sw	s0,24(sp)
 468:	00a08025 	move	s0,a1
 46c:	afbf001c 	sw	ra,28(sp)
 470:	afa40058 	sw	a0,88(sp)
 474:	afa60060 	sw	a2,96(sp)
 478:	afa70064 	sw	a3,100(sp)
 47c:	8c850000 	lw	a1,0(a0)
 480:	3c060000 	lui	a2,0x0
 484:	24c60078 	addiu	a2,a2,120
 488:	27a40038 	addiu	a0,sp,56
 48c:	240700b2 	li	a3,178
 490:	0c000000 	jal	0 <func_80026230>
 494:	afa50048 	sw	a1,72(sp)
 498:	87b80066 	lh	t8,102(sp)
 49c:	34198000 	li	t9,0x8000
 4a0:	87a90062 	lh	t1,98(sp)
 4a4:	0338001a 	div	zero,t9,t8
 4a8:	00004012 	mflo	t0
 4ac:	8faf0048 	lw	t7,72(sp)
 4b0:	00000000 	nop
 4b4:	01090019 	multu	t0,t1
 4b8:	8de502d0 	lw	a1,720(t7)
 4bc:	17000002 	bnez	t8,4c8 <func_80026690+0x68>
 4c0:	00000000 	nop
 4c4:	0007000d 	break	0x7
 4c8:	2401ffff 	li	at,-1
 4cc:	17010004 	bne	t8,at,4e0 <func_80026690+0x80>
 4d0:	3c018000 	lui	at,0x8000
 4d4:	17210002 	bne	t9,at,4e0 <func_80026690+0x80>
 4d8:	00000000 	nop
 4dc:	0006000d 	break	0x6
 4e0:	00002012 	mflo	a0
 4e4:	00042400 	sll	a0,a0,0x10
 4e8:	00042403 	sra	a0,a0,0x10
 4ec:	0c000000 	jal	0 <func_80026230>
 4f0:	afa50050 	sw	a1,80(sp)
 4f4:	44802000 	mtc1	zero,$f4
 4f8:	8fa50050 	lw	a1,80(sp)
 4fc:	3c0ae700 	lui	t2,0xe700
 500:	4600203e 	c.le.s	$f4,$f0
 504:	00a01025 	move	v0,a1
 508:	3c0df800 	lui	t5,0xf800
 50c:	3c010000 	lui	at,0x0
 510:	45000003 	bc1f	520 <func_80026690+0xc0>
 514:	24a50008 	addiu	a1,a1,8
 518:	10000002 	b	524 <func_80026690+0xc4>
 51c:	46000086 	mov.s	$f2,$f0
 520:	46000087 	neg.s	$f2,$f0
 524:	ac4a0000 	sw	t2,0(v0)
 528:	16000008 	bnez	s0,54c <func_80026690+0xec>
 52c:	ac400004 	sw	zero,4(v0)
 530:	00a01025 	move	v0,a1
 534:	3c0bf800 	lui	t3,0xf800
 538:	3c0cff00 	lui	t4,0xff00
 53c:	ac4c0004 	sw	t4,4(v0)
 540:	ac4b0000 	sw	t3,0(v0)
 544:	1000000f 	b	584 <func_80026690+0x124>
 548:	24a50008 	addiu	a1,a1,8
 54c:	00a01025 	move	v0,a1
 550:	ac4d0000 	sw	t5,0(v0)
 554:	92080001 	lbu	t0,1(s0)
 558:	920f0000 	lbu	t7,0(s0)
 55c:	920c0002 	lbu	t4,2(s0)
 560:	92180003 	lbu	t8,3(s0)
 564:	00084c00 	sll	t1,t0,0x10
 568:	000fce00 	sll	t9,t7,0x18
 56c:	03295025 	or	t2,t9,t1
 570:	000c6a00 	sll	t5,t4,0x8
 574:	014d7025 	or	t6,t2,t5
 578:	01d84025 	or	t0,t6,t8
 57c:	ac480004 	sw	t0,4(v0)
 580:	24a50008 	addiu	a1,a1,8
 584:	00a01025 	move	v0,a1
 588:	3c19db08 	lui	t9,0xdb08
 58c:	ac590000 	sw	t9,0(v0)
 590:	c42600f4 	lwc1	$f6,244(at)
 594:	3c0f0001 	lui	t7,0x1
 598:	35eff400 	ori	t7,t7,0xf400
 59c:	46061202 	mul.s	$f8,$f2,$f6
 5a0:	24a50008 	addiu	a1,a1,8
 5a4:	3c060000 	lui	a2,0x0
 5a8:	24c6008c 	addiu	a2,a2,140
 5ac:	27a40038 	addiu	a0,sp,56
 5b0:	240700c2 	li	a3,194
 5b4:	4600428d 	trunc.w.s	$f10,$f8
 5b8:	440b5000 	mfc1	t3,$f10
 5bc:	00000000 	nop
 5c0:	000b6400 	sll	t4,t3,0x10
 5c4:	000c5403 	sra	t2,t4,0x10
 5c8:	254d05dc 	addiu	t5,t2,1500
 5cc:	01ed001a 	div	zero,t7,t5
 5d0:	00001812 	mflo	v1
 5d4:	3063ffff 	andi	v1,v1,0xffff
 5d8:	00037400 	sll	t6,v1,0x10
 5dc:	01c3c025 	or	t8,t6,v1
 5e0:	ac580004 	sw	t8,4(v0)
 5e4:	8fa80048 	lw	t0,72(sp)
 5e8:	15a00002 	bnez	t5,5f4 <func_80026690+0x194>
 5ec:	00000000 	nop
 5f0:	0007000d 	break	0x7
 5f4:	2401ffff 	li	at,-1
 5f8:	15a10004 	bne	t5,at,60c <func_80026690+0x1ac>
 5fc:	3c018000 	lui	at,0x8000
 600:	15e10002 	bne	t7,at,60c <func_80026690+0x1ac>
 604:	00000000 	nop
 608:	0006000d 	break	0x6
 60c:	ad0502d0 	sw	a1,720(t0)
 610:	8fb90058 	lw	t9,88(sp)
 614:	0c000000 	jal	0 <func_80026230>
 618:	8f250000 	lw	a1,0(t9)
 61c:	8fbf001c 	lw	ra,28(sp)
 620:	8fb00018 	lw	s0,24(sp)
 624:	27bd0058 	addiu	sp,sp,88
 628:	03e00008 	jr	ra
 62c:	00000000 	nop

00000630 <func_80026860>:
 630:	27bdffb0 	addiu	sp,sp,-80
 634:	afbf0014 	sw	ra,20(sp)
 638:	afa40050 	sw	a0,80(sp)
 63c:	afa50054 	sw	a1,84(sp)
 640:	afa60058 	sw	a2,88(sp)
 644:	afa7005c 	sw	a3,92(sp)
 648:	8c850000 	lw	a1,0(a0)
 64c:	3c060000 	lui	a2,0x0
 650:	24c600a0 	addiu	a2,a2,160
 654:	27a40034 	addiu	a0,sp,52
 658:	240700c9 	li	a3,201
 65c:	0c000000 	jal	0 <func_80026230>
 660:	afa50044 	sw	a1,68(sp)
 664:	87b8005e 	lh	t8,94(sp)
 668:	24194000 	li	t9,16384
 66c:	87a9005a 	lh	t1,90(sp)
 670:	0338001a 	div	zero,t9,t8
 674:	00004012 	mflo	t0
 678:	8faf0044 	lw	t7,68(sp)
 67c:	8fa50054 	lw	a1,84(sp)
 680:	01090019 	multu	t0,t1
 684:	8de302d0 	lw	v1,720(t7)
 688:	17000002 	bnez	t8,694 <func_80026860+0x64>
 68c:	00000000 	nop
 690:	0007000d 	break	0x7
 694:	2401ffff 	li	at,-1
 698:	17010004 	bne	t8,at,6ac <func_80026860+0x7c>
 69c:	3c018000 	lui	at,0x8000
 6a0:	17210002 	bne	t9,at,6ac <func_80026860+0x7c>
 6a4:	00000000 	nop
 6a8:	0006000d 	break	0x6
 6ac:	00002012 	mflo	a0
 6b0:	00042400 	sll	a0,a0,0x10
 6b4:	00042403 	sra	a0,a0,0x10
 6b8:	0c000000 	jal	0 <func_80026230>
 6bc:	afa30048 	sw	v1,72(sp)
 6c0:	8fa30048 	lw	v1,72(sp)
 6c4:	8fa50054 	lw	a1,84(sp)
 6c8:	3c0ae700 	lui	t2,0xe700
 6cc:	00601025 	move	v0,v1
 6d0:	ac4a0000 	sw	t2,0(v0)
 6d4:	ac400004 	sw	zero,4(v0)
 6d8:	24630008 	addiu	v1,v1,8
 6dc:	00601025 	move	v0,v1
 6e0:	3c0bf800 	lui	t3,0xf800
 6e4:	ac4b0000 	sw	t3,0(v0)
 6e8:	90ad0000 	lbu	t5,0(a1)
 6ec:	90b90001 	lbu	t9,1(a1)
 6f0:	90aa0002 	lbu	t2,2(a1)
 6f4:	000d7600 	sll	t6,t5,0x18
 6f8:	44801000 	mtc1	zero,$f2
 6fc:	90ad0003 	lbu	t5,3(a1)
 700:	0019c400 	sll	t8,t9,0x10
 704:	01d84025 	or	t0,t6,t8
 708:	000a5a00 	sll	t3,t2,0x8
 70c:	4600103e 	c.le.s	$f2,$f0
 710:	010b6025 	or	t4,t0,t3
 714:	01a07825 	move	t7,t5
 718:	018fc825 	or	t9,t4,t7
 71c:	ac590004 	sw	t9,4(v0)
 720:	24630008 	addiu	v1,v1,8
 724:	00601025 	move	v0,v1
 728:	3c0edb08 	lui	t6,0xdb08
 72c:	ac4e0000 	sw	t6,0(v0)
 730:	45000003 	bc1f	740 <func_80026860+0x110>
 734:	24630008 	addiu	v1,v1,8
 738:	10000002 	b	744 <func_80026860+0x114>
 73c:	46000306 	mov.s	$f12,$f0
 740:	46000307 	neg.s	$f12,$f0
 744:	4600103e 	c.le.s	$f2,$f0
 748:	3c01452f 	lui	at,0x452f
 74c:	45020004 	bc1fl	760 <func_80026860+0x130>
 750:	46000087 	neg.s	$f2,$f0
 754:	10000002 	b	760 <func_80026860+0x130>
 758:	46000086 	mov.s	$f2,$f0
 75c:	46000087 	neg.s	$f2,$f0
 760:	44810000 	mtc1	at,$f0
 764:	3c040001 	lui	a0,0x1
 768:	3484f400 	ori	a0,a0,0xf400
 76c:	46001102 	mul.s	$f4,$f2,$f0
 770:	3c060000 	lui	a2,0x0
 774:	24c600b4 	addiu	a2,a2,180
 778:	460c0202 	mul.s	$f8,$f0,$f12
 77c:	240700d4 	li	a3,212
 780:	4600218d 	trunc.w.s	$f6,$f4
 784:	4600428d 	trunc.w.s	$f10,$f8
 788:	44093000 	mfc1	t1,$f6
 78c:	00000000 	nop
 790:	00095400 	sll	t2,t1,0x10
 794:	000a4403 	sra	t0,t2,0x10
 798:	250b06a4 	addiu	t3,t0,1700
 79c:	008b001a 	div	zero,a0,t3
 7a0:	44195000 	mfc1	t9,$f10
 7a4:	00006812 	mflo	t5
 7a8:	31acffff 	andi	t4,t5,0xffff
 7ac:	00197400 	sll	t6,t9,0x10
 7b0:	000ec403 	sra	t8,t6,0x10
 7b4:	270906a4 	addiu	t1,t8,1700
 7b8:	0089001a 	div	zero,a0,t1
 7bc:	15600002 	bnez	t3,7c8 <func_80026860+0x198>
 7c0:	00000000 	nop
 7c4:	0007000d 	break	0x7
 7c8:	2401ffff 	li	at,-1
 7cc:	15610004 	bne	t3,at,7e0 <func_80026860+0x1b0>
 7d0:	3c018000 	lui	at,0x8000
 7d4:	14810002 	bne	a0,at,7e0 <func_80026860+0x1b0>
 7d8:	00000000 	nop
 7dc:	0006000d 	break	0x6
 7e0:	00004012 	mflo	t0
 7e4:	00085c00 	sll	t3,t0,0x10
 7e8:	018b6825 	or	t5,t4,t3
 7ec:	ac4d0004 	sw	t5,4(v0)
 7f0:	8faf0044 	lw	t7,68(sp)
 7f4:	15200002 	bnez	t1,800 <func_80026860+0x1d0>
 7f8:	00000000 	nop
 7fc:	0007000d 	break	0x7
 800:	2401ffff 	li	at,-1
 804:	15210004 	bne	t1,at,818 <func_80026860+0x1e8>
 808:	3c018000 	lui	at,0x8000
 80c:	14810002 	bne	a0,at,818 <func_80026860+0x1e8>
 810:	00000000 	nop
 814:	0006000d 	break	0x6
 818:	ade302d0 	sw	v1,720(t7)
 81c:	8fb90050 	lw	t9,80(sp)
 820:	27a40034 	addiu	a0,sp,52
 824:	0c000000 	jal	0 <func_80026230>
 828:	8f250000 	lw	a1,0(t9)
 82c:	8fbf0014 	lw	ra,20(sp)
 830:	27bd0050 	addiu	sp,sp,80
 834:	03e00008 	jr	ra
 838:	00000000 	nop

0000083c <func_80026A6C>:
 83c:	27bdffc8 	addiu	sp,sp,-56
 840:	afbf0014 	sw	ra,20(sp)
 844:	afa40038 	sw	a0,56(sp)
 848:	8c850000 	lw	a1,0(a0)
 84c:	3c060000 	lui	a2,0x0
 850:	24c600c8 	addiu	a2,a2,200
 854:	27a40020 	addiu	a0,sp,32
 858:	240700d9 	li	a3,217
 85c:	0c000000 	jal	0 <func_80026230>
 860:	afa50030 	sw	a1,48(sp)
 864:	8fa80030 	lw	t0,48(sp)
 868:	3c18e700 	lui	t8,0xe700
 86c:	8d0302d0 	lw	v1,720(t0)
 870:	246f0008 	addiu	t7,v1,8
 874:	ad0f02d0 	sw	t7,720(t0)
 878:	ac600004 	sw	zero,4(v1)
 87c:	ac780000 	sw	t8,0(v1)
 880:	8d0502d0 	lw	a1,720(t0)
 884:	8fa40038 	lw	a0,56(sp)
 888:	0c000000 	jal	0 <func_80026230>
 88c:	afa80030 	sw	t0,48(sp)
 890:	8fa80030 	lw	t0,48(sp)
 894:	3c060000 	lui	a2,0x0
 898:	24c600dc 	addiu	a2,a2,220
 89c:	ad0202d0 	sw	v0,720(t0)
 8a0:	8fb90038 	lw	t9,56(sp)
 8a4:	27a40020 	addiu	a0,sp,32
 8a8:	240700de 	li	a3,222
 8ac:	0c000000 	jal	0 <func_80026230>
 8b0:	8f250000 	lw	a1,0(t9)
 8b4:	8fbf0014 	lw	ra,20(sp)
 8b8:	27bd0038 	addiu	sp,sp,56
 8bc:	03e00008 	jr	ra
 8c0:	00000000 	nop
	...
