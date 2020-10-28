
build/src/overlays/actors/ovl_En_Syateki_Man/z_en_syateki_man.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSyatekiMan_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb00028 	sw	s0,40(sp)
   8:	00808025 	move	s0,a0
   c:	afbf002c 	sw	ra,44(sp)
  10:	3c040000 	lui	a0,0x0
  14:	afa50034 	sw	a1,52(sp)
  18:	0c000000 	jal	0 <EnSyatekiMan_Init>
  1c:	24840000 	addiu	a0,a0,0
  20:	3c040000 	lui	a0,0x0
  24:	0c000000 	jal	0 <EnSyatekiMan_Init>
  28:	24840000 	addiu	a0,a0,0
  2c:	240e0001 	li	t6,1
  30:	3c053c23 	lui	a1,0x3c23
  34:	a20e001f 	sb	t6,31(s0)
  38:	34a5d70a 	ori	a1,a1,0xd70a
  3c:	0c000000 	jal	0 <EnSyatekiMan_Init>
  40:	02002025 	move	a0,s0
  44:	3c060601 	lui	a2,0x601
  48:	3c070600 	lui	a3,0x600
  4c:	260f0190 	addiu	t7,s0,400
  50:	261801c6 	addiu	t8,s0,454
  54:	24190009 	li	t9,9
  58:	afb90018 	sw	t9,24(sp)
  5c:	afb80014 	sw	t8,20(sp)
  60:	afaf0010 	sw	t7,16(sp)
  64:	24e70338 	addiu	a3,a3,824
  68:	24c69b38 	addiu	a2,a2,-25800
  6c:	8fa40034 	lw	a0,52(sp)
  70:	0c000000 	jal	0 <EnSyatekiMan_Init>
  74:	2605014c 	addiu	a1,s0,332
  78:	3c080000 	lui	t0,0x0
  7c:	8d080004 	lw	t0,4(t0)
  80:	3c0b0000 	lui	t3,0x0
  84:	240a0014 	li	t2,20
  88:	11000003 	beqz	t0,98 <EnSyatekiMan_Init+0x98>
  8c:	256b0000 	addiu	t3,t3,0
  90:	24090014 	li	t1,20
  94:	a6090204 	sh	t1,516(s0)
  98:	3c0d0000 	lui	t5,0x0
  9c:	240c0064 	li	t4,100
  a0:	25ad0000 	addiu	t5,t5,0
  a4:	a60a020e 	sh	t2,526(s0)
  a8:	a600020c 	sh	zero,524(s0)
  ac:	ae0b0224 	sw	t3,548(s0)
  b0:	a60c00a8 	sh	t4,168(s0)
  b4:	ae0d01fc 	sw	t5,508(s0)
  b8:	8fbf002c 	lw	ra,44(sp)
  bc:	8fb00028 	lw	s0,40(sp)
  c0:	27bd0030 	addiu	sp,sp,48
  c4:	03e00008 	jr	ra
  c8:	00000000 	nop

000000cc <EnSyatekiMan_Destroy>:
  cc:	afa40000 	sw	a0,0(sp)
  d0:	03e00008 	jr	ra
  d4:	afa50004 	sw	a1,4(sp)

000000d8 <func_80B10948>:
  d8:	27bdffd8 	addiu	sp,sp,-40
  dc:	afa40028 	sw	a0,40(sp)
  e0:	afbf0024 	sw	ra,36(sp)
  e4:	3c040600 	lui	a0,0x600
  e8:	afa5002c 	sw	a1,44(sp)
  ec:	0c000000 	jal	0 <EnSyatekiMan_Init>
  f0:	24840338 	addiu	a0,a0,824
  f4:	44822000 	mtc1	v0,$f4
  f8:	3c01c120 	lui	at,0xc120
  fc:	44819000 	mtc1	at,$f18
 100:	468021a0 	cvt.s.w	$f6,$f4
 104:	8fa40028 	lw	a0,40(sp)
 108:	3c050600 	lui	a1,0x600
 10c:	24a50338 	addiu	a1,a1,824
 110:	3c063f80 	lui	a2,0x3f80
 114:	24070000 	li	a3,0
 118:	4600320d 	trunc.w.s	$f8,$f6
 11c:	afa00014 	sw	zero,20(sp)
 120:	e7b20018 	swc1	$f18,24(sp)
 124:	2484014c 	addiu	a0,a0,332
 128:	440f4000 	mfc1	t7,$f8
 12c:	00000000 	nop
 130:	000fc400 	sll	t8,t7,0x10
 134:	0018cc03 	sra	t9,t8,0x10
 138:	44995000 	mtc1	t9,$f10
 13c:	00000000 	nop
 140:	46805420 	cvt.s.w	$f16,$f10
 144:	0c000000 	jal	0 <EnSyatekiMan_Init>
 148:	e7b00010 	swc1	$f16,16(sp)
 14c:	8fa90028 	lw	t1,40(sp)
 150:	3c080000 	lui	t0,0x0
 154:	25080000 	addiu	t0,t0,0
 158:	ad2801fc 	sw	t0,508(t1)
 15c:	8fbf0024 	lw	ra,36(sp)
 160:	27bd0028 	addiu	sp,sp,40
 164:	03e00008 	jr	ra
 168:	00000000 	nop

0000016c <func_80B109DC>:
 16c:	afa50004 	sw	a1,4(sp)
 170:	848e0214 	lh	t6,532(a0)
 174:	24010004 	li	at,4
 178:	240f0003 	li	t7,3
 17c:	15c10002 	bne	t6,at,188 <func_80B109DC+0x1c>
 180:	3c180000 	lui	t8,0x0
 184:	a48f0210 	sh	t7,528(a0)
 188:	84820210 	lh	v0,528(a0)
 18c:	3c190000 	lui	t9,0x0
 190:	3c080000 	lui	t0,0x0
 194:	00021040 	sll	v0,v0,0x1
 198:	0302c021 	addu	t8,t8,v0
 19c:	87180000 	lh	t8,0(t8)
 1a0:	0322c821 	addu	t9,t9,v0
 1a4:	25080000 	addiu	t0,t0,0
 1a8:	a498010e 	sh	t8,270(a0)
 1ac:	87390000 	lh	t9,0(t9)
 1b0:	ac8801fc 	sw	t0,508(a0)
 1b4:	03e00008 	jr	ra
 1b8:	a4990212 	sh	t9,530(a0)

