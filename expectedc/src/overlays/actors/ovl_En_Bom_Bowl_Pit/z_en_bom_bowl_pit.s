
build/src/overlays/actors/ovl_En_Bom_Bowl_Pit/z_en_bom_bowl_pit.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBomBowlPit_Init>:
   0:	3c0e0000 	lui	t6,0x0
   4:	afa50004 	sw	a1,4(sp)
   8:	25ce0000 	addiu	t6,t6,0
   c:	03e00008 	jr	ra
  10:	ac8e014c 	sw	t6,332(a0)

00000014 <EnBomBowlPit_Destroy>:
  14:	afa40000 	sw	a0,0(sp)
  18:	03e00008 	jr	ra
  1c:	afa50004 	sw	a1,4(sp)

00000020 <func_809C4E60>:
  20:	afa50004 	sw	a1,4(sp)
  24:	848e015c 	lh	t6,348(a0)
  28:	3c180000 	lui	t8,0x0
  2c:	300f00ff 	andi	t7,zero,0xff
  30:	11c00004 	beqz	t6,44 <func_809C4E60+0x24>
  34:	27180000 	addiu	t8,t8,0
  38:	a0800164 	sb	zero,356(a0)
  3c:	a48f015c 	sh	t7,348(a0)
  40:	ac98014c 	sw	t8,332(a0)
  44:	03e00008 	jr	ra
  48:	00000000 	nop

