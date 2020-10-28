
build/src/code/z_fbdemo_wipe1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <TransitionWipe_Start>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0034 	sw	ra,52(sp)
   8:	afb00030 	sw	s0,48(sp)
   c:	908e0008 	lbu	t6,8(a0)
  10:	00808025 	move	s0,a0
  14:	a080000a 	sb	zero,10(a0)
  18:	11c00004 	beqz	t6,2c <TransitionWipe_Start+0x2c>
  1c:	26050010 	addiu	a1,s0,16
  20:	240f014d 	li	t7,333
  24:	10000003 	b	34 <TransitionWipe_Start+0x34>
  28:	a48f000e 	sh	t7,14(a0)
  2c:	24180264 	li	t8,612
  30:	a618000e 	sh	t8,14(s0)
  34:	3c014120 	lui	at,0x4120
  38:	44812000 	mtc1	at,$f4
  3c:	3c014648 	lui	at,0x4648
  40:	44813000 	mtc1	at,$f6
  44:	3c013f80 	lui	at,0x3f80
  48:	44814000 	mtc1	at,$f8
  4c:	3c073faa 	lui	a3,0x3faa
  50:	34e7aaab 	ori	a3,a3,0xaaab
  54:	26040018 	addiu	a0,s0,24
  58:	3c064270 	lui	a2,0x4270
  5c:	e7a40010 	swc1	$f4,16(sp)
  60:	e7a60014 	swc1	$f6,20(sp)
  64:	0c000000 	jal	0 <TransitionWipe_Start>
  68:	e7a80018 	swc1	$f8,24(sp)
  6c:	44800000 	mtc1	zero,$f0
  70:	3c013f80 	lui	at,0x3f80
  74:	44815000 	mtc1	at,$f10
  78:	44050000 	mfc1	a1,$f0
  7c:	44060000 	mfc1	a2,$f0
  80:	26040058 	addiu	a0,s0,88
  84:	3c0743c8 	lui	a3,0x43c8
  88:	e7a00010 	swc1	$f0,16(sp)
  8c:	e7a00014 	swc1	$f0,20(sp)
  90:	e7a00018 	swc1	$f0,24(sp)
  94:	e7a0001c 	swc1	$f0,28(sp)
  98:	e7a00024 	swc1	$f0,36(sp)
  9c:	0c000000 	jal	0 <TransitionWipe_Start>
  a0:	e7aa0020 	swc1	$f10,32(sp)
  a4:	8fbf0034 	lw	ra,52(sp)
  a8:	8fb00030 	lw	s0,48(sp)
  ac:	27bd0038 	addiu	sp,sp,56
  b0:	03e00008 	jr	ra
  b4:	00000000 	nop

000000b8 <TransitionWipe_Init>:
  b8:	27bdffe8 	addiu	sp,sp,-24
  bc:	afbf0014 	sw	ra,20(sp)
  c0:	afa40018 	sw	a0,24(sp)
  c4:	0c000000 	jal	0 <TransitionWipe_Start>
  c8:	24050218 	li	a1,536
  cc:	8fbf0014 	lw	ra,20(sp)
  d0:	8fa20018 	lw	v0,24(sp)
  d4:	27bd0018 	addiu	sp,sp,24
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop

000000e0 <TransitionWipe_Destroy>:
  e0:	03e00008 	jr	ra
  e4:	afa40000 	sw	a0,0(sp)

