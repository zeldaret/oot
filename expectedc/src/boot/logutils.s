
build/src/boot/logutils.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <LogUtils_CheckFloatRange>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	c7ae0054 	lwc1	$f14,84(sp)
   8:	44876000 	mtc1	a3,$f12
   c:	afa40040 	sw	a0,64(sp)
  10:	afbf003c 	sw	ra,60(sp)
  14:	460e603c 	c.lt.s	$f12,$f14
  18:	afa50044 	sw	a1,68(sp)
  1c:	afa60048 	sw	a2,72(sp)
  20:	c7a4005c 	lwc1	$f4,92(sp)
  24:	45010005 	bc1t	3c <LogUtils_CheckFloatRange+0x3c>
  28:	3c040000 	lui	a0,0x0
  2c:	460c203c 	c.lt.s	$f4,$f12
  30:	00000000 	nop
  34:	45020014 	bc1fl	88 <LogUtils_CheckFloatRange+0x88>
  38:	8fbf003c 	lw	ra,60(sp)
  3c:	c7aa005c 	lwc1	$f10,92(sp)
  40:	8fae0048 	lw	t6,72(sp)
  44:	8faf0058 	lw	t7,88(sp)
  48:	460071a1 	cvt.d.s	$f6,$f14
  4c:	46006221 	cvt.d.s	$f8,$f12
  50:	46005421 	cvt.d.s	$f16,$f10
  54:	f7a80020 	sdc1	$f8,32(sp)
  58:	f7b00030 	sdc1	$f16,48(sp)
  5c:	f7a60010 	sdc1	$f6,16(sp)
  60:	24840000 	addiu	a0,a0,0
  64:	8fa50040 	lw	a1,64(sp)
  68:	8fa60044 	lw	a2,68(sp)
  6c:	8fa70050 	lw	a3,80(sp)
  70:	e7ac004c 	swc1	$f12,76(sp)
  74:	afae0018 	sw	t6,24(sp)
  78:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
  7c:	afaf0028 	sw	t7,40(sp)
  80:	c7ac004c 	lwc1	$f12,76(sp)
  84:	8fbf003c 	lw	ra,60(sp)
  88:	27bd0040 	addiu	sp,sp,64
  8c:	46006006 	mov.s	$f0,$f12
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <LogUtils_CheckIntRange>:
  98:	27bdffd0 	addiu	sp,sp,-48
  9c:	8faf0044 	lw	t7,68(sp)
  a0:	afbf002c 	sw	ra,44(sp)
  a4:	afa40030 	sw	a0,48(sp)
  a8:	00ef082a 	slt	at,a3,t7
  ac:	afa50034 	sw	a1,52(sp)
  b0:	afa60038 	sw	a2,56(sp)
  b4:	14200005 	bnez	at,cc <LogUtils_CheckIntRange+0x34>
  b8:	afa7003c 	sw	a3,60(sp)
  bc:	8fb8004c 	lw	t8,76(sp)
  c0:	0307082a 	slt	at,t8,a3
  c4:	50200012 	beqzl	at,110 <LogUtils_CheckIntRange+0x78>
  c8:	8fbf002c 	lw	ra,44(sp)
  cc:	8fb90044 	lw	t9,68(sp)
  d0:	8fa80038 	lw	t0,56(sp)
  d4:	8fa9003c 	lw	t1,60(sp)
  d8:	8faa0048 	lw	t2,72(sp)
  dc:	8fab004c 	lw	t3,76(sp)
  e0:	3c040000 	lui	a0,0x0
  e4:	24840030 	addiu	a0,a0,48
  e8:	8fa50030 	lw	a1,48(sp)
  ec:	8fa60034 	lw	a2,52(sp)
  f0:	8fa70040 	lw	a3,64(sp)
  f4:	afb90010 	sw	t9,16(sp)
  f8:	afa80014 	sw	t0,20(sp)
  fc:	afa90018 	sw	t1,24(sp)
 100:	afaa001c 	sw	t2,28(sp)
 104:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 108:	afab0020 	sw	t3,32(sp)
 10c:	8fbf002c 	lw	ra,44(sp)
 110:	8fa2003c 	lw	v0,60(sp)
 114:	27bd0030 	addiu	sp,sp,48
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <LogUtils_LogHexDump>:
 120:	27bdffa8 	addiu	sp,sp,-88
 124:	afb00018 	sw	s0,24(sp)
 128:	00a08025 	move	s0,a1
 12c:	afb20020 	sw	s2,32(sp)
 130:	00802825 	move	a1,a0
 134:	afa40058 	sw	a0,88(sp)
 138:	00809025 	move	s2,a0
 13c:	afbf003c 	sw	ra,60(sp)
 140:	afbe0038 	sw	s8,56(sp)
 144:	3c040000 	lui	a0,0x0
 148:	afb70034 	sw	s7,52(sp)
 14c:	afb60030 	sw	s6,48(sp)
 150:	afb5002c 	sw	s5,44(sp)
 154:	afb40028 	sw	s4,40(sp)
 158:	afb30024 	sw	s3,36(sp)
 15c:	afb1001c 	sw	s1,28(sp)
 160:	0200f025 	move	s8,s0
 164:	24840060 	addiu	a0,a0,96
 168:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 16c:	02003025 	move	a2,s0
 170:	3c040000 	lui	a0,0x0
 174:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 178:	24840070 	addiu	a0,a0,112
 17c:	1a000045 	blez	s0,294 <LogUtils_LogHexDump+0x174>
 180:	3c170000 	lui	s7,0x0
 184:	3c160000 	lui	s6,0x0
 188:	3c140000 	lui	s4,0x0
 18c:	3c130000 	lui	s3,0x0
 190:	267300d0 	addiu	s3,s3,208
 194:	269400e0 	addiu	s4,s4,224
 198:	26d600e4 	addiu	s6,s6,228
 19c:	afa00044 	sw	zero,68(sp)
 1a0:	26f700d8 	addiu	s7,s7,216
 1a4:	24150010 	li	s5,16
 1a8:	3c040000 	lui	a0,0x0
 1ac:	8fa60044 	lw	a2,68(sp)
 1b0:	248400c4 	addiu	a0,a0,196
 1b4:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 1b8:	02402825 	move	a1,s2
 1bc:	2bc10010 	slti	at,s8,16
 1c0:	10200003 	beqz	at,1d0 <LogUtils_LogHexDump+0xb0>
 1c4:	00008025 	move	s0,zero
 1c8:	10000002 	b	1d4 <LogUtils_LogHexDump+0xb4>
 1cc:	03c08825 	move	s1,s8
 1d0:	02a08825 	move	s1,s5
 1d4:	0211082a 	slt	at,s0,s1
 1d8:	10200006 	beqz	at,1f4 <LogUtils_LogHexDump+0xd4>
 1dc:	02602025 	move	a0,s3
 1e0:	02507021 	addu	t6,s2,s0
 1e4:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 1e8:	91c50000 	lbu	a1,0(t6)
 1ec:	10000004 	b	200 <LogUtils_LogHexDump+0xe0>
 1f0:	26100001 	addiu	s0,s0,1
 1f4:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 1f8:	02e02025 	move	a0,s7
 1fc:	26100001 	addiu	s0,s0,1
 200:	2a010010 	slti	at,s0,16
 204:	5420fff4 	bnezl	at,1d8 <LogUtils_LogHexDump+0xb8>
 208:	0211082a 	slt	at,s0,s1
 20c:	3c040000 	lui	a0,0x0
 210:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 214:	248400dc 	addiu	a0,a0,220
 218:	00008025 	move	s0,zero
 21c:	0211082a 	slt	at,s0,s1
 220:	1020000e 	beqz	at,25c <LogUtils_LogHexDump+0x13c>
 224:	02507821 	addu	t7,s2,s0
 228:	91e20000 	lbu	v0,0(t7)
 22c:	2405002e 	li	a1,46
 230:	28410020 	slti	at,v0,32
 234:	14200005 	bnez	at,24c <LogUtils_LogHexDump+0x12c>
 238:	2841007f 	slti	at,v0,127
 23c:	10200003 	beqz	at,24c <LogUtils_LogHexDump+0x12c>
 240:	00000000 	nop
 244:	10000001 	b	24c <LogUtils_LogHexDump+0x12c>
 248:	00402825 	move	a1,v0
 24c:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 250:	02802025 	move	a0,s4
 254:	10000004 	b	268 <LogUtils_LogHexDump+0x148>
 258:	26100001 	addiu	s0,s0,1
 25c:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 260:	02c02025 	move	a0,s6
 264:	26100001 	addiu	s0,s0,1
 268:	5615ffed 	bnel	s0,s5,220 <LogUtils_LogHexDump+0x100>
 26c:	0211082a 	slt	at,s0,s1
 270:	3c040000 	lui	a0,0x0
 274:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 278:	248400e8 	addiu	a0,a0,232
 27c:	8fb80044 	lw	t8,68(sp)
 280:	03d1f023 	subu	s8,s8,s1
 284:	02519021 	addu	s2,s2,s1
 288:	0311c821 	addu	t9,t8,s1
 28c:	1fc0ffc6 	bgtz	s8,1a8 <LogUtils_LogHexDump+0x88>
 290:	afb90044 	sw	t9,68(sp)
 294:	8fbf003c 	lw	ra,60(sp)
 298:	8fb00018 	lw	s0,24(sp)
 29c:	8fb1001c 	lw	s1,28(sp)
 2a0:	8fb20020 	lw	s2,32(sp)
 2a4:	8fb30024 	lw	s3,36(sp)
 2a8:	8fb40028 	lw	s4,40(sp)
 2ac:	8fb5002c 	lw	s5,44(sp)
 2b0:	8fb60030 	lw	s6,48(sp)
 2b4:	8fb70034 	lw	s7,52(sp)
 2b8:	8fbe0038 	lw	s8,56(sp)
 2bc:	03e00008 	jr	ra
 2c0:	27bd0058 	addiu	sp,sp,88

