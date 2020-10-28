
build/src/overlays/actors/ovl_En_Mm2/z_en_mm2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AAEE50>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afa40038 	sw	a0,56(sp)
   c:	afa60040 	sw	a2,64(sp)
  10:	8cc20000 	lw	v0,0(a2)
  14:	44803000 	mtc1	zero,$f6
  18:	00057900 	sll	t7,a1,0x4
  1c:	04400003 	bltz	v0,2c <func_80AAEE50+0x2c>
  20:	3c180000 	lui	t8,0x0
  24:	14a20005 	bne	a1,v0,3c <func_80AAEE50+0x3c>
  28:	0005c900 	sll	t9,a1,0x4
  2c:	44800000 	mtc1	zero,$f0
  30:	27180000 	addiu	t8,t8,0
  34:	10000005 	b	4c <func_80AAEE50+0x4c>
  38:	01f81821 	addu	v1,t7,t8
  3c:	3c080000 	lui	t0,0x0
  40:	25080000 	addiu	t0,t0,0
  44:	03281821 	addu	v1,t9,t0
  48:	c460000c 	lwc1	$f0,12(v1)
  4c:	c4640004 	lwc1	$f4,4(v1)
  50:	4604303e 	c.le.s	$f6,$f4
  54:	00000000 	nop
  58:	45020017 	bc1fl	b8 <func_80AAEE50+0xb8>
  5c:	8c640000 	lw	a0,0(v1)
  60:	8c640000 	lw	a0,0(v1)
  64:	afa3002c 	sw	v1,44(sp)
  68:	afa5003c 	sw	a1,60(sp)
  6c:	0c000000 	jal	0 <func_80AAEE50>
  70:	e7a00034 	swc1	$f0,52(sp)
  74:	44824000 	mtc1	v0,$f8
  78:	8fa3002c 	lw	v1,44(sp)
  7c:	c7a00034 	lwc1	$f0,52(sp)
  80:	468042a0 	cvt.s.w	$f10,$f8
  84:	8fa40038 	lw	a0,56(sp)
  88:	90690008 	lbu	t1,8(v1)
  8c:	24070000 	li	a3,0
  90:	8c650000 	lw	a1,0(v1)
  94:	8c660004 	lw	a2,4(v1)
  98:	e7aa0010 	swc1	$f10,16(sp)
  9c:	e7a00018 	swc1	$f0,24(sp)
  a0:	2484014c 	addiu	a0,a0,332
  a4:	0c000000 	jal	0 <func_80AAEE50>
  a8:	afa90014 	sw	t1,20(sp)
  ac:	10000016 	b	108 <func_80AAEE50+0x108>
  b0:	8fab003c 	lw	t3,60(sp)
  b4:	8c640000 	lw	a0,0(v1)
  b8:	afa3002c 	sw	v1,44(sp)
  bc:	afa5003c 	sw	a1,60(sp)
  c0:	0c000000 	jal	0 <func_80AAEE50>
  c4:	e7a00034 	swc1	$f0,52(sp)
  c8:	44828000 	mtc1	v0,$f16
  cc:	8fa3002c 	lw	v1,44(sp)
  d0:	c7a00034 	lwc1	$f0,52(sp)
  d4:	46808420 	cvt.s.w	$f16,$f16
  d8:	8fa40038 	lw	a0,56(sp)
  dc:	44809000 	mtc1	zero,$f18
  e0:	906a0008 	lbu	t2,8(v1)
  e4:	8c650000 	lw	a1,0(v1)
  e8:	8c660004 	lw	a2,4(v1)
  ec:	44078000 	mfc1	a3,$f16
  f0:	e7a00018 	swc1	$f0,24(sp)
  f4:	2484014c 	addiu	a0,a0,332
  f8:	afaa0014 	sw	t2,20(sp)
  fc:	0c000000 	jal	0 <func_80AAEE50>
 100:	e7b20010 	swc1	$f18,16(sp)
 104:	8fab003c 	lw	t3,60(sp)
 108:	8fac0040 	lw	t4,64(sp)
 10c:	ad8b0000 	sw	t3,0(t4)
 110:	8fbf0024 	lw	ra,36(sp)
 114:	27bd0038 	addiu	sp,sp,56
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <func_80AAEF70>:
 120:	3c020000 	lui	v0,0x0
 124:	24420000 	addiu	v0,v0,0
 128:	944e0ee6 	lhu	t6,3814(v0)
 12c:	2401000f 	li	at,15
 130:	afa50004 	sw	a1,4(sp)
 134:	31cf000f 	andi	t7,t6,0xf
 138:	11e10003 	beq	t7,at,148 <func_80AAEF70+0x28>
 13c:	24186086 	li	t8,24710
 140:	03e00008 	jr	ra
 144:	a498010e 	sh	t8,270(a0)
 148:	94590f26 	lhu	t9,3878(v0)
 14c:	33288000 	andi	t0,t9,0x8000
 150:	51000018 	beqzl	t0,1b4 <func_80AAEF70+0x94>
 154:	845913d2 	lh	t9,5074(v0)
 158:	944913fc 	lhu	t1,5116(v0)
 15c:	240b6082 	li	t3,24706
 160:	312a0001 	andi	t2,t1,0x1
 164:	51400004 	beqzl	t2,178 <func_80AAEF70+0x58>
 168:	844c13d2 	lh	t4,5074(v0)
 16c:	03e00008 	jr	ra
 170:	a48b010e 	sh	t3,270(a0)
 174:	844c13d2 	lh	t4,5074(v0)
 178:	240d6076 	li	t5,24694
 17c:	51800004 	beqzl	t4,190 <func_80AAEF70+0x70>
 180:	8c4e0ec8 	lw	t6,3784(v0)
 184:	03e00008 	jr	ra
 188:	a48d010e 	sh	t5,270(a0)
 18c:	8c4e0ec8 	lw	t6,3784(v0)
 190:	2401009e 	li	at,158
 194:	240f607e 	li	t7,24702
 198:	15c10003 	bne	t6,at,1a8 <func_80AAEF70+0x88>
 19c:	24186081 	li	t8,24705
 1a0:	03e00008 	jr	ra
 1a4:	a48f010e 	sh	t7,270(a0)
 1a8:	03e00008 	jr	ra
 1ac:	a498010e 	sh	t8,270(a0)
 1b0:	845913d2 	lh	t9,5074(v0)
 1b4:	24086076 	li	t0,24694
 1b8:	2409607d 	li	t1,24701
 1bc:	53200004 	beqzl	t9,1d0 <func_80AAEF70+0xb0>
 1c0:	a489010e 	sh	t1,270(a0)
 1c4:	03e00008 	jr	ra
 1c8:	a488010e 	sh	t0,270(a0)
 1cc:	a489010e 	sh	t1,270(a0)
 1d0:	944a13fc 	lhu	t2,5116(v0)
 1d4:	240c009e 	li	t4,158
 1d8:	ac4c0ec8 	sw	t4,3784(v0)
 1dc:	314bfffe 	andi	t3,t2,0xfffe
 1e0:	a44b13fc 	sh	t3,5116(v0)
 1e4:	03e00008 	jr	ra
 1e8:	00000000 	nop