000001bc <func_80B10A2C>:
 1bc:	27bdffe8 	addiu	sp,sp,-24
 1c0:	afbf0014 	sw	ra,20(sp)
 1c4:	afa40018 	sw	a0,24(sp)
 1c8:	afa5001c 	sw	a1,28(sp)
 1cc:	0c000000 	jal	0 <EnSyatekiMan_Init>
 1d0:	2484014c 	addiu	a0,a0,332
 1d4:	8fa40018 	lw	a0,24(sp)
 1d8:	0c000000 	jal	0 <EnSyatekiMan_Init>
 1dc:	8fa5001c 	lw	a1,28(sp)
 1e0:	10400005 	beqz	v0,1f8 <func_80B10A2C+0x3c>
 1e4:	8fa40018 	lw	a0,24(sp)
 1e8:	3c0e0000 	lui	t6,0x0
 1ec:	25ce0000 	addiu	t6,t6,0
 1f0:	10000004 	b	204 <func_80B10A2C+0x48>
 1f4:	ac8e01fc 	sw	t6,508(a0)
 1f8:	8fa5001c 	lw	a1,28(sp)
 1fc:	0c000000 	jal	0 <EnSyatekiMan_Init>
 200:	3c0642c8 	lui	a2,0x42c8
 204:	8fbf0014 	lw	ra,20(sp)
 208:	27bd0018 	addiu	sp,sp,24
 20c:	03e00008 	jr	ra
 210:	00000000 	nop

00000214 <func_80B10A84>:
 214:	27bdffd8 	addiu	sp,sp,-40
 218:	afb00018 	sw	s0,24(sp)
 21c:	00808025 	move	s0,a0
 220:	afbf001c 	sw	ra,28(sp)
 224:	afa5002c 	sw	a1,44(sp)
 228:	2484014c 	addiu	a0,a0,332
 22c:	0c000000 	jal	0 <EnSyatekiMan_Init>
 230:	a7a00026 	sh	zero,38(sp)
 234:	920e021c 	lbu	t6,540(s0)
 238:	87a30026 	lh	v1,38(sp)
 23c:	8fb8002c 	lw	t8,44(sp)
 240:	11c00004 	beqz	t6,254 <func_80B10A84+0x40>
 244:	3c010001 	lui	at,0x1
 248:	240ffffe 	li	t7,-2
 24c:	00380821 	addu	at,at,t8
 250:	a02f1e5c 	sb	t7,7772(at)
 254:	8fa4002c 	lw	a0,44(sp)
 258:	a7a30026 	sh	v1,38(sp)
 25c:	0c000000 	jal	0 <EnSyatekiMan_Init>
 260:	248420d8 	addiu	a0,a0,8408
 264:	86190212 	lh	t9,530(s0)
 268:	87a30026 	lh	v1,38(sp)
 26c:	8fa4002c 	lw	a0,44(sp)
 270:	5722004e 	bnel	t9,v0,3ac <func_80B10A84+0x198>
 274:	8fbf001c 	lw	ra,28(sp)
 278:	0c000000 	jal	0 <EnSyatekiMan_Init>
 27c:	a7a30026 	sh	v1,38(sp)
 280:	10400049 	beqz	v0,3a8 <func_80B10A84+0x194>
 284:	87a30026 	lh	v1,38(sp)
 288:	86080210 	lh	t0,528(s0)
 28c:	8fa9002c 	lw	t1,44(sp)
 290:	3c020001 	lui	v0,0x1
 294:	1500002f 	bnez	t0,354 <func_80B10A84+0x140>
 298:	8fa4002c 	lw	a0,44(sp)
 29c:	00491021 	addu	v0,v0,t1
 2a0:	904204bd 	lbu	v0,1213(v0)
 2a4:	24010001 	li	at,1
 2a8:	3c0a0000 	lui	t2,0x0
 2ac:	10400005 	beqz	v0,2c4 <func_80B10A84+0xb0>
 2b0:	00000000 	nop
 2b4:	1041001b 	beq	v0,at,324 <func_80B10A84+0x110>
 2b8:	3c0f0000 	lui	t7,0x0
 2bc:	10000020 	b	340 <func_80B10A84+0x12c>
 2c0:	9605010e 	lhu	a1,270(s0)
 2c4:	854a0034 	lh	t2,52(t2)
 2c8:	240c0002 	li	t4,2
 2cc:	24030002 	li	v1,2
 2d0:	29410014 	slti	at,t2,20
 2d4:	54200008 	bnezl	at,2f8 <func_80B10A84+0xe4>
 2d8:	a60c0210 	sh	t4,528(s0)
 2dc:	0c000000 	jal	0 <EnSyatekiMan_Init>
 2e0:	2404ffec 	li	a0,-20
 2e4:	240b0001 	li	t3,1
 2e8:	a60b0210 	sh	t3,528(s0)
 2ec:	10000002 	b	2f8 <func_80B10A84+0xe4>
 2f0:	24030001 	li	v1,1
 2f4:	a60c0210 	sh	t4,528(s0)
 2f8:	86020210 	lh	v0,528(s0)
 2fc:	3c0d0000 	lui	t5,0x0
 300:	3c0e0000 	lui	t6,0x0
 304:	00021040 	sll	v0,v0,0x1
 308:	01a26821 	addu	t5,t5,v0
 30c:	85ad0000 	lh	t5,0(t5)
 310:	01c27021 	addu	t6,t6,v0
 314:	a60d010e 	sh	t5,270(s0)
 318:	85ce0000 	lh	t6,0(t6)
 31c:	10000007 	b	33c <func_80B10A84+0x128>
 320:	a60e0212 	sh	t6,530(s0)
 324:	85ef0000 	lh	t7,0(t7)
 328:	3c180000 	lui	t8,0x0
 32c:	24030002 	li	v1,2
 330:	a60f010e 	sh	t7,270(s0)
 334:	87180000 	lh	t8,0(t8)
 338:	a6180212 	sh	t8,530(s0)
 33c:	9605010e 	lhu	a1,270(s0)
 340:	a7a30026 	sh	v1,38(sp)
 344:	0c000000 	jal	0 <EnSyatekiMan_Init>
 348:	8fa4002c 	lw	a0,44(sp)
 34c:	10000004 	b	360 <func_80B10A84+0x14c>
 350:	87a30026 	lh	v1,38(sp)
 354:	0c000000 	jal	0 <EnSyatekiMan_Init>
 358:	a7a30026 	sh	v1,38(sp)
 35c:	87a30026 	lh	v1,38(sp)
 360:	10600009 	beqz	v1,388 <func_80B10A84+0x174>
 364:	3c190000 	lui	t9,0x0
 368:	24010001 	li	at,1
 36c:	10610009 	beq	v1,at,394 <func_80B10A84+0x180>
 370:	3c080000 	lui	t0,0x0
 374:	24010002 	li	at,2
 378:	10610009 	beq	v1,at,3a0 <func_80B10A84+0x18c>
 37c:	3c090000 	lui	t1,0x0
 380:	1000000a 	b	3ac <func_80B10A84+0x198>
 384:	8fbf001c 	lw	ra,28(sp)
 388:	27390000 	addiu	t9,t9,0
 38c:	10000006 	b	3a8 <func_80B10A84+0x194>
 390:	ae1901fc 	sw	t9,508(s0)
 394:	25080000 	addiu	t0,t0,0
 398:	10000003 	b	3a8 <func_80B10A84+0x194>
 39c:	ae0801fc 	sw	t0,508(s0)
 3a0:	25290000 	addiu	t1,t1,0
 3a4:	ae0901fc 	sw	t1,508(s0)
 3a8:	8fbf001c 	lw	ra,28(sp)
 3ac:	8fb00018 	lw	s0,24(sp)
 3b0:	27bd0028 	addiu	sp,sp,40
 3b4:	03e00008 	jr	ra
 3b8:	00000000 	nop

