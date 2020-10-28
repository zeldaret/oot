
build/src/overlays/actors/ovl_En_Sth/z_en_sth.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B07540>:
   0:	03e00008 	jr	ra
   4:	ac8502b8 	sw	a1,696(a0)

00000008 <EnSth_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa50034 	sw	a1,52(sp)
  18:	8485001c 	lh	a1,28(a0)
  1c:	00808025 	move	s0,a0
  20:	3c040000 	lui	a0,0x0
  24:	24840000 	addiu	a0,a0,0
  28:	0c000000 	jal	0 <func_80B07540>
  2c:	afa50024 	sw	a1,36(sp)
  30:	8602001c 	lh	v0,28(s0)
  34:	8fa60024 	lw	a2,36(sp)
  38:	3c0f0000 	lui	t7,0x0
  3c:	1440000d 	bnez	v0,74 <EnSth_Init+0x6c>
  40:	0002c080 	sll	t8,v0,0x2
  44:	3c0e0000 	lui	t6,0x0
  48:	85ce00d0 	lh	t6,208(t6)
  4c:	29c10064 	slti	at,t6,100
  50:	50200016 	beqzl	at,ac <EnSth_Init+0xa4>
  54:	0006c840 	sll	t9,a2,0x1
  58:	0c000000 	jal	0 <func_80B07540>
  5c:	02002025 	move	a0,s0
  60:	3c040000 	lui	a0,0x0
  64:	0c000000 	jal	0 <func_80B07540>
  68:	24840000 	addiu	a0,a0,0
  6c:	1000003c 	b	160 <EnSth_Init+0x158>
  70:	8fbf001c 	lw	ra,28(sp)
  74:	85ef00d0 	lh	t7,208(t7)
  78:	0302c021 	addu	t8,t8,v0
  7c:	0018c040 	sll	t8,t8,0x1
  80:	01f8082a 	slt	at,t7,t8
  84:	50200009 	beqzl	at,ac <EnSth_Init+0xa4>
  88:	0006c840 	sll	t9,a2,0x1
  8c:	0c000000 	jal	0 <func_80B07540>
  90:	02002025 	move	a0,s0
  94:	3c040000 	lui	a0,0x0
  98:	0c000000 	jal	0 <func_80B07540>
  9c:	24840000 	addiu	a0,a0,0
  a0:	1000002f 	b	160 <EnSth_Init+0x158>
  a4:	8fbf001c 	lw	ra,28(sp)
  a8:	0006c840 	sll	t9,a2,0x1
  ac:	3c050000 	lui	a1,0x0
  b0:	00b92821 	addu	a1,a1,t9
  b4:	84a50000 	lh	a1,0(a1)
  b8:	24010001 	li	at,1
  bc:	8fa40034 	lw	a0,52(sp)
  c0:	10a10007 	beq	a1,at,e0 <EnSth_Init+0xd8>
  c4:	00003825 	move	a3,zero
  c8:	3c010001 	lui	at,0x1
  cc:	342117a4 	ori	at,at,0x17a4
  d0:	0c000000 	jal	0 <func_80B07540>
  d4:	00812021 	addu	a0,a0,at
  d8:	10000001 	b	e0 <EnSth_Init+0xd8>
  dc:	00403825 	move	a3,v0
  e0:	3c040000 	lui	a0,0x0
  e4:	24840000 	addiu	a0,a0,0
  e8:	00e02825 	move	a1,a3
  ec:	0c000000 	jal	0 <func_80B07540>
  f0:	afa70020 	sw	a3,32(sp)
  f4:	8fa70020 	lw	a3,32(sp)
  f8:	3c040000 	lui	a0,0x0
  fc:	24840000 	addiu	a0,a0,0
 100:	04e10006 	bgez	a3,11c <EnSth_Init+0x114>
 104:	3c050000 	lui	a1,0x0
 108:	24a50000 	addiu	a1,a1,0
 10c:	2406061c 	li	a2,1564
 110:	0c000000 	jal	0 <func_80B07540>
 114:	afa70020 	sw	a3,32(sp)
 118:	8fa70020 	lw	a3,32(sp)
 11c:	3c080000 	lui	t0,0x0
 120:	25080000 	addiu	t0,t0,0
 124:	3c053c23 	lui	a1,0x3c23
 128:	a20702a4 	sb	a3,676(s0)
 12c:	ae0802a0 	sw	t0,672(s0)
 130:	34a5d70a 	ori	a1,a1,0xd70a
 134:	0c000000 	jal	0 <func_80B07540>
 138:	02002025 	move	a0,s0
 13c:	3c050000 	lui	a1,0x0
 140:	24a50000 	addiu	a1,a1,0
 144:	0c000000 	jal	0 <func_80B07540>
 148:	02002025 	move	a0,s0
 14c:	24090006 	li	t1,6
 150:	ae000134 	sw	zero,308(s0)
 154:	a60002b2 	sh	zero,690(s0)
 158:	a209001f 	sb	t1,31(s0)
 15c:	8fbf001c 	lw	ra,28(sp)
 160:	8fb00018 	lw	s0,24(sp)
 164:	27bd0030 	addiu	sp,sp,48
 168:	03e00008 	jr	ra
 16c:	00000000 	nop

00000170 <func_80B076B0>:
 170:	27bdffd8 	addiu	sp,sp,-40
 174:	afb00018 	sw	s0,24(sp)
 178:	00808025 	move	s0,a0
 17c:	afbf001c 	sw	ra,28(sp)
 180:	afa5002c 	sw	a1,44(sp)
 184:	3c060000 	lui	a2,0x0
 188:	24c60000 	addiu	a2,a2,0
 18c:	24050000 	li	a1,0
 190:	248400b4 	addiu	a0,a0,180
 194:	0c000000 	jal	0 <func_80B07540>
 198:	3c074210 	lui	a3,0x4210
 19c:	2605014c 	addiu	a1,s0,332
 1a0:	afa50020 	sw	a1,32(sp)
 1a4:	0c000000 	jal	0 <func_80B07540>
 1a8:	8fa4002c 	lw	a0,44(sp)
 1ac:	3c070000 	lui	a3,0x0
 1b0:	8fa50020 	lw	a1,32(sp)
 1b4:	24e70000 	addiu	a3,a3,0
 1b8:	8fa4002c 	lw	a0,44(sp)
 1bc:	0c000000 	jal	0 <func_80B07540>
 1c0:	02003025 	move	a2,s0
 1c4:	8e1802a0 	lw	t8,672(s0)
 1c8:	3c0f0000 	lui	t7,0x0
 1cc:	240e00ff 	li	t6,255
 1d0:	25ef0000 	addiu	t7,t7,0
 1d4:	a20e00ae 	sb	t6,174(s0)
 1d8:	ae0f0130 	sw	t7,304(s0)
 1dc:	ae180134 	sw	t8,308(s0)
 1e0:	8fbf001c 	lw	ra,28(sp)
 1e4:	8fb00018 	lw	s0,24(sp)
 1e8:	27bd0028 	addiu	sp,sp,40
 1ec:	03e00008 	jr	ra
 1f0:	00000000 	nop