000001ec <EnMm2_Init>:
 1ec:	27bdffc0 	addiu	sp,sp,-64
 1f0:	afa50044 	sw	a1,68(sp)
 1f4:	afbf002c 	sw	ra,44(sp)
 1f8:	afb00028 	sw	s0,40(sp)
 1fc:	3c050000 	lui	a1,0x0
 200:	00808025 	move	s0,a0
 204:	0c000000 	jal	0 <func_80AAEE50>
 208:	24a50000 	addiu	a1,a1,0
 20c:	3c060000 	lui	a2,0x0
 210:	24c60000 	addiu	a2,a2,0
 214:	260400b4 	addiu	a0,s0,180
 218:	24050000 	li	a1,0
 21c:	0c000000 	jal	0 <func_80AAEE50>
 220:	3c0741a8 	lui	a3,0x41a8
 224:	2605014c 	addiu	a1,s0,332
 228:	3c060600 	lui	a2,0x600
 22c:	260e01fc 	addiu	t6,s0,508
 230:	260f025c 	addiu	t7,s0,604
 234:	24180010 	li	t8,16
 238:	afb80018 	sw	t8,24(sp)
 23c:	afaf0014 	sw	t7,20(sp)
 240:	afae0010 	sw	t6,16(sp)
 244:	24c65e18 	addiu	a2,a2,24088
 248:	afa50030 	sw	a1,48(sp)
 24c:	8fa40044 	lw	a0,68(sp)
 250:	0c000000 	jal	0 <func_80AAEE50>
 254:	00003825 	move	a3,zero
 258:	3c030000 	lui	v1,0x0
 25c:	24630000 	addiu	v1,v1,0
 260:	0c000000 	jal	0 <func_80AAEE50>
 264:	8c640020 	lw	a0,32(v1)
 268:	44822000 	mtc1	v0,$f4
 26c:	3c030000 	lui	v1,0x0
 270:	24630000 	addiu	v1,v1,0
 274:	468021a0 	cvt.s.w	$f6,$f4
 278:	90790028 	lbu	t9,40(v1)
 27c:	c468002c 	lwc1	$f8,44(v1)
 280:	8c650020 	lw	a1,32(v1)
 284:	8fa40030 	lw	a0,48(sp)
 288:	3c063f80 	lui	a2,0x3f80
 28c:	e7a60010 	swc1	$f6,16(sp)
 290:	24070000 	li	a3,0
 294:	afb90014 	sw	t9,20(sp)
 298:	0c000000 	jal	0 <func_80AAEE50>
 29c:	e7a80018 	swc1	$f8,24(sp)
 2a0:	24080002 	li	t0,2
 2a4:	ae0801f8 	sw	t0,504(s0)
 2a8:	26050194 	addiu	a1,s0,404
 2ac:	afa50030 	sw	a1,48(sp)
 2b0:	0c000000 	jal	0 <func_80AAEE50>
 2b4:	8fa40044 	lw	a0,68(sp)
 2b8:	3c070000 	lui	a3,0x0
 2bc:	8fa50030 	lw	a1,48(sp)
 2c0:	24e70000 	addiu	a3,a3,0
 2c4:	8fa40044 	lw	a0,68(sp)
 2c8:	0c000000 	jal	0 <func_80AAEE50>
 2cc:	02003025 	move	a2,s0
 2d0:	960b01f4 	lhu	t3,500(s0)
 2d4:	3c01bf80 	lui	at,0xbf80
 2d8:	44815000 	mtc1	at,$f10
 2dc:	860d001c 	lh	t5,28(s0)
 2e0:	240900ff 	li	t1,255
 2e4:	240a0006 	li	t2,6
 2e8:	24010001 	li	at,1
 2ec:	356c0001 	ori	t4,t3,0x1
 2f0:	a20900ae 	sb	t1,174(s0)
 2f4:	ae0001e0 	sw	zero,480(s0)
 2f8:	a20a001f 	sb	t2,31(s0)
 2fc:	a60c01f4 	sh	t4,500(s0)
 300:	15a10005 	bne	t5,at,318 <EnMm2_Init+0x12c>
 304:	e60a006c 	swc1	$f10,108(s0)
 308:	3c0e0000 	lui	t6,0x0
 30c:	25ce0000 	addiu	t6,t6,0
 310:	10000007 	b	330 <EnMm2_Init+0x144>
 314:	ae0e0190 	sw	t6,400(s0)
 318:	02002025 	move	a0,s0
 31c:	0c000000 	jal	0 <func_80AAEE50>
 320:	8fa50044 	lw	a1,68(sp)
 324:	3c0f0000 	lui	t7,0x0
 328:	25ef0000 	addiu	t7,t7,0
 32c:	ae0f0190 	sw	t7,400(s0)
 330:	3c020000 	lui	v0,0x0
 334:	24420000 	addiu	v0,v0,0
 338:	8c580004 	lw	t8,4(v0)
 33c:	53000006 	beqzl	t8,358 <EnMm2_Init+0x16c>
 340:	8619001c 	lh	t9,28(s0)
 344:	0c000000 	jal	0 <func_80AAEE50>
 348:	02002025 	move	a0,s0
 34c:	3c020000 	lui	v0,0x0
 350:	24420000 	addiu	v0,v0,0
 354:	8619001c 	lh	t9,28(s0)
 358:	24010001 	li	at,1
 35c:	5721000f 	bnel	t9,at,39c <EnMm2_Init+0x1b0>
 360:	8fbf002c 	lw	ra,44(sp)
 364:	94480f26 	lhu	t0,3878(v0)
 368:	3c040000 	lui	a0,0x0
 36c:	31098000 	andi	t1,t0,0x8000
 370:	11200005 	beqz	t1,388 <EnMm2_Init+0x19c>
 374:	00000000 	nop
 378:	944a13fc 	lhu	t2,5116(v0)
 37c:	314b0001 	andi	t3,t2,0x1
 380:	55600006 	bnezl	t3,39c <EnMm2_Init+0x1b0>
 384:	8fbf002c 	lw	ra,44(sp)
 388:	0c000000 	jal	0 <func_80AAEE50>
 38c:	24840000 	addiu	a0,a0,0
 390:	0c000000 	jal	0 <func_80AAEE50>
 394:	02002025 	move	a0,s0
 398:	8fbf002c 	lw	ra,44(sp)
 39c:	8fb00028 	lw	s0,40(sp)
 3a0:	27bd0040 	addiu	sp,sp,64
 3a4:	03e00008 	jr	ra
 3a8:	00000000 	nop

