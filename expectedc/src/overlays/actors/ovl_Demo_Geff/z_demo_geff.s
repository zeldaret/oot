
build/src/overlays/actors/ovl_Demo_Geff/z_demo_geff.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoGeff_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <DemoGeff_Init>:
   c:	27bdffe8 	addiu	sp,sp,-24
  10:	afbf0014 	sw	ra,20(sp)
  14:	afa40018 	sw	a0,24(sp)
  18:	afa5001c 	sw	a1,28(sp)
  1c:	8482001c 	lh	v0,28(a0)
  20:	00802825 	move	a1,a0
  24:	3c040000 	lui	a0,0x0
  28:	04400002 	bltz	v0,34 <DemoGeff_Init+0x28>
  2c:	28410009 	slti	at,v0,9
  30:	14200007 	bnez	at,50 <DemoGeff_Init+0x44>
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <DemoGeff_Destroy>
  3c:	afa50018 	sw	a1,24(sp)
  40:	0c000000 	jal	0 <DemoGeff_Destroy>
  44:	8fa40018 	lw	a0,24(sp)
  48:	10000004 	b	5c <DemoGeff_Init+0x50>
  4c:	8fbf0014 	lw	ra,20(sp)
  50:	aca0014c 	sw	zero,332(a1)
  54:	aca00150 	sw	zero,336(a1)
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	27bd0018 	addiu	sp,sp,24
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <func_80977EA8>:
  68:	27bdffb8 	addiu	sp,sp,-72
  6c:	afbf001c 	sw	ra,28(sp)
  70:	afb00018 	sw	s0,24(sp)
  74:	afa40048 	sw	a0,72(sp)
  78:	afa5004c 	sw	a1,76(sp)
  7c:	8c900000 	lw	s0,0(a0)
  80:	3c060000 	lui	a2,0x0
  84:	24c6003c 	addiu	a2,a2,60
  88:	27a40030 	addiu	a0,sp,48
  8c:	240700b5 	li	a3,181
  90:	0c000000 	jal	0 <DemoGeff_Destroy>
  94:	02002825 	move	a1,s0
  98:	0c000000 	jal	0 <DemoGeff_Destroy>
  9c:	02002025 	move	a0,s0
  a0:	8e0202c0 	lw	v0,704(s0)
  a4:	3c18da38 	lui	t8,0xda38
  a8:	37180002 	ori	t8,t8,0x2
  ac:	244f0008 	addiu	t7,v0,8
  b0:	ae0f02c0 	sw	t7,704(s0)
  b4:	3c050000 	lui	a1,0x0
  b8:	ac580000 	sw	t8,0(v0)
  bc:	24a50050 	addiu	a1,a1,80
  c0:	02002025 	move	a0,s0
  c4:	240600b7 	li	a2,183
  c8:	0c000000 	jal	0 <DemoGeff_Destroy>
  cc:	afa2002c 	sw	v0,44(sp)
  d0:	8fa3002c 	lw	v1,44(sp)
  d4:	3c08de00 	lui	t0,0xde00
  d8:	3c0bd838 	lui	t3,0xd838
  dc:	ac620004 	sw	v0,4(v1)
  e0:	8e0202c0 	lw	v0,704(s0)
  e4:	356b0002 	ori	t3,t3,0x2
  e8:	240c0040 	li	t4,64
  ec:	24590008 	addiu	t9,v0,8
  f0:	ae1902c0 	sw	t9,704(s0)
  f4:	ac480000 	sw	t0,0(v0)
  f8:	8fa9004c 	lw	t1,76(sp)
  fc:	3c060000 	lui	a2,0x0
 100:	24c60064 	addiu	a2,a2,100
 104:	ac490004 	sw	t1,4(v0)
 108:	8e0202c0 	lw	v0,704(s0)
 10c:	27a40030 	addiu	a0,sp,48
 110:	02002825 	move	a1,s0
 114:	244a0008 	addiu	t2,v0,8
 118:	ae0a02c0 	sw	t2,704(s0)
 11c:	240700bc 	li	a3,188
 120:	ac4c0004 	sw	t4,4(v0)
 124:	0c000000 	jal	0 <DemoGeff_Destroy>
 128:	ac4b0000 	sw	t3,0(v0)
 12c:	8fbf001c 	lw	ra,28(sp)
 130:	8fb00018 	lw	s0,24(sp)
 134:	27bd0048 	addiu	sp,sp,72
 138:	03e00008 	jr	ra
 13c:	00000000 	nop

