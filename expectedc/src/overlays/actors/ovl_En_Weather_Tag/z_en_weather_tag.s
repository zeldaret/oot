
build/src/overlays/actors/ovl_En_Weather_Tag/z_en_weather_tag.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnWeatherTag_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <EnWeatherTag_Destroy>:
   8:	afa40000 	sw	a0,0(sp)
   c:	03e00008 	jr	ra
  10:	afa50004 	sw	a1,4(sp)

00000014 <EnWeatherTag_Init>:
  14:	27bdffe0 	addiu	sp,sp,-32
  18:	afbf001c 	sw	ra,28(sp)
  1c:	afb00018 	sw	s0,24(sp)
  20:	afa50024 	sw	a1,36(sp)
  24:	8c8e0004 	lw	t6,4(a0)
  28:	8498001c 	lh	t8,28(a0)
  2c:	2401fffe 	li	at,-2
  30:	01c17824 	and	t7,t6,at
  34:	3319000f 	andi	t9,t8,0xf
  38:	2f210008 	sltiu	at,t9,8
  3c:	00808025 	move	s0,a0
  40:	10200094 	beqz	at,294 <EnWeatherTag_Init+0x280>
  44:	ac8f0004 	sw	t7,4(a0)
  48:	0019c880 	sll	t9,t9,0x2
  4c:	3c010000 	lui	at,0x0
  50:	00390821 	addu	at,at,t9
  54:	8c390214 	lw	t9,532(at)
  58:	03200008 	jr	t9
  5c:	00000000 	nop
  60:	3c040000 	lui	a0,0x0
  64:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  68:	24840000 	addiu	a0,a0,0
  6c:	3c040000 	lui	a0,0x0
  70:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  74:	24840004 	addiu	a0,a0,4
  78:	3c050000 	lui	a1,0x0
  7c:	24a50000 	addiu	a1,a1,0
  80:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  84:	02002025 	move	a0,s0
  88:	10000083 	b	298 <EnWeatherTag_Init+0x284>
  8c:	8fbf001c 	lw	ra,28(sp)
  90:	3c040000 	lui	a0,0x0
  94:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  98:	24840038 	addiu	a0,a0,56
  9c:	3c040000 	lui	a0,0x0
  a0:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  a4:	2484003c 	addiu	a0,a0,60
  a8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  ac:	24040018 	li	a0,24
  b0:	10400003 	beqz	v0,c0 <EnWeatherTag_Init+0xac>
  b4:	00000000 	nop
  b8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  bc:	02002025 	move	a0,s0
  c0:	3c050000 	lui	a1,0x0
  c4:	24a50000 	addiu	a1,a1,0
  c8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  cc:	02002025 	move	a0,s0
  d0:	10000071 	b	298 <EnWeatherTag_Init+0x284>
  d4:	8fbf001c 	lw	ra,28(sp)
  d8:	3c040000 	lui	a0,0x0
  dc:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  e0:	24840078 	addiu	a0,a0,120
  e4:	3c040000 	lui	a0,0x0
  e8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
  ec:	2484007c 	addiu	a0,a0,124
  f0:	3c030000 	lui	v1,0x0
  f4:	24630000 	addiu	v1,v1,0
  f8:	94680edc 	lhu	t0,3804(v1)
  fc:	31090400 	andi	t1,t0,0x400
 100:	11200003 	beqz	t1,110 <EnWeatherTag_Init+0xfc>
 104:	00000000 	nop
 108:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 10c:	02002025 	move	a0,s0
 110:	3c050000 	lui	a1,0x0
 114:	24a50000 	addiu	a1,a1,0
 118:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 11c:	02002025 	move	a0,s0
 120:	1000005d 	b	298 <EnWeatherTag_Init+0x284>
 124:	8fbf001c 	lw	ra,28(sp)
 128:	3c040000 	lui	a0,0x0
 12c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 130:	248400c0 	addiu	a0,a0,192
 134:	3c040000 	lui	a0,0x0
 138:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 13c:	248400c4 	addiu	a0,a0,196
 140:	3c030000 	lui	v1,0x0
 144:	24630000 	addiu	v1,v1,0
 148:	946a0edc 	lhu	t2,3804(v1)
 14c:	314b0400 	andi	t3,t2,0x400
 150:	11600003 	beqz	t3,160 <EnWeatherTag_Init+0x14c>
 154:	00000000 	nop
 158:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 15c:	02002025 	move	a0,s0
 160:	3c050000 	lui	a1,0x0
 164:	24a50000 	addiu	a1,a1,0
 168:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 16c:	02002025 	move	a0,s0
 170:	10000049 	b	298 <EnWeatherTag_Init+0x284>
 174:	8fbf001c 	lw	ra,28(sp)
 178:	3c040000 	lui	a0,0x0
 17c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 180:	2484010c 	addiu	a0,a0,268
 184:	3c040000 	lui	a0,0x0
 188:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 18c:	24840110 	addiu	a0,a0,272
 190:	3c030000 	lui	v1,0x0
 194:	24630000 	addiu	v1,v1,0
 198:	946c0edc 	lhu	t4,3804(v1)
 19c:	318d0200 	andi	t5,t4,0x200
 1a0:	11a00003 	beqz	t5,1b0 <EnWeatherTag_Init+0x19c>
 1a4:	00000000 	nop
 1a8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 1ac:	02002025 	move	a0,s0
 1b0:	3c050000 	lui	a1,0x0
 1b4:	24a50000 	addiu	a1,a1,0
 1b8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 1bc:	02002025 	move	a0,s0
 1c0:	10000035 	b	298 <EnWeatherTag_Init+0x284>
 1c4:	8fbf001c 	lw	ra,28(sp)
 1c8:	3c040000 	lui	a0,0x0
 1cc:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 1d0:	2484014c 	addiu	a0,a0,332
 1d4:	3c040000 	lui	a0,0x0
 1d8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 1dc:	24840150 	addiu	a0,a0,336
 1e0:	3c030000 	lui	v1,0x0
 1e4:	24630000 	addiu	v1,v1,0
 1e8:	94620edc 	lhu	v0,3804(v1)
 1ec:	304e0100 	andi	t6,v0,0x100
 1f0:	11c0000a 	beqz	t6,21c <EnWeatherTag_Init+0x208>
 1f4:	304f0200 	andi	t7,v0,0x200
 1f8:	11e00008 	beqz	t7,21c <EnWeatherTag_Init+0x208>
 1fc:	30580400 	andi	t8,v0,0x400
 200:	13000006 	beqz	t8,21c <EnWeatherTag_Init+0x208>
 204:	3c190000 	lui	t9,0x0
 208:	8f390010 	lw	t9,16(t9)
 20c:	8c6800a4 	lw	t0,164(v1)
 210:	03284824 	and	t1,t9,t0
 214:	11200003 	beqz	t1,224 <EnWeatherTag_Init+0x210>
 218:	00000000 	nop
 21c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 220:	02002025 	move	a0,s0
 224:	3c050000 	lui	a1,0x0
 228:	24a50000 	addiu	a1,a1,0
 22c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 230:	02002025 	move	a0,s0
 234:	10000018 	b	298 <EnWeatherTag_Init+0x284>
 238:	8fbf001c 	lw	ra,28(sp)
 23c:	3c040000 	lui	a0,0x0
 240:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 244:	24840190 	addiu	a0,a0,400
 248:	3c040000 	lui	a0,0x0
 24c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 250:	24840194 	addiu	a0,a0,404
 254:	3c050000 	lui	a1,0x0
 258:	24a50000 	addiu	a1,a1,0
 25c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 260:	02002025 	move	a0,s0
 264:	1000000c 	b	298 <EnWeatherTag_Init+0x284>
 268:	8fbf001c 	lw	ra,28(sp)
 26c:	3c040000 	lui	a0,0x0
 270:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 274:	248401c8 	addiu	a0,a0,456
 278:	3c040000 	lui	a0,0x0
 27c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 280:	248401cc 	addiu	a0,a0,460
 284:	3c050000 	lui	a1,0x0
 288:	24a50000 	addiu	a1,a1,0
 28c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 290:	02002025 	move	a0,s0
 294:	8fbf001c 	lw	ra,28(sp)
 298:	8fb00018 	lw	s0,24(sp)
 29c:	27bd0020 	addiu	sp,sp,32
 2a0:	03e00008 	jr	ra
 2a4:	00000000 	nop