000003ac <EnMm2_Destroy>:
 3ac:	27bdffe8 	addiu	sp,sp,-24
 3b0:	00803025 	move	a2,a0
 3b4:	afbf0014 	sw	ra,20(sp)
 3b8:	00a02025 	move	a0,a1
 3bc:	0c000000 	jal	0 <func_80AAEE50>
 3c0:	24c50194 	addiu	a1,a2,404
 3c4:	8fbf0014 	lw	ra,20(sp)
 3c8:	27bd0018 	addiu	sp,sp,24
 3cc:	03e00008 	jr	ra
 3d0:	00000000 	nop

000003d4 <func_80AAF224>:
 3d4:	27bdffe8 	addiu	sp,sp,-24
 3d8:	afbf0014 	sw	ra,20(sp)
 3dc:	afa5001c 	sw	a1,28(sp)
 3e0:	afa60020 	sw	a2,32(sp)
 3e4:	0c000000 	jal	0 <func_80AAEE50>
 3e8:	afa40018 	sw	a0,24(sp)
 3ec:	10400005 	beqz	v0,404 <func_80AAF224+0x30>
 3f0:	8fa40018 	lw	a0,24(sp)
 3f4:	8fae0020 	lw	t6,32(sp)
 3f8:	24020001 	li	v0,1
 3fc:	10000017 	b	45c <func_80AAF224+0x88>
 400:	ac8e0190 	sw	t6,400(a0)
 404:	848f008a 	lh	t7,138(a0)
 408:	849800b6 	lh	t8,182(a0)
 40c:	01f81023 	subu	v0,t7,t8
 410:	00021400 	sll	v0,v0,0x10
 414:	00021403 	sra	v0,v0,0x10
 418:	04400003 	bltz	v0,428 <func_80AAF224+0x54>
 41c:	00021823 	negu	v1,v0
 420:	10000001 	b	428 <func_80AAF224+0x54>
 424:	00401825 	move	v1,v0
 428:	28614301 	slti	at,v1,17153
 42c:	1020000a 	beqz	at,458 <func_80AAF224+0x84>
 430:	3c0142c8 	lui	at,0x42c8
 434:	44810000 	mtc1	at,$f0
 438:	c4840090 	lwc1	$f4,144(a0)
 43c:	4600203c 	c.lt.s	$f4,$f0
 440:	00000000 	nop
 444:	45020005 	bc1fl	45c <func_80AAF224+0x88>
 448:	00001025 	move	v0,zero
 44c:	44060000 	mfc1	a2,$f0
 450:	0c000000 	jal	0 <func_80AAEE50>
 454:	8fa5001c 	lw	a1,28(sp)
 458:	00001025 	move	v0,zero
 45c:	8fbf0014 	lw	ra,20(sp)
 460:	27bd0018 	addiu	sp,sp,24
 464:	03e00008 	jr	ra
 468:	00000000 	nop

0000046c <func_80AAF2BC>:
 46c:	27bdffd8 	addiu	sp,sp,-40
 470:	afbf0024 	sw	ra,36(sp)
 474:	afb00020 	sw	s0,32(sp)
 478:	afa5002c 	sw	a1,44(sp)
 47c:	848e01f6 	lh	t6,502(a0)
 480:	00808025 	move	s0,a0
 484:	29c1003d 	slti	at,t6,61
 488:	14200003 	bnez	at,498 <func_80AAF2BC+0x2c>
 48c:	00000000 	nop
 490:	0c000000 	jal	0 <func_80AAEE50>
 494:	00000000 	nop
 498:	0c000000 	jal	0 <func_80AAEE50>
 49c:	2604014c 	addiu	a0,s0,332
 4a0:	860f01f6 	lh	t7,502(s0)
 4a4:	44802000 	mtc1	zero,$f4
 4a8:	3c063f19 	lui	a2,0x3f19
 4ac:	25f80001 	addiu	t8,t7,1
 4b0:	a61801f6 	sh	t8,502(s0)
 4b4:	34c6999a 	ori	a2,a2,0x999a
 4b8:	26040068 	addiu	a0,s0,104
 4bc:	3c054120 	lui	a1,0x4120
 4c0:	3c074000 	lui	a3,0x4000
 4c4:	0c000000 	jal	0 <func_80AAEE50>
 4c8:	e7a40010 	swc1	$f4,16(sp)
 4cc:	8fbf0024 	lw	ra,36(sp)
 4d0:	8fb00020 	lw	s0,32(sp)
 4d4:	27bd0028 	addiu	sp,sp,40
 4d8:	03e00008 	jr	ra
 4dc:	00000000 	nop

