
build/src/overlays/actors/ovl_En_Dnt_Demo/z_en_dnt_demo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDntDemo_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <EnDntDemo_Init>:
   c:	27bdff80 	addiu	sp,sp,-128
  10:	afb30044 	sw	s3,68(sp)
  14:	00809825 	move	s3,a0
  18:	afbf005c 	sw	ra,92(sp)
  1c:	afb60050 	sw	s6,80(sp)
  20:	3c040000 	lui	a0,0x0
  24:	00a0b025 	move	s6,a1
  28:	afbe0058 	sw	s8,88(sp)
  2c:	afb70054 	sw	s7,84(sp)
  30:	afb5004c 	sw	s5,76(sp)
  34:	afb40048 	sw	s4,72(sp)
  38:	afb20040 	sw	s2,64(sp)
  3c:	afb1003c 	sw	s1,60(sp)
  40:	afb00038 	sw	s0,56(sp)
  44:	0c000000 	jal	0 <EnDntDemo_Destroy>
  48:	24840000 	addiu	a0,a0,0
  4c:	3c040000 	lui	a0,0x0
  50:	0c000000 	jal	0 <EnDntDemo_Destroy>
  54:	24840000 	addiu	a0,a0,0
  58:	3c140000 	lui	s4,0x0
  5c:	26c41c24 	addiu	a0,s6,7204
  60:	3c170000 	lui	s7,0x0
  64:	26f70000 	addiu	s7,s7,0
  68:	afa40064 	sw	a0,100(sp)
  6c:	26940000 	addiu	s4,s4,0
  70:	00001025 	move	v0,zero
  74:	02609025 	move	s2,s3
  78:	02608025 	move	s0,s3
  7c:	26750160 	addiu	s5,s3,352
  80:	241e0009 	li	s8,9
  84:	8e8f0000 	lw	t7,0(s4)
  88:	8fa40064 	lw	a0,100(sp)
  8c:	24510001 	addiu	s1,v0,1
  90:	aeaf0000 	sw	t7,0(s5)
  94:	8e8e0004 	lw	t6,4(s4)
  98:	02602825 	move	a1,s3
  9c:	02c03025 	move	a2,s6
  a0:	aeae0004 	sw	t6,4(s5)
  a4:	8e8f0008 	lw	t7,8(s4)
  a8:	240701a3 	li	a3,419
  ac:	aeaf0008 	sw	t7,8(s5)
  b0:	c6040160 	lwc1	$f4,352(s0)
  b4:	e7a40010 	swc1	$f4,16(sp)
  b8:	c6060164 	lwc1	$f6,356(s0)
  bc:	e7a60014 	swc1	$f6,20(sp)
  c0:	c6080168 	lwc1	$f8,360(s0)
  c4:	afb10028 	sw	s1,40(sp)
  c8:	afa00024 	sw	zero,36(sp)
  cc:	afa00020 	sw	zero,32(sp)
  d0:	afa0001c 	sw	zero,28(sp)
  d4:	0c000000 	jal	0 <EnDntDemo_Destroy>
  d8:	e7a80018 	swc1	$f8,24(sp)
  dc:	10400004 	beqz	v0,f0 <EnDntDemo_Init+0xe4>
  e0:	ae4201d8 	sw	v0,472(s2)
  e4:	02e02025 	move	a0,s7
  e8:	0c000000 	jal	0 <EnDntDemo_Destroy>
  ec:	00402825 	move	a1,v0
  f0:	02201025 	move	v0,s1
  f4:	2694000c 	addiu	s4,s4,12
  f8:	26520004 	addiu	s2,s2,4
  fc:	2610000c 	addiu	s0,s0,12
 100:	163effe0 	bne	s1,s8,84 <EnDntDemo_Init+0x78>
 104:	26b5000c 	addiu	s5,s5,12
 108:	3c010000 	lui	at,0x0
 10c:	c4200000 	lwc1	$f0,0(at)
 110:	3c01c1a0 	lui	at,0xc1a0
 114:	44811000 	mtc1	at,$f2
 118:	3c01447a 	lui	at,0x447a
 11c:	44816000 	mtc1	at,$f12
 120:	e66001cc 	swc1	$f0,460(s3)
 124:	e66201d0 	swc1	$f2,464(s3)
 128:	e66c01d4 	swc1	$f12,468(s3)
 12c:	afa00028 	sw	zero,40(sp)
 130:	afa00024 	sw	zero,36(sp)
 134:	afa00020 	sw	zero,32(sp)
 138:	afa0001c 	sw	zero,28(sp)
 13c:	8fa40064 	lw	a0,100(sp)
 140:	02602825 	move	a1,s3
 144:	02c03025 	move	a2,s6
 148:	240701a2 	li	a3,418
 14c:	e7a00010 	swc1	$f0,16(sp)
 150:	e7a20014 	swc1	$f2,20(sp)
 154:	0c000000 	jal	0 <EnDntDemo_Destroy>
 158:	e7ac0018 	swc1	$f12,24(sp)
 15c:	10400005 	beqz	v0,174 <EnDntDemo_Init+0x168>
 160:	ae6201fc 	sw	v0,508(s3)
 164:	3c040000 	lui	a0,0x0
 168:	24840000 	addiu	a0,a0,0
 16c:	0c000000 	jal	0 <EnDntDemo_Destroy>
 170:	00402825 	move	a1,v0
 174:	8e780004 	lw	t8,4(s3)
 178:	2401fffe 	li	at,-2
 17c:	3c080000 	lui	t0,0x0
 180:	25080000 	addiu	t0,t0,0
 184:	0301c824 	and	t9,t8,at
 188:	a660015e 	sh	zero,350(s3)
 18c:	ae790004 	sw	t9,4(s3)
 190:	ae68014c 	sw	t0,332(s3)
 194:	8fbf005c 	lw	ra,92(sp)
 198:	8fbe0058 	lw	s8,88(sp)
 19c:	8fb70054 	lw	s7,84(sp)
 1a0:	8fb60050 	lw	s6,80(sp)
 1a4:	8fb5004c 	lw	s5,76(sp)
 1a8:	8fb40048 	lw	s4,72(sp)
 1ac:	8fb30044 	lw	s3,68(sp)
 1b0:	8fb20040 	lw	s2,64(sp)
 1b4:	8fb1003c 	lw	s1,60(sp)
 1b8:	8fb00038 	lw	s0,56(sp)
 1bc:	03e00008 	jr	ra
 1c0:	27bd0080 	addiu	sp,sp,128

