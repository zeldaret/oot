
build/src/overlays/actors/ovl_Demo_Ext/z_demo_ext.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoExt_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <DemoExt_Init>:
   c:	afa50004 	sw	a1,4(sp)
  10:	3c020000 	lui	v0,0x0
  14:	240e0019 	li	t6,25
  18:	240f0028 	li	t7,40
  1c:	24180005 	li	t8,5
  20:	2419001e 	li	t9,30
  24:	24420000 	addiu	v0,v0,0
  28:	a48e0158 	sh	t6,344(a0)
  2c:	a48f015a 	sh	t7,346(a0)
  30:	a498015c 	sh	t8,348(a0)
  34:	a499015e 	sh	t9,350(a0)
  38:	8c480000 	lw	t0,0(v0)
  3c:	3c0143c8 	lui	at,0x43c8
  40:	44810000 	mtc1	at,$f0
  44:	8509148c 	lh	t1,5260(t0)
  48:	3c0142c8 	lui	at,0x42c8
  4c:	44819000 	mtc1	at,$f18
  50:	252a00ff 	addiu	t2,t1,255
  54:	ac8a0170 	sw	t2,368(a0)
  58:	8c4b0000 	lw	t3,0(v0)
  5c:	856c1494 	lh	t4,5268(t3)
  60:	258d00ff 	addiu	t5,t4,255
  64:	ac8d0174 	sw	t5,372(a0)
  68:	8c4e0000 	lw	t6,0(v0)
  6c:	85cf147a 	lh	t7,5242(t6)
  70:	448f2000 	mtc1	t7,$f4
  74:	00000000 	nop
  78:	468021a0 	cvt.s.w	$f6,$f4
  7c:	46003200 	add.s	$f8,$f6,$f0
  80:	e4880178 	swc1	$f8,376(a0)
  84:	8c580000 	lw	t8,0(v0)
  88:	8719147c 	lh	t9,5244(t8)
  8c:	44995000 	mtc1	t9,$f10
  90:	00000000 	nop
  94:	46805420 	cvt.s.w	$f16,$f10
  98:	46128100 	add.s	$f4,$f16,$f18
  9c:	e484017c 	swc1	$f4,380(a0)
  a0:	8c480000 	lw	t0,0(v0)
  a4:	8509147e 	lh	t1,5246(t0)
  a8:	44893000 	mtc1	t1,$f6
  ac:	00000000 	nop
  b0:	46803220 	cvt.s.w	$f8,$f6
  b4:	46004280 	add.s	$f10,$f8,$f0
  b8:	03e00008 	jr	ra
  bc:	e48a0180 	swc1	$f10,384(a0)

000000c0 <func_80977450>:
  c0:	3c0e0000 	lui	t6,0x0
  c4:	8dce0000 	lw	t6,0(t6)
  c8:	27bdffe0 	addiu	sp,sp,-32
  cc:	afbf001c 	sw	ra,28(sp)
  d0:	afa40020 	sw	a0,32(sp)
  d4:	85cf149a 	lh	t7,5274(t6)
  d8:	3c014220 	lui	at,0x4220
  dc:	44814000 	mtc1	at,$f8
  e0:	448f2000 	mtc1	t7,$f4
  e4:	3c014170 	lui	at,0x4170
  e8:	44818000 	mtc1	at,$f16
  ec:	468021a0 	cvt.s.w	$f6,$f4
  f0:	c484016c 	lwc1	$f4,364(a0)
  f4:	0080c025 	move	t8,a0
  f8:	3c070000 	lui	a3,0x0
  fc:	3c190000 	lui	t9,0x0
 100:	24e70000 	addiu	a3,a3,0
 104:	46083280 	add.s	$f10,$f6,$f8
 108:	27390000 	addiu	t9,t9,0
 10c:	270500e4 	addiu	a1,t8,228
 110:	24042040 	li	a0,8256
 114:	46105481 	sub.s	$f18,$f10,$f16
 118:	24060004 	li	a2,4
 11c:	4612203e 	c.le.s	$f4,$f18
 120:	00000000 	nop
 124:	45020005 	bc1fl	13c <func_80977450+0x7c>
 128:	8fbf001c 	lw	ra,28(sp)
 12c:	afa70010 	sw	a3,16(sp)
 130:	0c000000 	jal	0 <DemoExt_Destroy>
 134:	afb90014 	sw	t9,20(sp)
 138:	8fbf001c 	lw	ra,28(sp)
 13c:	27bd0020 	addiu	sp,sp,32
 140:	03e00008 	jr	ra
 144:	00000000 	nop