000004e0 <func_80AAF330>:
 4e0:	27bdffe8 	addiu	sp,sp,-24
 4e4:	afbf0014 	sw	ra,20(sp)
 4e8:	00803825 	move	a3,a0
 4ec:	afa5001c 	sw	a1,28(sp)
 4f0:	afa70018 	sw	a3,24(sp)
 4f4:	0c000000 	jal	0 <func_80AAEE50>
 4f8:	2484014c 	addiu	a0,a0,332
 4fc:	10400018 	beqz	v0,560 <func_80AAF330+0x80>
 500:	8fa70018 	lw	a3,24(sp)
 504:	3c0e0000 	lui	t6,0x0
 508:	25ce0000 	addiu	t6,t6,0
 50c:	acee0190 	sw	t6,400(a3)
 510:	afa70018 	sw	a3,24(sp)
 514:	00e02025 	move	a0,a3
 518:	00002825 	move	a1,zero
 51c:	0c000000 	jal	0 <func_80AAEE50>
 520:	24e601f8 	addiu	a2,a3,504
 524:	8fa70018 	lw	a3,24(sp)
 528:	240f0001 	li	t7,1
 52c:	94f801f4 	lhu	t8,500(a3)
 530:	acef01e0 	sw	t7,480(a3)
 534:	33190002 	andi	t9,t8,0x2
 538:	17200003 	bnez	t9,548 <func_80AAF330+0x68>
 53c:	00000000 	nop
 540:	0c000000 	jal	0 <func_80AAEE50>
 544:	8fa4001c 	lw	a0,28(sp)
 548:	3c020000 	lui	v0,0x0
 54c:	24420000 	addiu	v0,v0,0
 550:	944813fc 	lhu	t0,5116(v0)
 554:	a44013d2 	sh	zero,5074(v0)
 558:	3109fffe 	andi	t1,t0,0xfffe
 55c:	a44913fc 	sh	t1,5116(v0)
 560:	8fbf0014 	lw	ra,20(sp)
 564:	27bd0018 	addiu	sp,sp,24
 568:	03e00008 	jr	ra
 56c:	00000000 	nop