000001f4 <func_80B07734>:
 1f4:	27bdffc0 	addiu	sp,sp,-64
 1f8:	afbf002c 	sw	ra,44(sp)
 1fc:	afb00028 	sw	s0,40(sp)
 200:	00808025 	move	s0,a0
 204:	0c000000 	jal	0 <func_80B07540>
 208:	afa50044 	sw	a1,68(sp)
 20c:	920e02a4 	lbu	t6,676(s0)
 210:	8fa40044 	lw	a0,68(sp)
 214:	3c190001 	lui	t9,0x1
 218:	000e7900 	sll	t7,t6,0x4
 21c:	01ee7821 	addu	t7,t7,t6
 220:	000f7880 	sll	t7,t7,0x2
 224:	008fc021 	addu	t8,a0,t7
 228:	0338c821 	addu	t9,t9,t8
 22c:	8f3917b4 	lw	t9,6068(t9)
 230:	3c018000 	lui	at,0x8000
 234:	3c060000 	lui	a2,0x0
 238:	03214021 	addu	t0,t9,at
 23c:	3c010000 	lui	at,0x0
 240:	ac280018 	sw	t0,24(at)
 244:	8609001c 	lh	t1,28(s0)
 248:	26050198 	addiu	a1,s0,408
 24c:	260b01dc 	addiu	t3,s0,476
 250:	00095080 	sll	t2,t1,0x2
 254:	00ca3021 	addu	a2,a2,t2
 258:	260c023c 	addiu	t4,s0,572
 25c:	240d0010 	li	t5,16
 260:	afad0018 	sw	t5,24(sp)
 264:	afac0014 	sw	t4,20(sp)
 268:	8cc60000 	lw	a2,0(a2)
 26c:	afab0010 	sw	t3,16(sp)
 270:	afa50034 	sw	a1,52(sp)
 274:	0c000000 	jal	0 <func_80B07540>
 278:	00003825 	move	a3,zero
 27c:	860e001c 	lh	t6,28(s0)
 280:	3c050000 	lui	a1,0x0
 284:	8fa40034 	lw	a0,52(sp)
 288:	000e7880 	sll	t7,t6,0x2
 28c:	00af2821 	addu	a1,a1,t7
 290:	0c000000 	jal	0 <func_80B07540>
 294:	8ca50000 	lw	a1,0(a1)
 298:	8618001c 	lh	t8,28(s0)
 29c:	3c080000 	lui	t0,0x0
 2a0:	3c090000 	lui	t1,0x0
 2a4:	0018c840 	sll	t9,t8,0x1
 2a8:	01194021 	addu	t0,t0,t9
 2ac:	95080000 	lhu	t0,0(t0)
 2b0:	02002025 	move	a0,s0
 2b4:	3c050000 	lui	a1,0x0
 2b8:	a608029c 	sh	t0,668(s0)
 2bc:	95290eee 	lhu	t1,3822(t1)
 2c0:	310affff 	andi	t2,t0,0xffff
 2c4:	012a5824 	and	t3,t1,t2
 2c8:	1160000a 	beqz	t3,2f4 <func_80B07734+0x100>
 2cc:	00000000 	nop
 2d0:	860c001c 	lh	t4,28(s0)
 2d4:	3c050000 	lui	a1,0x0
 2d8:	02002025 	move	a0,s0
 2dc:	000c6880 	sll	t5,t4,0x2
 2e0:	00ad2821 	addu	a1,a1,t5
 2e4:	0c000000 	jal	0 <func_80B07540>
 2e8:	8ca50000 	lw	a1,0(a1)
 2ec:	10000004 	b	300 <func_80B07734+0x10c>
 2f0:	8fbf002c 	lw	ra,44(sp)
 2f4:	0c000000 	jal	0 <func_80B07540>
 2f8:	24a50000 	addiu	a1,a1,0
 2fc:	8fbf002c 	lw	ra,44(sp)
 300:	8fb00028 	lw	s0,40(sp)
 304:	27bd0040 	addiu	sp,sp,64
 308:	03e00008 	jr	ra
 30c:	00000000 	nop

00000310 <EnSth_Destroy>:
 310:	27bdffe8 	addiu	sp,sp,-24
 314:	00803025 	move	a2,a0
 318:	afbf0014 	sw	ra,20(sp)
 31c:	00a02025 	move	a0,a1
 320:	0c000000 	jal	0 <func_80B07540>
 324:	24c5014c 	addiu	a1,a2,332
 328:	8fbf0014 	lw	ra,20(sp)
 32c:	27bd0018 	addiu	sp,sp,24
 330:	03e00008 	jr	ra
 334:	00000000 	nop

00000338 <func_80B07878>:
 338:	3c010001 	lui	at,0x1
 33c:	27bdffe8 	addiu	sp,sp,-24
 340:	00803025 	move	a2,a0
 344:	342117a4 	ori	at,at,0x17a4
 348:	afbf0014 	sw	ra,20(sp)
 34c:	00a12021 	addu	a0,a1,at
 350:	90c502a4 	lbu	a1,676(a2)
 354:	0c000000 	jal	0 <func_80B07540>
 358:	afa60018 	sw	a2,24(sp)
 35c:	10400006 	beqz	v0,378 <func_80B07878+0x40>
 360:	8fa60018 	lw	a2,24(sp)
 364:	90ce02a4 	lbu	t6,676(a2)
 368:	3c0f0000 	lui	t7,0x0
 36c:	25ef0000 	addiu	t7,t7,0
 370:	accf02b8 	sw	t7,696(a2)
 374:	a0ce001e 	sb	t6,30(a2)
 378:	8fbf0014 	lw	ra,20(sp)
 37c:	27bd0018 	addiu	sp,sp,24
 380:	03e00008 	jr	ra
 384:	00000000 	nop