000002a8 <func_80B312C8>:
 2a8:	27bdffd8 	addiu	sp,sp,-40
 2ac:	afb00018 	sw	s0,24(sp)
 2b0:	afbf001c 	sw	ra,28(sp)
 2b4:	afa40028 	sw	a0,40(sp)
 2b8:	afa60030 	sw	a2,48(sp)
 2bc:	afa70034 	sw	a3,52(sp)
 2c0:	00a08025 	move	s0,a1
 2c4:	8ca41c44 	lw	a0,7236(a1)
 2c8:	a3a00023 	sb	zero,35(sp)
 2cc:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 2d0:	8fa50028 	lw	a1,40(sp)
 2d4:	8fae0028 	lw	t6,40(sp)
 2d8:	3c0142c8 	lui	at,0x42c8
 2dc:	44814000 	mtc1	at,$f8
 2e0:	85cf001c 	lh	t7,28(t6)
 2e4:	3c010001 	lui	at,0x1
 2e8:	93a30023 	lbu	v1,35(sp)
 2ec:	000fc203 	sra	t8,t7,0x8
 2f0:	44982000 	mtc1	t8,$f4
 2f4:	02011021 	addu	v0,s0,at
 2f8:	468021a0 	cvt.s.w	$f6,$f4
 2fc:	46083282 	mul.s	$f10,$f6,$f8
 300:	460a003c 	c.lt.s	$f0,$f10
 304:	00000000 	nop
 308:	45020058 	bc1fl	46c <func_80B312C8+0x1c4>
 30c:	8fbf001c 	lw	ra,28(sp)
 310:	90590a42 	lbu	t9,2626(v0)
 314:	3c080000 	lui	t0,0x0
 318:	24050001 	li	a1,1
 31c:	1720000c 	bnez	t9,350 <func_80B312C8+0xa8>
 320:	3c060000 	lui	a2,0x0
 324:	91080000 	lbu	t0,0(t0)
 328:	11000009 	beqz	t0,350 <func_80B312C8+0xa8>
 32c:	00000000 	nop
 330:	90491e14 	lbu	t1,7700(v0)
 334:	24010001 	li	at,1
 338:	3c0c0000 	lui	t4,0x0
 33c:	11210042 	beq	t1,at,448 <func_80B312C8+0x1a0>
 340:	00000000 	nop
 344:	904a0a44 	lbu	t2,2628(v0)
 348:	904b0a43 	lbu	t3,2627(v0)
 34c:	154b003e 	bne	t2,t3,448 <func_80B312C8+0x1a0>
 350:	24c60000 	addiu	a2,a2,0
 354:	a0c50000 	sb	a1,0(a2)
 358:	904c0b01 	lbu	t4,2817(v0)
 35c:	55800043 	bnezl	t4,46c <func_80B312C8+0x1c4>
 360:	8fbf001c 	lw	ra,28(sp)
 364:	904d0a42 	lbu	t5,2626(v0)
 368:	3c040000 	lui	a0,0x0
 36c:	24840000 	addiu	a0,a0,0
 370:	55a00009 	bnezl	t5,398 <func_80B312C8+0xf0>
 374:	93a30047 	lbu	v1,71(sp)
 378:	904e0a43 	lbu	t6,2627(v0)
 37c:	24010001 	li	at,1
 380:	51c1003a 	beql	t6,at,46c <func_80B312C8+0x1c4>
 384:	8fbf001c 	lw	ra,28(sp)
 388:	904f0a45 	lbu	t7,2629(v0)
 38c:	55e00037 	bnezl	t7,46c <func_80B312C8+0x1c4>
 390:	8fbf001c 	lw	ra,28(sp)
 394:	93a30047 	lbu	v1,71(sp)
 398:	90980000 	lbu	t8,0(a0)
 39c:	a0c00000 	sb	zero,0(a2)
 3a0:	10780027 	beq	v1,t8,440 <func_80B312C8+0x198>
 3a4:	00000000 	nop
 3a8:	a0830000 	sb	v1,0(a0)
 3ac:	90590b01 	lbu	t9,2817(v0)
 3b0:	93a4003f 	lbu	a0,63(sp)
 3b4:	97a30042 	lhu	v1,66(sp)
 3b8:	17200021 	bnez	t9,440 <func_80B312C8+0x198>
 3bc:	3c010001 	lui	at,0x1
 3c0:	00300821 	addu	at,at,s0
 3c4:	a0250a3d 	sb	a1,2621(at)
 3c8:	93a80033 	lbu	t0,51(sp)
 3cc:	3c010001 	lui	at,0x1
 3d0:	00300821 	addu	at,at,s0
 3d4:	a0280a3b 	sb	t0,2619(at)
 3d8:	93a90037 	lbu	t1,55(sp)
 3dc:	3c010001 	lui	at,0x1
 3e0:	00300821 	addu	at,at,s0
 3e4:	a0290a3c 	sb	t1,2620(at)
 3e8:	3c010001 	lui	at,0x1
 3ec:	00300821 	addu	at,at,s0
 3f0:	a4230a3e 	sh	v1,2622(at)
 3f4:	3c010001 	lui	at,0x1
 3f8:	00300821 	addu	at,at,s0
 3fc:	a0250a45 	sb	a1,2629(at)
 400:	93aa003b 	lbu	t2,59(sp)
 404:	3c010001 	lui	at,0x1
 408:	00300821 	addu	at,at,s0
 40c:	a02a0a43 	sb	t2,2627(at)
 410:	3c010001 	lui	at,0x1
 414:	00300821 	addu	at,at,s0
 418:	a0240a44 	sb	a0,2628(at)
 41c:	3c010000 	lui	at,0x0
 420:	a0240000 	sb	a0,0(at)
 424:	3c010001 	lui	at,0x1
 428:	00300821 	addu	at,at,s0
 42c:	a4230a48 	sh	v1,2632(at)
 430:	944b0a48 	lhu	t3,2632(v0)
 434:	3c010001 	lui	at,0x1
 438:	00300821 	addu	at,at,s0
 43c:	a42b0a46 	sh	t3,2630(at)
 440:	10000009 	b	468 <func_80B312C8+0x1c0>
 444:	24030001 	li	v1,1
 448:	958c0000 	lhu	t4,0(t4)
 44c:	3c020000 	lui	v0,0x0
 450:	24420000 	addiu	v0,v0,0
 454:	51800005 	beqzl	t4,46c <func_80B312C8+0x1c4>
 458:	8fbf001c 	lw	ra,28(sp)
 45c:	944d000c 	lhu	t5,12(v0)
 460:	25ae0014 	addiu	t6,t5,20
 464:	a44e000c 	sh	t6,12(v0)
 468:	8fbf001c 	lw	ra,28(sp)
 46c:	8fb00018 	lw	s0,24(sp)
 470:	27bd0028 	addiu	sp,sp,40
 474:	03e00008 	jr	ra
 478:	00601025 	move	v0,v1

