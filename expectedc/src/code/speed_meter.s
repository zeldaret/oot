
build/src/code/speed_meter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <SpeedMeter_InitImpl>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	00802825 	move	a1,a0
   c:	afa40018 	sw	a0,24(sp)
  10:	afa60020 	sw	a2,32(sp)
  14:	afbf0014 	sw	ra,20(sp)
  18:	3c060000 	lui	a2,0x0
  1c:	3c040000 	lui	a0,0x0
  20:	24840000 	addiu	a0,a0,0
  24:	24c60008 	addiu	a2,a2,8
  28:	afa50018 	sw	a1,24(sp)
  2c:	0c000000 	jal	0 <SpeedMeter_InitImpl>
  30:	240700b5 	li	a3,181
  34:	8fa50018 	lw	a1,24(sp)
  38:	8fae001c 	lw	t6,28(sp)
  3c:	acae0018 	sw	t6,24(a1)
  40:	8faf0020 	lw	t7,32(sp)
  44:	acaf001c 	sw	t7,28(a1)
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	27bd0018 	addiu	sp,sp,24
  50:	03e00008 	jr	ra
  54:	00000000 	nop

00000058 <SpeedMeter_Init>:
  58:	27bdffe8 	addiu	sp,sp,-24
  5c:	afbf0014 	sw	ra,20(sp)
  60:	24050020 	li	a1,32
  64:	0c000000 	jal	0 <SpeedMeter_InitImpl>
  68:	24060016 	li	a2,22
  6c:	8fbf0014 	lw	ra,20(sp)
  70:	27bd0018 	addiu	sp,sp,24
  74:	03e00008 	jr	ra
  78:	00000000 	nop

0000007c <SpeedMeter_Destroy>:
  7c:	03e00008 	jr	ra
  80:	afa40000 	sw	a0,0(sp)