00000570 <func_80AAF3C0>:
 570:	27bdffe0 	addiu	sp,sp,-32
 574:	afb00018 	sw	s0,24(sp)
 578:	00808025 	move	s0,a0
 57c:	afbf001c 	sw	ra,28(sp)
 580:	afa50024 	sw	a1,36(sp)
 584:	0c000000 	jal	0 <func_80AAEE50>
 588:	2484014c 	addiu	a0,a0,332
 58c:	9603010e 	lhu	v1,270(s0)
 590:	2401607d 	li	at,24701
 594:	8fa40024 	lw	a0,36(sp)
 598:	10610007 	beq	v1,at,5b8 <func_80AAF3C0+0x48>
 59c:	2401607e 	li	at,24702
 5a0:	10610005 	beq	v1,at,5b8 <func_80AAF3C0+0x48>
 5a4:	24016081 	li	at,24705
 5a8:	10610031 	beq	v1,at,670 <func_80AAF3C0+0x100>
 5ac:	8fa40024 	lw	a0,36(sp)
 5b0:	10000046 	b	6cc <func_80AAF3C0+0x15c>
 5b4:	02002025 	move	a0,s0
 5b8:	0c000000 	jal	0 <func_80AAEE50>
 5bc:	248420d8 	addiu	a0,a0,8408
 5c0:	24010004 	li	at,4
 5c4:	54410055 	bnel	v0,at,71c <func_80AAF3C0+0x1ac>
 5c8:	8fbf001c 	lw	ra,28(sp)
 5cc:	0c000000 	jal	0 <func_80AAEE50>
 5d0:	8fa40024 	lw	a0,36(sp)
 5d4:	10400050 	beqz	v0,718 <func_80AAF3C0+0x1a8>
 5d8:	8fae0024 	lw	t6,36(sp)
 5dc:	3c030001 	lui	v1,0x1
 5e0:	006e1821 	addu	v1,v1,t6
 5e4:	906304bd 	lbu	v1,1213(v1)
 5e8:	24010001 	li	at,1
 5ec:	8fa40024 	lw	a0,36(sp)
 5f0:	10600005 	beqz	v1,608 <func_80AAF3C0+0x98>
 5f4:	00000000 	nop
 5f8:	1061000d 	beq	v1,at,630 <func_80AAF3C0+0xc0>
 5fc:	3c030000 	lui	v1,0x0
 600:	10000012 	b	64c <func_80AAF3C0+0xdc>
 604:	24630000 	addiu	v1,v1,0
 608:	0c000000 	jal	0 <func_80AAEE50>
 60c:	2405607f 	li	a1,24703
 610:	3c030000 	lui	v1,0x0
 614:	240f607f 	li	t7,24703
 618:	24630000 	addiu	v1,v1,0
 61c:	a60f010e 	sh	t7,270(s0)
 620:	947813fc 	lhu	t8,5116(v1)
 624:	37190001 	ori	t9,t8,0x1
 628:	10000008 	b	64c <func_80AAF3C0+0xdc>
 62c:	a47913fc 	sh	t9,5116(v1)
 630:	8fa40024 	lw	a0,36(sp)
 634:	0c000000 	jal	0 <func_80AAEE50>
 638:	24056080 	li	a1,24704
 63c:	24086080 	li	t0,24704
 640:	3c030000 	lui	v1,0x0
 644:	a608010e 	sh	t0,270(s0)
 648:	24630000 	addiu	v1,v1,0
 64c:	960201f4 	lhu	v0,500(s0)
 650:	30490004 	andi	t1,v0,0x4
 654:	11200030 	beqz	t1,718 <func_80AAF3C0+0x1a8>
 658:	304afffb 	andi	t2,v0,0xfffb
 65c:	a60a01f4 	sh	t2,500(s0)
 660:	8c6b0ec8 	lw	t3,3784(v1)
 664:	256c0001 	addiu	t4,t3,1
 668:	1000002b 	b	718 <func_80AAF3C0+0x1a8>
 66c:	ac6c0ec8 	sw	t4,3784(v1)
 670:	0c000000 	jal	0 <func_80AAEE50>
 674:	248420d8 	addiu	a0,a0,8408
 678:	24010005 	li	at,5
 67c:	54410027 	bnel	v0,at,71c <func_80AAF3C0+0x1ac>
 680:	8fbf001c 	lw	ra,28(sp)
 684:	0c000000 	jal	0 <func_80AAEE50>
 688:	8fa40024 	lw	a0,36(sp)
 68c:	50400023 	beqzl	v0,71c <func_80AAF3C0+0x1ac>
 690:	8fbf001c 	lw	ra,28(sp)
 694:	960d01f4 	lhu	t5,500(s0)
 698:	3c030000 	lui	v1,0x0
 69c:	24630000 	addiu	v1,v1,0
 6a0:	35ae0004 	ori	t6,t5,0x4
 6a4:	a60e01f4 	sh	t6,500(s0)
 6a8:	8c6f0ec8 	lw	t7,3784(v1)
 6ac:	8fa40024 	lw	a0,36(sp)
 6b0:	2405607e 	li	a1,24702
 6b4:	25f8ffff 	addiu	t8,t7,-1
 6b8:	0c000000 	jal	0 <func_80AAEE50>
 6bc:	ac780ec8 	sw	t8,3784(v1)
 6c0:	2419607e 	li	t9,24702
 6c4:	10000014 	b	718 <func_80AAF3C0+0x1a8>
 6c8:	a619010e 	sh	t9,270(s0)
 6cc:	0c000000 	jal	0 <func_80AAEE50>
 6d0:	8fa50024 	lw	a1,36(sp)
 6d4:	50400011 	beqzl	v0,71c <func_80AAF3C0+0x1ac>
 6d8:	8fbf001c 	lw	ra,28(sp)
 6dc:	9608010e 	lhu	t0,270(s0)
 6e0:	2401607f 	li	at,24703
 6e4:	3c0a0000 	lui	t2,0x0
 6e8:	15010007 	bne	t0,at,708 <func_80AAF3C0+0x198>
 6ec:	254a0000 	addiu	t2,t2,0
 6f0:	0c000000 	jal	0 <func_80AAEE50>
 6f4:	00002025 	move	a0,zero
 6f8:	3c090000 	lui	t1,0x0
 6fc:	25290000 	addiu	t1,t1,0
 700:	10000002 	b	70c <func_80AAF3C0+0x19c>
 704:	ae090190 	sw	t1,400(s0)
 708:	ae0a0190 	sw	t2,400(s0)
 70c:	02002025 	move	a0,s0
 710:	0c000000 	jal	0 <func_80AAEE50>
 714:	8fa50024 	lw	a1,36(sp)
 718:	8fbf001c 	lw	ra,28(sp)
 71c:	8fb00018 	lw	s0,24(sp)
 720:	27bd0020 	addiu	sp,sp,32
 724:	03e00008 	jr	ra
 728:	00000000 	nop

0000072c <func_80AAF57C>:
 72c:	27bdffe8 	addiu	sp,sp,-24
 730:	afbf0014 	sw	ra,20(sp)
 734:	afa40018 	sw	a0,24(sp)
 738:	afa5001c 	sw	a1,28(sp)
 73c:	0c000000 	jal	0 <func_80AAEE50>
 740:	2484014c 	addiu	a0,a0,332
 744:	8fa40018 	lw	a0,24(sp)
 748:	0c000000 	jal	0 <func_80AAEE50>
 74c:	8fa5001c 	lw	a1,28(sp)
 750:	3c060000 	lui	a2,0x0
 754:	24c60000 	addiu	a2,a2,0
 758:	8fa40018 	lw	a0,24(sp)
 75c:	0c000000 	jal	0 <func_80AAEE50>
 760:	8fa5001c 	lw	a1,28(sp)
 764:	10400009 	beqz	v0,78c <func_80AAF57C+0x60>
 768:	8fae0018 	lw	t6,24(sp)
 76c:	95cf010e 	lhu	t7,270(t6)
 770:	2401607d 	li	at,24701
 774:	3c020000 	lui	v0,0x0
 778:	15e10004 	bne	t7,at,78c <func_80AAF57C+0x60>
 77c:	24420000 	addiu	v0,v0,0
 780:	94580f26 	lhu	t8,3878(v0)
 784:	37198000 	ori	t9,t8,0x8000
 788:	a4590f26 	sh	t9,3878(v0)
 78c:	8fbf0014 	lw	ra,20(sp)
 790:	27bd0018 	addiu	sp,sp,24
 794:	03e00008 	jr	ra
 798:	00000000 	nop

