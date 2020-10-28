
build/src/overlays/actors/ovl_En_Jj/z_en_jj.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A87800>:
   0:	03e00008 	jr	ra
   4:	ac8502fc 	sw	a1,764(a0)

00000008 <EnJj_Init>:
   8:	27bdffa8 	addiu	sp,sp,-88
   c:	afb10038 	sw	s1,56(sp)
  10:	00a08825 	move	s1,a1
  14:	afbf003c 	sw	ra,60(sp)
  18:	afb00034 	sw	s0,52(sp)
  1c:	3c050000 	lui	a1,0x0
  20:	00808025 	move	s0,a0
  24:	afa0004c 	sw	zero,76(sp)
  28:	0c000000 	jal	0 <func_80A87800>
  2c:	24a50000 	addiu	a1,a1,0
  30:	44800000 	mtc1	zero,$f0
  34:	260400b4 	addiu	a0,s0,180
  38:	00003025 	move	a2,zero
  3c:	44050000 	mfc1	a1,$f0
  40:	44070000 	mfc1	a3,$f0
  44:	0c000000 	jal	0 <func_80A87800>
  48:	00000000 	nop
  4c:	8602001c 	lh	v0,28(s0)
  50:	2401ffff 	li	at,-1
  54:	02202025 	move	a0,s1
  58:	10410008 	beq	v0,at,7c <EnJj_Init+0x74>
  5c:	26050164 	addiu	a1,s0,356
  60:	10400058 	beqz	v0,1c4 <EnJj_Init+0x1bc>
  64:	02002025 	move	a0,s0
  68:	24010001 	li	at,1
  6c:	10410070 	beq	v0,at,230 <EnJj_Init+0x228>
  70:	02002025 	move	a0,s0
  74:	10000083 	b	284 <EnJj_Init+0x27c>
  78:	8fbf003c 	lw	ra,60(sp)
  7c:	3c060601 	lui	a2,0x601
  80:	3c070600 	lui	a3,0x600
  84:	260e01a8 	addiu	t6,s0,424
  88:	260f022c 	addiu	t7,s0,556
  8c:	24180016 	li	t8,22
  90:	afb80018 	sw	t8,24(sp)
  94:	afaf0014 	sw	t7,20(sp)
  98:	afae0010 	sw	t6,16(sp)
  9c:	24e71f4c 	addiu	a3,a3,8012
  a0:	24c6b9a8 	addiu	a2,a2,-18008
  a4:	0c000000 	jal	0 <func_80A87800>
  a8:	afa50044 	sw	a1,68(sp)
  ac:	3c050600 	lui	a1,0x600
  b0:	24a51f4c 	addiu	a1,a1,8012
  b4:	0c000000 	jal	0 <func_80A87800>
  b8:	8fa40044 	lw	a0,68(sp)
  bc:	a600030a 	sh	zero,778(s0)
  c0:	a200030e 	sb	zero,782(s0)
  c4:	a200030f 	sb	zero,783(s0)
  c8:	a2000310 	sb	zero,784(s0)
  cc:	a2000311 	sb	zero,785(s0)
  d0:	3c190000 	lui	t9,0x0
  d4:	97390eda 	lhu	t9,3802(t9)
  d8:	02002025 	move	a0,s0
  dc:	3c050000 	lui	a1,0x0
  e0:	33280400 	andi	t0,t9,0x400
  e4:	11000007 	beqz	t0,104 <EnJj_Init+0xfc>
  e8:	00000000 	nop
  ec:	3c050000 	lui	a1,0x0
  f0:	24a50000 	addiu	a1,a1,0
  f4:	0c000000 	jal	0 <func_80A87800>
  f8:	02002025 	move	a0,s0
  fc:	10000004 	b	110 <EnJj_Init+0x108>
 100:	3c014120 	lui	at,0x4120
 104:	0c000000 	jal	0 <func_80A87800>
 108:	24a50000 	addiu	a1,a1,0
 10c:	3c014120 	lui	at,0x4120
 110:	44813000 	mtc1	at,$f6
 114:	c6040024 	lwc1	$f4,36(s0)
 118:	26241c24 	addiu	a0,s1,7204
 11c:	02002825 	move	a1,s0
 120:	46062201 	sub.s	$f8,$f4,$f6
 124:	02203025 	move	a2,s1
 128:	2407005a 	li	a3,90
 12c:	e7a80010 	swc1	$f8,16(sp)
 130:	c60a0028 	lwc1	$f10,40(s0)
 134:	e7aa0014 	swc1	$f10,20(sp)
 138:	c610002c 	lwc1	$f16,44(s0)
 13c:	afa0001c 	sw	zero,28(sp)
 140:	e7b00018 	swc1	$f16,24(sp)
 144:	86090032 	lh	t1,50(s0)
 148:	afa00028 	sw	zero,40(sp)
 14c:	afa00024 	sw	zero,36(sp)
 150:	0c000000 	jal	0 <func_80A87800>
 154:	afa90020 	sw	t1,32(sp)
 158:	ae020300 	sw	v0,768(s0)
 15c:	02002025 	move	a0,s0
 160:	0c000000 	jal	0 <func_80A87800>
 164:	00002825 	move	a1,zero
 168:	3c040600 	lui	a0,0x600
 16c:	24840a1c 	addiu	a0,a0,2588
 170:	0c000000 	jal	0 <func_80A87800>
 174:	27a5004c 	addiu	a1,sp,76
 178:	02202025 	move	a0,s1
 17c:	26250810 	addiu	a1,s1,2064
 180:	02003025 	move	a2,s0
 184:	0c000000 	jal	0 <func_80A87800>
 188:	8fa7004c 	lw	a3,76(sp)
 18c:	ae02014c 	sw	v0,332(s0)
 190:	260502b0 	addiu	a1,s0,688
 194:	afa50044 	sw	a1,68(sp)
 198:	0c000000 	jal	0 <func_80A87800>
 19c:	02202025 	move	a0,s1
 1a0:	3c070000 	lui	a3,0x0
 1a4:	8fa50044 	lw	a1,68(sp)
 1a8:	24e70000 	addiu	a3,a3,0
 1ac:	02202025 	move	a0,s1
 1b0:	0c000000 	jal	0 <func_80A87800>
 1b4:	02003025 	move	a2,s0
 1b8:	240a00ff 	li	t2,255
 1bc:	10000030 	b	280 <EnJj_Init+0x278>
 1c0:	a20a00ae 	sb	t2,174(s0)
 1c4:	0c000000 	jal	0 <func_80A87800>
 1c8:	00002825 	move	a1,zero
 1cc:	3c040600 	lui	a0,0x600
 1d0:	24841830 	addiu	a0,a0,6192
 1d4:	0c000000 	jal	0 <func_80A87800>
 1d8:	27a5004c 	addiu	a1,sp,76
 1dc:	26250810 	addiu	a1,s1,2064
 1e0:	afa50044 	sw	a1,68(sp)
 1e4:	02202025 	move	a0,s1
 1e8:	02003025 	move	a2,s0
 1ec:	0c000000 	jal	0 <func_80A87800>
 1f0:	8fa7004c 	lw	a3,76(sp)
 1f4:	8fa50044 	lw	a1,68(sp)
 1f8:	ae02014c 	sw	v0,332(s0)
 1fc:	02202025 	move	a0,s1
 200:	0c000000 	jal	0 <func_80A87800>
 204:	00403025 	move	a2,v0
 208:	3c0b0000 	lui	t3,0x0
 20c:	256b0000 	addiu	t3,t3,0
 210:	3c053db2 	lui	a1,0x3db2
 214:	ae0b0130 	sw	t3,304(s0)
 218:	ae000134 	sw	zero,308(s0)
 21c:	34a52d0e 	ori	a1,a1,0x2d0e
 220:	0c000000 	jal	0 <func_80A87800>
 224:	02002025 	move	a0,s0
 228:	10000016 	b	284 <EnJj_Init+0x27c>
 22c:	8fbf003c 	lw	ra,60(sp)
 230:	0c000000 	jal	0 <func_80A87800>
 234:	00002825 	move	a1,zero
 238:	3c040601 	lui	a0,0x601
 23c:	2484ba8c 	addiu	a0,a0,-17780
 240:	0c000000 	jal	0 <func_80A87800>
 244:	27a5004c 	addiu	a1,sp,76
 248:	02202025 	move	a0,s1
 24c:	26250810 	addiu	a1,s1,2064
 250:	02003025 	move	a2,s0
 254:	0c000000 	jal	0 <func_80A87800>
 258:	8fa7004c 	lw	a3,76(sp)
 25c:	3c0c0000 	lui	t4,0x0
 260:	258c0000 	addiu	t4,t4,0
 264:	3c053db2 	lui	a1,0x3db2
 268:	ae02014c 	sw	v0,332(s0)
 26c:	ae0c0130 	sw	t4,304(s0)
 270:	ae000134 	sw	zero,308(s0)
 274:	34a52d0e 	ori	a1,a1,0x2d0e
 278:	0c000000 	jal	0 <func_80A87800>
 27c:	02002025 	move	a0,s0
 280:	8fbf003c 	lw	ra,60(sp)
 284:	8fb00034 	lw	s0,52(sp)
 288:	8fb10038 	lw	s1,56(sp)
 28c:	03e00008 	jr	ra
 290:	27bd0058 	addiu	sp,sp,88

