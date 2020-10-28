
build/src/overlays/actors/ovl_En_Syateki_Itm/z_en_syateki_itm.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSyatekiItm_Init>:
   0:	27bdffa8 	addiu	sp,sp,-88
   4:	3c01430c 	lui	at,0x430c
   8:	44812000 	mtc1	at,$f4
   c:	3c01437f 	lui	at,0x437f
  10:	44814000 	mtc1	at,$f8
  14:	44803000 	mtc1	zero,$f6
  18:	afb70050 	sw	s7,80(sp)
  1c:	afb40044 	sw	s4,68(sp)
  20:	afb30040 	sw	s3,64(sp)
  24:	00809825 	move	s3,a0
  28:	00a0a025 	move	s4,a1
  2c:	afbf0054 	sw	ra,84(sp)
  30:	24b71c24 	addiu	s7,a1,7204
  34:	240ec000 	li	t6,-16384
  38:	afb6004c 	sw	s6,76(sp)
  3c:	afb50048 	sw	s5,72(sp)
  40:	afb2003c 	sw	s2,60(sp)
  44:	afb10038 	sw	s1,56(sp)
  48:	afb00034 	sw	s0,52(sp)
  4c:	afae0020 	sw	t6,32(sp)
  50:	02e02025 	move	a0,s7
  54:	02602825 	move	a1,s3
  58:	02803025 	move	a2,s4
  5c:	afa0001c 	sw	zero,28(sp)
  60:	afa00024 	sw	zero,36(sp)
  64:	afa00028 	sw	zero,40(sp)
  68:	240700c1 	li	a3,193
  6c:	e7a40010 	swc1	$f4,16(sp)
  70:	e7a80018 	swc1	$f8,24(sp)
  74:	0c000000 	jal	0 <EnSyatekiItm_Init>
  78:	e7a60014 	swc1	$f6,20(sp)
  7c:	14400008 	bnez	v0,a0 <EnSyatekiItm_Init+0xa0>
  80:	ae6201cc 	sw	v0,460(s3)
  84:	3c040000 	lui	a0,0x0
  88:	0c000000 	jal	0 <EnSyatekiItm_Init>
  8c:	24840000 	addiu	a0,a0,0
  90:	0c000000 	jal	0 <EnSyatekiItm_Init>
  94:	02602025 	move	a0,s3
  98:	1000002e 	b	154 <EnSyatekiItm_Init+0x154>
  9c:	8fbf0054 	lw	ra,84(sp)
  a0:	3c100000 	lui	s0,0x0
  a4:	3c150000 	lui	s5,0x0
  a8:	26b50000 	addiu	s5,s5,0
  ac:	26100000 	addiu	s0,s0,0
  b0:	00008825 	move	s1,zero
  b4:	02609025 	move	s2,s3
  b8:	2416000a 	li	s6,10
  bc:	c60a0000 	lwc1	$f10,0(s0)
  c0:	c6100004 	lwc1	$f16,4(s0)
  c4:	c6120008 	lwc1	$f18,8(s0)
  c8:	240f0004 	li	t7,4
  cc:	afaf0028 	sw	t7,40(sp)
  d0:	02e02025 	move	a0,s7
  d4:	02602825 	move	a1,s3
  d8:	02803025 	move	a2,s4
  dc:	24070131 	li	a3,305
  e0:	afa0001c 	sw	zero,28(sp)
  e4:	afa00020 	sw	zero,32(sp)
  e8:	afa00024 	sw	zero,36(sp)
  ec:	e7aa0010 	swc1	$f10,16(sp)
  f0:	e7b00014 	swc1	$f16,20(sp)
  f4:	0c000000 	jal	0 <EnSyatekiItm_Init>
  f8:	e7b20018 	swc1	$f18,24(sp)
  fc:	14400008 	bnez	v0,120 <EnSyatekiItm_Init+0x120>
 100:	ae42019c 	sw	v0,412(s2)
 104:	3c040000 	lui	a0,0x0
 108:	0c000000 	jal	0 <EnSyatekiItm_Init>
 10c:	24840000 	addiu	a0,a0,0
 110:	0c000000 	jal	0 <EnSyatekiItm_Init>
 114:	02602025 	move	a0,s3
 118:	1000000e 	b	154 <EnSyatekiItm_Init+0x154>
 11c:	8fbf0054 	lw	ra,84(sp)
 120:	0011c040 	sll	t8,s1,0x1
 124:	02b8c821 	addu	t9,s5,t8
 128:	87280000 	lh	t0,0(t9)
 12c:	8e49019c 	lw	t1,412(s2)
 130:	26310001 	addiu	s1,s1,1
 134:	2610000c 	addiu	s0,s0,12
 138:	26520004 	addiu	s2,s2,4
 13c:	1636ffdf 	bne	s1,s6,bc <EnSyatekiItm_Init+0xbc>
 140:	a5280150 	sh	t0,336(t1)
 144:	3c0a0000 	lui	t2,0x0
 148:	254a0000 	addiu	t2,t2,0
 14c:	ae6a014c 	sw	t2,332(s3)
 150:	8fbf0054 	lw	ra,84(sp)
 154:	8fb00034 	lw	s0,52(sp)
 158:	8fb10038 	lw	s1,56(sp)
 15c:	8fb2003c 	lw	s2,60(sp)
 160:	8fb30040 	lw	s3,64(sp)
 164:	8fb40044 	lw	s4,68(sp)
 168:	8fb50048 	lw	s5,72(sp)
 16c:	8fb6004c 	lw	s6,76(sp)
 170:	8fb70050 	lw	s7,80(sp)
 174:	03e00008 	jr	ra
 178:	27bd0058 	addiu	sp,sp,88