000002c4 <LogUtils_LogPointer>:
 2c4:	27bdffd8 	addiu	sp,sp,-40
 2c8:	afa40028 	sw	a0,40(sp)
 2cc:	afa5002c 	sw	a1,44(sp)
 2d0:	afa60030 	sw	a2,48(sp)
 2d4:	8fb80030 	lw	t8,48(sp)
 2d8:	8faf002c 	lw	t7,44(sp)
 2dc:	8fae0028 	lw	t6,40(sp)
 2e0:	afbf0024 	sw	ra,36(sp)
 2e4:	3c040000 	lui	a0,0x0
 2e8:	248400ec 	addiu	a0,a0,236
 2ec:	8fa6003c 	lw	a2,60(sp)
 2f0:	8fa50038 	lw	a1,56(sp)
 2f4:	afb80018 	sw	t8,24(sp)
 2f8:	afaf0014 	sw	t7,20(sp)
 2fc:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 300:	afae0010 	sw	t6,16(sp)
 304:	8fbf0024 	lw	ra,36(sp)
 308:	27bd0028 	addiu	sp,sp,40
 30c:	03e00008 	jr	ra
 310:	00000000 	nop

00000314 <LogUtils_CheckBoundary>:
 314:	27bdffe0 	addiu	sp,sp,-32
 318:	24d8ffff 	addiu	t8,a2,-1
 31c:	00b8c824 	and	t9,a1,t8
 320:	afbf001c 	sw	ra,28(sp)
 324:	afa40020 	sw	a0,32(sp)
 328:	afa50024 	sw	a1,36(sp)
 32c:	afa60028 	sw	a2,40(sp)
 330:	afa7002c 	sw	a3,44(sp)
 334:	1320000a 	beqz	t9,360 <LogUtils_CheckBoundary+0x4c>
 338:	00c07825 	move	t7,a2
 33c:	8fa80024 	lw	t0,36(sp)
 340:	3c040000 	lui	a0,0x0
 344:	00e02825 	move	a1,a3
 348:	8fa70020 	lw	a3,32(sp)
 34c:	24840118 	addiu	a0,a0,280
 350:	8fa60030 	lw	a2,48(sp)
 354:	afaf0014 	sw	t7,20(sp)
 358:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 35c:	afa80010 	sw	t0,16(sp)
 360:	8fbf001c 	lw	ra,28(sp)
 364:	27bd0020 	addiu	sp,sp,32
 368:	03e00008 	jr	ra
 36c:	00000000 	nop