00000294 <EnJj_Destroy>:
 294:	27bdffe8 	addiu	sp,sp,-24
 298:	afbf0014 	sw	ra,20(sp)
 29c:	afa40018 	sw	a0,24(sp)
 2a0:	8482001c 	lh	v0,28(a0)
 2a4:	2401ffff 	li	at,-1
 2a8:	00a03825 	move	a3,a1
 2ac:	10410007 	beq	v0,at,2cc <EnJj_Destroy+0x38>
 2b0:	8faf0018 	lw	t7,24(sp)
 2b4:	10400010 	beqz	v0,2f8 <EnJj_Destroy+0x64>
 2b8:	24010001 	li	at,1
 2bc:	5041000f 	beql	v0,at,2fc <EnJj_Destroy+0x68>
 2c0:	8fb80018 	lw	t8,24(sp)
 2c4:	10000012 	b	310 <EnJj_Destroy+0x7c>
 2c8:	8fbf0014 	lw	ra,20(sp)
 2cc:	8de6014c 	lw	a2,332(t7)
 2d0:	afa7001c 	sw	a3,28(sp)
 2d4:	00e02025 	move	a0,a3
 2d8:	0c000000 	jal	0 <func_80A87800>
 2dc:	24e50810 	addiu	a1,a3,2064
 2e0:	8fa50018 	lw	a1,24(sp)
 2e4:	8fa4001c 	lw	a0,28(sp)
 2e8:	0c000000 	jal	0 <func_80A87800>
 2ec:	24a502b0 	addiu	a1,a1,688
 2f0:	10000007 	b	310 <EnJj_Destroy+0x7c>
 2f4:	8fbf0014 	lw	ra,20(sp)
 2f8:	8fb80018 	lw	t8,24(sp)
 2fc:	00e02025 	move	a0,a3
 300:	24e50810 	addiu	a1,a3,2064
 304:	0c000000 	jal	0 <func_80A87800>
 308:	8f06014c 	lw	a2,332(t8)
 30c:	8fbf0014 	lw	ra,20(sp)
 310:	27bd0018 	addiu	sp,sp,24
 314:	03e00008 	jr	ra
 318:	00000000 	nop