0000017c <EnSyatekiItm_Destroy>:
 17c:	afa40000 	sw	a0,0(sp)
 180:	03e00008 	jr	ra
 184:	afa50004 	sw	a1,4(sp)

00000188 <func_80B0F838>:
 188:	27bdffe8 	addiu	sp,sp,-24
 18c:	afbf0014 	sw	ra,20(sp)
 190:	afa5001c 	sw	a1,28(sp)
 194:	848f0154 	lh	t7,340(a0)
 198:	24010001 	li	at,1
 19c:	00803825 	move	a3,a0
 1a0:	15e10038 	bne	t7,at,284 <func_80B0F838+0xfc>
 1a4:	8ca21c44 	lw	v0,7236(a1)
 1a8:	3c01c140 	lui	at,0xc140
 1ac:	44812000 	mtc1	at,$f4
 1b0:	3c0141a0 	lui	at,0x41a0
 1b4:	24187f03 	li	t8,32515
 1b8:	a44000b8 	sh	zero,184(v0)
 1bc:	44813000 	mtc1	at,$f6
 1c0:	844300b8 	lh	v1,184(v0)
 1c4:	a45800b6 	sh	t8,182(v0)
 1c8:	844600b6 	lh	a2,182(v0)
 1cc:	3c014336 	lui	at,0x4336
 1d0:	44814000 	mtc1	at,$f8
 1d4:	e4440024 	swc1	$f4,36(v0)
 1d8:	e4460028 	swc1	$f6,40(v0)
 1dc:	a4430034 	sh	v1,52(v0)
 1e0:	a44300b4 	sh	v1,180(v0)
 1e4:	a4430030 	sh	v1,48(v0)
 1e8:	a4460032 	sh	a2,50(v0)
 1ec:	a446083c 	sh	a2,2108(v0)
 1f0:	e448002c 	swc1	$f8,44(v0)
 1f4:	afa70018 	sw	a3,24(sp)
 1f8:	8fa4001c 	lw	a0,28(sp)
 1fc:	0c000000 	jal	0 <EnSyatekiItm_Init>
 200:	2405000f 	li	a1,15
 204:	8fa70018 	lw	a3,24(sp)
 208:	3c0e0000 	lui	t6,0x0
 20c:	00001025 	move	v0,zero
 210:	a4e00156 	sh	zero,342(a3)
 214:	84f90156 	lh	t9,342(a3)
 218:	25ce0000 	addiu	t6,t6,0
 21c:	00e01825 	move	v1,a3
 220:	a4f90158 	sh	t9,344(a3)
 224:	24420001 	addiu	v0,v0,1
 228:	28410006 	slti	at,v0,6
 22c:	24630002 	addiu	v1,v1,2
 230:	1420fffc 	bnez	at,224 <func_80B0F838+0x9c>
 234:	a4600158 	sh	zero,344(v1)
 238:	8ce8019c 	lw	t0,412(a3)
 23c:	24020002 	li	v0,2
 240:	24e30008 	addiu	v1,a3,8
 244:	a500015c 	sh	zero,348(t0)
 248:	8ce901a0 	lw	t1,416(a3)
 24c:	2404000a 	li	a0,10
 250:	a520015c 	sh	zero,348(t1)
 254:	8c6a019c 	lw	t2,412(v1)
 258:	24420004 	addiu	v0,v0,4
 25c:	24630010 	addiu	v1,v1,16
 260:	a540015c 	sh	zero,348(t2)
 264:	8c6b0190 	lw	t3,400(v1)
 268:	a560015c 	sh	zero,348(t3)
 26c:	8c6c0194 	lw	t4,404(v1)
 270:	a580015c 	sh	zero,348(t4)
 274:	8c6d0198 	lw	t5,408(v1)
 278:	1444fff6 	bne	v0,a0,254 <func_80B0F838+0xcc>
 27c:	a5a0015c 	sh	zero,348(t5)
 280:	acee014c 	sw	t6,332(a3)
 284:	8fbf0014 	lw	ra,20(sp)
 288:	27bd0018 	addiu	sp,sp,24
 28c:	03e00008 	jr	ra
 290:	00000000 	nop