0000079c <func_80AAF5EC>:
 79c:	27bdffe0 	addiu	sp,sp,-32
 7a0:	afb00018 	sw	s0,24(sp)
 7a4:	00808025 	move	s0,a0
 7a8:	afbf001c 	sw	ra,28(sp)
 7ac:	afa50024 	sw	a1,36(sp)
 7b0:	0c000000 	jal	0 <func_80AAEE50>
 7b4:	2484014c 	addiu	a0,a0,332
 7b8:	8fa40024 	lw	a0,36(sp)
 7bc:	0c000000 	jal	0 <func_80AAEE50>
 7c0:	248420d8 	addiu	a0,a0,8408
 7c4:	24010005 	li	at,5
 7c8:	5441000f 	bnel	v0,at,808 <func_80AAF5EC+0x6c>
 7cc:	8fbf001c 	lw	ra,28(sp)
 7d0:	0c000000 	jal	0 <func_80AAEE50>
 7d4:	8fa40024 	lw	a0,36(sp)
 7d8:	1040000a 	beqz	v0,804 <func_80AAF5EC+0x68>
 7dc:	02002025 	move	a0,s0
 7e0:	960e01f4 	lhu	t6,500(s0)
 7e4:	24050003 	li	a1,3
 7e8:	260601f8 	addiu	a2,s0,504
 7ec:	31cffffe 	andi	t7,t6,0xfffe
 7f0:	0c000000 	jal	0 <func_80AAEE50>
 7f4:	a60f01f4 	sh	t7,500(s0)
 7f8:	3c180000 	lui	t8,0x0
 7fc:	27180000 	addiu	t8,t8,0
 800:	ae180190 	sw	t8,400(s0)
 804:	8fbf001c 	lw	ra,28(sp)
 808:	8fb00018 	lw	s0,24(sp)
 80c:	27bd0020 	addiu	sp,sp,32
 810:	03e00008 	jr	ra
 814:	00000000 	nop

00000818 <func_80AAF668>:
 818:	27bdffe0 	addiu	sp,sp,-32
 81c:	afbf001c 	sw	ra,28(sp)
 820:	afb00018 	sw	s0,24(sp)
 824:	afa50024 	sw	a1,36(sp)
 828:	240ec180 	li	t6,-16000
 82c:	a48e0032 	sh	t6,50(a0)
 830:	848f0032 	lh	t7,50(a0)
 834:	00808025 	move	s0,a0
 838:	2484014c 	addiu	a0,a0,332
 83c:	0c000000 	jal	0 <func_80AAEE50>
 840:	a48fff6a 	sh	t7,-150(a0)
 844:	3c070000 	lui	a3,0x0
 848:	24e70000 	addiu	a3,a3,0
 84c:	84e313d4 	lh	v1,5076(a3)
 850:	8cf80ec8 	lw	t8,3784(a3)
 854:	3c060000 	lui	a2,0x0
 858:	24c60000 	addiu	a2,a2,0
 85c:	0078082a 	slt	at,v1,t8
 860:	10200004 	beqz	at,874 <func_80AAF668+0x5c>
 864:	02002025 	move	a0,s0
 868:	24196085 	li	t9,24709
 86c:	10000003 	b	87c <func_80AAF668+0x64>
 870:	a619010e 	sh	t9,270(s0)
 874:	24086084 	li	t0,24708
 878:	a608010e 	sh	t0,270(s0)
 87c:	0c000000 	jal	0 <func_80AAEE50>
 880:	8fa50024 	lw	a1,36(sp)
 884:	3c070000 	lui	a3,0x0
 888:	1040000b 	beqz	v0,8b8 <func_80AAF668+0xa0>
 88c:	24e70000 	addiu	a3,a3,0
 890:	a60001f6 	sh	zero,502(s0)
 894:	84e213d4 	lh	v0,5076(a3)
 898:	8ce90ec8 	lw	t1,3784(a3)
 89c:	00021c00 	sll	v1,v0,0x10
 8a0:	00031c03 	sra	v1,v1,0x10
 8a4:	0069082a 	slt	at,v1,t1
 8a8:	50200021 	beqzl	at,930 <func_80AAF668+0x118>
 8ac:	8fbf001c 	lw	ra,28(sp)
 8b0:	1000001e 	b	92c <func_80AAF668+0x114>
 8b4:	ace20ec8 	sw	v0,3784(a3)
 8b8:	3c040000 	lui	a0,0x0
 8bc:	24840000 	addiu	a0,a0,0
 8c0:	0c000000 	jal	0 <func_80AAEE50>
 8c4:	2405021d 	li	a1,541
 8c8:	3c070000 	lui	a3,0x0
 8cc:	24e70000 	addiu	a3,a3,0
 8d0:	94e513fc 	lhu	a1,5116(a3)
 8d4:	3c040000 	lui	a0,0x0
 8d8:	24840000 	addiu	a0,a0,0
 8dc:	0c000000 	jal	0 <func_80AAEE50>
 8e0:	30a50001 	andi	a1,a1,0x1
 8e4:	3c070000 	lui	a3,0x0
 8e8:	24e70000 	addiu	a3,a3,0
 8ec:	94ea13fc 	lhu	t2,5116(a3)
 8f0:	02002025 	move	a0,s0
 8f4:	314b0001 	andi	t3,t2,0x1
 8f8:	5560000d 	bnezl	t3,930 <func_80AAF668+0x118>
 8fc:	8fbf001c 	lw	ra,28(sp)
 900:	960c01f4 	lhu	t4,500(s0)
 904:	24050003 	li	a1,3
 908:	260601f8 	addiu	a2,s0,504
 90c:	358e0002 	ori	t6,t4,0x2
 910:	a60e01f4 	sh	t6,500(s0)
 914:	31cffffe 	andi	t7,t6,0xfffe
 918:	0c000000 	jal	0 <func_80AAEE50>
 91c:	a60f01f4 	sh	t7,500(s0)
 920:	3c180000 	lui	t8,0x0
 924:	27180000 	addiu	t8,t8,0
 928:	ae180190 	sw	t8,400(s0)
 92c:	8fbf001c 	lw	ra,28(sp)
 930:	8fb00018 	lw	s0,24(sp)
 934:	27bd0020 	addiu	sp,sp,32
 938:	03e00008 	jr	ra
 93c:	00000000 	nop