0000031c <func_80A87B1C>:
 31c:	27bdffe8 	addiu	sp,sp,-24
 320:	afbf0014 	sw	ra,20(sp)
 324:	9082030f 	lbu	v0,783(a0)
 328:	00803025 	move	a2,a0
 32c:	18400003 	blez	v0,33c <func_80A87B1C+0x20>
 330:	244effff 	addiu	t6,v0,-1
 334:	10000015 	b	38c <func_80A87B1C+0x70>
 338:	a08e030f 	sb	t6,783(a0)
 33c:	90cf030e 	lbu	t7,782(a2)
 340:	25f80001 	addiu	t8,t7,1
 344:	331900ff 	andi	t9,t8,0xff
 348:	2b210003 	slti	at,t9,3
 34c:	1420000f 	bnez	at,38c <func_80A87B1C+0x70>
 350:	a0d8030e 	sb	t8,782(a2)
 354:	90c20310 	lbu	v0,784(a2)
 358:	a0c0030e 	sb	zero,782(a2)
 35c:	24040014 	li	a0,20
 360:	18400004 	blez	v0,374 <func_80A87B1C+0x58>
 364:	24050014 	li	a1,20
 368:	2448ffff 	addiu	t0,v0,-1
 36c:	10000007 	b	38c <func_80A87B1C+0x70>
 370:	a0c80310 	sb	t0,784(a2)
 374:	0c000000 	jal	0 <func_80A87800>
 378:	afa60018 	sw	a2,24(sp)
 37c:	8fa60018 	lw	a2,24(sp)
 380:	90c90311 	lbu	t1,785(a2)
 384:	a0c2030f 	sb	v0,783(a2)
 388:	a0c90310 	sb	t1,784(a2)
 38c:	8fbf0014 	lw	ra,20(sp)
 390:	27bd0018 	addiu	sp,sp,24
 394:	03e00008 	jr	ra
 398:	00000000 	nop