00000294 <func_80B0F944>:
 294:	27bdffd8 	addiu	sp,sp,-40
 298:	afbf0024 	sw	ra,36(sp)
 29c:	afb00020 	sw	s0,32(sp)
 2a0:	f7b40018 	sdc1	$f20,24(sp)
 2a4:	848e0152 	lh	t6,338(a0)
 2a8:	00808025 	move	s0,a0
 2ac:	8ca61c44 	lw	a2,7236(a1)
 2b0:	15c00051 	bnez	t6,3f8 <func_80B0F944+0x164>
 2b4:	3c0f0000 	lui	t7,0x0
 2b8:	8def0004 	lw	t7,4(t7)
 2bc:	00002825 	move	a1,zero
 2c0:	00001025 	move	v0,zero
 2c4:	15e00031 	bnez	t7,38c <func_80B0F944+0xf8>
 2c8:	02001825 	move	v1,s0
 2cc:	8478015a 	lh	t8,346(v1)
 2d0:	24420002 	addiu	v0,v0,2
 2d4:	2841000c 	slti	at,v0,12
 2d8:	13000002 	beqz	t8,2e4 <func_80B0F944+0x50>
 2dc:	00000000 	nop
 2e0:	24a50001 	addiu	a1,a1,1
 2e4:	1420fff9 	bnez	at,2cc <func_80B0F944+0x38>
 2e8:	24630002 	addiu	v1,v1,2
 2ec:	28a10006 	slti	at,a1,6
 2f0:	14200008 	bnez	at,314 <func_80B0F944+0x80>
 2f4:	2419000a 	li	t9,10
 2f8:	3c090000 	lui	t1,0x0
 2fc:	a4d90110 	sh	t9,272(a2)
 300:	24080002 	li	t0,2
 304:	25290000 	addiu	t1,t1,0
 308:	a6080154 	sh	t0,340(s0)
 30c:	1000003a 	b	3f8 <func_80B0F944+0x164>
 310:	ae09014c 	sw	t1,332(s0)
 314:	3c010000 	lui	at,0x0
 318:	c4340000 	lwc1	$f20,0(at)
 31c:	0c000000 	jal	0 <EnSyatekiItm_Init>
 320:	4600a306 	mov.s	$f12,$f20
 324:	4600010d 	trunc.w.s	$f4,$f0
 328:	44022000 	mfc1	v0,$f4
 32c:	00000000 	nop
 330:	00025840 	sll	t3,v0,0x1
 334:	020b1821 	addu	v1,s0,t3
 338:	846c015a 	lh	t4,346(v1)
 33c:	5180000e 	beqzl	t4,378 <func_80B0F944+0xe4>
 340:	24480001 	addiu	t0,v0,1
 344:	0c000000 	jal	0 <EnSyatekiItm_Init>
 348:	4600a306 	mov.s	$f12,$f20
 34c:	4600018d 	trunc.w.s	$f6,$f0
 350:	44023000 	mfc1	v0,$f6
 354:	00000000 	nop
 358:	00027040 	sll	t6,v0,0x1
 35c:	020e7821 	addu	t7,s0,t6
 360:	85f8015a 	lh	t8,346(t7)
 364:	1700fff7 	bnez	t8,344 <func_80B0F944+0xb0>
 368:	00000000 	nop
 36c:	0002c840 	sll	t9,v0,0x1
 370:	02191821 	addu	v1,s0,t9
 374:	24480001 	addiu	t0,v0,1
 378:	a6080158 	sh	t0,344(s0)
 37c:	24090001 	li	t1,1
 380:	a469015a 	sh	t1,346(v1)
 384:	10000010 	b	3c8 <func_80B0F944+0x134>
 388:	86040158 	lh	a0,344(s0)
 38c:	860a0158 	lh	t2,344(s0)
 390:	3c0e0000 	lui	t6,0x0
 394:	240c000a 	li	t4,10
 398:	254b0001 	addiu	t3,t2,1
 39c:	a60b0158 	sh	t3,344(s0)
 3a0:	86040158 	lh	a0,344(s0)
 3a4:	240d0002 	li	t5,2
 3a8:	25ce0000 	addiu	t6,t6,0
 3ac:	28810007 	slti	at,a0,7
 3b0:	54200006 	bnezl	at,3cc <func_80B0F944+0x138>
 3b4:	24010001 	li	at,1
 3b8:	a4cc0110 	sh	t4,272(a2)
 3bc:	a60d0154 	sh	t5,340(s0)
 3c0:	1000000d 	b	3f8 <func_80B0F944+0x164>
 3c4:	ae0e014c 	sw	t6,332(s0)
 3c8:	24010001 	li	at,1
 3cc:	14810004 	bne	a0,at,3e0 <func_80B0F944+0x14c>
 3d0:	2418001e 	li	t8,30
 3d4:	240f0032 	li	t7,50
 3d8:	10000002 	b	3e4 <func_80B0F944+0x150>
 3dc:	a60f0150 	sh	t7,336(s0)
 3e0:	a6180150 	sh	t8,336(s0)
 3e4:	0c000000 	jal	0 <EnSyatekiItm_Init>
 3e8:	2404482c 	li	a0,18476
 3ec:	3c190000 	lui	t9,0x0
 3f0:	27390000 	addiu	t9,t9,0
 3f4:	ae19014c 	sw	t9,332(s0)
 3f8:	8fbf0024 	lw	ra,36(sp)
 3fc:	d7b40018 	ldc1	$f20,24(sp)
 400:	8fb00020 	lw	s0,32(sp)
 404:	03e00008 	jr	ra
 408:	27bd0028 	addiu	sp,sp,40