00000148 <func_809774D8>:
 148:	908e1d6c 	lbu	t6,7532(a0)
 14c:	00057880 	sll	t7,a1,0x2
 150:	008fc021 	addu	t8,a0,t7
 154:	11c00003 	beqz	t6,164 <func_809774D8+0x1c>
 158:	00001025 	move	v0,zero
 15c:	03e00008 	jr	ra
 160:	8f021d8c 	lw	v0,7564(t8)
 164:	03e00008 	jr	ra
 168:	00000000 	nop

0000016c <func_809774FC>:
 16c:	ac80014c 	sw	zero,332(a0)
 170:	03e00008 	jr	ra
 174:	ac800150 	sw	zero,336(a0)

00000178 <func_80977508>:
 178:	27bdffe8 	addiu	sp,sp,-24
 17c:	00803025 	move	a2,a0
 180:	afbf0014 	sw	ra,20(sp)
 184:	00a02025 	move	a0,a1
 188:	24050005 	li	a1,5
 18c:	0c000000 	jal	0 <DemoExt_Destroy>
 190:	afa60018 	sw	a2,24(sp)
 194:	10400013 	beqz	v0,1e4 <func_80977508+0x6c>
 198:	8fa60018 	lw	a2,24(sp)
 19c:	8c4e000c 	lw	t6,12(v0)
 1a0:	448e2000 	mtc1	t6,$f4
 1a4:	00000000 	nop
 1a8:	468021a0 	cvt.s.w	$f6,$f4
 1ac:	e4c60024 	swc1	$f6,36(a2)
 1b0:	8c4f0010 	lw	t7,16(v0)
 1b4:	448f4000 	mtc1	t7,$f8
 1b8:	00000000 	nop
 1bc:	468042a0 	cvt.s.w	$f10,$f8
 1c0:	e4ca0028 	swc1	$f10,40(a2)
 1c4:	8c580014 	lw	t8,20(v0)
 1c8:	44988000 	mtc1	t8,$f16
 1cc:	00000000 	nop
 1d0:	468084a0 	cvt.s.w	$f18,$f16
 1d4:	e4d2002c 	swc1	$f18,44(a2)
 1d8:	84430008 	lh	v1,8(v0)
 1dc:	a4c300b6 	sh	v1,182(a2)
 1e0:	a4c30032 	sh	v1,50(a2)
 1e4:	24020001 	li	v0,1
 1e8:	acc2014c 	sw	v0,332(a2)
 1ec:	acc20150 	sw	v0,336(a2)
 1f0:	8fbf0014 	lw	ra,20(sp)
 1f4:	27bd0018 	addiu	sp,sp,24
 1f8:	03e00008 	jr	ra
 1fc:	00000000 	nop

00000200 <func_80977590>:
 200:	240e0002 	li	t6,2
 204:	240f0001 	li	t7,1
 208:	ac8e014c 	sw	t6,332(a0)
 20c:	03e00008 	jr	ra
 210:	ac8f0150 	sw	t7,336(a0)

00000214 <func_809775A4>:
 214:	27bdffe8 	addiu	sp,sp,-24
 218:	afbf0014 	sw	ra,20(sp)
 21c:	3c013f80 	lui	at,0x3f80
 220:	44813000 	mtc1	at,$f6
 224:	c484016c 	lwc1	$f4,364(a0)
 228:	3c0e0000 	lui	t6,0x0
 22c:	3c014220 	lui	at,0x4220
 230:	46062200 	add.s	$f8,$f4,$f6
 234:	44812000 	mtc1	at,$f4
 238:	e488016c 	swc1	$f8,364(a0)
 23c:	8dce0000 	lw	t6,0(t6)
 240:	c48a016c 	lwc1	$f10,364(a0)
 244:	85cf149a 	lh	t7,5274(t6)
 248:	448f8000 	mtc1	t7,$f16
 24c:	00000000 	nop
 250:	468084a0 	cvt.s.w	$f18,$f16
 254:	46049180 	add.s	$f6,$f18,$f4
 258:	460a303e 	c.le.s	$f6,$f10
 25c:	00000000 	nop
 260:	45020004 	bc1fl	274 <func_809775A4+0x60>
 264:	8fbf0014 	lw	ra,20(sp)
 268:	0c000000 	jal	0 <DemoExt_Destroy>
 26c:	00000000 	nop
 270:	8fbf0014 	lw	ra,20(sp)
 274:	27bd0018 	addiu	sp,sp,24
 278:	03e00008 	jr	ra
 27c:	00000000 	nop