0000004c <func_809C4E8C>:
  4c:	27bdffd8 	addiu	sp,sp,-40
  50:	afbf001c 	sw	ra,28(sp)
  54:	afb10018 	sw	s1,24(sp)
  58:	afb00014 	sw	s0,20(sp)
  5c:	8cae0790 	lw	t6,1936(a1)
  60:	24010015 	li	at,21
  64:	00808025 	move	s0,a0
  68:	85cf0142 	lh	t7,322(t6)
  6c:	00a08825 	move	s1,a1
  70:	55e100b0 	bnel	t7,at,334 <func_809C4E8C+0x2e8>
  74:	8fbf001c 	lw	ra,28(sp)
  78:	8ca31c4c 	lw	v1,7244(a1)
  7c:	3c014220 	lui	at,0x4220
  80:	240400da 	li	a0,218
  84:	106000aa 	beqz	v1,330 <func_809C4E8C+0x2e4>
  88:	3c020000 	lui	v0,0x0
  8c:	44818000 	mtc1	at,$f16
  90:	24420000 	addiu	v0,v0,0
  94:	10700004 	beq	v1,s0,a8 <func_809C4E8C+0x5c>
  98:	00000000 	nop
  9c:	84780000 	lh	t8,0(v1)
  a0:	50980004 	beql	a0,t8,b4 <func_809C4E8C+0x68>
  a4:	c4640024 	lwc1	$f4,36(v1)
  a8:	1000009f 	b	328 <func_809C4E8C+0x2dc>
  ac:	8c630124 	lw	v1,292(v1)
  b0:	c4640024 	lwc1	$f4,36(v1)
  b4:	c6060024 	lwc1	$f6,36(s0)
  b8:	c4680028 	lwc1	$f8,40(v1)
  bc:	c60a0028 	lwc1	$f10,40(s0)
  c0:	46062081 	sub.s	$f2,$f4,$f6
  c4:	c604002c 	lwc1	$f4,44(s0)
  c8:	c472002c 	lwc1	$f18,44(v1)
  cc:	460a4301 	sub.s	$f12,$f8,$f10
  d0:	46001005 	abs.s	$f0,$f2
  d4:	46049381 	sub.s	$f14,$f18,$f4
  d8:	4610003c 	c.lt.s	$f0,$f16
  dc:	00000000 	nop
  e0:	45030006 	bc1tl	fc <func_809C4E8C+0xb0>
  e4:	46006005 	abs.s	$f0,$f12
  e8:	8c590000 	lw	t9,0(v0)
  ec:	872812d8 	lh	t0,4824(t9)
  f0:	5100008d 	beqzl	t0,328 <func_809C4E8C+0x2dc>
  f4:	8c630124 	lw	v1,292(v1)
  f8:	46006005 	abs.s	$f0,$f12
  fc:	4610003c 	c.lt.s	$f0,$f16
 100:	00000000 	nop
 104:	45030006 	bc1tl	120 <func_809C4E8C+0xd4>
 108:	46007005 	abs.s	$f0,$f14
 10c:	8c490000 	lw	t1,0(v0)
 110:	852a12d8 	lh	t2,4824(t1)
 114:	51400084 	beqzl	t2,328 <func_809C4E8C+0x2dc>
 118:	8c630124 	lw	v1,292(v1)
 11c:	46007005 	abs.s	$f0,$f14
 120:	4610003c 	c.lt.s	$f0,$f16
 124:	00000000 	nop
 128:	45030006 	bc1tl	144 <func_809C4E8C+0xf8>
 12c:	02202025 	move	a0,s1
 130:	8c4b0000 	lw	t3,0(v0)
 134:	856c12d8 	lh	t4,4824(t3)
 138:	5180007b 	beqzl	t4,328 <func_809C4E8C+0x2dc>
 13c:	8c630124 	lw	v1,292(v1)
 140:	02202025 	move	a0,s1
 144:	00002825 	move	a1,zero
 148:	24060008 	li	a2,8
 14c:	0c000000 	jal	0 <EnBomBowlPit_Init>
 150:	afa30024 	sw	v1,36(sp)
 154:	8fa30024 	lw	v1,36(sp)
 158:	240d0001 	li	t5,1
 15c:	02202025 	move	a0,s1
 160:	0c000000 	jal	0 <EnBomBowlPit_Init>
 164:	a46d0150 	sh	t5,336(v1)
 168:	a6020152 	sh	v0,338(s0)
 16c:	02202025 	move	a0,s1
 170:	00002825 	move	a1,zero
 174:	0c000000 	jal	0 <EnBomBowlPit_Init>
 178:	24060001 	li	a2,1
 17c:	02202025 	move	a0,s1
 180:	86050152 	lh	a1,338(s0)
 184:	0c000000 	jal	0 <EnBomBowlPit_Init>
 188:	24060007 	li	a2,7
 18c:	3c010000 	lui	at,0x0
 190:	c4220000 	lwc1	$f2,0(at)
 194:	3c0141a0 	lui	at,0x41a0
 198:	44816000 	mtc1	at,$f12
 19c:	e60201d0 	swc1	$f2,464(s0)
 1a0:	e60201cc 	swc1	$f2,460(s0)
 1a4:	e60201c8 	swc1	$f2,456(s0)
 1a8:	e60201ac 	swc1	$f2,428(s0)
 1ac:	e60201a8 	swc1	$f2,424(s0)
 1b0:	e60201a4 	swc1	$f2,420(s0)
 1b4:	c62000ec 	lwc1	$f0,236(s1)
 1b8:	3c0142c8 	lui	at,0x42c8
 1bc:	44813000 	mtc1	at,$f6
 1c0:	e6000168 	swc1	$f0,360(s0)
 1c4:	e6000180 	swc1	$f0,384(s0)
 1c8:	c62000f0 	lwc1	$f0,240(s1)
 1cc:	3c01c448 	lui	at,0xc448
 1d0:	44814000 	mtc1	at,$f8
 1d4:	e600016c 	swc1	$f0,364(s0)
 1d8:	e6000184 	swc1	$f0,388(s0)
 1dc:	c62000f4 	lwc1	$f0,244(s1)
 1e0:	3c010000 	lui	at,0x0
 1e4:	02202025 	move	a0,s1
 1e8:	e6000170 	swc1	$f0,368(s0)
 1ec:	e6000188 	swc1	$f0,392(s0)
 1f0:	c62000e0 	lwc1	$f0,224(s1)
 1f4:	86050152 	lh	a1,338(s0)
 1f8:	26060180 	addiu	a2,s0,384
 1fc:	e6000174 	swc1	$f0,372(s0)
 200:	e600018c 	swc1	$f0,396(s0)
 204:	c62000e4 	lwc1	$f0,228(s1)
 208:	c60a018c 	lwc1	$f10,396(s0)
 20c:	2607018c 	addiu	a3,s0,396
 210:	e6000178 	swc1	$f0,376(s0)
 214:	e6000190 	swc1	$f0,400(s0)
 218:	c62000e8 	lwc1	$f0,232(s1)
 21c:	e60c01bc 	swc1	$f12,444(s0)
 220:	e60601c0 	swc1	$f6,448(s0)
 224:	e600017c 	swc1	$f0,380(s0)
 228:	e6000194 	swc1	$f0,404(s0)
 22c:	460c5001 	sub.s	$f0,$f10,$f12
 230:	e60801c4 	swc1	$f8,452(s0)
 234:	c4220000 	lwc1	$f2,0(at)
 238:	3c014248 	lui	at,0x4248
 23c:	44817000 	mtc1	at,$f14
 240:	c6040190 	lwc1	$f4,400(s0)
 244:	46000005 	abs.s	$f0,$f0
 248:	3c010000 	lui	at,0x0
 24c:	46020482 	mul.s	$f18,$f0,$f2
 250:	460e2001 	sub.s	$f0,$f4,$f14
 254:	c4300000 	lwc1	$f16,0(at)
 258:	c6080194 	lwc1	$f8,404(s0)
 25c:	c60401bc 	lwc1	$f4,444(s0)
 260:	e60c0198 	swc1	$f12,408(s0)
 264:	46000005 	abs.s	$f0,$f0
 268:	e61201b0 	swc1	$f18,432(s0)
 26c:	46020182 	mul.s	$f6,$f0,$f2
 270:	46104001 	sub.s	$f0,$f8,$f16
 274:	c6120180 	lwc1	$f18,384(s0)
 278:	c6080184 	lwc1	$f8,388(s0)
 27c:	e60e019c 	swc1	$f14,412(s0)
 280:	e61001a0 	swc1	$f16,416(s0)
 284:	46000005 	abs.s	$f0,$f0
 288:	e60601b4 	swc1	$f6,436(s0)
 28c:	46020282 	mul.s	$f10,$f0,$f2
 290:	46049001 	sub.s	$f0,$f18,$f4
 294:	c6040188 	lwc1	$f4,392(s0)
 298:	46000005 	abs.s	$f0,$f0
 29c:	e60a01b8 	swc1	$f10,440(s0)
 2a0:	46020182 	mul.s	$f6,$f0,$f2
 2a4:	c60a01c0 	lwc1	$f10,448(s0)
 2a8:	460a4001 	sub.s	$f0,$f8,$f10
 2ac:	e60601d4 	swc1	$f6,468(s0)
 2b0:	c60601c4 	lwc1	$f6,452(s0)
 2b4:	46000005 	abs.s	$f0,$f0
 2b8:	46020482 	mul.s	$f18,$f0,$f2
 2bc:	46062001 	sub.s	$f0,$f4,$f6
 2c0:	46000005 	abs.s	$f0,$f0
 2c4:	e61201d8 	swc1	$f18,472(s0)
 2c8:	46020202 	mul.s	$f8,$f0,$f2
 2cc:	0c000000 	jal	0 <EnBomBowlPit_Init>
 2d0:	e60801dc 	swc1	$f8,476(s0)
 2d4:	240e000f 	li	t6,15
 2d8:	a60e010e 	sh	t6,270(s0)
 2dc:	31c5ffff 	andi	a1,t6,0xffff
 2e0:	02202025 	move	a0,s1
 2e4:	0c000000 	jal	0 <EnBomBowlPit_Init>
 2e8:	00003025 	move	a2,zero
 2ec:	240f0005 	li	t7,5
 2f0:	a60f0154 	sh	t7,340(s0)
 2f4:	0c000000 	jal	0 <EnBomBowlPit_Init>
 2f8:	240428d3 	li	a0,10451
 2fc:	02202025 	move	a0,s1
 300:	00002825 	move	a1,zero
 304:	0c000000 	jal	0 <EnBomBowlPit_Init>
 308:	24060008 	li	a2,8
 30c:	3c190000 	lui	t9,0x0
 310:	24180001 	li	t8,1
 314:	27390000 	addiu	t9,t9,0
 318:	a2180164 	sb	t8,356(s0)
 31c:	10000004 	b	330 <func_809C4E8C+0x2e4>
 320:	ae19014c 	sw	t9,332(s0)
 324:	8c630124 	lw	v1,292(v1)
 328:	1460ff5a 	bnez	v1,94 <func_809C4E8C+0x48>
 32c:	00000000 	nop
 330:	8fbf001c 	lw	ra,28(sp)
 334:	8fb00014 	lw	s0,20(sp)
 338:	8fb10018 	lw	s1,24(sp)
 33c:	03e00008 	jr	ra
 340:	27bd0028 	addiu	sp,sp,40

