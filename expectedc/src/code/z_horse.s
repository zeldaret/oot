
build/src/code/z_horse.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8006CFC0>:
   0:	3c0e0000 	lui	t6,0x0
   4:	25ce0000 	addiu	t6,t6,0
   8:	8dd80000 	lw	t8,0(t6)
   c:	27bdffe0 	addiu	sp,sp,-32
  10:	27a5000c 	addiu	a1,sp,12
  14:	acb80000 	sw	t8,0(a1)
  18:	8dcf0004 	lw	t7,4(t6)
  1c:	24020001 	li	v0,1
  20:	00024080 	sll	t0,v0,0x2
  24:	acaf0004 	sw	t7,4(a1)
  28:	8dd80008 	lw	t8,8(t6)
  2c:	00a81821 	addu	v1,a1,t0
  30:	acb80008 	sw	t8,8(a1)
  34:	8dcf000c 	lw	t7,12(t6)
  38:	acaf000c 	sw	t7,12(a1)
  3c:	8dd80010 	lw	t8,16(t6)
  40:	acb80010 	sw	t8,16(a1)
  44:	8fb9000c 	lw	t9,12(sp)
  48:	54990004 	bnel	a0,t9,5c <func_8006CFC0+0x5c>
  4c:	8c690000 	lw	t1,0(v1)
  50:	10000016 	b	ac <func_8006CFC0+0xac>
  54:	24020001 	li	v0,1
  58:	8c690000 	lw	t1,0(v1)
  5c:	54890004 	bnel	a0,t1,70 <func_8006CFC0+0x70>
  60:	8c6a0004 	lw	t2,4(v1)
  64:	10000011 	b	ac <func_8006CFC0+0xac>
  68:	24020001 	li	v0,1
  6c:	8c6a0004 	lw	t2,4(v1)
  70:	548a0004 	bnel	a0,t2,84 <func_8006CFC0+0x84>
  74:	8c6b0008 	lw	t3,8(v1)
  78:	1000000c 	b	ac <func_8006CFC0+0xac>
  7c:	24020001 	li	v0,1
  80:	8c6b0008 	lw	t3,8(v1)
  84:	548b0004 	bnel	a0,t3,98 <func_8006CFC0+0x98>
  88:	8c6c000c 	lw	t4,12(v1)
  8c:	10000007 	b	ac <func_8006CFC0+0xac>
  90:	24020001 	li	v0,1
  94:	8c6c000c 	lw	t4,12(v1)
  98:	00001025 	move	v0,zero
  9c:	148c0003 	bne	a0,t4,ac <func_8006CFC0+0xac>
  a0:	00000000 	nop
  a4:	10000001 	b	ac <func_8006CFC0+0xac>
  a8:	24020001 	li	v0,1
  ac:	03e00008 	jr	ra
  b0:	27bd0020 	addiu	sp,sp,32

000000b4 <func_8006D074>:
  b4:	3c020000 	lui	v0,0x0
  b8:	24420000 	addiu	v0,v0,0
  bc:	240e0051 	li	t6,81
  c0:	240ff8d0 	li	t7,-1840
  c4:	24180048 	li	t8,72
  c8:	24191579 	li	t9,5497
  cc:	24089527 	li	t0,-27353
  d0:	afa40000 	sw	a0,0(sp)
  d4:	a44e1348 	sh	t6,4936(v0)
  d8:	a44f134a 	sh	t7,4938(v0)
  dc:	a458134c 	sh	t8,4940(v0)
  e0:	a459134e 	sh	t9,4942(v0)
  e4:	03e00008 	jr	ra
  e8:	a4481350 	sh	t0,4944(v0)

