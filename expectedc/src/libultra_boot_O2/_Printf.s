
build/src/libultra_boot_O2/_Printf.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <_Printf>:
   0:	27bdff28 	addiu	sp,sp,-216
   4:	afb70034 	sw	s7,52(sp)
   8:	afb60030 	sw	s6,48(sp)
   c:	afb5002c 	sw	s5,44(sp)
  10:	afbe0038 	sw	s8,56(sp)
  14:	afb40028 	sw	s4,40(sp)
  18:	afb30024 	sw	s3,36(sp)
  1c:	afa700e4 	sw	a3,228(sp)
  20:	3c150000 	lui	s5,0x0
  24:	3c160000 	lui	s6,0x0
  28:	3c170000 	lui	s7,0x0
  2c:	00c03825 	move	a3,a2
  30:	00a09825 	move	s3,a1
  34:	0080a025 	move	s4,a0
  38:	afbf003c 	sw	ra,60(sp)
  3c:	afb20020 	sw	s2,32(sp)
  40:	afb1001c 	sw	s1,28(sp)
  44:	afb00018 	sw	s0,24(sp)
  48:	afa600e0 	sw	a2,224(sp)
  4c:	afa000cc 	sw	zero,204(sp)
  50:	26f70000 	addiu	s7,s7,0
  54:	26d60004 	addiu	s6,s6,4
  58:	26b50000 	addiu	s5,s5,0
  5c:	241e000a 	li	s8,10
  60:	90e20000 	lbu	v0,0(a3)
  64:	00e09025 	move	s2,a3
  68:	24030025 	li	v1,37
  6c:	10400009 	beqz	v0,94 <_Printf+0x94>
  70:	00408025 	move	s0,v0
  74:	50620008 	beql	v1,v0,98 <_Printf+0x98>
  78:	02471023 	subu	v0,s2,a3
  7c:	92420001 	lbu	v0,1(s2)
  80:	26520001 	addiu	s2,s2,1
  84:	10400003 	beqz	v0,94 <_Printf+0x94>
  88:	00408025 	move	s0,v0
  8c:	5462fffc 	bnel	v1,v0,80 <_Printf+0x80>
  90:	92420001 	lbu	v0,1(s2)
  94:	02471023 	subu	v0,s2,a3
  98:	1840000d 	blez	v0,d0 <_Printf+0xd0>
  9c:	02602025 	move	a0,s3
  a0:	00e02825 	move	a1,a3
  a4:	00408825 	move	s1,v0
  a8:	0280f809 	jalr	s4
  ac:	00403025 	move	a2,v0
  b0:	10400005 	beqz	v0,c8 <_Printf+0xc8>
  b4:	00409825 	move	s3,v0
  b8:	8fae00cc 	lw	t6,204(sp)
  bc:	01d17821 	addu	t7,t6,s1
  c0:	10000003 	b	d0 <_Printf+0xd0>
  c4:	afaf00cc 	sw	t7,204(sp)
  c8:	10000153 	b	618 <_Printf+0x618>
  cc:	8fa200cc 	lw	v0,204(sp)
  d0:	16000003 	bnez	s0,e0 <_Printf+0xe0>
  d4:	26520001 	addiu	s2,s2,1
  d8:	1000014f 	b	618 <_Printf+0x618>
  dc:	8fa200cc 	lw	v0,204(sp)
  e0:	afa000d0 	sw	zero,208(sp)
  e4:	92450000 	lbu	a1,0(s2)
  e8:	0c000000 	jal	0 <_Printf>
  ec:	02c02025 	move	a0,s6
  f0:	1040000f 	beqz	v0,130 <_Printf+0x130>
  f4:	00408025 	move	s0,v0
  f8:	0216c823 	subu	t9,s0,s6
  fc:	00194080 	sll	t0,t9,0x2
 100:	3c090000 	lui	t1,0x0
 104:	01284821 	addu	t1,t1,t0
 108:	8d29000c 	lw	t1,12(t1)
 10c:	8fb800d0 	lw	t8,208(sp)
 110:	26520001 	addiu	s2,s2,1
 114:	02c02025 	move	a0,s6
 118:	03095025 	or	t2,t8,t1
 11c:	afaa00d0 	sw	t2,208(sp)
 120:	0c000000 	jal	0 <_Printf>
 124:	92450000 	lbu	a1,0(s2)
 128:	1440fff3 	bnez	v0,f8 <_Printf+0xf8>
 12c:	00408025 	move	s0,v0
 130:	924b0000 	lbu	t3,0(s2)
 134:	2402002a 	li	v0,42
 138:	8fac00e4 	lw	t4,228(sp)
 13c:	144b0011 	bne	v0,t3,184 <_Printf+0x184>
 140:	3c040000 	lui	a0,0x0
 144:	258d0003 	addiu	t5,t4,3
 148:	2401fffc 	li	at,-4
 14c:	01a17024 	and	t6,t5,at
 150:	25cf0004 	addiu	t7,t6,4
 154:	afaf00e4 	sw	t7,228(sp)
 158:	8dd90000 	lw	t9,0(t6)
 15c:	26520001 	addiu	s2,s2,1
 160:	07210006 	bgez	t9,17c <_Printf+0x17c>
 164:	afb900c8 	sw	t9,200(sp)
 168:	8fb800d0 	lw	t8,208(sp)
 16c:	00194023 	negu	t0,t9
 170:	afa800c8 	sw	t0,200(sp)
 174:	37090004 	ori	t1,t8,0x4
 178:	afa900d0 	sw	t1,208(sp)
 17c:	10000018 	b	1e0 <_Printf+0x1e0>
 180:	92450000 	lbu	a1,0(s2)
 184:	afa000c8 	sw	zero,200(sp)
 188:	92450000 	lbu	a1,0(s2)
 18c:	28a10030 	slti	at,a1,48
 190:	14200013 	bnez	at,1e0 <_Printf+0x1e0>
 194:	28a1003a 	slti	at,a1,58
 198:	50200012 	beqzl	at,1e4 <_Printf+0x1e4>
 19c:	2401002e 	li	at,46
 1a0:	8faa00c8 	lw	t2,200(sp)
 1a4:	294103e7 	slti	at,t2,999
 1a8:	50200007 	beqzl	at,1c8 <_Printf+0x1c8>
 1ac:	92450001 	lbu	a1,1(s2)
 1b0:	015e0019 	multu	t2,s8
 1b4:	00005812 	mflo	t3
 1b8:	00ab6021 	addu	t4,a1,t3
 1bc:	258dffd0 	addiu	t5,t4,-48
 1c0:	afad00c8 	sw	t5,200(sp)
 1c4:	92450001 	lbu	a1,1(s2)
 1c8:	26520001 	addiu	s2,s2,1
 1cc:	28a10030 	slti	at,a1,48
 1d0:	14200003 	bnez	at,1e0 <_Printf+0x1e0>
 1d4:	28a1003a 	slti	at,a1,58
 1d8:	5420fff2 	bnezl	at,1a4 <_Printf+0x1a4>
 1dc:	8faa00c8 	lw	t2,200(sp)
 1e0:	2401002e 	li	at,46
 1e4:	10a10004 	beq	a1,at,1f8 <_Printf+0x1f8>
 1e8:	240fffff 	li	t7,-1
 1ec:	afaf00c4 	sw	t7,196(sp)
 1f0:	10000026 	b	28c <_Printf+0x28c>
 1f4:	92450000 	lbu	a1,0(s2)
 1f8:	924e0001 	lbu	t6,1(s2)
 1fc:	8fb900e4 	lw	t9,228(sp)
 200:	26520001 	addiu	s2,s2,1
 204:	144e000a 	bne	v0,t6,230 <_Printf+0x230>
 208:	27280003 	addiu	t0,t9,3
 20c:	2401fffc 	li	at,-4
 210:	0101c024 	and	t8,t0,at
 214:	27090004 	addiu	t1,t8,4
 218:	afa900e4 	sw	t1,228(sp)
 21c:	8f0a0000 	lw	t2,0(t8)
 220:	26520001 	addiu	s2,s2,1
 224:	afaa00c4 	sw	t2,196(sp)
 228:	10000018 	b	28c <_Printf+0x28c>
 22c:	92450000 	lbu	a1,0(s2)
 230:	afa000c4 	sw	zero,196(sp)
 234:	92450000 	lbu	a1,0(s2)
 238:	28a10030 	slti	at,a1,48
 23c:	14200013 	bnez	at,28c <_Printf+0x28c>
 240:	28a1003a 	slti	at,a1,58
 244:	10200011 	beqz	at,28c <_Printf+0x28c>
 248:	00000000 	nop
 24c:	8fab00c4 	lw	t3,196(sp)
 250:	296103e7 	slti	at,t3,999
 254:	50200007 	beqzl	at,274 <_Printf+0x274>
 258:	92450001 	lbu	a1,1(s2)
 25c:	017e0019 	multu	t3,s8
 260:	00006012 	mflo	t4
 264:	00ac6821 	addu	t5,a1,t4
 268:	25afffd0 	addiu	t7,t5,-48
 26c:	afaf00c4 	sw	t7,196(sp)
 270:	92450001 	lbu	a1,1(s2)
 274:	26520001 	addiu	s2,s2,1
 278:	28a10030 	slti	at,a1,48
 27c:	14200003 	bnez	at,28c <_Printf+0x28c>
 280:	28a1003a 	slti	at,a1,58
 284:	5420fff2 	bnezl	at,250 <_Printf+0x250>
 288:	8fab00c4 	lw	t3,196(sp)
 28c:	0c000000 	jal	0 <_Printf>
 290:	24840000 	addiu	a0,a0,0
 294:	10400005 	beqz	v0,2ac <_Printf+0x2ac>
 298:	27a400a0 	addiu	a0,sp,160
 29c:	924e0000 	lbu	t6,0(s2)
 2a0:	26520001 	addiu	s2,s2,1
 2a4:	10000002 	b	2b0 <_Printf+0x2b0>
 2a8:	a3ae00d4 	sb	t6,212(sp)
 2ac:	a3a000d4 	sb	zero,212(sp)
 2b0:	93b900d4 	lbu	t9,212(sp)
 2b4:	2402006c 	li	v0,108
 2b8:	27a500e4 	addiu	a1,sp,228
 2bc:	14590007 	bne	v0,t9,2dc <_Printf+0x2dc>
 2c0:	27a70074 	addiu	a3,sp,116
 2c4:	92480000 	lbu	t0,0(s2)
 2c8:	2409004c 	li	t1,76
 2cc:	14480003 	bne	v0,t0,2dc <_Printf+0x2dc>
 2d0:	00000000 	nop
 2d4:	a3a900d4 	sb	t1,212(sp)
 2d8:	26520001 	addiu	s2,s2,1
 2dc:	0c000000 	jal	0 <_Printf>
 2e0:	92460000 	lbu	a2,0(s2)
 2e4:	8fb800c8 	lw	t8,200(sp)
 2e8:	8faa00ac 	lw	t2,172(sp)
 2ec:	8fac00b0 	lw	t4,176(sp)
 2f0:	8faf00b4 	lw	t7,180(sp)
 2f4:	030a5823 	subu	t3,t8,t2
 2f8:	8fb900b8 	lw	t9,184(sp)
 2fc:	016c6823 	subu	t5,t3,t4
 300:	8fa900bc 	lw	t1,188(sp)
 304:	8faa00c0 	lw	t2,192(sp)
 308:	8fac00d0 	lw	t4,208(sp)
 30c:	01af7023 	subu	t6,t5,t7
 310:	01d94023 	subu	t0,t6,t9
 314:	0109c023 	subu	t8,t0,t1
 318:	030a5823 	subu	t3,t8,t2
 31c:	318d0004 	andi	t5,t4,0x4
 320:	15a0001b 	bnez	t5,390 <_Printf+0x390>
 324:	afab00c8 	sw	t3,200(sp)
 328:	000b782a 	slt	t7,zero,t3
 32c:	51e00019 	beqzl	t7,394 <_Printf+0x394>
 330:	8fa800ac 	lw	t0,172(sp)
 334:	11e00016 	beqz	t7,390 <_Printf+0x390>
 338:	01608825 	move	s1,t3
 33c:	2e210021 	sltiu	at,s1,33
 340:	14200003 	bnez	at,350 <_Printf+0x350>
 344:	02208025 	move	s0,s1
 348:	10000001 	b	350 <_Printf+0x350>
 34c:	24100020 	li	s0,32
 350:	1a00000c 	blez	s0,384 <_Printf+0x384>
 354:	02602025 	move	a0,s3
 358:	02e02825 	move	a1,s7
 35c:	0280f809 	jalr	s4
 360:	02003025 	move	a2,s0
 364:	10400005 	beqz	v0,37c <_Printf+0x37c>
 368:	00409825 	move	s3,v0
 36c:	8fae00cc 	lw	t6,204(sp)
 370:	01d0c821 	addu	t9,t6,s0
 374:	10000003 	b	384 <_Printf+0x384>
 378:	afb900cc 	sw	t9,204(sp)
 37c:	100000a6 	b	618 <_Printf+0x618>
 380:	8fa200cc 	lw	v0,204(sp)
 384:	02308823 	subu	s1,s1,s0
 388:	5e20ffed 	bgtzl	s1,340 <_Printf+0x340>
 38c:	2e210021 	sltiu	at,s1,33
 390:	8fa800ac 	lw	t0,172(sp)
 394:	02602025 	move	a0,s3
 398:	27a50074 	addiu	a1,sp,116
 39c:	5900000d 	blezl	t0,3d4 <_Printf+0x3d4>
 3a0:	8fac00b0 	lw	t4,176(sp)
 3a4:	0280f809 	jalr	s4
 3a8:	01003025 	move	a2,t0
 3ac:	10400006 	beqz	v0,3c8 <_Printf+0x3c8>
 3b0:	00409825 	move	s3,v0
 3b4:	8fa900cc 	lw	t1,204(sp)
 3b8:	8fb800ac 	lw	t8,172(sp)
 3bc:	01385021 	addu	t2,t1,t8
 3c0:	10000003 	b	3d0 <_Printf+0x3d0>
 3c4:	afaa00cc 	sw	t2,204(sp)
 3c8:	10000093 	b	618 <_Printf+0x618>
 3cc:	8fa200cc 	lw	v0,204(sp)
 3d0:	8fac00b0 	lw	t4,176(sp)
 3d4:	000c682a 	slt	t5,zero,t4
 3d8:	51a00019 	beqzl	t5,440 <_Printf+0x440>
 3dc:	8fae00b4 	lw	t6,180(sp)
 3e0:	11a00016 	beqz	t5,43c <_Printf+0x43c>
 3e4:	01808825 	move	s1,t4
 3e8:	2e210021 	sltiu	at,s1,33
 3ec:	14200003 	bnez	at,3fc <_Printf+0x3fc>
 3f0:	02208025 	move	s0,s1
 3f4:	10000001 	b	3fc <_Printf+0x3fc>
 3f8:	24100020 	li	s0,32
 3fc:	1a00000c 	blez	s0,430 <_Printf+0x430>
 400:	02602025 	move	a0,s3
 404:	02a02825 	move	a1,s5
 408:	0280f809 	jalr	s4
 40c:	02003025 	move	a2,s0
 410:	10400005 	beqz	v0,428 <_Printf+0x428>
 414:	00409825 	move	s3,v0
 418:	8fab00cc 	lw	t3,204(sp)
 41c:	01707821 	addu	t7,t3,s0
 420:	10000003 	b	430 <_Printf+0x430>
 424:	afaf00cc 	sw	t7,204(sp)
 428:	1000007b 	b	618 <_Printf+0x618>
 42c:	8fa200cc 	lw	v0,204(sp)
 430:	02308823 	subu	s1,s1,s0
 434:	5e20ffed 	bgtzl	s1,3ec <_Printf+0x3ec>
 438:	2e210021 	sltiu	at,s1,33
 43c:	8fae00b4 	lw	t6,180(sp)
 440:	02602025 	move	a0,s3
 444:	8fa500a8 	lw	a1,168(sp)
 448:	59c0000d 	blezl	t6,480 <_Printf+0x480>
 44c:	8fb800b8 	lw	t8,184(sp)
 450:	0280f809 	jalr	s4
 454:	01c03025 	move	a2,t6
 458:	10400006 	beqz	v0,474 <_Printf+0x474>
 45c:	00409825 	move	s3,v0
 460:	8fb900cc 	lw	t9,204(sp)
 464:	8fa800b4 	lw	t0,180(sp)
 468:	03284821 	addu	t1,t9,t0
 46c:	10000003 	b	47c <_Printf+0x47c>
 470:	afa900cc 	sw	t1,204(sp)
 474:	10000068 	b	618 <_Printf+0x618>
 478:	8fa200cc 	lw	v0,204(sp)
 47c:	8fb800b8 	lw	t8,184(sp)
 480:	0018502a 	slt	t2,zero,t8
 484:	51400019 	beqzl	t2,4ec <_Printf+0x4ec>
 488:	8fab00bc 	lw	t3,188(sp)
 48c:	11400016 	beqz	t2,4e8 <_Printf+0x4e8>
 490:	03008825 	move	s1,t8
 494:	2e210021 	sltiu	at,s1,33
 498:	14200003 	bnez	at,4a8 <_Printf+0x4a8>
 49c:	02208025 	move	s0,s1
 4a0:	10000001 	b	4a8 <_Printf+0x4a8>
 4a4:	24100020 	li	s0,32
 4a8:	1a00000c 	blez	s0,4dc <_Printf+0x4dc>
 4ac:	02602025 	move	a0,s3
 4b0:	02a02825 	move	a1,s5
 4b4:	0280f809 	jalr	s4
 4b8:	02003025 	move	a2,s0
 4bc:	10400005 	beqz	v0,4d4 <_Printf+0x4d4>
 4c0:	00409825 	move	s3,v0
 4c4:	8fac00cc 	lw	t4,204(sp)
 4c8:	01906821 	addu	t5,t4,s0
 4cc:	10000003 	b	4dc <_Printf+0x4dc>
 4d0:	afad00cc 	sw	t5,204(sp)
 4d4:	10000050 	b	618 <_Printf+0x618>
 4d8:	8fa200cc 	lw	v0,204(sp)
 4dc:	02308823 	subu	s1,s1,s0
 4e0:	5e20ffed 	bgtzl	s1,498 <_Printf+0x498>
 4e4:	2e210021 	sltiu	at,s1,33
 4e8:	8fab00bc 	lw	t3,188(sp)
 4ec:	02602025 	move	a0,s3
 4f0:	8faf00a8 	lw	t7,168(sp)
 4f4:	1960000d 	blez	t3,52c <_Printf+0x52c>
 4f8:	8fae00b4 	lw	t6,180(sp)
 4fc:	01ee2821 	addu	a1,t7,t6
 500:	0280f809 	jalr	s4
 504:	01603025 	move	a2,t3
 508:	10400006 	beqz	v0,524 <_Printf+0x524>
 50c:	00409825 	move	s3,v0
 510:	8fb900cc 	lw	t9,204(sp)
 514:	8fa800bc 	lw	t0,188(sp)
 518:	03284821 	addu	t1,t9,t0
 51c:	10000003 	b	52c <_Printf+0x52c>
 520:	afa900cc 	sw	t1,204(sp)
 524:	1000003c 	b	618 <_Printf+0x618>
 528:	8fa200cc 	lw	v0,204(sp)
 52c:	8fb800c0 	lw	t8,192(sp)
 530:	0018502a 	slt	t2,zero,t8
 534:	51400019 	beqzl	t2,59c <_Printf+0x59c>
 538:	8faf00d0 	lw	t7,208(sp)
 53c:	11400016 	beqz	t2,598 <_Printf+0x598>
 540:	03008825 	move	s1,t8
 544:	2e210021 	sltiu	at,s1,33
 548:	14200003 	bnez	at,558 <_Printf+0x558>
 54c:	02208025 	move	s0,s1
 550:	10000001 	b	558 <_Printf+0x558>
 554:	24100020 	li	s0,32
 558:	1a00000c 	blez	s0,58c <_Printf+0x58c>
 55c:	02602025 	move	a0,s3
 560:	02a02825 	move	a1,s5
 564:	0280f809 	jalr	s4
 568:	02003025 	move	a2,s0
 56c:	10400005 	beqz	v0,584 <_Printf+0x584>
 570:	00409825 	move	s3,v0
 574:	8fac00cc 	lw	t4,204(sp)
 578:	01906821 	addu	t5,t4,s0
 57c:	10000003 	b	58c <_Printf+0x58c>
 580:	afad00cc 	sw	t5,204(sp)
 584:	10000024 	b	618 <_Printf+0x618>
 588:	8fa200cc 	lw	v0,204(sp)
 58c:	02308823 	subu	s1,s1,s0
 590:	5e20ffed 	bgtzl	s1,548 <_Printf+0x548>
 594:	2e210021 	sltiu	at,s1,33
 598:	8faf00d0 	lw	t7,208(sp)
 59c:	8fab00c8 	lw	t3,200(sp)
 5a0:	31ee0004 	andi	t6,t7,0x4
 5a4:	11c0001a 	beqz	t6,610 <_Printf+0x610>
 5a8:	000bc82a 	slt	t9,zero,t3
 5ac:	13200018 	beqz	t9,610 <_Printf+0x610>
 5b0:	00000000 	nop
 5b4:	13200016 	beqz	t9,610 <_Printf+0x610>
 5b8:	01608825 	move	s1,t3
 5bc:	2e210021 	sltiu	at,s1,33
 5c0:	14200003 	bnez	at,5d0 <_Printf+0x5d0>
 5c4:	02208025 	move	s0,s1
 5c8:	10000001 	b	5d0 <_Printf+0x5d0>
 5cc:	24100020 	li	s0,32
 5d0:	1a00000c 	blez	s0,604 <_Printf+0x604>
 5d4:	02602025 	move	a0,s3
 5d8:	02e02825 	move	a1,s7
 5dc:	0280f809 	jalr	s4
 5e0:	02003025 	move	a2,s0
 5e4:	10400005 	beqz	v0,5fc <_Printf+0x5fc>
 5e8:	00409825 	move	s3,v0
 5ec:	8fa800cc 	lw	t0,204(sp)
 5f0:	01104821 	addu	t1,t0,s0
 5f4:	10000003 	b	604 <_Printf+0x604>
 5f8:	afa900cc 	sw	t1,204(sp)
 5fc:	10000006 	b	618 <_Printf+0x618>
 600:	8fa200cc 	lw	v0,204(sp)
 604:	02308823 	subu	s1,s1,s0
 608:	5e20ffed 	bgtzl	s1,5c0 <_Printf+0x5c0>
 60c:	2e210021 	sltiu	at,s1,33
 610:	1000fe93 	b	60 <_Printf+0x60>
 614:	26470001 	addiu	a3,s2,1
 618:	8fbf003c 	lw	ra,60(sp)
 61c:	8fb00018 	lw	s0,24(sp)
 620:	8fb1001c 	lw	s1,28(sp)
 624:	8fb20020 	lw	s2,32(sp)
 628:	8fb30024 	lw	s3,36(sp)
 62c:	8fb40028 	lw	s4,40(sp)
 630:	8fb5002c 	lw	s5,44(sp)
 634:	8fb60030 	lw	s6,48(sp)
 638:	8fb70034 	lw	s7,52(sp)
 63c:	8fbe0038 	lw	s8,56(sp)
 640:	03e00008 	jr	ra
 644:	27bd00d8 	addiu	sp,sp,216