000000e8 <TransitionWipe_Update>:
  e8:	908e0008 	lbu	t6,8(a0)
  ec:	3c020000 	lui	v0,0x0
  f0:	11c0001b 	beqz	t6,160 <TransitionWipe_Update+0x78>
  f4:	00000000 	nop
  f8:	3c020000 	lui	v0,0x0
  fc:	90421419 	lbu	v0,5145(v0)
 100:	948f000e 	lhu	t7,14(a0)
 104:	240a0264 	li	t2,612
 108:	0002c080 	sll	t8,v0,0x2
 10c:	0302c023 	subu	t8,t8,v0
 110:	0305001a 	div	zero,t8,a1
 114:	14a00002 	bnez	a1,120 <TransitionWipe_Update+0x38>
 118:	00000000 	nop
 11c:	0007000d 	break	0x7
 120:	2401ffff 	li	at,-1
 124:	14a10004 	bne	a1,at,138 <TransitionWipe_Update+0x50>
 128:	3c018000 	lui	at,0x8000
 12c:	17010002 	bne	t8,at,138 <TransitionWipe_Update+0x50>
 130:	00000000 	nop
 134:	0006000d 	break	0x6
 138:	0000c812 	mflo	t9
 13c:	01f94021 	addu	t0,t7,t9
 140:	3109ffff 	andi	t1,t0,0xffff
 144:	29210264 	slti	at,t1,612
 148:	1420001d 	bnez	at,1c0 <TransitionWipe_Update+0xd8>
 14c:	a488000e 	sh	t0,14(a0)
 150:	240b0001 	li	t3,1
 154:	a48a000e 	sh	t2,14(a0)
 158:	03e00008 	jr	ra
 15c:	a08b000a 	sb	t3,10(a0)
 160:	90421419 	lbu	v0,5145(v0)
 164:	948c000e 	lhu	t4,14(a0)
 168:	2419014d 	li	t9,333
 16c:	00026880 	sll	t5,v0,0x2
 170:	01a26823 	subu	t5,t5,v0
 174:	01a5001a 	div	zero,t5,a1
 178:	14a00002 	bnez	a1,184 <TransitionWipe_Update+0x9c>
 17c:	00000000 	nop
 180:	0007000d 	break	0x7
 184:	2401ffff 	li	at,-1
 188:	14a10004 	bne	a1,at,19c <TransitionWipe_Update+0xb4>
 18c:	3c018000 	lui	at,0x8000
 190:	15a10002 	bne	t5,at,19c <TransitionWipe_Update+0xb4>
 194:	00000000 	nop
 198:	0006000d 	break	0x6
 19c:	00007012 	mflo	t6
 1a0:	018ec023 	subu	t8,t4,t6
 1a4:	330fffff 	andi	t7,t8,0xffff
 1a8:	29e1014e 	slti	at,t7,334
 1ac:	10200004 	beqz	at,1c0 <TransitionWipe_Update+0xd8>
 1b0:	a498000e 	sh	t8,14(a0)
 1b4:	24080001 	li	t0,1
 1b8:	a499000e 	sh	t9,14(a0)
 1bc:	a088000a 	sb	t0,10(a0)
 1c0:	03e00008 	jr	ra
 1c4:	00000000 	nop