0000047c <func_80B3149C>:
 47c:	27bdffd8 	addiu	sp,sp,-40
 480:	afb00018 	sw	s0,24(sp)
 484:	afbf001c 	sw	ra,28(sp)
 488:	afa40028 	sw	a0,40(sp)
 48c:	afa60030 	sw	a2,48(sp)
 490:	afa70034 	sw	a3,52(sp)
 494:	00a08025 	move	s0,a1
 498:	8ca41c44 	lw	a0,7236(a1)
 49c:	a3a00023 	sb	zero,35(sp)
 4a0:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 4a4:	8fa50028 	lw	a1,40(sp)
 4a8:	8fae0028 	lw	t6,40(sp)
 4ac:	3c0142c8 	lui	at,0x42c8
 4b0:	44811000 	mtc1	at,$f2
 4b4:	85cf001c 	lh	t7,28(t6)
 4b8:	3c010001 	lui	at,0x1
 4bc:	93a80023 	lbu	t0,35(sp)
 4c0:	000fc203 	sra	t8,t7,0x8
 4c4:	44982000 	mtc1	t8,$f4
 4c8:	02011021 	addu	v0,s0,at
 4cc:	468021a0 	cvt.s.w	$f6,$f4
 4d0:	46023202 	mul.s	$f8,$f6,$f2
 4d4:	46024280 	add.s	$f10,$f8,$f2
 4d8:	4600503c 	c.lt.s	$f10,$f0
 4dc:	00000000 	nop
 4e0:	45020051 	bc1fl	628 <func_80B3149C+0x1ac>
 4e4:	8fbf001c 	lw	ra,28(sp)
 4e8:	90590a42 	lbu	t9,2626(v0)
 4ec:	3c090000 	lui	t1,0x0
 4f0:	24050001 	li	a1,1
 4f4:	1720000b 	bnez	t9,524 <func_80B3149C+0xa8>
 4f8:	3c060000 	lui	a2,0x0
 4fc:	91290000 	lbu	t1,0(t1)
 500:	11200008 	beqz	t1,524 <func_80B3149C+0xa8>
 504:	00000000 	nop
 508:	904a1e14 	lbu	t2,7700(v0)
 50c:	24010001 	li	at,1
 510:	1141003b 	beq	t2,at,600 <func_80B3149C+0x184>
 514:	00000000 	nop
 518:	904b0a44 	lbu	t3,2628(v0)
 51c:	904c0a43 	lbu	t4,2627(v0)
 520:	156c0037 	bne	t3,t4,600 <func_80B3149C+0x184>
 524:	24c60000 	addiu	a2,a2,0
 528:	a0c50000 	sb	a1,0(a2)
 52c:	904d0b01 	lbu	t5,2817(v0)
 530:	55a0003d 	bnezl	t5,628 <func_80B3149C+0x1ac>
 534:	8fbf001c 	lw	ra,28(sp)
 538:	904e0a42 	lbu	t6,2626(v0)
 53c:	97a30042 	lhu	v1,66(sp)
 540:	93a4003f 	lbu	a0,63(sp)
 544:	55c00009 	bnezl	t6,56c <func_80B3149C+0xf0>
 548:	a0c00000 	sb	zero,0(a2)
 54c:	904f0a43 	lbu	t7,2627(v0)
 550:	24010001 	li	at,1
 554:	51e10034 	beql	t7,at,628 <func_80B3149C+0x1ac>
 558:	8fbf001c 	lw	ra,28(sp)
 55c:	90580a45 	lbu	t8,2629(v0)
 560:	57000031 	bnezl	t8,628 <func_80B3149C+0x1ac>
 564:	8fbf001c 	lw	ra,28(sp)
 568:	a0c00000 	sb	zero,0(a2)
 56c:	3c010000 	lui	at,0x0
 570:	a0200000 	sb	zero,0(at)
 574:	3c010001 	lui	at,0x1
 578:	00300821 	addu	at,at,s0
 57c:	a0250a3d 	sb	a1,2621(at)
 580:	93b90033 	lbu	t9,51(sp)
 584:	3c010001 	lui	at,0x1
 588:	00300821 	addu	at,at,s0
 58c:	a0390a3b 	sb	t9,2619(at)
 590:	93a90037 	lbu	t1,55(sp)
 594:	3c010001 	lui	at,0x1
 598:	00300821 	addu	at,at,s0
 59c:	a0290a3c 	sb	t1,2620(at)
 5a0:	3c010001 	lui	at,0x1
 5a4:	00300821 	addu	at,at,s0
 5a8:	a4230a3e 	sh	v1,2622(at)
 5ac:	3c010001 	lui	at,0x1
 5b0:	00300821 	addu	at,at,s0
 5b4:	a0250a45 	sb	a1,2629(at)
 5b8:	93aa003b 	lbu	t2,59(sp)
 5bc:	3c010001 	lui	at,0x1
 5c0:	00300821 	addu	at,at,s0
 5c4:	a02a0a43 	sb	t2,2627(at)
 5c8:	3c010001 	lui	at,0x1
 5cc:	00300821 	addu	at,at,s0
 5d0:	a0240a44 	sb	a0,2628(at)
 5d4:	3c010000 	lui	at,0x0
 5d8:	a0240000 	sb	a0,0(at)
 5dc:	3c010001 	lui	at,0x1
 5e0:	00300821 	addu	at,at,s0
 5e4:	a4230a48 	sh	v1,2632(at)
 5e8:	944b0a48 	lhu	t3,2632(v0)
 5ec:	3c010001 	lui	at,0x1
 5f0:	00300821 	addu	at,at,s0
 5f4:	30a800ff 	andi	t0,a1,0xff
 5f8:	1000000a 	b	624 <func_80B3149C+0x1a8>
 5fc:	a42b0a46 	sh	t3,2630(at)
 600:	3c0c0000 	lui	t4,0x0
 604:	958c0000 	lhu	t4,0(t4)
 608:	3c020000 	lui	v0,0x0
 60c:	24420000 	addiu	v0,v0,0
 610:	51800005 	beqzl	t4,628 <func_80B3149C+0x1ac>
 614:	8fbf001c 	lw	ra,28(sp)
 618:	944d000c 	lhu	t5,12(v0)
 61c:	25ae0014 	addiu	t6,t5,20
 620:	a44e000c 	sh	t6,12(v0)
 624:	8fbf001c 	lw	ra,28(sp)
 628:	8fb00018 	lw	s0,24(sp)
 62c:	27bd0028 	addiu	sp,sp,40
 630:	03e00008 	jr	ra
 634:	01001025 	move	v0,t0