00000084 <SpeedMeter_DrawTimeEntries>:
  84:	27bdfde0 	addiu	sp,sp,-544
  88:	afbf0034 	sw	ra,52(sp)
  8c:	afb20030 	sw	s2,48(sp)
  90:	afb1002c 	sw	s1,44(sp)
  94:	afb00028 	sw	s0,40(sp)
  98:	f7b60020 	sdc1	$f22,32(sp)
  9c:	f7b40018 	sdc1	$f20,24(sp)
  a0:	afa50224 	sw	a1,548(sp)
  a4:	8c82001c 	lw	v0,28(a0)
  a8:	3c060000 	lui	a2,0x0
  ac:	24c6001c 	addiu	a2,a2,28
  b0:	27a400b4 	addiu	a0,sp,180
  b4:	240700e1 	li	a3,225
  b8:	afa20208 	sw	v0,520(sp)
  bc:	0c000000 	jal	0 <SpeedMeter_InitImpl>
  c0:	24520002 	addiu	s2,v0,2
  c4:	3c0e0000 	lui	t6,0x0
  c8:	25ce0000 	addiu	t6,t6,0
  cc:	8dd80000 	lw	t8,0(t6)
  d0:	3c110000 	lui	s1,0x0
  d4:	8dd90004 	lw	t9,4(t6)
  d8:	17000002 	bnez	t8,e4 <SpeedMeter_DrawTimeEntries+0x60>
  dc:	26310000 	addiu	s1,s1,0
  e0:	132000f1 	beqz	t9,4a8 <SpeedMeter_DrawTimeEntries+0x424>
  e4:	3c0f0000 	lui	t7,0x0
  e8:	3c014050 	lui	at,0x4050
  ec:	25ef0000 	addiu	t7,t7,0
  f0:	4481b800 	mtc1	at,$f23
  f4:	4480b000 	mtc1	zero,$f22
  f8:	ae2f0000 	sw	t7,0(s1)
  fc:	00008025 	move	s0,zero
 100:	8e290000 	lw	t1,0(s1)
 104:	8d2a0000 	lw	t2,0(t1)
 108:	8d440000 	lw	a0,0(t2)
 10c:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 110:	8d450004 	lw	a1,4(t2)
 114:	3c0b0000 	lui	t3,0x0
 118:	256b0000 	addiu	t3,t3,0
 11c:	8d640000 	lw	a0,0(t3)
 120:	8d650004 	lw	a1,4(t3)
 124:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 128:	46200506 	mov.d	$f20,$f0
 12c:	4620a103 	div.d	$f4,$f20,$f0
 130:	8e380000 	lw	t8,0(s1)
 134:	26100001 	addiu	s0,s0,1
 138:	2a010006 	slti	at,s0,6
 13c:	46362182 	mul.d	$f6,$f4,$f22
 140:	4620320d 	trunc.w.d	$f8,$f6
 144:	440d4000 	mfc1	t5,$f8
 148:	00000000 	nop
 14c:	25ae0020 	addiu	t6,t5,32
 150:	a30e0004 	sb	t6,4(t8)
 154:	8e390000 	lw	t9,0(s1)
 158:	272f0008 	addiu	t7,t9,8
 15c:	1420ffe8 	bnez	at,100 <SpeedMeter_DrawTimeEntries+0x7c>
 160:	ae2f0000 	sw	t7,0(s1)
 164:	27b000d8 	addiu	s0,sp,216
 168:	02002025 	move	a0,s0
 16c:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 170:	8fa50224 	lw	a1,548(sp)
 174:	2409000a 	li	t1,10
 178:	240a00f0 	li	t2,240
 17c:	240b0140 	li	t3,320
 180:	afa901f8 	sw	t1,504(sp)
 184:	afab00b0 	sw	t3,176(sp)
 188:	afaa00a8 	sw	t2,168(sp)
 18c:	afa000a4 	sw	zero,164(sp)
 190:	afa000ac 	sw	zero,172(sp)
 194:	02002025 	move	a0,s0
 198:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 19c:	27a500a4 	addiu	a1,sp,164
 1a0:	8fac0224 	lw	t4,548(sp)
 1a4:	02002025 	move	a0,s0
 1a8:	2405000f 	li	a1,15
 1ac:	8d8d02b0 	lw	t5,688(t4)
 1b0:	27a600c8 	addiu	a2,sp,200
 1b4:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 1b8:	afad00c8 	sw	t5,200(sp)
 1bc:	8fae00c8 	lw	t6,200(sp)
 1c0:	3c06e700 	lui	a2,0xe700
 1c4:	3c09ef30 	lui	t1,0xef30
 1c8:	25d80008 	addiu	t8,t6,8
 1cc:	afb800c8 	sw	t8,200(sp)
 1d0:	adc00004 	sw	zero,4(t6)
 1d4:	adc60000 	sw	a2,0(t6)
 1d8:	8fb900c8 	lw	t9,200(sp)
 1dc:	3c0e003f 	lui	t6,0x3f
 1e0:	35ce003f 	ori	t6,t6,0x3f
 1e4:	272f0008 	addiu	t7,t9,8
 1e8:	afaf00c8 	sw	t7,200(sp)
 1ec:	af200004 	sw	zero,4(t9)
 1f0:	af290000 	sw	t1,0(t9)
 1f4:	8faa00c8 	lw	t2,200(sp)
 1f8:	3c07f700 	lui	a3,0xf700
 1fc:	324303ff 	andi	v1,s2,0x3ff
 200:	254b0008 	addiu	t3,t2,8
 204:	afab00c8 	sw	t3,200(sp)
 208:	ad400004 	sw	zero,4(t2)
 20c:	ad460000 	sw	a2,0(t2)
 210:	8fac00c8 	lw	t4,200(sp)
 214:	00031880 	sll	v1,v1,0x2
 218:	3c01f618 	lui	at,0xf618
 21c:	258d0008 	addiu	t5,t4,8
 220:	afad00c8 	sw	t5,200(sp)
 224:	ad8e0004 	sw	t6,4(t4)
 228:	ad870000 	sw	a3,0(t4)
 22c:	8fb800c8 	lw	t8,200(sp)
 230:	00617825 	or	t7,v1,at
 234:	3c080008 	lui	t0,0x8
 238:	27190008 	addiu	t9,t8,8
 23c:	afb900c8 	sw	t9,200(sp)
 240:	af0f0000 	sw	t7,0(t8)
 244:	8fa40208 	lw	a0,520(sp)
 248:	3c1907c1 	lui	t9,0x7c1
 24c:	373907c1 	ori	t9,t9,0x7c1
 250:	308403ff 	andi	a0,a0,0x3ff
 254:	00042080 	sll	a0,a0,0x2
 258:	01044825 	or	t1,t0,a0
 25c:	af090004 	sw	t1,4(t8)
 260:	8faa00c8 	lw	t2,200(sp)
 264:	3c01f628 	lui	at,0xf628
 268:	00008025 	move	s0,zero
 26c:	254b0008 	addiu	t3,t2,8
 270:	afab00c8 	sw	t3,200(sp)
 274:	ad400004 	sw	zero,4(t2)
 278:	ad460000 	sw	a2,0(t2)
 27c:	8fac00c8 	lw	t4,200(sp)
 280:	00615025 	or	t2,v1,at
 284:	3c010018 	lui	at,0x18
 288:	258d0008 	addiu	t5,t4,8
 28c:	afad00c8 	sw	t5,200(sp)
 290:	ad800004 	sw	zero,4(t4)
 294:	ad860000 	sw	a2,0(t4)
 298:	8fae00c8 	lw	t6,200(sp)
 29c:	00815825 	or	t3,a0,at
 2a0:	3c01f638 	lui	at,0xf638
 2a4:	25d80008 	addiu	t8,t6,8
 2a8:	afb800c8 	sw	t8,200(sp)
 2ac:	add90004 	sw	t9,4(t6)
 2b0:	adc70000 	sw	a3,0(t6)
 2b4:	8faf00c8 	lw	t7,200(sp)
 2b8:	24050006 	li	a1,6
 2bc:	25e90008 	addiu	t1,t7,8
 2c0:	afa900c8 	sw	t1,200(sp)
 2c4:	adeb0004 	sw	t3,4(t7)
 2c8:	adea0000 	sw	t2,0(t7)
 2cc:	8fac00c8 	lw	t4,200(sp)
 2d0:	3c09f801 	lui	t1,0xf801
 2d4:	3529f801 	ori	t1,t1,0xf801
 2d8:	258d0008 	addiu	t5,t4,8
 2dc:	afad00c8 	sw	t5,200(sp)
 2e0:	ad800004 	sw	zero,4(t4)
 2e4:	ad860000 	sw	a2,0(t4)
 2e8:	8fae00c8 	lw	t6,200(sp)
 2ec:	00616025 	or	t4,v1,at
 2f0:	3c010028 	lui	at,0x28
 2f4:	25d80008 	addiu	t8,t6,8
 2f8:	afb800c8 	sw	t8,200(sp)
 2fc:	adc00004 	sw	zero,4(t6)
 300:	adc60000 	sw	a2,0(t6)
 304:	8fb900c8 	lw	t9,200(sp)
 308:	00816825 	or	t5,a0,at
 30c:	3c01f648 	lui	at,0xf648
 310:	272f0008 	addiu	t7,t9,8
 314:	afaf00c8 	sw	t7,200(sp)
 318:	af290004 	sw	t1,4(t9)
 31c:	af270000 	sw	a3,0(t9)
 320:	8faa00c8 	lw	t2,200(sp)
 324:	254b0008 	addiu	t3,t2,8
 328:	afab00c8 	sw	t3,200(sp)
 32c:	ad4d0004 	sw	t5,4(t2)
 330:	ad4c0000 	sw	t4,0(t2)
 334:	8fae00c8 	lw	t6,200(sp)
 338:	3c0bf83f 	lui	t3,0xf83f
 33c:	356bf83f 	ori	t3,t3,0xf83f
 340:	25d80008 	addiu	t8,t6,8
 344:	afb800c8 	sw	t8,200(sp)
 348:	adc00004 	sw	zero,4(t6)
 34c:	adc60000 	sw	a2,0(t6)
 350:	8fb900c8 	lw	t9,200(sp)
 354:	00617025 	or	t6,v1,at
 358:	3c010038 	lui	at,0x38
 35c:	272f0008 	addiu	t7,t9,8
 360:	afaf00c8 	sw	t7,200(sp)
 364:	af200004 	sw	zero,4(t9)
 368:	af260000 	sw	a2,0(t9)
 36c:	8fa900c8 	lw	t1,200(sp)
 370:	0081c025 	or	t8,a0,at
 374:	3c04f600 	lui	a0,0xf600
 378:	252a0008 	addiu	t2,t1,8
 37c:	afaa00c8 	sw	t2,200(sp)
 380:	ad2b0004 	sw	t3,4(t1)
 384:	ad270000 	sw	a3,0(t1)
 388:	8fac00c8 	lw	t4,200(sp)
 38c:	3c090000 	lui	t1,0x0
 390:	25290000 	addiu	t1,t1,0
 394:	258d0008 	addiu	t5,t4,8
 398:	afad00c8 	sw	t5,200(sp)
 39c:	ad980004 	sw	t8,4(t4)
 3a0:	ad8e0000 	sw	t6,0(t4)
 3a4:	8fb900c8 	lw	t9,200(sp)
 3a8:	272f0008 	addiu	t7,t9,8
 3ac:	afaf00c8 	sw	t7,200(sp)
 3b0:	af200004 	sw	zero,4(t9)
 3b4:	af260000 	sw	a2,0(t9)
 3b8:	ae290000 	sw	t1,0(s1)
 3bc:	8faa00c8 	lw	t2,200(sp)
 3c0:	26100001 	addiu	s0,s0,1
 3c4:	254b0008 	addiu	t3,t2,8
 3c8:	afab00c8 	sw	t3,200(sp)
 3cc:	ad400004 	sw	zero,4(t2)
 3d0:	ad460000 	sw	a2,0(t2)
 3d4:	8fac00c8 	lw	t4,200(sp)
 3d8:	258d0008 	addiu	t5,t4,8
 3dc:	afad00c8 	sw	t5,200(sp)
 3e0:	ad870000 	sw	a3,0(t4)
 3e4:	8e2e0000 	lw	t6,0(s1)
 3e8:	95c30006 	lhu	v1,6(t6)
 3ec:	0003c400 	sll	t8,v1,0x10
 3f0:	0303c825 	or	t9,t8,v1
 3f4:	ad990004 	sw	t9,4(t4)
 3f8:	8fa300c8 	lw	v1,200(sp)
 3fc:	8e220000 	lw	v0,0(s1)
 400:	24690008 	addiu	t1,v1,8
 404:	afa900c8 	sw	t1,200(sp)
 408:	904e0005 	lbu	t6,5(v0)
 40c:	904b0004 	lbu	t3,4(v0)
 410:	024ec021 	addu	t8,s2,t6
 414:	27190001 	addiu	t9,t8,1
 418:	332f03ff 	andi	t7,t9,0x3ff
 41c:	000b6380 	sll	t4,t3,0xe
 420:	01846825 	or	t5,t4,a0
 424:	000f4880 	sll	t1,t7,0x2
 428:	01a95025 	or	t2,t5,t1
 42c:	ac6a0000 	sw	t2,0(v1)
 430:	8e2b0000 	lw	t3,0(s1)
 434:	916c0005 	lbu	t4,5(t3)
 438:	024c7021 	addu	t6,s2,t4
 43c:	31d803ff 	andi	t8,t6,0x3ff
 440:	0018c880 	sll	t9,t8,0x2
 444:	01197825 	or	t7,t0,t9
 448:	ac6f0004 	sw	t7,4(v1)
 44c:	8fad00c8 	lw	t5,200(sp)
 450:	25a90008 	addiu	t1,t5,8
 454:	afa900c8 	sw	t1,200(sp)
 458:	ada00004 	sw	zero,4(t5)
 45c:	ada60000 	sw	a2,0(t5)
 460:	8e2a0000 	lw	t2,0(s1)
 464:	254b0008 	addiu	t3,t2,8
 468:	1605ffd4 	bne	s0,a1,3bc <SpeedMeter_DrawTimeEntries+0x338>
 46c:	ae2b0000 	sw	t3,0(s1)
 470:	8fac00c8 	lw	t4,200(sp)
 474:	27a400b4 	addiu	a0,sp,180
 478:	24070114 	li	a3,276
 47c:	258e0008 	addiu	t6,t4,8
 480:	afae00c8 	sw	t6,200(sp)
 484:	ad800004 	sw	zero,4(t4)
 488:	ad860000 	sw	a2,0(t4)
 48c:	8fb90224 	lw	t9,548(sp)
 490:	8fb800c8 	lw	t8,200(sp)
 494:	3c060000 	lui	a2,0x0
 498:	24c60030 	addiu	a2,a2,48
 49c:	af3802b0 	sw	t8,688(t9)
 4a0:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 4a4:	8fa50224 	lw	a1,548(sp)
 4a8:	8fbf0034 	lw	ra,52(sp)
 4ac:	d7b40018 	ldc1	$f20,24(sp)
 4b0:	d7b60020 	ldc1	$f22,32(sp)
 4b4:	8fb00028 	lw	s0,40(sp)
 4b8:	8fb1002c 	lw	s1,44(sp)
 4bc:	8fb20030 	lw	s2,48(sp)
 4c0:	03e00008 	jr	ra
 4c4:	27bd0220 	addiu	sp,sp,544