000001c8 <TransitionWipe_Draw>:
 1c8:	27bdff80 	addiu	sp,sp,-128
 1cc:	afbf0024 	sw	ra,36(sp)
 1d0:	afb00020 	sw	s0,32(sp)
 1d4:	afa50084 	sw	a1,132(sp)
 1d8:	8caf0000 	lw	t7,0(a1)
 1dc:	3c010000 	lui	at,0x0
 1e0:	c4200000 	lwc1	$f0,0(at)
 1e4:	afaf007c 	sw	t7,124(sp)
 1e8:	90820009 	lbu	v0,9(a0)
 1ec:	00808025 	move	s0,a0
 1f0:	44050000 	mfc1	a1,$f0
 1f4:	0002c080 	sll	t8,v0,0x2
 1f8:	0302c023 	subu	t8,t8,v0
 1fc:	0018c180 	sll	t8,t8,0x6
 200:	00982021 	addu	a0,a0,t8
 204:	38590001 	xori	t9,v0,0x1
 208:	24840098 	addiu	a0,a0,152
 20c:	a2190009 	sb	t9,9(s0)
 210:	44060000 	mfc1	a2,$f0
 214:	afa40078 	sw	a0,120(sp)
 218:	0c000000 	jal	0 <TransitionWipe_Start>
 21c:	3c073f80 	lui	a3,0x3f80
 220:	44800000 	mtc1	zero,$f0
 224:	8fa40078 	lw	a0,120(sp)
 228:	3c013f80 	lui	at,0x3f80
 22c:	44812000 	mtc1	at,$f4
 230:	24840040 	addiu	a0,a0,64
 234:	44050000 	mfc1	a1,$f0
 238:	44060000 	mfc1	a2,$f0
 23c:	44070000 	mfc1	a3,$f0
 240:	afa40030 	sw	a0,48(sp)
 244:	0c000000 	jal	0 <TransitionWipe_Start>
 248:	e7a40010 	swc1	$f4,16(sp)
 24c:	44800000 	mtc1	zero,$f0
 250:	8fa40078 	lw	a0,120(sp)
 254:	44050000 	mfc1	a1,$f0
 258:	24840080 	addiu	a0,a0,128
 25c:	44060000 	mfc1	a2,$f0
 260:	44070000 	mfc1	a3,$f0
 264:	0c000000 	jal	0 <TransitionWipe_Start>
 268:	afa4002c 	sw	a0,44(sp)
 26c:	8fa8007c 	lw	t0,124(sp)
 270:	3c0ae700 	lui	t2,0xe700
 274:	27a4007c 	addiu	a0,sp,124
 278:	25090008 	addiu	t1,t0,8
 27c:	afa9007c 	sw	t1,124(sp)
 280:	ad000004 	sw	zero,4(t0)
 284:	ad0a0000 	sw	t2,0(t0)
 288:	9606000e 	lhu	a2,14(s0)
 28c:	9605000c 	lhu	a1,12(s0)
 290:	afa00010 	sw	zero,16(sp)
 294:	0c000000 	jal	0 <TransitionWipe_Start>
 298:	00003825 	move	a3,zero
 29c:	8fab007c 	lw	t3,124(sp)
 2a0:	3c0ddb06 	lui	t5,0xdb06
 2a4:	35ad0020 	ori	t5,t5,0x20
 2a8:	256c0008 	addiu	t4,t3,8
 2ac:	afac007c 	sw	t4,124(sp)
 2b0:	ad620004 	sw	v0,4(t3)
 2b4:	ad6d0000 	sw	t5,0(t3)
 2b8:	8fa2007c 	lw	v0,124(sp)
 2bc:	3c18fa00 	lui	t8,0xfa00
 2c0:	37180080 	ori	t8,t8,0x80
 2c4:	244f0008 	addiu	t7,v0,8
 2c8:	afaf007c 	sw	t7,124(sp)
 2cc:	ac580000 	sw	t8,0(v0)
 2d0:	920b0001 	lbu	t3,1(s0)
 2d4:	92080000 	lbu	t0,0(s0)
 2d8:	920f0002 	lbu	t7,2(s0)
 2dc:	000b6400 	sll	t4,t3,0x10
 2e0:	00084e00 	sll	t1,t0,0x18
 2e4:	012c6825 	or	t5,t1,t4
 2e8:	000fc200 	sll	t8,t7,0x8
 2ec:	01b8c825 	or	t9,t5,t8
 2f0:	372800ff 	ori	t0,t9,0xff
 2f4:	ac480004 	sw	t0,4(v0)
 2f8:	8faa007c 	lw	t2,124(sp)
 2fc:	3c09da38 	lui	t1,0xda38
 300:	35290007 	ori	t1,t1,0x7
 304:	254b0008 	addiu	t3,t2,8
 308:	afab007c 	sw	t3,124(sp)
 30c:	260c0018 	addiu	t4,s0,24
 310:	ad4c0004 	sw	t4,4(t2)
 314:	ad490000 	sw	t1,0(t2)
 318:	8fae007c 	lw	t6,124(sp)
 31c:	3c0ddb0e 	lui	t5,0xdb0e
 320:	3c0ada38 	lui	t2,0xda38
 324:	25cf0008 	addiu	t7,t6,8
 328:	afaf007c 	sw	t7,124(sp)
 32c:	adcd0000 	sw	t5,0(t6)
 330:	96180010 	lhu	t8,16(s0)
 334:	354a0005 	ori	t2,t2,0x5
 338:	260b0058 	addiu	t3,s0,88
 33c:	add80004 	sw	t8,4(t6)
 340:	8fb9007c 	lw	t9,124(sp)
 344:	3c0eda38 	lui	t6,0xda38
 348:	35ce0003 	ori	t6,t6,0x3
 34c:	27280008 	addiu	t0,t9,8
 350:	afa8007c 	sw	t0,124(sp)
 354:	af2b0004 	sw	t3,4(t9)
 358:	af2a0000 	sw	t2,0(t9)
 35c:	8fa9007c 	lw	t1,124(sp)
 360:	3c03da38 	lui	v1,0xda38
 364:	34630001 	ori	v1,v1,0x1
 368:	252c0008 	addiu	t4,t1,8
 36c:	afac007c 	sw	t4,124(sp)
 370:	ad2e0000 	sw	t6,0(t1)
 374:	8faf0078 	lw	t7,120(sp)
 378:	3c0ede00 	lui	t6,0xde00
 37c:	ad2f0004 	sw	t7,4(t1)
 380:	8fad007c 	lw	t5,124(sp)
 384:	3c0f0000 	lui	t7,0x0
 388:	25ef0000 	addiu	t7,t7,0
 38c:	25b80008 	addiu	t8,t5,8
 390:	afb8007c 	sw	t8,124(sp)
 394:	ada30000 	sw	v1,0(t5)
 398:	8fb90030 	lw	t9,48(sp)
 39c:	adb90004 	sw	t9,4(t5)
 3a0:	8fa8007c 	lw	t0,124(sp)
 3a4:	3c19e700 	lui	t9,0xe700
 3a8:	250a0008 	addiu	t2,t0,8
 3ac:	afaa007c 	sw	t2,124(sp)
 3b0:	ad030000 	sw	v1,0(t0)
 3b4:	8fab002c 	lw	t3,44(sp)
 3b8:	ad0b0004 	sw	t3,4(t0)
 3bc:	8fa9007c 	lw	t1,124(sp)
 3c0:	252c0008 	addiu	t4,t1,8
 3c4:	afac007c 	sw	t4,124(sp)
 3c8:	ad2f0004 	sw	t7,4(t1)
 3cc:	ad2e0000 	sw	t6,0(t1)
 3d0:	8fad007c 	lw	t5,124(sp)
 3d4:	25b80008 	addiu	t8,t5,8
 3d8:	afb8007c 	sw	t8,124(sp)
 3dc:	ada00004 	sw	zero,4(t5)
 3e0:	adb90000 	sw	t9,0(t5)
 3e4:	8faa0084 	lw	t2,132(sp)
 3e8:	8fa8007c 	lw	t0,124(sp)
 3ec:	ad480000 	sw	t0,0(t2)
 3f0:	8fbf0024 	lw	ra,36(sp)
 3f4:	8fb00020 	lw	s0,32(sp)
 3f8:	27bd0080 	addiu	sp,sp,128
 3fc:	03e00008 	jr	ra
 400:	00000000 	nop