00000388 <func_80B078C8>:
 388:	27bdffc0 	addiu	sp,sp,-64
 38c:	afbf002c 	sw	ra,44(sp)
 390:	afb00028 	sw	s0,40(sp)
 394:	afa50044 	sw	a1,68(sp)
 398:	848e008a 	lh	t6,138(a0)
 39c:	00808025 	move	s0,a0
 3a0:	24060006 	li	a2,6
 3a4:	afae0030 	sw	t6,48(sp)
 3a8:	849800b6 	lh	t8,182(a0)
 3ac:	260400b6 	addiu	a0,s0,182
 3b0:	87a50032 	lh	a1,50(sp)
 3b4:	01d81023 	subu	v0,t6,t8
 3b8:	00021400 	sll	v0,v0,0x10
 3bc:	00021403 	sra	v0,v0,0x10
 3c0:	04400003 	bltz	v0,3d0 <func_80B078C8+0x48>
 3c4:	00021823 	negu	v1,v0
 3c8:	10000001 	b	3d0 <func_80B078C8+0x48>
 3cc:	00401825 	move	v1,v0
 3d0:	28614001 	slti	at,v1,16385
 3d4:	10200013 	beqz	at,424 <func_80B078C8+0x9c>
 3d8:	24070fa0 	li	a3,4000
 3dc:	24190064 	li	t9,100
 3e0:	0c000000 	jal	0 <func_80B07540>
 3e4:	afb90010 	sw	t9,16(sp)
 3e8:	860800b6 	lh	t0,182(s0)
 3ec:	8e0a0038 	lw	t2,56(s0)
 3f0:	02002825 	move	a1,s0
 3f4:	a6080032 	sh	t0,50(s0)
 3f8:	afaa0010 	sw	t2,16(sp)
 3fc:	8e09003c 	lw	t1,60(s0)
 400:	8fa40044 	lw	a0,68(sp)
 404:	260602a6 	addiu	a2,s0,678
 408:	afa90014 	sw	t1,20(sp)
 40c:	8e0a0040 	lw	t2,64(s0)
 410:	260702ac 	addiu	a3,s0,684
 414:	0c000000 	jal	0 <func_80B07540>
 418:	afaa0018 	sw	t2,24(sp)
 41c:	1000001c 	b	490 <func_80B078C8+0x108>
 420:	8fbf002c 	lw	ra,44(sp)
 424:	0441000a 	bgez	v0,450 <func_80B078C8+0xc8>
 428:	260402a8 	addiu	a0,s0,680
 42c:	240b0100 	li	t3,256
 430:	afab0010 	sw	t3,16(sp)
 434:	260402a8 	addiu	a0,s0,680
 438:	2405e000 	li	a1,-8192
 43c:	24060006 	li	a2,6
 440:	0c000000 	jal	0 <func_80B07540>
 444:	24071838 	li	a3,6200
 448:	10000008 	b	46c <func_80B078C8+0xe4>
 44c:	8605008a 	lh	a1,138(s0)
 450:	240c0100 	li	t4,256
 454:	afac0010 	sw	t4,16(sp)
 458:	24052000 	li	a1,8192
 45c:	24060006 	li	a2,6
 460:	0c000000 	jal	0 <func_80B07540>
 464:	24071838 	li	a3,6200
 468:	8605008a 	lh	a1,138(s0)
 46c:	240d0064 	li	t5,100
 470:	afad0010 	sw	t5,16(sp)
 474:	260400b6 	addiu	a0,s0,182
 478:	2406000c 	li	a2,12
 47c:	0c000000 	jal	0 <func_80B07540>
 480:	240703e8 	li	a3,1000
 484:	860e00b6 	lh	t6,182(s0)
 488:	a60e0032 	sh	t6,50(s0)
 48c:	8fbf002c 	lw	ra,44(sp)
 490:	8fb00028 	lw	s0,40(sp)
 494:	27bd0040 	addiu	sp,sp,64
 498:	03e00008 	jr	ra
 49c:	00000000 	nop

000004a0 <func_80B079E0>:
 4a0:	27bdffd0 	addiu	sp,sp,-48
 4a4:	afbf002c 	sw	ra,44(sp)
 4a8:	afb00028 	sw	s0,40(sp)
 4ac:	afa50034 	sw	a1,52(sp)
 4b0:	848f00b6 	lh	t7,182(a0)
 4b4:	848e008a 	lh	t6,138(a0)
 4b8:	00808025 	move	s0,a0
 4bc:	260402a6 	addiu	a0,s0,678
 4c0:	01cf1023 	subu	v0,t6,t7
 4c4:	00021400 	sll	v0,v0,0x10
 4c8:	00021403 	sra	v0,v0,0x10
 4cc:	04400003 	bltz	v0,4dc <func_80B079E0+0x3c>
 4d0:	00021823 	negu	v1,v0
 4d4:	10000001 	b	4dc <func_80B079E0+0x3c>
 4d8:	00401825 	move	v1,v0
 4dc:	28614301 	slti	at,v1,17153
 4e0:	10200015 	beqz	at,538 <func_80B079E0+0x98>
 4e4:	00002825 	move	a1,zero
 4e8:	3c0142c8 	lui	at,0x42c8
 4ec:	44813000 	mtc1	at,$f6
 4f0:	c6040090 	lwc1	$f4,144(s0)
 4f4:	4606203c 	c.lt.s	$f4,$f6
 4f8:	00000000 	nop
 4fc:	4502000f 	bc1fl	53c <func_80B079E0+0x9c>
 500:	24080064 	li	t0,100
 504:	8e190038 	lw	t9,56(s0)
 508:	8fa40034 	lw	a0,52(sp)
 50c:	02002825 	move	a1,s0
 510:	afb90010 	sw	t9,16(sp)
 514:	8e18003c 	lw	t8,60(s0)
 518:	260602a6 	addiu	a2,s0,678
 51c:	260702ac 	addiu	a3,s0,684
 520:	afb80014 	sw	t8,20(sp)
 524:	8e190040 	lw	t9,64(s0)
 528:	0c000000 	jal	0 <func_80B07540>
 52c:	afb90018 	sw	t9,24(sp)
 530:	1000001c 	b	5a4 <func_80B079E0+0x104>
 534:	8fbf002c 	lw	ra,44(sp)
 538:	24080064 	li	t0,100
 53c:	afa80010 	sw	t0,16(sp)
 540:	24060006 	li	a2,6
 544:	0c000000 	jal	0 <func_80B07540>
 548:	24071838 	li	a3,6200
 54c:	24090064 	li	t1,100
 550:	afa90010 	sw	t1,16(sp)
 554:	260402a8 	addiu	a0,s0,680
 558:	00002825 	move	a1,zero
 55c:	24060006 	li	a2,6
 560:	0c000000 	jal	0 <func_80B07540>
 564:	24071838 	li	a3,6200
 568:	240a0064 	li	t2,100
 56c:	afaa0010 	sw	t2,16(sp)
 570:	260402ac 	addiu	a0,s0,684
 574:	00002825 	move	a1,zero
 578:	24060006 	li	a2,6
 57c:	0c000000 	jal	0 <func_80B07540>
 580:	24071838 	li	a3,6200
 584:	240b0064 	li	t3,100
 588:	afab0010 	sw	t3,16(sp)
 58c:	260402ae 	addiu	a0,s0,686
 590:	00002825 	move	a1,zero
 594:	24060006 	li	a2,6
 598:	0c000000 	jal	0 <func_80B07540>
 59c:	24071838 	li	a3,6200
 5a0:	8fbf002c 	lw	ra,44(sp)
 5a4:	8fb00028 	lw	s0,40(sp)
 5a8:	27bd0030 	addiu	sp,sp,48
 5ac:	03e00008 	jr	ra
 5b0:	00000000 	nop