000004c8 <SpeedMeter_InitAllocEntry>:
 4c8:	afa7000c 	sw	a3,12(sp)
 4cc:	ac850000 	sw	a1,0(a0)
 4d0:	ac860004 	sw	a2,4(a0)
 4d4:	a4870008 	sh	a3,8(a0)
 4d8:	97ae0012 	lhu	t6,18(sp)
 4dc:	a48e000a 	sh	t6,10(a0)
 4e0:	8faf0014 	lw	t7,20(sp)
 4e4:	ac8f000c 	sw	t7,12(a0)
 4e8:	8fb80018 	lw	t8,24(sp)
 4ec:	ac980010 	sw	t8,16(a0)
 4f0:	8fb9001c 	lw	t9,28(sp)
 4f4:	ac990014 	sw	t9,20(a0)
 4f8:	8fa80020 	lw	t0,32(sp)
 4fc:	03e00008 	jr	ra
 500:	ac880018 	sw	t0,24(a0)

00000504 <SpeedMeter_DrawAllocEntry>:
 504:	27bdfe50 	addiu	sp,sp,-432
 508:	afbf001c 	sw	ra,28(sp)
 50c:	afb00018 	sw	s0,24(sp)
 510:	afa501b4 	sw	a1,436(sp)
 514:	8c8e0000 	lw	t6,0(a0)
 518:	00808025 	move	s0,a0
 51c:	27a40068 	addiu	a0,sp,104
 520:	15c00011 	bnez	t6,568 <SpeedMeter_DrawAllocEntry+0x64>
 524:	8fa501b4 	lw	a1,436(sp)
 528:	3c040000 	lui	a0,0x0
 52c:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 530:	24840044 	addiu	a0,a0,68
 534:	3c040000 	lui	a0,0x0
 538:	2484004c 	addiu	a0,a0,76
 53c:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 540:	24050139 	li	a1,313
 544:	3c040000 	lui	a0,0x0
 548:	24840060 	addiu	a0,a0,96
 54c:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 550:	8e050000 	lw	a1,0(s0)
 554:	3c040000 	lui	a0,0x0
 558:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 55c:	24840074 	addiu	a0,a0,116
 560:	10000094 	b	7b4 <SpeedMeter_DrawAllocEntry+0x2b0>
 564:	8fbf001c 	lw	ra,28(sp)
 568:	3c060000 	lui	a2,0x0
 56c:	24c60078 	addiu	a2,a2,120
 570:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 574:	2407013e 	li	a3,318
 578:	27a40080 	addiu	a0,sp,128
 57c:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 580:	8fa501b4 	lw	a1,436(sp)
 584:	240f000a 	li	t7,10
 588:	241800f0 	li	t8,240
 58c:	24190140 	li	t9,320
 590:	afaf01a0 	sw	t7,416(sp)
 594:	afb90064 	sw	t9,100(sp)
 598:	afb8005c 	sw	t8,92(sp)
 59c:	afa00058 	sw	zero,88(sp)
 5a0:	afa00060 	sw	zero,96(sp)
 5a4:	27a40080 	addiu	a0,sp,128
 5a8:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 5ac:	27a50058 	addiu	a1,sp,88
 5b0:	8fa901b4 	lw	t1,436(sp)
 5b4:	27a40080 	addiu	a0,sp,128
 5b8:	2405000f 	li	a1,15
 5bc:	8d2a02b0 	lw	t2,688(t1)
 5c0:	27a6007c 	addiu	a2,sp,124
 5c4:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 5c8:	afaa007c 	sw	t2,124(sp)
 5cc:	8fab007c 	lw	t3,124(sp)
 5d0:	3c05e700 	lui	a1,0xe700
 5d4:	3c0fef30 	lui	t7,0xef30
 5d8:	256c0008 	addiu	t4,t3,8
 5dc:	afac007c 	sw	t4,124(sp)
 5e0:	ad600004 	sw	zero,4(t3)
 5e4:	ad650000 	sw	a1,0(t3)
 5e8:	8fad007c 	lw	t5,124(sp)
 5ec:	3c07f700 	lui	a3,0xf700
 5f0:	3c08f600 	lui	t0,0xf600
 5f4:	25ae0008 	addiu	t6,t5,8
 5f8:	afae007c 	sw	t6,124(sp)
 5fc:	ada00004 	sw	zero,4(t5)
 600:	adaf0000 	sw	t7,0(t5)
 604:	8e02000c 	lw	v0,12(s0)
 608:	8e180010 	lw	t8,16(s0)
 60c:	8e090004 	lw	t1,4(s0)
 610:	8e0b0000 	lw	t3,0(s0)
 614:	0302c823 	subu	t9,t8,v0
 618:	03290019 	multu	t9,t1
 61c:	8fad007c 	lw	t5,124(sp)
 620:	25ae0008 	addiu	t6,t5,8
 624:	afae007c 	sw	t6,124(sp)
 628:	ada00004 	sw	zero,4(t5)
 62c:	ada50000 	sw	a1,0(t5)
 630:	8faf007c 	lw	t7,124(sp)
 634:	00005012 	mflo	t2
 638:	25f80008 	addiu	t8,t7,8
 63c:	afb8007c 	sw	t8,124(sp)
 640:	014b001a 	div	zero,t2,t3
 644:	ade70000 	sw	a3,0(t7)
 648:	96030008 	lhu	v1,8(s0)
 64c:	15600002 	bnez	t3,658 <SpeedMeter_DrawAllocEntry+0x154>
 650:	00000000 	nop
 654:	0007000d 	break	0x7
 658:	2401ffff 	li	at,-1
 65c:	15610004 	bne	t3,at,670 <SpeedMeter_DrawAllocEntry+0x16c>
 660:	3c018000 	lui	at,0x8000
 664:	15410002 	bne	t2,at,670 <SpeedMeter_DrawAllocEntry+0x16c>
 668:	00000000 	nop
 66c:	0006000d 	break	0x6
 670:	0003cc00 	sll	t9,v1,0x10
 674:	03234825 	or	t1,t9,v1
 678:	ade90004 	sw	t1,4(t7)
 67c:	8faa007c 	lw	t2,124(sp)
 680:	00006012 	mflo	t4
 684:	01823021 	addu	a2,t4,v0
 688:	254b0008 	addiu	t3,t2,8
 68c:	afab007c 	sw	t3,124(sp)
 690:	8e0c0010 	lw	t4,16(s0)
 694:	8e180018 	lw	t8,24(s0)
 698:	01401025 	move	v0,t2
 69c:	318d03ff 	andi	t5,t4,0x3ff
 6a0:	000d7380 	sll	t6,t5,0xe
 6a4:	331903ff 	andi	t9,t8,0x3ff
 6a8:	00194880 	sll	t1,t9,0x2
 6ac:	01c87825 	or	t7,t6,t0
 6b0:	01e95025 	or	t2,t7,t1
 6b4:	ac4a0000 	sw	t2,0(v0)
 6b8:	8e0b0014 	lw	t3,20(s0)
 6bc:	30c403ff 	andi	a0,a2,0x3ff
 6c0:	00042380 	sll	a0,a0,0xe
 6c4:	316c03ff 	andi	t4,t3,0x3ff
 6c8:	000c6880 	sll	t5,t4,0x2
 6cc:	008d7025 	or	t6,a0,t5
 6d0:	ac4e0004 	sw	t6,4(v0)
 6d4:	8fb8007c 	lw	t8,124(sp)
 6d8:	3c060000 	lui	a2,0x0
 6dc:	24c6008c 	addiu	a2,a2,140
 6e0:	27190008 	addiu	t9,t8,8
 6e4:	afb9007c 	sw	t9,124(sp)
 6e8:	af000004 	sw	zero,4(t8)
 6ec:	af050000 	sw	a1,0(t8)
 6f0:	8faf007c 	lw	t7,124(sp)
 6f4:	0088c825 	or	t9,a0,t0
 6f8:	27a40068 	addiu	a0,sp,104
 6fc:	25e90008 	addiu	t1,t7,8
 700:	afa9007c 	sw	t1,124(sp)
 704:	ade00004 	sw	zero,4(t7)
 708:	ade50000 	sw	a1,0(t7)
 70c:	8faa007c 	lw	t2,124(sp)
 710:	254b0008 	addiu	t3,t2,8
 714:	afab007c 	sw	t3,124(sp)
 718:	ad470000 	sw	a3,0(t2)
 71c:	9603000a 	lhu	v1,10(s0)
 720:	24070153 	li	a3,339
 724:	00036400 	sll	t4,v1,0x10
 728:	01836825 	or	t5,t4,v1
 72c:	ad4d0004 	sw	t5,4(t2)
 730:	8fae007c 	lw	t6,124(sp)
 734:	25d80008 	addiu	t8,t6,8
 738:	afb8007c 	sw	t8,124(sp)
 73c:	8e0f0018 	lw	t7,24(s0)
 740:	01c01025 	move	v0,t6
 744:	31e903ff 	andi	t1,t7,0x3ff
 748:	00095080 	sll	t2,t1,0x2
 74c:	032a5825 	or	t3,t9,t2
 750:	adcb0000 	sw	t3,0(t6)
 754:	8e180014 	lw	t8,20(s0)
 758:	8e0c000c 	lw	t4,12(s0)
 75c:	330f03ff 	andi	t7,t8,0x3ff
 760:	318d03ff 	andi	t5,t4,0x3ff
 764:	000d7380 	sll	t6,t5,0xe
 768:	000f4880 	sll	t1,t7,0x2
 76c:	01c9c825 	or	t9,t6,t1
 770:	ac590004 	sw	t9,4(v0)
 774:	8faa007c 	lw	t2,124(sp)
 778:	254b0008 	addiu	t3,t2,8
 77c:	afab007c 	sw	t3,124(sp)
 780:	ad400004 	sw	zero,4(t2)
 784:	ad450000 	sw	a1,0(t2)
 788:	8fac007c 	lw	t4,124(sp)
 78c:	258d0008 	addiu	t5,t4,8
 790:	afad007c 	sw	t5,124(sp)
 794:	ad800004 	sw	zero,4(t4)
 798:	ad850000 	sw	a1,0(t4)
 79c:	8faf01b4 	lw	t7,436(sp)
 7a0:	8fb8007c 	lw	t8,124(sp)
 7a4:	adf802b0 	sw	t8,688(t7)
 7a8:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 7ac:	8fa501b4 	lw	a1,436(sp)
 7b0:	8fbf001c 	lw	ra,28(sp)
 7b4:	8fb00018 	lw	s0,24(sp)
 7b8:	27bd01b0 	addiu	sp,sp,432
 7bc:	03e00008 	jr	ra
 7c0:	00000000 	nop