00000370 <LogUtils_CheckNullPointer>:
 370:	27bdffe8 	addiu	sp,sp,-24
 374:	afbf0014 	sw	ra,20(sp)
 378:	afa40018 	sw	a0,24(sp)
 37c:	afa60020 	sw	a2,32(sp)
 380:	14a00007 	bnez	a1,3a0 <LogUtils_CheckNullPointer+0x30>
 384:	afa70024 	sw	a3,36(sp)
 388:	00c02825 	move	a1,a2
 38c:	00e03025 	move	a2,a3
 390:	3c040000 	lui	a0,0x0
 394:	24840150 	addiu	a0,a0,336
 398:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 39c:	8fa70018 	lw	a3,24(sp)
 3a0:	8fbf0014 	lw	ra,20(sp)
 3a4:	27bd0018 	addiu	sp,sp,24
 3a8:	03e00008 	jr	ra
 3ac:	00000000 	nop

000003b0 <LogUtils_CheckValidPointer>:
 3b0:	27bdffe0 	addiu	sp,sp,-32
 3b4:	afbf001c 	sw	ra,28(sp)
 3b8:	afa40020 	sw	a0,32(sp)
 3bc:	afa50024 	sw	a1,36(sp)
 3c0:	afa60028 	sw	a2,40(sp)
 3c4:	10a0000a 	beqz	a1,3f0 <LogUtils_CheckValidPointer+0x40>
 3c8:	afa7002c 	sw	a3,44(sp)
 3cc:	3c028000 	lui	v0,0x8000
 3d0:	00a2082b 	sltu	at,a1,v0
 3d4:	14200006 	bnez	at,3f0 <LogUtils_CheckValidPointer+0x40>
 3d8:	3c180000 	lui	t8,0x0
 3dc:	8f180000 	lw	t8,0(t8)
 3e0:	0302c821 	addu	t9,t8,v0
 3e4:	00b9082b 	sltu	at,a1,t9
 3e8:	5420000a 	bnezl	at,414 <LogUtils_CheckValidPointer+0x64>
 3ec:	8fbf001c 	lw	ra,28(sp)
 3f0:	8fa80024 	lw	t0,36(sp)
 3f4:	3c040000 	lui	a0,0x0
 3f8:	2484017c 	addiu	a0,a0,380
 3fc:	8fa50028 	lw	a1,40(sp)
 400:	8fa6002c 	lw	a2,44(sp)
 404:	8fa70020 	lw	a3,32(sp)
 408:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 40c:	afa80010 	sw	t0,16(sp)
 410:	8fbf001c 	lw	ra,28(sp)
 414:	27bd0020 	addiu	sp,sp,32
 418:	03e00008 	jr	ra
 41c:	00000000 	nop