00000648 <_Putfld>:
 648:	27bdffe0 	addiu	sp,sp,-32
 64c:	afb10018 	sw	s1,24(sp)
 650:	afb00014 	sw	s0,20(sp)
 654:	afa60028 	sw	a2,40(sp)
 658:	afbf001c 	sw	ra,28(sp)
 65c:	30ce00ff 	andi	t6,a2,0xff
 660:	29c10026 	slti	at,t6,38
 664:	01c03025 	move	a2,t6
 668:	00a08025 	move	s0,a1
 66c:	00808825 	move	s1,a0
 670:	ac80000c 	sw	zero,12(a0)
 674:	ac800010 	sw	zero,16(a0)
 678:	ac800014 	sw	zero,20(a0)
 67c:	ac800018 	sw	zero,24(a0)
 680:	ac80001c 	sw	zero,28(a0)
 684:	ac800020 	sw	zero,32(a0)
 688:	1420000a 	bnez	at,6b4 <_Putfld+0x6c>
 68c:	01c01825 	move	v1,t6
 690:	25cfffbb 	addiu	t7,t6,-69
 694:	2de10034 	sltiu	at,t7,52
 698:	10200184 	beqz	at,cac <_Putfld+0x664>
 69c:	000f7880 	sll	t7,t7,0x2
 6a0:	3c010000 	lui	at,0x0
 6a4:	002f0821 	addu	at,at,t7
 6a8:	8c2f0024 	lw	t7,36(at)
 6ac:	01e00008 	jr	t7
 6b0:	00000000 	nop
 6b4:	24010025 	li	at,37
 6b8:	50610175 	beql	v1,at,c90 <_Putfld+0x648>
 6bc:	8e2e000c 	lw	t6,12(s1)
 6c0:	1000017b 	b	cb0 <_Putfld+0x668>
 6c4:	8e2a000c 	lw	t2,12(s1)
 6c8:	8e180000 	lw	t8,0(s0)
 6cc:	2401fffc 	li	at,-4
 6d0:	27190003 	addiu	t9,t8,3
 6d4:	03214024 	and	t0,t9,at
 6d8:	25090004 	addiu	t1,t0,4
 6dc:	ae090000 	sw	t1,0(s0)
 6e0:	8e2c000c 	lw	t4,12(s1)
 6e4:	8d2bfffc 	lw	t3,-4(t1)
 6e8:	00ec6821 	addu	t5,a3,t4
 6ec:	a1ab0000 	sb	t3,0(t5)
 6f0:	8e2e000c 	lw	t6,12(s1)
 6f4:	25cf0001 	addiu	t7,t6,1
 6f8:	10000172 	b	cc4 <_Putfld+0x67c>
 6fc:	ae2f000c 	sw	t7,12(s1)
 700:	92220034 	lbu	v0,52(s1)
 704:	2401006c 	li	at,108
 708:	5441000d 	bnel	v0,at,740 <_Putfld+0xf8>
 70c:	2401004c 	li	at,76
 710:	8e180000 	lw	t8,0(s0)
 714:	2401fffc 	li	at,-4
 718:	27190003 	addiu	t9,t8,3
 71c:	03214024 	and	t0,t9,at
 720:	25090004 	addiu	t1,t0,4
 724:	ae090000 	sw	t1,0(s0)
 728:	8d2cfffc 	lw	t4,-4(t1)
 72c:	000c77c3 	sra	t6,t4,0x1f
 730:	ae2e0000 	sw	t6,0(s1)
 734:	10000019 	b	79c <_Putfld+0x154>
 738:	ae2c0004 	sw	t4,4(s1)
 73c:	2401004c 	li	at,76
 740:	5441000d 	bnel	v0,at,778 <_Putfld+0x130>
 744:	8e090000 	lw	t1,0(s0)
 748:	8e0b0000 	lw	t3,0(s0)
 74c:	2401fff8 	li	at,-8
 750:	256d0007 	addiu	t5,t3,7
 754:	01a1c024 	and	t8,t5,at
 758:	27190008 	addiu	t9,t8,8
 75c:	ae190000 	sw	t9,0(s0)
 760:	8f2bfffc 	lw	t3,-4(t9)
 764:	8f2afff8 	lw	t2,-8(t9)
 768:	ae2b0004 	sw	t3,4(s1)
 76c:	1000000b 	b	79c <_Putfld+0x154>
 770:	ae2a0000 	sw	t2,0(s1)
 774:	8e090000 	lw	t1,0(s0)
 778:	2401fffc 	li	at,-4
 77c:	252c0003 	addiu	t4,t1,3
 780:	01817024 	and	t6,t4,at
 784:	25cf0004 	addiu	t7,t6,4
 788:	ae0f0000 	sw	t7,0(s0)
 78c:	8df8fffc 	lw	t8,-4(t7)
 790:	001847c3 	sra	t0,t8,0x1f
 794:	ae280000 	sw	t0,0(s1)
 798:	ae380004 	sw	t8,4(s1)
 79c:	92390034 	lbu	t9,52(s1)
 7a0:	24010068 	li	at,104
 7a4:	57210008 	bnel	t9,at,7c8 <_Putfld+0x180>
 7a8:	8e280000 	lw	t0,0(s1)
 7ac:	8e2b0004 	lw	t3,4(s1)
 7b0:	000b7400 	sll	t6,t3,0x10
 7b4:	000e7c03 	sra	t7,t6,0x10
 7b8:	000fc7c3 	sra	t8,t7,0x1f
 7bc:	ae380000 	sw	t8,0(s1)
 7c0:	ae2f0004 	sw	t7,4(s1)
 7c4:	8e280000 	lw	t0,0(s1)
 7c8:	5d00000e 	bgtzl	t0,804 <_Putfld+0x1bc>
 7cc:	8e220030 	lw	v0,48(s1)
 7d0:	05020004 	bltzl	t0,7e4 <_Putfld+0x19c>
 7d4:	8e2a000c 	lw	t2,12(s1)
 7d8:	1000000a 	b	804 <_Putfld+0x1bc>
 7dc:	8e220030 	lw	v0,48(s1)
 7e0:	8e2a000c 	lw	t2,12(s1)
 7e4:	240d002d 	li	t5,45
 7e8:	00ea5821 	addu	t3,a3,t2
 7ec:	a16d0000 	sb	t5,0(t3)
 7f0:	8e2c000c 	lw	t4,12(s1)
 7f4:	258e0001 	addiu	t6,t4,1
 7f8:	10000016 	b	854 <_Putfld+0x20c>
 7fc:	ae2e000c 	sw	t6,12(s1)
 800:	8e220030 	lw	v0,48(s1)
 804:	304f0002 	andi	t7,v0,0x2
 808:	11e00009 	beqz	t7,830 <_Putfld+0x1e8>
 80c:	304d0001 	andi	t5,v0,0x1
 810:	8e39000c 	lw	t9,12(s1)
 814:	2418002b 	li	t8,43
 818:	00f94021 	addu	t0,a3,t9
 81c:	a1180000 	sb	t8,0(t0)
 820:	8e29000c 	lw	t1,12(s1)
 824:	252a0001 	addiu	t2,t1,1
 828:	1000000a 	b	854 <_Putfld+0x20c>
 82c:	ae2a000c 	sw	t2,12(s1)
 830:	51a00009 	beqzl	t5,858 <_Putfld+0x210>
 834:	8e38000c 	lw	t8,12(s1)
 838:	8e2c000c 	lw	t4,12(s1)
 83c:	240b0020 	li	t3,32
 840:	00ec7021 	addu	t6,a3,t4
 844:	a1cb0000 	sb	t3,0(t6)
 848:	8e2f000c 	lw	t7,12(s1)
 84c:	25f90001 	addiu	t9,t7,1
 850:	ae39000c 	sw	t9,12(s1)
 854:	8e38000c 	lw	t8,12(s1)
 858:	02202025 	move	a0,s1
 85c:	30c500ff 	andi	a1,a2,0xff
 860:	03074021 	addu	t0,t8,a3
 864:	0c000000 	jal	0 <_Printf>
 868:	ae280008 	sw	t0,8(s1)
 86c:	10000116 	b	cc8 <_Putfld+0x680>
 870:	8fbf001c 	lw	ra,28(sp)
 874:	92220034 	lbu	v0,52(s1)
 878:	2401006c 	li	at,108
 87c:	5441000d 	bnel	v0,at,8b4 <_Putfld+0x26c>
 880:	2401004c 	li	at,76
 884:	8e090000 	lw	t1,0(s0)
 888:	2401fffc 	li	at,-4
 88c:	252a0003 	addiu	t2,t1,3
 890:	01416824 	and	t5,t2,at
 894:	25ac0004 	addiu	t4,t5,4
 898:	ae0c0000 	sw	t4,0(s0)
 89c:	8d8efffc 	lw	t6,-4(t4)
 8a0:	000ec7c3 	sra	t8,t6,0x1f
 8a4:	ae380000 	sw	t8,0(s1)
 8a8:	10000019 	b	910 <_Putfld+0x2c8>
 8ac:	ae2e0004 	sw	t6,4(s1)
 8b0:	2401004c 	li	at,76
 8b4:	5441000d 	bnel	v0,at,8ec <_Putfld+0x2a4>
 8b8:	8e0b0000 	lw	t3,0(s0)
 8bc:	8e0f0000 	lw	t7,0(s0)
 8c0:	2401fff8 	li	at,-8
 8c4:	25e80007 	addiu	t0,t7,7
 8c8:	01014824 	and	t1,t0,at
 8cc:	252a0008 	addiu	t2,t1,8
 8d0:	ae0a0000 	sw	t2,0(s0)
 8d4:	8d4dfffc 	lw	t5,-4(t2)
 8d8:	8d4cfff8 	lw	t4,-8(t2)
 8dc:	ae2d0004 	sw	t5,4(s1)
 8e0:	1000000b 	b	910 <_Putfld+0x2c8>
 8e4:	ae2c0000 	sw	t4,0(s1)
 8e8:	8e0b0000 	lw	t3,0(s0)
 8ec:	2401fffc 	li	at,-4
 8f0:	256e0003 	addiu	t6,t3,3
 8f4:	01c1c024 	and	t8,t6,at
 8f8:	27190004 	addiu	t9,t8,4
 8fc:	ae190000 	sw	t9,0(s0)
 900:	8f28fffc 	lw	t0,-4(t9)
 904:	000857c3 	sra	t2,t0,0x1f
 908:	ae2a0000 	sw	t2,0(s1)
 90c:	ae280004 	sw	t0,4(s1)
 910:	92220034 	lbu	v0,52(s1)
 914:	24010068 	li	at,104
 918:	14410007 	bne	v0,at,938 <_Putfld+0x2f0>
 91c:	00000000 	nop
 920:	8e2d0004 	lw	t5,4(s1)
 924:	24180000 	li	t8,0
 928:	ae380000 	sw	t8,0(s1)
 92c:	31aeffff 	andi	t6,t5,0xffff
 930:	10000007 	b	950 <_Putfld+0x308>
 934:	ae2e0004 	sw	t6,4(s1)
 938:	54400006 	bnezl	v0,954 <_Putfld+0x30c>
 93c:	8e2c0030 	lw	t4,48(s1)
 940:	8e290004 	lw	t1,4(s1)
 944:	240a0000 	li	t2,0
 948:	ae2a0000 	sw	t2,0(s1)
 94c:	ae290004 	sw	t1,4(s1)
 950:	8e2c0030 	lw	t4,48(s1)
 954:	318d0008 	andi	t5,t4,0x8
 958:	51a00014 	beqzl	t5,9ac <_Putfld+0x364>
 95c:	8e2d000c 	lw	t5,12(s1)
 960:	8e38000c 	lw	t8,12(s1)
 964:	240e0030 	li	t6,48
 968:	24010078 	li	at,120
 96c:	00f8c821 	addu	t9,a3,t8
 970:	a32e0000 	sb	t6,0(t9)
 974:	8e28000c 	lw	t0,12(s1)
 978:	25090001 	addiu	t1,t0,1
 97c:	10610004 	beq	v1,at,990 <_Putfld+0x348>
 980:	ae29000c 	sw	t1,12(s1)
 984:	24010058 	li	at,88
 988:	54610008 	bnel	v1,at,9ac <_Putfld+0x364>
 98c:	8e2d000c 	lw	t5,12(s1)
 990:	8e2f000c 	lw	t7,12(s1)
 994:	00ef5021 	addu	t2,a3,t7
 998:	a1460000 	sb	a2,0(t2)
 99c:	8e2b000c 	lw	t3,12(s1)
 9a0:	256c0001 	addiu	t4,t3,1
 9a4:	ae2c000c 	sw	t4,12(s1)
 9a8:	8e2d000c 	lw	t5,12(s1)
 9ac:	02202025 	move	a0,s1
 9b0:	30c500ff 	andi	a1,a2,0xff
 9b4:	01a7c021 	addu	t8,t5,a3
 9b8:	0c000000 	jal	0 <_Printf>
 9bc:	ae380008 	sw	t8,8(s1)
 9c0:	100000c1 	b	cc8 <_Putfld+0x680>
 9c4:	8fbf001c 	lw	ra,28(sp)
 9c8:	922e0034 	lbu	t6,52(s1)
 9cc:	2401004c 	li	at,76
 9d0:	55c10019 	bnel	t6,at,a38 <_Putfld+0x3f0>
 9d4:	8e020000 	lw	v0,0(s0)
 9d8:	8e020000 	lw	v0,0(s0)
 9dc:	30590001 	andi	t9,v0,0x1
 9e0:	13200005 	beqz	t9,9f8 <_Putfld+0x3b0>
 9e4:	00401825 	move	v1,v0
 9e8:	24680007 	addiu	t0,v1,7
 9ec:	ae080000 	sw	t0,0(s0)
 9f0:	1000000d 	b	a28 <_Putfld+0x3e0>
 9f4:	2502ffea 	addiu	v0,t0,-22
 9f8:	30690002 	andi	t1,v1,0x2
 9fc:	11200005 	beqz	t1,a14 <_Putfld+0x3cc>
 a00:	244a0007 	addiu	t2,v0,7
 a04:	246f000a 	addiu	t7,v1,10
 a08:	ae0f0000 	sw	t7,0(s0)
 a0c:	10000005 	b	a24 <_Putfld+0x3dc>
 a10:	25e4ffd8 	addiu	a0,t7,-40
 a14:	2401fff8 	li	at,-8
 a18:	01415824 	and	t3,t2,at
 a1c:	25640008 	addiu	a0,t3,8
 a20:	ae040000 	sw	a0,0(s0)
 a24:	00801025 	move	v0,a0
 a28:	d444fff8 	ldc1	$f4,-8(v0)
 a2c:	10000017 	b	a8c <_Putfld+0x444>
 a30:	f6240000 	sdc1	$f4,0(s1)
 a34:	8e020000 	lw	v0,0(s0)
 a38:	304d0001 	andi	t5,v0,0x1
 a3c:	11a00005 	beqz	t5,a54 <_Putfld+0x40c>
 a40:	00401825 	move	v1,v0
 a44:	24780007 	addiu	t8,v1,7
 a48:	ae180000 	sw	t8,0(s0)
 a4c:	1000000d 	b	a84 <_Putfld+0x43c>
 a50:	2702ffea 	addiu	v0,t8,-22
 a54:	306e0002 	andi	t6,v1,0x2
 a58:	11c00005 	beqz	t6,a70 <_Putfld+0x428>
 a5c:	24480007 	addiu	t0,v0,7
 a60:	2479000a 	addiu	t9,v1,10
 a64:	ae190000 	sw	t9,0(s0)
 a68:	10000005 	b	a80 <_Putfld+0x438>
 a6c:	2724ffd8 	addiu	a0,t9,-40
 a70:	2401fff8 	li	at,-8
 a74:	01014824 	and	t1,t0,at
 a78:	25240008 	addiu	a0,t1,8
 a7c:	ae040000 	sw	a0,0(s0)
 a80:	00801025 	move	v0,a0
 a84:	d446fff8 	ldc1	$f6,-8(v0)
 a88:	f6260000 	sdc1	$f6,0(s1)
 a8c:	962a0000 	lhu	t2,0(s1)
 a90:	314b8000 	andi	t3,t2,0x8000
 a94:	5160000a 	beqzl	t3,ac0 <_Putfld+0x478>
 a98:	8e220030 	lw	v0,48(s1)
 a9c:	8e2d000c 	lw	t5,12(s1)
 aa0:	240c002d 	li	t4,45
 aa4:	00edc021 	addu	t8,a3,t5
 aa8:	a30c0000 	sb	t4,0(t8)
 aac:	8e2e000c 	lw	t6,12(s1)
 ab0:	25d90001 	addiu	t9,t6,1
 ab4:	10000016 	b	b10 <_Putfld+0x4c8>
 ab8:	ae39000c 	sw	t9,12(s1)
 abc:	8e220030 	lw	v0,48(s1)
 ac0:	30480002 	andi	t0,v0,0x2
 ac4:	11000009 	beqz	t0,aec <_Putfld+0x4a4>
 ac8:	304c0001 	andi	t4,v0,0x1
 acc:	8e2f000c 	lw	t7,12(s1)
 ad0:	2409002b 	li	t1,43
 ad4:	00ef5021 	addu	t2,a3,t7
 ad8:	a1490000 	sb	t1,0(t2)
 adc:	8e2b000c 	lw	t3,12(s1)
 ae0:	256d0001 	addiu	t5,t3,1
 ae4:	1000000a 	b	b10 <_Putfld+0x4c8>
 ae8:	ae2d000c 	sw	t5,12(s1)
 aec:	51800009 	beqzl	t4,b14 <_Putfld+0x4cc>
 af0:	8e29000c 	lw	t1,12(s1)
 af4:	8e2e000c 	lw	t6,12(s1)
 af8:	24180020 	li	t8,32
 afc:	00eec821 	addu	t9,a3,t6
 b00:	a3380000 	sb	t8,0(t9)
 b04:	8e28000c 	lw	t0,12(s1)
 b08:	250f0001 	addiu	t7,t0,1
 b0c:	ae2f000c 	sw	t7,12(s1)
 b10:	8e29000c 	lw	t1,12(s1)
 b14:	02202025 	move	a0,s1
 b18:	30c500ff 	andi	a1,a2,0xff
 b1c:	01275021 	addu	t2,t1,a3
 b20:	0c000000 	jal	0 <_Printf>
 b24:	ae2a0008 	sw	t2,8(s1)
 b28:	10000067 	b	cc8 <_Putfld+0x680>
 b2c:	8fbf001c 	lw	ra,28(sp)
 b30:	92220034 	lbu	v0,52(s1)
 b34:	24010068 	li	at,104
 b38:	5441000c 	bnel	v0,at,b6c <_Putfld+0x524>
 b3c:	2401006c 	li	at,108
 b40:	8e0b0000 	lw	t3,0(s0)
 b44:	2401fffc 	li	at,-4
 b48:	256d0003 	addiu	t5,t3,3
 b4c:	01a16024 	and	t4,t5,at
 b50:	258e0004 	addiu	t6,t4,4
 b54:	ae0e0000 	sw	t6,0(s0)
 b58:	8dd9fffc 	lw	t9,-4(t6)
 b5c:	8e38002c 	lw	t8,44(s1)
 b60:	10000058 	b	cc4 <_Putfld+0x67c>
 b64:	a7380000 	sh	t8,0(t9)
 b68:	2401006c 	li	at,108
 b6c:	5441000c 	bnel	v0,at,ba0 <_Putfld+0x558>
 b70:	2401004c 	li	at,76
 b74:	8e080000 	lw	t0,0(s0)
 b78:	2401fffc 	li	at,-4
 b7c:	250f0003 	addiu	t7,t0,3
 b80:	01e14824 	and	t1,t7,at
 b84:	252a0004 	addiu	t2,t1,4
 b88:	ae0a0000 	sw	t2,0(s0)
 b8c:	8d4dfffc 	lw	t5,-4(t2)
 b90:	8e2b002c 	lw	t3,44(s1)
 b94:	1000004b 	b	cc4 <_Putfld+0x67c>
 b98:	adab0000 	sw	t3,0(t5)
 b9c:	2401004c 	li	at,76
 ba0:	5441000e 	bnel	v0,at,bdc <_Putfld+0x594>
 ba4:	8e090000 	lw	t1,0(s0)
 ba8:	8e0c0000 	lw	t4,0(s0)
 bac:	2401fffc 	li	at,-4
 bb0:	240a0000 	li	t2,0
 bb4:	258e0003 	addiu	t6,t4,3
 bb8:	01c1c024 	and	t8,t6,at
 bbc:	27190004 	addiu	t9,t8,4
 bc0:	ae190000 	sw	t9,0(s0)
 bc4:	8f2ffffc 	lw	t7,-4(t9)
 bc8:	8e28002c 	lw	t0,44(s1)
 bcc:	adea0000 	sw	t2,0(t7)
 bd0:	1000003c 	b	cc4 <_Putfld+0x67c>
 bd4:	ade80004 	sw	t0,4(t7)
 bd8:	8e090000 	lw	t1,0(s0)
 bdc:	2401fffc 	li	at,-4
 be0:	252d0003 	addiu	t5,t1,3
 be4:	01a16024 	and	t4,t5,at
 be8:	258e0004 	addiu	t6,t4,4
 bec:	ae0e0000 	sw	t6,0(s0)
 bf0:	8dd9fffc 	lw	t9,-4(t6)
 bf4:	8e38002c 	lw	t8,44(s1)
 bf8:	10000032 	b	cc4 <_Putfld+0x67c>
 bfc:	af380000 	sw	t8,0(t9)
 c00:	8e080000 	lw	t0,0(s0)
 c04:	2401fffc 	li	at,-4
 c08:	02202025 	move	a0,s1
 c0c:	250a0003 	addiu	t2,t0,3
 c10:	01415824 	and	t3,t2,at
 c14:	256f0004 	addiu	t7,t3,4
 c18:	ae0f0000 	sw	t7,0(s0)
 c1c:	8dedfffc 	lw	t5,-4(t7)
 c20:	8e2e000c 	lw	t6,12(s1)
 c24:	24050078 	li	a1,120
 c28:	000d67c3 	sra	t4,t5,0x1f
 c2c:	01c7c021 	addu	t8,t6,a3
 c30:	ae2c0000 	sw	t4,0(s1)
 c34:	ae380008 	sw	t8,8(s1)
 c38:	0c000000 	jal	0 <_Printf>
 c3c:	ae2d0004 	sw	t5,4(s1)
 c40:	10000021 	b	cc8 <_Putfld+0x680>
 c44:	8fbf001c 	lw	ra,28(sp)
 c48:	8e190000 	lw	t9,0(s0)
 c4c:	2401fffc 	li	at,-4
 c50:	27280003 	addiu	t0,t9,3
 c54:	01015024 	and	t2,t0,at
 c58:	254b0004 	addiu	t3,t2,4
 c5c:	ae0b0000 	sw	t3,0(s0)
 c60:	8d64fffc 	lw	a0,-4(t3)
 c64:	0c000000 	jal	0 <_Printf>
 c68:	ae240008 	sw	a0,8(s1)
 c6c:	8e230024 	lw	v1,36(s1)
 c70:	ae220014 	sw	v0,20(s1)
 c74:	04600013 	bltz	v1,cc4 <_Putfld+0x67c>
 c78:	0062082a 	slt	at,v1,v0
 c7c:	50200012 	beqzl	at,cc8 <_Putfld+0x680>
 c80:	8fbf001c 	lw	ra,28(sp)
 c84:	1000000f 	b	cc4 <_Putfld+0x67c>
 c88:	ae230014 	sw	v1,20(s1)
 c8c:	8e2e000c 	lw	t6,12(s1)
 c90:	240d0025 	li	t5,37
 c94:	00eec021 	addu	t8,a3,t6
 c98:	a30d0000 	sb	t5,0(t8)
 c9c:	8e39000c 	lw	t9,12(s1)
 ca0:	27280001 	addiu	t0,t9,1
 ca4:	10000007 	b	cc4 <_Putfld+0x67c>
 ca8:	ae28000c 	sw	t0,12(s1)
 cac:	8e2a000c 	lw	t2,12(s1)
 cb0:	00ea5821 	addu	t3,a3,t2
 cb4:	a1660000 	sb	a2,0(t3)
 cb8:	8e2f000c 	lw	t7,12(s1)
 cbc:	25e90001 	addiu	t1,t7,1
 cc0:	ae29000c 	sw	t1,12(s1)
 cc4:	8fbf001c 	lw	ra,28(sp)
 cc8:	8fb00014 	lw	s0,20(sp)
 ccc:	8fb10018 	lw	s1,24(sp)
 cd0:	03e00008 	jr	ra
 cd4:	27bd0020 	addiu	sp,sp,32
	...