0000040c <func_80B0FABC>:
 40c:	27bdff70 	addiu	sp,sp,-144
 410:	3c0e0000 	lui	t6,0x0
 414:	afbf005c 	sw	ra,92(sp)
 418:	afbe0058 	sw	s8,88(sp)
 41c:	afb70054 	sw	s7,84(sp)
 420:	afb60050 	sw	s6,80(sp)
 424:	afb5004c 	sw	s5,76(sp)
 428:	afb40048 	sw	s4,72(sp)
 42c:	afb30044 	sw	s3,68(sp)
 430:	afb20040 	sw	s2,64(sp)
 434:	afb1003c 	sw	s1,60(sp)
 438:	afb00038 	sw	s0,56(sp)
 43c:	25ce0000 	addiu	t6,t6,0
 440:	8dd80000 	lw	t8,0(t6)
 444:	27b60080 	addiu	s6,sp,128
 448:	8ca21c44 	lw	v0,7236(a1)
 44c:	aed80000 	sw	t8,0(s6)
 450:	8dcf0004 	lw	t7,4(t6)
 454:	3c190001 	lui	t9,0x1
 458:	0325c821 	addu	t9,t9,a1
 45c:	aecf0004 	sw	t7,4(s6)
 460:	8dd80008 	lw	t8,8(t6)
 464:	2401ffff 	li	at,-1
 468:	0080b825 	move	s7,a0
 46c:	aed80008 	sw	t8,8(s6)
 470:	83391e5c 	lb	t9,7772(t9)
 474:	00a03025 	move	a2,a1
 478:	00008825 	move	s1,zero
 47c:	17210009 	bne	t9,at,4a4 <func_80B0FABC+0x98>
 480:	0000a825 	move	s5,zero
 484:	2408000a 	li	t0,10
 488:	3c090000 	lui	t1,0x0
 48c:	241e0002 	li	s8,2
 490:	a4480110 	sh	t0,272(v0)
 494:	25290000 	addiu	t1,t1,0
 498:	a49e0154 	sh	s8,340(a0)
 49c:	100000f1 	b	864 <L80B0FD40+0x1d4>
 4a0:	ac89014c 	sw	t1,332(a0)
 4a4:	86ea0150 	lh	t2,336(s7)
 4a8:	02e0a025 	move	s4,s7
 4ac:	26f2016c 	addiu	s2,s7,364
 4b0:	154000ec 	bnez	t2,864 <L80B0FD40+0x1d4>
 4b4:	26f30184 	addiu	s3,s7,388
 4b8:	02e08025 	move	s0,s7
 4bc:	afa60094 	sw	a2,148(sp)
 4c0:	02402025 	move	a0,s2
 4c4:	0c000000 	jal	0 <EnSyatekiItm_Init>
 4c8:	02c02825 	move	a1,s6
 4cc:	02602025 	move	a0,s3
 4d0:	0c000000 	jal	0 <EnSyatekiItm_Init>
 4d4:	02c02825 	move	a1,s6
 4d8:	2631000c 	addiu	s1,s1,12
 4dc:	2a210018 	slti	at,s1,24
 4e0:	2652000c 	addiu	s2,s2,12
 4e4:	2673000c 	addiu	s3,s3,12
 4e8:	26100004 	addiu	s0,s0,4
 4ec:	1420fff4 	bnez	at,4c0 <func_80B0FABC+0xb4>
 4f0:	ae0001c0 	sw	zero,448(s0)
 4f4:	86f10158 	lh	s1,344(s7)
 4f8:	241e0002 	li	s8,2
 4fc:	a6fe016a 	sh	s8,362(s7)
 500:	2631ffff 	addiu	s1,s1,-1
 504:	2e210006 	sltiu	at,s1,6
 508:	aee001d4 	sw	zero,468(s7)
 50c:	10200074 	beqz	at,6e0 <L80B0FD40+0x50>
 510:	aee001d0 	sw	zero,464(s7)
 514:	00115880 	sll	t3,s1,0x2
 518:	3c010000 	lui	at,0x0
 51c:	002b0821 	addu	at,at,t3
 520:	8c2b0000 	lw	t3,0(at)
 524:	01600008 	jr	t3
 528:	00000000 	nop

0000052c <L80B0FBDC>:
 52c:	3c050000 	lui	a1,0x0
 530:	24a50000 	addiu	a1,a1,0
 534:	0c000000 	jal	0 <EnSyatekiItm_Init>
 538:	26e4016c 	addiu	a0,s7,364
 53c:	3c050000 	lui	a1,0x0
 540:	24a50000 	addiu	a1,a1,0
 544:	0c000000 	jal	0 <EnSyatekiItm_Init>
 548:	26e40184 	addiu	a0,s7,388
 54c:	8eec019c 	lw	t4,412(s7)
 550:	24160001 	li	s6,1
 554:	a6f6016a 	sh	s6,362(s7)
 558:	10000061 	b	6e0 <L80B0FD40+0x50>
 55c:	aeec01d0 	sw	t4,464(s7)

00000560 <L80B0FC10>:
 560:	3c050000 	lui	a1,0x0
 564:	24a50000 	addiu	a1,a1,0
 568:	0c000000 	jal	0 <EnSyatekiItm_Init>
 56c:	26e4016c 	addiu	a0,s7,364
 570:	3c050000 	lui	a1,0x0
 574:	24a50000 	addiu	a1,a1,0
 578:	0c000000 	jal	0 <EnSyatekiItm_Init>
 57c:	26e40178 	addiu	a0,s7,376
 580:	3c050000 	lui	a1,0x0
 584:	24a50000 	addiu	a1,a1,0
 588:	0c000000 	jal	0 <EnSyatekiItm_Init>
 58c:	26e40184 	addiu	a0,s7,388
 590:	3c050000 	lui	a1,0x0
 594:	24a50000 	addiu	a1,a1,0
 598:	0c000000 	jal	0 <EnSyatekiItm_Init>
 59c:	26e40190 	addiu	a0,s7,400
 5a0:	8eed01a0 	lw	t5,416(s7)
 5a4:	8eee01a4 	lw	t6,420(s7)
 5a8:	aeed01d0 	sw	t5,464(s7)
 5ac:	1000004c 	b	6e0 <L80B0FD40+0x50>
 5b0:	aeee01d4 	sw	t6,468(s7)