00000280 <func_80977610>:
 280:	27bdffd8 	addiu	sp,sp,-40
 284:	afb00018 	sw	s0,24(sp)
 288:	00808025 	move	s0,a0
 28c:	afbf001c 	sw	ra,28(sp)
 290:	afa5002c 	sw	a1,44(sp)
 294:	00a02025 	move	a0,a1
 298:	0c000000 	jal	0 <DemoExt_Destroy>
 29c:	24050005 	li	a1,5
 2a0:	50400023 	beqzl	v0,330 <func_80977610+0xb0>
 2a4:	8fbf001c 	lw	ra,28(sp)
 2a8:	94460000 	lhu	a2,0(v0)
 2ac:	8e030154 	lw	v1,340(s0)
 2b0:	24010001 	li	at,1
 2b4:	50c3001e 	beql	a2,v1,330 <func_80977610+0xb0>
 2b8:	8fbf001c 	lw	ra,28(sp)
 2bc:	10c10009 	beq	a2,at,2e4 <func_80977610+0x64>
 2c0:	02002025 	move	a0,s0
 2c4:	24010002 	li	at,2
 2c8:	10c1000a 	beq	a2,at,2f4 <func_80977610+0x74>
 2cc:	02002025 	move	a0,s0
 2d0:	24010003 	li	at,3
 2d4:	10c1000c 	beq	a2,at,308 <func_80977610+0x88>
 2d8:	02002025 	move	a0,s0
 2dc:	1000000e 	b	318 <func_80977610+0x98>
 2e0:	3c040000 	lui	a0,0x0
 2e4:	0c000000 	jal	0 <DemoExt_Destroy>
 2e8:	afa60020 	sw	a2,32(sp)
 2ec:	1000000e 	b	328 <func_80977610+0xa8>
 2f0:	8fa60020 	lw	a2,32(sp)
 2f4:	8fa5002c 	lw	a1,44(sp)
 2f8:	0c000000 	jal	0 <DemoExt_Destroy>
 2fc:	afa60020 	sw	a2,32(sp)
 300:	10000009 	b	328 <func_80977610+0xa8>
 304:	8fa60020 	lw	a2,32(sp)
 308:	0c000000 	jal	0 <DemoExt_Destroy>
 30c:	afa60020 	sw	a2,32(sp)
 310:	10000005 	b	328 <func_80977610+0xa8>
 314:	8fa60020 	lw	a2,32(sp)
 318:	24840000 	addiu	a0,a0,0
 31c:	0c000000 	jal	0 <DemoExt_Destroy>
 320:	afa60020 	sw	a2,32(sp)
 324:	8fa60020 	lw	a2,32(sp)
 328:	ae060154 	sw	a2,340(s0)
 32c:	8fbf001c 	lw	ra,28(sp)
 330:	8fb00018 	lw	s0,24(sp)
 334:	27bd0028 	addiu	sp,sp,40
 338:	03e00008 	jr	ra
 33c:	00000000 	nop

