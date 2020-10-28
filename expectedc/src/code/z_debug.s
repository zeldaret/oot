
build/src/code/z_debug.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800636C0>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	3c050000 	lui	a1,0x0
   c:	24a50000 	addiu	a1,a1,0
  10:	240415d4 	li	a0,5588
  14:	0c000000 	jal	0 <func_800636C0>
  18:	24060104 	li	a2,260
  1c:	3c040000 	lui	a0,0x0
  20:	24840000 	addiu	a0,a0,0
  24:	ac820000 	sw	v0,0(a0)
  28:	ac400000 	sw	zero,0(v0)
  2c:	8c8f0000 	lw	t7,0(a0)
  30:	240215c0 	li	v0,5568
  34:	00001825 	move	v1,zero
  38:	ade00004 	sw	zero,4(t7)
  3c:	8c980000 	lw	t8,0(a0)
  40:	af000008 	sw	zero,8(t8)
  44:	8c990000 	lw	t9,0(a0)
  48:	af20000c 	sw	zero,12(t9)
  4c:	8c880000 	lw	t0,0(a0)
  50:	ad000010 	sw	zero,16(t0)
  54:	8c890000 	lw	t1,0(a0)
  58:	01235021 	addu	t2,t1,v1
  5c:	a5400014 	sh	zero,20(t2)
  60:	8c8b0000 	lw	t3,0(a0)
  64:	01636021 	addu	t4,t3,v1
  68:	a5800016 	sh	zero,22(t4)
  6c:	8c8d0000 	lw	t5,0(a0)
  70:	01a37021 	addu	t6,t5,v1
  74:	a5c00018 	sh	zero,24(t6)
  78:	8c8f0000 	lw	t7,0(a0)
  7c:	01e3c021 	addu	t8,t7,v1
  80:	24630008 	addiu	v1,v1,8
  84:	1462fff3 	bne	v1,v0,54 <func_800636C0+0x54>
  88:	a700001a 	sh	zero,26(t8)
  8c:	8fbf0014 	lw	ra,20(sp)
  90:	27bd0018 	addiu	sp,sp,24
  94:	03e00008 	jr	ra
  98:	00000000 	nop

0000009c <func_8006375C>:
  9c:	afa40000 	sw	a0,0(sp)
  a0:	afa50004 	sw	a1,4(sp)
  a4:	03e00008 	jr	ra
  a8:	afa60008 	sw	a2,8(sp)

000000ac <func_8006376C>:
  ac:	3c090000 	lui	t1,0x0
  b0:	25290000 	addiu	t1,t1,0
  b4:	85230000 	lh	v1,0(t1)
  b8:	27bdfff8 	addiu	sp,sp,-8
  bc:	3c0f0000 	lui	t7,0x0
  c0:	00037080 	sll	t6,v1,0x2
  c4:	01c37023 	subu	t6,t6,v1
  c8:	afb00004 	sw	s0,4(sp)
  cc:	afa40008 	sw	a0,8(sp)
  d0:	afa5000c 	sw	a1,12(sp)
  d4:	afa60010 	sw	a2,16(sp)
  d8:	000e70c0 	sll	t6,t6,0x3
  dc:	25ef0000 	addiu	t7,t7,0
  e0:	28610016 	slti	at,v1,22
  e4:	30c600ff 	andi	a2,a2,0xff
  e8:	30a500ff 	andi	a1,a1,0xff
  ec:	308400ff 	andi	a0,a0,0xff
  f0:	00e08025 	move	s0,a3
  f4:	10200019 	beqz	at,15c <func_8006376C+0xb0>
  f8:	01cf1021 	addu	v0,t6,t7
  fc:	a0440000 	sb	a0,0(v0)
 100:	a0450001 	sb	a1,1(v0)
 104:	a0460002 	sb	a2,2(v0)
 108:	90e70000 	lbu	a3,0(a3)
 10c:	00001825 	move	v1,zero
 110:	24480004 	addiu	t0,v0,4
 114:	26100001 	addiu	s0,s0,1
 118:	10e0000c 	beqz	a3,14c <func_8006376C+0xa0>
 11c:	a0470003 	sb	a3,3(v0)
 120:	28620015 	slti	v0,v1,21
 124:	24630001 	addiu	v1,v1,1
 128:	00031c00 	sll	v1,v1,0x10
 12c:	38420001 	xori	v0,v0,0x1
 130:	14400006 	bnez	v0,14c <func_8006376C+0xa0>
 134:	00031c03 	sra	v1,v1,0x10
 138:	92070000 	lbu	a3,0(s0)
 13c:	25080001 	addiu	t0,t0,1
 140:	26100001 	addiu	s0,s0,1
 144:	14e0fff6 	bnez	a3,120 <func_8006376C+0x74>
 148:	a107ffff 	sb	a3,-1(t0)
 14c:	a1000000 	sb	zero,0(t0)
 150:	85380000 	lh	t8,0(t1)
 154:	27190001 	addiu	t9,t8,1
 158:	a5390000 	sh	t9,0(t1)
 15c:	8fb00004 	lw	s0,4(sp)
 160:	03e00008 	jr	ra
 164:	27bd0008 	addiu	sp,sp,8

