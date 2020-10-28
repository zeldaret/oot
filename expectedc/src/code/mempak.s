
build/src/code/mempak.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Mempak_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa40028 	sw	a0,40(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c040000 	lui	a0,0x0
  10:	afa0001c 	sw	zero,28(sp)
  14:	0c000000 	jal	0 <Mempak_Init>
  18:	24840000 	addiu	a0,a0,0
  1c:	3c050000 	lui	a1,0x0
  20:	afa20024 	sw	v0,36(sp)
  24:	24a50000 	addiu	a1,a1,0
  28:	00402025 	move	a0,v0
  2c:	0c000000 	jal	0 <Mempak_Init>
  30:	8fa60028 	lw	a2,40(sp)
  34:	14400003 	bnez	v0,44 <Mempak_Init+0x44>
  38:	3c040000 	lui	a0,0x0
  3c:	240e0001 	li	t6,1
  40:	afae001c 	sw	t6,28(sp)
  44:	3c050000 	lui	a1,0x0
  48:	24a50000 	addiu	a1,a1,0
  4c:	0c000000 	jal	0 <Mempak_Init>
  50:	24840000 	addiu	a0,a0,0
  54:	3c040000 	lui	a0,0x0
  58:	24840000 	addiu	a0,a0,0
  5c:	0c000000 	jal	0 <Mempak_Init>
  60:	8fa50024 	lw	a1,36(sp)
  64:	8fbf0014 	lw	ra,20(sp)
  68:	8fa2001c 	lw	v0,28(sp)
  6c:	27bd0028 	addiu	sp,sp,40
  70:	03e00008 	jr	ra
  74:	00000000 	nop

00000078 <Mempak_GetFreeBytes>:
  78:	3c020000 	lui	v0,0x0
  7c:	afa40000 	sw	a0,0(sp)
  80:	03e00008 	jr	ra
  84:	8c420000 	lw	v0,0(v0)

00000088 <Mempak_FindFile>:
  88:	27bdff98 	addiu	sp,sp,-104
  8c:	afa40068 	sw	a0,104(sp)
  90:	afbf0044 	sw	ra,68(sp)
  94:	afb50034 	sw	s5,52(sp)
  98:	afb3002c 	sw	s3,44(sp)
  9c:	afb10024 	sw	s1,36(sp)
  a0:	afb00020 	sw	s0,32(sp)
  a4:	3c040000 	lui	a0,0x0
  a8:	30b000ff 	andi	s0,a1,0xff
  ac:	30d100ff 	andi	s1,a2,0xff
  b0:	afbe0040 	sw	s8,64(sp)
  b4:	afb7003c 	sw	s7,60(sp)
  b8:	afb60038 	sw	s6,56(sp)
  bc:	afb40030 	sw	s4,48(sp)
  c0:	afb20028 	sw	s2,40(sp)
  c4:	afa5006c 	sw	a1,108(sp)
  c8:	afa60070 	sw	a2,112(sp)
  cc:	24130001 	li	s3,1
  d0:	0000a825 	move	s5,zero
  d4:	0c000000 	jal	0 <Mempak_Init>
  d8:	24840000 	addiu	a0,a0,0
  dc:	0230082a 	slt	at,s1,s0
  e0:	afa20064 	sw	v0,100(sp)
  e4:	321200ff 	andi	s2,s0,0xff
  e8:	afb10050 	sw	s1,80(sp)
  ec:	1420002a 	bnez	at,198 <Mempak_FindFile+0x110>
  f0:	afb0004c 	sw	s0,76(sp)
  f4:	3c1e0000 	lui	s8,0x0
  f8:	3c170000 	lui	s7,0x0
  fc:	3c160000 	lui	s6,0x0
 100:	3c140000 	lui	s4,0x0
 104:	26940000 	addiu	s4,s4,0
 108:	26d60000 	addiu	s6,s6,0
 10c:	26f70000 	addiu	s7,s7,0
 110:	27de0000 	addiu	s8,s8,0
 114:	02408025 	move	s0,s2
 118:	3c080000 	lui	t0,0x0
 11c:	25080000 	addiu	t0,t0,0
 120:	0010c880 	sll	t9,s0,0x2
 124:	03288821 	addu	s1,t9,t0
 128:	2618ffd9 	addiu	t8,s0,-39
 12c:	2629fefc 	addiu	t1,s1,-260
 130:	3c070000 	lui	a3,0x0
 134:	a2980000 	sb	t8,0(s4)
 138:	24e70000 	addiu	a3,a3,0
 13c:	afa90014 	sw	t1,20(sp)
 140:	02c02025 	move	a0,s6
 144:	96e50000 	lhu	a1,0(s7)
 148:	8fc60000 	lw	a2,0(s8)
 14c:	0c000000 	jal	0 <Mempak_Init>
 150:	afb40010 	sw	s4,16(sp)
 154:	14400003 	bnez	v0,164 <Mempak_FindFile+0xdc>
 158:	00403025 	move	a2,v0
 15c:	10000003 	b	16c <Mempak_FindFile+0xe4>
 160:	02b3a825 	or	s5,s5,s3
 164:	240affff 	li	t2,-1
 168:	ae2afefc 	sw	t2,-260(s1)
 16c:	3c040000 	lui	a0,0x0
 170:	00139840 	sll	s3,s3,0x1
 174:	24840000 	addiu	a0,a0,0
 178:	0c000000 	jal	0 <Mempak_Init>
 17c:	02002825 	move	a1,s0
 180:	8fab0050 	lw	t3,80(sp)
 184:	26520001 	addiu	s2,s2,1
 188:	325200ff 	andi	s2,s2,0xff
 18c:	0172082a 	slt	at,t3,s2
 190:	1020ffe1 	beqz	at,118 <Mempak_FindFile+0x90>
 194:	02408025 	move	s0,s2
 198:	3c040000 	lui	a0,0x0
 19c:	24840000 	addiu	a0,a0,0
 1a0:	0c000000 	jal	0 <Mempak_Init>
 1a4:	8fa50064 	lw	a1,100(sp)
 1a8:	3c040000 	lui	a0,0x0
 1ac:	24840018 	addiu	a0,a0,24
 1b0:	8fa5004c 	lw	a1,76(sp)
 1b4:	8fa60050 	lw	a2,80(sp)
 1b8:	0c000000 	jal	0 <Mempak_Init>
 1bc:	02a03825 	move	a3,s5
 1c0:	8fbf0044 	lw	ra,68(sp)
 1c4:	02a01025 	move	v0,s5
 1c8:	8fb50034 	lw	s5,52(sp)
 1cc:	8fb00020 	lw	s0,32(sp)
 1d0:	8fb10024 	lw	s1,36(sp)
 1d4:	8fb20028 	lw	s2,40(sp)
 1d8:	8fb3002c 	lw	s3,44(sp)
 1dc:	8fb40030 	lw	s4,48(sp)
 1e0:	8fb60038 	lw	s6,56(sp)
 1e4:	8fb7003c 	lw	s7,60(sp)
 1e8:	8fbe0040 	lw	s8,64(sp)
 1ec:	03e00008 	jr	ra
 1f0:	27bd0068 	addiu	sp,sp,104

000001f4 <Mempak_Write>:
 1f4:	27bdffc8 	addiu	sp,sp,-56
 1f8:	afa40038 	sw	a0,56(sp)
 1fc:	afbf001c 	sw	ra,28(sp)
 200:	3c040000 	lui	a0,0x0
 204:	afa5003c 	sw	a1,60(sp)
 208:	afa60040 	sw	a2,64(sp)
 20c:	afa70044 	sw	a3,68(sp)
 210:	afa0002c 	sw	zero,44(sp)
 214:	0c000000 	jal	0 <Mempak_Init>
 218:	24840000 	addiu	a0,a0,0
 21c:	3c0e0000 	lui	t6,0x0
 220:	8fa80048 	lw	t0,72(sp)
 224:	8dce0000 	lw	t6,0(t6)
 228:	3c040000 	lui	a0,0x0
 22c:	afa20034 	sw	v0,52(sp)
 230:	010e082a 	slt	at,t0,t6
 234:	1020001b 	beqz	at,2a4 <Mempak_Write+0xb0>
 238:	24840000 	addiu	a0,a0,0
 23c:	93a2003f 	lbu	v0,63(sp)
 240:	3c180000 	lui	t8,0x0
 244:	8fb90040 	lw	t9,64(sp)
 248:	27180000 	addiu	t8,t8,0
 24c:	00027880 	sll	t7,v0,0x2
 250:	01f81821 	addu	v1,t7,t8
 254:	8c65fefc 	lw	a1,-260(v1)
 258:	afa30020 	sw	v1,32(sp)
 25c:	24060001 	li	a2,1
 260:	8fa70044 	lw	a3,68(sp)
 264:	afa80010 	sw	t0,16(sp)
 268:	afa20024 	sw	v0,36(sp)
 26c:	0c000000 	jal	0 <Mempak_Init>
 270:	afb90014 	sw	t9,20(sp)
 274:	8fa30020 	lw	v1,32(sp)
 278:	14400003 	bnez	v0,288 <Mempak_Write+0x94>
 27c:	00404025 	move	t0,v0
 280:	24090001 	li	t1,1
 284:	afa9002c 	sw	t1,44(sp)
 288:	3c040000 	lui	a0,0x0
 28c:	24840038 	addiu	a0,a0,56
 290:	8fa50048 	lw	a1,72(sp)
 294:	8fa60024 	lw	a2,36(sp)
 298:	8c67fefc 	lw	a3,-260(v1)
 29c:	0c000000 	jal	0 <Mempak_Init>
 2a0:	afa80010 	sw	t0,16(sp)
 2a4:	3c040000 	lui	a0,0x0
 2a8:	24840000 	addiu	a0,a0,0
 2ac:	0c000000 	jal	0 <Mempak_Init>
 2b0:	8fa50034 	lw	a1,52(sp)
 2b4:	8fbf001c 	lw	ra,28(sp)
 2b8:	8fa2002c 	lw	v0,44(sp)
 2bc:	27bd0038 	addiu	sp,sp,56
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <Mempak_Read>:
 2c8:	27bdffc8 	addiu	sp,sp,-56
 2cc:	afa40038 	sw	a0,56(sp)
 2d0:	afbf001c 	sw	ra,28(sp)
 2d4:	3c040000 	lui	a0,0x0
 2d8:	afa5003c 	sw	a1,60(sp)
 2dc:	afa60040 	sw	a2,64(sp)
 2e0:	afa70044 	sw	a3,68(sp)
 2e4:	afa0002c 	sw	zero,44(sp)
 2e8:	0c000000 	jal	0 <Mempak_Init>
 2ec:	24840000 	addiu	a0,a0,0
 2f0:	3c0e0000 	lui	t6,0x0
 2f4:	8fa80048 	lw	t0,72(sp)
 2f8:	8dce0000 	lw	t6,0(t6)
 2fc:	3c040000 	lui	a0,0x0
 300:	afa20034 	sw	v0,52(sp)
 304:	010e082a 	slt	at,t0,t6
 308:	1020001b 	beqz	at,378 <Mempak_Read+0xb0>
 30c:	24840000 	addiu	a0,a0,0
 310:	93a2003f 	lbu	v0,63(sp)
 314:	3c180000 	lui	t8,0x0
 318:	8fb90040 	lw	t9,64(sp)
 31c:	27180000 	addiu	t8,t8,0
 320:	00027880 	sll	t7,v0,0x2
 324:	01f81821 	addu	v1,t7,t8
 328:	8c65fefc 	lw	a1,-260(v1)
 32c:	afa30020 	sw	v1,32(sp)
 330:	00003025 	move	a2,zero
 334:	8fa70044 	lw	a3,68(sp)
 338:	afa80010 	sw	t0,16(sp)
 33c:	afa20024 	sw	v0,36(sp)
 340:	0c000000 	jal	0 <Mempak_Init>
 344:	afb90014 	sw	t9,20(sp)
 348:	8fa30020 	lw	v1,32(sp)
 34c:	14400003 	bnez	v0,35c <Mempak_Read+0x94>
 350:	00404025 	move	t0,v0
 354:	24090001 	li	t1,1
 358:	afa9002c 	sw	t1,44(sp)
 35c:	3c040000 	lui	a0,0x0
 360:	24840060 	addiu	a0,a0,96
 364:	8fa50048 	lw	a1,72(sp)
 368:	8fa60024 	lw	a2,36(sp)
 36c:	8c67fefc 	lw	a3,-260(v1)
 370:	0c000000 	jal	0 <Mempak_Init>
 374:	afa80010 	sw	t0,16(sp)
 378:	3c040000 	lui	a0,0x0
 37c:	24840000 	addiu	a0,a0,0
 380:	0c000000 	jal	0 <Mempak_Init>
 384:	8fa50034 	lw	a1,52(sp)
 388:	8fbf001c 	lw	ra,28(sp)
 38c:	8fa2002c 	lw	v0,44(sp)
 390:	27bd0038 	addiu	sp,sp,56
 394:	03e00008 	jr	ra
 398:	00000000 	nop

0000039c <Mempak_Alloc>:
 39c:	27bdffc0 	addiu	sp,sp,-64
 3a0:	afa40040 	sw	a0,64(sp)
 3a4:	afbf002c 	sw	ra,44(sp)
 3a8:	afb00028 	sw	s0,40(sp)
 3ac:	3c040000 	lui	a0,0x0
 3b0:	00a08025 	move	s0,a1
 3b4:	afa60048 	sw	a2,72(sp)
 3b8:	afa00034 	sw	zero,52(sp)
 3bc:	0c000000 	jal	0 <Mempak_Init>
 3c0:	24840000 	addiu	a0,a0,0
 3c4:	afa2003c 	sw	v0,60(sp)
 3c8:	92030000 	lbu	v1,0(s0)
 3cc:	00001025 	move	v0,zero
 3d0:	2405000a 	li	a1,10
 3d4:	28610041 	slti	at,v1,65
 3d8:	14200058 	bnez	at,53c <Mempak_Alloc+0x1a0>
 3dc:	2404ffff 	li	a0,-1
 3e0:	2861004c 	slti	at,v1,76
 3e4:	10200055 	beqz	at,53c <Mempak_Alloc+0x1a0>
 3e8:	3c080000 	lui	t0,0x0
 3ec:	25080000 	addiu	t0,t0,0
 3f0:	246effd9 	addiu	t6,v1,-39
 3f4:	a10e0000 	sb	t6,0(t0)
 3f8:	92030000 	lbu	v1,0(s0)
 3fc:	3c180000 	lui	t8,0x0
 400:	27180000 	addiu	t8,t8,0
 404:	00037880 	sll	t7,v1,0x2
 408:	01f81021 	addu	v0,t7,t8
 40c:	8c59fefc 	lw	t9,-260(v0)
 410:	2404ffff 	li	a0,-1
 414:	3c050000 	lui	a1,0x0
 418:	1499001a 	bne	a0,t9,484 <Mempak_Alloc+0xe8>
 41c:	246cffd9 	addiu	t4,v1,-39
 420:	8fa90048 	lw	t1,72(sp)
 424:	3c040000 	lui	a0,0x0
 428:	3c050000 	lui	a1,0x0
 42c:	3c060000 	lui	a2,0x0
 430:	3c070000 	lui	a3,0x0
 434:	244afefc 	addiu	t2,v0,-260
 438:	afaa0018 	sw	t2,24(sp)
 43c:	24e70000 	addiu	a3,a3,0
 440:	8cc60000 	lw	a2,0(a2)
 444:	94a50000 	lhu	a1,0(a1)
 448:	24840000 	addiu	a0,a0,0
 44c:	afa80010 	sw	t0,16(sp)
 450:	0c000000 	jal	0 <Mempak_Init>
 454:	afa90014 	sw	t1,20(sp)
 458:	14400003 	bnez	v0,468 <Mempak_Alloc+0xcc>
 45c:	00403825 	move	a3,v0
 460:	240b0001 	li	t3,1
 464:	afab0034 	sw	t3,52(sp)
 468:	3c040000 	lui	a0,0x0
 46c:	24840084 	addiu	a0,a0,132
 470:	8fa50048 	lw	a1,72(sp)
 474:	0c000000 	jal	0 <Mempak_Init>
 478:	92060000 	lbu	a2,0(s0)
 47c:	10000056 	b	5d8 <Mempak_Alloc+0x23c>
 480:	00000000 	nop
 484:	a10c0000 	sb	t4,0(t0)
 488:	3c040000 	lui	a0,0x0
 48c:	3c060000 	lui	a2,0x0
 490:	3c070000 	lui	a3,0x0
 494:	24e70000 	addiu	a3,a3,0
 498:	8cc60000 	lw	a2,0(a2)
 49c:	24840000 	addiu	a0,a0,0
 4a0:	94a50000 	lhu	a1,0(a1)
 4a4:	0c000000 	jal	0 <Mempak_Init>
 4a8:	afa80010 	sw	t0,16(sp)
 4ac:	3c080000 	lui	t0,0x0
 4b0:	14400003 	bnez	v0,4c0 <Mempak_Alloc+0x124>
 4b4:	25080000 	addiu	t0,t0,0
 4b8:	240d0001 	li	t5,1
 4bc:	afad0034 	sw	t5,52(sp)
 4c0:	8fae0048 	lw	t6,72(sp)
 4c4:	afa80010 	sw	t0,16(sp)
 4c8:	3c090000 	lui	t1,0x0
 4cc:	afae0014 	sw	t6,20(sp)
 4d0:	920f0000 	lbu	t7,0(s0)
 4d4:	25290000 	addiu	t1,t1,0
 4d8:	3c040000 	lui	a0,0x0
 4dc:	000fc080 	sll	t8,t7,0x2
 4e0:	2719fefc 	addiu	t9,t8,-260
 4e4:	03295021 	addu	t2,t9,t1
 4e8:	3c050000 	lui	a1,0x0
 4ec:	3c060000 	lui	a2,0x0
 4f0:	3c070000 	lui	a3,0x0
 4f4:	24e70000 	addiu	a3,a3,0
 4f8:	8cc60000 	lw	a2,0(a2)
 4fc:	94a50000 	lhu	a1,0(a1)
 500:	afaa0018 	sw	t2,24(sp)
 504:	0c000000 	jal	0 <Mempak_Init>
 508:	24840000 	addiu	a0,a0,0
 50c:	14400004 	bnez	v0,520 <Mempak_Alloc+0x184>
 510:	00403825 	move	a3,v0
 514:	8fab0034 	lw	t3,52(sp)
 518:	356c0001 	ori	t4,t3,0x1
 51c:	afac0034 	sw	t4,52(sp)
 520:	3c040000 	lui	a0,0x0
 524:	248400a8 	addiu	a0,a0,168
 528:	8fa50048 	lw	a1,72(sp)
 52c:	0c000000 	jal	0 <Mempak_Init>
 530:	92060000 	lbu	a2,0(s0)
 534:	10000028 	b	5d8 <Mempak_Alloc+0x23c>
 538:	00000000 	nop
 53c:	3c030000 	lui	v1,0x0
 540:	24630000 	addiu	v1,v1,0
 544:	8c6d0000 	lw	t5,0(v1)
 548:	508d0005 	beql	a0,t5,560 <Mempak_Alloc+0x1c4>
 54c:	244f0041 	addiu	t7,v0,65
 550:	24420001 	addiu	v0,v0,1
 554:	1445fffb 	bne	v0,a1,544 <Mempak_Alloc+0x1a8>
 558:	24630004 	addiu	v1,v1,4
 55c:	244f0041 	addiu	t7,v0,65
 560:	a20f0000 	sb	t7,0(s0)
 564:	3c080000 	lui	t0,0x0
 568:	8fb90048 	lw	t9,72(sp)
 56c:	25080000 	addiu	t0,t0,0
 570:	25f8ffd9 	addiu	t8,t7,-39
 574:	a1180000 	sb	t8,0(t0)
 578:	3c040000 	lui	a0,0x0
 57c:	3c050000 	lui	a1,0x0
 580:	3c060000 	lui	a2,0x0
 584:	3c070000 	lui	a3,0x0
 588:	24e70000 	addiu	a3,a3,0
 58c:	8cc60000 	lw	a2,0(a2)
 590:	94a50000 	lhu	a1,0(a1)
 594:	24840000 	addiu	a0,a0,0
 598:	afa80010 	sw	t0,16(sp)
 59c:	afa30018 	sw	v1,24(sp)
 5a0:	0c000000 	jal	0 <Mempak_Init>
 5a4:	afb90014 	sw	t9,20(sp)
 5a8:	afa20038 	sw	v0,56(sp)
 5ac:	3c040000 	lui	a0,0x0
 5b0:	248400cc 	addiu	a0,a0,204
 5b4:	92060000 	lbu	a2,0(s0)
 5b8:	8fa50048 	lw	a1,72(sp)
 5bc:	0c000000 	jal	0 <Mempak_Init>
 5c0:	00403825 	move	a3,v0
 5c4:	8fa90038 	lw	t1,56(sp)
 5c8:	240a0001 	li	t2,1
 5cc:	15200002 	bnez	t1,5d8 <Mempak_Alloc+0x23c>
 5d0:	00000000 	nop
 5d4:	afaa0034 	sw	t2,52(sp)
 5d8:	3c040000 	lui	a0,0x0
 5dc:	24840000 	addiu	a0,a0,0
 5e0:	0c000000 	jal	0 <Mempak_Init>
 5e4:	8fa5003c 	lw	a1,60(sp)
 5e8:	8fbf002c 	lw	ra,44(sp)
 5ec:	8fa20034 	lw	v0,52(sp)
 5f0:	8fb00028 	lw	s0,40(sp)
 5f4:	03e00008 	jr	ra
 5f8:	27bd0040 	addiu	sp,sp,64

000005fc <Mempak_DeleteFile>:
 5fc:	27bdffd0 	addiu	sp,sp,-48
 600:	afa40030 	sw	a0,48(sp)
 604:	afbf001c 	sw	ra,28(sp)
 608:	3c040000 	lui	a0,0x0
 60c:	afa50034 	sw	a1,52(sp)
 610:	afa00024 	sw	zero,36(sp)
 614:	0c000000 	jal	0 <Mempak_Init>
 618:	24840000 	addiu	a0,a0,0
 61c:	93a30037 	lbu	v1,55(sp)
 620:	3c080000 	lui	t0,0x0
 624:	25080000 	addiu	t0,t0,0
 628:	246effd9 	addiu	t6,v1,-39
 62c:	a10e0000 	sb	t6,0(t0)
 630:	3c040000 	lui	a0,0x0
 634:	3c050000 	lui	a1,0x0
 638:	3c060000 	lui	a2,0x0
 63c:	3c070000 	lui	a3,0x0
 640:	afa2002c 	sw	v0,44(sp)
 644:	24e70000 	addiu	a3,a3,0
 648:	8cc60000 	lw	a2,0(a2)
 64c:	94a50000 	lhu	a1,0(a1)
 650:	24840000 	addiu	a0,a0,0
 654:	afa80010 	sw	t0,16(sp)
 658:	0c000000 	jal	0 <Mempak_Init>
 65c:	afa30020 	sw	v1,32(sp)
 660:	14400003 	bnez	v0,670 <Mempak_DeleteFile+0x74>
 664:	00403025 	move	a2,v0
 668:	240f0001 	li	t7,1
 66c:	afaf0024 	sw	t7,36(sp)
 670:	3c040000 	lui	a0,0x0
 674:	248400fc 	addiu	a0,a0,252
 678:	0c000000 	jal	0 <Mempak_Init>
 67c:	8fa50020 	lw	a1,32(sp)
 680:	3c040000 	lui	a0,0x0
 684:	24840000 	addiu	a0,a0,0
 688:	0c000000 	jal	0 <Mempak_Init>
 68c:	8fa5002c 	lw	a1,44(sp)
 690:	8fbf001c 	lw	ra,28(sp)
 694:	8fa20024 	lw	v0,36(sp)
 698:	27bd0030 	addiu	sp,sp,48
 69c:	03e00008 	jr	ra
 6a0:	00000000 	nop

000006a4 <Mempak_GetFileSize>:
 6a4:	27bdffb8 	addiu	sp,sp,-72
 6a8:	afa40048 	sw	a0,72(sp)
 6ac:	afbf0014 	sw	ra,20(sp)
 6b0:	3c040000 	lui	a0,0x0
 6b4:	afa5004c 	sw	a1,76(sp)
 6b8:	0c000000 	jal	0 <Mempak_Init>
 6bc:	24840000 	addiu	a0,a0,0
 6c0:	93ae004f 	lbu	t6,79(sp)
 6c4:	3c050000 	lui	a1,0x0
 6c8:	3c040000 	lui	a0,0x0
 6cc:	000e7880 	sll	t7,t6,0x2
 6d0:	00af2821 	addu	a1,a1,t7
 6d4:	afa20044 	sw	v0,68(sp)
 6d8:	8ca5fefc 	lw	a1,-260(a1)
 6dc:	24840000 	addiu	a0,a0,0
 6e0:	0c000000 	jal	0 <Mempak_Init>
 6e4:	27a60024 	addiu	a2,sp,36
 6e8:	3c040000 	lui	a0,0x0
 6ec:	afa20020 	sw	v0,32(sp)
 6f0:	24840000 	addiu	a0,a0,0
 6f4:	0c000000 	jal	0 <Mempak_Init>
 6f8:	8fa50044 	lw	a1,68(sp)
 6fc:	8fb80020 	lw	t8,32(sp)
 700:	8fbf0014 	lw	ra,20(sp)
 704:	8fa20024 	lw	v0,36(sp)
 708:	13000003 	beqz	t8,718 <Mempak_GetFileSize+0x74>
 70c:	00000000 	nop
 710:	10000001 	b	718 <Mempak_GetFileSize+0x74>
 714:	00001025 	move	v0,zero
 718:	03e00008 	jr	ra
 71c:	27bd0048 	addiu	sp,sp,72