000005b4 <func_80B07AF4>:
 5b4:	27bdffe0 	addiu	sp,sp,-32
 5b8:	afbf001c 	sw	ra,28(sp)
 5bc:	afb00018 	sw	s0,24(sp)
 5c0:	00808025 	move	s0,a0
 5c4:	0c000000 	jal	0 <func_80B07540>
 5c8:	afa50024 	sw	a1,36(sp)
 5cc:	5040000f 	beqzl	v0,60c <func_80B07AF4+0x58>
 5d0:	02002025 	move	a0,s0
 5d4:	860e001c 	lh	t6,28(s0)
 5d8:	02002025 	move	a0,s0
 5dc:	3c050000 	lui	a1,0x0
 5e0:	15c00007 	bnez	t6,600 <func_80B07AF4+0x4c>
 5e4:	00000000 	nop
 5e8:	3c050000 	lui	a1,0x0
 5ec:	24a50000 	addiu	a1,a1,0
 5f0:	0c000000 	jal	0 <func_80B07540>
 5f4:	02002025 	move	a0,s0
 5f8:	10000004 	b	60c <func_80B07AF4+0x58>
 5fc:	02002025 	move	a0,s0
 600:	0c000000 	jal	0 <func_80B07540>
 604:	24a50000 	addiu	a1,a1,0
 608:	02002025 	move	a0,s0
 60c:	0c000000 	jal	0 <func_80B07540>
 610:	8fa50024 	lw	a1,36(sp)
 614:	8fbf001c 	lw	ra,28(sp)
 618:	8fb00018 	lw	s0,24(sp)
 61c:	27bd0020 	addiu	sp,sp,32
 620:	03e00008 	jr	ra
 624:	00000000 	nop

00000628 <func_80B07B68>:
 628:	27bdffe0 	addiu	sp,sp,-32
 62c:	afbf001c 	sw	ra,28(sp)
 630:	afb00018 	sw	s0,24(sp)
 634:	00808025 	move	s0,a0
 638:	0c000000 	jal	0 <func_80B07540>
 63c:	afa50024 	sw	a1,36(sp)
 640:	10400007 	beqz	v0,660 <func_80B07B68+0x38>
 644:	3c0142c8 	lui	at,0x42c8
 648:	3c050000 	lui	a1,0x0
 64c:	24a50000 	addiu	a1,a1,0
 650:	0c000000 	jal	0 <func_80B07540>
 654:	02002025 	move	a0,s0
 658:	1000000d 	b	690 <func_80B07B68+0x68>
 65c:	02002025 	move	a0,s0
 660:	44810000 	mtc1	at,$f0
 664:	c6040090 	lwc1	$f4,144(s0)
 668:	240e0023 	li	t6,35
 66c:	a60e010e 	sh	t6,270(s0)
 670:	4600203c 	c.lt.s	$f4,$f0
 674:	02002025 	move	a0,s0
 678:	45020005 	bc1fl	690 <func_80B07B68+0x68>
 67c:	02002025 	move	a0,s0
 680:	44060000 	mfc1	a2,$f0
 684:	0c000000 	jal	0 <func_80B07540>
 688:	8fa50024 	lw	a1,36(sp)
 68c:	02002025 	move	a0,s0
 690:	0c000000 	jal	0 <func_80B07540>
 694:	8fa50024 	lw	a1,36(sp)
 698:	8fbf001c 	lw	ra,28(sp)
 69c:	8fb00018 	lw	s0,24(sp)
 6a0:	27bd0020 	addiu	sp,sp,32
 6a4:	03e00008 	jr	ra
 6a8:	00000000 	nop

000006ac <func_80B07BEC>:
 6ac:	27bdffe0 	addiu	sp,sp,-32
 6b0:	afbf001c 	sw	ra,28(sp)
 6b4:	8482001c 	lh	v0,28(a0)
 6b8:	3c080000 	lui	t0,0x0
 6bc:	24060001 	li	a2,1
 6c0:	00027040 	sll	t6,v0,0x1
 6c4:	010e4021 	addu	t0,t0,t6
 6c8:	10c20003 	beq	a2,v0,6d8 <func_80B07BEC+0x2c>
 6cc:	95080000 	lhu	t0,0(t0)
 6d0:	24010003 	li	at,3
 6d4:	14410011 	bne	v0,at,71c <func_80B07BEC+0x70>
 6d8:	3c0f0000 	lui	t7,0x0
 6dc:	3c180000 	lui	t8,0x0
 6e0:	8f180010 	lw	t8,16(t8)
 6e4:	8def00a0 	lw	t7,160(t7)
 6e8:	3c090000 	lui	t1,0x0
 6ec:	91290004 	lbu	t1,4(t1)
 6f0:	01f8c824 	and	t9,t7,t8
 6f4:	01391807 	srav	v1,t9,t1
 6f8:	10600005 	beqz	v1,710 <func_80B07BEC+0x64>
 6fc:	00000000 	nop
 700:	50660006 	beql	v1,a2,71c <func_80B07BEC+0x70>
 704:	24080046 	li	t0,70
 708:	10000005 	b	720 <func_80B07BEC+0x74>
 70c:	3c014248 	lui	at,0x4248
 710:	10000002 	b	71c <func_80B07BEC+0x70>
 714:	24080045 	li	t0,69
 718:	24080046 	li	t0,70
 71c:	3c014248 	lui	at,0x4248
 720:	44812000 	mtc1	at,$f4
 724:	3c07461c 	lui	a3,0x461c
 728:	34e74000 	ori	a3,a3,0x4000
 72c:	01003025 	move	a2,t0
 730:	0c000000 	jal	0 <func_80B07540>
 734:	e7a40010 	swc1	$f4,16(sp)
 738:	8fbf001c 	lw	ra,28(sp)
 73c:	27bd0020 	addiu	sp,sp,32
 740:	03e00008 	jr	ra
 744:	00000000 	nop

00000748 <func_80B07C88>:
 748:	27bdffe0 	addiu	sp,sp,-32
 74c:	afbf001c 	sw	ra,28(sp)
 750:	afb00018 	sw	s0,24(sp)
 754:	00808025 	move	s0,a0
 758:	0c000000 	jal	0 <func_80B07540>
 75c:	afa50024 	sw	a1,36(sp)
 760:	1040000c 	beqz	v0,794 <func_80B07C88+0x4c>
 764:	02002025 	move	a0,s0
 768:	3c050000 	lui	a1,0x0
 76c:	ae000118 	sw	zero,280(s0)
 770:	0c000000 	jal	0 <func_80B07540>
 774:	24a50000 	addiu	a1,a1,0
 778:	3c020000 	lui	v0,0x0
 77c:	24420000 	addiu	v0,v0,0
 780:	944e0eee 	lhu	t6,3822(v0)
 784:	960f029c 	lhu	t7,668(s0)
 788:	01cfc025 	or	t8,t6,t7
 78c:	10000004 	b	7a0 <func_80B07C88+0x58>
 790:	a4580eee 	sh	t8,3822(v0)
 794:	02002025 	move	a0,s0
 798:	0c000000 	jal	0 <func_80B07540>
 79c:	8fa50024 	lw	a1,36(sp)
 7a0:	02002025 	move	a0,s0
 7a4:	0c000000 	jal	0 <func_80B07540>
 7a8:	8fa50024 	lw	a1,36(sp)
 7ac:	8fbf001c 	lw	ra,28(sp)
 7b0:	8fb00018 	lw	s0,24(sp)
 7b4:	27bd0020 	addiu	sp,sp,32
 7b8:	03e00008 	jr	ra
 7bc:	00000000 	nop