000001c4 <func_809F0AA4>:
 1c4:	27bdffc0 	addiu	sp,sp,-64
 1c8:	afbf002c 	sw	ra,44(sp)
 1cc:	afb20028 	sw	s2,40(sp)
 1d0:	afb10024 	sw	s1,36(sp)
 1d4:	afb00020 	sw	s0,32(sp)
 1d8:	afa50044 	sw	a1,68(sp)
 1dc:	84860158 	lh	a2,344(a0)
 1e0:	00808025 	move	s0,a0
 1e4:	3c0141f0 	lui	at,0x41f0
 1e8:	50c0003a 	beqzl	a2,2d4 <func_809F0AA4+0x110>
 1ec:	44812000 	mtc1	at,$f4
 1f0:	8c8e01d8 	lw	t6,472(a0)
 1f4:	24030001 	li	v1,1
 1f8:	26020004 	addiu	v0,s0,4
 1fc:	a5c60270 	sh	a2,624(t6)
 200:	8c9801d8 	lw	t8,472(a0)
 204:	860f015a 	lh	t7,346(s0)
 208:	24120009 	li	s2,9
 20c:	a70f0274 	sh	t7,628(t8)
 210:	8c9901d8 	lw	t9,472(a0)
 214:	a3200278 	sb	zero,632(t9)
 218:	860a0158 	lh	t2,344(s0)
 21c:	8c4b01d8 	lw	t3,472(v0)
 220:	24630004 	addiu	v1,v1,4
 224:	24420010 	addiu	v0,v0,16
 228:	a56a0270 	sh	t2,624(t3)
 22c:	860c015a 	lh	t4,346(s0)
 230:	8c4d01c8 	lw	t5,456(v0)
 234:	a5ac0274 	sh	t4,628(t5)
 238:	8c4e01c8 	lw	t6,456(v0)
 23c:	a1c00278 	sb	zero,632(t6)
 240:	860f0158 	lh	t7,344(s0)
 244:	8c5801cc 	lw	t8,460(v0)
 248:	a70f0270 	sh	t7,624(t8)
 24c:	8619015a 	lh	t9,346(s0)
 250:	8c4a01cc 	lw	t2,460(v0)
 254:	a5590274 	sh	t9,628(t2)
 258:	8c4b01cc 	lw	t3,460(v0)
 25c:	a1600278 	sb	zero,632(t3)
 260:	860c0158 	lh	t4,344(s0)
 264:	8c4d01d0 	lw	t5,464(v0)
 268:	a5ac0270 	sh	t4,624(t5)
 26c:	860e015a 	lh	t6,346(s0)
 270:	8c4f01d0 	lw	t7,464(v0)
 274:	a5ee0274 	sh	t6,628(t7)
 278:	8c5801d0 	lw	t8,464(v0)
 27c:	a3000278 	sb	zero,632(t8)
 280:	8c4a01d4 	lw	t2,468(v0)
 284:	86190158 	lh	t9,344(s0)
 288:	a5590270 	sh	t9,624(t2)
 28c:	8c4c01d4 	lw	t4,468(v0)
 290:	860b015a 	lh	t3,346(s0)
 294:	a58b0274 	sh	t3,628(t4)
 298:	8c4d01d4 	lw	t5,468(v0)
 29c:	1472ffde 	bne	v1,s2,218 <func_809F0AA4+0x54>
 2a0:	a1a00278 	sb	zero,632(t5)
 2a4:	8e0201fc 	lw	v0,508(s0)
 2a8:	3c180000 	lui	t8,0x0
 2ac:	240f0002 	li	t7,2
 2b0:	904e023c 	lbu	t6,572(v0)
 2b4:	27180000 	addiu	t8,t8,0
 2b8:	51c00003 	beqzl	t6,2c8 <func_809F0AA4+0x104>
 2bc:	a6000158 	sh	zero,344(s0)
 2c0:	a44f024e 	sh	t7,590(v0)
 2c4:	a6000158 	sh	zero,344(s0)
 2c8:	1000014f 	b	808 <L809F0E1C+0x2cc>
 2cc:	ae18014c 	sw	t8,332(s0)
 2d0:	44812000 	mtc1	at,$f4
 2d4:	c6060090 	lwc1	$f6,144(s0)
 2d8:	4606203c 	c.lt.s	$f4,$f6
 2dc:	00000000 	nop
 2e0:	45030006 	bc1tl	2fc <func_809F0AA4+0x138>
 2e4:	86190156 	lh	t9,342(s0)
 2e8:	0c000000 	jal	0 <EnDntDemo_Destroy>
 2ec:	8fa40044 	lw	a0,68(sp)
 2f0:	1440001d 	bnez	v0,368 <func_809F0AA4+0x1a4>
 2f4:	00000000 	nop
 2f8:	86190156 	lh	t9,342(s0)
 2fc:	860b015e 	lh	t3,350(s0)
 300:	24040004 	li	a0,4
 304:	272a0001 	addiu	t2,t9,1
 308:	11600002 	beqz	t3,314 <func_809F0AA4+0x150>
 30c:	a60a0156 	sh	t2,342(s0)
 310:	a600015e 	sh	zero,350(s0)
 314:	860c0150 	lh	t4,336(s0)
 318:	24030001 	li	v1,1
 31c:	5180013b 	beqzl	t4,80c <L809F0E1C+0x2d0>
 320:	8fbf002c 	lw	ra,44(sp)
 324:	8e0d01d8 	lw	t5,472(s0)
 328:	26020004 	addiu	v0,s0,4
 32c:	24120009 	li	s2,9
 330:	a5a40270 	sh	a0,624(t5)
 334:	8c4e01d8 	lw	t6,472(v0)
 338:	24630004 	addiu	v1,v1,4
 33c:	24420010 	addiu	v0,v0,16
 340:	a5c40270 	sh	a0,624(t6)
 344:	8c4f01cc 	lw	t7,460(v0)
 348:	a5e40270 	sh	a0,624(t7)
 34c:	8c5801d0 	lw	t8,464(v0)
 350:	a7040270 	sh	a0,624(t8)
 354:	8c5901d4 	lw	t9,468(v0)
 358:	1472fff6 	bne	v1,s2,334 <func_809F0AA4+0x170>
 35c:	a7240270 	sh	a0,624(t9)
 360:	10000129 	b	808 <L809F0E1C+0x2cc>
 364:	a6000150 	sh	zero,336(s0)
 368:	0c000000 	jal	0 <EnDntDemo_Destroy>
 36c:	8fa40044 	lw	a0,68(sp)
 370:	5040000b 	beqzl	v0,3a0 <func_809F0AA4+0x1dc>
 374:	86020150 	lh	v0,336(s0)
 378:	860a015e 	lh	t2,350(s0)
 37c:	8fa40044 	lw	a0,68(sp)
 380:	240508ac 	li	a1,2220
 384:	15400005 	bnez	t2,39c <func_809F0AA4+0x1d8>
 388:	2406ff9d 	li	a2,-99
 38c:	8e0701e4 	lw	a3,484(s0)
 390:	0c000000 	jal	0 <EnDntDemo_Destroy>
 394:	afa00010 	sw	zero,16(sp)
 398:	a602015e 	sh	v0,350(s0)
 39c:	86020150 	lh	v0,336(s0)
 3a0:	24010028 	li	at,40
 3a4:	a6000156 	sh	zero,342(s0)
 3a8:	14410012 	bne	v0,at,3f4 <func_809F0AA4+0x230>
 3ac:	24110001 	li	s1,1
 3b0:	8e0b01d8 	lw	t3,472(s0)
 3b4:	02201825 	move	v1,s1
 3b8:	26020004 	addiu	v0,s0,4
 3bc:	24120009 	li	s2,9
 3c0:	a5710270 	sh	s1,624(t3)
 3c4:	8c4c01d8 	lw	t4,472(v0)
 3c8:	24630004 	addiu	v1,v1,4
 3cc:	24420010 	addiu	v0,v0,16
 3d0:	a5910270 	sh	s1,624(t4)
 3d4:	8c4d01cc 	lw	t5,460(v0)
 3d8:	a5b10270 	sh	s1,624(t5)
 3dc:	8c4e01d0 	lw	t6,464(v0)
 3e0:	a5d10270 	sh	s1,624(t6)
 3e4:	8c4f01d4 	lw	t7,468(v0)
 3e8:	1472fff6 	bne	v1,s2,3c4 <func_809F0AA4+0x200>
 3ec:	a5f10270 	sh	s1,624(t7)
 3f0:	86020150 	lh	v0,336(s0)
 3f4:	28410029 	slti	at,v0,41
 3f8:	24110001 	li	s1,1
 3fc:	14200009 	bnez	at,424 <func_809F0AA4+0x260>
 400:	24120009 	li	s2,9
 404:	3c040000 	lui	a0,0x0
 408:	0c000000 	jal	0 <EnDntDemo_Destroy>
 40c:	24840000 	addiu	a0,a0,0
 410:	260400e4 	addiu	a0,s0,228
 414:	2405205d 	li	a1,8285
 418:	0c000000 	jal	0 <EnDntDemo_Destroy>
 41c:	3c064000 	lui	a2,0x4000
 420:	86020150 	lh	v0,336(s0)
 424:	28410078 	slti	at,v0,120
 428:	10200003 	beqz	at,438 <func_809F0AA4+0x274>
 42c:	24580001 	addiu	t8,v0,1
 430:	100000f5 	b	808 <L809F0E1C+0x2cc>
 434:	a6180150 	sh	t8,336(s0)
 438:	a3a00035 	sb	zero,53(sp)
 43c:	a7a0003c 	sh	zero,60(sp)
 440:	a7a0003e 	sh	zero,62(sp)
 444:	0c000000 	jal	0 <EnDntDemo_Destroy>
 448:	8fa40044 	lw	a0,68(sp)
 44c:	2459ffff 	addiu	t9,v0,-1
 450:	2f210008 	sltiu	at,t9,8
 454:	102000b6 	beqz	at,730 <L809F0E1C+0x1f4>
 458:	0019c880 	sll	t9,t9,0x2
 45c:	3c010000 	lui	at,0x0
 460:	00390821 	addu	at,at,t9
 464:	8c390000 	lw	t9,0(at)
 468:	03200008 	jr	t9
 46c:	00000000 	nop