00000940 <EnMm2_Update>:
 940:	27bdffc0 	addiu	sp,sp,-64
 944:	afbf002c 	sw	ra,44(sp)
 948:	afb10028 	sw	s1,40(sp)
 94c:	afb00024 	sw	s0,36(sp)
 950:	948e01f4 	lhu	t6,500(a0)
 954:	00808025 	move	s0,a0
 958:	00a08825 	move	s1,a1
 95c:	31cf0001 	andi	t7,t6,0x1
 960:	11e0000e 	beqz	t7,99c <EnMm2_Update+0x5c>
 964:	260401e8 	addiu	a0,s0,488
 968:	8e190038 	lw	t9,56(s0)
 96c:	00a02025 	move	a0,a1
 970:	02002825 	move	a1,s0
 974:	afb90010 	sw	t9,16(sp)
 978:	8e18003c 	lw	t8,60(s0)
 97c:	260601e8 	addiu	a2,s0,488
 980:	260701ee 	addiu	a3,s0,494
 984:	afb80014 	sw	t8,20(sp)
 988:	8e190040 	lw	t9,64(s0)
 98c:	0c000000 	jal	0 <func_80AAEE50>
 990:	afb90018 	sw	t9,24(sp)
 994:	1000001d 	b	a0c <EnMm2_Update+0xcc>
 998:	8e190190 	lw	t9,400(s0)
 99c:	24080064 	li	t0,100
 9a0:	afa80010 	sw	t0,16(sp)
 9a4:	00002825 	move	a1,zero
 9a8:	24060006 	li	a2,6
 9ac:	0c000000 	jal	0 <func_80AAEE50>
 9b0:	24071838 	li	a3,6200
 9b4:	24090064 	li	t1,100
 9b8:	afa90010 	sw	t1,16(sp)
 9bc:	260401ea 	addiu	a0,s0,490
 9c0:	00002825 	move	a1,zero
 9c4:	24060006 	li	a2,6
 9c8:	0c000000 	jal	0 <func_80AAEE50>
 9cc:	24071838 	li	a3,6200
 9d0:	240a0064 	li	t2,100
 9d4:	afaa0010 	sw	t2,16(sp)
 9d8:	260401ee 	addiu	a0,s0,494
 9dc:	00002825 	move	a1,zero
 9e0:	24060006 	li	a2,6
 9e4:	0c000000 	jal	0 <func_80AAEE50>
 9e8:	24071838 	li	a3,6200
 9ec:	240b0064 	li	t3,100
 9f0:	afab0010 	sw	t3,16(sp)
 9f4:	260401f0 	addiu	a0,s0,496
 9f8:	00002825 	move	a1,zero
 9fc:	24060006 	li	a2,6
 a00:	0c000000 	jal	0 <func_80AAEE50>
 a04:	24071838 	li	a3,6200
 a08:	8e190190 	lw	t9,400(s0)
 a0c:	02002025 	move	a0,s0
 a10:	02202825 	move	a1,s1
 a14:	0320f809 	jalr	t9
 a18:	00000000 	nop
 a1c:	26060194 	addiu	a2,s0,404
 a20:	00c02825 	move	a1,a2
 a24:	afa60034 	sw	a2,52(sp)
 a28:	0c000000 	jal	0 <func_80AAEE50>
 a2c:	02002025 	move	a0,s0
 a30:	3c010001 	lui	at,0x1
 a34:	34211e60 	ori	at,at,0x1e60
 a38:	8fa60034 	lw	a2,52(sp)
 a3c:	02212821 	addu	a1,s1,at
 a40:	0c000000 	jal	0 <func_80AAEE50>
 a44:	02202025 	move	a0,s1
 a48:	0c000000 	jal	0 <func_80AAEE50>
 a4c:	02002025 	move	a0,s0
 a50:	44800000 	mtc1	zero,$f0
 a54:	240c0004 	li	t4,4
 a58:	afac0014 	sw	t4,20(sp)
 a5c:	44060000 	mfc1	a2,$f0
 a60:	44070000 	mfc1	a3,$f0
 a64:	02202025 	move	a0,s1
 a68:	02002825 	move	a1,s0
 a6c:	0c000000 	jal	0 <func_80AAEE50>
 a70:	e7a00010 	swc1	$f0,16(sp)
 a74:	8fbf002c 	lw	ra,44(sp)
 a78:	8fb00024 	lw	s0,36(sp)
 a7c:	8fb10028 	lw	s1,40(sp)
 a80:	03e00008 	jr	ra
 a84:	27bd0040 	addiu	sp,sp,64