00000140 <func_80977F80>:
 140:	27bdffb8 	addiu	sp,sp,-72
 144:	afbf0014 	sw	ra,20(sp)
 148:	afa40048 	sw	a0,72(sp)
 14c:	afa5004c 	sw	a1,76(sp)
 150:	8c8f0154 	lw	t7,340(a0)
 154:	3c060000 	lui	a2,0x0
 158:	24c60078 	addiu	a2,a2,120
 15c:	afaf003c 	sw	t7,60(sp)
 160:	8ca50000 	lw	a1,0(a1)
 164:	27a40024 	addiu	a0,sp,36
 168:	240700cc 	li	a3,204
 16c:	0c000000 	jal	0 <DemoGeff_Destroy>
 170:	afa50038 	sw	a1,56(sp)
 174:	8fa50038 	lw	a1,56(sp)
 178:	8fa6004c 	lw	a2,76(sp)
 17c:	3c08db06 	lui	t0,0xdb06
 180:	8ca302c0 	lw	v1,704(a1)
 184:	35080018 	ori	t0,t0,0x18
 188:	3c010001 	lui	at,0x1
 18c:	24790008 	addiu	t9,v1,8
 190:	acb902c0 	sw	t9,704(a1)
 194:	ac680000 	sw	t0,0(v1)
 198:	8fa9003c 	lw	t1,60(sp)
 19c:	240700d4 	li	a3,212
 1a0:	00095100 	sll	t2,t1,0x4
 1a4:	01495021 	addu	t2,t2,t1
 1a8:	000a5080 	sll	t2,t2,0x2
 1ac:	00ca2021 	addu	a0,a2,t2
 1b0:	00812021 	addu	a0,a0,at
 1b4:	8c8b17b4 	lw	t3,6068(a0)
 1b8:	3c018000 	lui	at,0x8000
 1bc:	3c060000 	lui	a2,0x0
 1c0:	ac6b0004 	sw	t3,4(v1)
 1c4:	8c8c17b4 	lw	t4,6068(a0)
 1c8:	27a40024 	addiu	a0,sp,36
 1cc:	24c6008c 	addiu	a2,a2,140
 1d0:	01816821 	addu	t5,t4,at
 1d4:	3c010000 	lui	at,0x0
 1d8:	0c000000 	jal	0 <DemoGeff_Destroy>
 1dc:	ac2d0018 	sw	t5,24(at)
 1e0:	8fbf0014 	lw	ra,20(sp)
 1e4:	27bd0048 	addiu	sp,sp,72
 1e8:	03e00008 	jr	ra
 1ec:	00000000 	nop