000003bc <func_80B10C2C>:
 3bc:	27bdffe0 	addiu	sp,sp,-32
 3c0:	afb00014 	sw	s0,20(sp)
 3c4:	00808025 	move	s0,a0
 3c8:	afbf001c 	sw	ra,28(sp)
 3cc:	afb10018 	sw	s1,24(sp)
 3d0:	00a08825 	move	s1,a1
 3d4:	0c000000 	jal	0 <EnSyatekiMan_Init>
 3d8:	2484014c 	addiu	a0,a0,332
 3dc:	920e021c 	lbu	t6,540(s0)
 3e0:	3c010001 	lui	at,0x1
 3e4:	00310821 	addu	at,at,s1
 3e8:	11c00002 	beqz	t6,3f4 <func_80B10C2C+0x38>
 3ec:	240ffffe 	li	t7,-2
 3f0:	a02f1e5c 	sb	t7,7772(at)
 3f4:	0c000000 	jal	0 <EnSyatekiMan_Init>
 3f8:	262420d8 	addiu	a0,s1,8408
 3fc:	86180212 	lh	t8,530(s0)
 400:	57020014 	bnel	t8,v0,454 <func_80B10C2C+0x98>
 404:	8fbf001c 	lw	ra,28(sp)
 408:	0c000000 	jal	0 <EnSyatekiMan_Init>
 40c:	02202025 	move	a0,s1
 410:	50400010 	beqzl	v0,454 <func_80B10C2C+0x98>
 414:	8fbf001c 	lw	ra,28(sp)
 418:	9219021c 	lbu	t9,540(s0)
 41c:	02202025 	move	a0,s1
 420:	13200006 	beqz	t9,43c <func_80B10C2C+0x80>
 424:	00000000 	nop
 428:	0c000000 	jal	0 <EnSyatekiMan_Init>
 42c:	86050228 	lh	a1,552(s0)
 430:	2408ffff 	li	t0,-1
 434:	a6080228 	sh	t0,552(s0)
 438:	a200021c 	sb	zero,540(s0)
 43c:	0c000000 	jal	0 <EnSyatekiMan_Init>
 440:	02202025 	move	a0,s1
 444:	3c090000 	lui	t1,0x0
 448:	25290000 	addiu	t1,t1,0
 44c:	ae0901fc 	sw	t1,508(s0)
 450:	8fbf001c 	lw	ra,28(sp)
 454:	8fb00014 	lw	s0,20(sp)
 458:	8fb10018 	lw	s1,24(sp)
 45c:	03e00008 	jr	ra
 460:	27bd0020 	addiu	sp,sp,32

00000464 <func_80B10CD4>:
 464:	27bdffe0 	addiu	sp,sp,-32
 468:	afb00014 	sw	s0,20(sp)
 46c:	00808025 	move	s0,a0
 470:	afbf001c 	sw	ra,28(sp)
 474:	afb10018 	sw	s1,24(sp)
 478:	00a08825 	move	s1,a1
 47c:	0c000000 	jal	0 <EnSyatekiMan_Init>
 480:	2484014c 	addiu	a0,a0,332
 484:	920e021c 	lbu	t6,540(s0)
 488:	3c010001 	lui	at,0x1
 48c:	00310821 	addu	at,at,s1
 490:	11c00002 	beqz	t6,49c <func_80B10CD4+0x38>
 494:	240ffffe 	li	t7,-2
 498:	a02f1e5c 	sb	t7,7772(at)
 49c:	0c000000 	jal	0 <EnSyatekiMan_Init>
 4a0:	262420d8 	addiu	a0,s1,8408
 4a4:	86180212 	lh	t8,530(s0)
 4a8:	5702001a 	bnel	t8,v0,514 <func_80B10CD4+0xb0>
 4ac:	8fbf001c 	lw	ra,28(sp)
 4b0:	0c000000 	jal	0 <EnSyatekiMan_Init>
 4b4:	02202025 	move	a0,s1
 4b8:	50400016 	beqzl	v0,514 <func_80B10CD4+0xb0>
 4bc:	8fbf001c 	lw	ra,28(sp)
 4c0:	9219021c 	lbu	t9,540(s0)
 4c4:	02202025 	move	a0,s1
 4c8:	13200006 	beqz	t9,4e4 <func_80B10CD4+0x80>
 4cc:	00000000 	nop
 4d0:	0c000000 	jal	0 <EnSyatekiMan_Init>
 4d4:	86050228 	lh	a1,552(s0)
 4d8:	2408ffff 	li	t0,-1
 4dc:	a6080228 	sh	t0,552(s0)
 4e0:	a200021c 	sb	zero,540(s0)
 4e4:	0c000000 	jal	0 <EnSyatekiMan_Init>
 4e8:	02202025 	move	a0,s1
 4ec:	8e020118 	lw	v0,280(s0)
 4f0:	3c0b0000 	lui	t3,0x0
 4f4:	240a0001 	li	t2,1
 4f8:	8c490130 	lw	t1,304(v0)
 4fc:	256b0000 	addiu	t3,t3,0
 500:	51200004 	beqzl	t1,514 <func_80B10CD4+0xb0>
 504:	8fbf001c 	lw	ra,28(sp)
 508:	a44a0154 	sh	t2,340(v0)
 50c:	ae0b01fc 	sw	t3,508(s0)
 510:	8fbf001c 	lw	ra,28(sp)
 514:	8fb00014 	lw	s0,20(sp)
 518:	8fb10018 	lw	s1,24(sp)
 51c:	03e00008 	jr	ra
 520:	27bd0020 	addiu	sp,sp,32