00000344 <func_809C5184>:
 344:	27bdffd8 	addiu	sp,sp,-40
 348:	afbf001c 	sw	ra,28(sp)
 34c:	afb00018 	sw	s0,24(sp)
 350:	afa5002c 	sw	a1,44(sp)
 354:	848e0152 	lh	t6,338(a0)
 358:	00808025 	move	s0,a0
 35c:	24840180 	addiu	a0,a0,384
 360:	11c00020 	beqz	t6,3e4 <func_809C5184+0xa0>
 364:	afae0024 	sw	t6,36(sp)
 368:	8e0501bc 	lw	a1,444(s0)
 36c:	8e0601c8 	lw	a2,456(s0)
 370:	0c000000 	jal	0 <EnBomBowlPit_Init>
 374:	8e0701d4 	lw	a3,468(s0)
 378:	26040184 	addiu	a0,s0,388
 37c:	8e0501c0 	lw	a1,448(s0)
 380:	8e0601cc 	lw	a2,460(s0)
 384:	0c000000 	jal	0 <EnBomBowlPit_Init>
 388:	8e0701d8 	lw	a3,472(s0)
 38c:	26040188 	addiu	a0,s0,392
 390:	8e0501c4 	lw	a1,452(s0)
 394:	8e0601d0 	lw	a2,464(s0)
 398:	0c000000 	jal	0 <EnBomBowlPit_Init>
 39c:	8e0701dc 	lw	a3,476(s0)
 3a0:	2604018c 	addiu	a0,s0,396
 3a4:	8e050198 	lw	a1,408(s0)
 3a8:	8e0601a4 	lw	a2,420(s0)
 3ac:	0c000000 	jal	0 <EnBomBowlPit_Init>
 3b0:	8e0701b0 	lw	a3,432(s0)
 3b4:	26040190 	addiu	a0,s0,400
 3b8:	8e05019c 	lw	a1,412(s0)
 3bc:	8e0601a8 	lw	a2,424(s0)
 3c0:	0c000000 	jal	0 <EnBomBowlPit_Init>
 3c4:	8e0701b4 	lw	a3,436(s0)
 3c8:	26040194 	addiu	a0,s0,404
 3cc:	8e0501a0 	lw	a1,416(s0)
 3d0:	8e0601ac 	lw	a2,428(s0)
 3d4:	0c000000 	jal	0 <EnBomBowlPit_Init>
 3d8:	8e0701b8 	lw	a3,440(s0)
 3dc:	86180152 	lh	t8,338(s0)
 3e0:	afb80024 	sw	t8,36(sp)
 3e4:	8fa4002c 	lw	a0,44(sp)
 3e8:	87a50026 	lh	a1,38(sp)
 3ec:	26060180 	addiu	a2,s0,384
 3f0:	0c000000 	jal	0 <EnBomBowlPit_Init>
 3f4:	2607018c 	addiu	a3,s0,396
 3f8:	8fa4002c 	lw	a0,44(sp)
 3fc:	0c000000 	jal	0 <EnBomBowlPit_Init>
 400:	248420d8 	addiu	a0,a0,8408
 404:	86190154 	lh	t9,340(s0)
 408:	57220008 	bnel	t9,v0,42c <func_809C5184+0xe8>
 40c:	c604018c 	lwc1	$f4,396(s0)
 410:	0c000000 	jal	0 <EnBomBowlPit_Init>
 414:	8fa4002c 	lw	a0,44(sp)
 418:	50400004 	beqzl	v0,42c <func_809C5184+0xe8>
 41c:	c604018c 	lwc1	$f4,396(s0)
 420:	0c000000 	jal	0 <EnBomBowlPit_Init>
 424:	8fa4002c 	lw	a0,44(sp)
 428:	c604018c 	lwc1	$f4,396(s0)
 42c:	c6060198 	lwc1	$f6,408(s0)
 430:	3c0140a0 	lui	at,0x40a0
 434:	44811000 	mtc1	at,$f2
 438:	46062001 	sub.s	$f0,$f4,$f6
 43c:	46000005 	abs.s	$f0,$f0
 440:	4602003c 	c.lt.s	$f0,$f2
 444:	00000000 	nop
 448:	45020031 	bc1fl	510 <func_809C5184+0x1cc>
 44c:	8fbf001c 	lw	ra,28(sp)
 450:	c6080190 	lwc1	$f8,400(s0)
 454:	c60a019c 	lwc1	$f10,412(s0)
 458:	460a4001 	sub.s	$f0,$f8,$f10
 45c:	46000005 	abs.s	$f0,$f0
 460:	4602003c 	c.lt.s	$f0,$f2
 464:	00000000 	nop
 468:	45020029 	bc1fl	510 <func_809C5184+0x1cc>
 46c:	8fbf001c 	lw	ra,28(sp)
 470:	c6100194 	lwc1	$f16,404(s0)
 474:	c61201a0 	lwc1	$f18,416(s0)
 478:	46128001 	sub.s	$f0,$f16,$f18
 47c:	46000005 	abs.s	$f0,$f0
 480:	4602003c 	c.lt.s	$f0,$f2
 484:	00000000 	nop
 488:	45020021 	bc1fl	510 <func_809C5184+0x1cc>
 48c:	8fbf001c 	lw	ra,28(sp)
 490:	c6040180 	lwc1	$f4,384(s0)
 494:	c60601bc 	lwc1	$f6,444(s0)
 498:	46062001 	sub.s	$f0,$f4,$f6
 49c:	46000005 	abs.s	$f0,$f0
 4a0:	4602003c 	c.lt.s	$f0,$f2
 4a4:	00000000 	nop
 4a8:	45020019 	bc1fl	510 <func_809C5184+0x1cc>
 4ac:	8fbf001c 	lw	ra,28(sp)
 4b0:	c6080184 	lwc1	$f8,388(s0)
 4b4:	c60a01c0 	lwc1	$f10,448(s0)
 4b8:	460a4001 	sub.s	$f0,$f8,$f10
 4bc:	46000005 	abs.s	$f0,$f0
 4c0:	4602003c 	c.lt.s	$f0,$f2
 4c4:	00000000 	nop
 4c8:	45020011 	bc1fl	510 <func_809C5184+0x1cc>
 4cc:	8fbf001c 	lw	ra,28(sp)
 4d0:	c6100188 	lwc1	$f16,392(s0)
 4d4:	c61201c4 	lwc1	$f18,452(s0)
 4d8:	46128001 	sub.s	$f0,$f16,$f18
 4dc:	46000005 	abs.s	$f0,$f0
 4e0:	4602003c 	c.lt.s	$f0,$f2
 4e4:	00000000 	nop
 4e8:	45020009 	bc1fl	510 <func_809C5184+0x1cc>
 4ec:	8fbf001c 	lw	ra,28(sp)
 4f0:	0c000000 	jal	0 <EnBomBowlPit_Init>
 4f4:	8fa4002c 	lw	a0,44(sp)
 4f8:	3c090000 	lui	t1,0x0
 4fc:	2408001e 	li	t0,30
 500:	25290000 	addiu	t1,t1,0
 504:	a6080158 	sh	t0,344(s0)
 508:	ae09014c 	sw	t1,332(s0)
 50c:	8fbf001c 	lw	ra,28(sp)
 510:	8fb00018 	lw	s0,24(sp)
 514:	27bd0028 	addiu	sp,sp,40
 518:	03e00008 	jr	ra
 51c:	00000000 	nop