000001f0 <func_80978030>:
 1f0:	afa50004 	sw	a1,4(sp)
 1f4:	948e001c 	lhu	t6,28(a0)
 1f8:	24020001 	li	v0,1
 1fc:	ac82014c 	sw	v0,332(a0)
 200:	2dc10008 	sltiu	at,t6,8
 204:	10200049 	beqz	at,32c <func_80978030+0x13c>
 208:	ac820150 	sw	v0,336(a0)
 20c:	000e7080 	sll	t6,t6,0x2
 210:	3c010000 	lui	at,0x0
 214:	002e0821 	addu	at,at,t6
 218:	8c2e0198 	lw	t6,408(at)
 21c:	01c00008 	jr	t6
 220:	00000000 	nop
 224:	3c030000 	lui	v1,0x0
 228:	24630000 	addiu	v1,v1,0
 22c:	8c6f0000 	lw	t7,0(v1)
 230:	3c010000 	lui	at,0x0
 234:	c42001b8 	lwc1	$f0,440(at)
 238:	85f81462 	lh	t8,5218(t7)
 23c:	3c010000 	lui	at,0x0
 240:	c42201bc 	lwc1	$f2,444(at)
 244:	44982000 	mtc1	t8,$f4
 248:	24820050 	addiu	v0,a0,80
 24c:	468021a0 	cvt.s.w	$f6,$f4
 250:	46003202 	mul.s	$f8,$f6,$f0
 254:	46024280 	add.s	$f10,$f8,$f2
 258:	e44a0000 	swc1	$f10,0(v0)
 25c:	8c790000 	lw	t9,0(v1)
 260:	87281464 	lh	t0,5220(t9)
 264:	44888000 	mtc1	t0,$f16
 268:	00000000 	nop
 26c:	468084a0 	cvt.s.w	$f18,$f16
 270:	46009102 	mul.s	$f4,$f18,$f0
 274:	46022180 	add.s	$f6,$f4,$f2
 278:	e4460004 	swc1	$f6,4(v0)
 27c:	8c690000 	lw	t1,0(v1)
 280:	852a1466 	lh	t2,5222(t1)
 284:	448a4000 	mtc1	t2,$f8
 288:	00000000 	nop
 28c:	468042a0 	cvt.s.w	$f10,$f8
 290:	46005402 	mul.s	$f16,$f10,$f0
 294:	46028480 	add.s	$f18,$f16,$f2
 298:	03e00008 	jr	ra
 29c:	e4520008 	swc1	$f18,8(v0)
 2a0:	3c030000 	lui	v1,0x0
 2a4:	24630000 	addiu	v1,v1,0
 2a8:	8c6b0000 	lw	t3,0(v1)
 2ac:	3c010000 	lui	at,0x0
 2b0:	c42001c0 	lwc1	$f0,448(at)
 2b4:	856c1468 	lh	t4,5224(t3)
 2b8:	3c010000 	lui	at,0x0
 2bc:	c42a01c4 	lwc1	$f10,452(at)
 2c0:	448c2000 	mtc1	t4,$f4
 2c4:	24820050 	addiu	v0,a0,80
 2c8:	3c010000 	lui	at,0x0
 2cc:	468021a0 	cvt.s.w	$f6,$f4
 2d0:	46003202 	mul.s	$f8,$f6,$f0
 2d4:	460a4400 	add.s	$f16,$f8,$f10
 2d8:	e4500000 	swc1	$f16,0(v0)
 2dc:	8c6d0000 	lw	t5,0(v1)
 2e0:	c42801c8 	lwc1	$f8,456(at)
 2e4:	3c010000 	lui	at,0x0
 2e8:	85ae146a 	lh	t6,5226(t5)
 2ec:	448e9000 	mtc1	t6,$f18
 2f0:	00000000 	nop
 2f4:	46809120 	cvt.s.w	$f4,$f18
 2f8:	46002182 	mul.s	$f6,$f4,$f0
 2fc:	46083280 	add.s	$f10,$f6,$f8
 300:	e44a0004 	swc1	$f10,4(v0)
 304:	8c6f0000 	lw	t7,0(v1)
 308:	c42601cc 	lwc1	$f6,460(at)
 30c:	85f8146c 	lh	t8,5228(t7)
 310:	44988000 	mtc1	t8,$f16
 314:	00000000 	nop
 318:	468084a0 	cvt.s.w	$f18,$f16
 31c:	46009102 	mul.s	$f4,$f18,$f0
 320:	46062200 	add.s	$f8,$f4,$f6
 324:	03e00008 	jr	ra
 328:	e4480008 	swc1	$f8,8(v0)
 32c:	3c030000 	lui	v1,0x0
 330:	24630000 	addiu	v1,v1,0
 334:	8c790000 	lw	t9,0(v1)
 338:	3c010000 	lui	at,0x0
 33c:	c42001d0 	lwc1	$f0,464(at)
 340:	8728146e 	lh	t0,5230(t9)
 344:	3c010000 	lui	at,0x0
 348:	c42401d4 	lwc1	$f4,468(at)
 34c:	44885000 	mtc1	t0,$f10
 350:	24820050 	addiu	v0,a0,80
 354:	3c010000 	lui	at,0x0
 358:	46805420 	cvt.s.w	$f16,$f10
 35c:	46008482 	mul.s	$f18,$f16,$f0
 360:	46049180 	add.s	$f6,$f18,$f4
 364:	e4460000 	swc1	$f6,0(v0)
 368:	8c690000 	lw	t1,0(v1)
 36c:	c43201d8 	lwc1	$f18,472(at)
 370:	3c010000 	lui	at,0x0
 374:	852a1470 	lh	t2,5232(t1)
 378:	448a4000 	mtc1	t2,$f8
 37c:	00000000 	nop
 380:	468042a0 	cvt.s.w	$f10,$f8
 384:	46005402 	mul.s	$f16,$f10,$f0
 388:	46128100 	add.s	$f4,$f16,$f18
 38c:	e4440004 	swc1	$f4,4(v0)
 390:	8c6b0000 	lw	t3,0(v1)
 394:	c43001dc 	lwc1	$f16,476(at)
 398:	856c1472 	lh	t4,5234(t3)
 39c:	448c3000 	mtc1	t4,$f6
 3a0:	00000000 	nop
 3a4:	46803220 	cvt.s.w	$f8,$f6
 3a8:	46004282 	mul.s	$f10,$f8,$f0
 3ac:	46105480 	add.s	$f18,$f10,$f16
 3b0:	e4520008 	swc1	$f18,8(v0)
 3b4:	03e00008 	jr	ra
 3b8:	00000000 	nop