00000638 <func_80B31658>:
 638:	27bdffd8 	addiu	sp,sp,-40
 63c:	afbf0024 	sw	ra,36(sp)
 640:	240e0003 	li	t6,3
 644:	240f003c 	li	t7,60
 648:	24180001 	li	t8,1
 64c:	afa40028 	sw	a0,40(sp)
 650:	afb8001c 	sw	t8,28(sp)
 654:	afaf0018 	sw	t7,24(sp)
 658:	afae0014 	sw	t6,20(sp)
 65c:	afa00010 	sw	zero,16(sp)
 660:	00003025 	move	a2,zero
 664:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 668:	24070001 	li	a3,1
 66c:	10400004 	beqz	v0,680 <func_80B31658+0x48>
 670:	8fa40028 	lw	a0,40(sp)
 674:	3c050000 	lui	a1,0x0
 678:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 67c:	24a50000 	addiu	a1,a1,0
 680:	8fbf0024 	lw	ra,36(sp)
 684:	27bd0028 	addiu	sp,sp,40
 688:	03e00008 	jr	ra
 68c:	00000000 	nop

00000690 <func_80B316B0>:
 690:	27bdffd8 	addiu	sp,sp,-40
 694:	afbf0024 	sw	ra,36(sp)
 698:	240e0003 	li	t6,3
 69c:	240f003c 	li	t7,60
 6a0:	afa40028 	sw	a0,40(sp)
 6a4:	afaf0018 	sw	t7,24(sp)
 6a8:	afae0010 	sw	t6,16(sp)
 6ac:	afa00014 	sw	zero,20(sp)
 6b0:	24060001 	li	a2,1
 6b4:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 6b8:	00003825 	move	a3,zero
 6bc:	10400004 	beqz	v0,6d0 <func_80B316B0+0x40>
 6c0:	8fa40028 	lw	a0,40(sp)
 6c4:	3c050000 	lui	a1,0x0
 6c8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 6cc:	24a50000 	addiu	a1,a1,0
 6d0:	8fbf0024 	lw	ra,36(sp)
 6d4:	27bd0028 	addiu	sp,sp,40
 6d8:	03e00008 	jr	ra
 6dc:	00000000 	nop