000007c0 <func_80B07D00>:
 7c0:	27bdffe0 	addiu	sp,sp,-32
 7c4:	afbf001c 	sw	ra,28(sp)
 7c8:	afb00018 	sw	s0,24(sp)
 7cc:	afa40020 	sw	a0,32(sp)
 7d0:	00a08025 	move	s0,a1
 7d4:	0c000000 	jal	0 <func_80B07540>
 7d8:	24a420d8 	addiu	a0,a1,8408
 7dc:	24010005 	li	at,5
 7e0:	5441000f 	bnel	v0,at,820 <func_80B07D00+0x60>
 7e4:	8fa40020 	lw	a0,32(sp)
 7e8:	0c000000 	jal	0 <func_80B07540>
 7ec:	02002025 	move	a0,s0
 7f0:	5040000b 	beqzl	v0,820 <func_80B07D00+0x60>
 7f4:	8fa40020 	lw	a0,32(sp)
 7f8:	0c000000 	jal	0 <func_80B07540>
 7fc:	02002025 	move	a0,s0
 800:	3c050000 	lui	a1,0x0
 804:	24a50000 	addiu	a1,a1,0
 808:	0c000000 	jal	0 <func_80B07540>
 80c:	8fa40020 	lw	a0,32(sp)
 810:	8fa40020 	lw	a0,32(sp)
 814:	0c000000 	jal	0 <func_80B07540>
 818:	02002825 	move	a1,s0
 81c:	8fa40020 	lw	a0,32(sp)
 820:	0c000000 	jal	0 <func_80B07540>
 824:	02002825 	move	a1,s0
 828:	8fbf001c 	lw	ra,28(sp)
 82c:	8fb00018 	lw	s0,24(sp)
 830:	27bd0020 	addiu	sp,sp,32
 834:	03e00008 	jr	ra
 838:	00000000 	nop

0000083c <func_80B07D7C>:
 83c:	27bdffe0 	addiu	sp,sp,-32
 840:	afbf001c 	sw	ra,28(sp)
 844:	afb00018 	sw	s0,24(sp)
 848:	00808025 	move	s0,a0
 84c:	0c000000 	jal	0 <func_80B07540>
 850:	afa50024 	sw	a1,36(sp)
 854:	10400007 	beqz	v0,874 <func_80B07D7C+0x38>
 858:	3c0142c8 	lui	at,0x42c8
 85c:	3c050000 	lui	a1,0x0
 860:	24a50000 	addiu	a1,a1,0
 864:	0c000000 	jal	0 <func_80B07540>
 868:	02002025 	move	a0,s0
 86c:	10000013 	b	8bc <func_80B07D7C+0x80>
 870:	02002025 	move	a0,s0
 874:	860e001c 	lh	t6,28(s0)
 878:	44810000 	mtc1	at,$f0
 87c:	240f0028 	li	t7,40
 880:	15c00003 	bnez	t6,890 <func_80B07D7C+0x54>
 884:	24180021 	li	t8,33
 888:	10000002 	b	894 <func_80B07D7C+0x58>
 88c:	a60f010e 	sh	t7,270(s0)
 890:	a618010e 	sh	t8,270(s0)
 894:	c6040090 	lwc1	$f4,144(s0)
 898:	02002025 	move	a0,s0
 89c:	4600203c 	c.lt.s	$f4,$f0
 8a0:	00000000 	nop
 8a4:	45020005 	bc1fl	8bc <func_80B07D7C+0x80>
 8a8:	02002025 	move	a0,s0
 8ac:	44060000 	mfc1	a2,$f0
 8b0:	0c000000 	jal	0 <func_80B07540>
 8b4:	8fa50024 	lw	a1,36(sp)
 8b8:	02002025 	move	a0,s0
 8bc:	0c000000 	jal	0 <func_80B07540>
 8c0:	8fa50024 	lw	a1,36(sp)
 8c4:	8fbf001c 	lw	ra,28(sp)
 8c8:	8fb00018 	lw	s0,24(sp)
 8cc:	27bd0020 	addiu	sp,sp,32
 8d0:	03e00008 	jr	ra
 8d4:	00000000 	nop

000008d8 <func_80B07E18>:
 8d8:	27bdffe0 	addiu	sp,sp,-32
 8dc:	afbf001c 	sw	ra,28(sp)
 8e0:	afb00018 	sw	s0,24(sp)
 8e4:	00808025 	move	s0,a0
 8e8:	0c000000 	jal	0 <func_80B07540>
 8ec:	afa50024 	sw	a1,36(sp)
 8f0:	10400007 	beqz	v0,910 <func_80B07E18+0x38>
 8f4:	3c0e0000 	lui	t6,0x0
 8f8:	3c050000 	lui	a1,0x0
 8fc:	24a50000 	addiu	a1,a1,0
 900:	0c000000 	jal	0 <func_80B07540>
 904:	02002025 	move	a0,s0
 908:	10000015 	b	960 <func_80B07E18+0x88>
 90c:	02002025 	move	a0,s0
 910:	85ce00d0 	lh	t6,208(t6)
 914:	240f0020 	li	t7,32
 918:	2418001f 	li	t8,31
 91c:	29c10032 	slti	at,t6,50
 920:	10200003 	beqz	at,930 <func_80B07E18+0x58>
 924:	02002025 	move	a0,s0
 928:	10000002 	b	934 <func_80B07E18+0x5c>
 92c:	a60f010e 	sh	t7,270(s0)
 930:	a618010e 	sh	t8,270(s0)
 934:	3c0142c8 	lui	at,0x42c8
 938:	44810000 	mtc1	at,$f0
 93c:	c6040090 	lwc1	$f4,144(s0)
 940:	4600203c 	c.lt.s	$f4,$f0
 944:	00000000 	nop
 948:	45020005 	bc1fl	960 <func_80B07E18+0x88>
 94c:	02002025 	move	a0,s0
 950:	44060000 	mfc1	a2,$f0
 954:	0c000000 	jal	0 <func_80B07540>
 958:	8fa50024 	lw	a1,36(sp)
 95c:	02002025 	move	a0,s0
 960:	0c000000 	jal	0 <func_80B07540>
 964:	8fa50024 	lw	a1,36(sp)
 968:	8fbf001c 	lw	ra,28(sp)
 96c:	8fb00018 	lw	s0,24(sp)
 970:	27bd0020 	addiu	sp,sp,32
 974:	03e00008 	jr	ra
 978:	00000000 	nop