00000470 <L809F0D50>:
 470:	3c0a0000 	lui	t2,0x0
 474:	954a0ef2 	lhu	t2,3826(t2)
 478:	240c0002 	li	t4,2
 47c:	240d0002 	li	t5,2
 480:	314b4000 	andi	t3,t2,0x4000
 484:	15600006 	bnez	t3,4a0 <L809F0D80>
 488:	2404003e 	li	a0,62
 48c:	a7ac003c 	sh	t4,60(sp)
 490:	0c000000 	jal	0 <EnDntDemo_Destroy>
 494:	a60d015c 	sh	t5,348(s0)
 498:	100000a6 	b	734 <L809F0E1C+0x1f8>
 49c:	87a8003c 	lh	t0,60(sp)

000004a0 <L809F0D80>:
 4a0:	3c0e0000 	lui	t6,0x0
 4a4:	95ce0ef2 	lhu	t6,3826(t6)
 4a8:	31cf8000 	andi	t7,t6,0x8000
 4ac:	15e00023 	bnez	t7,53c <L809F0E1C>
 4b0:	00000000 	nop
 4b4:	0c000000 	jal	0 <EnDntDemo_Destroy>
 4b8:	8fa40044 	lw	a0,68(sp)
 4bc:	24010002 	li	at,2
 4c0:	1041001e 	beq	v0,at,53c <L809F0E1C>
 4c4:	3c070000 	lui	a3,0x0
 4c8:	3c180000 	lui	t8,0x0
 4cc:	24e70000 	addiu	a3,a3,0
 4d0:	27180000 	addiu	t8,t8,0
 4d4:	3c050000 	lui	a1,0x0
 4d8:	24a50000 	addiu	a1,a1,0
 4dc:	afb80014 	sw	t8,20(sp)
 4e0:	afa70010 	sw	a3,16(sp)
 4e4:	24044807 	li	a0,18439
 4e8:	0c000000 	jal	0 <EnDntDemo_Destroy>
 4ec:	24060004 	li	a2,4
 4f0:	8e1901fc 	lw	t9,508(s0)
 4f4:	a611015c 	sh	s1,348(s0)
 4f8:	00114400 	sll	t0,s1,0x10
 4fc:	00084403 	sra	t0,t0,0x10
 500:	a731024e 	sh	s1,590(t9)
 504:	a7a8003c 	sh	t0,60(sp)
 508:	860a015e 	lh	t2,350(s0)
 50c:	24050924 	li	a1,2340
 510:	2406ff9d 	li	a2,-99
 514:	11400007 	beqz	t2,534 <L809F0D80+0x94>
 518:	00000000 	nop
 51c:	a600015e 	sh	zero,350(s0)
 520:	8e0701fc 	lw	a3,508(s0)
 524:	a7a8003c 	sh	t0,60(sp)
 528:	afa00010 	sw	zero,16(sp)
 52c:	0c000000 	jal	0 <EnDntDemo_Destroy>
 530:	8fa40044 	lw	a0,68(sp)
 534:	1000007f 	b	734 <L809F0E1C+0x1f8>
 538:	87a8003c 	lh	t0,60(sp)