0000039c <func_80A87B9C>:
 39c:	27bdffe8 	addiu	sp,sp,-24
 3a0:	afbf0014 	sw	ra,20(sp)
 3a4:	84820308 	lh	v0,776(a0)
 3a8:	8c830300 	lw	v1,768(a0)
 3ac:	2841ebb0 	slti	at,v0,-5200
 3b0:	1420000a 	bnez	at,3dc <func_80A87B9C+0x40>
 3b4:	244eff9a 	addiu	t6,v0,-102
 3b8:	a48e0308 	sh	t6,776(a0)
 3bc:	848f0308 	lh	t7,776(a0)
 3c0:	00a02025 	move	a0,a1
 3c4:	24a50810 	addiu	a1,a1,2064
 3c8:	29e1f5d8 	slti	at,t7,-2600
 3cc:	50200004 	beqzl	at,3e0 <func_80A87B9C+0x44>
 3d0:	8fbf0014 	lw	ra,20(sp)
 3d4:	0c000000 	jal	0 <func_80A87800>
 3d8:	8c66014c 	lw	a2,332(v1)
 3dc:	8fbf0014 	lw	ra,20(sp)
 3e0:	27bd0018 	addiu	sp,sp,24
 3e4:	03e00008 	jr	ra
 3e8:	00000000 	nop

000003ec <func_80A87BEC>:
 3ec:	27bdffe8 	addiu	sp,sp,-24
 3f0:	afbf0014 	sw	ra,20(sp)
 3f4:	afa5001c 	sw	a1,28(sp)
 3f8:	3c014396 	lui	at,0x4396
 3fc:	44813000 	mtc1	at,$f6
 400:	c4840090 	lwc1	$f4,144(a0)
 404:	3c050000 	lui	a1,0x0
 408:	4606203c 	c.lt.s	$f4,$f6
 40c:	00000000 	nop
 410:	45020004 	bc1fl	424 <func_80A87BEC+0x38>
 414:	8fbf0014 	lw	ra,20(sp)
 418:	0c000000 	jal	0 <func_80A87800>
 41c:	24a50000 	addiu	a1,a1,0
 420:	8fbf0014 	lw	ra,20(sp)
 424:	27bd0018 	addiu	sp,sp,24
 428:	03e00008 	jr	ra
 42c:	00000000 	nop

00000430 <func_80A87C30>:
 430:	27bdffe0 	addiu	sp,sp,-32
 434:	afb00014 	sw	s0,20(sp)
 438:	afbf001c 	sw	ra,28(sp)
 43c:	afb10018 	sw	s1,24(sp)
 440:	8ca21c44 	lw	v0,7236(a1)
 444:	00808025 	move	s0,a0
 448:	00a08825 	move	s1,a1
 44c:	3c040000 	lui	a0,0x0
 450:	24840000 	addiu	a0,a0,0
 454:	0c000000 	jal	0 <func_80A87800>
 458:	24450024 	addiu	a1,v0,36
 45c:	3c014396 	lui	at,0x4396
 460:	44812000 	mtc1	at,$f4
 464:	3c190001 	lui	t9,0x1
 468:	0331c821 	addu	t9,t9,s1
 46c:	4604003c 	c.lt.s	$f0,$f4
 470:	00000000 	nop
 474:	4502000d 	bc1fl	4ac <func_80A87C30+0x7c>
 478:	3c010001 	lui	at,0x1
 47c:	8f391d44 	lw	t9,7492(t9)
 480:	02202025 	move	a0,s1
 484:	0320f809 	jalr	t9
 488:	00000000 	nop
 48c:	10400006 	beqz	v0,4a8 <func_80A87C30+0x78>
 490:	240e0064 	li	t6,100
 494:	3c050000 	lui	a1,0x0
 498:	a60e030c 	sh	t6,780(s0)
 49c:	24a50000 	addiu	a1,a1,0
 4a0:	0c000000 	jal	0 <func_80A87800>
 4a4:	02002025 	move	a0,s0
 4a8:	3c010001 	lui	at,0x1
 4ac:	240ffb23 	li	t7,-1245
 4b0:	24180014 	li	t8,20
 4b4:	2408ffd0 	li	t0,-48
 4b8:	34211e60 	ori	at,at,0x1e60
 4bc:	a60f02f6 	sh	t7,758(s0)
 4c0:	a61802f8 	sh	t8,760(s0)
 4c4:	a60802fa 	sh	t0,762(s0)
 4c8:	02212821 	addu	a1,s1,at
 4cc:	02202025 	move	a0,s1
 4d0:	0c000000 	jal	0 <func_80A87800>
 4d4:	260602b0 	addiu	a2,s0,688
 4d8:	8fbf001c 	lw	ra,28(sp)
 4dc:	8fb00014 	lw	s0,20(sp)
 4e0:	8fb10018 	lw	s1,24(sp)
 4e4:	03e00008 	jr	ra
 4e8:	27bd0020 	addiu	sp,sp,32