000000ec <func_8006D0AC>:
  ec:	3c030000 	lui	v1,0x0
  f0:	24630000 	addiu	v1,v1,0
  f4:	846e1348 	lh	t6,4936(v1)
  f8:	24020057 	li	v0,87
  fc:	afa40000 	sw	a0,0(sp)
 100:	144e0008 	bne	v0,t6,124 <func_8006D0AC+0x38>
 104:	240ff7ef 	li	t7,-2065
 108:	2418fca1 	li	t8,-863
 10c:	2419072f 	li	t9,1839
 110:	a4621348 	sh	v0,4936(v1)
 114:	a46f134a 	sh	t7,4938(v1)
 118:	a478134c 	sh	t8,4940(v1)
 11c:	a479134e 	sh	t9,4942(v1)
 120:	a4601350 	sh	zero,4944(v1)
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <func_8006D0EC>:
 12c:	27bdff60 	addiu	sp,sp,-160
 130:	3c0f0000 	lui	t7,0x0
 134:	afb00030 	sw	s0,48(sp)
 138:	25ef0014 	addiu	t7,t7,20
 13c:	00808025 	move	s0,a0
 140:	afbf0034 	sw	ra,52(sp)
 144:	afa500a4 	sw	a1,164(sp)
 148:	25e8003c 	addiu	t0,t7,60
 14c:	27ae0060 	addiu	t6,sp,96
 150:	8df90000 	lw	t9,0(t7)
 154:	25ef000c 	addiu	t7,t7,12
 158:	25ce000c 	addiu	t6,t6,12
 15c:	add9fff4 	sw	t9,-12(t6)
 160:	8df8fff8 	lw	t8,-8(t7)
 164:	add8fff8 	sw	t8,-8(t6)
 168:	8df9fffc 	lw	t9,-4(t7)
 16c:	15e8fff8 	bne	t7,t0,150 <func_8006D0EC+0x24>
 170:	add9fffc 	sw	t9,-4(t6)
 174:	3c090000 	lui	t1,0x0
 178:	8d290000 	lw	t1,0(t1)
 17c:	852a0e60 	lh	t2,3680(t1)
 180:	5140003a 	beqzl	t2,26c <func_8006D0EC+0x140>
 184:	860400a4 	lh	a0,164(s0)
 188:	0c000000 	jal	0 <func_8006CFC0>
 18c:	24040018 	li	a0,24
 190:	14400005 	bnez	v0,1a8 <func_8006D0EC+0x7c>
 194:	3c0b0000 	lui	t3,0x0
 198:	8d6b0000 	lw	t3,0(t3)
 19c:	856c0556 	lh	t4,1366(t3)
 1a0:	51800032 	beqzl	t4,26c <func_8006D0EC+0x140>
 1a4:	860400a4 	lh	a0,164(s0)
 1a8:	8fa200a4 	lw	v0,164(sp)
 1ac:	240e0009 	li	t6,9
 1b0:	26041c24 	addiu	a0,s0,7204
 1b4:	c4440028 	lwc1	$f4,40(v0)
 1b8:	8c470024 	lw	a3,36(v0)
 1bc:	02002825 	move	a1,s0
 1c0:	e7a40010 	swc1	$f4,16(sp)
 1c4:	c446002c 	lwc1	$f6,44(v0)
 1c8:	24060014 	li	a2,20
 1cc:	e7a60014 	swc1	$f6,20(sp)
 1d0:	844d00b4 	lh	t5,180(v0)
 1d4:	afad0018 	sw	t5,24(sp)
 1d8:	844800b6 	lh	t0,182(v0)
 1dc:	afa8001c 	sw	t0,28(sp)
 1e0:	844f00b8 	lh	t7,184(v0)
 1e4:	afae0024 	sw	t6,36(sp)
 1e8:	0c000000 	jal	0 <func_8006CFC0>
 1ec:	afaf0020 	sw	t7,32(sp)
 1f0:	8fa700a4 	lw	a3,164(sp)
 1f4:	3c040000 	lui	a0,0x0
 1f8:	14400007 	bnez	v0,218 <func_8006D0EC+0xec>
 1fc:	ace20440 	sw	v0,1088(a3)
 200:	3c050000 	lui	a1,0x0
 204:	24a5001c 	addiu	a1,a1,28
 208:	24840000 	addiu	a0,a0,0
 20c:	0c000000 	jal	0 <func_8006CFC0>
 210:	24060157 	li	a2,343
 214:	8fa700a4 	lw	a3,164(sp)
 218:	02002025 	move	a0,s0
 21c:	00e02825 	move	a1,a3
 220:	0c000000 	jal	0 <func_8006CFC0>
 224:	8ce60440 	lw	a2,1088(a3)
 228:	02002025 	move	a0,s0
 22c:	0c000000 	jal	0 <func_8006CFC0>
 230:	8fa500a4 	lw	a1,164(sp)
 234:	861800a4 	lh	t8,164(s0)
 238:	3c030000 	lui	v1,0x0
 23c:	24630000 	addiu	v1,v1,0
 240:	a4781348 	sh	t8,4936(v1)
 244:	861900a4 	lh	t9,164(s0)
 248:	2401005d 	li	at,93
 24c:	8faa00a4 	lw	t2,164(sp)
 250:	57210118 	bnel	t9,at,6b4 <func_8006D0EC+0x588>
 254:	8fbf0034 	lw	ra,52(sp)
 258:	8d4b0440 	lw	t3,1088(t2)
 25c:	2409ffff 	li	t1,-1
 260:	10000113 	b	6b0 <func_8006D0EC+0x584>
 264:	a1690003 	sb	t1,3(t3)
 268:	860400a4 	lh	a0,164(s0)
 26c:	2401005d 	li	at,93
 270:	3c030000 	lui	v1,0x0
 274:	1481001a 	bne	a0,at,2e0 <func_8006D0EC+0x1b4>
 278:	24630000 	addiu	v1,v1,0
 27c:	946c1404 	lhu	t4,5124(v1)
 280:	24010003 	li	at,3
 284:	02002825 	move	a1,s0
 288:	15810015 	bne	t4,at,2e0 <func_8006D0EC+0x1b4>
 28c:	24060014 	li	a2,20
 290:	a4601404 	sh	zero,5124(v1)
 294:	3c010000 	lui	at,0x0
 298:	c4280214 	lwc1	$f8,532(at)
 29c:	3c01c3c9 	lui	at,0xc3c9
 2a0:	44815000 	mtc1	at,$f10
 2a4:	3c074560 	lui	a3,0x4560
 2a8:	240d4000 	li	t5,16384
 2ac:	24080001 	li	t0,1
 2b0:	afa80024 	sw	t0,36(sp)
 2b4:	afad001c 	sw	t5,28(sp)
 2b8:	34e72000 	ori	a3,a3,0x2000
 2bc:	26041c24 	addiu	a0,s0,7204
 2c0:	afa00018 	sw	zero,24(sp)
 2c4:	afa00020 	sw	zero,32(sp)
 2c8:	e7a80010 	swc1	$f8,16(sp)
 2cc:	0c000000 	jal	0 <func_8006CFC0>
 2d0:	e7aa0014 	swc1	$f10,20(sp)
 2d4:	240fffff 	li	t7,-1
 2d8:	100000f5 	b	6b0 <func_8006D0EC+0x584>
 2dc:	a04f0003 	sb	t7,3(v0)
 2e0:	3c030000 	lui	v1,0x0
 2e4:	24630000 	addiu	v1,v1,0
 2e8:	8c6e0000 	lw	t6,0(v1)
 2ec:	240104ce 	li	at,1230
 2f0:	55c1001e 	bnel	t6,at,36c <func_8006D0EC+0x240>
 2f4:	846b1348 	lh	t3,4936(v1)
 2f8:	94780ed6 	lhu	t8,3798(v1)
 2fc:	02002825 	move	a1,s0
 300:	24060014 	li	a2,20
 304:	33190100 	andi	t9,t8,0x100
 308:	13200017 	beqz	t9,368 <func_8006D0EC+0x23c>
 30c:	3c07c1c8 	lui	a3,0xc1c8
 310:	3c01c4c8 	lui	at,0xc4c8
 314:	44800000 	mtc1	zero,$f0
 318:	44818000 	mtc1	at,$f16
 31c:	240ac000 	li	t2,-16384
 320:	24090001 	li	t1,1
 324:	afa90024 	sw	t1,36(sp)
 328:	afaa001c 	sw	t2,28(sp)
 32c:	26041c24 	addiu	a0,s0,7204
 330:	afa00018 	sw	zero,24(sp)
 334:	afa00020 	sw	zero,32(sp)
 338:	e7a00010 	swc1	$f0,16(sp)
 33c:	0c000000 	jal	0 <func_8006CFC0>
 340:	e7b00014 	swc1	$f16,20(sp)
 344:	144000da 	bnez	v0,6b0 <func_8006D0EC+0x584>
 348:	3c040000 	lui	a0,0x0
 34c:	3c050000 	lui	a1,0x0
 350:	24a50040 	addiu	a1,a1,64
 354:	2484002c 	addiu	a0,a0,44
 358:	0c000000 	jal	0 <func_8006CFC0>
 35c:	24060185 	li	a2,389
 360:	100000d4 	b	6b4 <func_8006D0EC+0x588>
 364:	8fbf0034 	lw	ra,52(sp)
 368:	846b1348 	lh	t3,4936(v1)
 36c:	55640054 	bnel	t3,a0,4c0 <func_8006D0EC+0x394>
 370:	860c00a4 	lh	t4,164(s0)
 374:	0c000000 	jal	0 <func_8006CFC0>
 378:	24040018 	li	a0,24
 37c:	14400005 	bnez	v0,394 <func_8006D0EC+0x268>
 380:	3c0c0000 	lui	t4,0x0
 384:	8d8c0000 	lw	t4,0(t4)
 388:	858d0556 	lh	t5,1366(t4)
 38c:	51a0004c 	beqzl	t5,4c0 <func_8006D0EC+0x394>
 390:	860c00a4 	lh	t4,164(s0)
 394:	0c000000 	jal	0 <func_8006CFC0>
 398:	24040018 	li	a0,24
 39c:	3c080000 	lui	t0,0x0
 3a0:	8d080000 	lw	t0,0(t0)
 3a4:	3c030000 	lui	v1,0x0
 3a8:	24630000 	addiu	v1,v1,0
 3ac:	3c040000 	lui	a0,0x0
 3b0:	24840050 	addiu	a0,a0,80
 3b4:	84651348 	lh	a1,4936(v1)
 3b8:	00403025 	move	a2,v0
 3bc:	0c000000 	jal	0 <func_8006CFC0>
 3c0:	85070556 	lh	a3,1366(t0)
 3c4:	3c030000 	lui	v1,0x0
 3c8:	24630000 	addiu	v1,v1,0
 3cc:	0c000000 	jal	0 <func_8006CFC0>
 3d0:	84641348 	lh	a0,4936(v1)
 3d4:	3c030000 	lui	v1,0x0
 3d8:	10400028 	beqz	v0,47c <func_8006D0EC+0x350>
 3dc:	24630000 	addiu	v1,v1,0
 3e0:	846f134a 	lh	t7,4938(v1)
 3e4:	846e134c 	lh	t6,4940(v1)
 3e8:	8478134e 	lh	t8,4942(v1)
 3ec:	448f9000 	mtc1	t7,$f18
 3f0:	448e2000 	mtc1	t6,$f4
 3f4:	44984000 	mtc1	t8,$f8
 3f8:	468094a0 	cvt.s.w	$f18,$f18
 3fc:	84791350 	lh	t9,4944(v1)
 400:	240a0001 	li	t2,1
 404:	afaa0024 	sw	t2,36(sp)
 408:	26041c24 	addiu	a0,s0,7204
 40c:	468021a0 	cvt.s.w	$f6,$f4
 410:	44079000 	mfc1	a3,$f18
 414:	02002825 	move	a1,s0
 418:	24060014 	li	a2,20
 41c:	afa00018 	sw	zero,24(sp)
 420:	468042a0 	cvt.s.w	$f10,$f8
 424:	e7a60010 	swc1	$f6,16(sp)
 428:	afa00020 	sw	zero,32(sp)
 42c:	afb9001c 	sw	t9,28(sp)
 430:	0c000000 	jal	0 <func_8006CFC0>
 434:	e7aa0014 	swc1	$f10,20(sp)
 438:	14400009 	bnez	v0,460 <func_8006D0EC+0x334>
 43c:	00401825 	move	v1,v0
 440:	3c040000 	lui	a0,0x0
 444:	3c050000 	lui	a1,0x0
 448:	24a50084 	addiu	a1,a1,132
 44c:	24840070 	addiu	a0,a0,112
 450:	2406019e 	li	a2,414
 454:	0c000000 	jal	0 <func_8006CFC0>
 458:	afa20054 	sw	v0,84(sp)
 45c:	8fa30054 	lw	v1,84(sp)
 460:	860900a4 	lh	t1,164(s0)
 464:	2401005d 	li	at,93
 468:	240bffff 	li	t3,-1
 46c:	55210091 	bnel	t1,at,6b4 <func_8006D0EC+0x588>
 470:	8fbf0034 	lw	ra,52(sp)
 474:	1000008e 	b	6b0 <func_8006D0EC+0x584>
 478:	a06b0003 	sb	t3,3(v1)
 47c:	3c040000 	lui	a0,0x0
 480:	0c000000 	jal	0 <func_8006CFC0>
 484:	24840094 	addiu	a0,a0,148
 488:	3c030000 	lui	v1,0x0
 48c:	24630000 	addiu	v1,v1,0
 490:	3c040000 	lui	a0,0x0
 494:	248400a0 	addiu	a0,a0,160
 498:	0c000000 	jal	0 <func_8006CFC0>
 49c:	84651348 	lh	a1,4936(v1)
 4a0:	3c040000 	lui	a0,0x0
 4a4:	0c000000 	jal	0 <func_8006CFC0>
 4a8:	248400d4 	addiu	a0,a0,212
 4ac:	0c000000 	jal	0 <func_8006CFC0>
 4b0:	02002025 	move	a0,s0
 4b4:	1000007f 	b	6b4 <func_8006D0EC+0x588>
 4b8:	8fbf0034 	lw	ra,52(sp)
 4bc:	860c00a4 	lh	t4,164(s0)
 4c0:	24010063 	li	at,99
 4c4:	15810020 	bne	t4,at,548 <func_8006D0EC+0x41c>
 4c8:	00000000 	nop
 4cc:	0c000000 	jal	0 <func_8006CFC0>
 4d0:	24040018 	li	a0,24
 4d4:	1440001c 	bnez	v0,548 <func_8006D0EC+0x41c>
 4d8:	3c0d0000 	lui	t5,0x0
 4dc:	8dad0000 	lw	t5,0(t5)
 4e0:	26041c24 	addiu	a0,s0,7204
 4e4:	02002825 	move	a1,s0
 4e8:	85a80556 	lh	t0,1366(t5)
 4ec:	24060014 	li	a2,20
 4f0:	3c01c3fa 	lui	at,0xc3fa
 4f4:	15000014 	bnez	t0,548 <func_8006D0EC+0x41c>
 4f8:	240f0001 	li	t7,1
 4fc:	44800000 	mtc1	zero,$f0
 500:	44818000 	mtc1	at,$f16
 504:	afa00018 	sw	zero,24(sp)
 508:	44070000 	mfc1	a3,$f0
 50c:	afa0001c 	sw	zero,28(sp)
 510:	afa00020 	sw	zero,32(sp)
 514:	afaf0024 	sw	t7,36(sp)
 518:	e7a00010 	swc1	$f0,16(sp)
 51c:	0c000000 	jal	0 <func_8006CFC0>
 520:	e7b00014 	swc1	$f16,20(sp)
 524:	14400062 	bnez	v0,6b0 <func_8006D0EC+0x584>
 528:	3c040000 	lui	a0,0x0
 52c:	3c050000 	lui	a1,0x0
 530:	24a500ec 	addiu	a1,a1,236
 534:	248400d8 	addiu	a0,a0,216
 538:	0c000000 	jal	0 <func_8006CFC0>
 53c:	240601bb 	li	a2,443
 540:	1000005c 	b	6b4 <func_8006D0EC+0x588>
 544:	8fbf0034 	lw	ra,52(sp)
 548:	0c000000 	jal	0 <func_8006CFC0>
 54c:	24040018 	li	a0,24
 550:	14400005 	bnez	v0,568 <func_8006D0EC+0x43c>
 554:	3c0e0000 	lui	t6,0x0
 558:	8dce0000 	lw	t6,0(t6)
 55c:	85d80556 	lh	t8,1366(t6)
 560:	13000033 	beqz	t8,630 <func_8006D0EC+0x504>
 564:	00000000 	nop
 568:	860400a4 	lh	a0,164(s0)
 56c:	27a20060 	addiu	v0,sp,96
 570:	27a3009c 	addiu	v1,sp,156
 574:	84590000 	lh	t9,0(v0)
 578:	54990029 	bnel	a0,t9,620 <func_8006D0EC+0x4f4>
 57c:	2442000c 	addiu	v0,v0,12
 580:	84490004 	lh	t1,4(v0)
 584:	844a0002 	lh	t2,2(v0)
 588:	26041c24 	addiu	a0,s0,7204
 58c:	44892000 	mtc1	t1,$f4
 590:	448a9000 	mtc1	t2,$f18
 594:	02002825 	move	a1,s0
 598:	468021a0 	cvt.s.w	$f6,$f4
 59c:	24060014 	li	a2,20
 5a0:	468094a0 	cvt.s.w	$f18,$f18
 5a4:	e7a60010 	swc1	$f6,16(sp)
 5a8:	844b0006 	lh	t3,6(v0)
 5ac:	afa00018 	sw	zero,24(sp)
 5b0:	448b4000 	mtc1	t3,$f8
 5b4:	44079000 	mfc1	a3,$f18
 5b8:	468042a0 	cvt.s.w	$f10,$f8
 5bc:	e7aa0014 	swc1	$f10,20(sp)
 5c0:	844c0008 	lh	t4,8(v0)
 5c4:	afa00020 	sw	zero,32(sp)
 5c8:	afac001c 	sw	t4,28(sp)
 5cc:	844d000a 	lh	t5,10(v0)
 5d0:	0c000000 	jal	0 <func_8006CFC0>
 5d4:	afad0024 	sw	t5,36(sp)
 5d8:	14400009 	bnez	v0,600 <func_8006D0EC+0x4d4>
 5dc:	00401825 	move	v1,v0
 5e0:	3c040000 	lui	a0,0x0
 5e4:	3c050000 	lui	a1,0x0
 5e8:	24a50110 	addiu	a1,a1,272
 5ec:	248400fc 	addiu	a0,a0,252
 5f0:	240601d2 	li	a2,466
 5f4:	0c000000 	jal	0 <func_8006CFC0>
 5f8:	afa20048 	sw	v0,72(sp)
 5fc:	8fa30048 	lw	v1,72(sp)
 600:	860800a4 	lh	t0,164(s0)
 604:	2401005d 	li	at,93
 608:	240fffff 	li	t7,-1
 60c:	55010029 	bnel	t0,at,6b4 <func_8006D0EC+0x588>
 610:	8fbf0034 	lw	ra,52(sp)
 614:	10000026 	b	6b0 <func_8006D0EC+0x584>
 618:	a06f0003 	sb	t7,3(v1)
 61c:	2442000c 	addiu	v0,v0,12
 620:	5443ffd5 	bnel	v0,v1,578 <func_8006D0EC+0x44c>
 624:	84590000 	lh	t9,0(v0)
 628:	10000022 	b	6b4 <func_8006D0EC+0x588>
 62c:	8fbf0034 	lw	ra,52(sp)
 630:	0c000000 	jal	0 <func_8006CFC0>
 634:	24040018 	li	a0,24
 638:	3c030000 	lui	v1,0x0
 63c:	1440001c 	bnez	v0,6b0 <func_8006D0EC+0x584>
 640:	24630000 	addiu	v1,v1,0
 644:	3c0e0000 	lui	t6,0x0
 648:	8dce0000 	lw	t6,0(t6)
 64c:	85d80556 	lh	t8,1366(t6)
 650:	57000018 	bnezl	t8,6b4 <func_8006D0EC+0x588>
 654:	8fbf0034 	lw	ra,52(sp)
 658:	861900a4 	lh	t9,164(s0)
 65c:	2401004c 	li	at,76
 660:	57210014 	bnel	t9,at,6b4 <func_8006D0EC+0x588>
 664:	8fbf0034 	lw	ra,52(sp)
 668:	8c6a0010 	lw	t2,16(v1)
 66c:	26041c24 	addiu	a0,s0,7204
 670:	02002825 	move	a1,s0
 674:	1140000e 	beqz	t2,6b0 <func_8006D0EC+0x584>
 678:	24060014 	li	a2,20
 67c:	44800000 	mtc1	zero,$f0
 680:	3c01c270 	lui	at,0xc270
 684:	44818000 	mtc1	at,$f16
 688:	24097360 	li	t1,29536
 68c:	240b0001 	li	t3,1
 690:	44070000 	mfc1	a3,$f0
 694:	afab0024 	sw	t3,36(sp)
 698:	afa9001c 	sw	t1,28(sp)
 69c:	afa00018 	sw	zero,24(sp)
 6a0:	afa00020 	sw	zero,32(sp)
 6a4:	e7a00010 	swc1	$f0,16(sp)
 6a8:	0c000000 	jal	0 <func_8006CFC0>
 6ac:	e7b00014 	swc1	$f16,20(sp)
 6b0:	8fbf0034 	lw	ra,52(sp)
 6b4:	8fb00030 	lw	s0,48(sp)
 6b8:	27bd00a0 	addiu	sp,sp,160
 6bc:	03e00008 	jr	ra
 6c0:	00000000 	nop