00000524 <func_80B10D94>:
 524:	27bdffd0 	addiu	sp,sp,-48
 528:	afb00020 	sw	s0,32(sp)
 52c:	00808025 	move	s0,a0
 530:	afbf0024 	sw	ra,36(sp)
 534:	afa50034 	sw	a1,52(sp)
 538:	0c000000 	jal	0 <EnSyatekiMan_Init>
 53c:	2484014c 	addiu	a0,a0,332
 540:	8e030118 	lw	v1,280(s0)
 544:	8fa70034 	lw	a3,52(sp)
 548:	8c6e0130 	lw	t6,304(v1)
 54c:	51c00038 	beqzl	t6,630 <func_80B10D94+0x10c>
 550:	8fbf0024 	lw	ra,36(sp)
 554:	846f0154 	lh	t7,340(v1)
 558:	24010002 	li	at,2
 55c:	00e02025 	move	a0,a3
 560:	15e10032 	bne	t7,at,62c <func_80B10D94+0x108>
 564:	24051f42 	li	a1,8002
 568:	2406ff9d 	li	a2,-99
 56c:	02003825 	move	a3,s0
 570:	afa00010 	sw	zero,16(sp)
 574:	0c000000 	jal	0 <EnSyatekiMan_Init>
 578:	afa3002c 	sw	v1,44(sp)
 57c:	8fa3002c 	lw	v1,44(sp)
 580:	8fa70034 	lw	a3,52(sp)
 584:	a6020228 	sh	v0,552(s0)
 588:	84640156 	lh	a0,342(v1)
 58c:	24010008 	li	at,8
 590:	240ffffe 	li	t7,-2
 594:	1081000b 	beq	a0,at,5c4 <func_80B10D94+0xa0>
 598:	00003025 	move	a2,zero
 59c:	24010009 	li	at,9
 5a0:	10810008 	beq	a0,at,5c4 <func_80B10D94+0xa0>
 5a4:	2401000a 	li	at,10
 5a8:	1481000b 	bne	a0,at,5d8 <func_80B10D94+0xb4>
 5ac:	240a0003 	li	t2,3
 5b0:	24180001 	li	t8,1
 5b4:	241971af 	li	t9,29103
 5b8:	a6180214 	sh	t8,532(s0)
 5bc:	10000012 	b	608 <func_80B10D94+0xe4>
 5c0:	a619010e 	sh	t9,270(s0)
 5c4:	24080002 	li	t0,2
 5c8:	240971ae 	li	t1,29102
 5cc:	a6080214 	sh	t0,532(s0)
 5d0:	1000000d 	b	608 <func_80B10D94+0xe4>
 5d4:	a609010e 	sh	t1,270(s0)
 5d8:	240b71ad 	li	t3,29101
 5dc:	3c0c0001 	lui	t4,0x1
 5e0:	a60a0214 	sh	t2,532(s0)
 5e4:	a60b010e 	sh	t3,270(s0)
 5e8:	01876021 	addu	t4,t4,a3
 5ec:	818c1e5c 	lb	t4,7772(t4)
 5f0:	24010010 	li	at,16
 5f4:	240d0004 	li	t5,4
 5f8:	15810003 	bne	t4,at,608 <func_80B10D94+0xe4>
 5fc:	240e002d 	li	t6,45
 600:	a60d0214 	sh	t5,532(s0)
 604:	a60e010e 	sh	t6,270(s0)
 608:	3c010001 	lui	at,0x1
 60c:	00270821 	addu	at,at,a3
 610:	a02f1e5c 	sb	t7,7772(at)
 614:	9605010e 	lhu	a1,270(s0)
 618:	0c000000 	jal	0 <EnSyatekiMan_Init>
 61c:	00e02025 	move	a0,a3
 620:	3c180000 	lui	t8,0x0
 624:	27180000 	addiu	t8,t8,0
 628:	ae1801fc 	sw	t8,508(s0)
 62c:	8fbf0024 	lw	ra,36(sp)
 630:	8fb00020 	lw	s0,32(sp)
 634:	27bd0030 	addiu	sp,sp,48
 638:	03e00008 	jr	ra
 63c:	00000000 	nop