000005b4 <L80B0FC64>:
 5b4:	3c050000 	lui	a1,0x0
 5b8:	24a50000 	addiu	a1,a1,0
 5bc:	0c000000 	jal	0 <EnSyatekiItm_Init>
 5c0:	26e4016c 	addiu	a0,s7,364
 5c4:	3c050000 	lui	a1,0x0
 5c8:	24a50000 	addiu	a1,a1,0
 5cc:	0c000000 	jal	0 <EnSyatekiItm_Init>
 5d0:	26e40184 	addiu	a0,s7,388
 5d4:	8eef01a8 	lw	t7,424(s7)
 5d8:	24160001 	li	s6,1
 5dc:	a6f6016a 	sh	s6,362(s7)
 5e0:	1000003f 	b	6e0 <L80B0FD40+0x50>
 5e4:	aeef01d0 	sw	t7,464(s7)

000005e8 <L80B0FC98>:
 5e8:	3c050000 	lui	a1,0x0
 5ec:	24a50000 	addiu	a1,a1,0
 5f0:	0c000000 	jal	0 <EnSyatekiItm_Init>
 5f4:	26e4016c 	addiu	a0,s7,364
 5f8:	3c050000 	lui	a1,0x0
 5fc:	24a50000 	addiu	a1,a1,0
 600:	0c000000 	jal	0 <EnSyatekiItm_Init>
 604:	26e40178 	addiu	a0,s7,376
 608:	3c050000 	lui	a1,0x0
 60c:	24a50000 	addiu	a1,a1,0
 610:	0c000000 	jal	0 <EnSyatekiItm_Init>
 614:	26e40184 	addiu	a0,s7,388
 618:	3c050000 	lui	a1,0x0
 61c:	24a50000 	addiu	a1,a1,0
 620:	0c000000 	jal	0 <EnSyatekiItm_Init>
 624:	26e40190 	addiu	a0,s7,400
 628:	8ef801ac 	lw	t8,428(s7)
 62c:	8ef901b0 	lw	t9,432(s7)
 630:	aef801d0 	sw	t8,464(s7)
 634:	1000002a 	b	6e0 <L80B0FD40+0x50>
 638:	aef901d4 	sw	t9,468(s7)

0000063c <L80B0FCEC>:
 63c:	3c050000 	lui	a1,0x0
 640:	24a50000 	addiu	a1,a1,0
 644:	0c000000 	jal	0 <EnSyatekiItm_Init>
 648:	26e4016c 	addiu	a0,s7,364
 64c:	3c050000 	lui	a1,0x0
 650:	24a50000 	addiu	a1,a1,0
 654:	0c000000 	jal	0 <EnSyatekiItm_Init>
 658:	26e40178 	addiu	a0,s7,376
 65c:	3c050000 	lui	a1,0x0
 660:	24a50000 	addiu	a1,a1,0
 664:	0c000000 	jal	0 <EnSyatekiItm_Init>
 668:	26e40184 	addiu	a0,s7,388
 66c:	3c050000 	lui	a1,0x0
 670:	24a50000 	addiu	a1,a1,0
 674:	0c000000 	jal	0 <EnSyatekiItm_Init>
 678:	26e40190 	addiu	a0,s7,400
 67c:	8ee801b4 	lw	t0,436(s7)
 680:	8ee901b8 	lw	t1,440(s7)
 684:	aee801d0 	sw	t0,464(s7)
 688:	10000015 	b	6e0 <L80B0FD40+0x50>
 68c:	aee901d4 	sw	t1,468(s7)