000006c4 <func_8006D684>:
 6c4:	3c090000 	lui	t1,0x0
 6c8:	25290000 	addiu	t1,t1,0
 6cc:	8d220000 	lw	v0,0(t1)
 6d0:	27bdff78 	addiu	sp,sp,-136
 6d4:	afb10030 	sw	s1,48(sp)
 6d8:	afb0002c 	sw	s0,44(sp)
 6dc:	2406028a 	li	a2,650
 6e0:	00a08025 	move	s0,a1
 6e4:	00808825 	move	s1,a0
 6e8:	10c20008 	beq	a2,v0,70c <func_8006D684+0x48>
 6ec:	afbf0034 	sw	ra,52(sp)
 6f0:	2401028e 	li	at,654
 6f4:	10410005 	beq	v0,at,70c <func_8006D684+0x48>
 6f8:	24010292 	li	at,658
 6fc:	10410003 	beq	v0,at,70c <func_8006D684+0x48>
 700:	24010476 	li	at,1142
 704:	54410062 	bnel	v0,at,890 <func_8006D684+0x1cc>
 708:	862f00a4 	lh	t7,164(s1)
 70c:	8d2e1364 	lw	t6,4964(t1)
 710:	3c0f0000 	lui	t7,0x0
 714:	25ef0050 	addiu	t7,t7,80
 718:	55c0005d 	bnezl	t6,890 <func_8006D684+0x1cc>
 71c:	862f00a4 	lh	t7,164(s1)
 720:	8df90000 	lw	t9,0(t7)
 724:	27a30060 	addiu	v1,sp,96
 728:	ac790000 	sw	t9,0(v1)
 72c:	8df80004 	lw	t8,4(t7)
 730:	ac780004 	sw	t8,4(v1)
 734:	8df90008 	lw	t9,8(t7)
 738:	ac790008 	sw	t9,8(v1)
 73c:	8df8000c 	lw	t8,12(t7)
 740:	ac78000c 	sw	t8,12(v1)
 744:	8df90010 	lw	t9,16(t7)
 748:	ac790010 	sw	t9,16(v1)
 74c:	8df80014 	lw	t8,20(t7)
 750:	14c20008 	bne	a2,v0,774 <func_8006D684+0xb0>
 754:	ac780014 	sw	t8,20(v1)
 758:	886c0000 	lwl	t4,0(v1)
 75c:	986c0003 	lwr	t4,3(v1)
 760:	27aa0078 	addiu	t2,sp,120
 764:	ad4c0000 	sw	t4,0(t2)
 768:	946c0004 	lhu	t4,4(v1)
 76c:	1000001c 	b	7e0 <func_8006D684+0x11c>
 770:	a54c0004 	sh	t4,4(t2)
 774:	2401028e 	li	at,654
 778:	14410008 	bne	v0,at,79c <func_8006D684+0xd8>
 77c:	27ae0066 	addiu	t6,sp,102
 780:	89d80000 	lwl	t8,0(t6)
 784:	99d80003 	lwr	t8,3(t6)
 788:	27ad0078 	addiu	t5,sp,120
 78c:	adb80000 	sw	t8,0(t5)
 790:	95d80004 	lhu	t8,4(t6)
 794:	10000012 	b	7e0 <func_8006D684+0x11c>
 798:	a5b80004 	sh	t8,4(t5)
 79c:	24010292 	li	at,658
 7a0:	14410009 	bne	v0,at,7c8 <func_8006D684+0x104>
 7a4:	27ae0072 	addiu	t6,sp,114
 7a8:	27aa006c 	addiu	t2,sp,108
 7ac:	894c0000 	lwl	t4,0(t2)
 7b0:	994c0003 	lwr	t4,3(t2)
 7b4:	27b90078 	addiu	t9,sp,120
 7b8:	af2c0000 	sw	t4,0(t9)
 7bc:	954c0004 	lhu	t4,4(t2)
 7c0:	10000007 	b	7e0 <func_8006D684+0x11c>
 7c4:	a72c0004 	sh	t4,4(t9)
 7c8:	89d80000 	lwl	t8,0(t6)
 7cc:	99d80003 	lwr	t8,3(t6)
 7d0:	27ad0078 	addiu	t5,sp,120
 7d4:	adb80000 	sw	t8,0(t5)
 7d8:	95d80004 	lhu	t8,4(t6)
 7dc:	a5b80004 	sh	t8,4(t5)
 7e0:	87aa007a 	lh	t2,122(sp)
 7e4:	87ab007c 	lh	t3,124(sp)
 7e8:	87b90078 	lh	t9,120(sp)
 7ec:	448a3000 	mtc1	t2,$f6
 7f0:	448b5000 	mtc1	t3,$f10
 7f4:	44992000 	mtc1	t9,$f4
 7f8:	46803220 	cvt.s.w	$f8,$f6
 7fc:	afa00018 	sw	zero,24(sp)
 800:	240d0007 	li	t5,7
 804:	26241c24 	addiu	a0,s1,7204
 808:	02202825 	move	a1,s1
 80c:	46805420 	cvt.s.w	$f16,$f10
 810:	e7a80010 	swc1	$f8,16(sp)
 814:	24060014 	li	a2,20
 818:	46802120 	cvt.s.w	$f4,$f4
 81c:	e7b00014 	swc1	$f16,20(sp)
 820:	860c0032 	lh	t4,50(s0)
 824:	afad0024 	sw	t5,36(sp)
 828:	afa00020 	sw	zero,32(sp)
 82c:	afac001c 	sw	t4,28(sp)
 830:	44072000 	mfc1	a3,$f4
 834:	0c000000 	jal	0 <func_8006CFC0>
 838:	00000000 	nop
 83c:	14400007 	bnez	v0,85c <func_8006D684+0x198>
 840:	ae020440 	sw	v0,1088(s0)
 844:	3c040000 	lui	a0,0x0
 848:	3c050000 	lui	a1,0x0
 84c:	24a5013c 	addiu	a1,a1,316
 850:	24840120 	addiu	a0,a0,288
 854:	0c000000 	jal	0 <func_8006CFC0>
 858:	24060231 	li	a2,561
 85c:	02202025 	move	a0,s1
 860:	02002825 	move	a1,s0
 864:	0c000000 	jal	0 <func_8006CFC0>
 868:	8e060440 	lw	a2,1088(s0)
 86c:	02202025 	move	a0,s1
 870:	0c000000 	jal	0 <func_8006CFC0>
 874:	02002825 	move	a1,s0
 878:	862e00a4 	lh	t6,164(s1)
 87c:	3c090000 	lui	t1,0x0
 880:	25290000 	addiu	t1,t1,0
 884:	10000103 	b	c94 <func_8006D684+0x5d0>
 888:	a52e1348 	sh	t6,4936(t1)
 88c:	862f00a4 	lh	t7,164(s1)
 890:	24010063 	li	at,99
 894:	15e1003b 	bne	t7,at,984 <func_8006D684+0x2c0>
 898:	00000000 	nop
 89c:	953813fa 	lhu	t8,5114(t1)
 8a0:	24060006 	li	a2,6
 8a4:	3319000f 	andi	t9,t8,0xf
 8a8:	14d90036 	bne	a2,t9,984 <func_8006D684+0x2c0>
 8ac:	00000000 	nop
 8b0:	0c000000 	jal	0 <func_8006CFC0>
 8b4:	24040018 	li	a0,24
 8b8:	3c090000 	lui	t1,0x0
 8bc:	14400031 	bnez	v0,984 <func_8006D684+0x2c0>
 8c0:	25290000 	addiu	t1,t1,0
 8c4:	3c0a0000 	lui	t2,0x0
 8c8:	8d4a0000 	lw	t2,0(t2)
 8cc:	3c07445f 	lui	a3,0x445f
 8d0:	34e78000 	ori	a3,a3,0x8000
 8d4:	854b0556 	lh	t3,1366(t2)
 8d8:	26241c24 	addiu	a0,s1,7204
 8dc:	02202825 	move	a1,s1
 8e0:	15600028 	bnez	t3,984 <func_8006D684+0x2c0>
 8e4:	24060014 	li	a2,20
 8e8:	3c010000 	lui	at,0x0
 8ec:	c4240218 	lwc1	$f4,536(at)
 8f0:	44809000 	mtc1	zero,$f18
 8f4:	240c8001 	li	t4,-32767
 8f8:	240d0005 	li	t5,5
 8fc:	afad0024 	sw	t5,36(sp)
 900:	afac001c 	sw	t4,28(sp)
 904:	afa00018 	sw	zero,24(sp)
 908:	afa00020 	sw	zero,32(sp)
 90c:	e7a40014 	swc1	$f4,20(sp)
 910:	0c000000 	jal	0 <func_8006CFC0>
 914:	e7b20010 	swc1	$f18,16(sp)
 918:	14400007 	bnez	v0,938 <func_8006D684+0x274>
 91c:	ae020440 	sw	v0,1088(s0)
 920:	3c040000 	lui	a0,0x0
 924:	3c050000 	lui	a1,0x0
 928:	24a50168 	addiu	a1,a1,360
 92c:	2484014c 	addiu	a0,a0,332
 930:	0c000000 	jal	0 <func_8006CFC0>
 934:	24060246 	li	a2,582
 938:	02202025 	move	a0,s1
 93c:	02002825 	move	a1,s0
 940:	0c000000 	jal	0 <func_8006CFC0>
 944:	8e060440 	lw	a2,1088(s0)
 948:	02202025 	move	a0,s1
 94c:	0c000000 	jal	0 <func_8006CFC0>
 950:	02002825 	move	a1,s0
 954:	862e00a4 	lh	t6,164(s1)
 958:	3c090000 	lui	t1,0x0
 95c:	25290000 	addiu	t1,t1,0
 960:	a52e1348 	sh	t6,4936(t1)
 964:	862f00a4 	lh	t7,164(s1)
 968:	2401005d 	li	at,93
 96c:	55e100ca 	bnel	t7,at,c98 <func_8006D684+0x5d4>
 970:	8fbf0034 	lw	ra,52(sp)
 974:	8e190440 	lw	t9,1088(s0)
 978:	2418ffff 	li	t8,-1
 97c:	100000c5 	b	c94 <func_8006D684+0x5d0>
 980:	a3380003 	sb	t8,3(t9)
 984:	3c080000 	lui	t0,0x0
 988:	3c040000 	lui	a0,0x0
 98c:	24060006 	li	a2,6
 990:	24840108 	addiu	a0,a0,264
 994:	25080068 	addiu	t0,t0,104
 998:	862500a4 	lh	a1,164(s1)
 99c:	850a0000 	lh	t2,0(t0)
 9a0:	54aa00ba 	bnel	a1,t2,c8c <func_8006D684+0x5c8>
 9a4:	25080014 	addiu	t0,t0,20
 9a8:	8d230008 	lw	v1,8(t1)
 9ac:	8d0b0004 	lw	t3,4(t0)
 9b0:	546b00b6 	bnel	v1,t3,c8c <func_8006D684+0x5c8>
 9b4:	25080014 	addiu	t0,t0,20
 9b8:	85020010 	lh	v0,16(t0)
 9bc:	24010007 	li	at,7
 9c0:	1441003c 	bne	v0,at,ab4 <func_8006D684+0x3f0>
 9c4:	24010063 	li	at,99
 9c8:	14a10013 	bne	a1,at,a18 <func_8006D684+0x354>
 9cc:	3401fff1 	li	at,0xfff1
 9d0:	54610012 	bnel	v1,at,a1c <func_8006D684+0x358>
 9d4:	850b000a 	lh	t3,10(t0)
 9d8:	c6060024 	lwc1	$f6,36(s0)
 9dc:	85020010 	lh	v0,16(t0)
 9e0:	4600320d 	trunc.w.s	$f8,$f6
 9e4:	440d4000 	mfc1	t5,$f8
 9e8:	00000000 	nop
 9ec:	a50d0008 	sh	t5,8(t0)
 9f0:	c60a0028 	lwc1	$f10,40(s0)
 9f4:	4600540d 	trunc.w.s	$f16,$f10
 9f8:	440f8000 	mfc1	t7,$f16
 9fc:	00000000 	nop
 a00:	a50f000a 	sh	t7,10(t0)
 a04:	c612002c 	lwc1	$f18,44(s0)
 a08:	4600910d 	trunc.w.s	$f4,$f18
 a0c:	44192000 	mfc1	t9,$f4
 a10:	00000000 	nop
 a14:	a519000c 	sh	t9,12(t0)
 a18:	850b000a 	lh	t3,10(t0)
 a1c:	850c000c 	lh	t4,12(t0)
 a20:	850a0008 	lh	t2,8(t0)
 a24:	448b4000 	mtc1	t3,$f8
 a28:	448c8000 	mtc1	t4,$f16
 a2c:	448a3000 	mtc1	t2,$f6
 a30:	468042a0 	cvt.s.w	$f10,$f8
 a34:	afa00018 	sw	zero,24(sp)
 a38:	26241c24 	addiu	a0,s1,7204
 a3c:	02202825 	move	a1,s1
 a40:	24060014 	li	a2,20
 a44:	468084a0 	cvt.s.w	$f18,$f16
 a48:	e7aa0010 	swc1	$f10,16(sp)
 a4c:	468031a0 	cvt.s.w	$f6,$f6
 a50:	e7b20014 	swc1	$f18,20(sp)
 a54:	860d0032 	lh	t5,50(s0)
 a58:	afa20024 	sw	v0,36(sp)
 a5c:	afa00020 	sw	zero,32(sp)
 a60:	afad001c 	sw	t5,28(sp)
 a64:	44073000 	mfc1	a3,$f6
 a68:	0c000000 	jal	0 <func_8006CFC0>
 a6c:	00000000 	nop
 a70:	14400007 	bnez	v0,a90 <func_8006D684+0x3cc>
 a74:	ae020440 	sw	v0,1088(s0)
 a78:	3c040000 	lui	a0,0x0
 a7c:	3c050000 	lui	a1,0x0
 a80:	24a50194 	addiu	a1,a1,404
 a84:	24840178 	addiu	a0,a0,376
 a88:	0c000000 	jal	0 <func_8006CFC0>
 a8c:	24060274 	li	a2,628
 a90:	02202025 	move	a0,s1
 a94:	02002825 	move	a1,s0
 a98:	0c000000 	jal	0 <func_8006CFC0>
 a9c:	8e060440 	lw	a2,1088(s0)
 aa0:	02202025 	move	a0,s1
 aa4:	0c000000 	jal	0 <func_8006CFC0>
 aa8:	02002825 	move	a1,s0
 aac:	1000007a 	b	c98 <func_8006D684+0x5d4>
 ab0:	8fbf0034 	lw	ra,52(sp)
 ab4:	24010005 	li	at,5
 ab8:	50410006 	beql	v0,at,ad4 <func_8006D684+0x410>
 abc:	952e13fa 	lhu	t6,5114(t1)
 ac0:	10c20003 	beq	a2,v0,ad0 <func_8006D684+0x40c>
 ac4:	24010008 	li	at,8
 ac8:	54410059 	bnel	v0,at,c30 <func_8006D684+0x56c>
 acc:	850b0008 	lh	t3,8(t0)
 ad0:	952e13fa 	lhu	t6,5114(t1)
 ad4:	00001825 	move	v1,zero
 ad8:	31cf0010 	andi	t7,t6,0x10
 adc:	000fc103 	sra	t8,t7,0x4
 ae0:	53000005 	beqzl	t8,af8 <func_8006D684+0x434>
 ae4:	85190008 	lh	t9,8(t0)
 ae8:	54c20003 	bnel	a2,v0,af8 <func_8006D684+0x434>
 aec:	85190008 	lh	t9,8(t0)
 af0:	34038000 	li	v1,0x8000
 af4:	85190008 	lh	t9,8(t0)
 af8:	850a000a 	lh	t2,10(t0)
 afc:	850b000c 	lh	t3,12(t0)
 b00:	44992000 	mtc1	t9,$f4
 b04:	448a3000 	mtc1	t2,$f6
 b08:	448b5000 	mtc1	t3,$f10
 b0c:	46802120 	cvt.s.w	$f4,$f4
 b10:	850c000e 	lh	t4,14(t0)
 b14:	00436825 	or	t5,v0,v1
 b18:	afad0024 	sw	t5,36(sp)
 b1c:	26241c24 	addiu	a0,s1,7204
 b20:	46803220 	cvt.s.w	$f8,$f6
 b24:	44072000 	mfc1	a3,$f4
 b28:	02202825 	move	a1,s1
 b2c:	24060014 	li	a2,20
 b30:	afa00018 	sw	zero,24(sp)
 b34:	46805420 	cvt.s.w	$f16,$f10
 b38:	e7a80010 	swc1	$f8,16(sp)
 b3c:	afa00020 	sw	zero,32(sp)
 b40:	afa80044 	sw	t0,68(sp)
 b44:	afac001c 	sw	t4,28(sp)
 b48:	0c000000 	jal	0 <func_8006CFC0>
 b4c:	e7b00014 	swc1	$f16,20(sp)
 b50:	8fa80044 	lw	t0,68(sp)
 b54:	14400009 	bnez	v0,b7c <func_8006D684+0x4b8>
 b58:	ae020440 	sw	v0,1088(s0)
 b5c:	3c040000 	lui	a0,0x0
 b60:	3c050000 	lui	a1,0x0
 b64:	24a501c0 	addiu	a1,a1,448
 b68:	248401a4 	addiu	a0,a0,420
 b6c:	2406029b 	li	a2,667
 b70:	0c000000 	jal	0 <func_8006CFC0>
 b74:	afa80044 	sw	t0,68(sp)
 b78:	8fa80044 	lw	t0,68(sp)
 b7c:	850e0008 	lh	t6,8(t0)
 b80:	02202025 	move	a0,s1
 b84:	02002825 	move	a1,s0
 b88:	448e9000 	mtc1	t6,$f18
 b8c:	8e060440 	lw	a2,1088(s0)
 b90:	46809120 	cvt.s.w	$f4,$f18
 b94:	e6040024 	swc1	$f4,36(s0)
 b98:	850f000a 	lh	t7,10(t0)
 b9c:	448f3000 	mtc1	t7,$f6
 ba0:	00000000 	nop
 ba4:	46803220 	cvt.s.w	$f8,$f6
 ba8:	e6080028 	swc1	$f8,40(s0)
 bac:	8518000c 	lh	t8,12(t0)
 bb0:	a60000b8 	sh	zero,184(s0)
 bb4:	861900b8 	lh	t9,184(s0)
 bb8:	44985000 	mtc1	t8,$f10
 bbc:	a61900b4 	sh	t9,180(s0)
 bc0:	46805420 	cvt.s.w	$f16,$f10
 bc4:	e610002c 	swc1	$f16,44(s0)
 bc8:	850a000e 	lh	t2,14(t0)
 bcc:	0c000000 	jal	0 <func_8006CFC0>
 bd0:	a60a00b6 	sh	t2,182(s0)
 bd4:	02202025 	move	a0,s1
 bd8:	0c000000 	jal	0 <func_8006CFC0>
 bdc:	02002825 	move	a1,s0
 be0:	3c014348 	lui	at,0x4348
 be4:	44812000 	mtc1	at,$f4
 be8:	c6120024 	lwc1	$f18,36(s0)
 bec:	3c0142c8 	lui	at,0x42c8
 bf0:	44815000 	mtc1	at,$f10
 bf4:	46049181 	sub.s	$f6,$f18,$f4
 bf8:	02202025 	move	a0,s1
 bfc:	26060024 	addiu	a2,s0,36
 c00:	27a70054 	addiu	a3,sp,84
 c04:	e7a60054 	swc1	$f6,84(sp)
 c08:	c6080028 	lwc1	$f8,40(s0)
 c0c:	460a4400 	add.s	$f16,$f8,$f10
 c10:	e7b00058 	swc1	$f16,88(sp)
 c14:	c612002c 	lwc1	$f18,44(s0)
 c18:	e7b2005c 	swc1	$f18,92(sp)
 c1c:	0c000000 	jal	0 <func_8006CFC0>
 c20:	862507a0 	lh	a1,1952(s1)
 c24:	1000001c 	b	c98 <func_8006D684+0x5d4>
 c28:	8fbf0034 	lw	ra,52(sp)
 c2c:	850b0008 	lh	t3,8(t0)
 c30:	850c000a 	lh	t4,10(t0)
 c34:	850d000c 	lh	t5,12(t0)
 c38:	448b2000 	mtc1	t3,$f4
 c3c:	448c3000 	mtc1	t4,$f6
 c40:	448d5000 	mtc1	t5,$f10
 c44:	46802120 	cvt.s.w	$f4,$f4
 c48:	850e000e 	lh	t6,14(t0)
 c4c:	26241c24 	addiu	a0,s1,7204
 c50:	02202825 	move	a1,s1
 c54:	24060014 	li	a2,20
 c58:	46803220 	cvt.s.w	$f8,$f6
 c5c:	44072000 	mfc1	a3,$f4
 c60:	afa00018 	sw	zero,24(sp)
 c64:	afa00020 	sw	zero,32(sp)
 c68:	afa20024 	sw	v0,36(sp)
 c6c:	46805420 	cvt.s.w	$f16,$f10
 c70:	e7a80010 	swc1	$f8,16(sp)
 c74:	afae001c 	sw	t6,28(sp)
 c78:	0c000000 	jal	0 <func_8006CFC0>
 c7c:	e7b00014 	swc1	$f16,20(sp)
 c80:	10000005 	b	c98 <func_8006D684+0x5d4>
 c84:	8fbf0034 	lw	ra,52(sp)
 c88:	25080014 	addiu	t0,t0,20
 c8c:	5504ff44 	bnel	t0,a0,9a0 <func_8006D684+0x2dc>
 c90:	850a0000 	lh	t2,0(t0)
 c94:	8fbf0034 	lw	ra,52(sp)
 c98:	8fb0002c 	lw	s0,44(sp)
 c9c:	8fb10030 	lw	s1,48(sp)
 ca0:	03e00008 	jr	ra
 ca4:	27bd0088 	addiu	sp,sp,136