00000640 <func_80B10EB0>:
 640:	27bdffd8 	addiu	sp,sp,-40
 644:	afb00020 	sw	s0,32(sp)
 648:	00808025 	move	s0,a0
 64c:	afbf0024 	sw	ra,36(sp)
 650:	afa5002c 	sw	a1,44(sp)
 654:	0c000000 	jal	0 <EnSyatekiMan_Init>
 658:	2484014c 	addiu	a0,a0,332
 65c:	8fa4002c 	lw	a0,44(sp)
 660:	0c000000 	jal	0 <EnSyatekiMan_Init>
 664:	248420d8 	addiu	a0,a0,8408
 668:	860e0212 	lh	t6,530(s0)
 66c:	55c2009d 	bnel	t6,v0,8e4 <func_80B10EB0+0x2a4>
 670:	8fbf0024 	lw	ra,36(sp)
 674:	0c000000 	jal	0 <EnSyatekiMan_Init>
 678:	8fa4002c 	lw	a0,44(sp)
 67c:	50400099 	beqzl	v0,8e4 <func_80B10EB0+0x2a4>
 680:	8fbf0024 	lw	ra,36(sp)
 684:	860f0214 	lh	t7,532(s0)
 688:	24010003 	li	at,3
 68c:	8fa4002c 	lw	a0,44(sp)
 690:	11e10005 	beq	t7,at,6a8 <func_80B10EB0+0x68>
 694:	00000000 	nop
 698:	0c000000 	jal	0 <EnSyatekiMan_Init>
 69c:	86050228 	lh	a1,552(s0)
 6a0:	2418ffff 	li	t8,-1
 6a4:	a6180228 	sh	t8,552(s0)
 6a8:	0c000000 	jal	0 <EnSyatekiMan_Init>
 6ac:	8fa4002c 	lw	a0,44(sp)
 6b0:	8e040118 	lw	a0,280(s0)
 6b4:	24080003 	li	t0,3
 6b8:	8c990130 	lw	t9,304(a0)
 6bc:	53200089 	beqzl	t9,8e4 <func_80B10EB0+0x2a4>
 6c0:	8fbf0024 	lw	ra,36(sp)
 6c4:	a4880154 	sh	t0,340(a0)
 6c8:	86030214 	lh	v1,532(s0)
 6cc:	24010001 	li	at,1
 6d0:	a6000210 	sh	zero,528(s0)
 6d4:	10610005 	beq	v1,at,6ec <func_80B10EB0+0xac>
 6d8:	24010002 	li	at,2
 6dc:	10610060 	beq	v1,at,860 <func_80B10EB0+0x220>
 6e0:	240a0014 	li	t2,20
 6e4:	10000066 	b	880 <func_80B10EB0+0x240>
 6e8:	24010004 	li	at,4
 6ec:	8e090118 	lw	t1,280(s0)
 6f0:	3c030000 	lui	v1,0x0
 6f4:	24630000 	addiu	v1,v1,0
 6f8:	ae000118 	sw	zero,280(s0)
 6fc:	ae090220 	sw	t1,544(s0)
 700:	8c6a0004 	lw	t2,4(v1)
 704:	51400023 	beqzl	t2,794 <func_80B10EB0+0x154>
 708:	946f0ef0 	lhu	t7,3824(v1)
 70c:	946b0ef0 	lhu	t3,3824(v1)
 710:	3c040000 	lui	a0,0x0
 714:	24840000 	addiu	a0,a0,0
 718:	316c2000 	andi	t4,t3,0x2000
 71c:	1580001a 	bnez	t4,788 <func_80B10EB0+0x148>
 720:	240e0055 	li	t6,85
 724:	3c0e0000 	lui	t6,0x0
 728:	8dce0014 	lw	t6,20(t6)
 72c:	8c6d00a0 	lw	t5,160(v1)
 730:	3c180000 	lui	t8,0x0
 734:	93180005 	lbu	t8,5(t8)
 738:	01ae7824 	and	t7,t5,t6
 73c:	0c000000 	jal	0 <EnSyatekiMan_Init>
 740:	030f2807 	srav	a1,t7,t8
 744:	3c030000 	lui	v1,0x0
 748:	24630000 	addiu	v1,v1,0
 74c:	3c080000 	lui	t0,0x0
 750:	8d080014 	lw	t0,20(t0)
 754:	8c7900a0 	lw	t9,160(v1)
 758:	3c0a0000 	lui	t2,0x0
 75c:	914a0005 	lbu	t2,5(t2)
 760:	03284824 	and	t1,t9,t0
 764:	24010001 	li	at,1
 768:	01495807 	srav	t3,t1,t2
 76c:	15610004 	bne	t3,at,780 <func_80B10EB0+0x140>
 770:	240d007b 	li	t5,123
 774:	240c0060 	li	t4,96
 778:	1000002d 	b	830 <func_80B10EB0+0x1f0>
 77c:	ae0c0218 	sw	t4,536(s0)
 780:	1000002b 	b	830 <func_80B10EB0+0x1f0>
 784:	ae0d0218 	sw	t5,536(s0)
 788:	10000029 	b	830 <func_80B10EB0+0x1f0>
 78c:	ae0e0218 	sw	t6,536(s0)
 790:	946f0ef0 	lhu	t7,3824(v1)
 794:	3c040000 	lui	a0,0x0
 798:	24840000 	addiu	a0,a0,0
 79c:	31f84000 	andi	t8,t7,0x4000
 7a0:	17000022 	bnez	t8,82c <func_80B10EB0+0x1ec>
 7a4:	24080055 	li	t0,85
 7a8:	3c080000 	lui	t0,0x0
 7ac:	8d080000 	lw	t0,0(t0)
 7b0:	8c7900a0 	lw	t9,160(v1)
 7b4:	3c0a0000 	lui	t2,0x0
 7b8:	914a0000 	lbu	t2,0(t2)
 7bc:	03284824 	and	t1,t9,t0
 7c0:	0c000000 	jal	0 <EnSyatekiMan_Init>
 7c4:	01492807 	srav	a1,t1,t2
 7c8:	3c030000 	lui	v1,0x0
 7cc:	24630000 	addiu	v1,v1,0
 7d0:	3c0c0000 	lui	t4,0x0
 7d4:	8d8c0000 	lw	t4,0(t4)
 7d8:	8c6b00a0 	lw	t3,160(v1)
 7dc:	3c0e0000 	lui	t6,0x0
 7e0:	91ce0000 	lbu	t6,0(t6)
 7e4:	016c6824 	and	t5,t3,t4
 7e8:	24010001 	li	at,1
 7ec:	01cd1007 	srav	v0,t5,t6
 7f0:	10400008 	beqz	v0,814 <func_80B10EB0+0x1d4>
 7f4:	240f0055 	li	t7,85
 7f8:	10410008 	beq	v0,at,81c <func_80B10EB0+0x1dc>
 7fc:	24180030 	li	t8,48
 800:	24010002 	li	at,2
 804:	10410007 	beq	v0,at,824 <func_80B10EB0+0x1e4>
 808:	24190031 	li	t9,49
 80c:	10000009 	b	834 <func_80B10EB0+0x1f4>
 810:	3c01447a 	lui	at,0x447a
 814:	10000006 	b	830 <func_80B10EB0+0x1f0>
 818:	ae0f0218 	sw	t7,536(s0)
 81c:	10000004 	b	830 <func_80B10EB0+0x1f0>
 820:	ae180218 	sw	t8,536(s0)
 824:	10000002 	b	830 <func_80B10EB0+0x1f0>
 828:	ae190218 	sw	t9,536(s0)
 82c:	ae080218 	sw	t0,536(s0)
 830:	3c01447a 	lui	at,0x447a
 834:	44812000 	mtc1	at,$f4
 838:	8e060218 	lw	a2,536(s0)
 83c:	02002025 	move	a0,s0
 840:	8fa5002c 	lw	a1,44(sp)
 844:	3c0744fa 	lui	a3,0x44fa
 848:	0c000000 	jal	0 <EnSyatekiMan_Init>
 84c:	e7a40010 	swc1	$f4,16(sp)
 850:	3c090000 	lui	t1,0x0
 854:	25290000 	addiu	t1,t1,0
 858:	10000021 	b	8e0 <func_80B10EB0+0x2a0>
 85c:	ae0901fc 	sw	t1,508(s0)
 860:	a60a0216 	sh	t2,534(s0)
 864:	8fa4002c 	lw	a0,44(sp)
 868:	0c000000 	jal	0 <EnSyatekiMan_Init>
 86c:	2405000f 	li	a1,15
 870:	3c0b0000 	lui	t3,0x0
 874:	256b0000 	addiu	t3,t3,0
 878:	10000019 	b	8e0 <func_80B10EB0+0x2a0>
 87c:	ae0b01fc 	sw	t3,508(s0)
 880:	14610005 	bne	v1,at,898 <func_80B10EB0+0x258>
 884:	240d0001 	li	t5,1
 888:	3c0c0000 	lui	t4,0x0
 88c:	258c0000 	addiu	t4,t4,0
 890:	10000013 	b	8e0 <func_80B10EB0+0x2a0>
 894:	ae0c01fc 	sw	t4,508(s0)
 898:	86020210 	lh	v0,528(s0)
 89c:	3c0e0000 	lui	t6,0x0
 8a0:	a20d021c 	sb	t5,540(s0)
 8a4:	00021040 	sll	v0,v0,0x1
 8a8:	01c27021 	addu	t6,t6,v0
 8ac:	85ce0000 	lh	t6,0(t6)
 8b0:	3c0f0000 	lui	t7,0x0
 8b4:	01e27821 	addu	t7,t7,v0
 8b8:	a60e010e 	sh	t6,270(s0)
 8bc:	85ef0000 	lh	t7,0(t7)
 8c0:	00003025 	move	a2,zero
 8c4:	31c5ffff 	andi	a1,t6,0xffff
 8c8:	a60f0212 	sh	t7,530(s0)
 8cc:	0c000000 	jal	0 <EnSyatekiMan_Init>
 8d0:	8fa4002c 	lw	a0,44(sp)
 8d4:	3c180000 	lui	t8,0x0
 8d8:	27180000 	addiu	t8,t8,0
 8dc:	ae1801fc 	sw	t8,508(s0)
 8e0:	8fbf0024 	lw	ra,36(sp)
 8e4:	8fb00020 	lw	s0,32(sp)
 8e8:	27bd0028 	addiu	sp,sp,40
 8ec:	03e00008 	jr	ra
 8f0:	00000000 	nop