000004ec <func_80A87CEC>:
 4ec:	27bdffe0 	addiu	sp,sp,-32
 4f0:	afbf0014 	sw	ra,20(sp)
 4f4:	8482030c 	lh	v0,780(a0)
 4f8:	00a03825 	move	a3,a1
 4fc:	8c830300 	lw	v1,768(a0)
 500:	18400004 	blez	v0,514 <func_80A87CEC+0x28>
 504:	3c050000 	lui	a1,0x0
 508:	244effff 	addiu	t6,v0,-1
 50c:	1000001d 	b	584 <func_80A87CEC+0x98>
 510:	a48e030c 	sh	t6,780(a0)
 514:	24a50000 	addiu	a1,a1,0
 518:	afa3001c 	sw	v1,28(sp)
 51c:	0c000000 	jal	0 <func_80A87800>
 520:	afa70024 	sw	a3,36(sp)
 524:	8fa40024 	lw	a0,36(sp)
 528:	3c0f0000 	lui	t7,0x0
 52c:	8fa3001c 	lw	v1,28(sp)
 530:	25ef0000 	addiu	t7,t7,0
 534:	24180001 	li	t8,1
 538:	3c010000 	lui	at,0x0
 53c:	ac8f1d68 	sw	t7,7528(a0)
 540:	a0381414 	sb	t8,5140(at)
 544:	24850810 	addiu	a1,a0,2064
 548:	0c000000 	jal	0 <func_80A87800>
 54c:	8c66014c 	lw	a2,332(v1)
 550:	8fa70024 	lw	a3,36(sp)
 554:	84f907a0 	lh	t9,1952(a3)
 558:	00194080 	sll	t0,t9,0x2
 55c:	00e84821 	addu	t1,a3,t0
 560:	0c000000 	jal	0 <func_80A87800>
 564:	8d240790 	lw	a0,1936(t1)
 568:	3c020000 	lui	v0,0x0
 56c:	24420000 	addiu	v0,v0,0
 570:	944a0eda 	lhu	t2,3802(v0)
 574:	24044802 	li	a0,18434
 578:	354b0400 	ori	t3,t2,0x400
 57c:	0c000000 	jal	0 <func_80A87800>
 580:	a44b0eda 	sh	t3,3802(v0)
 584:	8fbf0014 	lw	ra,20(sp)
 588:	27bd0020 	addiu	sp,sp,32
 58c:	03e00008 	jr	ra
 590:	00000000 	nop

