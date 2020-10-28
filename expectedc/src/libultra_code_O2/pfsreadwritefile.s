
build/src/libultra_code_O2/pfsreadwritefile.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osPfsGetNextPage>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50024 	sw	a1,36(sp)
  10:	afa60028 	sw	a2,40(sp)
  14:	90af0000 	lbu	t7,0(a1)
  18:	90e20000 	lbu	v0,0(a3)
  1c:	00e08025 	move	s0,a3
  20:	00a07025 	move	t6,a1
  24:	104f000a 	beq	v0,t7,50 <__osPfsGetNextPage+0x50>
  28:	00003025 	move	a2,zero
  2c:	a0a20000 	sb	v0,0(a1)
  30:	91c70000 	lbu	a3,0(t6)
  34:	afa40020 	sw	a0,32(sp)
  38:	0c000000 	jal	0 <__osPfsGetNextPage>
  3c:	8fa50028 	lw	a1,40(sp)
  40:	10400003 	beqz	v0,50 <__osPfsGetNextPage+0x50>
  44:	8fa40020 	lw	a0,32(sp)
  48:	1000001e 	b	c4 <__osPfsGetNextPage+0xc4>
  4c:	8fbf001c 	lw	ra,28(sp)
  50:	92190001 	lbu	t9,1(s0)
  54:	8fb80028 	lw	t8,40(sp)
  58:	00194040 	sll	t0,t9,0x1
  5c:	03084821 	addu	t1,t8,t0
  60:	95210000 	lhu	at,0(t1)
  64:	a6010000 	sh	at,0(s0)
  68:	8c8c0060 	lw	t4,96(a0)
  6c:	3023ffff 	andi	v1,at,0xffff
  70:	006c082a 	slt	at,v1,t4
  74:	5420000c 	bnezl	at,a8 <__osPfsGetNextPage+0xa8>
  78:	24010001 	li	at,1
  7c:	920d0000 	lbu	t5,0(s0)
  80:	908f0064 	lbu	t7,100(a0)
  84:	01af082a 	slt	at,t5,t7
  88:	50200007 	beqzl	at,a8 <__osPfsGetNextPage+0xa8>
  8c:	24010001 	li	at,1
  90:	92020001 	lbu	v0,1(s0)
  94:	18400003 	blez	v0,a4 <__osPfsGetNextPage+0xa4>
  98:	28410080 	slti	at,v0,128
  9c:	14200008 	bnez	at,c0 <__osPfsGetNextPage+0xc0>
  a0:	00001025 	move	v0,zero
  a4:	24010001 	li	at,1
  a8:	14610003 	bne	v1,at,b8 <__osPfsGetNextPage+0xb8>
  ac:	00000000 	nop
  b0:	10000003 	b	c0 <__osPfsGetNextPage+0xc0>
  b4:	24020005 	li	v0,5
  b8:	10000001 	b	c0 <__osPfsGetNextPage+0xc0>
  bc:	24020003 	li	v0,3
  c0:	8fbf001c 	lw	ra,28(sp)
  c4:	8fb00018 	lw	s0,24(sp)
  c8:	27bd0020 	addiu	sp,sp,32
  cc:	03e00008 	jr	ra
  d0:	00000000 	nop