000003bc <func_809781FC>:
 3bc:	8c8e0158 	lw	t6,344(a0)
 3c0:	15c00025 	bnez	t6,458 <func_809781FC+0x9c>
 3c4:	00000000 	nop
 3c8:	8482001c 	lh	v0,28(a0)
 3cc:	8ca31c64 	lw	v1,7268(a1)
 3d0:	24010001 	li	at,1
 3d4:	10400007 	beqz	v0,3f4 <func_809781FC+0x38>
 3d8:	24050174 	li	a1,372
 3dc:	10410005 	beq	v0,at,3f4 <func_809781FC+0x38>
 3e0:	24010002 	li	at,2
 3e4:	50410004 	beql	v0,at,3f8 <func_809781FC+0x3c>
 3e8:	24020001 	li	v0,1
 3ec:	10000002 	b	3f8 <func_809781FC+0x3c>
 3f0:	24020002 	li	v0,2
 3f4:	24020001 	li	v0,1
 3f8:	10600017 	beqz	v1,458 <func_809781FC+0x9c>
 3fc:	00000000 	nop
 400:	846f0000 	lh	t7,0(v1)
 404:	54af0012 	bnel	a1,t7,450 <func_809781FC+0x94>
 408:	8c630124 	lw	v1,292(v1)
 40c:	8478001c 	lh	t8,28(v1)
 410:	5458000f 	bnel	v0,t8,450 <func_809781FC+0x94>
 414:	8c630124 	lw	v1,292(v1)
 418:	c4840024 	lwc1	$f4,36(a0)
 41c:	c4660024 	lwc1	$f6,36(v1)
 420:	c48a0028 	lwc1	$f10,40(a0)
 424:	46062201 	sub.s	$f8,$f4,$f6
 428:	c484002c 	lwc1	$f4,44(a0)
 42c:	e488015c 	swc1	$f8,348(a0)
 430:	c4700028 	lwc1	$f16,40(v1)
 434:	46105481 	sub.s	$f18,$f10,$f16
 438:	e4920160 	swc1	$f18,352(a0)
 43c:	c466002c 	lwc1	$f6,44(v1)
 440:	ac830158 	sw	v1,344(a0)
 444:	46062201 	sub.s	$f8,$f4,$f6
 448:	e4880164 	swc1	$f8,356(a0)
 44c:	8c630124 	lw	v1,292(v1)
 450:	5460ffec 	bnezl	v1,404 <func_809781FC+0x48>
 454:	846f0000 	lh	t7,0(v1)
 458:	03e00008 	jr	ra
 45c:	00000000 	nop