00000520 <func_809C5360>:
 520:	27bdffc0 	addiu	sp,sp,-64
 524:	afbf003c 	sw	ra,60(sp)
 528:	afb00038 	sw	s0,56(sp)
 52c:	848e0158 	lh	t6,344(a0)
 530:	00808025 	move	s0,a0
 534:	00a03025 	move	a2,a1
 538:	55c00019 	bnezl	t6,5a0 <func_809C5360+0x80>
 53c:	8fbf003c 	lw	ra,60(sp)
 540:	c6040024 	lwc1	$f4,36(s0)
 544:	3c01428c 	lui	at,0x428c
 548:	44815000 	mtc1	at,$f10
 54c:	e7a40010 	swc1	$f4,16(sp)
 550:	c6060028 	lwc1	$f6,40(s0)
 554:	24a41c24 	addiu	a0,a1,7204
 558:	02002825 	move	a1,s0
 55c:	e7a60014 	swc1	$f6,20(sp)
 560:	c608002c 	lwc1	$f8,44(s0)
 564:	afa00024 	sw	zero,36(sp)
 568:	afa00020 	sw	zero,32(sp)
 56c:	460a4401 	sub.s	$f16,$f8,$f10
 570:	afa0001c 	sw	zero,28(sp)
 574:	24070168 	li	a3,360
 578:	e7b00018 	swc1	$f16,24(sp)
 57c:	860f015a 	lh	t7,346(s0)
 580:	0c000000 	jal	0 <EnBomBowlPit_Init>
 584:	afaf0028 	sw	t7,40(sp)
 588:	10400004 	beqz	v0,59c <func_809C5360+0x7c>
 58c:	ae0201e0 	sw	v0,480(s0)
 590:	3c180000 	lui	t8,0x0
 594:	27180000 	addiu	t8,t8,0
 598:	ae18014c 	sw	t8,332(s0)
 59c:	8fbf003c 	lw	ra,60(sp)
 5a0:	8fb00038 	lw	s0,56(sp)
 5a4:	27bd0040 	addiu	sp,sp,64
 5a8:	03e00008 	jr	ra
 5ac:	00000000 	nop