000000d4 <osPfsReadWriteFile>:
  d4:	27bdfe90 	addiu	sp,sp,-368
  d8:	afbf002c 	sw	ra,44(sp)
  dc:	afb30028 	sw	s3,40(sp)
  e0:	afb20024 	sw	s2,36(sp)
  e4:	afb10020 	sw	s1,32(sp)
  e8:	afb0001c 	sw	s0,28(sp)
  ec:	afa60178 	sw	a2,376(sp)
  f0:	8c8e0050 	lw	t6,80(a0)
  f4:	30d000ff 	andi	s0,a2,0xff
  f8:	00e08825 	move	s1,a3
  fc:	00ae082a 	slt	at,a1,t6
 100:	10200003 	beqz	at,110 <osPfsReadWriteFile+0x3c>
 104:	00809025 	move	s2,a0
 108:	04a10003 	bgez	a1,118 <osPfsReadWriteFile+0x44>
 10c:	8fa20180 	lw	v0,384(sp)
 110:	100000c7 	b	430 <osPfsReadWriteFile+0x35c>
 114:	24020005 	li	v0,5
 118:	18400003 	blez	v0,128 <osPfsReadWriteFile+0x54>
 11c:	304f001f 	andi	t7,v0,0x1f
 120:	11e00003 	beqz	t7,130 <osPfsReadWriteFile+0x5c>
 124:	00000000 	nop
 128:	100000c1 	b	430 <osPfsReadWriteFile+0x35c>
 12c:	24020005 	li	v0,5
 130:	06200003 	bltz	s1,140 <osPfsReadWriteFile+0x6c>
 134:	3238001f 	andi	t8,s1,0x1f
 138:	53000004 	beqzl	t8,14c <osPfsReadWriteFile+0x78>
 13c:	8e590000 	lw	t9,0(s2)
 140:	100000bb 	b	430 <osPfsReadWriteFile+0x35c>
 144:	24020005 	li	v0,5
 148:	8e590000 	lw	t9,0(s2)
 14c:	02402025 	move	a0,s2
 150:	33280001 	andi	t0,t9,0x1
 154:	15000003 	bnez	t0,164 <osPfsReadWriteFile+0x90>
 158:	00000000 	nop
 15c:	100000b4 	b	430 <osPfsReadWriteFile+0x35c>
 160:	24020005 	li	v0,5
 164:	0c000000 	jal	0 <__osPfsGetNextPage>
 168:	afa50174 	sw	a1,372(sp)
 16c:	24010002 	li	at,2
 170:	54410004 	bnel	v0,at,184 <osPfsReadWriteFile+0xb0>
 174:	92490065 	lbu	t1,101(s2)
 178:	100000ad 	b	430 <osPfsReadWriteFile+0x35c>
 17c:	24020002 	li	v0,2
 180:	92490065 	lbu	t1,101(s2)
 184:	02402025 	move	a0,s2
 188:	51200008 	beqzl	t1,1ac <osPfsReadWriteFile+0xd8>
 18c:	8e4a005c 	lw	t2,92(s2)
 190:	0c000000 	jal	0 <__osPfsGetNextPage>
 194:	00002825 	move	a1,zero
 198:	50400004 	beqzl	v0,1ac <osPfsReadWriteFile+0xd8>
 19c:	8e4a005c 	lw	t2,92(s2)
 1a0:	100000a4 	b	434 <osPfsReadWriteFile+0x360>
 1a4:	8fbf002c 	lw	ra,44(sp)
 1a8:	8e4a005c 	lw	t2,92(s2)
 1ac:	8fab0174 	lw	t3,372(sp)
 1b0:	8e440004 	lw	a0,4(s2)
 1b4:	8e450008 	lw	a1,8(s2)
 1b8:	014b3021 	addu	a2,t2,t3
 1bc:	30ccffff 	andi	t4,a2,0xffff
 1c0:	01803025 	move	a2,t4
 1c4:	0c000000 	jal	0 <__osPfsGetNextPage>
 1c8:	27a7014c 	addiu	a3,sp,332
 1cc:	10400003 	beqz	v0,1dc <osPfsReadWriteFile+0x108>
 1d0:	97ad0150 	lhu	t5,336(sp)
 1d4:	10000097 	b	434 <osPfsReadWriteFile+0x360>
 1d8:	8fbf002c 	lw	ra,44(sp)
 1dc:	11a00003 	beqz	t5,1ec <osPfsReadWriteFile+0x118>
 1e0:	8fae014c 	lw	t6,332(sp)
 1e4:	15c00003 	bnez	t6,1f4 <osPfsReadWriteFile+0x120>
 1e8:	97af0152 	lhu	t7,338(sp)
 1ec:	10000090 	b	430 <osPfsReadWriteFile+0x35c>
 1f0:	24020005 	li	v0,5
 1f4:	8e580060 	lw	t8,96(s2)
 1f8:	93b90152 	lbu	t9,338(sp)
 1fc:	97aa0152 	lhu	t2,338(sp)
 200:	01f8082a 	slt	at,t7,t8
 204:	5420000a 	bnezl	at,230 <osPfsReadWriteFile+0x15c>
 208:	24010001 	li	at,1
 20c:	92480064 	lbu	t0,100(s2)
 210:	93a90153 	lbu	t1,339(sp)
 214:	0328082a 	slt	at,t9,t0
 218:	50200005 	beqzl	at,230 <osPfsReadWriteFile+0x15c>
 21c:	24010001 	li	at,1
 220:	19200002 	blez	t1,22c <osPfsReadWriteFile+0x158>
 224:	29210080 	slti	at,t1,128
 228:	14200007 	bnez	at,248 <osPfsReadWriteFile+0x174>
 22c:	24010001 	li	at,1
 230:	15410003 	bne	t2,at,240 <osPfsReadWriteFile+0x16c>
 234:	00000000 	nop
 238:	1000007d 	b	430 <osPfsReadWriteFile+0x35c>
 23c:	24020005 	li	v0,5
 240:	1000007b 	b	430 <osPfsReadWriteFile+0x35c>
 244:	24020003 	li	v0,3
 248:	16000007 	bnez	s0,268 <osPfsReadWriteFile+0x194>
 24c:	afb00034 	sw	s0,52(sp)
 250:	93ac0154 	lbu	t4,340(sp)
 254:	318d0002 	andi	t5,t4,0x2
 258:	55a00004 	bnezl	t5,26c <osPfsReadWriteFile+0x198>
 25c:	97af0152 	lhu	t7,338(sp)
 260:	10000073 	b	430 <osPfsReadWriteFile+0x35c>
 264:	24020006 	li	v0,6
 268:	97af0152 	lhu	t7,338(sp)
 26c:	240e00ff 	li	t6,255
 270:	a3ae003b 	sb	t6,59(sp)
 274:	06210003 	bgez	s1,284 <osPfsReadWriteFile+0x1b0>
 278:	00111143 	sra	v0,s1,0x5
 27c:	2621001f 	addiu	at,s1,31
 280:	00011143 	sra	v0,at,0x5
 284:	28410008 	slti	at,v0,8
 288:	00408025 	move	s0,v0
 28c:	1420000d 	bnez	at,2c4 <osPfsReadWriteFile+0x1f0>
 290:	a7af0048 	sh	t7,72(sp)
 294:	02402025 	move	a0,s2
 298:	27a5003b 	addiu	a1,sp,59
 29c:	27a6004c 	addiu	a2,sp,76
 2a0:	0c000000 	jal	0 <__osPfsGetNextPage>
 2a4:	27a70048 	addiu	a3,sp,72
 2a8:	10400003 	beqz	v0,2b8 <osPfsReadWriteFile+0x1e4>
 2ac:	2610fff8 	addiu	s0,s0,-8
 2b0:	10000060 	b	434 <osPfsReadWriteFile+0x360>
 2b4:	8fbf002c 	lw	ra,44(sp)
 2b8:	2a010008 	slti	at,s0,8
 2bc:	5020fff6 	beqzl	at,298 <osPfsReadWriteFile+0x1c4>
 2c0:	02402025 	move	a0,s2
 2c4:	8fa20180 	lw	v0,384(sp)
 2c8:	8fb10184 	lw	s1,388(sp)
 2cc:	04410003 	bgez	v0,2dc <osPfsReadWriteFile+0x208>
 2d0:	0002c143 	sra	t8,v0,0x5
 2d4:	2441001f 	addiu	at,v0,31
 2d8:	0001c143 	sra	t8,at,0x5
 2dc:	1b000031 	blez	t8,3a4 <osPfsReadWriteFile+0x2d0>
 2e0:	03009825 	move	s3,t8
 2e4:	24010008 	li	at,8
 2e8:	16010009 	bne	s0,at,310 <osPfsReadWriteFile+0x23c>
 2ec:	02402025 	move	a0,s2
 2f0:	27a5003b 	addiu	a1,sp,59
 2f4:	27a6004c 	addiu	a2,sp,76
 2f8:	0c000000 	jal	0 <__osPfsGetNextPage>
 2fc:	27a70048 	addiu	a3,sp,72
 300:	10400003 	beqz	v0,310 <osPfsReadWriteFile+0x23c>
 304:	00008025 	move	s0,zero
 308:	1000004a 	b	434 <osPfsReadWriteFile+0x360>
 30c:	8fbf002c 	lw	ra,44(sp)
 310:	93b90048 	lbu	t9,72(sp)
 314:	92480065 	lbu	t0,101(s2)
 318:	02402025 	move	a0,s2
 31c:	53280008 	beql	t9,t0,340 <osPfsReadWriteFile+0x26c>
 320:	93a90049 	lbu	t1,73(sp)
 324:	0c000000 	jal	0 <__osPfsGetNextPage>
 328:	03202825 	move	a1,t9
 32c:	50400004 	beqzl	v0,340 <osPfsReadWriteFile+0x26c>
 330:	93a90049 	lbu	t1,73(sp)
 334:	1000003f 	b	434 <osPfsReadWriteFile+0x360>
 338:	8fbf002c 	lw	ra,44(sp)
 33c:	93a90049 	lbu	t1,73(sp)
 340:	8fac0034 	lw	t4,52(sp)
 344:	02203825 	move	a3,s1
 348:	000950c0 	sll	t2,t1,0x3
 34c:	01503021 	addu	a2,t2,s0
 350:	30cbffff 	andi	t3,a2,0xffff
 354:	15800007 	bnez	t4,374 <osPfsReadWriteFile+0x2a0>
 358:	01603025 	move	a2,t3
 35c:	8e440004 	lw	a0,4(s2)
 360:	8e450008 	lw	a1,8(s2)
 364:	0c000000 	jal	0 <__osPfsGetNextPage>
 368:	02203825 	move	a3,s1
 36c:	10000006 	b	388 <osPfsReadWriteFile+0x2b4>
 370:	00401825 	move	v1,v0
 374:	8e440004 	lw	a0,4(s2)
 378:	8e450008 	lw	a1,8(s2)
 37c:	0c000000 	jal	0 <__osPfsGetNextPage>
 380:	afa00010 	sw	zero,16(sp)
 384:	00401825 	move	v1,v0
 388:	10400003 	beqz	v0,398 <osPfsReadWriteFile+0x2c4>
 38c:	26310020 	addiu	s1,s1,32
 390:	10000027 	b	430 <osPfsReadWriteFile+0x35c>
 394:	00601025 	move	v0,v1
 398:	2673ffff 	addiu	s3,s3,-1
 39c:	1660ffd1 	bnez	s3,2e4 <osPfsReadWriteFile+0x210>
 3a0:	26100001 	addiu	s0,s0,1
 3a4:	8fad0034 	lw	t5,52(sp)
 3a8:	93a20154 	lbu	v0,340(sp)
 3ac:	24010001 	li	at,1
 3b0:	15a1001c 	bne	t5,at,424 <osPfsReadWriteFile+0x350>
 3b4:	304e0002 	andi	t6,v0,0x2
 3b8:	15c0001a 	bnez	t6,424 <osPfsReadWriteFile+0x350>
 3bc:	344f0002 	ori	t7,v0,0x2
 3c0:	a3af0154 	sb	t7,340(sp)
 3c4:	92580065 	lbu	t8,101(s2)
 3c8:	02402025 	move	a0,s2
 3cc:	53000008 	beqzl	t8,3f0 <osPfsReadWriteFile+0x31c>
 3d0:	8e48005c 	lw	t0,92(s2)
 3d4:	0c000000 	jal	0 <__osPfsGetNextPage>
 3d8:	00002825 	move	a1,zero
 3dc:	50400004 	beqzl	v0,3f0 <osPfsReadWriteFile+0x31c>
 3e0:	8e48005c 	lw	t0,92(s2)
 3e4:	10000013 	b	434 <osPfsReadWriteFile+0x360>
 3e8:	8fbf002c 	lw	ra,44(sp)
 3ec:	8e48005c 	lw	t0,92(s2)
 3f0:	8fb90174 	lw	t9,372(sp)
 3f4:	8e440004 	lw	a0,4(s2)
 3f8:	8e450008 	lw	a1,8(s2)
 3fc:	01193021 	addu	a2,t0,t9
 400:	30c9ffff 	andi	t1,a2,0xffff
 404:	01203025 	move	a2,t1
 408:	afa00010 	sw	zero,16(sp)
 40c:	0c000000 	jal	0 <__osPfsGetNextPage>
 410:	27a7014c 	addiu	a3,sp,332
 414:	50400004 	beqzl	v0,428 <osPfsReadWriteFile+0x354>
 418:	8e440004 	lw	a0,4(s2)
 41c:	10000005 	b	434 <osPfsReadWriteFile+0x360>
 420:	8fbf002c 	lw	ra,44(sp)
 424:	8e440004 	lw	a0,4(s2)
 428:	0c000000 	jal	0 <__osPfsGetNextPage>
 42c:	8e450008 	lw	a1,8(s2)
 430:	8fbf002c 	lw	ra,44(sp)
 434:	8fb0001c 	lw	s0,28(sp)
 438:	8fb10020 	lw	s1,32(sp)
 43c:	8fb20024 	lw	s2,36(sp)
 440:	8fb30028 	lw	s3,40(sp)
 444:	03e00008 	jr	ra
 448:	27bd0170 	addiu	sp,sp,368
 44c:	00000000 	nop