000006e0 <func_80B31700>:
 6e0:	27bdffd8 	addiu	sp,sp,-40
 6e4:	afbf0024 	sw	ra,36(sp)
 6e8:	240e0002 	li	t6,2
 6ec:	240f0064 	li	t7,100
 6f0:	24180002 	li	t8,2
 6f4:	afa40028 	sw	a0,40(sp)
 6f8:	afb8001c 	sw	t8,28(sp)
 6fc:	afaf0018 	sw	t7,24(sp)
 700:	afae0014 	sw	t6,20(sp)
 704:	afa00010 	sw	zero,16(sp)
 708:	00003025 	move	a2,zero
 70c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 710:	24070001 	li	a3,1
 714:	10400004 	beqz	v0,728 <func_80B31700+0x48>
 718:	8fa40028 	lw	a0,40(sp)
 71c:	3c050000 	lui	a1,0x0
 720:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 724:	24a50000 	addiu	a1,a1,0
 728:	8fbf0024 	lw	ra,36(sp)
 72c:	27bd0028 	addiu	sp,sp,40
 730:	03e00008 	jr	ra
 734:	00000000 	nop

00000738 <func_80B31758>:
 738:	27bdffd8 	addiu	sp,sp,-40
 73c:	afbf0024 	sw	ra,36(sp)
 740:	240e0002 	li	t6,2
 744:	240f0064 	li	t7,100
 748:	afa40028 	sw	a0,40(sp)
 74c:	afaf0018 	sw	t7,24(sp)
 750:	afae0010 	sw	t6,16(sp)
 754:	afa00014 	sw	zero,20(sp)
 758:	24060001 	li	a2,1
 75c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 760:	00003825 	move	a3,zero
 764:	10400004 	beqz	v0,778 <func_80B31758+0x40>
 768:	8fa40028 	lw	a0,40(sp)
 76c:	3c050000 	lui	a1,0x0
 770:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 774:	24a50000 	addiu	a1,a1,0
 778:	8fbf0024 	lw	ra,36(sp)
 77c:	27bd0028 	addiu	sp,sp,40
 780:	03e00008 	jr	ra
 784:	00000000 	nop

00000788 <func_80B317A8>:
 788:	27bdffd8 	addiu	sp,sp,-40
 78c:	afbf0024 	sw	ra,36(sp)
 790:	240e0002 	li	t6,2
 794:	240f003c 	li	t7,60
 798:	24180002 	li	t8,2
 79c:	afa40028 	sw	a0,40(sp)
 7a0:	afb8001c 	sw	t8,28(sp)
 7a4:	afaf0018 	sw	t7,24(sp)
 7a8:	afae0014 	sw	t6,20(sp)
 7ac:	afa00010 	sw	zero,16(sp)
 7b0:	00003025 	move	a2,zero
 7b4:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 7b8:	24070001 	li	a3,1
 7bc:	10400004 	beqz	v0,7d0 <func_80B317A8+0x48>
 7c0:	8fa40028 	lw	a0,40(sp)
 7c4:	3c050000 	lui	a1,0x0
 7c8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 7cc:	24a50000 	addiu	a1,a1,0
 7d0:	8fbf0024 	lw	ra,36(sp)
 7d4:	27bd0028 	addiu	sp,sp,40
 7d8:	03e00008 	jr	ra
 7dc:	00000000 	nop

000007e0 <func_80B31800>:
 7e0:	27bdffd8 	addiu	sp,sp,-40
 7e4:	afbf0024 	sw	ra,36(sp)
 7e8:	240e0002 	li	t6,2
 7ec:	240f003c 	li	t7,60
 7f0:	afa40028 	sw	a0,40(sp)
 7f4:	afaf0018 	sw	t7,24(sp)
 7f8:	afae0010 	sw	t6,16(sp)
 7fc:	afa00014 	sw	zero,20(sp)
 800:	24060001 	li	a2,1
 804:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 808:	00003825 	move	a3,zero
 80c:	10400004 	beqz	v0,820 <func_80B31800+0x40>
 810:	8fa40028 	lw	a0,40(sp)
 814:	3c050000 	lui	a1,0x0
 818:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 81c:	24a50000 	addiu	a1,a1,0
 820:	8fbf0024 	lw	ra,36(sp)
 824:	27bd0028 	addiu	sp,sp,40
 828:	03e00008 	jr	ra
 82c:	00000000 	nop

00000830 <func_80B31850>:
 830:	27bdffd8 	addiu	sp,sp,-40
 834:	afbf0024 	sw	ra,36(sp)
 838:	240e0002 	li	t6,2
 83c:	240f003c 	li	t7,60
 840:	24180003 	li	t8,3
 844:	afa40028 	sw	a0,40(sp)
 848:	afa5002c 	sw	a1,44(sp)
 84c:	afb8001c 	sw	t8,28(sp)
 850:	afaf0018 	sw	t7,24(sp)
 854:	afae0014 	sw	t6,20(sp)
 858:	afa00010 	sw	zero,16(sp)
 85c:	00003025 	move	a2,zero
 860:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 864:	24070001 	li	a3,1
 868:	10400009 	beqz	v0,890 <func_80B31850+0x60>
 86c:	24190040 	li	t9,64
 870:	8fa8002c 	lw	t0,44(sp)
 874:	3c010001 	lui	at,0x1
 878:	3c050000 	lui	a1,0x0
 87c:	00280821 	addu	at,at,t0
 880:	a0390b15 	sb	t9,2837(at)
 884:	8fa40028 	lw	a0,40(sp)
 888:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 88c:	24a50000 	addiu	a1,a1,0
 890:	8fbf0024 	lw	ra,36(sp)
 894:	27bd0028 	addiu	sp,sp,40
 898:	03e00008 	jr	ra
 89c:	00000000 	nop