0000053c <L809F0E1C>:
 53c:	3c010000 	lui	at,0x0
 540:	0c000000 	jal	0 <EnDntDemo_Destroy>
 544:	c42c0000 	lwc1	$f12,0(at)
 548:	4600020d 	trunc.w.s	$f8,$f0
 54c:	8fa40044 	lw	a0,68(sp)
 550:	440c4000 	mfc1	t4,$f8
 554:	0c000000 	jal	0 <EnDntDemo_Destroy>
 558:	a7ac003a 	sh	t4,58(sp)
 55c:	87ad003a 	lh	t5,58(sp)
 560:	00021c00 	sll	v1,v0,0x10
 564:	00031c03 	sra	v1,v1,0x10
 568:	2463ffff 	addiu	v1,v1,-1
 56c:	24010008 	li	at,8
 570:	15a1000c 	bne	t5,at,5a4 <L809F0E1C+0x68>
 574:	a7a30038 	sh	v1,56(sp)
 578:	240e0001 	li	t6,1
 57c:	240f0008 	li	t7,8
 580:	24180004 	li	t8,4
 584:	3c040000 	lui	a0,0x0
 588:	a3ae0035 	sb	t6,53(sp)
 58c:	a7af003e 	sh	t7,62(sp)
 590:	a7b8003c 	sh	t8,60(sp)
 594:	0c000000 	jal	0 <EnDntDemo_Destroy>
 598:	24840000 	addiu	a0,a0,0
 59c:	10000065 	b	734 <L809F0E1C+0x1f8>
 5a0:	87a8003c 	lh	t0,60(sp)
 5a4:	0003cc00 	sll	t9,v1,0x10
 5a8:	00195403 	sra	t2,t9,0x10
 5ac:	29410008 	slti	at,t2,8
 5b0:	14200013 	bnez	at,600 <L809F0E1C+0xc4>
 5b4:	3c040000 	lui	a0,0x0
 5b8:	0c000000 	jal	0 <EnDntDemo_Destroy>
 5bc:	24840000 	addiu	a0,a0,0
 5c0:	3c040000 	lui	a0,0x0
 5c4:	0c000000 	jal	0 <EnDntDemo_Destroy>
 5c8:	24840000 	addiu	a0,a0,0
 5cc:	3c040000 	lui	a0,0x0
 5d0:	0c000000 	jal	0 <EnDntDemo_Destroy>
 5d4:	24840000 	addiu	a0,a0,0
 5d8:	3c040000 	lui	a0,0x0
 5dc:	0c000000 	jal	0 <EnDntDemo_Destroy>
 5e0:	24840000 	addiu	a0,a0,0
 5e4:	3c010000 	lui	at,0x0
 5e8:	0c000000 	jal	0 <EnDntDemo_Destroy>
 5ec:	c42c0000 	lwc1	$f12,0(at)
 5f0:	4600028d 	trunc.w.s	$f10,$f0
 5f4:	440c5000 	mfc1	t4,$f10
 5f8:	00000000 	nop
 5fc:	a7ac0038 	sh	t4,56(sp)
 600:	87ad003a 	lh	t5,58(sp)
 604:	87af0038 	lh	t7,56(sp)
 608:	3c0a0000 	lui	t2,0x0
 60c:	000d70c0 	sll	t6,t5,0x3
 610:	01cd7023 	subu	t6,t6,t5
 614:	000e7040 	sll	t6,t6,0x1
 618:	000fc040 	sll	t8,t7,0x1
 61c:	01d8c821 	addu	t9,t6,t8
 620:	01595021 	addu	t2,t2,t9
 624:	854a0000 	lh	t2,0(t2)
 628:	3c0c0000 	lui	t4,0x0
 62c:	258c0000 	addiu	t4,t4,0
 630:	000a5880 	sll	t3,t2,0x2
 634:	016c1021 	addu	v0,t3,t4
 638:	844d0000 	lh	t5,0(v0)
 63c:	844f0002 	lh	t7,2(v0)
 640:	a7aa0036 	sh	t2,54(sp)
 644:	a7ad003c 	sh	t5,60(sp)
 648:	a60f015a 	sh	t7,346(s0)
 64c:	8603015a 	lh	v1,346(s0)
 650:	24010002 	li	at,2
 654:	10710017 	beq	v1,s1,6b4 <L809F0E1C+0x178>
 658:	00000000 	nop
 65c:	10610007 	beq	v1,at,67c <L809F0E1C+0x140>
 660:	24010003 	li	at,3
 664:	14610015 	bne	v1,at,6bc <L809F0E1C+0x180>
 668:	00000000 	nop
 66c:	0c000000 	jal	0 <EnDntDemo_Destroy>
 670:	2404002d 	li	a0,45
 674:	10000011 	b	6bc <L809F0E1C+0x180>
 678:	00000000 	nop
 67c:	860e015e 	lh	t6,350(s0)
 680:	2405092e 	li	a1,2350
 684:	2406ff9d 	li	a2,-99
 688:	11c00006 	beqz	t6,6a4 <L809F0E1C+0x168>
 68c:	00000000 	nop
 690:	a600015e 	sh	zero,350(s0)
 694:	8e0701e4 	lw	a3,484(s0)
 698:	afa00010 	sw	zero,16(sp)
 69c:	0c000000 	jal	0 <EnDntDemo_Destroy>
 6a0:	8fa40044 	lw	a0,68(sp)
 6a4:	0c000000 	jal	0 <EnDntDemo_Destroy>
 6a8:	2404081a 	li	a0,2074
 6ac:	10000003 	b	6bc <L809F0E1C+0x180>
 6b0:	00000000 	nop
 6b4:	0c000000 	jal	0 <EnDntDemo_Destroy>
 6b8:	24040055 	li	a0,85
 6bc:	3c040000 	lui	a0,0x0
 6c0:	0c000000 	jal	0 <EnDntDemo_Destroy>
 6c4:	24840000 	addiu	a0,a0,0
 6c8:	3c040000 	lui	a0,0x0
 6cc:	24840000 	addiu	a0,a0,0
 6d0:	0c000000 	jal	0 <EnDntDemo_Destroy>
 6d4:	87a5003a 	lh	a1,58(sp)
 6d8:	3c040000 	lui	a0,0x0
 6dc:	24840000 	addiu	a0,a0,0
 6e0:	0c000000 	jal	0 <EnDntDemo_Destroy>
 6e4:	87a50038 	lh	a1,56(sp)
 6e8:	3c040000 	lui	a0,0x0
 6ec:	24840000 	addiu	a0,a0,0
 6f0:	0c000000 	jal	0 <EnDntDemo_Destroy>
 6f4:	87a50036 	lh	a1,54(sp)
 6f8:	3c040000 	lui	a0,0x0
 6fc:	0c000000 	jal	0 <EnDntDemo_Destroy>
 700:	24840000 	addiu	a0,a0,0
 704:	3c040000 	lui	a0,0x0
 708:	24840000 	addiu	a0,a0,0
 70c:	0c000000 	jal	0 <EnDntDemo_Destroy>
 710:	87a5003c 	lh	a1,60(sp)
 714:	3c040000 	lui	a0,0x0
 718:	24840000 	addiu	a0,a0,0
 71c:	0c000000 	jal	0 <EnDntDemo_Destroy>
 720:	8605015a 	lh	a1,346(s0)
 724:	3c040000 	lui	a0,0x0
 728:	0c000000 	jal	0 <EnDntDemo_Destroy>
 72c:	24840000 	addiu	a0,a0,0
 730:	87a8003c 	lh	t0,60(sp)
 734:	00001825 	move	v1,zero
 738:	02001025 	move	v0,s0
 73c:	11000032 	beqz	t0,808 <L809F0E1C+0x2cc>
 740:	24090002 	li	t1,2
 744:	93a70035 	lbu	a3,53(sp)
 748:	87a6003e 	lh	a2,62(sp)
 74c:	2405012c 	li	a1,300
 750:	50c00007 	beqzl	a2,770 <L809F0E1C+0x234>
 754:	860a015a 	lh	t2,346(s0)
 758:	00c30019 	multu	a2,v1
 75c:	8c5901d8 	lw	t9,472(v0)
 760:	0000c012 	mflo	t8
 764:	a7380264 	sh	t8,612(t9)
 768:	00000000 	nop
 76c:	860a015a 	lh	t2,346(s0)
 770:	8c4b01d8 	lw	t3,472(v0)
 774:	24630001 	addiu	v1,v1,1
 778:	a56a0274 	sh	t2,628(t3)
 77c:	8c4c01d8 	lw	t4,472(v0)
 780:	a5880270 	sh	t0,624(t4)
 784:	8c4d01d8 	lw	t5,472(v0)
 788:	a1a70276 	sb	a3,630(t5)
 78c:	860f015c 	lh	t7,348(s0)
 790:	11e00018 	beqz	t7,7f4 <L809F0E1C+0x2b8>
 794:	00000000 	nop
 798:	8c4e01d8 	lw	t6,472(v0)
 79c:	a5c50258 	sh	a1,600(t6)
 7a0:	8618015c 	lh	t8,348(s0)
 7a4:	8c5901d8 	lw	t9,472(v0)
 7a8:	a3380278 	sb	t8,632(t9)
 7ac:	8e0b01fc 	lw	t3,508(s0)
 7b0:	8c4a01d8 	lw	t2,472(v0)
 7b4:	8d6d0024 	lw	t5,36(t3)
 7b8:	ad4d0288 	sw	t5,648(t2)
 7bc:	8d6c0028 	lw	t4,40(t3)
 7c0:	ad4c028c 	sw	t4,652(t2)
 7c4:	8d6d002c 	lw	t5,44(t3)
 7c8:	ad4d0290 	sw	t5,656(t2)
 7cc:	8604015c 	lh	a0,348(s0)
 7d0:	16240004 	bne	s1,a0,7e4 <L809F0E1C+0x2a8>
 7d4:	00000000 	nop
 7d8:	8e0f01fc 	lw	t7,508(s0)
 7dc:	a5f1024e 	sh	s1,590(t7)
 7e0:	8604015c 	lh	a0,348(s0)
 7e4:	15240003 	bne	t1,a0,7f4 <L809F0E1C+0x2b8>
 7e8:	00000000 	nop
 7ec:	8e0e01fc 	lw	t6,508(s0)
 7f0:	a5c50240 	sh	a1,576(t6)
 7f4:	1472ffd6 	bne	v1,s2,750 <L809F0E1C+0x214>
 7f8:	24420004 	addiu	v0,v0,4
 7fc:	3c180000 	lui	t8,0x0
 800:	27180000 	addiu	t8,t8,0
 804:	ae18014c 	sw	t8,332(s0)
 808:	8fbf002c 	lw	ra,44(sp)
 80c:	8fb00020 	lw	s0,32(sp)
 810:	8fb10024 	lw	s1,36(sp)
 814:	8fb20028 	lw	s2,40(sp)
 818:	03e00008 	jr	ra
 81c:	27bd0040 	addiu	sp,sp,64