00000404 <TransitionWipe_IsDone>:
 404:	03e00008 	jr	ra
 408:	9082000a 	lbu	v0,10(a0)

0000040c <TransitionWipe_SetType>:
 40c:	24010001 	li	at,1
 410:	14a10003 	bne	a1,at,420 <TransitionWipe_SetType+0x14>
 414:	240e0001 	li	t6,1
 418:	10000002 	b	424 <TransitionWipe_SetType+0x18>
 41c:	a08e0008 	sb	t6,8(a0)
 420:	a0800008 	sb	zero,8(a0)
 424:	908f0008 	lbu	t7,8(a0)
 428:	2418014d 	li	t8,333
 42c:	24190264 	li	t9,612
 430:	51e00004 	beqzl	t7,444 <TransitionWipe_SetType+0x38>
 434:	a499000e 	sh	t9,14(a0)
 438:	03e00008 	jr	ra
 43c:	a498000e 	sh	t8,14(a0)
 440:	a499000e 	sh	t9,14(a0)
 444:	03e00008 	jr	ra
 448:	00000000 	nop

0000044c <TransitionWipe_SetColor>:
 44c:	03e00008 	jr	ra
 450:	ac850000 	sw	a1,0(a0)

00000454 <TransitionWipe_SetEnvColor>:
 454:	03e00008 	jr	ra
 458:	ac850004 	sw	a1,4(a0)
 45c:	00000000 	nop