00000594 <func_80A87D94>:
 594:	27bdffc0 	addiu	sp,sp,-64
 598:	afbf003c 	sw	ra,60(sp)
 59c:	afb00038 	sw	s0,56(sp)
 5a0:	8cae1d94 	lw	t6,7572(a1)
 5a4:	24010001 	li	at,1
 5a8:	00808025 	move	s0,a0
 5ac:	95c20000 	lhu	v0,0(t6)
 5b0:	00a03025 	move	a2,a1
 5b4:	10410007 	beq	v0,at,5d4 <func_80A87D94+0x40>
 5b8:	24010002 	li	at,2
 5bc:	10410015 	beq	v0,at,614 <func_80A87D94+0x80>
 5c0:	24010003 	li	at,3
 5c4:	50410031 	beql	v0,at,68c <func_80A87D94+0xf8>
 5c8:	9603030a 	lhu	v1,778(s0)
 5cc:	10000039 	b	6b4 <func_80A87D94+0x120>
 5d0:	9483030a 	lhu	v1,778(a0)
 5d4:	9603030a 	lhu	v1,778(s0)
 5d8:	24040014 	li	a0,20
 5dc:	24050014 	li	a1,20
 5e0:	306f0002 	andi	t7,v1,0x2
 5e4:	51e00034 	beqzl	t7,6b8 <func_80A87D94+0x124>
 5e8:	30780001 	andi	t8,v1,0x1
 5ec:	0c000000 	jal	0 <func_80A87800>
 5f0:	a200030e 	sb	zero,782(s0)
 5f4:	9618030a 	lhu	t8,778(s0)
 5f8:	a202030f 	sb	v0,783(s0)
 5fc:	a2000310 	sb	zero,784(s0)
 600:	3b190002 	xori	t9,t8,0x2
 604:	a2000311 	sb	zero,785(s0)
 608:	a619030a 	sh	t9,778(s0)
 60c:	10000029 	b	6b4 <func_80A87D94+0x120>
 610:	3323ffff 	andi	v1,t9,0xffff
 614:	9608030a 	lhu	t0,778(s0)
 618:	24c41c24 	addiu	a0,a2,7204
 61c:	02002825 	move	a1,s0
 620:	35090001 	ori	t1,t0,0x1
 624:	3123ffff 	andi	v1,t1,0xffff
 628:	306a0008 	andi	t2,v1,0x8
 62c:	15400021 	bnez	t2,6b4 <func_80A87D94+0x120>
 630:	a609030a 	sh	t1,778(s0)
 634:	3c010000 	lui	at,0x0
 638:	c4240000 	lwc1	$f4,0(at)
 63c:	3c0142d2 	lui	at,0x42d2
 640:	44813000 	mtc1	at,$f6
 644:	3c01c1d8 	lui	at,0xc1d8
 648:	44814000 	mtc1	at,$f8
 64c:	24070101 	li	a3,257
 650:	afa0001c 	sw	zero,28(sp)
 654:	afa00020 	sw	zero,32(sp)
 658:	afa00024 	sw	zero,36(sp)
 65c:	afa00028 	sw	zero,40(sp)
 660:	e7a40010 	swc1	$f4,16(sp)
 664:	e7a60014 	swc1	$f6,20(sp)
 668:	0c000000 	jal	0 <func_80A87800>
 66c:	e7a80018 	swc1	$f8,24(sp)
 670:	960b030a 	lhu	t3,778(s0)
 674:	ae020304 	sw	v0,772(s0)
 678:	356c0008 	ori	t4,t3,0x8
 67c:	a60c030a 	sh	t4,778(s0)
 680:	1000000c 	b	6b4 <func_80A87D94+0x120>
 684:	3183ffff 	andi	v1,t4,0xffff
 688:	9603030a 	lhu	v1,778(s0)
 68c:	240e0001 	li	t6,1
 690:	306d0002 	andi	t5,v1,0x2
 694:	15a00007 	bnez	t5,6b4 <func_80A87D94+0x120>
 698:	346f0002 	ori	t7,v1,0x2
 69c:	a200030e 	sb	zero,782(s0)
 6a0:	a200030f 	sb	zero,783(s0)
 6a4:	a20e0310 	sb	t6,784(s0)
 6a8:	a2000311 	sb	zero,785(s0)
 6ac:	a60f030a 	sh	t7,778(s0)
 6b0:	31e3ffff 	andi	v1,t7,0xffff
 6b4:	30780001 	andi	t8,v1,0x1
 6b8:	13000008 	beqz	t8,6dc <func_80A87D94+0x148>
 6bc:	02002025 	move	a0,s0
 6c0:	0c000000 	jal	0 <func_80A87800>
 6c4:	2405206d 	li	a1,8301
 6c8:	86020308 	lh	v0,776(s0)
 6cc:	2841ebb0 	slti	at,v0,-5200
 6d0:	14200002 	bnez	at,6dc <func_80A87D94+0x148>
 6d4:	2459ff9a 	addiu	t9,v0,-102
 6d8:	a6190308 	sh	t9,776(s0)
 6dc:	8fbf003c 	lw	ra,60(sp)
 6e0:	8fb00038 	lw	s0,56(sp)
 6e4:	27bd0040 	addiu	sp,sp,64
 6e8:	03e00008 	jr	ra
 6ec:	00000000 	nop