00000690 <L80B0FD40>:
 690:	3c050000 	lui	a1,0x0
 694:	24a50000 	addiu	a1,a1,0
 698:	0c000000 	jal	0 <EnSyatekiItm_Init>
 69c:	26e4016c 	addiu	a0,s7,364
 6a0:	3c050000 	lui	a1,0x0
 6a4:	24a50000 	addiu	a1,a1,0
 6a8:	0c000000 	jal	0 <EnSyatekiItm_Init>
 6ac:	26e40178 	addiu	a0,s7,376
 6b0:	3c050000 	lui	a1,0x0
 6b4:	24a50000 	addiu	a1,a1,0
 6b8:	0c000000 	jal	0 <EnSyatekiItm_Init>
 6bc:	26e40184 	addiu	a0,s7,388
 6c0:	3c050000 	lui	a1,0x0
 6c4:	24a50000 	addiu	a1,a1,0
 6c8:	0c000000 	jal	0 <EnSyatekiItm_Init>
 6cc:	26e40190 	addiu	a0,s7,400
 6d0:	8eea01bc 	lw	t2,444(s7)
 6d4:	8eeb01c0 	lw	t3,448(s7)
 6d8:	aeea01d0 	sw	t2,464(s7)
 6dc:	aeeb01d4 	sw	t3,468(s7)
 6e0:	86ec016a 	lh	t4,362(s7)
 6e4:	24160001 	li	s6,1
 6e8:	0000a825 	move	s5,zero
 6ec:	19800057 	blez	t4,84c <L80B0FD40+0x1bc>
 6f0:	8fa60094 	lw	a2,148(sp)
 6f4:	24c41c24 	addiu	a0,a2,7204
 6f8:	afa40070 	sw	a0,112(sp)
 6fc:	02e0a025 	move	s4,s7
 700:	02e08025 	move	s0,s7
 704:	24130005 	li	s3,5
 708:	24120004 	li	s2,4
 70c:	c684016c 	lwc1	$f4,364(s4)
 710:	240d303f 	li	t5,12351
 714:	8fa40070 	lw	a0,112(sp)
 718:	e7a40010 	swc1	$f4,16(sp)
 71c:	c6860170 	lwc1	$f6,368(s4)
 720:	8fa60094 	lw	a2,148(sp)
 724:	02e02825 	move	a1,s7
 728:	e7a60014 	swc1	$f6,20(sp)
 72c:	c6880174 	lwc1	$f8,372(s4)
 730:	afad0028 	sw	t5,40(sp)
 734:	afa00024 	sw	zero,36(sp)
 738:	afa00020 	sw	zero,32(sp)
 73c:	afa0001c 	sw	zero,28(sp)
 740:	24070117 	li	a3,279
 744:	0c000000 	jal	0 <EnSyatekiItm_Init>
 748:	e7a80018 	swc1	$f8,24(sp)
 74c:	14400008 	bnez	v0,770 <L80B0FD40+0xe0>
 750:	ae0201c4 	sw	v0,452(s0)
 754:	3c040000 	lui	a0,0x0
 758:	0c000000 	jal	0 <EnSyatekiItm_Init>
 75c:	24840000 	addiu	a0,a0,0
 760:	0c000000 	jal	0 <EnSyatekiItm_Init>
 764:	02e02025 	move	a0,s7
 768:	1000003f 	b	868 <L80B0FD40+0x1d8>
 76c:	8fbf005c 	lw	ra,92(sp)
 770:	8e0e01c4 	lw	t6,452(s0)
 774:	00117840 	sll	t7,s1,0x1
 778:	3c180000 	lui	t8,0x0
 77c:	a5d50160 	sh	s5,352(t6)
 780:	030fc021 	addu	t8,t8,t7
 784:	87180000 	lh	t8,0(t8)
 788:	8e1901c4 	lw	t9,452(s0)
 78c:	26850184 	addiu	a1,s4,388
 790:	a7380158 	sh	t8,344(t9)
 794:	8e0401c4 	lw	a0,452(s0)
 798:	0c000000 	jal	0 <EnSyatekiItm_Init>
 79c:	2484016c 	addiu	a0,a0,364
 7a0:	12360009 	beq	s1,s6,7c8 <L80B0FD40+0x138>
 7a4:	00000000 	nop
 7a8:	123e000d 	beq	s1,s8,7e0 <L80B0FD40+0x150>
 7ac:	3c014170 	lui	at,0x4170
 7b0:	12320015 	beq	s1,s2,808 <L80B0FD40+0x178>
 7b4:	3c01c0a0 	lui	at,0xc0a0
 7b8:	12330019 	beq	s1,s3,820 <L80B0FD40+0x190>
 7bc:	3c0140e0 	lui	at,0x40e0
 7c0:	1000001d 	b	838 <L80B0FD40+0x1a8>
 7c4:	86f9016a 	lh	t9,362(s7)
 7c8:	56b6001b 	bnel	s5,s6,838 <L80B0FD40+0x1a8>
 7cc:	86f9016a 	lh	t9,362(s7)
 7d0:	8e0901c4 	lw	t1,452(s0)
 7d4:	2408003c 	li	t0,60
 7d8:	10000016 	b	834 <L80B0FD40+0x1a4>
 7dc:	a5280162 	sh	t0,354(t1)
 7e0:	44815000 	mtc1	at,$f10
 7e4:	8e0a01c4 	lw	t2,452(s0)
 7e8:	3c01bf80 	lui	at,0xbf80
 7ec:	44818000 	mtc1	at,$f16
 7f0:	e54a0060 	swc1	$f10,96(t2)
 7f4:	8e0b01c4 	lw	t3,452(s0)
 7f8:	e570006c 	swc1	$f16,108(t3)
 7fc:	8e0c01c4 	lw	t4,452(s0)
 800:	1000000c 	b	834 <L80B0FD40+0x1a4>
 804:	a59e0166 	sh	s8,358(t4)
 808:	44819000 	mtc1	at,$f18
 80c:	8e0d01c4 	lw	t5,452(s0)
 810:	e5b2005c 	swc1	$f18,92(t5)
 814:	8e0e01c4 	lw	t6,452(s0)
 818:	10000006 	b	834 <L80B0FD40+0x1a4>
 81c:	a5d20166 	sh	s2,358(t6)
 820:	44812000 	mtc1	at,$f4
 824:	8e0f01c4 	lw	t7,452(s0)
 828:	e5e4005c 	swc1	$f4,92(t7)
 82c:	8e1801c4 	lw	t8,452(s0)
 830:	a7130166 	sh	s3,358(t8)
 834:	86f9016a 	lh	t9,362(s7)
 838:	26b50001 	addiu	s5,s5,1
 83c:	2694000c 	addiu	s4,s4,12
 840:	02b9082a 	slt	at,s5,t9
 844:	1420ffb1 	bnez	at,70c <L80B0FD40+0x7c>
 848:	26100004 	addiu	s0,s0,4
 84c:	a6e00168 	sh	zero,360(s7)
 850:	86e80168 	lh	t0,360(s7)
 854:	3c090000 	lui	t1,0x0
 858:	25290000 	addiu	t1,t1,0
 85c:	aee9014c 	sw	t1,332(s7)
 860:	a6e80166 	sh	t0,358(s7)
 864:	8fbf005c 	lw	ra,92(sp)
 868:	8fb00038 	lw	s0,56(sp)
 86c:	8fb1003c 	lw	s1,60(sp)
 870:	8fb20040 	lw	s2,64(sp)
 874:	8fb30044 	lw	s3,68(sp)
 878:	8fb40048 	lw	s4,72(sp)
 87c:	8fb5004c 	lw	s5,76(sp)
 880:	8fb60050 	lw	s6,80(sp)
 884:	8fb70054 	lw	s7,84(sp)
 888:	8fbe0058 	lw	s8,88(sp)
 88c:	03e00008 	jr	ra
 890:	27bd0090 	addiu	sp,sp,144