00000a88 <EnMm2_Draw>:
 a88:	27bdffb0 	addiu	sp,sp,-80
 a8c:	afbf002c 	sw	ra,44(sp)
 a90:	afb00028 	sw	s0,40(sp)
 a94:	afa50054 	sw	a1,84(sp)
 a98:	8ca50000 	lw	a1,0(a1)
 a9c:	00808025 	move	s0,a0
 aa0:	3c060000 	lui	a2,0x0
 aa4:	24c60000 	addiu	a2,a2,0
 aa8:	27a40038 	addiu	a0,sp,56
 aac:	2407027a 	li	a3,634
 ab0:	0c000000 	jal	0 <func_80AAEE50>
 ab4:	afa50048 	sw	a1,72(sp)
 ab8:	8faf0054 	lw	t7,84(sp)
 abc:	0c000000 	jal	0 <func_80AAEE50>
 ac0:	8de40000 	lw	a0,0(t7)
 ac4:	8fa50048 	lw	a1,72(sp)
 ac8:	3c19db06 	lui	t9,0xdb06
 acc:	37390020 	ori	t9,t9,0x20
 ad0:	8ca302c0 	lw	v1,704(a1)
 ad4:	3c040000 	lui	a0,0x0
 ad8:	3c0e0000 	lui	t6,0x0
 adc:	24780008 	addiu	t8,v1,8
 ae0:	acb802c0 	sw	t8,704(a1)
 ae4:	ac790000 	sw	t9,0(v1)
 ae8:	8e0801e0 	lw	t0,480(s0)
 aec:	3c0100ff 	lui	at,0xff
 af0:	3421ffff 	ori	at,at,0xffff
 af4:	00084880 	sll	t1,t0,0x2
 af8:	00892021 	addu	a0,a0,t1
 afc:	8c840000 	lw	a0,0(a0)
 b00:	3c080000 	lui	t0,0x0
 b04:	3c190000 	lui	t9,0x0
 b08:	00045900 	sll	t3,a0,0x4
 b0c:	000b6702 	srl	t4,t3,0x1c
 b10:	000c6880 	sll	t5,t4,0x2
 b14:	01cd7021 	addu	t6,t6,t5
 b18:	8dce0000 	lw	t6,0(t6)
 b1c:	00815024 	and	t2,a0,at
 b20:	3c018000 	lui	at,0x8000
 b24:	014e7821 	addu	t7,t2,t6
 b28:	01e1c021 	addu	t8,t7,at
 b2c:	ac780004 	sw	t8,4(v1)
 b30:	9207014e 	lbu	a3,334(s0)
 b34:	8e06016c 	lw	a2,364(s0)
 b38:	8e050150 	lw	a1,336(s0)
 b3c:	27390000 	addiu	t9,t9,0
 b40:	25080000 	addiu	t0,t0,0
 b44:	afa80014 	sw	t0,20(sp)
 b48:	afb90010 	sw	t9,16(sp)
 b4c:	afb00018 	sw	s0,24(sp)
 b50:	0c000000 	jal	0 <func_80AAEE50>
 b54:	8fa40054 	lw	a0,84(sp)
 b58:	8fa90054 	lw	t1,84(sp)
 b5c:	3c060000 	lui	a2,0x0
 b60:	24c60000 	addiu	a2,a2,0
 b64:	27a40038 	addiu	a0,sp,56
 b68:	2407028e 	li	a3,654
 b6c:	0c000000 	jal	0 <func_80AAEE50>
 b70:	8d250000 	lw	a1,0(t1)
 b74:	8fbf002c 	lw	ra,44(sp)
 b78:	8fb00028 	lw	s0,40(sp)
 b7c:	27bd0050 	addiu	sp,sp,80
 b80:	03e00008 	jr	ra
 b84:	00000000 	nop

00000b88 <func_80AAF9D8>:
 b88:	24010008 	li	at,8
 b8c:	afa40000 	sw	a0,0(sp)
 b90:	afa60008 	sw	a2,8(sp)
 b94:	10a10006 	beq	a1,at,bb0 <func_80AAF9D8+0x28>
 b98:	afa7000c 	sw	a3,12(sp)
 b9c:	2401000f 	li	at,15
 ba0:	10a1000f 	beq	a1,at,be0 <func_80AAF9D8+0x58>
 ba4:	8fa20014 	lw	v0,20(sp)
 ba8:	03e00008 	jr	ra
 bac:	00001025 	move	v0,zero
 bb0:	8fa20014 	lw	v0,20(sp)
 bb4:	8fa30010 	lw	v1,16(sp)
 bb8:	844f01f0 	lh	t7,496(v0)
 bbc:	846e0000 	lh	t6,0(v1)
 bc0:	84790002 	lh	t9,2(v1)
 bc4:	01cfc021 	addu	t8,t6,t7
 bc8:	a4780000 	sh	t8,0(v1)
 bcc:	844801ee 	lh	t0,494(v0)
 bd0:	00001025 	move	v0,zero
 bd4:	03284823 	subu	t1,t9,t0
 bd8:	03e00008 	jr	ra
 bdc:	a4690002 	sh	t1,2(v1)
 be0:	8fa30010 	lw	v1,16(sp)
 be4:	844b01ea 	lh	t3,490(v0)
 be8:	846a0000 	lh	t2,0(v1)
 bec:	846d0004 	lh	t5,4(v1)
 bf0:	014b6021 	addu	t4,t2,t3
 bf4:	a46c0000 	sh	t4,0(v1)
 bf8:	844e01e8 	lh	t6,488(v0)
 bfc:	01ae7821 	addu	t7,t5,t6
 c00:	25f80fa0 	addiu	t8,t7,4000
 c04:	a4780004 	sh	t8,4(v1)
 c08:	03e00008 	jr	ra
 c0c:	00001025 	move	v0,zero

00000c10 <func_80AAFA60>:
 c10:	27bdffe8 	addiu	sp,sp,-24
 c14:	2401000f 	li	at,15
 c18:	afbf0014 	sw	ra,20(sp)
 c1c:	afa40018 	sw	a0,24(sp)
 c20:	afa60020 	sw	a2,32(sp)
 c24:	14a10006 	bne	a1,at,c40 <func_80AAFA60+0x30>
 c28:	afa70024 	sw	a3,36(sp)
 c2c:	8fa50028 	lw	a1,40(sp)
 c30:	3c040000 	lui	a0,0x0
 c34:	24840000 	addiu	a0,a0,0
 c38:	0c000000 	jal	0 <func_80AAEE50>
 c3c:	24a50038 	addiu	a1,a1,56
 c40:	8fbf0014 	lw	ra,20(sp)
 c44:	27bd0018 	addiu	sp,sp,24
 c48:	03e00008 	jr	ra
 c4c:	00000000 	nop