00000820 <func_809F1100>:
 820:	27bdff88 	addiu	sp,sp,-120
 824:	afbf004c 	sw	ra,76(sp)
 828:	afb60048 	sw	s6,72(sp)
 82c:	afb50044 	sw	s5,68(sp)
 830:	afb40040 	sw	s4,64(sp)
 834:	afb3003c 	sw	s3,60(sp)
 838:	afb20038 	sw	s2,56(sp)
 83c:	afb10034 	sw	s1,52(sp)
 840:	afb00030 	sw	s0,48(sp)
 844:	f7b80028 	sdc1	$f24,40(sp)
 848:	f7b60020 	sdc1	$f22,32(sp)
 84c:	f7b40018 	sdc1	$f20,24(sp)
 850:	afa5007c 	sw	a1,124(sp)
 854:	848e0158 	lh	t6,344(a0)
 858:	00809025 	move	s2,a0
 85c:	51c00049 	beqzl	t6,984 <func_809F1100+0x164>
 860:	8648015c 	lh	t0,348(s2)
 864:	848f015a 	lh	t7,346(a0)
 868:	8c9801d8 	lw	t8,472(a0)
 86c:	24020001 	li	v0,1
 870:	24900004 	addiu	s0,a0,4
 874:	a70f0274 	sh	t7,628(t8)
 878:	8c8801d8 	lw	t0,472(a0)
 87c:	84990158 	lh	t9,344(a0)
 880:	24140009 	li	s4,9
 884:	a5190270 	sh	t9,624(t0)
 888:	8c8901d8 	lw	t1,472(a0)
 88c:	a1200278 	sb	zero,632(t1)
 890:	864a015a 	lh	t2,346(s2)
 894:	8e0b01d8 	lw	t3,472(s0)
 898:	24420004 	addiu	v0,v0,4
 89c:	26100010 	addiu	s0,s0,16
 8a0:	a56a0274 	sh	t2,628(t3)
 8a4:	864c0158 	lh	t4,344(s2)
 8a8:	8e0d01c8 	lw	t5,456(s0)
 8ac:	a5ac0270 	sh	t4,624(t5)
 8b0:	8e0e01c8 	lw	t6,456(s0)
 8b4:	a1c00278 	sb	zero,632(t6)
 8b8:	864f015a 	lh	t7,346(s2)
 8bc:	8e1801cc 	lw	t8,460(s0)
 8c0:	a70f0274 	sh	t7,628(t8)
 8c4:	86590158 	lh	t9,344(s2)
 8c8:	8e0801cc 	lw	t0,460(s0)
 8cc:	a5190270 	sh	t9,624(t0)
 8d0:	8e0901cc 	lw	t1,460(s0)
 8d4:	a1200278 	sb	zero,632(t1)
 8d8:	864a015a 	lh	t2,346(s2)
 8dc:	8e0b01d0 	lw	t3,464(s0)
 8e0:	a56a0274 	sh	t2,628(t3)
 8e4:	864c0158 	lh	t4,344(s2)
 8e8:	8e0d01d0 	lw	t5,464(s0)
 8ec:	a5ac0270 	sh	t4,624(t5)
 8f0:	8e0e01d0 	lw	t6,464(s0)
 8f4:	a1c00278 	sb	zero,632(t6)
 8f8:	8e1801d4 	lw	t8,468(s0)
 8fc:	864f015a 	lh	t7,346(s2)
 900:	a70f0274 	sh	t7,628(t8)
 904:	8e0801d4 	lw	t0,468(s0)
 908:	86590158 	lh	t9,344(s2)
 90c:	a5190270 	sh	t9,624(t0)
 910:	8e0901d4 	lw	t1,468(s0)
 914:	1454ffde 	bne	v0,s4,890 <func_809F1100+0x70>
 918:	a1200278 	sb	zero,632(t1)
 91c:	8e4301fc 	lw	v1,508(s2)
 920:	24010001 	li	at,1
 924:	240b0002 	li	t3,2
 928:	846a023e 	lh	t2,574(v1)
 92c:	55410004 	bnel	t2,at,940 <func_809F1100+0x120>
 930:	846c024a 	lh	t4,586(v1)
 934:	10000009 	b	95c <func_809F1100+0x13c>
 938:	a46b024e 	sh	t3,590(v1)
 93c:	846c024a 	lh	t4,586(v1)
 940:	240d0003 	li	t5,3
 944:	240e0003 	li	t6,3
 948:	51800004 	beqzl	t4,95c <func_809F1100+0x13c>
 94c:	a46e023e 	sh	t6,574(v1)
 950:	10000002 	b	95c <func_809F1100+0x13c>
 954:	a46d024e 	sh	t5,590(v1)
 958:	a46e023e 	sh	t6,574(v1)
 95c:	8e4f01fc 	lw	t7,508(s2)
 960:	3c190000 	lui	t9,0x0
 964:	27390000 	addiu	t9,t9,0
 968:	a5e00240 	sh	zero,576(t7)
 96c:	a640015a 	sh	zero,346(s2)
 970:	8658015a 	lh	t8,346(s2)
 974:	ae59014c 	sw	t9,332(s2)
 978:	10000039 	b	a60 <func_809F1100+0x240>
 97c:	a6580158 	sh	t8,344(s2)
 980:	8648015c 	lh	t0,348(s2)
 984:	24010002 	li	at,2
 988:	00001025 	move	v0,zero
 98c:	15010034 	bne	t0,at,a60 <func_809F1100+0x240>
 990:	02408025 	move	s0,s2
 994:	3c0141a0 	lui	at,0x41a0
 998:	4481c000 	mtc1	at,$f24
 99c:	2416000a 	li	s6,10
 9a0:	27b50064 	addiu	s5,sp,100
 9a4:	24140009 	li	s4,9
 9a8:	8e4301fc 	lw	v1,508(s2)
 9ac:	24530001 	addiu	s3,v0,1
 9b0:	304b0001 	andi	t3,v0,0x1
 9b4:	8c6a0024 	lw	t2,36(v1)
 9b8:	847100b6 	lh	s1,182(v1)
 9bc:	44932000 	mtc1	s3,$f4
 9c0:	aeaa0000 	sw	t2,0(s5)
 9c4:	8c690028 	lw	t1,40(v1)
 9c8:	00118823 	negu	s1,s1
 9cc:	00118c00 	sll	s1,s1,0x10
 9d0:	aea90004 	sw	t1,4(s5)
 9d4:	8c6a002c 	lw	t2,44(v1)
 9d8:	00118c03 	sra	s1,s1,0x10
 9dc:	15600004 	bnez	t3,9f0 <func_809F1100+0x1d0>
 9e0:	aeaa0008 	sw	t2,8(s5)
 9e4:	2631a628 	addiu	s1,s1,-23000
 9e8:	00118c00 	sll	s1,s1,0x10
 9ec:	00118c03 	sra	s1,s1,0x10
 9f0:	468021a0 	cvt.s.w	$f6,$f4
 9f4:	8e0c01d8 	lw	t4,472(s0)
 9f8:	00112400 	sll	a0,s1,0x10
 9fc:	00042403 	sra	a0,a0,0x10
 a00:	a596025a 	sh	s6,602(t4)
 a04:	46183202 	mul.s	$f8,$f6,$f24
 a08:	46184500 	add.s	$f20,$f8,$f24
 a0c:	0c000000 	jal	0 <EnDntDemo_Destroy>
 a10:	4600a586 	mov.s	$f22,$f20
 a14:	46140282 	mul.s	$f10,$f0,$f20
 a18:	c7b00064 	lwc1	$f16,100(sp)
 a1c:	8e0d01d8 	lw	t5,472(s0)
 a20:	00112400 	sll	a0,s1,0x10
 a24:	00042403 	sra	a0,a0,0x10
 a28:	46105480 	add.s	$f18,$f10,$f16
 a2c:	e5b20288 	swc1	$f18,648(t5)
 a30:	8e0e01d8 	lw	t6,472(s0)
 a34:	c7a40068 	lwc1	$f4,104(sp)
 a38:	0c000000 	jal	0 <EnDntDemo_Destroy>
 a3c:	e5c4028c 	swc1	$f4,652(t6)
 a40:	46160182 	mul.s	$f6,$f0,$f22
 a44:	c7a8006c 	lwc1	$f8,108(sp)
 a48:	8e0f01d8 	lw	t7,472(s0)
 a4c:	02601025 	move	v0,s3
 a50:	26100004 	addiu	s0,s0,4
 a54:	46083280 	add.s	$f10,$f6,$f8
 a58:	1674ffd3 	bne	s3,s4,9a8 <func_809F1100+0x188>
 a5c:	e5ea0290 	swc1	$f10,656(t7)
 a60:	8fbf004c 	lw	ra,76(sp)
 a64:	d7b40018 	ldc1	$f20,24(sp)
 a68:	d7b60020 	ldc1	$f22,32(sp)
 a6c:	d7b80028 	ldc1	$f24,40(sp)
 a70:	8fb00030 	lw	s0,48(sp)
 a74:	8fb10034 	lw	s1,52(sp)
 a78:	8fb20038 	lw	s2,56(sp)
 a7c:	8fb3003c 	lw	s3,60(sp)
 a80:	8fb40040 	lw	s4,64(sp)
 a84:	8fb50044 	lw	s5,68(sp)
 a88:	8fb60048 	lw	s6,72(sp)
 a8c:	03e00008 	jr	ra
 a90:	27bd0078 	addiu	sp,sp,120