00000340 <func_809776D0>:
 340:	24020003 	li	v0,3
 344:	24830166 	addiu	v1,a0,358
 348:	2485015e 	addiu	a1,a0,350
 34c:	846e0000 	lh	t6,0(v1)
 350:	84af0000 	lh	t7,0(a1)
 354:	2442ffff 	addiu	v0,v0,-1
 358:	2463fffe 	addiu	v1,v1,-2
 35c:	01cfc021 	addu	t8,t6,t7
 360:	24a5fffe 	addiu	a1,a1,-2
 364:	1440fff9 	bnez	v0,34c <func_809776D0+0xc>
 368:	a4780002 	sh	t8,2(v1)
 36c:	3c080000 	lui	t0,0x0
 370:	8d080000 	lw	t0,0(t0)
 374:	84990168 	lh	t9,360(a0)
 378:	85091498 	lh	t1,5272(t0)
 37c:	252c03e8 	addiu	t4,t1,1000
 380:	032c6821 	addu	t5,t9,t4
 384:	03e00008 	jr	ra
 388:	a48d0168 	sh	t5,360(a0)

0000038c <func_8097771C>:
 38c:	3c050000 	lui	a1,0x0
 390:	24a50000 	addiu	a1,a1,0
 394:	8ca30000 	lw	v1,0(a1)
 398:	3c014220 	lui	at,0x4220
 39c:	44814000 	mtc1	at,$f8
 3a0:	846e149a 	lh	t6,5274(v1)
 3a4:	c48a016c 	lwc1	$f10,364(a0)
 3a8:	44806000 	mtc1	zero,$f12
 3ac:	448e2000 	mtc1	t6,$f4
 3b0:	00000000 	nop
 3b4:	468021a0 	cvt.s.w	$f6,$f4
 3b8:	46083080 	add.s	$f2,$f6,$f8
 3bc:	460a1401 	sub.s	$f16,$f2,$f10
 3c0:	46028003 	div.s	$f0,$f16,$f2
 3c4:	460c003c 	c.lt.s	$f0,$f12
 3c8:	00000000 	nop
 3cc:	45020003 	bc1fl	3dc <func_8097771C+0x50>
 3d0:	846f148c 	lh	t7,5260(v1)
 3d4:	46006006 	mov.s	$f0,$f12
 3d8:	846f148c 	lh	t7,5260(v1)
 3dc:	3c0143c8 	lui	at,0x43c8
 3e0:	44811000 	mtc1	at,$f2
 3e4:	25f800ff 	addiu	t8,t7,255
 3e8:	44989000 	mtc1	t8,$f18
 3ec:	3c014f80 	lui	at,0x4f80
 3f0:	07010004 	bgez	t8,404 <func_8097771C+0x78>
 3f4:	46809120 	cvt.s.w	$f4,$f18
 3f8:	44813000 	mtc1	at,$f6
 3fc:	00000000 	nop
 400:	46062100 	add.s	$f4,$f4,$f6
 404:	46002202 	mul.s	$f8,$f4,$f0
 408:	3c014f80 	lui	at,0x4f80
 40c:	4600428d 	trunc.w.s	$f10,$f8
 410:	44085000 	mfc1	t0,$f10
 414:	00000000 	nop
 418:	ac880170 	sw	t0,368(a0)
 41c:	8ca90000 	lw	t1,0(a1)
 420:	852a1494 	lh	t2,5268(t1)
 424:	254b00ff 	addiu	t3,t2,255
 428:	448b8000 	mtc1	t3,$f16
 42c:	05610004 	bgez	t3,440 <func_8097771C+0xb4>
 430:	468084a0 	cvt.s.w	$f18,$f16
 434:	44813000 	mtc1	at,$f6
 438:	00000000 	nop
 43c:	46069480 	add.s	$f18,$f18,$f6
 440:	46009102 	mul.s	$f4,$f18,$f0
 444:	24820178 	addiu	v0,a0,376
 448:	3c0142c8 	lui	at,0x42c8
 44c:	4600220d 	trunc.w.s	$f8,$f4
 450:	440d4000 	mfc1	t5,$f8
 454:	00000000 	nop
 458:	ac8d0174 	sw	t5,372(a0)
 45c:	8cae0000 	lw	t6,0(a1)
 460:	85cf147a 	lh	t7,5242(t6)
 464:	448f5000 	mtc1	t7,$f10
 468:	00000000 	nop
 46c:	46805420 	cvt.s.w	$f16,$f10
 470:	44815000 	mtc1	at,$f10
 474:	46028180 	add.s	$f6,$f16,$f2
 478:	46003482 	mul.s	$f18,$f6,$f0
 47c:	e4520000 	swc1	$f18,0(v0)
 480:	8cb80000 	lw	t8,0(a1)
 484:	8719147c 	lh	t9,5244(t8)
 488:	44992000 	mtc1	t9,$f4
 48c:	00000000 	nop
 490:	46802220 	cvt.s.w	$f8,$f4
 494:	460a4400 	add.s	$f16,$f8,$f10
 498:	46008182 	mul.s	$f6,$f16,$f0
 49c:	e4460004 	swc1	$f6,4(v0)
 4a0:	8ca80000 	lw	t0,0(a1)
 4a4:	8509147e 	lh	t1,5246(t0)
 4a8:	44899000 	mtc1	t1,$f18
 4ac:	00000000 	nop
 4b0:	46809120 	cvt.s.w	$f4,$f18
 4b4:	46022200 	add.s	$f8,$f4,$f2
 4b8:	46004282 	mul.s	$f10,$f8,$f0
 4bc:	03e00008 	jr	ra
 4c0:	e44a0008 	swc1	$f10,8(v0)