000005b0 <func_809C53F0>:
 5b0:	27bdffe8 	addiu	sp,sp,-24
 5b4:	afbf0014 	sw	ra,20(sp)
 5b8:	afa5001c 	sw	a1,28(sp)
 5bc:	848e0156 	lh	t6,342(a0)
 5c0:	00803025 	move	a2,a0
 5c4:	51c00025 	beqzl	t6,65c <func_809C53F0+0xac>
 5c8:	8fbf0014 	lw	ra,20(sp)
 5cc:	8482015a 	lh	v0,346(a0)
 5d0:	24010001 	li	at,1
 5d4:	10400005 	beqz	v0,5ec <func_809C53F0+0x3c>
 5d8:	00000000 	nop
 5dc:	10410009 	beq	v0,at,604 <func_809C53F0+0x54>
 5e0:	00000000 	nop
 5e4:	1000000d 	b	61c <func_809C53F0+0x6c>
 5e8:	84c50152 	lh	a1,338(a2)
 5ec:	3c020000 	lui	v0,0x0
 5f0:	24420000 	addiu	v0,v0,0
 5f4:	944f0ef2 	lhu	t7,3826(v0)
 5f8:	35f80002 	ori	t8,t7,0x2
 5fc:	10000006 	b	618 <func_809C53F0+0x68>
 600:	a4580ef2 	sh	t8,3826(v0)
 604:	3c020000 	lui	v0,0x0
 608:	24420000 	addiu	v0,v0,0
 60c:	94590ef2 	lhu	t9,3826(v0)
 610:	37280004 	ori	t0,t9,0x4
 614:	a4480ef2 	sh	t0,3826(v0)
 618:	84c50152 	lh	a1,338(a2)
 61c:	afa60018 	sw	a2,24(sp)
 620:	0c000000 	jal	0 <EnBomBowlPit_Init>
 624:	8fa4001c 	lw	a0,28(sp)
 628:	8fa4001c 	lw	a0,28(sp)
 62c:	00002825 	move	a1,zero
 630:	0c000000 	jal	0 <EnBomBowlPit_Init>
 634:	24060007 	li	a2,7
 638:	8fa4001c 	lw	a0,28(sp)
 63c:	00002825 	move	a1,zero
 640:	0c000000 	jal	0 <EnBomBowlPit_Init>
 644:	24060008 	li	a2,8
 648:	8faa0018 	lw	t2,24(sp)
 64c:	3c090000 	lui	t1,0x0
 650:	25290000 	addiu	t1,t1,0
 654:	ad49014c 	sw	t1,332(t2)
 658:	8fbf0014 	lw	ra,20(sp)
 65c:	27bd0018 	addiu	sp,sp,24
 660:	03e00008 	jr	ra
 664:	00000000 	nop