00000894 <func_80B0FF44>:
 894:	3c0e0001 	lui	t6,0x1
 898:	01c57021 	addu	t6,t6,a1
 89c:	81ce1e5c 	lb	t6,7772(t6)
 8a0:	2401ffff 	li	at,-1
 8a4:	8ca21c44 	lw	v0,7236(a1)
 8a8:	15c10009 	bne	t6,at,8d0 <func_80B0FF44+0x3c>
 8ac:	00001825 	move	v1,zero
 8b0:	240f000a 	li	t7,10
 8b4:	3c180000 	lui	t8,0x0
 8b8:	24070002 	li	a3,2
 8bc:	a44f0110 	sh	t7,272(v0)
 8c0:	27180000 	addiu	t8,t8,0
 8c4:	a4870154 	sh	a3,340(a0)
 8c8:	03e00008 	jr	ra
 8cc:	ac98014c 	sw	t8,332(a0)
 8d0:	00001025 	move	v0,zero
 8d4:	00802825 	move	a1,a0
 8d8:	24080001 	li	t0,1
 8dc:	24070002 	li	a3,2
 8e0:	84a60166 	lh	a2,358(a1)
 8e4:	50c0000a 	beqzl	a2,910 <func_80B0FF44+0x7c>
 8e8:	24420001 	addiu	v0,v0,1
 8ec:	14e60005 	bne	a3,a2,904 <func_80B0FF44+0x70>
 8f0:	24630001 	addiu	v1,v1,1
 8f4:	0002c880 	sll	t9,v0,0x2
 8f8:	00994821 	addu	t1,a0,t9
 8fc:	8d2a01d0 	lw	t2,464(t1)
 900:	a548015c 	sh	t0,348(t2)
 904:	00031c00 	sll	v1,v1,0x10
 908:	00031c03 	sra	v1,v1,0x10
 90c:	24420001 	addiu	v0,v0,1
 910:	1447fff3 	bne	v0,a3,8e0 <func_80B0FF44+0x4c>
 914:	24a50002 	addiu	a1,a1,2
 918:	848b016a 	lh	t3,362(a0)
 91c:	3c0c0000 	lui	t4,0x0
 920:	258c0000 	addiu	t4,t4,0
 924:	146b0002 	bne	v1,t3,930 <func_80B0FF44+0x9c>
 928:	00000000 	nop
 92c:	ac8c014c 	sw	t4,332(a0)
 930:	03e00008 	jr	ra
 934:	00000000 	nop

00000938 <func_80B0FFE8>:
 938:	27bdffd8 	addiu	sp,sp,-40
 93c:	afb30020 	sw	s3,32(sp)
 940:	afb2001c 	sw	s2,28(sp)
 944:	afb10018 	sw	s1,24(sp)
 948:	afb00014 	sw	s0,20(sp)
 94c:	00809825 	move	s3,a0
 950:	afbf0024 	sw	ra,36(sp)
 954:	afa5002c 	sw	a1,44(sp)
 958:	00008025 	move	s0,zero
 95c:	00808825 	move	s1,a0
 960:	24120002 	li	s2,2
 964:	862e0166 	lh	t6,358(s1)
 968:	00107880 	sll	t7,s0,0x2
 96c:	026fc021 	addu	t8,s3,t7
 970:	55c00007 	bnezl	t6,990 <func_80B0FFE8+0x58>
 974:	26100001 	addiu	s0,s0,1
 978:	8f0401c4 	lw	a0,452(t8)
 97c:	50800004 	beqzl	a0,990 <func_80B0FFE8+0x58>
 980:	26100001 	addiu	s0,s0,1
 984:	0c000000 	jal	0 <EnSyatekiItm_Init>
 988:	00000000 	nop
 98c:	26100001 	addiu	s0,s0,1
 990:	1612fff4 	bne	s0,s2,964 <func_80B0FFE8+0x2c>
 994:	26310002 	addiu	s1,s1,2
 998:	3c190000 	lui	t9,0x0
 99c:	27390000 	addiu	t9,t9,0
 9a0:	ae79014c 	sw	t9,332(s3)
 9a4:	8fbf0024 	lw	ra,36(sp)
 9a8:	8fb30020 	lw	s3,32(sp)
 9ac:	8fb2001c 	lw	s2,28(sp)
 9b0:	8fb10018 	lw	s1,24(sp)
 9b4:	8fb00014 	lw	s0,20(sp)
 9b8:	03e00008 	jr	ra
 9bc:	27bd0028 	addiu	sp,sp,40