00000460 <func_809782A0>:
 460:	afa50004 	sw	a1,4(sp)
 464:	8c820158 	lw	v0,344(a0)
 468:	8483001c 	lh	v1,28(a0)
 46c:	24010006 	li	at,6
 470:	10400013 	beqz	v0,4c0 <func_809782A0+0x60>
 474:	00000000 	nop
 478:	10610011 	beq	v1,at,4c0 <func_809782A0+0x60>
 47c:	24010007 	li	at,7
 480:	1061000f 	beq	v1,at,4c0 <func_809782A0+0x60>
 484:	24010008 	li	at,8
 488:	1061000d 	beq	v1,at,4c0 <func_809782A0+0x60>
 48c:	00000000 	nop
 490:	c4440024 	lwc1	$f4,36(v0)
 494:	c486015c 	lwc1	$f6,348(a0)
 498:	c4900160 	lwc1	$f16,352(a0)
 49c:	46062200 	add.s	$f8,$f4,$f6
 4a0:	c4860164 	lwc1	$f6,356(a0)
 4a4:	e4880024 	swc1	$f8,36(a0)
 4a8:	c44a0028 	lwc1	$f10,40(v0)
 4ac:	46105480 	add.s	$f18,$f10,$f16
 4b0:	e4920028 	swc1	$f18,40(a0)
 4b4:	c444002c 	lwc1	$f4,44(v0)
 4b8:	46062200 	add.s	$f8,$f4,$f6
 4bc:	e488002c 	swc1	$f8,44(a0)
 4c0:	03e00008 	jr	ra
 4c4:	00000000 	nop

000004c8 <func_80978308>:
 4c8:	27bdffe8 	addiu	sp,sp,-24
 4cc:	afbf0014 	sw	ra,20(sp)
 4d0:	afa40018 	sw	a0,24(sp)
 4d4:	0c000000 	jal	0 <DemoGeff_Destroy>
 4d8:	afa5001c 	sw	a1,28(sp)
 4dc:	8fa40018 	lw	a0,24(sp)
 4e0:	0c000000 	jal	0 <DemoGeff_Destroy>
 4e4:	8fa5001c 	lw	a1,28(sp)
 4e8:	8fa40018 	lw	a0,24(sp)
 4ec:	0c000000 	jal	0 <DemoGeff_Destroy>
 4f0:	8fa5001c 	lw	a1,28(sp)
 4f4:	8fbf0014 	lw	ra,20(sp)
 4f8:	27bd0018 	addiu	sp,sp,24
 4fc:	03e00008 	jr	ra
 500:	00000000 	nop

00000504 <func_80978344>:
 504:	27bdffe8 	addiu	sp,sp,-24
 508:	afa40018 	sw	a0,24(sp)
 50c:	00a02025 	move	a0,a1
 510:	afbf0014 	sw	ra,20(sp)
 514:	3c050000 	lui	a1,0x0
 518:	0c000000 	jal	0 <DemoGeff_Destroy>
 51c:	24a50000 	addiu	a1,a1,0
 520:	8fbf0014 	lw	ra,20(sp)
 524:	27bd0018 	addiu	sp,sp,24
 528:	03e00008 	jr	ra
 52c:	00000000 	nop