0000097c <EnSth_Update>:
 97c:	27bdffe8 	addiu	sp,sp,-24
 980:	afbf0014 	sw	ra,20(sp)
 984:	8c9902b8 	lw	t9,696(a0)
 988:	0320f809 	jalr	t9
 98c:	00000000 	nop
 990:	8fbf0014 	lw	ra,20(sp)
 994:	27bd0018 	addiu	sp,sp,24
 998:	03e00008 	jr	ra
 99c:	00000000 	nop

000009a0 <func_80B07EE0>:
 9a0:	27bdffc8 	addiu	sp,sp,-56
 9a4:	afb00020 	sw	s0,32(sp)
 9a8:	00808025 	move	s0,a0
 9ac:	afbf0024 	sw	ra,36(sp)
 9b0:	afa5003c 	sw	a1,60(sp)
 9b4:	2606014c 	addiu	a2,s0,332
 9b8:	00c02825 	move	a1,a2
 9bc:	0c000000 	jal	0 <func_80B07540>
 9c0:	afa60028 	sw	a2,40(sp)
 9c4:	8fa4003c 	lw	a0,60(sp)
 9c8:	3c010001 	lui	at,0x1
 9cc:	34211e60 	ori	at,at,0x1e60
 9d0:	8fa60028 	lw	a2,40(sp)
 9d4:	0c000000 	jal	0 <func_80B07540>
 9d8:	00812821 	addu	a1,a0,at
 9dc:	0c000000 	jal	0 <func_80B07540>
 9e0:	02002025 	move	a0,s0
 9e4:	44800000 	mtc1	zero,$f0
 9e8:	240e0004 	li	t6,4
 9ec:	afae0014 	sw	t6,20(sp)
 9f0:	44060000 	mfc1	a2,$f0
 9f4:	44070000 	mfc1	a3,$f0
 9f8:	8fa4003c 	lw	a0,60(sp)
 9fc:	02002825 	move	a1,s0
 a00:	0c000000 	jal	0 <func_80B07540>
 a04:	e7a00010 	swc1	$f0,16(sp)
 a08:	0c000000 	jal	0 <func_80B07540>
 a0c:	26040198 	addiu	a0,s0,408
 a10:	50400005 	beqzl	v0,a28 <func_80B07EE0+0x88>
 a14:	8e1902b8 	lw	t9,696(s0)
 a18:	44802000 	mtc1	zero,$f4
 a1c:	00000000 	nop
 a20:	e60401b0 	swc1	$f4,432(s0)
 a24:	8e1902b8 	lw	t9,696(s0)
 a28:	02002025 	move	a0,s0
 a2c:	8fa5003c 	lw	a1,60(sp)
 a30:	0320f809 	jalr	t9
 a34:	00000000 	nop
 a38:	860302b6 	lh	v1,694(s0)
 a3c:	2404003c 	li	a0,60
 a40:	14600003 	bnez	v1,a50 <func_80B07EE0+0xb0>
 a44:	246fffff 	addiu	t7,v1,-1
 a48:	10000004 	b	a5c <func_80B07EE0+0xbc>
 a4c:	00001025 	move	v0,zero
 a50:	a60f02b6 	sh	t7,694(s0)
 a54:	860302b6 	lh	v1,694(s0)
 a58:	00601025 	move	v0,v1
 a5c:	54400006 	bnezl	v0,a78 <func_80B07EE0+0xd8>
 a60:	a60302b4 	sh	v1,692(s0)
 a64:	0c000000 	jal	0 <func_80B07540>
 a68:	2405003c 	li	a1,60
 a6c:	a60202b6 	sh	v0,694(s0)
 a70:	860302b6 	lh	v1,694(s0)
 a74:	a60302b4 	sh	v1,692(s0)
 a78:	861802b4 	lh	t8,692(s0)
 a7c:	2b010003 	slti	at,t8,3
 a80:	54200003 	bnezl	at,a90 <func_80B07EE0+0xf0>
 a84:	8fbf0024 	lw	ra,36(sp)
 a88:	a60002b4 	sh	zero,692(s0)
 a8c:	8fbf0024 	lw	ra,36(sp)
 a90:	8fb00020 	lw	s0,32(sp)
 a94:	27bd0038 	addiu	sp,sp,56
 a98:	03e00008 	jr	ra
 a9c:	00000000 	nop