000004c4 <func_80977854>:
 4c4:	27bdffe8 	addiu	sp,sp,-24
 4c8:	afbf0014 	sw	ra,20(sp)
 4cc:	0c000000 	jal	0 <DemoExt_Destroy>
 4d0:	00000000 	nop
 4d4:	8fbf0014 	lw	ra,20(sp)
 4d8:	27bd0018 	addiu	sp,sp,24
 4dc:	03e00008 	jr	ra
 4e0:	00000000 	nop

000004e4 <func_80977874>:
 4e4:	27bdffe8 	addiu	sp,sp,-24
 4e8:	afbf0014 	sw	ra,20(sp)
 4ec:	afa40018 	sw	a0,24(sp)
 4f0:	0c000000 	jal	0 <DemoExt_Destroy>
 4f4:	afa5001c 	sw	a1,28(sp)
 4f8:	0c000000 	jal	0 <DemoExt_Destroy>
 4fc:	8fa40018 	lw	a0,24(sp)
 500:	8fa40018 	lw	a0,24(sp)
 504:	0c000000 	jal	0 <DemoExt_Destroy>
 508:	8fa5001c 	lw	a1,28(sp)
 50c:	8fbf0014 	lw	ra,20(sp)
 510:	27bd0018 	addiu	sp,sp,24
 514:	03e00008 	jr	ra
 518:	00000000 	nop

0000051c <func_809778AC>:
 51c:	27bdffe8 	addiu	sp,sp,-24
 520:	afbf0014 	sw	ra,20(sp)
 524:	afa40018 	sw	a0,24(sp)
 528:	0c000000 	jal	0 <DemoExt_Destroy>
 52c:	afa5001c 	sw	a1,28(sp)
 530:	0c000000 	jal	0 <DemoExt_Destroy>
 534:	8fa40018 	lw	a0,24(sp)
 538:	0c000000 	jal	0 <DemoExt_Destroy>
 53c:	8fa40018 	lw	a0,24(sp)
 540:	0c000000 	jal	0 <DemoExt_Destroy>
 544:	8fa40018 	lw	a0,24(sp)
 548:	8fbf0014 	lw	ra,20(sp)
 54c:	27bd0018 	addiu	sp,sp,24
 550:	03e00008 	jr	ra
 554:	00000000 	nop

00000558 <DemoExt_Update>:
 558:	27bdffe8 	addiu	sp,sp,-24
 55c:	afbf0014 	sw	ra,20(sp)
 560:	8c82014c 	lw	v0,332(a0)
 564:	04400008 	bltz	v0,588 <DemoExt_Update+0x30>
 568:	28410003 	slti	at,v0,3
 56c:	10200006 	beqz	at,588 <DemoExt_Update+0x30>
 570:	00027080 	sll	t6,v0,0x2
 574:	3c030000 	lui	v1,0x0
 578:	006e1821 	addu	v1,v1,t6
 57c:	8c630000 	lw	v1,0(v1)
 580:	14600006 	bnez	v1,59c <DemoExt_Update+0x44>
 584:	00000000 	nop
 588:	3c040000 	lui	a0,0x0
 58c:	0c000000 	jal	0 <DemoExt_Destroy>
 590:	24840000 	addiu	a0,a0,0
 594:	10000004 	b	5a8 <DemoExt_Update+0x50>
 598:	8fbf0014 	lw	ra,20(sp)
 59c:	0060f809 	jalr	v1
 5a0:	00000000 	nop
 5a4:	8fbf0014 	lw	ra,20(sp)
 5a8:	27bd0018 	addiu	sp,sp,24
 5ac:	03e00008 	jr	ra
 5b0:	00000000 	nop