000008a0 <func_80B318C0>:
 8a0:	27bdffd8 	addiu	sp,sp,-40
 8a4:	afbf0024 	sw	ra,36(sp)
 8a8:	240e0002 	li	t6,2
 8ac:	240f003c 	li	t7,60
 8b0:	afa40028 	sw	a0,40(sp)
 8b4:	afa5002c 	sw	a1,44(sp)
 8b8:	afaf0018 	sw	t7,24(sp)
 8bc:	afae0010 	sw	t6,16(sp)
 8c0:	afa00014 	sw	zero,20(sp)
 8c4:	24060001 	li	a2,1
 8c8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 8cc:	00003825 	move	a3,zero
 8d0:	10400008 	beqz	v0,8f4 <func_80B318C0+0x54>
 8d4:	8fb8002c 	lw	t8,44(sp)
 8d8:	3c010001 	lui	at,0x1
 8dc:	00380821 	addu	at,at,t8
 8e0:	a0200b15 	sb	zero,2837(at)
 8e4:	3c050000 	lui	a1,0x0
 8e8:	24a50000 	addiu	a1,a1,0
 8ec:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 8f0:	8fa40028 	lw	a0,40(sp)
 8f4:	8fbf0024 	lw	ra,36(sp)
 8f8:	27bd0028 	addiu	sp,sp,40
 8fc:	03e00008 	jr	ra
 900:	00000000 	nop

00000904 <func_80B31924>:
 904:	27bdffd8 	addiu	sp,sp,-40
 908:	afbf0024 	sw	ra,36(sp)
 90c:	240e0002 	li	t6,2
 910:	240f0064 	li	t7,100
 914:	24180004 	li	t8,4
 918:	afa40028 	sw	a0,40(sp)
 91c:	afa5002c 	sw	a1,44(sp)
 920:	afb8001c 	sw	t8,28(sp)
 924:	afaf0018 	sw	t7,24(sp)
 928:	afae0014 	sw	t6,20(sp)
 92c:	afa00010 	sw	zero,16(sp)
 930:	00003025 	move	a2,zero
 934:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 938:	24070001 	li	a3,1
 93c:	5040000d 	beqzl	v0,974 <func_80B31924+0x70>
 940:	8fbf0024 	lw	ra,36(sp)
 944:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 948:	8fa4002c 	lw	a0,44(sp)
 94c:	8fa8002c 	lw	t0,44(sp)
 950:	3c010001 	lui	at,0x1
 954:	24190019 	li	t9,25
 958:	00280821 	addu	at,at,t0
 95c:	a0390b12 	sb	t9,2834(at)
 960:	3c050000 	lui	a1,0x0
 964:	24a50000 	addiu	a1,a1,0
 968:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 96c:	8fa40028 	lw	a0,40(sp)
 970:	8fbf0024 	lw	ra,36(sp)
 974:	27bd0028 	addiu	sp,sp,40
 978:	03e00008 	jr	ra
 97c:	00000000 	nop

00000980 <func_80B319A0>:
 980:	27bdffd8 	addiu	sp,sp,-40
 984:	afbf0024 	sw	ra,36(sp)
 988:	240e0002 	li	t6,2
 98c:	240f0064 	li	t7,100
 990:	afa40028 	sw	a0,40(sp)
 994:	afa5002c 	sw	a1,44(sp)
 998:	afaf0018 	sw	t7,24(sp)
 99c:	afae0010 	sw	t6,16(sp)
 9a0:	afa00014 	sw	zero,20(sp)
 9a4:	24060001 	li	a2,1
 9a8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 9ac:	00003825 	move	a3,zero
 9b0:	5040000c 	beqzl	v0,9e4 <func_80B319A0+0x64>
 9b4:	8fbf0024 	lw	ra,36(sp)
 9b8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 9bc:	8fa4002c 	lw	a0,44(sp)
 9c0:	8fb8002c 	lw	t8,44(sp)
 9c4:	3c010001 	lui	at,0x1
 9c8:	3c050000 	lui	a1,0x0
 9cc:	00380821 	addu	at,at,t8
 9d0:	a0200b12 	sb	zero,2834(at)
 9d4:	8fa40028 	lw	a0,40(sp)
 9d8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 9dc:	24a50000 	addiu	a1,a1,0
 9e0:	8fbf0024 	lw	ra,36(sp)
 9e4:	27bd0028 	addiu	sp,sp,40
 9e8:	03e00008 	jr	ra
 9ec:	00000000 	nop

000009f0 <func_80B31A10>:
 9f0:	27bdffd8 	addiu	sp,sp,-40
 9f4:	afbf0024 	sw	ra,36(sp)
 9f8:	240e0004 	li	t6,4
 9fc:	240f0064 	li	t7,100
 a00:	24180005 	li	t8,5
 a04:	afa40028 	sw	a0,40(sp)
 a08:	afa5002c 	sw	a1,44(sp)
 a0c:	afb8001c 	sw	t8,28(sp)
 a10:	afaf0018 	sw	t7,24(sp)
 a14:	afae0014 	sw	t6,20(sp)
 a18:	afa00010 	sw	zero,16(sp)
 a1c:	00003025 	move	a2,zero
 a20:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 a24:	24070001 	li	a3,1
 a28:	50400012 	beqzl	v0,a74 <func_80B31A10+0x84>
 a2c:	8fbf0024 	lw	ra,36(sp)
 a30:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 a34:	8fa4002c 	lw	a0,44(sp)
 a38:	8fa8002c 	lw	t0,44(sp)
 a3c:	3c010001 	lui	at,0x1
 a40:	24190001 	li	t9,1
 a44:	00280821 	addu	at,at,t0
 a48:	a0390b03 	sb	t9,2819(at)
 a4c:	8faa002c 	lw	t2,44(sp)
 a50:	3c010001 	lui	at,0x1
 a54:	2409001e 	li	t1,30
 a58:	002a0821 	addu	at,at,t2
 a5c:	a0290b12 	sb	t1,2834(at)
 a60:	3c050000 	lui	a1,0x0
 a64:	24a50000 	addiu	a1,a1,0
 a68:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 a6c:	8fa40028 	lw	a0,40(sp)
 a70:	8fbf0024 	lw	ra,36(sp)
 a74:	27bd0028 	addiu	sp,sp,40
 a78:	03e00008 	jr	ra
 a7c:	00000000 	nop