00000668 <func_809C54A8>:
 668:	27bdffd0 	addiu	sp,sp,-48
 66c:	afb00020 	sw	s0,32(sp)
 670:	afbf0024 	sw	ra,36(sp)
 674:	8ca21c44 	lw	v0,7236(a1)
 678:	00808025 	move	s0,a0
 67c:	00a03825 	move	a3,a1
 680:	00a02025 	move	a0,a1
 684:	00002825 	move	a1,zero
 688:	afa70034 	sw	a3,52(sp)
 68c:	24060007 	li	a2,7
 690:	0c000000 	jal	0 <EnBomBowlPit_Init>
 694:	afa2002c 	sw	v0,44(sp)
 698:	860e015a 	lh	t6,346(s0)
 69c:	3c180000 	lui	t8,0x0
 6a0:	8fa2002c 	lw	v0,44(sp)
 6a4:	000e7880 	sll	t7,t6,0x2
 6a8:	030fc021 	addu	t8,t8,t7
 6ac:	8f180000 	lw	t8,0(t8)
 6b0:	24010033 	li	at,51
 6b4:	02002025 	move	a0,s0
 6b8:	17010012 	bne	t8,at,704 <func_809C54A8+0x9c>
 6bc:	ae180160 	sw	t8,352(s0)
 6c0:	3c080000 	lui	t0,0x0
 6c4:	3c090000 	lui	t1,0x0
 6c8:	8d290004 	lw	t1,4(t1)
 6cc:	8d0800a0 	lw	t0,160(t0)
 6d0:	3c0b0000 	lui	t3,0x0
 6d4:	916b0001 	lbu	t3,1(t3)
 6d8:	01095024 	and	t2,t0,t1
 6dc:	3c0e0000 	lui	t6,0x0
 6e0:	016a6007 	srav	t4,t2,t3
 6e4:	000c6840 	sll	t5,t4,0x1
 6e8:	01cd7021 	addu	t6,t6,t5
 6ec:	95ce0008 	lhu	t6,8(t6)
 6f0:	2401001e 	li	at,30
 6f4:	240f0034 	li	t7,52
 6f8:	55c10003 	bnel	t6,at,708 <func_809C54A8+0xa0>
 6fc:	8c58067c 	lw	t8,1660(v0)
 700:	ae0f0160 	sw	t7,352(s0)
 704:	8c58067c 	lw	t8,1660(v0)
 708:	3c01dfff 	lui	at,0xdfff
 70c:	3421ffff 	ori	at,at,0xffff
 710:	0301c824 	and	t9,t8,at
 714:	ac59067c 	sw	t9,1660(v0)
 718:	3c01447a 	lui	at,0x447a
 71c:	44812000 	mtc1	at,$f4
 720:	ae000118 	sw	zero,280(s0)
 724:	8e060160 	lw	a2,352(s0)
 728:	afa2002c 	sw	v0,44(sp)
 72c:	8fa50034 	lw	a1,52(sp)
 730:	3c0744fa 	lui	a3,0x44fa
 734:	0c000000 	jal	0 <EnBomBowlPit_Init>
 738:	e7a40010 	swc1	$f4,16(sp)
 73c:	8fa2002c 	lw	v0,44(sp)
 740:	3c012000 	lui	at,0x2000
 744:	3c0a0000 	lui	t2,0x0
 748:	8c48067c 	lw	t0,1660(v0)
 74c:	254a0000 	addiu	t2,t2,0
 750:	01014825 	or	t1,t0,at
 754:	ac49067c 	sw	t1,1660(v0)
 758:	ae0a014c 	sw	t2,332(s0)
 75c:	8fbf0024 	lw	ra,36(sp)
 760:	8fb00020 	lw	s0,32(sp)
 764:	27bd0030 	addiu	sp,sp,48
 768:	03e00008 	jr	ra
 76c:	00000000 	nop