000008f4 <func_80B11164>:
 8f4:	27bdffd8 	addiu	sp,sp,-40
 8f8:	afb00020 	sw	s0,32(sp)
 8fc:	00808025 	move	s0,a0
 900:	afbf0024 	sw	ra,36(sp)
 904:	afa5002c 	sw	a1,44(sp)
 908:	0c000000 	jal	0 <EnSyatekiMan_Init>
 90c:	2484014c 	addiu	a0,a0,332
 910:	02002025 	move	a0,s0
 914:	0c000000 	jal	0 <EnSyatekiMan_Init>
 918:	8fa5002c 	lw	a1,44(sp)
 91c:	10400005 	beqz	v0,934 <func_80B11164+0x40>
 920:	02002025 	move	a0,s0
 924:	3c0e0000 	lui	t6,0x0
 928:	25ce0000 	addiu	t6,t6,0
 92c:	10000008 	b	950 <func_80B11164+0x5c>
 930:	ae0e01fc 	sw	t6,508(s0)
 934:	3c01447a 	lui	at,0x447a
 938:	44812000 	mtc1	at,$f4
 93c:	8e060218 	lw	a2,536(s0)
 940:	8fa5002c 	lw	a1,44(sp)
 944:	3c0744fa 	lui	a3,0x44fa
 948:	0c000000 	jal	0 <EnSyatekiMan_Init>
 94c:	e7a40010 	swc1	$f4,16(sp)
 950:	8fbf0024 	lw	ra,36(sp)
 954:	8fb00020 	lw	s0,32(sp)
 958:	27bd0028 	addiu	sp,sp,40
 95c:	03e00008 	jr	ra
 960:	00000000 	nop

00000964 <func_80B111D4>:
 964:	27bdffe0 	addiu	sp,sp,-32
 968:	afb00018 	sw	s0,24(sp)
 96c:	00808025 	move	s0,a0
 970:	afbf001c 	sw	ra,28(sp)
 974:	afa50024 	sw	a1,36(sp)
 978:	0c000000 	jal	0 <EnSyatekiMan_Init>
 97c:	2484014c 	addiu	a0,a0,332
 980:	8fa40024 	lw	a0,36(sp)
 984:	0c000000 	jal	0 <EnSyatekiMan_Init>
 988:	248420d8 	addiu	a0,a0,8408
 98c:	24010006 	li	at,6
 990:	54410023 	bnel	v0,at,a20 <func_80B111D4+0xbc>
 994:	8fbf001c 	lw	ra,28(sp)
 998:	0c000000 	jal	0 <EnSyatekiMan_Init>
 99c:	8fa40024 	lw	a0,36(sp)
 9a0:	1040001e 	beqz	v0,a1c <func_80B111D4+0xb8>
 9a4:	3c040000 	lui	a0,0x0
 9a8:	0c000000 	jal	0 <EnSyatekiMan_Init>
 9ac:	24840000 	addiu	a0,a0,0
 9b0:	3c030000 	lui	v1,0x0
 9b4:	24630000 	addiu	v1,v1,0
 9b8:	8c6e0004 	lw	t6,4(v1)
 9bc:	3c0c0000 	lui	t4,0x0
 9c0:	258c0000 	addiu	t4,t4,0
 9c4:	51c00006 	beqzl	t6,9e0 <func_80B111D4+0x7c>
 9c8:	8e020218 	lw	v0,536(s0)
 9cc:	946f0ef0 	lhu	t7,3824(v1)
 9d0:	35f82000 	ori	t8,t7,0x2000
 9d4:	1000000a 	b	a00 <func_80B111D4+0x9c>
 9d8:	a4780ef0 	sh	t8,3824(v1)
 9dc:	8e020218 	lw	v0,536(s0)
 9e0:	24010030 	li	at,48
 9e4:	10410003 	beq	v0,at,9f4 <func_80B111D4+0x90>
 9e8:	24010031 	li	at,49
 9ec:	54410005 	bnel	v0,at,a04 <func_80B111D4+0xa0>
 9f0:	8e0a0004 	lw	t2,4(s0)
 9f4:	94790ef0 	lhu	t9,3824(v1)
 9f8:	37284000 	ori	t0,t9,0x4000
 9fc:	a4680ef0 	sh	t0,3824(v1)
 a00:	8e0a0004 	lw	t2,4(s0)
 a04:	8e090220 	lw	t1,544(s0)
 a08:	a6000214 	sh	zero,532(s0)
 a0c:	354b0001 	ori	t3,t2,0x1
 a10:	ae0b0004 	sw	t3,4(s0)
 a14:	ae0c01fc 	sw	t4,508(s0)
 a18:	ae090118 	sw	t1,280(s0)
 a1c:	8fbf001c 	lw	ra,28(sp)
 a20:	8fb00018 	lw	s0,24(sp)
 a24:	27bd0020 	addiu	sp,sp,32
 a28:	03e00008 	jr	ra
 a2c:	00000000 	nop