00000168 <func_80063828>:
 168:	27bdffc0 	addiu	sp,sp,-64
 16c:	afb60038 	sw	s6,56(sp)
 170:	3c160000 	lui	s6,0x0
 174:	26d60000 	addiu	s6,s6,0
 178:	86ce0000 	lh	t6,0(s6)
 17c:	afb3002c 	sw	s3,44(sp)
 180:	afb20028 	sw	s2,40(sp)
 184:	00809825 	move	s3,a0
 188:	afbf003c 	sw	ra,60(sp)
 18c:	afb50034 	sw	s5,52(sp)
 190:	afb40030 	sw	s4,48(sp)
 194:	afb10024 	sw	s1,36(sp)
 198:	afb00020 	sw	s0,32(sp)
 19c:	19c00021 	blez	t6,224 <func_80063828+0xbc>
 1a0:	00009025 	move	s2,zero
 1a4:	3c100000 	lui	s0,0x0
 1a8:	3c110000 	lui	s1,0x0
 1ac:	3c150000 	lui	s5,0x0
 1b0:	3c140000 	lui	s4,0x0
 1b4:	26940000 	addiu	s4,s4,0
 1b8:	26b50010 	addiu	s5,s5,16
 1bc:	26310003 	addiu	s1,s1,3
 1c0:	26100000 	addiu	s0,s0,0
 1c4:	920f0002 	lbu	t7,2(s0)
 1c8:	02602025 	move	a0,s3
 1cc:	000fc080 	sll	t8,t7,0x2
 1d0:	02981021 	addu	v0,s4,t8
 1d4:	90590003 	lbu	t9,3(v0)
 1d8:	90450000 	lbu	a1,0(v0)
 1dc:	90460001 	lbu	a2,1(v0)
 1e0:	90470002 	lbu	a3,2(v0)
 1e4:	0c000000 	jal	0 <func_800636C0>
 1e8:	afb90010 	sw	t9,16(sp)
 1ec:	02602025 	move	a0,s3
 1f0:	92050000 	lbu	a1,0(s0)
 1f4:	0c000000 	jal	0 <func_800636C0>
 1f8:	92060001 	lbu	a2,1(s0)
 1fc:	02602025 	move	a0,s3
 200:	02a02825 	move	a1,s5
 204:	0c000000 	jal	0 <func_800636C0>
 208:	02203025 	move	a2,s1
 20c:	86c80000 	lh	t0,0(s6)
 210:	26520001 	addiu	s2,s2,1
 214:	26100018 	addiu	s0,s0,24
 218:	0248082a 	slt	at,s2,t0
 21c:	1420ffe9 	bnez	at,1c4 <func_80063828+0x5c>
 220:	26310018 	addiu	s1,s1,24
 224:	8fbf003c 	lw	ra,60(sp)
 228:	8fb00020 	lw	s0,32(sp)
 22c:	8fb10024 	lw	s1,36(sp)
 230:	8fb20028 	lw	s2,40(sp)
 234:	8fb3002c 	lw	s3,44(sp)
 238:	8fb40030 	lw	s4,48(sp)
 23c:	8fb50034 	lw	s5,52(sp)
 240:	8fb60038 	lw	s6,56(sp)
 244:	03e00008 	jr	ra
 248:	27bd0040 	addiu	sp,sp,64