00000ca8 <func_8006DC68>:
 ca8:	3c020000 	lui	v0,0x0
 cac:	24420000 	addiu	v0,v0,0
 cb0:	8c4e0004 	lw	t6,4(v0)
 cb4:	27bdffe8 	addiu	sp,sp,-24
 cb8:	afbf0014 	sw	ra,20(sp)
 cbc:	afa40018 	sw	a0,24(sp)
 cc0:	15c00042 	bnez	t6,dcc <func_8006DC68+0x124>
 cc4:	afa5001c 	sw	a1,28(sp)
 cc8:	0c000000 	jal	0 <func_8006CFC0>
 ccc:	84441348 	lh	a0,4936(v0)
 cd0:	1440000d 	bnez	v0,d08 <func_8006DC68+0x60>
 cd4:	3c040000 	lui	a0,0x0
 cd8:	0c000000 	jal	0 <func_8006CFC0>
 cdc:	248401d0 	addiu	a0,a0,464
 ce0:	3c040000 	lui	a0,0x0
 ce4:	3c050000 	lui	a1,0x0
 ce8:	84a51348 	lh	a1,4936(a1)
 cec:	0c000000 	jal	0 <func_8006CFC0>
 cf0:	248401dc 	addiu	a0,a0,476
 cf4:	3c040000 	lui	a0,0x0
 cf8:	0c000000 	jal	0 <func_8006CFC0>
 cfc:	24840210 	addiu	a0,a0,528
 d00:	0c000000 	jal	0 <func_8006CFC0>
 d04:	8fa40018 	lw	a0,24(sp)
 d08:	8faf0018 	lw	t7,24(sp)
 d0c:	0c000000 	jal	0 <func_8006CFC0>
 d10:	85e400a4 	lh	a0,164(t7)
 d14:	1040002d 	beqz	v0,dcc <func_8006DC68+0x124>
 d18:	3c030000 	lui	v1,0x0
 d1c:	24630000 	addiu	v1,v1,0
 d20:	8c781360 	lw	t8,4960(v1)
 d24:	2b010004 	slti	at,t8,4
 d28:	50200021 	beqzl	at,db0 <func_8006DC68+0x108>
 d2c:	8fa40018 	lw	a0,24(sp)
 d30:	8c620000 	lw	v0,0(v1)
 d34:	2401028a 	li	at,650
 d38:	10410007 	beq	v0,at,d58 <func_8006DC68+0xb0>
 d3c:	2401028e 	li	at,654
 d40:	10410005 	beq	v0,at,d58 <func_8006DC68+0xb0>
 d44:	24010292 	li	at,658
 d48:	10410003 	beq	v0,at,d58 <func_8006DC68+0xb0>
 d4c:	24010476 	li	at,1142
 d50:	54410005 	bnel	v0,at,d68 <func_8006DC68+0xc0>
 d54:	8fa80018 	lw	t0,24(sp)
 d58:	8c791364 	lw	t9,4964(v1)
 d5c:	53200014 	beqzl	t9,db0 <func_8006DC68+0x108>
 d60:	8fa40018 	lw	a0,24(sp)
 d64:	8fa80018 	lw	t0,24(sp)
 d68:	24010063 	li	at,99
 d6c:	850900a4 	lh	t1,164(t0)
 d70:	55210014 	bnel	t1,at,dc4 <func_8006DC68+0x11c>
 d74:	8fa40018 	lw	a0,24(sp)
 d78:	946a13fa 	lhu	t2,5114(v1)
 d7c:	24010006 	li	at,6
 d80:	314b000f 	andi	t3,t2,0xf
 d84:	5561000f 	bnel	t3,at,dc4 <func_8006DC68+0x11c>
 d88:	8fa40018 	lw	a0,24(sp)
 d8c:	0c000000 	jal	0 <func_8006CFC0>
 d90:	24040018 	li	a0,24
 d94:	1440000a 	bnez	v0,dc0 <func_8006DC68+0x118>
 d98:	3c0c0000 	lui	t4,0x0
 d9c:	8d8c0000 	lw	t4,0(t4)
 da0:	858d0556 	lh	t5,1366(t4)
 da4:	55a00007 	bnezl	t5,dc4 <func_8006DC68+0x11c>
 da8:	8fa40018 	lw	a0,24(sp)
 dac:	8fa40018 	lw	a0,24(sp)
 db0:	0c000000 	jal	0 <func_8006CFC0>
 db4:	8fa5001c 	lw	a1,28(sp)
 db8:	10000005 	b	dd0 <func_8006DC68+0x128>
 dbc:	8fbf0014 	lw	ra,20(sp)
 dc0:	8fa40018 	lw	a0,24(sp)
 dc4:	0c000000 	jal	0 <func_8006CFC0>
 dc8:	8fa5001c 	lw	a1,28(sp)
 dcc:	8fbf0014 	lw	ra,20(sp)
 dd0:	27bd0018 	addiu	sp,sp,24
 dd4:	03e00008 	jr	ra
 dd8:	00000000 	nop