00000530 <func_80978370>:
 530:	27bdffe8 	addiu	sp,sp,-24
 534:	afbf0014 	sw	ra,20(sp)
 538:	8486001c 	lh	a2,28(a0)
 53c:	3c020000 	lui	v0,0x0
 540:	00803825 	move	a3,a0
 544:	00067080 	sll	t6,a2,0x2
 548:	004e1021 	addu	v0,v0,t6
 54c:	8c420014 	lw	v0,20(v0)
 550:	3c040000 	lui	a0,0x0
 554:	248400a0 	addiu	a0,a0,160
 558:	14400008 	bnez	v0,57c <func_80978370+0x4c>
 55c:	00000000 	nop
 560:	00c02825 	move	a1,a2
 564:	0c000000 	jal	0 <DemoGeff_Destroy>
 568:	afa70018 	sw	a3,24(sp)
 56c:	0c000000 	jal	0 <DemoGeff_Destroy>
 570:	8fa40018 	lw	a0,24(sp)
 574:	10000004 	b	588 <func_80978370+0x58>
 578:	8fbf0014 	lw	ra,20(sp)
 57c:	0040f809 	jalr	v0
 580:	00e02025 	move	a0,a3
 584:	8fbf0014 	lw	ra,20(sp)
 588:	27bd0018 	addiu	sp,sp,24
 58c:	03e00008 	jr	ra
 590:	00000000 	nop

00000594 <func_809783D4>:
 594:	27bdffc8 	addiu	sp,sp,-56
 598:	afbf0014 	sw	ra,20(sp)
 59c:	afa40038 	sw	a0,56(sp)
 5a0:	afa5003c 	sw	a1,60(sp)
 5a4:	8486001c 	lh	a2,28(a0)
 5a8:	8fa4003c 	lw	a0,60(sp)
 5ac:	3c010001 	lui	at,0x1
 5b0:	3c050000 	lui	a1,0x0
 5b4:	342117a4 	ori	at,at,0x17a4
 5b8:	00067840 	sll	t7,a2,0x1
 5bc:	00af2821 	addu	a1,a1,t7
 5c0:	00812021 	addu	a0,a0,at
 5c4:	84a50000 	lh	a1,0(a1)
 5c8:	afa4001c 	sw	a0,28(sp)
 5cc:	0c000000 	jal	0 <DemoGeff_Destroy>
 5d0:	afa6002c 	sw	a2,44(sp)
 5d4:	8fa4001c 	lw	a0,28(sp)
 5d8:	8fa6002c 	lw	a2,44(sp)
 5dc:	04410009 	bgez	v0,604 <func_809783D4+0x70>
 5e0:	00403825 	move	a3,v0
 5e4:	3c040000 	lui	a0,0x0
 5e8:	248400e4 	addiu	a0,a0,228
 5ec:	0c000000 	jal	0 <DemoGeff_Destroy>
 5f0:	00c02825 	move	a1,a2
 5f4:	0c000000 	jal	0 <DemoGeff_Destroy>
 5f8:	8fa40038 	lw	a0,56(sp)
 5fc:	1000000b 	b	62c <func_809783D4+0x98>
 600:	8fbf0014 	lw	ra,20(sp)
 604:	00e02825 	move	a1,a3
 608:	0c000000 	jal	0 <DemoGeff_Destroy>
 60c:	afa70024 	sw	a3,36(sp)
 610:	10400005 	beqz	v0,628 <func_809783D4+0x94>
 614:	8fa70024 	lw	a3,36(sp)
 618:	8fa40038 	lw	a0,56(sp)
 61c:	ac870154 	sw	a3,340(a0)
 620:	0c000000 	jal	0 <DemoGeff_Destroy>
 624:	8fa5003c 	lw	a1,60(sp)
 628:	8fbf0014 	lw	ra,20(sp)
 62c:	27bd0038 	addiu	sp,sp,56
 630:	03e00008 	jr	ra
 634:	00000000 	nop