000005b4 <func_80977944>:
 5b4:	afa40000 	sw	a0,0(sp)
 5b8:	03e00008 	jr	ra
 5bc:	afa50004 	sw	a1,4(sp)

000005c0 <func_80977950>:
 5c0:	27bdff78 	addiu	sp,sp,-136
 5c4:	afbf003c 	sw	ra,60(sp)
 5c8:	afb00038 	sw	s0,56(sp)
 5cc:	afa40088 	sw	a0,136(sp)
 5d0:	8cb00000 	lw	s0,0(a1)
 5d4:	24050040 	li	a1,64
 5d8:	0c000000 	jal	0 <DemoExt_Destroy>
 5dc:	02002025 	move	a0,s0
 5e0:	3c060000 	lui	a2,0x0
 5e4:	afa20080 	sw	v0,128(sp)
 5e8:	24c60000 	addiu	a2,a2,0
 5ec:	27a40060 	addiu	a0,sp,96
 5f0:	02002825 	move	a1,s0
 5f4:	0c000000 	jal	0 <DemoExt_Destroy>
 5f8:	240701cc 	li	a3,460
 5fc:	0c000000 	jal	0 <DemoExt_Destroy>
 600:	00000000 	nop
 604:	8fa20088 	lw	v0,136(sp)
 608:	24070001 	li	a3,1
 60c:	24420178 	addiu	v0,v0,376
 610:	8c460008 	lw	a2,8(v0)
 614:	c44e0004 	lwc1	$f14,4(v0)
 618:	0c000000 	jal	0 <DemoExt_Destroy>
 61c:	c44c0000 	lwc1	$f12,0(v0)
 620:	3c020000 	lui	v0,0x0
 624:	8c420000 	lw	v0,0(v0)
 628:	8fae0088 	lw	t6,136(sp)
 62c:	24070001 	li	a3,1
 630:	84441474 	lh	a0,5236(v0)
 634:	84461478 	lh	a2,5240(v0)
 638:	85c50168 	lh	a1,360(t6)
 63c:	24844000 	addiu	a0,a0,16384
 640:	00042400 	sll	a0,a0,0x10
 644:	0c000000 	jal	0 <DemoExt_Destroy>
 648:	00042403 	sra	a0,a0,0x10
 64c:	3c020000 	lui	v0,0x0
 650:	8c420000 	lw	v0,0(v0)
 654:	24070001 	li	a3,1
 658:	84591484 	lh	t9,5252(v0)
 65c:	844f1480 	lh	t7,5248(v0)
 660:	84581482 	lh	t8,5250(v0)
 664:	44994000 	mtc1	t9,$f8
 668:	448f2000 	mtc1	t7,$f4
 66c:	44983000 	mtc1	t8,$f6
 670:	46804220 	cvt.s.w	$f8,$f8
 674:	46802320 	cvt.s.w	$f12,$f4
 678:	44064000 	mfc1	a2,$f8
 67c:	0c000000 	jal	0 <DemoExt_Destroy>
 680:	468033a0 	cvt.s.w	$f14,$f6
 684:	3c050000 	lui	a1,0x0
 688:	24a50000 	addiu	a1,a1,0
 68c:	8fa40080 	lw	a0,128(sp)
 690:	0c000000 	jal	0 <DemoExt_Destroy>
 694:	240601dc 	li	a2,476
 698:	0c000000 	jal	0 <DemoExt_Destroy>
 69c:	00000000 	nop
 6a0:	0c000000 	jal	0 <DemoExt_Destroy>
 6a4:	02002025 	move	a0,s0
 6a8:	8e0302d0 	lw	v1,720(s0)
 6ac:	8fa90088 	lw	t1,136(sp)
 6b0:	3c050000 	lui	a1,0x0
 6b4:	246a0008 	addiu	t2,v1,8
 6b8:	ae0a02d0 	sw	t2,720(s0)
 6bc:	24a50000 	addiu	a1,a1,0
 6c0:	8cab0000 	lw	t3,0(a1)
 6c4:	3c01fa00 	lui	at,0xfa00
 6c8:	02002025 	move	a0,s0
 6cc:	856c1496 	lh	t4,5270(t3)
 6d0:	258d0080 	addiu	t5,t4,128
 6d4:	31ae00ff 	andi	t6,t5,0xff
 6d8:	01c17825 	or	t7,t6,at
 6dc:	ac6f0000 	sw	t7,0(v1)
 6e0:	8ca20000 	lw	v0,0(a1)
 6e4:	8458148a 	lh	t8,5258(v0)
 6e8:	844c1486 	lh	t4,5254(v0)
 6ec:	2719008c 	addiu	t9,t8,140
 6f0:	332a00ff 	andi	t2,t9,0xff
 6f4:	84591488 	lh	t9,5256(v0)
 6f8:	000a5a00 	sll	t3,t2,0x8
 6fc:	258e008c 	addiu	t6,t4,140
 700:	000e7e00 	sll	t7,t6,0x18
 704:	016fc025 	or	t8,t3,t7
 708:	8d2b0170 	lw	t3,368(t1)
 70c:	272a0050 	addiu	t2,t9,80
 710:	314c00ff 	andi	t4,t2,0xff
 714:	000c6c00 	sll	t5,t4,0x10
 718:	030d7025 	or	t6,t8,t5
 71c:	316f00ff 	andi	t7,t3,0xff
 720:	01cfc825 	or	t9,t6,t7
 724:	ac790004 	sw	t9,4(v1)
 728:	8e0302d0 	lw	v1,720(s0)
 72c:	3c0cfb00 	lui	t4,0xfb00
 730:	246a0008 	addiu	t2,v1,8
 734:	ae0a02d0 	sw	t2,720(s0)
 738:	ac6c0000 	sw	t4,0(v1)
 73c:	8ca20000 	lw	v0,0(a1)
 740:	00002825 	move	a1,zero
 744:	84581492 	lh	t8,5266(v0)
 748:	844f148e 	lh	t7,5262(v0)
 74c:	270d005f 	addiu	t5,t8,95
 750:	31ab00ff 	andi	t3,t5,0xff
 754:	844d1490 	lh	t5,5264(v0)
 758:	000b7200 	sll	t6,t3,0x8
 75c:	25ea005a 	addiu	t2,t7,90
 760:	000a6600 	sll	t4,t2,0x18
 764:	01ccc025 	or	t8,t6,t4
 768:	8d2e0174 	lw	t6,372(t1)
 76c:	25ab0032 	addiu	t3,t5,50
 770:	316f00ff 	andi	t7,t3,0xff
 774:	000fcc00 	sll	t9,t7,0x10
 778:	03195025 	or	t2,t8,t9
 77c:	31cc00ff 	andi	t4,t6,0xff
 780:	014c6825 	or	t5,t2,t4
 784:	ac6d0004 	sw	t5,4(v1)
 788:	8e0302d0 	lw	v1,720(s0)
 78c:	3c0fdb06 	lui	t7,0xdb06
 790:	35ef0020 	ori	t7,t7,0x20
 794:	246b0008 	addiu	t3,v1,8
 798:	ae0b02d0 	sw	t3,720(s0)
 79c:	25220160 	addiu	v0,t1,352
 7a0:	ac6f0000 	sw	t7,0(v1)
 7a4:	84470002 	lh	a3,2(v0)
 7a8:	84460000 	lh	a2,0(v0)
 7ac:	240e0001 	li	t6,1
 7b0:	24190040 	li	t9,64
 7b4:	24180040 	li	t8,64
 7b8:	afb80010 	sw	t8,16(sp)
 7bc:	afb90014 	sw	t9,20(sp)
 7c0:	afae0018 	sw	t6,24(sp)
 7c4:	844a0004 	lh	t2,4(v0)
 7c8:	240b0040 	li	t3,64
 7cc:	240d0040 	li	t5,64
 7d0:	afaa001c 	sw	t2,28(sp)
 7d4:	844c0006 	lh	t4,6(v0)
 7d8:	afab0028 	sw	t3,40(sp)
 7dc:	afad0024 	sw	t5,36(sp)
 7e0:	afa30054 	sw	v1,84(sp)
 7e4:	0c000000 	jal	0 <DemoExt_Destroy>
 7e8:	afac0020 	sw	t4,32(sp)
 7ec:	8fa80054 	lw	t0,84(sp)
 7f0:	3c18da38 	lui	t8,0xda38
 7f4:	37180002 	ori	t8,t8,0x2
 7f8:	ad020004 	sw	v0,4(t0)
 7fc:	8e0302d0 	lw	v1,720(s0)
 800:	3c0c0601 	lui	t4,0x601
 804:	258cfaa0 	addiu	t4,t4,-1376
 808:	246f0008 	addiu	t7,v1,8
 80c:	ae0f02d0 	sw	t7,720(s0)
 810:	ac780000 	sw	t8,0(v1)
 814:	8fb90080 	lw	t9,128(sp)
 818:	3c0ade00 	lui	t2,0xde00
 81c:	3c0bd838 	lui	t3,0xd838
 820:	ac790004 	sw	t9,4(v1)
 824:	8e0302d0 	lw	v1,720(s0)
 828:	356b0002 	ori	t3,t3,0x2
 82c:	240f0040 	li	t7,64
 830:	246e0008 	addiu	t6,v1,8
 834:	ae0e02d0 	sw	t6,720(s0)
 838:	ac6c0004 	sw	t4,4(v1)
 83c:	ac6a0000 	sw	t2,0(v1)
 840:	8e0302d0 	lw	v1,720(s0)
 844:	3c060000 	lui	a2,0x0
 848:	24c60000 	addiu	a2,a2,0
 84c:	246d0008 	addiu	t5,v1,8
 850:	ae0d02d0 	sw	t5,720(s0)
 854:	27a40060 	addiu	a0,sp,96
 858:	02002825 	move	a1,s0
 85c:	24070200 	li	a3,512
 860:	ac6f0004 	sw	t7,4(v1)
 864:	0c000000 	jal	0 <DemoExt_Destroy>
 868:	ac6b0000 	sw	t3,0(v1)
 86c:	8fbf003c 	lw	ra,60(sp)
 870:	8fb00038 	lw	s0,56(sp)
 874:	27bd0088 	addiu	sp,sp,136
 878:	03e00008 	jr	ra
 87c:	00000000 	nop