00000770 <func_809C55B0>:
 770:	27bdffe0 	addiu	sp,sp,-32
 774:	afbf001c 	sw	ra,28(sp)
 778:	afa50024 	sw	a1,36(sp)
 77c:	0c000000 	jal	0 <EnBomBowlPit_Init>
 780:	afa40020 	sw	a0,32(sp)
 784:	10400005 	beqz	v0,79c <func_809C55B0+0x2c>
 788:	8fa40020 	lw	a0,32(sp)
 78c:	3c0e0000 	lui	t6,0x0
 790:	25ce0000 	addiu	t6,t6,0
 794:	10000008 	b	7b8 <func_809C55B0+0x48>
 798:	ac8e014c 	sw	t6,332(a0)
 79c:	3c01447a 	lui	at,0x447a
 7a0:	44812000 	mtc1	at,$f4
 7a4:	8c860160 	lw	a2,352(a0)
 7a8:	8fa50024 	lw	a1,36(sp)
 7ac:	3c0744fa 	lui	a3,0x44fa
 7b0:	0c000000 	jal	0 <EnBomBowlPit_Init>
 7b4:	e7a40010 	swc1	$f4,16(sp)
 7b8:	8fbf001c 	lw	ra,28(sp)
 7bc:	27bd0020 	addiu	sp,sp,32
 7c0:	03e00008 	jr	ra
 7c4:	00000000 	nop