00000aa0 <func_80B07FE0>:
 aa0:	27bdffd8 	addiu	sp,sp,-40
 aa4:	2401000f 	li	at,15
 aa8:	afbf0014 	sw	ra,20(sp)
 aac:	afa40028 	sw	a0,40(sp)
 ab0:	14a1000e 	bne	a1,at,aec <func_80B07FE0+0x4c>
 ab4:	afa70034 	sw	a3,52(sp)
 ab8:	8fa20038 	lw	v0,56(sp)
 abc:	8fa3003c 	lw	v1,60(sp)
 ac0:	3c0a0000 	lui	t2,0x0
 ac4:	844e0000 	lh	t6,0(v0)
 ac8:	846f02a8 	lh	t7,680(v1)
 acc:	84590004 	lh	t9,4(v0)
 ad0:	254a0000 	addiu	t2,t2,0
 ad4:	01cfc021 	addu	t8,t6,t7
 ad8:	a4580000 	sh	t8,0(v0)
 adc:	846802a6 	lh	t0,678(v1)
 ae0:	03284821 	addu	t1,t9,t0
 ae4:	a4490004 	sh	t1,4(v0)
 ae8:	acca0000 	sw	t2,0(a2)
 aec:	8fa3003c 	lw	v1,60(sp)
 af0:	00001025 	move	v0,zero
 af4:	24010008 	li	at,8
 af8:	946402b2 	lhu	a0,690(v1)
 afc:	308b0002 	andi	t3,a0,0x2
 b00:	11600003 	beqz	t3,b10 <func_80B07FE0+0x70>
 b04:	308cfffd 	andi	t4,a0,0xfffd
 b08:	10000038 	b	bec <func_80B07FE0+0x14c>
 b0c:	a46c02b2 	sh	t4,690(v1)
 b10:	10a10006 	beq	a1,at,b2c <func_80B07FE0+0x8c>
 b14:	00051880 	sll	v1,a1,0x2
 b18:	2401000a 	li	at,10
 b1c:	10a10003 	beq	a1,at,b2c <func_80B07FE0+0x8c>
 b20:	2401000d 	li	at,13
 b24:	54a10031 	bnel	a1,at,bec <func_80B07FE0+0x14c>
 b28:	00001025 	move	v0,zero
 b2c:	8fad0028 	lw	t5,40(sp)
 b30:	00651823 	subu	v1,v1,a1
 b34:	000318c0 	sll	v1,v1,0x3
 b38:	8dae009c 	lw	t6,156(t5)
 b3c:	00651821 	addu	v1,v1,a1
 b40:	00031840 	sll	v1,v1,0x1
 b44:	246f0814 	addiu	t7,v1,2068
 b48:	01cf0019 	multu	t6,t7
 b4c:	afa30018 	sw	v1,24(sp)
 b50:	00002012 	mflo	a0
 b54:	00042400 	sll	a0,a0,0x10
 b58:	0c000000 	jal	0 <func_80B07540>
 b5c:	00042403 	sra	a0,a0,0x10
 b60:	8fa20038 	lw	v0,56(sp)
 b64:	3c014348 	lui	at,0x4348
 b68:	44814000 	mtc1	at,$f8
 b6c:	84580002 	lh	t8,2(v0)
 b70:	8fa30018 	lw	v1,24(sp)
 b74:	46080282 	mul.s	$f10,$f0,$f8
 b78:	44982000 	mtc1	t8,$f4
 b7c:	246b0940 	addiu	t3,v1,2368
 b80:	468021a0 	cvt.s.w	$f6,$f4
 b84:	460a3400 	add.s	$f16,$f6,$f10
 b88:	4600848d 	trunc.w.s	$f18,$f16
 b8c:	44089000 	mfc1	t0,$f18
 b90:	00000000 	nop
 b94:	a4480002 	sh	t0,2(v0)
 b98:	8fa90028 	lw	t1,40(sp)
 b9c:	8d2a009c 	lw	t2,156(t1)
 ba0:	014b0019 	multu	t2,t3
 ba4:	00002012 	mflo	a0
 ba8:	00042400 	sll	a0,a0,0x10
 bac:	0c000000 	jal	0 <func_80B07540>
 bb0:	00042403 	sra	a0,a0,0x10
 bb4:	8fa20038 	lw	v0,56(sp)
 bb8:	3c014348 	lui	at,0x4348
 bbc:	44813000 	mtc1	at,$f6
 bc0:	844c0004 	lh	t4,4(v0)
 bc4:	46060282 	mul.s	$f10,$f0,$f6
 bc8:	448c2000 	mtc1	t4,$f4
 bcc:	00000000 	nop
 bd0:	46802220 	cvt.s.w	$f8,$f4
 bd4:	460a4400 	add.s	$f16,$f8,$f10
 bd8:	4600848d 	trunc.w.s	$f18,$f16
 bdc:	440e9000 	mfc1	t6,$f18
 be0:	00000000 	nop
 be4:	a44e0004 	sh	t6,4(v0)
 be8:	00001025 	move	v0,zero
 bec:	8fbf0014 	lw	ra,20(sp)
 bf0:	27bd0028 	addiu	sp,sp,40
 bf4:	03e00008 	jr	ra
 bf8:	00000000 	nop

00000bfc <func_80B0813C>:
 bfc:	27bdffc8 	addiu	sp,sp,-56
 c00:	2401000f 	li	at,15
 c04:	afbf0014 	sw	ra,20(sp)
 c08:	afa40038 	sw	a0,56(sp)
 c0c:	afa60040 	sw	a2,64(sp)
 c10:	14a10022 	bne	a1,at,c9c <func_80B0813C+0xa0>
 c14:	afa70044 	sw	a3,68(sp)
 c18:	8fa50048 	lw	a1,72(sp)
 c1c:	3c040000 	lui	a0,0x0
 c20:	24840000 	addiu	a0,a0,0
 c24:	0c000000 	jal	0 <func_80B07540>
 c28:	24a50038 	addiu	a1,a1,56
 c2c:	8fae0048 	lw	t6,72(sp)
 c30:	3c060000 	lui	a2,0x0
 c34:	24c60000 	addiu	a2,a2,0
 c38:	85cf001c 	lh	t7,28(t6)
 c3c:	8fb80038 	lw	t8,56(sp)
 c40:	27a40020 	addiu	a0,sp,32
 c44:	51e00016 	beqzl	t7,ca0 <func_80B0813C+0xa4>
 c48:	8fbf0014 	lw	ra,20(sp)
 c4c:	8f050000 	lw	a1,0(t8)
 c50:	2407081f 	li	a3,2079
 c54:	0c000000 	jal	0 <func_80B07540>
 c58:	afa50030 	sw	a1,48(sp)
 c5c:	8fa80030 	lw	t0,48(sp)
 c60:	3c0a0000 	lui	t2,0x0
 c64:	254a0000 	addiu	t2,t2,0
 c68:	8d0302c0 	lw	v1,704(t0)
 c6c:	3c09de00 	lui	t1,0xde00
 c70:	3c060000 	lui	a2,0x0
 c74:	24790008 	addiu	t9,v1,8
 c78:	ad1902c0 	sw	t9,704(t0)
 c7c:	ac6a0004 	sw	t2,4(v1)
 c80:	ac690000 	sw	t1,0(v1)
 c84:	8fab0038 	lw	t3,56(sp)
 c88:	24c60000 	addiu	a2,a2,0
 c8c:	27a40020 	addiu	a0,sp,32
 c90:	24070821 	li	a3,2081
 c94:	0c000000 	jal	0 <func_80B07540>
 c98:	8d650000 	lw	a1,0(t3)
 c9c:	8fbf0014 	lw	ra,20(sp)
 ca0:	27bd0038 	addiu	sp,sp,56
 ca4:	03e00008 	jr	ra
 ca8:	00000000 	nop

00000cac <func_80B081EC>:
 cac:	27bdffe8 	addiu	sp,sp,-24
 cb0:	afbf0014 	sw	ra,20(sp)
 cb4:	afa5001c 	sw	a1,28(sp)
 cb8:	afa60020 	sw	a2,32(sp)
 cbc:	afa70024 	sw	a3,36(sp)
 cc0:	0c000000 	jal	0 <func_80B07540>
 cc4:	24050010 	li	a1,16
 cc8:	3c0efb00 	lui	t6,0xfb00
 ccc:	ac4e0000 	sw	t6,0(v0)
 cd0:	93a90023 	lbu	t1,35(sp)
 cd4:	93b8001f 	lbu	t8,31(sp)
 cd8:	93ad0027 	lbu	t5,39(sp)
 cdc:	93a8002b 	lbu	t0,43(sp)
 ce0:	00095400 	sll	t2,t1,0x10
 ce4:	0018ce00 	sll	t9,t8,0x18
 ce8:	032a5825 	or	t3,t9,t2
 cec:	000d7200 	sll	t6,t5,0x8
 cf0:	016e7825 	or	t7,t3,t6
 cf4:	3c19df00 	lui	t9,0xdf00
 cf8:	01e84825 	or	t1,t7,t0
 cfc:	ac490004 	sw	t1,4(v0)
 d00:	ac590008 	sw	t9,8(v0)
 d04:	ac40000c 	sw	zero,12(v0)
 d08:	8fbf0014 	lw	ra,20(sp)
 d0c:	27bd0018 	addiu	sp,sp,24
 d10:	03e00008 	jr	ra
 d14:	00000000 	nop