00000880 <DemoExt_Draw>:
 880:	27bdffe8 	addiu	sp,sp,-24
 884:	afbf0014 	sw	ra,20(sp)
 888:	8c820150 	lw	v0,336(a0)
 88c:	04400008 	bltz	v0,8b0 <DemoExt_Draw+0x30>
 890:	28410002 	slti	at,v0,2
 894:	10200006 	beqz	at,8b0 <DemoExt_Draw+0x30>
 898:	00027080 	sll	t6,v0,0x2
 89c:	3c030000 	lui	v1,0x0
 8a0:	006e1821 	addu	v1,v1,t6
 8a4:	8c630000 	lw	v1,0(v1)
 8a8:	14600006 	bnez	v1,8c4 <DemoExt_Draw+0x44>
 8ac:	00000000 	nop
 8b0:	3c040000 	lui	a0,0x0
 8b4:	0c000000 	jal	0 <DemoExt_Destroy>
 8b8:	24840000 	addiu	a0,a0,0
 8bc:	10000004 	b	8d0 <DemoExt_Draw+0x50>
 8c0:	8fbf0014 	lw	ra,20(sp)
 8c4:	0060f809 	jalr	v1
 8c8:	00000000 	nop
 8cc:	8fbf0014 	lw	ra,20(sp)
 8d0:	27bd0018 	addiu	sp,sp,24
 8d4:	03e00008 	jr	ra
 8d8:	00000000 	nop
 8dc:	00000000 	nop