00000a94 <func_809F1374>:
 a94:	afa50004 	sw	a1,4(sp)
 a98:	848e0158 	lh	t6,344(a0)
 a9c:	11c00032 	beqz	t6,b68 <func_809F1374+0xd4>
 aa0:	00000000 	nop
 aa4:	848f015a 	lh	t7,346(a0)
 aa8:	8c9801d8 	lw	t8,472(a0)
 aac:	24020001 	li	v0,1
 ab0:	24830004 	addiu	v1,a0,4
 ab4:	a70f0274 	sh	t7,628(t8)
 ab8:	8c8801d8 	lw	t0,472(a0)
 abc:	84990158 	lh	t9,344(a0)
 ac0:	24050009 	li	a1,9
 ac4:	a5190270 	sh	t9,624(t0)
 ac8:	8c8901d8 	lw	t1,472(a0)
 acc:	a1200278 	sb	zero,632(t1)
 ad0:	848a015a 	lh	t2,346(a0)
 ad4:	8c6b01d8 	lw	t3,472(v1)
 ad8:	24420004 	addiu	v0,v0,4
 adc:	24630010 	addiu	v1,v1,16
 ae0:	a56a0274 	sh	t2,628(t3)
 ae4:	848c0158 	lh	t4,344(a0)
 ae8:	8c6d01c8 	lw	t5,456(v1)
 aec:	a5ac0270 	sh	t4,624(t5)
 af0:	8c6e01c8 	lw	t6,456(v1)
 af4:	a1c00278 	sb	zero,632(t6)
 af8:	848f015a 	lh	t7,346(a0)
 afc:	8c7801cc 	lw	t8,460(v1)
 b00:	a70f0274 	sh	t7,628(t8)
 b04:	84990158 	lh	t9,344(a0)
 b08:	8c6801cc 	lw	t0,460(v1)
 b0c:	a5190270 	sh	t9,624(t0)
 b10:	8c6901cc 	lw	t1,460(v1)
 b14:	a1200278 	sb	zero,632(t1)
 b18:	848a015a 	lh	t2,346(a0)
 b1c:	8c6b01d0 	lw	t3,464(v1)
 b20:	a56a0274 	sh	t2,628(t3)
 b24:	848c0158 	lh	t4,344(a0)
 b28:	8c6d01d0 	lw	t5,464(v1)
 b2c:	a5ac0270 	sh	t4,624(t5)
 b30:	8c6e01d0 	lw	t6,464(v1)
 b34:	a1c00278 	sb	zero,632(t6)
 b38:	8c7801d4 	lw	t8,468(v1)
 b3c:	848f015a 	lh	t7,346(a0)
 b40:	a70f0274 	sh	t7,628(t8)
 b44:	8c6801d4 	lw	t0,468(v1)
 b48:	84990158 	lh	t9,344(a0)
 b4c:	a5190270 	sh	t9,624(t0)
 b50:	8c6901d4 	lw	t1,468(v1)
 b54:	1445ffde 	bne	v0,a1,ad0 <func_809F1374+0x3c>
 b58:	a1200278 	sb	zero,632(t1)
 b5c:	a480015a 	sh	zero,346(a0)
 b60:	848a015a 	lh	t2,346(a0)
 b64:	a48a0158 	sh	t2,344(a0)
 b68:	03e00008 	jr	ra
 b6c:	00000000 	nop