00000d18 <func_80B08258>:
 d18:	27bdff98 	addiu	sp,sp,-104
 d1c:	afb1002c 	sw	s1,44(sp)
 d20:	00a08825 	move	s1,a1
 d24:	afbf0034 	sw	ra,52(sp)
 d28:	afb20030 	sw	s2,48(sp)
 d2c:	afb00028 	sw	s0,40(sp)
 d30:	8ca50000 	lw	a1,0(a1)
 d34:	00809025 	move	s2,a0
 d38:	3c060000 	lui	a2,0x0
 d3c:	24c60000 	addiu	a2,a2,0
 d40:	27a4004c 	addiu	a0,sp,76
 d44:	24070855 	li	a3,2133
 d48:	0c000000 	jal	0 <func_80B07540>
 d4c:	00a08025 	move	s0,a1
 d50:	924e02a4 	lbu	t6,676(s2)
 d54:	3c190001 	lui	t9,0x1
 d58:	3c018000 	lui	at,0x8000
 d5c:	000e7900 	sll	t7,t6,0x4
 d60:	01ee7821 	addu	t7,t7,t6
 d64:	000f7880 	sll	t7,t7,0x2
 d68:	022fc021 	addu	t8,s1,t7
 d6c:	0338c821 	addu	t9,t9,t8
 d70:	8f3917b4 	lw	t9,6068(t9)
 d74:	03214821 	addu	t1,t9,at
 d78:	3c010000 	lui	at,0x0
 d7c:	ac290018 	sw	t1,24(at)
 d80:	0c000000 	jal	0 <func_80B07540>
 d84:	8e240000 	lw	a0,0(s1)
 d88:	8e0202c0 	lw	v0,704(s0)
 d8c:	3c0bdb06 	lui	t3,0xdb06
 d90:	356b0020 	ori	t3,t3,0x20
 d94:	244a0008 	addiu	t2,v0,8
 d98:	ae0a02c0 	sw	t2,704(s0)
 d9c:	ac4b0000 	sw	t3,0(v0)
 da0:	864c001c 	lh	t4,28(s2)
 da4:	3c0e0000 	lui	t6,0x0
 da8:	25ce0000 	addiu	t6,t6,0
 dac:	000c6880 	sll	t5,t4,0x2
 db0:	01ac6823 	subu	t5,t5,t4
 db4:	01ae1821 	addu	v1,t5,t6
 db8:	8e240000 	lw	a0,0(s1)
 dbc:	240f00ff 	li	t7,255
 dc0:	afaf0010 	sw	t7,16(sp)
 dc4:	90650000 	lbu	a1,0(v1)
 dc8:	90660001 	lbu	a2,1(v1)
 dcc:	90670002 	lbu	a3,2(v1)
 dd0:	0c000000 	jal	0 <func_80B07540>
 dd4:	afa20048 	sw	v0,72(sp)
 dd8:	8fa80048 	lw	t0,72(sp)
 ddc:	3c0cdb06 	lui	t4,0xdb06
 de0:	3c09db06 	lui	t1,0xdb06
 de4:	ad020004 	sw	v0,4(t0)
 de8:	8658001c 	lh	t8,28(s2)
 dec:	358c0024 	ori	t4,t4,0x24
 df0:	2405005a 	li	a1,90
 df4:	17000011 	bnez	t8,e3c <func_80B08258+0x124>
 df8:	2406006e 	li	a2,110
 dfc:	8e0202c0 	lw	v0,704(s0)
 e00:	35290024 	ori	t1,t1,0x24
 e04:	240a00ff 	li	t2,255
 e08:	24590008 	addiu	t9,v0,8
 e0c:	ae1902c0 	sw	t9,704(s0)
 e10:	ac490000 	sw	t1,0(v0)
 e14:	8e240000 	lw	a0,0(s1)
 e18:	afaa0010 	sw	t2,16(sp)
 e1c:	240500be 	li	a1,190
 e20:	2406006e 	li	a2,110
 e24:	00003825 	move	a3,zero
 e28:	0c000000 	jal	0 <func_80B07540>
 e2c:	afa20044 	sw	v0,68(sp)
 e30:	8fa30044 	lw	v1,68(sp)
 e34:	1000000d 	b	e6c <func_80B08258+0x154>
 e38:	ac620004 	sw	v0,4(v1)
 e3c:	8e0202c0 	lw	v0,704(s0)
 e40:	240d00ff 	li	t5,255
 e44:	24070082 	li	a3,130
 e48:	244b0008 	addiu	t3,v0,8
 e4c:	ae0b02c0 	sw	t3,704(s0)
 e50:	ac4c0000 	sw	t4,0(v0)
 e54:	8e240000 	lw	a0,0(s1)
 e58:	afad0010 	sw	t5,16(sp)
 e5c:	0c000000 	jal	0 <func_80B07540>
 e60:	afa20040 	sw	v0,64(sp)
 e64:	8fa30040 	lw	v1,64(sp)
 e68:	ac620004 	sw	v0,4(v1)
 e6c:	8e45019c 	lw	a1,412(s2)
 e70:	8e4601b8 	lw	a2,440(s2)
 e74:	9247019a 	lbu	a3,410(s2)
 e78:	3c0e0000 	lui	t6,0x0
 e7c:	3c0f0000 	lui	t7,0x0
 e80:	25ef0000 	addiu	t7,t7,0
 e84:	25ce0000 	addiu	t6,t6,0
 e88:	afae0010 	sw	t6,16(sp)
 e8c:	afaf0014 	sw	t7,20(sp)
 e90:	afb20018 	sw	s2,24(sp)
 e94:	0c000000 	jal	0 <func_80B07540>
 e98:	02202025 	move	a0,s1
 e9c:	3c060000 	lui	a2,0x0
 ea0:	24c60000 	addiu	a2,a2,0
 ea4:	27a4004c 	addiu	a0,sp,76
 ea8:	8e250000 	lw	a1,0(s1)
 eac:	0c000000 	jal	0 <func_80B07540>
 eb0:	24070880 	li	a3,2176
 eb4:	8fbf0034 	lw	ra,52(sp)
 eb8:	8fb00028 	lw	s0,40(sp)
 ebc:	8fb1002c 	lw	s1,44(sp)
 ec0:	8fb20030 	lw	s2,48(sp)
 ec4:	03e00008 	jr	ra
 ec8:	27bd0068 	addiu	sp,sp,104
 ecc:	00000000 	nop
