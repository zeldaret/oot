
build/src/overlays/actors/ovl_Bg_Spot11_Bakudankabe/z_bg_spot11_bakudankabe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B2180>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	00803025 	move	a2,a0
   8:	afa50024 	sw	a1,36(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf0014 	sw	ra,20(sp)
  14:	24c50164 	addiu	a1,a2,356
  18:	afa50018 	sw	a1,24(sp)
  1c:	0c000000 	jal	0 <func_808B2180>
  20:	afa60020 	sw	a2,32(sp)
  24:	3c070000 	lui	a3,0x0
  28:	8fa50018 	lw	a1,24(sp)
  2c:	8fa60020 	lw	a2,32(sp)
  30:	24e70020 	addiu	a3,a3,32
  34:	0c000000 	jal	0 <func_808B2180>
  38:	8fa40024 	lw	a0,36(sp)
  3c:	8fa60020 	lw	a2,32(sp)
  40:	c4c40024 	lwc1	$f4,36(a2)
  44:	c4c80028 	lwc1	$f8,40(a2)
  48:	c4d0002c 	lwc1	$f16,44(a2)
  4c:	4600218d 	trunc.w.s	$f6,$f4
  50:	84ce01aa 	lh	t6,426(a2)
  54:	84ca01ac 	lh	t2,428(a2)
  58:	4600428d 	trunc.w.s	$f10,$f8
  5c:	44083000 	mfc1	t0,$f6
  60:	84d901ae 	lh	t9,430(a2)
  64:	4600848d 	trunc.w.s	$f18,$f16
  68:	440f5000 	mfc1	t7,$f10
  6c:	01c84821 	addu	t1,t6,t0
  70:	a4c901aa 	sh	t1,426(a2)
  74:	440b9000 	mfc1	t3,$f18
  78:	014fc021 	addu	t8,t2,t7
  7c:	a4d801ac 	sh	t8,428(a2)
  80:	032b6021 	addu	t4,t9,t3
  84:	a4cc01ae 	sh	t4,430(a2)
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0020 	addiu	sp,sp,32
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <func_808B2218>:
  98:	27bdff28 	addiu	sp,sp,-216
  9c:	f7be0070 	sdc1	$f30,112(sp)
  a0:	3c010000 	lui	at,0x0
  a4:	c43e0024 	lwc1	$f30,36(at)
  a8:	f7bc0068 	sdc1	$f28,104(sp)
  ac:	3c0141a0 	lui	at,0x41a0
  b0:	4481e000 	mtc1	at,$f28
  b4:	f7ba0060 	sdc1	$f26,96(sp)
  b8:	3c0140d0 	lui	at,0x40d0
  bc:	4481d000 	mtc1	at,$f26
  c0:	f7b80058 	sdc1	$f24,88(sp)
  c4:	3c0141f0 	lui	at,0x41f0
  c8:	4481c000 	mtc1	at,$f24
  cc:	44800000 	mtc1	zero,$f0
  d0:	f7b60050 	sdc1	$f22,80(sp)
  d4:	3c0142f0 	lui	at,0x42f0
  d8:	4481b000 	mtc1	at,$f22
  dc:	afb70094 	sw	s7,148(sp)
  e0:	f7b40048 	sdc1	$f20,72(sp)
  e4:	3c013f00 	lui	at,0x3f00
  e8:	afbe0098 	sw	s8,152(sp)
  ec:	afb60090 	sw	s6,144(sp)
  f0:	afb5008c 	sw	s5,140(sp)
  f4:	afb20080 	sw	s2,128(sp)
  f8:	afb1007c 	sw	s1,124(sp)
  fc:	3c170000 	lui	s7,0x0
 100:	4481a000 	mtc1	at,$f20
 104:	afbf009c 	sw	ra,156(sp)
 108:	afb40088 	sw	s4,136(sp)
 10c:	afb30084 	sw	s3,132(sp)
 110:	afb00078 	sw	s0,120(sp)
 114:	afa500dc 	sw	a1,220(sp)
 118:	26f70000 	addiu	s7,s7,0
 11c:	00008825 	move	s1,zero
 120:	27b200c8 	addiu	s2,sp,200
 124:	24950024 	addiu	s5,a0,36
 128:	27b600bc 	addiu	s6,sp,188
 12c:	241e0014 	li	s8,20
 130:	e7a000c4 	swc1	$f0,196(sp)
 134:	e7a000bc 	swc1	$f0,188(sp)
 138:	3c050000 	lui	a1,0x0
 13c:	24a50000 	addiu	a1,a1,0
 140:	02a02025 	move	a0,s5
 144:	0c000000 	jal	0 <func_808B2180>
 148:	02403025 	move	a2,s2
 14c:	0c000000 	jal	0 <func_808B2180>
 150:	00000000 	nop
 154:	46140181 	sub.s	$f6,$f0,$f20
 158:	44919000 	mtc1	s1,$f18
 15c:	c7a400c8 	lwc1	$f4,200(sp)
 160:	c7b000cc 	lwc1	$f16,204(sp)
 164:	46163202 	mul.s	$f8,$f6,$f22
 168:	468091a0 	cvt.s.w	$f6,$f18
 16c:	46082280 	add.s	$f10,$f4,$f8
 170:	461a3102 	mul.s	$f4,$f6,$f26
 174:	e7aa00c8 	swc1	$f10,200(sp)
 178:	4604c200 	add.s	$f8,$f24,$f4
 17c:	46088280 	add.s	$f10,$f16,$f8
 180:	0c000000 	jal	0 <func_808B2180>
 184:	e7aa00cc 	swc1	$f10,204(sp)
 188:	46140181 	sub.s	$f6,$f0,$f20
 18c:	c7b200d0 	lwc1	$f18,208(sp)
 190:	461c3102 	mul.s	$f4,$f6,$f28
 194:	46049400 	add.s	$f16,$f18,$f4
 198:	0c000000 	jal	0 <func_808B2180>
 19c:	e7b000d0 	swc1	$f16,208(sp)
 1a0:	461e0201 	sub.s	$f8,$f0,$f30
 1a4:	3c014140 	lui	at,0x4140
 1a8:	44815000 	mtc1	at,$f10
 1ac:	00000000 	nop
 1b0:	460a4182 	mul.s	$f6,$f8,$f10
 1b4:	0c000000 	jal	0 <func_808B2180>
 1b8:	e7a600c0 	swc1	$f6,192(sp)
 1bc:	3c01425c 	lui	at,0x425c
 1c0:	44819000 	mtc1	at,$f18
 1c4:	3c014100 	lui	at,0x4100
 1c8:	44818000 	mtc1	at,$f16
 1cc:	46120102 	mul.s	$f4,$f0,$f18
 1d0:	46102200 	add.s	$f8,$f4,$f16
 1d4:	4600428d 	trunc.w.s	$f10,$f8
 1d8:	44025000 	mfc1	v0,$f10
 1dc:	00000000 	nop
 1e0:	00021c00 	sll	v1,v0,0x10
 1e4:	00031c03 	sra	v1,v1,0x10
 1e8:	28610014 	slti	at,v1,20
 1ec:	00029c00 	sll	s3,v0,0x10
 1f0:	10200003 	beqz	at,200 <func_808B2218+0x168>
 1f4:	00139c03 	sra	s3,s3,0x10
 1f8:	10000006 	b	214 <func_808B2218+0x17c>
 1fc:	2410fed4 	li	s0,-300
 200:	28610023 	slti	at,v1,35
 204:	10200003 	beqz	at,214 <func_808B2218+0x17c>
 208:	2410fe5c 	li	s0,-420
 20c:	10000001 	b	214 <func_808B2218+0x17c>
 210:	2410fe98 	li	s0,-360
 214:	0c000000 	jal	0 <func_808B2180>
 218:	00000000 	nop
 21c:	3c010000 	lui	at,0x0
 220:	c4260028 	lwc1	$f6,40(at)
 224:	8fa400dc 	lw	a0,220(sp)
 228:	02402825 	move	a1,s2
 22c:	4606003c 	c.lt.s	$f0,$f6
 230:	02c03025 	move	a2,s6
 234:	02403825 	move	a3,s2
 238:	240f001e 	li	t7,30
 23c:	45000003 	bc1f	24c <func_808B2218+0x1b4>
 240:	24180004 	li	t8,4
 244:	10000002 	b	250 <func_808B2218+0x1b8>
 248:	24020041 	li	v0,65
 24c:	24020021 	li	v0,33
 250:	24190001 	li	t9,1
 254:	24080003 	li	t0,3
 258:	24090050 	li	t1,80
 25c:	240affff 	li	t2,-1
 260:	240b0002 	li	t3,2
 264:	afab0038 	sw	t3,56(sp)
 268:	afaa0034 	sw	t2,52(sp)
 26c:	afa90030 	sw	t1,48(sp)
 270:	afa8002c 	sw	t0,44(sp)
 274:	afb90028 	sw	t9,40(sp)
 278:	afb00010 	sw	s0,16(sp)
 27c:	afa20014 	sw	v0,20(sp)
 280:	afaf0018 	sw	t7,24(sp)
 284:	afb8001c 	sw	t8,28(sp)
 288:	afa00020 	sw	zero,32(sp)
 28c:	afb30024 	sw	s3,36(sp)
 290:	0c000000 	jal	0 <func_808B2180>
 294:	afb7003c 	sw	s7,60(sp)
 298:	26310001 	addiu	s1,s1,1
 29c:	163effa6 	bne	s1,s8,138 <func_808B2218+0xa0>
 2a0:	00000000 	nop
 2a4:	3c050000 	lui	a1,0x0
 2a8:	24a50000 	addiu	a1,a1,0
 2ac:	02a02025 	move	a0,s5
 2b0:	0c000000 	jal	0 <func_808B2180>
 2b4:	02403025 	move	a2,s2
 2b8:	3c01428c 	lui	at,0x428c
 2bc:	4481a000 	mtc1	at,$f20
 2c0:	240c006e 	li	t4,110
 2c4:	240d00a0 	li	t5,160
 2c8:	240e0001 	li	t6,1
 2cc:	4406a000 	mfc1	a2,$f20
 2d0:	afae0018 	sw	t6,24(sp)
 2d4:	afad0014 	sw	t5,20(sp)
 2d8:	afac0010 	sw	t4,16(sp)
 2dc:	8fa400dc 	lw	a0,220(sp)
 2e0:	02402825 	move	a1,s2
 2e4:	0c000000 	jal	0 <func_808B2180>
 2e8:	24070004 	li	a3,4
 2ec:	3c014220 	lui	at,0x4220
 2f0:	4481b000 	mtc1	at,$f22
 2f4:	c7b200cc 	lwc1	$f18,204(sp)
 2f8:	4406a000 	mfc1	a2,$f20
 2fc:	240f006e 	li	t7,110
 300:	46169100 	add.s	$f4,$f18,$f22
 304:	241800a0 	li	t8,160
 308:	24190001 	li	t9,1
 30c:	afb90018 	sw	t9,24(sp)
 310:	e7a400cc 	swc1	$f4,204(sp)
 314:	afb80014 	sw	t8,20(sp)
 318:	afaf0010 	sw	t7,16(sp)
 31c:	8fa400dc 	lw	a0,220(sp)
 320:	02402825 	move	a1,s2
 324:	0c000000 	jal	0 <func_808B2180>
 328:	24070005 	li	a3,5
 32c:	c7b000cc 	lwc1	$f16,204(sp)
 330:	4406a000 	mfc1	a2,$f20
 334:	2408006e 	li	t0,110
 338:	46168200 	add.s	$f8,$f16,$f22
 33c:	240900a0 	li	t1,160
 340:	240a0001 	li	t2,1
 344:	afaa0018 	sw	t2,24(sp)
 348:	e7a800cc 	swc1	$f8,204(sp)
 34c:	afa90014 	sw	t1,20(sp)
 350:	afa80010 	sw	t0,16(sp)
 354:	8fa400dc 	lw	a0,220(sp)
 358:	02402825 	move	a1,s2
 35c:	0c000000 	jal	0 <func_808B2180>
 360:	24070004 	li	a3,4
 364:	8fbf009c 	lw	ra,156(sp)
 368:	d7b40048 	ldc1	$f20,72(sp)
 36c:	d7b60050 	ldc1	$f22,80(sp)
 370:	d7b80058 	ldc1	$f24,88(sp)
 374:	d7ba0060 	ldc1	$f26,96(sp)
 378:	d7bc0068 	ldc1	$f28,104(sp)
 37c:	d7be0070 	ldc1	$f30,112(sp)
 380:	8fb00078 	lw	s0,120(sp)
 384:	8fb1007c 	lw	s1,124(sp)
 388:	8fb20080 	lw	s2,128(sp)
 38c:	8fb30084 	lw	s3,132(sp)
 390:	8fb40088 	lw	s4,136(sp)
 394:	8fb5008c 	lw	s5,140(sp)
 398:	8fb60090 	lw	s6,144(sp)
 39c:	8fb70094 	lw	s7,148(sp)
 3a0:	8fbe0098 	lw	s8,152(sp)
 3a4:	03e00008 	jr	ra
 3a8:	27bd00d8 	addiu	sp,sp,216

000003ac <BgSpot11Bakudankabe_Init>:
 3ac:	27bdffd0 	addiu	sp,sp,-48
 3b0:	afbf001c 	sw	ra,28(sp)
 3b4:	afb00018 	sw	s0,24(sp)
 3b8:	afa50034 	sw	a1,52(sp)
 3bc:	00808025 	move	s0,a0
 3c0:	afa00024 	sw	zero,36(sp)
 3c4:	0c000000 	jal	0 <func_808B2180>
 3c8:	00002825 	move	a1,zero
 3cc:	8605001c 	lh	a1,28(s0)
 3d0:	8fa40034 	lw	a0,52(sp)
 3d4:	0c000000 	jal	0 <func_808B2180>
 3d8:	30a5003f 	andi	a1,a1,0x3f
 3dc:	10400005 	beqz	v0,3f4 <BgSpot11Bakudankabe_Init+0x48>
 3e0:	02002025 	move	a0,s0
 3e4:	0c000000 	jal	0 <func_808B2180>
 3e8:	02002025 	move	a0,s0
 3ec:	10000015 	b	444 <BgSpot11Bakudankabe_Init+0x98>
 3f0:	8fbf001c 	lw	ra,28(sp)
 3f4:	0c000000 	jal	0 <func_808B2180>
 3f8:	8fa50034 	lw	a1,52(sp)
 3fc:	3c040000 	lui	a0,0x0
 400:	24840000 	addiu	a0,a0,0
 404:	0c000000 	jal	0 <func_808B2180>
 408:	27a50024 	addiu	a1,sp,36
 40c:	8fa40034 	lw	a0,52(sp)
 410:	02003025 	move	a2,s0
 414:	8fa70024 	lw	a3,36(sp)
 418:	0c000000 	jal	0 <func_808B2180>
 41c:	24850810 	addiu	a1,a0,2064
 420:	ae02014c 	sw	v0,332(s0)
 424:	02002025 	move	a0,s0
 428:	0c000000 	jal	0 <func_808B2180>
 42c:	3c053f80 	lui	a1,0x3f80
 430:	3c040000 	lui	a0,0x0
 434:	24840000 	addiu	a0,a0,0
 438:	0c000000 	jal	0 <func_808B2180>
 43c:	8605001c 	lh	a1,28(s0)
 440:	8fbf001c 	lw	ra,28(sp)
 444:	8fb00018 	lw	s0,24(sp)
 448:	27bd0030 	addiu	sp,sp,48
 44c:	03e00008 	jr	ra
 450:	00000000 	nop

00000454 <BgSpot11Bakudankabe_Destroy>:
 454:	27bdffe8 	addiu	sp,sp,-24
 458:	afa40018 	sw	a0,24(sp)
 45c:	8fae0018 	lw	t6,24(sp)
 460:	afbf0014 	sw	ra,20(sp)
 464:	00a03825 	move	a3,a1
 468:	00a02025 	move	a0,a1
 46c:	8dc6014c 	lw	a2,332(t6)
 470:	afa7001c 	sw	a3,28(sp)
 474:	0c000000 	jal	0 <func_808B2180>
 478:	24a50810 	addiu	a1,a1,2064
 47c:	8fa50018 	lw	a1,24(sp)
 480:	8fa4001c 	lw	a0,28(sp)
 484:	0c000000 	jal	0 <func_808B2180>
 488:	24a50164 	addiu	a1,a1,356
 48c:	8fbf0014 	lw	ra,20(sp)
 490:	27bd0018 	addiu	sp,sp,24
 494:	03e00008 	jr	ra
 498:	00000000 	nop

0000049c <BgSpot11Bakudankabe_Update>:
 49c:	27bdffe0 	addiu	sp,sp,-32
 4a0:	afbf001c 	sw	ra,28(sp)
 4a4:	afb10018 	sw	s1,24(sp)
 4a8:	afb00014 	sw	s0,20(sp)
 4ac:	908e0175 	lbu	t6,373(a0)
 4b0:	00a08025 	move	s0,a1
 4b4:	00808825 	move	s1,a0
 4b8:	31cf0002 	andi	t7,t6,0x2
 4bc:	11e00013 	beqz	t7,50c <BgSpot11Bakudankabe_Update+0x70>
 4c0:	3c010001 	lui	at,0x1
 4c4:	0c000000 	jal	0 <func_808B2180>
 4c8:	00000000 	nop
 4cc:	8625001c 	lh	a1,28(s1)
 4d0:	02002025 	move	a0,s0
 4d4:	0c000000 	jal	0 <func_808B2180>
 4d8:	30a5003f 	andi	a1,a1,0x3f
 4dc:	3c050000 	lui	a1,0x0
 4e0:	24a50000 	addiu	a1,a1,0
 4e4:	02002025 	move	a0,s0
 4e8:	24060028 	li	a2,40
 4ec:	0c000000 	jal	0 <func_808B2180>
 4f0:	24072810 	li	a3,10256
 4f4:	0c000000 	jal	0 <func_808B2180>
 4f8:	24044802 	li	a0,18434
 4fc:	0c000000 	jal	0 <func_808B2180>
 500:	02202025 	move	a0,s1
 504:	10000007 	b	524 <BgSpot11Bakudankabe_Update+0x88>
 508:	8fbf001c 	lw	ra,28(sp)
 50c:	34211e60 	ori	at,at,0x1e60
 510:	02012821 	addu	a1,s0,at
 514:	02002025 	move	a0,s0
 518:	0c000000 	jal	0 <func_808B2180>
 51c:	26260164 	addiu	a2,s1,356
 520:	8fbf001c 	lw	ra,28(sp)
 524:	8fb00014 	lw	s0,20(sp)
 528:	8fb10018 	lw	s1,24(sp)
 52c:	03e00008 	jr	ra
 530:	27bd0020 	addiu	sp,sp,32

00000534 <BgSpot11Bakudankabe_Draw>:
 534:	27bdffe8 	addiu	sp,sp,-24
 538:	afa40018 	sw	a0,24(sp)
 53c:	00a02025 	move	a0,a1
 540:	afbf0014 	sw	ra,20(sp)
 544:	3c050000 	lui	a1,0x0
 548:	0c000000 	jal	0 <func_808B2180>
 54c:	24a50000 	addiu	a1,a1,0
 550:	8fbf0014 	lw	ra,20(sp)
 554:	27bd0018 	addiu	sp,sp,24
 558:	03e00008 	jr	ra
 55c:	00000000 	nop