0000024c <func_8006390C>:
 24c:	3c0b0000 	lui	t3,0x0
 250:	256b0000 	addiu	t3,t3,0
 254:	8d680000 	lw	t0,0(t3)
 258:	27bdffe8 	addiu	sp,sp,-24
 25c:	afbf0014 	sw	ra,20(sp)
 260:	8d0a0004 	lw	t2,4(t0)
 264:	8d090000 	lw	t1,0(t0)
 268:	94850000 	lhu	a1,0(a0)
 26c:	000a7080 	sll	t6,t2,0x2
 270:	01ca7023 	subu	t6,t6,t2
 274:	000e7040 	sll	t6,t6,0x1
 278:	2401ffdf 	li	at,-33
 27c:	01c96021 	addu	t4,t6,t1
 280:	000c6100 	sll	t4,t4,0x4
 284:	00a17827 	nor	t7,a1,at
 288:	00803025 	move	a2,a0
 28c:	258cfff0 	addiu	t4,t4,-16
 290:	11e00008 	beqz	t7,2b4 <func_8006390C+0x68>
 294:	30a70f00 	andi	a3,a1,0xf00
 298:	2401ffef 	li	at,-17
 29c:	00a1c027 	nor	t8,a1,at
 2a0:	13000004 	beqz	t8,2b4 <func_8006390C+0x68>
 2a4:	2401efff 	li	at,-4097
 2a8:	00a1c827 	nor	t9,a1,at
 2ac:	17200022 	bnez	t9,338 <func_8006390C+0xec>
 2b0:	252dffff 	addiu	t5,t1,-1
 2b4:	3c020000 	lui	v0,0x0
 2b8:	24420000 	addiu	v0,v0,0
 2bc:	00001825 	move	v1,zero
 2c0:	2404001d 	li	a0,29
 2c4:	944d0000 	lhu	t5,0(v0)
 2c8:	01a07027 	nor	t6,t5,zero
 2cc:	01c57827 	nor	t7,t6,a1
 2d0:	55e00008 	bnezl	t7,2f4 <func_8006390C+0xa8>
 2d4:	24630001 	addiu	v1,v1,1
 2d8:	94580002 	lhu	t8,2(v0)
 2dc:	94cd000c 	lhu	t5,12(a2)
 2e0:	0300c827 	nor	t9,t8,zero
 2e4:	032d7027 	nor	t6,t9,t5
 2e8:	51c00005 	beqzl	t6,300 <func_8006390C+0xb4>
 2ec:	2861001d 	slti	at,v1,29
 2f0:	24630001 	addiu	v1,v1,1
 2f4:	1464fff3 	bne	v1,a0,2c4 <func_8006390C+0x78>
 2f8:	24420004 	addiu	v0,v0,4
 2fc:	2861001d 	slti	at,v1,29
 300:	5020008d 	beqzl	at,538 <func_8006390C+0x2ec>
 304:	8fbf0014 	lw	ra,20(sp)
 308:	146a0007 	bne	v1,t2,328 <func_8006390C+0xdc>
 30c:	252f0001 	addiu	t7,t1,1
 310:	24010007 	li	at,7
 314:	01e1001a 	div	zero,t7,at
 318:	0000c010 	mfhi	t8
 31c:	ad180000 	sw	t8,0(t0)
 320:	10000085 	b	538 <func_8006390C+0x2ec>
 324:	8fbf0014 	lw	ra,20(sp)
 328:	ad030004 	sw	v1,4(t0)
 32c:	8d790000 	lw	t9,0(t3)
 330:	10000080 	b	534 <func_8006390C+0x2e8>
 334:	af200000 	sw	zero,0(t9)
 338:	2da10006 	sltiu	at,t5,6
 33c:	1020007d 	beqz	at,534 <func_8006390C+0x2e8>
 340:	000d6880 	sll	t5,t5,0x2
 344:	3c010000 	lui	at,0x0
 348:	002d0821 	addu	at,at,t5
 34c:	8c2d0040 	lw	t5,64(at)
 350:	01a00008 	jr	t5
 354:	00000000 	nop
 358:	8d0e000c 	lw	t6,12(t0)
 35c:	240f0010 	li	t7,16
 360:	54ee0010 	bnel	a3,t6,3a4 <func_8006390C+0x158>
 364:	ad0f0010 	sw	t7,16(t0)
 368:	8d0f0010 	lw	t7,16(t0)
 36c:	240d0001 	li	t5,1
 370:	25f8ffff 	addiu	t8,t7,-1
 374:	ad180010 	sw	t8,16(t0)
 378:	8d680000 	lw	t0,0(t3)
 37c:	8d190010 	lw	t9,16(t0)
 380:	07230005 	bgezl	t9,398 <func_8006390C+0x14c>
 384:	8d0e000c 	lw	t6,12(t0)
 388:	ad0d0010 	sw	t5,16(t0)
 38c:	10000008 	b	3b0 <func_8006390C+0x164>
 390:	8d680000 	lw	t0,0(t3)
 394:	8d0e000c 	lw	t6,12(t0)
 398:	10000005 	b	3b0 <func_8006390C+0x164>
 39c:	00ee3826 	xor	a3,a3,t6
 3a0:	ad0f0010 	sw	t7,16(t0)
 3a4:	8d780000 	lw	t8,0(t3)
 3a8:	af07000c 	sw	a3,12(t8)
 3ac:	8d680000 	lw	t0,0(t3)
 3b0:	30f90100 	andi	t9,a3,0x100
 3b4:	13200018 	beqz	t9,418 <func_8006390C+0x1cc>
 3b8:	30f80200 	andi	t8,a3,0x200
 3bc:	94c50000 	lhu	a1,0(a2)
 3c0:	3c01ffff 	lui	at,0xffff
 3c4:	34213fff 	ori	at,at,0x3fff
 3c8:	00a16827 	nor	t5,a1,at
 3cc:	15a00003 	bnez	t5,3dc <func_8006390C+0x190>
 3d0:	3c01ffff 	lui	at,0xffff
 3d4:	1000002a 	b	480 <func_8006390C+0x234>
 3d8:	240303e8 	li	v1,1000
 3dc:	34217fff 	ori	at,at,0x7fff
 3e0:	00a17027 	nor	t6,a1,at
 3e4:	15c00003 	bnez	t6,3f4 <func_8006390C+0x1a8>
 3e8:	2401bfff 	li	at,-16385
 3ec:	10000007 	b	40c <func_8006390C+0x1c0>
 3f0:	24030064 	li	v1,100
 3f4:	00a17827 	nor	t7,a1,at
 3f8:	15e00003 	bnez	t7,408 <func_8006390C+0x1bc>
 3fc:	24020001 	li	v0,1
 400:	10000001 	b	408 <func_8006390C+0x1bc>
 404:	2402000a 	li	v0,10
 408:	00401825 	move	v1,v0
 40c:	00601025 	move	v0,v1
 410:	1000001b 	b	480 <func_8006390C+0x234>
 414:	00401825 	move	v1,v0
 418:	13000018 	beqz	t8,47c <func_8006390C+0x230>
 41c:	00002025 	move	a0,zero
 420:	94c50000 	lhu	a1,0(a2)
 424:	3c01ffff 	lui	at,0xffff
 428:	34213fff 	ori	at,at,0x3fff
 42c:	00a1c827 	nor	t9,a1,at
 430:	17200003 	bnez	t9,440 <func_8006390C+0x1f4>
 434:	3c01ffff 	lui	at,0xffff
 438:	10000010 	b	47c <func_8006390C+0x230>
 43c:	2404fc18 	li	a0,-1000
 440:	34217fff 	ori	at,at,0x7fff
 444:	00a16827 	nor	t5,a1,at
 448:	15a00003 	bnez	t5,458 <func_8006390C+0x20c>
 44c:	2401bfff 	li	at,-16385
 450:	10000007 	b	470 <func_8006390C+0x224>
 454:	2403ff9c 	li	v1,-100
 458:	00a17027 	nor	t6,a1,at
 45c:	15c00003 	bnez	t6,46c <func_8006390C+0x220>
 460:	2402ffff 	li	v0,-1
 464:	10000001 	b	46c <func_8006390C+0x220>
 468:	2402fff6 	li	v0,-10
 46c:	00401825 	move	v1,v0
 470:	00601025 	move	v0,v1
 474:	10000001 	b	47c <func_8006390C+0x230>
 478:	00402025 	move	a0,v0
 47c:	00801825 	move	v1,a0
 480:	8d0f0008 	lw	t7,8(t0)
 484:	000c6840 	sll	t5,t4,0x1
 488:	000fc040 	sll	t8,t7,0x1
 48c:	0118c821 	addu	t9,t0,t8
 490:	032d1021 	addu	v0,t9,t5
 494:	844e0014 	lh	t6,20(v0)
 498:	30f80800 	andi	t8,a3,0x800
 49c:	01c37821 	addu	t7,t6,v1
 4a0:	1300000c 	beqz	t8,4d4 <func_8006390C+0x288>
 4a4:	a44f0014 	sh	t7,20(v0)
 4a8:	8d680000 	lw	t0,0(t3)
 4ac:	240f000f 	li	t7,15
 4b0:	8d190008 	lw	t9,8(t0)
 4b4:	272dffff 	addiu	t5,t9,-1
 4b8:	ad0d0008 	sw	t5,8(t0)
 4bc:	8d680000 	lw	t0,0(t3)
 4c0:	8d0e0008 	lw	t6,8(t0)
 4c4:	05c30011 	bgezl	t6,50c <func_8006390C+0x2c0>
 4c8:	8d680000 	lw	t0,0(t3)
 4cc:	1000000e 	b	508 <func_8006390C+0x2bc>
 4d0:	ad0f0008 	sw	t7,8(t0)
 4d4:	30f80400 	andi	t8,a3,0x400
 4d8:	5300000c 	beqzl	t8,50c <func_8006390C+0x2c0>
 4dc:	8d680000 	lw	t0,0(t3)
 4e0:	8d680000 	lw	t0,0(t3)
 4e4:	8d190008 	lw	t9,8(t0)
 4e8:	272d0001 	addiu	t5,t9,1
 4ec:	ad0d0008 	sw	t5,8(t0)
 4f0:	8d680000 	lw	t0,0(t3)
 4f4:	8d0e0008 	lw	t6,8(t0)
 4f8:	29c10010 	slti	at,t6,16
 4fc:	54200003 	bnezl	at,50c <func_8006390C+0x2c0>
 500:	8d680000 	lw	t0,0(t3)
 504:	ad000008 	sw	zero,8(t0)
 508:	8d680000 	lw	t0,0(t3)
 50c:	850f0cd4 	lh	t7,3284(t0)
 510:	51e00009 	beqzl	t7,538 <func_8006390C+0x2ec>
 514:	8fbf0014 	lw	ra,20(sp)
 518:	a5000cd4 	sh	zero,3284(t0)
 51c:	8d680000 	lw	t0,0(t3)
 520:	44806000 	mtc1	zero,$f12
 524:	91050cd7 	lbu	a1,3287(t0)
 528:	91060cd9 	lbu	a2,3289(t0)
 52c:	0c000000 	jal	0 <func_800636C0>
 530:	91070cdb 	lbu	a3,3291(t0)
 534:	8fbf0014 	lw	ra,20(sp)
 538:	27bd0018 	addiu	sp,sp,24
 53c:	03e00008 	jr	ra
 540:	00000000 	nop