00000638 <DemoGeff_Update>:
 638:	27bdffe8 	addiu	sp,sp,-24
 63c:	afbf0014 	sw	ra,20(sp)
 640:	8c82014c 	lw	v0,332(a0)
 644:	04400008 	bltz	v0,668 <DemoGeff_Update+0x30>
 648:	28410002 	slti	at,v0,2
 64c:	10200006 	beqz	at,668 <DemoGeff_Update+0x30>
 650:	00027080 	sll	t6,v0,0x2
 654:	3c030000 	lui	v1,0x0
 658:	006e1821 	addu	v1,v1,t6
 65c:	8c630038 	lw	v1,56(v1)
 660:	14600006 	bnez	v1,67c <DemoGeff_Update+0x44>
 664:	00000000 	nop
 668:	3c040000 	lui	a0,0x0
 66c:	0c000000 	jal	0 <DemoGeff_Destroy>
 670:	24840124 	addiu	a0,a0,292
 674:	10000004 	b	688 <DemoGeff_Update+0x50>
 678:	8fbf0014 	lw	ra,20(sp)
 67c:	0060f809 	jalr	v1
 680:	00000000 	nop
 684:	8fbf0014 	lw	ra,20(sp)
 688:	27bd0018 	addiu	sp,sp,24
 68c:	03e00008 	jr	ra
 690:	00000000 	nop

00000694 <func_809784D4>:
 694:	afa40000 	sw	a0,0(sp)
 698:	03e00008 	jr	ra
 69c:	afa50004 	sw	a1,4(sp)

000006a0 <DemoGeff_Draw>:
 6a0:	27bdffd8 	addiu	sp,sp,-40
 6a4:	afbf0014 	sw	ra,20(sp)
 6a8:	afa5002c 	sw	a1,44(sp)
 6ac:	8c820150 	lw	v0,336(a0)
 6b0:	0440000b 	bltz	v0,6e0 <DemoGeff_Draw+0x40>
 6b4:	28410002 	slti	at,v0,2
 6b8:	10200009 	beqz	at,6e0 <DemoGeff_Draw+0x40>
 6bc:	00027080 	sll	t6,v0,0x2
 6c0:	3c0f0000 	lui	t7,0x0
 6c4:	25ef0040 	addiu	t7,t7,64
 6c8:	01cf1821 	addu	v1,t6,t7
 6cc:	8c660000 	lw	a2,0(v1)
 6d0:	3c180000 	lui	t8,0x0
 6d4:	27180040 	addiu	t8,t8,64
 6d8:	14c00006 	bnez	a2,6f4 <DemoGeff_Draw+0x54>
 6dc:	00000000 	nop
 6e0:	3c040000 	lui	a0,0x0
 6e4:	0c000000 	jal	0 <DemoGeff_Destroy>
 6e8:	24840160 	addiu	a0,a0,352
 6ec:	1000000c 	b	720 <DemoGeff_Draw+0x80>
 6f0:	8fbf0014 	lw	ra,20(sp)
 6f4:	10780007 	beq	v1,t8,714 <DemoGeff_Draw+0x74>
 6f8:	8fa5002c 	lw	a1,44(sp)
 6fc:	afa3001c 	sw	v1,28(sp)
 700:	0c000000 	jal	0 <DemoGeff_Destroy>
 704:	afa40028 	sw	a0,40(sp)
 708:	8fa3001c 	lw	v1,28(sp)
 70c:	8fa40028 	lw	a0,40(sp)
 710:	8c660000 	lw	a2,0(v1)
 714:	00c0f809 	jalr	a2
 718:	8fa5002c 	lw	a1,44(sp)
 71c:	8fbf0014 	lw	ra,20(sp)
 720:	27bd0028 	addiu	sp,sp,40
 724:	03e00008 	jr	ra
 728:	00000000 	nop
 72c:	00000000 	nop