000006f0 <func_80A87EF0>:
 6f0:	27bdffe8 	addiu	sp,sp,-24
 6f4:	afbf0014 	sw	ra,20(sp)
 6f8:	afa40018 	sw	a0,24(sp)
 6fc:	afa5001c 	sw	a1,28(sp)
 700:	9482030a 	lhu	v0,778(a0)
 704:	00802825 	move	a1,a0
 708:	304e0004 	andi	t6,v0,0x4
 70c:	15c00009 	bnez	t6,734 <func_80A87EF0+0x44>
 710:	344f0004 	ori	t7,v0,0x4
 714:	a48f030a 	sh	t7,778(a0)
 718:	8c840304 	lw	a0,772(a0)
 71c:	50800006 	beqzl	a0,738 <func_80A87EF0+0x48>
 720:	8fbf0014 	lw	ra,20(sp)
 724:	0c000000 	jal	0 <func_80A87800>
 728:	afa50018 	sw	a1,24(sp)
 72c:	8fa50018 	lw	a1,24(sp)
 730:	aca0011c 	sw	zero,284(a1)
 734:	8fbf0014 	lw	ra,20(sp)
 738:	27bd0018 	addiu	sp,sp,24
 73c:	03e00008 	jr	ra
 740:	00000000 	nop

00000744 <func_80A87F44>:
 744:	afa40000 	sw	a0,0(sp)
 748:	03e00008 	jr	ra
 74c:	afa50004 	sw	a1,4(sp)

00000750 <EnJj_Update>:
 750:	27bdffe0 	addiu	sp,sp,-32
 754:	afbf001c 	sw	ra,28(sp)
 758:	afb00018 	sw	s0,24(sp)
 75c:	90ae1d6c 	lbu	t6,7532(a1)
 760:	00808025 	move	s0,a0
 764:	51c00009 	beqzl	t6,78c <EnJj_Update+0x3c>
 768:	8e1902fc 	lw	t9,764(s0)
 76c:	8caf1d94 	lw	t7,7572(a1)
 770:	51e00006 	beqzl	t7,78c <EnJj_Update+0x3c>
 774:	8e1902fc 	lw	t9,764(s0)
 778:	0c000000 	jal	0 <func_80A87800>
 77c:	00000000 	nop
 780:	1000000f 	b	7c0 <EnJj_Update+0x70>
 784:	00000000 	nop
 788:	8e1902fc 	lw	t9,764(s0)
 78c:	02002025 	move	a0,s0
 790:	0320f809 	jalr	t9
 794:	00000000 	nop
 798:	3c014224 	lui	at,0x4224
 79c:	44812000 	mtc1	at,$f4
 7a0:	c606017c 	lwc1	$f6,380(s0)
 7a4:	02002025 	move	a0,s0
 7a8:	46062032 	c.eq.s	$f4,$f6
 7ac:	00000000 	nop
 7b0:	45000003 	bc1f	7c0 <EnJj_Update+0x70>
 7b4:	00000000 	nop
 7b8:	0c000000 	jal	0 <func_80A87800>
 7bc:	240528b6 	li	a1,10422
 7c0:	0c000000 	jal	0 <func_80A87800>
 7c4:	02002025 	move	a0,s0
 7c8:	0c000000 	jal	0 <func_80A87800>
 7cc:	26040164 	addiu	a0,s0,356
 7d0:	3c053db2 	lui	a1,0x3db2
 7d4:	34a52d0e 	ori	a1,a1,0x2d0e
 7d8:	0c000000 	jal	0 <func_80A87800>
 7dc:	02002025 	move	a0,s0
 7e0:	86180308 	lh	t8,776(s0)
 7e4:	8e080184 	lw	t0,388(s0)
 7e8:	a5180040 	sh	t8,64(t0)
 7ec:	8fbf001c 	lw	ra,28(sp)
 7f0:	8fb00018 	lw	s0,24(sp)
 7f4:	27bd0020 	addiu	sp,sp,32
 7f8:	03e00008 	jr	ra
 7fc:	00000000 	nop