000007c4 <SpeedMeter_DrawAllocEntries>:
 7c4:	27bdff68 	addiu	sp,sp,-152
 7c8:	3c0e0000 	lui	t6,0x0
 7cc:	8dce0000 	lw	t6,0(t6)
 7d0:	afbf003c 	sw	ra,60(sp)
 7d4:	afb20038 	sw	s2,56(sp)
 7d8:	afb10034 	sw	s1,52(sp)
 7dc:	afb00030 	sw	s0,48(sp)
 7e0:	afa40098 	sw	a0,152(sp)
 7e4:	afa600a0 	sw	a2,160(sp)
 7e8:	85cf00d4 	lh	t7,212(t6)
 7ec:	00a09025 	move	s2,a1
 7f0:	241000d4 	li	s0,212
 7f4:	29e10003 	slti	at,t7,3
 7f8:	1420001e 	bnez	at,874 <SpeedMeter_DrawAllocEntries+0xb0>
 7fc:	00000000 	nop
 800:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 804:	00000000 	nop
 808:	1040001a 	beqz	v0,874 <SpeedMeter_DrawAllocEntries+0xb0>
 80c:	27a4005c 	addiu	a0,sp,92
 810:	27a50058 	addiu	a1,sp,88
 814:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 818:	27a60054 	addiu	a2,sp,84
 81c:	8fa60054 	lw	a2,84(sp)
 820:	8fb80058 	lw	t8,88(sp)
 824:	27b1006c 	addiu	s1,sp,108
 828:	3419ffff 	li	t9,0xffff
 82c:	2408001e 	li	t0,30
 830:	24090122 	li	t1,290
 834:	240a00d4 	li	t2,212
 838:	240b00d5 	li	t3,213
 83c:	afab0020 	sw	t3,32(sp)
 840:	afaa001c 	sw	t2,28(sp)
 844:	afa90018 	sw	t1,24(sp)
 848:	afa80014 	sw	t0,20(sp)
 84c:	afb90010 	sw	t9,16(sp)
 850:	02202025 	move	a0,s1
 854:	2407003f 	li	a3,63
 858:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 85c:	03062821 	addu	a1,t8,a2
 860:	02202025 	move	a0,s1
 864:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 868:	02402825 	move	a1,s2
 86c:	00008025 	move	s0,zero
 870:	261000d6 	addiu	s0,s0,214
 874:	3c0c0000 	lui	t4,0x0
 878:	8d8c0000 	lw	t4,0(t4)
 87c:	27b1006c 	addiu	s1,sp,108
 880:	858d00d4 	lh	t5,212(t4)
 884:	29a10002 	slti	at,t5,2
 888:	1420001a 	bnez	at,8f4 <SpeedMeter_DrawAllocEntries+0x130>
 88c:	27a40050 	addiu	a0,sp,80
 890:	27a5004c 	addiu	a1,sp,76
 894:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 898:	27a60048 	addiu	a2,sp,72
 89c:	8fae00a0 	lw	t6,160(sp)
 8a0:	8faf004c 	lw	t7,76(sp)
 8a4:	8fb80048 	lw	t8,72(sp)
 8a8:	8dc20074 	lw	v0,116(t6)
 8ac:	3409fc21 	li	t1,0xfc21
 8b0:	240a001e 	li	t2,30
 8b4:	240b0122 	li	t3,290
 8b8:	01f8c821 	addu	t9,t7,t8
 8bc:	afab0018 	sw	t3,24(sp)
 8c0:	afaa0014 	sw	t2,20(sp)
 8c4:	afa90010 	sw	t1,16(sp)
 8c8:	afb00020 	sw	s0,32(sp)
 8cc:	afb0001c 	sw	s0,28(sp)
 8d0:	02202025 	move	a0,s1
 8d4:	2407003f 	li	a3,63
 8d8:	03222823 	subu	a1,t9,v0
 8dc:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 8e0:	03023023 	subu	a2,t8,v0
 8e4:	02202025 	move	a0,s1
 8e8:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 8ec:	02402825 	move	a1,s2
 8f0:	26100001 	addiu	s0,s0,1
 8f4:	8fa400a0 	lw	a0,160(sp)
 8f8:	24840074 	addiu	a0,a0,116
 8fc:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 900:	afa40040 	sw	a0,64(sp)
 904:	8fac0040 	lw	t4,64(sp)
 908:	240d07c1 	li	t5,1985
 90c:	240e001e 	li	t6,30
 910:	8d850000 	lw	a1,0(t4)
 914:	240f0122 	li	t7,290
 918:	afaf0018 	sw	t7,24(sp)
 91c:	afb00020 	sw	s0,32(sp)
 920:	afb0001c 	sw	s0,28(sp)
 924:	afae0014 	sw	t6,20(sp)
 928:	afad0010 	sw	t5,16(sp)
 92c:	02202025 	move	a0,s1
 930:	2407003f 	li	a3,63
 934:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 938:	00a23023 	subu	a2,a1,v0
 93c:	02202025 	move	a0,s1
 940:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 944:	02402825 	move	a1,s2
 948:	264402b8 	addiu	a0,s2,696
 94c:	26100001 	addiu	s0,s0,1
 950:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 954:	afa40040 	sw	a0,64(sp)
 958:	8fb80040 	lw	t8,64(sp)
 95c:	3419f83f 	li	t9,0xf83f
 960:	2408001e 	li	t0,30
 964:	8f050000 	lw	a1,0(t8)
 968:	24090122 	li	t1,290
 96c:	afa90018 	sw	t1,24(sp)
 970:	afb00020 	sw	s0,32(sp)
 974:	afb0001c 	sw	s0,28(sp)
 978:	afa80014 	sw	t0,20(sp)
 97c:	afb90010 	sw	t9,16(sp)
 980:	02202025 	move	a0,s1
 984:	2407003f 	li	a3,63
 988:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 98c:	00a23023 	subu	a2,a1,v0
 990:	02202025 	move	a0,s1
 994:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 998:	02402825 	move	a1,s2
 99c:	264402c8 	addiu	a0,s2,712
 9a0:	26100001 	addiu	s0,s0,1
 9a4:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 9a8:	afa40040 	sw	a0,64(sp)
 9ac:	8faa0040 	lw	t2,64(sp)
 9b0:	340bffc1 	li	t3,0xffc1
 9b4:	240c001e 	li	t4,30
 9b8:	8d450000 	lw	a1,0(t2)
 9bc:	240d0122 	li	t5,290
 9c0:	afad0018 	sw	t5,24(sp)
 9c4:	afb00020 	sw	s0,32(sp)
 9c8:	afb0001c 	sw	s0,28(sp)
 9cc:	afac0014 	sw	t4,20(sp)
 9d0:	afab0010 	sw	t3,16(sp)
 9d4:	02202025 	move	a0,s1
 9d8:	2407003f 	li	a3,63
 9dc:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 9e0:	00a23023 	subu	a2,a1,v0
 9e4:	02202025 	move	a0,s1
 9e8:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 9ec:	02402825 	move	a1,s2
 9f0:	264402a8 	addiu	a0,s2,680
 9f4:	26100001 	addiu	s0,s0,1
 9f8:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 9fc:	afa40040 	sw	a0,64(sp)
 a00:	8fae0040 	lw	t6,64(sp)
 a04:	340ff801 	li	t7,0xf801
 a08:	2418001e 	li	t8,30
 a0c:	8dc50000 	lw	a1,0(t6)
 a10:	24190122 	li	t9,290
 a14:	afb90018 	sw	t9,24(sp)
 a18:	afb00020 	sw	s0,32(sp)
 a1c:	afb0001c 	sw	s0,28(sp)
 a20:	afb80014 	sw	t8,20(sp)
 a24:	afaf0010 	sw	t7,16(sp)
 a28:	02202025 	move	a0,s1
 a2c:	2407003f 	li	a3,63
 a30:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 a34:	00a23023 	subu	a2,a1,v0
 a38:	02202025 	move	a0,s1
 a3c:	0c000000 	jal	0 <SpeedMeter_InitImpl>
 a40:	02402825 	move	a1,s2
 a44:	8fbf003c 	lw	ra,60(sp)
 a48:	8fb00030 	lw	s0,48(sp)
 a4c:	8fb10034 	lw	s1,52(sp)
 a50:	8fb20038 	lw	s2,56(sp)
 a54:	03e00008 	jr	ra
 a58:	27bd0098 	addiu	sp,sp,152
 a5c:	00000000 	nop