00000a30 <func_80B112A0>:
 a30:	27bdffe8 	addiu	sp,sp,-24
 a34:	afa5001c 	sw	a1,28(sp)
 a38:	00802825 	move	a1,a0
 a3c:	afbf0014 	sw	ra,20(sp)
 a40:	afa40018 	sw	a0,24(sp)
 a44:	afa50018 	sw	a1,24(sp)
 a48:	0c000000 	jal	0 <EnSyatekiMan_Init>
 a4c:	2484014c 	addiu	a0,a0,332
 a50:	8fa50018 	lw	a1,24(sp)
 a54:	84ae0216 	lh	t6,534(a1)
 a58:	55c0000e 	bnezl	t6,a94 <func_80B112A0+0x64>
 a5c:	8fbf0014 	lw	ra,20(sp)
 a60:	8ca20118 	lw	v0,280(a1)
 a64:	3c190000 	lui	t9,0x0
 a68:	3c040000 	lui	a0,0x0
 a6c:	8c4f0130 	lw	t7,304(v0)
 a70:	24180001 	li	t8,1
 a74:	27390000 	addiu	t9,t9,0
 a78:	11e00005 	beqz	t7,a90 <func_80B112A0+0x60>
 a7c:	24840000 	addiu	a0,a0,0
 a80:	a4580154 	sh	t8,340(v0)
 a84:	a4a00214 	sh	zero,532(a1)
 a88:	0c000000 	jal	0 <EnSyatekiMan_Init>
 a8c:	acb901fc 	sw	t9,508(a1)
 a90:	8fbf0014 	lw	ra,20(sp)
 a94:	27bd0018 	addiu	sp,sp,24
 a98:	03e00008 	jr	ra
 a9c:	00000000 	nop

00000aa0 <func_80B11310>:
 aa0:	8482020e 	lh	v0,526(a0)
 aa4:	3c0e0000 	lui	t6,0x0
 aa8:	25ce0000 	addiu	t6,t6,0
 aac:	2442ffff 	addiu	v0,v0,-1
 ab0:	00021400 	sll	v0,v0,0x10
 ab4:	00021403 	sra	v0,v0,0x10
 ab8:	50400004 	beqzl	v0,acc <func_80B11310+0x2c>
 abc:	ac8e0224 	sw	t6,548(a0)
 ac0:	03e00008 	jr	ra
 ac4:	a482020e 	sh	v0,526(a0)
 ac8:	ac8e0224 	sw	t6,548(a0)
 acc:	03e00008 	jr	ra
 ad0:	00000000 	nop

00000ad4 <func_80B11344>:
 ad4:	27bdffe8 	addiu	sp,sp,-24
 ad8:	afbf0014 	sw	ra,20(sp)
 adc:	8482020e 	lh	v0,526(a0)
 ae0:	2442ffff 	addiu	v0,v0,-1
 ae4:	00021400 	sll	v0,v0,0x10
 ae8:	00021403 	sra	v0,v0,0x10
 aec:	50400004 	beqzl	v0,b00 <func_80B11344+0x2c>
 af0:	8482020c 	lh	v0,524(a0)
 af4:	1000001b 	b	b64 <func_80B11344+0x90>
 af8:	a482020e 	sh	v0,526(a0)
 afc:	8482020c 	lh	v0,524(a0)
 b00:	24080001 	li	t0,1
 b04:	24420001 	addiu	v0,v0,1
 b08:	00021400 	sll	v0,v0,0x10
 b0c:	00021403 	sra	v0,v0,0x10
 b10:	28410003 	slti	at,v0,3
 b14:	54200012 	bnezl	at,b60 <func_80B11344+0x8c>
 b18:	a482020c 	sh	v0,524(a0)
 b1c:	a480020c 	sh	zero,524(a0)
 b20:	0c000000 	jal	0 <EnSyatekiMan_Init>
 b24:	afa40018 	sw	a0,24(sp)
 b28:	3c014270 	lui	at,0x4270
 b2c:	44812000 	mtc1	at,$f4
 b30:	8fa40018 	lw	a0,24(sp)
 b34:	3c190000 	lui	t9,0x0
 b38:	46040182 	mul.s	$f6,$f0,$f4
 b3c:	27390000 	addiu	t9,t9,0
 b40:	ac990224 	sw	t9,548(a0)
 b44:	4600320d 	trunc.w.s	$f8,$f6
 b48:	440f4000 	mfc1	t7,$f8
 b4c:	00000000 	nop
 b50:	25f80014 	addiu	t8,t7,20
 b54:	10000003 	b	b64 <func_80B11344+0x90>
 b58:	a498020e 	sh	t8,526(a0)
 b5c:	a482020c 	sh	v0,524(a0)
 b60:	a488020e 	sh	t0,526(a0)
 b64:	8fbf0014 	lw	ra,20(sp)
 b68:	27bd0018 	addiu	sp,sp,24
 b6c:	03e00008 	jr	ra
 b70:	00000000 	nop