00000ddc <func_8006DD9C>:
 ddc:	27bdffe8 	addiu	sp,sp,-24
 de0:	afa60020 	sw	a2,32(sp)
 de4:	00063400 	sll	a2,a2,0x10
 de8:	00063403 	sra	a2,a2,0x10
 dec:	afbf0014 	sw	ra,20(sp)
 df0:	00803825 	move	a3,a0
 df4:	afa70018 	sw	a3,24(sp)
 df8:	24840024 	addiu	a0,a0,36
 dfc:	0c000000 	jal	0 <func_8006CFC0>
 e00:	a7a60022 	sh	a2,34(sp)
 e04:	8fa70018 	lw	a3,24(sp)
 e08:	87a60022 	lh	a2,34(sp)
 e0c:	84e30032 	lh	v1,50(a3)
 e10:	00067823 	negu	t7,a2
 e14:	00432023 	subu	a0,v0,v1
 e18:	00042400 	sll	a0,a0,0x10
 e1c:	00042403 	sra	a0,a0,0x10
 e20:	00c4082a 	slt	at,a2,a0
 e24:	10200003 	beqz	at,e34 <func_8006DD9C+0x58>
 e28:	00667021 	addu	t6,v1,a2
 e2c:	10000008 	b	e50 <func_8006DD9C+0x74>
 e30:	a4ee0032 	sh	t6,50(a3)
 e34:	008f082a 	slt	at,a0,t7
 e38:	10200004 	beqz	at,e4c <func_8006DD9C+0x70>
 e3c:	0064c821 	addu	t9,v1,a0
 e40:	0066c023 	subu	t8,v1,a2
 e44:	10000002 	b	e50 <func_8006DD9C+0x74>
 e48:	a4f80032 	sh	t8,50(a3)
 e4c:	a4f90032 	sh	t9,50(a3)
 e50:	84e80032 	lh	t0,50(a3)
 e54:	a4e800b6 	sh	t0,182(a3)
 e58:	8fbf0014 	lw	ra,20(sp)
 e5c:	27bd0018 	addiu	sp,sp,24
 e60:	03e00008 	jr	ra
 e64:	00000000 	nop
	...