00000800 <EnJj_Draw>:
 800:	27bdffa8 	addiu	sp,sp,-88
 804:	afbf002c 	sw	ra,44(sp)
 808:	afb00028 	sw	s0,40(sp)
 80c:	afa5005c 	sw	a1,92(sp)
 810:	8ca50000 	lw	a1,0(a1)
 814:	00808025 	move	s0,a0
 818:	3c060000 	lui	a2,0x0
 81c:	24c60000 	addiu	a2,a2,0
 820:	27a4003c 	addiu	a0,sp,60
 824:	2407036f 	li	a3,879
 828:	0c000000 	jal	0 <func_80A87800>
 82c:	afa5004c 	sw	a1,76(sp)
 830:	8faf005c 	lw	t7,92(sp)
 834:	0c000000 	jal	0 <func_80A87800>
 838:	8de40000 	lw	a0,0(t7)
 83c:	3c010000 	lui	at,0x0
 840:	c4260000 	lwc1	$f6,0(at)
 844:	c604017c 	lwc1	$f4,380(s0)
 848:	46062302 	mul.s	$f12,$f4,$f6
 84c:	0c000000 	jal	0 <func_80A87800>
 850:	00000000 	nop
 854:	3c014120 	lui	at,0x4120
 858:	44811000 	mtc1	at,$f2
 85c:	44806000 	mtc1	zero,$f12
 860:	24070001 	li	a3,1
 864:	46020202 	mul.s	$f8,$f0,$f2
 868:	44066000 	mfc1	a2,$f12
 86c:	0c000000 	jal	0 <func_80A87800>
 870:	46024381 	sub.s	$f14,$f8,$f2
 874:	3c014120 	lui	at,0x4120
 878:	44816000 	mtc1	at,$f12
 87c:	24070001 	li	a3,1
 880:	44066000 	mfc1	a2,$f12
 884:	0c000000 	jal	0 <func_80A87800>
 888:	46006386 	mov.s	$f14,$f12
 88c:	8fa5004c 	lw	a1,76(sp)
 890:	3c19db06 	lui	t9,0xdb06
 894:	37390020 	ori	t9,t9,0x20
 898:	8ca302c0 	lw	v1,704(a1)
 89c:	3c040000 	lui	a0,0x0
 8a0:	3c0e0000 	lui	t6,0x0
 8a4:	24780008 	addiu	t8,v1,8
 8a8:	acb802c0 	sw	t8,704(a1)
 8ac:	ac790000 	sw	t9,0(v1)
 8b0:	9208030e 	lbu	t0,782(s0)
 8b4:	3c0100ff 	lui	at,0xff
 8b8:	3421ffff 	ori	at,at,0xffff
 8bc:	00084880 	sll	t1,t0,0x2
 8c0:	00892021 	addu	a0,a0,t1
 8c4:	8c840000 	lw	a0,0(a0)
 8c8:	00045900 	sll	t3,a0,0x4
 8cc:	000b6702 	srl	t4,t3,0x1c
 8d0:	000c6880 	sll	t5,t4,0x2
 8d4:	01cd7021 	addu	t6,t6,t5
 8d8:	8dce0000 	lw	t6,0(t6)
 8dc:	00815024 	and	t2,a0,at
 8e0:	3c018000 	lui	at,0x8000
 8e4:	014e7821 	addu	t7,t2,t6
 8e8:	01e1c021 	addu	t8,t7,at
 8ec:	ac780004 	sw	t8,4(v1)
 8f0:	92070166 	lbu	a3,358(s0)
 8f4:	8e060184 	lw	a2,388(s0)
 8f8:	8e050168 	lw	a1,360(s0)
 8fc:	afb00018 	sw	s0,24(sp)
 900:	afa00014 	sw	zero,20(sp)
 904:	afa00010 	sw	zero,16(sp)
 908:	0c000000 	jal	0 <func_80A87800>
 90c:	8fa4005c 	lw	a0,92(sp)
 910:	8fb9005c 	lw	t9,92(sp)
 914:	3c060000 	lui	a2,0x0
 918:	24c60000 	addiu	a2,a2,0
 91c:	27a4003c 	addiu	a0,sp,60
 920:	24070382 	li	a3,898
 924:	0c000000 	jal	0 <func_80A87800>
 928:	8f250000 	lw	a1,0(t9)
 92c:	8fbf002c 	lw	ra,44(sp)
 930:	8fb00028 	lw	s0,40(sp)
 934:	27bd0058 	addiu	sp,sp,88
 938:	03e00008 	jr	ra
 93c:	00000000 	nop