00000b74 <EnSyatekiMan_Update>:
 b74:	27bdffd0 	addiu	sp,sp,-48
 b78:	afbf002c 	sw	ra,44(sp)
 b7c:	afb00028 	sw	s0,40(sp)
 b80:	afa50034 	sw	a1,52(sp)
 b84:	84820216 	lh	v0,534(a0)
 b88:	00808025 	move	s0,a0
 b8c:	10400002 	beqz	v0,b98 <EnSyatekiMan_Update+0x24>
 b90:	244effff 	addiu	t6,v0,-1
 b94:	a48e0216 	sh	t6,534(a0)
 b98:	8e1901fc 	lw	t9,508(s0)
 b9c:	02002025 	move	a0,s0
 ba0:	8fa50034 	lw	a1,52(sp)
 ba4:	0320f809 	jalr	t9
 ba8:	00000000 	nop
 bac:	0c000000 	jal	0 <EnSyatekiMan_Init>
 bb0:	00000000 	nop
 bb4:	8e190224 	lw	t9,548(s0)
 bb8:	02002025 	move	a0,s0
 bbc:	0320f809 	jalr	t9
 bc0:	00000000 	nop
 bc4:	3c01428c 	lui	at,0x428c
 bc8:	44810000 	mtc1	at,$f0
 bcc:	02002025 	move	a0,s0
 bd0:	44050000 	mfc1	a1,$f0
 bd4:	0c000000 	jal	0 <EnSyatekiMan_Init>
 bd8:	e600003c 	swc1	$f0,60(s0)
 bdc:	8e180038 	lw	t8,56(s0)
 be0:	8fa40034 	lw	a0,52(sp)
 be4:	02002825 	move	a1,s0
 be8:	afb80010 	sw	t8,16(sp)
 bec:	8e0f003c 	lw	t7,60(s0)
 bf0:	26060200 	addiu	a2,s0,512
 bf4:	26070206 	addiu	a3,s0,518
 bf8:	afaf0014 	sw	t7,20(sp)
 bfc:	8e180040 	lw	t8,64(s0)
 c00:	0c000000 	jal	0 <EnSyatekiMan_Init>
 c04:	afb80018 	sw	t8,24(sp)
 c08:	8fbf002c 	lw	ra,44(sp)
 c0c:	8fb00028 	lw	s0,40(sp)
 c10:	27bd0030 	addiu	sp,sp,48
 c14:	03e00008 	jr	ra
 c18:	00000000 	nop

00000c1c <func_80B1148C>:
 c1c:	24010001 	li	at,1
 c20:	afa40000 	sw	a0,0(sp)
 c24:	14a10007 	bne	a1,at,c44 <func_80B1148C+0x28>
 c28:	afa7000c 	sw	a3,12(sp)
 c2c:	8fa20014 	lw	v0,20(sp)
 c30:	8fa30010 	lw	v1,16(sp)
 c34:	844f0208 	lh	t7,520(v0)
 c38:	846e0000 	lh	t6,0(v1)
 c3c:	01cfc021 	addu	t8,t6,t7
 c40:	a4780000 	sh	t8,0(v1)
 c44:	24010008 	li	at,8
 c48:	8fa20014 	lw	v0,20(sp)
 c4c:	14a10014 	bne	a1,at,ca0 <func_80B1148C+0x84>
 c50:	8fa30010 	lw	v1,16(sp)
 c54:	3c190600 	lui	t9,0x600
 c58:	27397e28 	addiu	t9,t9,32296
 c5c:	acd90000 	sw	t9,0(a2)
 c60:	84480214 	lh	t0,532(v0)
 c64:	24010004 	li	at,4
 c68:	24040001 	li	a0,1
 c6c:	55010003 	bnel	t0,at,c7c <func_80B1148C+0x60>
 c70:	844a0202 	lh	t2,514(v0)
 c74:	2404ffff 	li	a0,-1
 c78:	844a0202 	lh	t2,514(v0)
 c7c:	84690000 	lh	t1,0(v1)
 c80:	846d0004 	lh	t5,4(v1)
 c84:	01440019 	multu	t2,a0
 c88:	00005812 	mflo	t3
 c8c:	012b6021 	addu	t4,t1,t3
 c90:	a46c0000 	sh	t4,0(v1)
 c94:	844e0204 	lh	t6,516(v0)
 c98:	01ae7821 	addu	t7,t5,t6
 c9c:	a46f0004 	sh	t7,4(v1)
 ca0:	03e00008 	jr	ra
 ca4:	00001025 	move	v0,zero

00000ca8 <EnSyatekiMan_Draw>:
 ca8:	27bdffd8 	addiu	sp,sp,-40
 cac:	afbf0024 	sw	ra,36(sp)
 cb0:	afa40028 	sw	a0,40(sp)
 cb4:	afa5002c 	sw	a1,44(sp)
 cb8:	0c000000 	jal	0 <EnSyatekiMan_Init>
 cbc:	8ca40000 	lw	a0,0(a1)
 cc0:	8fa20028 	lw	v0,40(sp)
 cc4:	3c0f0000 	lui	t7,0x0
 cc8:	25ef0000 	addiu	t7,t7,0
 ccc:	8c450150 	lw	a1,336(v0)
 cd0:	8c46016c 	lw	a2,364(v0)
 cd4:	9047014e 	lbu	a3,334(v0)
 cd8:	afa00014 	sw	zero,20(sp)
 cdc:	afaf0010 	sw	t7,16(sp)
 ce0:	8fa4002c 	lw	a0,44(sp)
 ce4:	0c000000 	jal	0 <EnSyatekiMan_Init>
 ce8:	afa20018 	sw	v0,24(sp)
 cec:	8fbf0024 	lw	ra,36(sp)
 cf0:	27bd0028 	addiu	sp,sp,40
 cf4:	03e00008 	jr	ra
 cf8:	00000000 	nop

00000cfc <func_80B1156C>:
 cfc:	3c030000 	lui	v1,0x0
 d00:	24630000 	addiu	v1,v1,0
 d04:	8c620000 	lw	v0,0(v1)
 d08:	27bdffe8 	addiu	sp,sp,-24
 d0c:	afbf0014 	sw	ra,20(sp)
 d10:	844e1374 	lh	t6,4980(v0)
 d14:	51c0000a 	beqzl	t6,d40 <func_80B1156C+0x44>
 d18:	8fbf0014 	lw	ra,20(sp)
 d1c:	a4401374 	sh	zero,4980(v0)
 d20:	8c6f0000 	lw	t7,0(v1)
 d24:	3c040000 	lui	a0,0x0
 d28:	85f81376 	lh	t8,4982(t7)
 d2c:	0018c840 	sll	t9,t8,0x1
 d30:	00992021 	addu	a0,a0,t9
 d34:	0c000000 	jal	0 <EnSyatekiMan_Init>
 d38:	94840000 	lhu	a0,0(a0)
 d3c:	8fbf0014 	lw	ra,20(sp)
 d40:	27bd0018 	addiu	sp,sp,24
 d44:	03e00008 	jr	ra
 d48:	00000000 	nop
 d4c:	00000000 	nop