00000544 <func_80063C04>:
 544:	27bdffa0 	addiu	sp,sp,-96
 548:	afb30028 	sw	s3,40(sp)
 54c:	3c130000 	lui	s3,0x0
 550:	26730000 	addiu	s3,s3,0
 554:	8e620000 	lw	v0,0(s3)
 558:	afbf003c 	sw	ra,60(sp)
 55c:	afb70038 	sw	s7,56(sp)
 560:	afb60034 	sw	s6,52(sp)
 564:	afb50030 	sw	s5,48(sp)
 568:	afb4002c 	sw	s4,44(sp)
 56c:	afb20024 	sw	s2,36(sp)
 570:	afb10020 	sw	s1,32(sp)
 574:	afb0001c 	sw	s0,28(sp)
 578:	8c4e0004 	lw	t6,4(v0)
 57c:	8c430000 	lw	v1,0(v0)
 580:	24180052 	li	t8,82
 584:	a3b8004c 	sb	t8,76(sp)
 588:	8c590004 	lw	t9,4(v0)
 58c:	000e7880 	sll	t7,t6,0x2
 590:	3c080000 	lui	t0,0x0
 594:	01ee7823 	subu	t7,t7,t6
 598:	000f7840 	sll	t7,t7,0x1
 59c:	01194021 	addu	t0,t0,t9
 5a0:	91080000 	lbu	t0,0(t0)
 5a4:	01e3a821 	addu	s5,t7,v1
 5a8:	0015a900 	sll	s5,s5,0x4
 5ac:	24090080 	li	t1,128
 5b0:	0003a100 	sll	s4,v1,0x4
 5b4:	00808825 	move	s1,a0
 5b8:	2694fff0 	addiu	s4,s4,-16
 5bc:	26b5fff0 	addiu	s5,s5,-16
 5c0:	a3a0004e 	sb	zero,78(sp)
 5c4:	afa90010 	sw	t1,16(sp)
 5c8:	00002825 	move	a1,zero
 5cc:	24060080 	li	a2,128
 5d0:	24070080 	li	a3,128
 5d4:	0c000000 	jal	0 <func_800636C0>
 5d8:	a3a8004d 	sb	t0,77(sp)
 5dc:	02809025 	move	s2,s4
 5e0:	3c140000 	lui	s4,0x0
 5e4:	0015b840 	sll	s7,s5,0x1
 5e8:	27b5004c 	addiu	s5,sp,76
 5ec:	26940014 	addiu	s4,s4,20
 5f0:	00008025 	move	s0,zero
 5f4:	24160010 	li	s6,16
 5f8:	8e6a0000 	lw	t2,0(s3)
 5fc:	02202025 	move	a0,s1
 600:	00002825 	move	a1,zero
 604:	8d4b0008 	lw	t3,8(t2)
 608:	240600ff 	li	a2,255
 60c:	240700ff 	li	a3,255
 610:	160b0003 	bne	s0,t3,620 <func_80063C04+0xdc>
 614:	240c00ff 	li	t4,255
 618:	0c000000 	jal	0 <func_800636C0>
 61c:	afac0010 	sw	t4,16(sp)
 620:	02202025 	move	a0,s1
 624:	24050003 	li	a1,3
 628:	0c000000 	jal	0 <func_800636C0>
 62c:	26060005 	addiu	a2,s0,5
 630:	8e6d0000 	lw	t5,0(s3)
 634:	00107040 	sll	t6,s0,0x1
 638:	02202025 	move	a0,s1
 63c:	01ae7821 	addu	t7,t5,t6
 640:	01f7c021 	addu	t8,t7,s7
 644:	87190014 	lh	t9,20(t8)
 648:	02802825 	move	a1,s4
 64c:	02a03025 	move	a2,s5
 650:	02403825 	move	a3,s2
 654:	0c000000 	jal	0 <func_800636C0>
 658:	afb90010 	sw	t9,16(sp)
 65c:	8e680000 	lw	t0,0(s3)
 660:	02202025 	move	a0,s1
 664:	00002825 	move	a1,zero
 668:	8d090008 	lw	t1,8(t0)
 66c:	24060080 	li	a2,128
 670:	24070080 	li	a3,128
 674:	16090003 	bne	s0,t1,684 <func_80063C04+0x140>
 678:	240a0080 	li	t2,128
 67c:	0c000000 	jal	0 <func_800636C0>
 680:	afaa0010 	sw	t2,16(sp)
 684:	26100001 	addiu	s0,s0,1
 688:	1616ffdb 	bne	s0,s6,5f8 <func_80063C04+0xb4>
 68c:	26520001 	addiu	s2,s2,1
 690:	8fbf003c 	lw	ra,60(sp)
 694:	8fb0001c 	lw	s0,28(sp)
 698:	8fb10020 	lw	s1,32(sp)
 69c:	8fb20024 	lw	s2,36(sp)
 6a0:	8fb30028 	lw	s3,40(sp)
 6a4:	8fb4002c 	lw	s4,44(sp)
 6a8:	8fb50030 	lw	s5,48(sp)
 6ac:	8fb60034 	lw	s6,52(sp)
 6b0:	8fb70038 	lw	s7,56(sp)
 6b4:	03e00008 	jr	ra
 6b8:	27bd0060 	addiu	sp,sp,96