00000a80 <func_80B31AA0>:
 a80:	27bdffd8 	addiu	sp,sp,-40
 a84:	afbf0024 	sw	ra,36(sp)
 a88:	240e0004 	li	t6,4
 a8c:	240f0064 	li	t7,100
 a90:	afa40028 	sw	a0,40(sp)
 a94:	afa5002c 	sw	a1,44(sp)
 a98:	afaf0018 	sw	t7,24(sp)
 a9c:	afae0010 	sw	t6,16(sp)
 aa0:	afa00014 	sw	zero,20(sp)
 aa4:	24060001 	li	a2,1
 aa8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 aac:	00003825 	move	a3,zero
 ab0:	50400011 	beqzl	v0,af8 <func_80B31AA0+0x78>
 ab4:	8fbf0024 	lw	ra,36(sp)
 ab8:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 abc:	8fa4002c 	lw	a0,44(sp)
 ac0:	8fb9002c 	lw	t9,44(sp)
 ac4:	3c010001 	lui	at,0x1
 ac8:	24180002 	li	t8,2
 acc:	00390821 	addu	at,at,t9
 ad0:	a0380b03 	sb	t8,2819(at)
 ad4:	8fa8002c 	lw	t0,44(sp)
 ad8:	3c010001 	lui	at,0x1
 adc:	3c050000 	lui	a1,0x0
 ae0:	00280821 	addu	at,at,t0
 ae4:	a0200b12 	sb	zero,2834(at)
 ae8:	8fa40028 	lw	a0,40(sp)
 aec:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 af0:	24a50000 	addiu	a1,a1,0
 af4:	8fbf0024 	lw	ra,36(sp)
 af8:	27bd0028 	addiu	sp,sp,40
 afc:	03e00008 	jr	ra
 b00:	00000000 	nop

00000b04 <func_80B31B24>:
 b04:	27bdffd8 	addiu	sp,sp,-40
 b08:	afb00020 	sw	s0,32(sp)
 b0c:	afbf0024 	sw	ra,36(sp)
 b10:	afa40028 	sw	a0,40(sp)
 b14:	00a08025 	move	s0,a1
 b18:	8ca41c44 	lw	a0,7236(a1)
 b1c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 b20:	8fa50028 	lw	a1,40(sp)
 b24:	8fae0028 	lw	t6,40(sp)
 b28:	3c0142c8 	lui	at,0x42c8
 b2c:	44814000 	mtc1	at,$f8
 b30:	85cf001c 	lh	t7,28(t6)
 b34:	3c010001 	lui	at,0x1
 b38:	34210ac2 	ori	at,at,0xac2
 b3c:	000fc203 	sra	t8,t7,0x8
 b40:	44982000 	mtc1	t8,$f4
 b44:	24190001 	li	t9,1
 b48:	02012021 	addu	a0,s0,at
 b4c:	468021a0 	cvt.s.w	$f6,$f4
 b50:	00002825 	move	a1,zero
 b54:	24060001 	li	a2,1
 b58:	24070001 	li	a3,1
 b5c:	24090001 	li	t1,1
 b60:	46083282 	mul.s	$f10,$f6,$f8
 b64:	460a003c 	c.lt.s	$f0,$f10
 b68:	00000000 	nop
 b6c:	45000014 	bc1f	bc0 <func_80B31B24+0xbc>
 b70:	00000000 	nop
 b74:	3c010001 	lui	at,0x1
 b78:	34210ac2 	ori	at,at,0xac2
 b7c:	02012021 	addu	a0,s0,at
 b80:	2405ffb0 	li	a1,-80
 b84:	24060001 	li	a2,1
 b88:	24070002 	li	a3,2
 b8c:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 b90:	afb90010 	sw	t9,16(sp)
 b94:	3c010001 	lui	at,0x1
 b98:	34210ac4 	ori	at,at,0xac4
 b9c:	24080001 	li	t0,1
 ba0:	afa80010 	sw	t0,16(sp)
 ba4:	02012021 	addu	a0,s0,at
 ba8:	2405f830 	li	a1,-2000
 bac:	24060001 	li	a2,1
 bb0:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 bb4:	24070032 	li	a3,50
 bb8:	1000000d 	b	bf0 <func_80B31B24+0xec>
 bbc:	8fbf0024 	lw	ra,36(sp)
 bc0:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 bc4:	afa90010 	sw	t1,16(sp)
 bc8:	3c010001 	lui	at,0x1
 bcc:	34210ac4 	ori	at,at,0xac4
 bd0:	240a0001 	li	t2,1
 bd4:	afaa0010 	sw	t2,16(sp)
 bd8:	02012021 	addu	a0,s0,at
 bdc:	00002825 	move	a1,zero
 be0:	24060001 	li	a2,1
 be4:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 be8:	24070019 	li	a3,25
 bec:	8fbf0024 	lw	ra,36(sp)
 bf0:	8fb00020 	lw	s0,32(sp)
 bf4:	27bd0028 	addiu	sp,sp,40
 bf8:	03e00008 	jr	ra
 bfc:	00000000 	nop

00000c00 <func_80B31C20>:
 c00:	27bdffe8 	addiu	sp,sp,-24
 c04:	afbf0014 	sw	ra,20(sp)
 c08:	afa40018 	sw	a0,24(sp)
 c0c:	afa5001c 	sw	a1,28(sp)
 c10:	8ca41c44 	lw	a0,7236(a1)
 c14:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 c18:	8fa50018 	lw	a1,24(sp)
 c1c:	8faf0018 	lw	t7,24(sp)
 c20:	3c0142c8 	lui	at,0x42c8
 c24:	44814000 	mtc1	at,$f8
 c28:	85f8001c 	lh	t8,28(t7)
 c2c:	0018ca03 	sra	t9,t8,0x8
 c30:	44992000 	mtc1	t9,$f4
 c34:	00000000 	nop
 c38:	468021a0 	cvt.s.w	$f6,$f4
 c3c:	46083282 	mul.s	$f10,$f6,$f8
 c40:	460a003c 	c.lt.s	$f0,$f10
 c44:	00000000 	nop
 c48:	45020012 	bc1fl	c94 <func_80B31C20+0x94>
 c4c:	8fbf0014 	lw	ra,20(sp)
 c50:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 c54:	8fa4001c 	lw	a0,28(sp)
 c58:	8fa9001c 	lw	t1,28(sp)
 c5c:	3c010001 	lui	at,0x1
 c60:	24080001 	li	t0,1
 c64:	00290821 	addu	at,at,t1
 c68:	a0280b03 	sb	t0,2819(at)
 c6c:	8fab001c 	lw	t3,28(sp)
 c70:	3c010001 	lui	at,0x1
 c74:	240a0019 	li	t2,25
 c78:	002b0821 	addu	at,at,t3
 c7c:	a02a0b12 	sb	t2,2834(at)
 c80:	3c050000 	lui	a1,0x0
 c84:	24a50000 	addiu	a1,a1,0
 c88:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 c8c:	8fa40018 	lw	a0,24(sp)
 c90:	8fbf0014 	lw	ra,20(sp)
 c94:	27bd0018 	addiu	sp,sp,24
 c98:	03e00008 	jr	ra
 c9c:	00000000 	nop