000007c8 <func_809C5608>:
 7c8:	27bdffe8 	addiu	sp,sp,-24
 7cc:	afbf0014 	sw	ra,20(sp)
 7d0:	afa40018 	sw	a0,24(sp)
 7d4:	afa5001c 	sw	a1,28(sp)
 7d8:	0c000000 	jal	0 <EnBomBowlPit_Init>
 7dc:	24a420d8 	addiu	a0,a1,8408
 7e0:	24010006 	li	at,6
 7e4:	54410019 	bnel	v0,at,84c <func_809C5608+0x84>
 7e8:	8fbf0014 	lw	ra,20(sp)
 7ec:	0c000000 	jal	0 <EnBomBowlPit_Init>
 7f0:	8fa4001c 	lw	a0,28(sp)
 7f4:	10400014 	beqz	v0,848 <func_809C5608+0x80>
 7f8:	3c040000 	lui	a0,0x0
 7fc:	0c000000 	jal	0 <EnBomBowlPit_Init>
 800:	24840000 	addiu	a0,a0,0
 804:	8fa20018 	lw	v0,24(sp)
 808:	2401003e 	li	at,62
 80c:	3c040000 	lui	a0,0x0
 810:	8c4e0160 	lw	t6,352(v0)
 814:	240f0140 	li	t7,320
 818:	24840000 	addiu	a0,a0,0
 81c:	15c10004 	bne	t6,at,830 <func_809C5608+0x68>
 820:	3c010000 	lui	at,0x0
 824:	0c000000 	jal	0 <EnBomBowlPit_Init>
 828:	a42f1424 	sh	t7,5156(at)
 82c:	8fa20018 	lw	v0,24(sp)
 830:	3c190000 	lui	t9,0x0
 834:	24180002 	li	t8,2
 838:	27390000 	addiu	t9,t9,0
 83c:	a4400156 	sh	zero,342(v0)
 840:	a0580164 	sb	t8,356(v0)
 844:	ac59014c 	sw	t9,332(v0)
 848:	8fbf0014 	lw	ra,20(sp)
 84c:	27bd0018 	addiu	sp,sp,24
 850:	03e00008 	jr	ra
 854:	00000000 	nop

00000858 <EnBomBowlPit_Update>:
 858:	27bdffe8 	addiu	sp,sp,-24
 85c:	afbf0014 	sw	ra,20(sp)
 860:	afa40018 	sw	a0,24(sp)
 864:	8c99014c 	lw	t9,332(a0)
 868:	0320f809 	jalr	t9
 86c:	00000000 	nop
 870:	8fa40018 	lw	a0,24(sp)
 874:	84820158 	lh	v0,344(a0)
 878:	10400002 	beqz	v0,884 <EnBomBowlPit_Update+0x2c>
 87c:	244effff 	addiu	t6,v0,-1
 880:	a48e0158 	sh	t6,344(a0)
 884:	8fbf0014 	lw	ra,20(sp)
 888:	27bd0018 	addiu	sp,sp,24
 88c:	03e00008 	jr	ra
 890:	00000000 	nop
	...