000006bc <func_80063D7C>:
 6bc:	27bdff80 	addiu	sp,sp,-128
 6c0:	afb00018 	sw	s0,24(sp)
 6c4:	00808025 	move	s0,a0
 6c8:	afbf001c 	sw	ra,28(sp)
 6cc:	3c060000 	lui	a2,0x0
 6d0:	24c60020 	addiu	a2,a2,32
 6d4:	02002825 	move	a1,s0
 6d8:	27a40030 	addiu	a0,sp,48
 6dc:	0c000000 	jal	0 <func_800636C0>
 6e0:	24070274 	li	a3,628
 6e4:	0c000000 	jal	0 <func_800636C0>
 6e8:	27a40048 	addiu	a0,sp,72
 6ec:	8e0402c0 	lw	a0,704(s0)
 6f0:	0c000000 	jal	0 <func_800636C0>
 6f4:	afa40078 	sw	a0,120(sp)
 6f8:	8e0402b0 	lw	a0,688(s0)
 6fc:	3c0fde00 	lui	t7,0xde00
 700:	00402825 	move	a1,v0
 704:	248e0008 	addiu	t6,a0,8
 708:	ae0e02b0 	sw	t6,688(s0)
 70c:	ac820004 	sw	v0,4(a0)
 710:	ac8f0000 	sw	t7,0(a0)
 714:	0c000000 	jal	0 <func_800636C0>
 718:	27a40048 	addiu	a0,sp,72
 71c:	3c020000 	lui	v0,0x0
 720:	8c420000 	lw	v0,0(v0)
 724:	24010001 	li	at,1
 728:	84430194 	lh	v1,404(v0)
 72c:	10610003 	beq	v1,at,73c <func_80063D7C+0x80>
 730:	24010008 	li	at,8
 734:	54610006 	bnel	v1,at,750 <func_80063D7C+0x94>
 738:	8c580000 	lw	t8,0(v0)
 73c:	0c000000 	jal	0 <func_800636C0>
 740:	27a40048 	addiu	a0,sp,72
 744:	3c020000 	lui	v0,0x0
 748:	8c420000 	lw	v0,0(v0)
 74c:	8c580000 	lw	t8,0(v0)
 750:	13000003 	beqz	t8,760 <func_80063D7C+0xa4>
 754:	00000000 	nop
 758:	0c000000 	jal	0 <func_800636C0>
 75c:	27a40048 	addiu	a0,sp,72
 760:	3c010000 	lui	at,0x0
 764:	a4200000 	sh	zero,0(at)
 768:	0c000000 	jal	0 <func_800636C0>
 76c:	27a40048 	addiu	a0,sp,72
 770:	3c19df00 	lui	t9,0xdf00
 774:	ac590000 	sw	t9,0(v0)
 778:	24450008 	addiu	a1,v0,8
 77c:	ac400004 	sw	zero,4(v0)
 780:	afa5007c 	sw	a1,124(sp)
 784:	0c000000 	jal	0 <func_800636C0>
 788:	8fa40078 	lw	a0,120(sp)
 78c:	8fa5007c 	lw	a1,124(sp)
 790:	3c060000 	lui	a2,0x0
 794:	24c60030 	addiu	a2,a2,48
 798:	ae0502c0 	sw	a1,704(s0)
 79c:	02002825 	move	a1,s0
 7a0:	27a40030 	addiu	a0,sp,48
 7a4:	0c000000 	jal	0 <func_800636C0>
 7a8:	24070298 	li	a3,664
 7ac:	0c000000 	jal	0 <func_800636C0>
 7b0:	27a40048 	addiu	a0,sp,72
 7b4:	8fbf001c 	lw	ra,28(sp)
 7b8:	8fb00018 	lw	s0,24(sp)
 7bc:	27bd0080 	addiu	sp,sp,128
 7c0:	03e00008 	jr	ra
 7c4:	00000000 	nop
	...