00000ca0 <func_80B31CC0>:
 ca0:	27bdffe8 	addiu	sp,sp,-24
 ca4:	afbf0014 	sw	ra,20(sp)
 ca8:	afa40018 	sw	a0,24(sp)
 cac:	afa5001c 	sw	a1,28(sp)
 cb0:	8ca41c44 	lw	a0,7236(a1)
 cb4:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 cb8:	8fa50018 	lw	a1,24(sp)
 cbc:	8faf0018 	lw	t7,24(sp)
 cc0:	3c0142c8 	lui	at,0x42c8
 cc4:	44814000 	mtc1	at,$f8
 cc8:	85f8001c 	lh	t8,28(t7)
 ccc:	3c014120 	lui	at,0x4120
 cd0:	44818000 	mtc1	at,$f16
 cd4:	0018ca03 	sra	t9,t8,0x8
 cd8:	44992000 	mtc1	t9,$f4
 cdc:	00000000 	nop
 ce0:	468021a0 	cvt.s.w	$f6,$f4
 ce4:	46083282 	mul.s	$f10,$f6,$f8
 ce8:	46105480 	add.s	$f18,$f10,$f16
 cec:	4600903c 	c.lt.s	$f18,$f0
 cf0:	00000000 	nop
 cf4:	45020013 	bc1fl	d44 <func_80B31CC0+0xa4>
 cf8:	8fbf0014 	lw	ra,20(sp)
 cfc:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 d00:	8fa4001c 	lw	a0,28(sp)
 d04:	8fa9001c 	lw	t1,28(sp)
 d08:	3c010001 	lui	at,0x1
 d0c:	24080002 	li	t0,2
 d10:	00290821 	addu	at,at,t1
 d14:	a0280b03 	sb	t0,2819(at)
 d18:	8fa2001c 	lw	v0,28(sp)
 d1c:	3c010001 	lui	at,0x1
 d20:	240a000a 	li	t2,10
 d24:	00411021 	addu	v0,v0,at
 d28:	a0400b12 	sb	zero,2834(v0)
 d2c:	a04a0b13 	sb	t2,2835(v0)
 d30:	3c050000 	lui	a1,0x0
 d34:	24a50000 	addiu	a1,a1,0
 d38:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 d3c:	8fa40018 	lw	a0,24(sp)
 d40:	8fbf0014 	lw	ra,20(sp)
 d44:	27bd0018 	addiu	sp,sp,24
 d48:	03e00008 	jr	ra
 d4c:	00000000 	nop

00000d50 <EnWeatherTag_Update>:
 d50:	27bdffb8 	addiu	sp,sp,-72
 d54:	afbf0044 	sw	ra,68(sp)
 d58:	afa5004c 	sw	a1,76(sp)
 d5c:	afa40048 	sw	a0,72(sp)
 d60:	8c99014c 	lw	t9,332(a0)
 d64:	0320f809 	jalr	t9
 d68:	00000000 	nop
 d6c:	3c0e0000 	lui	t6,0x0
 d70:	8dce0000 	lw	t6,0(t6)
 d74:	8fa40048 	lw	a0,72(sp)
 d78:	3c013f80 	lui	at,0x3f80
 d7c:	85cf12d4 	lh	t7,4820(t6)
 d80:	240900ff 	li	t1,255
 d84:	240a00ff 	li	t2,255
 d88:	11e00017 	beqz	t7,de8 <EnWeatherTag_Update+0x98>
 d8c:	240b00ff 	li	t3,255
 d90:	84980032 	lh	t8,50(a0)
 d94:	c48c0024 	lwc1	$f12,36(a0)
 d98:	c48e0028 	lwc1	$f14,40(a0)
 d9c:	8c86002c 	lw	a2,44(a0)
 da0:	84870030 	lh	a3,48(a0)
 da4:	afb80010 	sw	t8,16(sp)
 da8:	84880034 	lh	t0,52(a0)
 dac:	44810000 	mtc1	at,$f0
 db0:	8fad004c 	lw	t5,76(sp)
 db4:	240c0004 	li	t4,4
 db8:	afac0034 	sw	t4,52(sp)
 dbc:	afab0030 	sw	t3,48(sp)
 dc0:	afaa002c 	sw	t2,44(sp)
 dc4:	afa00028 	sw	zero,40(sp)
 dc8:	afa90024 	sw	t1,36(sp)
 dcc:	afa80014 	sw	t0,20(sp)
 dd0:	e7a00018 	swc1	$f0,24(sp)
 dd4:	e7a0001c 	swc1	$f0,28(sp)
 dd8:	e7a00020 	swc1	$f0,32(sp)
 ddc:	8db90000 	lw	t9,0(t5)
 de0:	0c000000 	jal	0 <EnWeatherTag_SetupAction>
 de4:	afb90038 	sw	t9,56(sp)
 de8:	8fbf0044 	lw	ra,68(sp)
 dec:	27bd0048 	addiu	sp,sp,72
 df0:	03e00008 	jr	ra
 df4:	00000000 	nop
	...