00000b70 <EnDntDemo_Update>:
 b70:	27bdffb8 	addiu	sp,sp,-72
 b74:	afbf0044 	sw	ra,68(sp)
 b78:	84820154 	lh	v0,340(a0)
 b7c:	10400002 	beqz	v0,b88 <EnDntDemo_Update+0x18>
 b80:	244effff 	addiu	t6,v0,-1
 b84:	a48e0154 	sh	t6,340(a0)
 b88:	84820152 	lh	v0,338(a0)
 b8c:	10400002 	beqz	v0,b98 <EnDntDemo_Update+0x28>
 b90:	244fffff 	addiu	t7,v0,-1
 b94:	a48f0152 	sh	t7,338(a0)
 b98:	afa40048 	sw	a0,72(sp)
 b9c:	afa5004c 	sw	a1,76(sp)
 ba0:	8c99014c 	lw	t9,332(a0)
 ba4:	0320f809 	jalr	t9
 ba8:	00000000 	nop
 bac:	3c180000 	lui	t8,0x0
 bb0:	8f180000 	lw	t8,0(t8)
 bb4:	8fa40048 	lw	a0,72(sp)
 bb8:	8fa5004c 	lw	a1,76(sp)
 bbc:	870812d4 	lh	t0,4820(t8)
 bc0:	5100003b 	beqzl	t0,cb0 <EnDntDemo_Update+0x140>
 bc4:	8fbf0044 	lw	ra,68(sp)
 bc8:	84820156 	lh	v0,342(a0)
 bcc:	3c013f80 	lui	at,0x3f80
 bd0:	240900ff 	li	t1,255
 bd4:	1040001e 	beqz	v0,c50 <EnDntDemo_Update+0xe0>
 bd8:	240a00ff 	li	t2,255
 bdc:	30490001 	andi	t1,v0,0x1
 be0:	15200032 	bnez	t1,cac <EnDntDemo_Update+0x13c>
 be4:	3c013f80 	lui	at,0x3f80
 be8:	848a0032 	lh	t2,50(a0)
 bec:	c48c0024 	lwc1	$f12,36(a0)
 bf0:	c48e0028 	lwc1	$f14,40(a0)
 bf4:	8c86002c 	lw	a2,44(a0)
 bf8:	84870030 	lh	a3,48(a0)
 bfc:	afaa0010 	sw	t2,16(sp)
 c00:	848b0034 	lh	t3,52(a0)
 c04:	44810000 	mtc1	at,$f0
 c08:	240c0078 	li	t4,120
 c0c:	240d0078 	li	t5,120
 c10:	240e00ff 	li	t6,255
 c14:	240f0004 	li	t7,4
 c18:	afaf0034 	sw	t7,52(sp)
 c1c:	afae0030 	sw	t6,48(sp)
 c20:	afad0028 	sw	t5,40(sp)
 c24:	afac0024 	sw	t4,36(sp)
 c28:	afa0002c 	sw	zero,44(sp)
 c2c:	afab0014 	sw	t3,20(sp)
 c30:	e7a00018 	swc1	$f0,24(sp)
 c34:	e7a0001c 	swc1	$f0,28(sp)
 c38:	e7a00020 	swc1	$f0,32(sp)
 c3c:	8cb90000 	lw	t9,0(a1)
 c40:	0c000000 	jal	0 <EnDntDemo_Destroy>
 c44:	afb90038 	sw	t9,56(sp)
 c48:	10000019 	b	cb0 <EnDntDemo_Update+0x140>
 c4c:	8fbf0044 	lw	ra,68(sp)
 c50:	84980032 	lh	t8,50(a0)
 c54:	c48c0024 	lwc1	$f12,36(a0)
 c58:	c48e0028 	lwc1	$f14,40(a0)
 c5c:	8c86002c 	lw	a2,44(a0)
 c60:	84870030 	lh	a3,48(a0)
 c64:	afb80010 	sw	t8,16(sp)
 c68:	84880034 	lh	t0,52(a0)
 c6c:	44810000 	mtc1	at,$f0
 c70:	240b00ff 	li	t3,255
 c74:	240c00ff 	li	t4,255
 c78:	240d0004 	li	t5,4
 c7c:	afad0034 	sw	t5,52(sp)
 c80:	afac0030 	sw	t4,48(sp)
 c84:	afab002c 	sw	t3,44(sp)
 c88:	afaa0028 	sw	t2,40(sp)
 c8c:	afa90024 	sw	t1,36(sp)
 c90:	afa80014 	sw	t0,20(sp)
 c94:	e7a00018 	swc1	$f0,24(sp)
 c98:	e7a0001c 	swc1	$f0,28(sp)
 c9c:	e7a00020 	swc1	$f0,32(sp)
 ca0:	8cae0000 	lw	t6,0(a1)
 ca4:	0c000000 	jal	0 <EnDntDemo_Destroy>
 ca8:	afae0038 	sw	t6,56(sp)
 cac:	8fbf0044 	lw	ra,68(sp)
 cb0:	27bd0048 	addiu	sp,sp,72
 cb4:	03e00008 	jr	ra
 cb8:	00000000 	nop
 cbc:	00000000 	nop