000009c0 <func_80B10070>:
 9c0:	27bdffd8 	addiu	sp,sp,-40
 9c4:	afbf001c 	sw	ra,28(sp)
 9c8:	afb00018 	sw	s0,24(sp)
 9cc:	8ca21c44 	lw	v0,7236(a1)
 9d0:	240e000a 	li	t6,10
 9d4:	24010003 	li	at,3
 9d8:	a44e0110 	sh	t6,272(v0)
 9dc:	84830154 	lh	v1,340(a0)
 9e0:	3c0f0000 	lui	t7,0x0
 9e4:	00808025 	move	s0,a0
 9e8:	14610004 	bne	v1,at,9fc <func_80B10070+0x3c>
 9ec:	25ef0000 	addiu	t7,t7,0
 9f0:	a4800154 	sh	zero,340(a0)
 9f4:	84830154 	lh	v1,340(a0)
 9f8:	ac8f014c 	sw	t7,332(a0)
 9fc:	24010001 	li	at,1
 a00:	14610024 	bne	v1,at,a94 <func_80B10070+0xd4>
 a04:	3c040000 	lui	a0,0x0
 a08:	3c180000 	lui	t8,0x0
 a0c:	27180000 	addiu	t8,t8,0
 a10:	afb80020 	sw	t8,32(sp)
 a14:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a18:	24840000 	addiu	a0,a0,0
 a1c:	3c040000 	lui	a0,0x0
 a20:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a24:	24840000 	addiu	a0,a0,0
 a28:	3c040000 	lui	a0,0x0
 a2c:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a30:	24840000 	addiu	a0,a0,0
 a34:	3c040000 	lui	a0,0x0
 a38:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a3c:	24840000 	addiu	a0,a0,0
 a40:	3c040000 	lui	a0,0x0
 a44:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a48:	24840000 	addiu	a0,a0,0
 a4c:	3c040000 	lui	a0,0x0
 a50:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a54:	24840000 	addiu	a0,a0,0
 a58:	3c040000 	lui	a0,0x0
 a5c:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a60:	24840000 	addiu	a0,a0,0
 a64:	3c040000 	lui	a0,0x0
 a68:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a6c:	24840000 	addiu	a0,a0,0
 a70:	3c040000 	lui	a0,0x0
 a74:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a78:	24840000 	addiu	a0,a0,0
 a7c:	3c040000 	lui	a0,0x0
 a80:	0c000000 	jal	0 <EnSyatekiItm_Init>
 a84:	24840000 	addiu	a0,a0,0
 a88:	a6000154 	sh	zero,340(s0)
 a8c:	8fb90020 	lw	t9,32(sp)
 a90:	ae19014c 	sw	t9,332(s0)
 a94:	8fbf001c 	lw	ra,28(sp)
 a98:	8fb00018 	lw	s0,24(sp)
 a9c:	27bd0028 	addiu	sp,sp,40
 aa0:	03e00008 	jr	ra
 aa4:	00000000 	nop

00000aa8 <EnSyatekiItm_Update>:
 aa8:	27bdffb8 	addiu	sp,sp,-72
 aac:	afbf0044 	sw	ra,68(sp)
 ab0:	afa5004c 	sw	a1,76(sp)
 ab4:	afa40048 	sw	a0,72(sp)
 ab8:	8c99014c 	lw	t9,332(a0)
 abc:	0320f809 	jalr	t9
 ac0:	00000000 	nop
 ac4:	8fa40048 	lw	a0,72(sp)
 ac8:	3c180000 	lui	t8,0x0
 acc:	3c013f80 	lui	at,0x3f80
 ad0:	84820150 	lh	v0,336(a0)
 ad4:	240b00ff 	li	t3,255
 ad8:	240c00ff 	li	t4,255
 adc:	10400002 	beqz	v0,ae8 <EnSyatekiItm_Update+0x40>
 ae0:	244effff 	addiu	t6,v0,-1
 ae4:	a48e0150 	sh	t6,336(a0)
 ae8:	84820152 	lh	v0,338(a0)
 aec:	240d0004 	li	t5,4
 af0:	10400002 	beqz	v0,afc <EnSyatekiItm_Update+0x54>
 af4:	244fffff 	addiu	t7,v0,-1
 af8:	a48f0152 	sh	t7,338(a0)
 afc:	8f180000 	lw	t8,0(t8)
 b00:	870812d4 	lh	t0,4820(t8)
 b04:	51000017 	beqzl	t0,b64 <EnSyatekiItm_Update+0xbc>
 b08:	8fbf0044 	lw	ra,68(sp)
 b0c:	84890032 	lh	t1,50(a0)
 b10:	c48c0024 	lwc1	$f12,36(a0)
 b14:	c48e0028 	lwc1	$f14,40(a0)
 b18:	8c86002c 	lw	a2,44(a0)
 b1c:	84870030 	lh	a3,48(a0)
 b20:	afa90010 	sw	t1,16(sp)
 b24:	848a0034 	lh	t2,52(a0)
 b28:	44810000 	mtc1	at,$f0
 b2c:	8fb9004c 	lw	t9,76(sp)
 b30:	afad0034 	sw	t5,52(sp)
 b34:	afac0030 	sw	t4,48(sp)
 b38:	afa0002c 	sw	zero,44(sp)
 b3c:	afa00028 	sw	zero,40(sp)
 b40:	afab0024 	sw	t3,36(sp)
 b44:	afaa0014 	sw	t2,20(sp)
 b48:	e7a00018 	swc1	$f0,24(sp)
 b4c:	e7a0001c 	swc1	$f0,28(sp)
 b50:	e7a00020 	swc1	$f0,32(sp)
 b54:	8f2e0000 	lw	t6,0(t9)
 b58:	0c000000 	jal	0 <EnSyatekiItm_Init>
 b5c:	afae0038 	sw	t6,56(sp)
 b60:	8fbf0044 	lw	ra,68(sp)
 b64:	27bd0048 	addiu	sp,sp,72
 b68:	03e00008 	jr	ra
 b6c:	00000000 	nop