00000420 <LogUtils_LogThreadId>:
 420:	27bdffe8 	addiu	sp,sp,-24
 424:	afbf0014 	sw	ra,20(sp)
 428:	afa40018 	sw	a0,24(sp)
 42c:	afa5001c 	sw	a1,28(sp)
 430:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 434:	00002025 	move	a0,zero
 438:	3c040000 	lui	a0,0x0
 43c:	248401ac 	addiu	a0,a0,428
 440:	00402825 	move	a1,v0
 444:	8fa60018 	lw	a2,24(sp)
 448:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 44c:	8fa7001c 	lw	a3,28(sp)
 450:	8fbf0014 	lw	ra,20(sp)
 454:	27bd0018 	addiu	sp,sp,24
 458:	03e00008 	jr	ra
 45c:	00000000 	nop

00000460 <LogUtils_HungupThread>:
 460:	27bdffe8 	addiu	sp,sp,-24
 464:	afbf0014 	sw	ra,20(sp)
 468:	afa40018 	sw	a0,24(sp)
 46c:	afa5001c 	sw	a1,28(sp)
 470:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 474:	00002025 	move	a0,zero
 478:	3c040000 	lui	a0,0x0
 47c:	248401b8 	addiu	a0,a0,440
 480:	00402825 	move	a1,v0
 484:	8fa60018 	lw	a2,24(sp)
 488:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 48c:	8fa7001c 	lw	a3,28(sp)
 490:	8fa40018 	lw	a0,24(sp)
 494:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 498:	8fa5001c 	lw	a1,28(sp)
 49c:	8fbf0014 	lw	ra,20(sp)
 4a0:	27bd0018 	addiu	sp,sp,24
 4a4:	03e00008 	jr	ra
 4a8:	00000000 	nop

000004ac <LogUtils_ResetHungup>:
 4ac:	27bdffe8 	addiu	sp,sp,-24
 4b0:	afbf0014 	sw	ra,20(sp)
 4b4:	3c040000 	lui	a0,0x0
 4b8:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 4bc:	248401e0 	addiu	a0,a0,480
 4c0:	3c040000 	lui	a0,0x0
 4c4:	248401f0 	addiu	a0,a0,496
 4c8:	0c000000 	jal	0 <LogUtils_CheckFloatRange>
 4cc:	00002825 	move	a1,zero
 4d0:	8fbf0014 	lw	ra,20(sp)
 4d4:	27bd0018 	addiu	sp,sp,24
 4d8:	03e00008 	jr	ra
 4dc:	00000000 	nop
